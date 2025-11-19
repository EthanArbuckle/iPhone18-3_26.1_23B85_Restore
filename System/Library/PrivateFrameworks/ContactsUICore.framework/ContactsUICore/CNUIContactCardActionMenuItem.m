@interface CNUIContactCardActionMenuItem
- (CNUIContactCardActionMenuItem)initWithAttributedTitle:(id)a3 actionItem:(id)a4;
- (CNUIContactCardActionMenuItem)initWithTitle:(id)a3 subtitle:(id)a4 imageName:(id)a5 shouldDisplayInline:(BOOL)a6 actionItem:(id)a7;
- (CNUIContactCardActionMenuItem)initWithTitle:(id)a3 subtitle:(id)a4 imageName:(id)a5 shouldDisplayInline:(BOOL)a6 menuItems:(id)a7;
@end

@implementation CNUIContactCardActionMenuItem

- (CNUIContactCardActionMenuItem)initWithTitle:(id)a3 subtitle:(id)a4 imageName:(id)a5 shouldDisplayInline:(BOOL)a6 actionItem:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v25.receiver = self;
  v25.super_class = CNUIContactCardActionMenuItem;
  v16 = [(CNUIContactCardActionMenuItem *)&v25 init];
  if (v16)
  {
    v17 = [v12 copy];
    title = v16->_title;
    v16->_title = v17;

    v19 = [v13 copy];
    subtitle = v16->_subtitle;
    v16->_subtitle = v19;

    v21 = [v14 copy];
    imageName = v16->_imageName;
    v16->_imageName = v21;

    v16->_shouldDisplayInline = a6;
    objc_storeStrong(&v16->_actionItem, a7);
    v23 = v16;
  }

  return v16;
}

- (CNUIContactCardActionMenuItem)initWithTitle:(id)a3 subtitle:(id)a4 imageName:(id)a5 shouldDisplayInline:(BOOL)a6 menuItems:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v27.receiver = self;
  v27.super_class = CNUIContactCardActionMenuItem;
  v16 = [(CNUIContactCardActionMenuItem *)&v27 init];
  if (v16)
  {
    v17 = [v12 copy];
    title = v16->_title;
    v16->_title = v17;

    v19 = [v13 copy];
    subtitle = v16->_subtitle;
    v16->_subtitle = v19;

    v21 = [v14 copy];
    imageName = v16->_imageName;
    v16->_imageName = v21;

    v16->_shouldDisplayInline = a6;
    v23 = [v15 copy];
    menuItems = v16->_menuItems;
    v16->_menuItems = v23;

    v25 = v16;
  }

  return v16;
}

- (CNUIContactCardActionMenuItem)initWithAttributedTitle:(id)a3 actionItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CNUIContactCardActionMenuItem;
  v8 = [(CNUIContactCardActionMenuItem *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    attributedTitle = v8->_attributedTitle;
    v8->_attributedTitle = v9;

    v11 = [v6 string];
    title = v8->_title;
    v8->_title = v11;

    objc_storeStrong(&v8->_actionItem, a4);
    v13 = v8;
  }

  return v8;
}

@end