@interface MenuItemModel
- (MenuItemModel)initWithTitle:(id)a3 subtitle:(id)a4 payload:(id)a5;
@end

@implementation MenuItemModel

- (MenuItemModel)initWithTitle:(id)a3 subtitle:(id)a4 payload:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = MenuItemModel;
  v11 = [(MenuItemModel *)&v18 init];
  if (v11)
  {
    v12 = [v8 copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [v9 copy];
    subtitle = v11->_subtitle;
    v11->_subtitle = v14;

    objc_storeStrong(&v11->_payload, a5);
    v16 = v11;
  }

  return v11;
}

@end