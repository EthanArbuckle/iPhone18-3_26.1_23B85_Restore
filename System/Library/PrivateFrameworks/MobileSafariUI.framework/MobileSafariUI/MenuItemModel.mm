@interface MenuItemModel
- (MenuItemModel)initWithTitle:(id)title subtitle:(id)subtitle payload:(id)payload;
@end

@implementation MenuItemModel

- (MenuItemModel)initWithTitle:(id)title subtitle:(id)subtitle payload:(id)payload
{
  titleCopy = title;
  subtitleCopy = subtitle;
  payloadCopy = payload;
  v18.receiver = self;
  v18.super_class = MenuItemModel;
  v11 = [(MenuItemModel *)&v18 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [subtitleCopy copy];
    subtitle = v11->_subtitle;
    v11->_subtitle = v14;

    objc_storeStrong(&v11->_payload, payload);
    v16 = v11;
  }

  return v11;
}

@end