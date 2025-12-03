@interface CNUIUserActionItemList
- (CNUIUserActionItemList)initWithItems:(id)items type:(id)type icon:(id)icon;
@end

@implementation CNUIUserActionItemList

- (CNUIUserActionItemList)initWithItems:(id)items type:(id)type icon:(id)icon
{
  itemsCopy = items;
  typeCopy = type;
  iconCopy = icon;
  v20.receiver = self;
  v20.super_class = CNUIUserActionItemList;
  v11 = [(CNUIUserActionItemList *)&v20 init];
  if (v11)
  {
    v12 = [itemsCopy copy];
    items = v11->_items;
    v11->_items = v12;

    v14 = [typeCopy copy];
    type = v11->_type;
    v11->_type = v14;

    v16 = [iconCopy copy];
    icon = v11->_icon;
    v11->_icon = v16;

    v18 = v11;
  }

  return v11;
}

@end