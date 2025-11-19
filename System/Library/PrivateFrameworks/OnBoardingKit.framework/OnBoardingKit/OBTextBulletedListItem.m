@interface OBTextBulletedListItem
- (OBTextBulletedListItem)initWithTitle:(id)a3 description:(id)a4 image:(id)a5 accessoryButton:(id)a6;
@end

@implementation OBTextBulletedListItem

- (OBTextBulletedListItem)initWithTitle:(id)a3 description:(id)a4 image:(id)a5 accessoryButton:(id)a6
{
  v7.receiver = self;
  v7.super_class = OBTextBulletedListItem;
  return [(OBBulletedListItem *)&v7 initWithTitle:a3 description:a4 image:a5 tintColor:0 linkButton:a6];
}

@end