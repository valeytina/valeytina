//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation // Audio visional foundation, importa con lo que podemos interactuar

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    var num=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var _ : AVAudioPlayer?
        
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(note: sender.currentTitle!)
        do {
            num=num+1
            print("Start")
            sender.alpha=0.5
            usleep(200)
            sender.alpha=1
            print("End")
            print(num)
        }
    
        
    }
    
    
    func playSound(note:String) {
        let url = Bundle.main.url(forResource: note , withExtension: "wav")
        
        player = try! AVAudioPlayer(contentsOf: url!)
        
        player?.play()
        
        
    }
}

