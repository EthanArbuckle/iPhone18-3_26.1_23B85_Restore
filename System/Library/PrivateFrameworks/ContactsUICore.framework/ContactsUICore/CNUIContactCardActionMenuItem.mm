@interface CNUIContactCardActionMenuItem
- (CNUIContactCardActionMenuItem)initWithAttributedTitle:(id)title actionItem:(id)item;
- (CNUIContactCardActionMenuItem)initWithTitle:(id)title subtitle:(id)subtitle imageName:(id)name shouldDisplayInline:(BOOL)inline actionItem:(id)item;
- (CNUIContactCardActionMenuItem)initWithTitle:(id)title subtitle:(id)subtitle imageName:(id)name shouldDisplayInline:(BOOL)inline menuItems:(id)items;
@end

@implementation CNUIContactCardActionMenuItem

- (CNUIContactCardActionMenuItem)initWithTitle:(id)title subtitle:(id)subtitle imageName:(id)name shouldDisplayInline:(BOOL)inline actionItem:(id)item
{
  titleCopy = title;
  subtitleCopy = subtitle;
  nameCopy = name;
  itemCopy = item;
  v25.receiver = self;
  v25.super_class = CNUIContactCardActionMenuItem;
  v16 = [(CNUIContactCardActionMenuItem *)&v25 init];
  if (v16)
  {
    v17 = [titleCopy copy];
    title = v16->_title;
    v16->_title = v17;

    v19 = [subtitleCopy copy];
    subtitle = v16->_subtitle;
    v16->_subtitle = v19;

    v21 = [nameCopy copy];
    imageName = v16->_imageName;
    v16->_imageName = v21;

    v16->_shouldDisplayInline = inline;
    objc_storeStrong(&v16->_actionItem, item);
    v23 = v16;
  }

  return v16;
}

- (CNUIContactCardActionMenuItem)initWithTitle:(id)title subtitle:(id)subtitle imageName:(id)name shouldDisplayInline:(BOOL)inline menuItems:(id)items
{
  titleCopy = title;
  subtitleCopy = subtitle;
  nameCopy = name;
  itemsCopy = items;
  v27.receiver = self;
  v27.super_class = CNUIContactCardActionMenuItem;
  v16 = [(CNUIContactCardActionMenuItem *)&v27 init];
  if (v16)
  {
    v17 = [titleCopy copy];
    title = v16->_title;
    v16->_title = v17;

    v19 = [subtitleCopy copy];
    subtitle = v16->_subtitle;
    v16->_subtitle = v19;

    v21 = [nameCopy copy];
    imageName = v16->_imageName;
    v16->_imageName = v21;

    v16->_shouldDisplayInline = inline;
    v23 = [itemsCopy copy];
    menuItems = v16->_menuItems;
    v16->_menuItems = v23;

    v25 = v16;
  }

  return v16;
}

- (CNUIContactCardActionMenuItem)initWithAttributedTitle:(id)title actionItem:(id)item
{
  titleCopy = title;
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = CNUIContactCardActionMenuItem;
  v8 = [(CNUIContactCardActionMenuItem *)&v15 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    attributedTitle = v8->_attributedTitle;
    v8->_attributedTitle = v9;

    string = [titleCopy string];
    title = v8->_title;
    v8->_title = string;

    objc_storeStrong(&v8->_actionItem, item);
    v13 = v8;
  }

  return v8;
}

@end