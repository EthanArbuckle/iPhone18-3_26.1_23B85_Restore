@interface OBTextBulletedListItem
- (OBTextBulletedListItem)initWithTitle:(id)title description:(id)description image:(id)image accessoryButton:(id)button;
@end

@implementation OBTextBulletedListItem

- (OBTextBulletedListItem)initWithTitle:(id)title description:(id)description image:(id)image accessoryButton:(id)button
{
  v7.receiver = self;
  v7.super_class = OBTextBulletedListItem;
  return [(OBBulletedListItem *)&v7 initWithTitle:title description:description image:image tintColor:0 linkButton:button];
}

@end