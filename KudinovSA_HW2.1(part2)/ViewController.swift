//
//  ViewController.swift
//  KudinovSA_HW2.1(part2)
//
//  Created by Сергей Кудинов on 06.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 1

    @IBOutlet weak var redSignal: UIView!
    @IBOutlet weak var yellowSignal: UIView!
    @IBOutlet weak var greenSignal: UIView!
    @IBOutlet weak var colorButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        redSignal.backgroundColor = .red.withAlphaComponent(0.3)
        yellowSignal.backgroundColor = .yellow.withAlphaComponent(0.3)
        greenSignal.backgroundColor = .green.withAlphaComponent(0.3)
        
        redSignal.layer.cornerRadius = 74
        yellowSignal.layer.cornerRadius = 74
        greenSignal.layer.cornerRadius = 74
        colorButtonOutlet.layer.cornerRadius = 10
        
        colorButtonOutlet.backgroundColor = .blue
        colorButtonOutlet.setTitle("START", for: .normal)
        colorButtonOutlet.setTitleColor(.black, for: .normal)
    }
    @IBAction func changeColorButton(_ sender: UIButton) {
        if count == 3{
            redSignal.backgroundColor = .red.withAlphaComponent(0.3)
            yellowSignal.backgroundColor = .yellow.withAlphaComponent(0.3)
            greenSignal.backgroundColor = .green
            
            count = 0
            
        } else if count == 2 {
            redSignal.backgroundColor = .red.withAlphaComponent(0.3)
            yellowSignal.backgroundColor = .yellow
            greenSignal.backgroundColor = .green.withAlphaComponent(0.3)
            
            count += 1
            
        } else if count == 1 {
            colorButtonOutlet.setTitle("NEXT", for: .normal)
            
            redSignal.backgroundColor = .red
            yellowSignal.backgroundColor = .yellow.withAlphaComponent(0.3)
            greenSignal.backgroundColor = .green.withAlphaComponent(0.3)
            
            count += 1
            
        } else if count == 0 {
            colorButtonOutlet.setTitle("START", for: .normal)
            
            redSignal.backgroundColor = .red.withAlphaComponent(0.3)
            yellowSignal.backgroundColor = .yellow.withAlphaComponent(0.3)
            greenSignal.backgroundColor = .green.withAlphaComponent(0.3)
            
            count += 1
        }
    }

}

