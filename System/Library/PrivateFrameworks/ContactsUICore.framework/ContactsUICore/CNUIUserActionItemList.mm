@interface CNUIUserActionItemList
- (CNUIUserActionItemList)initWithItems:(id)a3 type:(id)a4 icon:(id)a5;
@end

@implementation CNUIUserActionItemList

- (CNUIUserActionItemList)initWithItems:(id)a3 type:(id)a4 icon:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = CNUIUserActionItemList;
  v11 = [(CNUIUserActionItemList *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    items = v11->_items;
    v11->_items = v12;

    v14 = [v9 copy];
    type = v11->_type;
    v11->_type = v14;

    v16 = [v10 copy];
    icon = v11->_icon;
    v11->_icon = v16;

    v18 = v11;
  }

  return v11;
}

@end