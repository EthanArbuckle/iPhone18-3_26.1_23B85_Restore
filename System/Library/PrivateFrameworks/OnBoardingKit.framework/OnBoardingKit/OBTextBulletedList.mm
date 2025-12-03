@interface OBTextBulletedList
- (id)bulletImage;
- (void)addItemWithTitle:(id)title description:(id)description accessoryButton:(id)button;
@end

@implementation OBTextBulletedList

- (void)addItemWithTitle:(id)title description:(id)description accessoryButton:(id)button
{
  buttonCopy = button;
  descriptionCopy = description;
  titleCopy = title;
  v11 = [OBTextBulletedListItem alloc];
  bulletImage = [(OBTextBulletedList *)self bulletImage];
  v13 = [(OBTextBulletedListItem *)v11 initWithTitle:titleCopy description:descriptionCopy image:bulletImage accessoryButton:buttonCopy];

  [(OBTextBulletedListItem *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v13];
}

- (id)bulletImage
{
  v7.width = 8.0;
  v7.height = 8.0;
  UIGraphicsBeginImageContextWithOptions(v7, 0, 0.0);
  grayColor = [MEMORY[0x1E69DC888] grayColor];
  [grayColor setFill];

  v3 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, 8.0, 8.0}];
  [v3 fill];
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v4;
}

@end