//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Jason Wong on 2018-06-10.
//  Copyright © 2018 Jason Wong. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importandSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: AnyObject) {
        // Create a Task from the outlet information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importandSwitch.isOn
        
        // Add new task to array in previous viewController
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
}
