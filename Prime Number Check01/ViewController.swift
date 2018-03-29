//
//  ViewController.swift
//  Prime Number Check01
//
//  Created by D7703_27 on 2018. 3. 29..
//  Copyright © 2018년 D7703_27. All rights reserved.
//
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var lblPrime: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btCheck(_ sender: Any) {
        var isPrime = true
        let number = Int(txtField.text!)
        if number == 1 {
            isPrime = false       }
        
        if number != 1 && number != 2 {
            for i in 2 ..< number! {
                if number! % i == 0 {
                    isPrime = false
                }
            }
        }
        
        if isPrime == true {
            lblPrime.text = "Prime number"
        } else {
            lblPrime.text = "Not Prime number"
        }
        
        
        
    }
    
    @IBAction func btReset(_ sender: Any) {
        txtField.text = ""
        lblPrime.text = "Label"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtField.resignFirstResponder()
        return true
        // called when 'return' key pressed. return NO to ignore.
    }
}
