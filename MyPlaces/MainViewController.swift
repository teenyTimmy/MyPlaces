//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Artem Fedorchenko on 01.09.2020.
//  Copyright © 2020 Artem Fedorchenko. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = [
        "Балкан Гриль", "Бочка", "Вкусные истории", "Дастархан", "Burger Heroes",
        "Индокитай", "Классик", "Шок", "X.O", "Love&Life", "Bonsai",
        "Speak Easy", "Sherlock Holmes", "Morris Pub", "Kitchen",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])
        
        return cell
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
