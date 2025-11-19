@interface OBTextBulletedList
- (id)bulletImage;
- (void)addItemWithTitle:(id)a3 description:(id)a4 accessoryButton:(id)a5;
@end

@implementation OBTextBulletedList

- (void)addItemWithTitle:(id)a3 description:(id)a4 accessoryButton:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [OBTextBulletedListItem alloc];
  v12 = [(OBTextBulletedList *)self bulletImage];
  v13 = [(OBTextBulletedListItem *)v11 initWithTitle:v10 description:v9 image:v12 accessoryButton:v8];

  [(OBTextBulletedListItem *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v13];
}

- (id)bulletImage
{
  v7.width = 8.0;
  v7.height = 8.0;
  UIGraphicsBeginImageContextWithOptions(v7, 0, 0.0);
  v2 = [MEMORY[0x1E69DC888] grayColor];
  [v2 setFill];

  v3 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, 8.0, 8.0}];
  [v3 fill];
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v4;
}

@end