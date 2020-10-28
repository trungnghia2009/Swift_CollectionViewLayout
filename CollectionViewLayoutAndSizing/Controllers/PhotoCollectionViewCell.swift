//
//  PhotoCollectionViewCell.swift
//  CollectionViewLayoutAndSizing
//
//  Created by NghiaTran on 10/27/20.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    // MARK: Properties
    static let reuseIdentifier = String(describing: PhotoCollectionViewCell.self)
    private let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        contentView.backgroundColor = .link
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Helpers
    func configure(with image: UIImage?) {
        imageView.image = image
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
        
    }
    
}
