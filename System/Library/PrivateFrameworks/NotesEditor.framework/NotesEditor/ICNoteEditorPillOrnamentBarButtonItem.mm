@interface ICNoteEditorPillOrnamentBarButtonItem
- (UIButton)button;
- (id)menu;
- (void)performButtonAction;
- (void)setAction:(SEL)action;
- (void)setImage:(id)image;
- (void)setMenu:(id)menu;
- (void)setTitle:(id)title;
- (void)setUsedInPillOrnament:(BOOL)ornament;
@end

@implementation ICNoteEditorPillOrnamentBarButtonItem

- (UIButton)button
{
  if ([(ICNoteEditorPillOrnamentBarButtonItem *)self isUsedInPillOrnament])
  {
    objc_opt_class();
    v6.receiver = self;
    v6.super_class = ICNoteEditorPillOrnamentBarButtonItem;
    customView = [(ICNoteEditorPillOrnamentBarButtonItem *)&v6 customView];
    v4 = ICDynamicCast();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)menu
{
  if ([(ICNoteEditorPillOrnamentBarButtonItem *)self isUsedInPillOrnament])
  {
    button = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
    menu = [button menu];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ICNoteEditorPillOrnamentBarButtonItem;
    menu = [(ICNoteEditorPillOrnamentBarButtonItem *)&v6 menu];
  }

  return menu;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  v8.receiver = self;
  v8.super_class = ICNoteEditorPillOrnamentBarButtonItem;
  [(ICNoteEditorPillOrnamentBarButtonItem *)&v8 setImage:imageCopy];
  if ([(ICNoteEditorPillOrnamentBarButtonItem *)self isUsedInPillOrnament])
  {
    button = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
    configuration = [button configuration];

    [configuration setImage:imageCopy];
    button2 = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
    [button2 setConfiguration:configuration];
  }
}

- (void)setAction:(SEL)action
{
  if ([(ICNoteEditorPillOrnamentBarButtonItem *)self isUsedInPillOrnament])
  {
    if ([(ICNoteEditorPillOrnamentBarButtonItem *)self action])
    {
      button = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
      v11.receiver = self;
      v11.super_class = ICNoteEditorPillOrnamentBarButtonItem;
      target = [(ICNoteEditorPillOrnamentBarButtonItem *)&v11 target];
      v10.receiver = self;
      v10.super_class = ICNoteEditorPillOrnamentBarButtonItem;
      [button removeTarget:target action:-[ICNoteEditorPillOrnamentBarButtonItem action](&v10 forControlEvents:{sel_action), 0x2000}];
    }

    if (action)
    {
      button2 = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
      [button2 addTarget:self action:sel_performButtonAction forControlEvents:0x2000];
    }

    selfCopy = self;
    v8 = &selfCopy;
  }

  else
  {
    v12.receiver = self;
    v8 = &v12;
  }

  v8->super_class = ICNoteEditorPillOrnamentBarButtonItem;
  [(objc_super *)v8 setAction:action, selfCopy];
}

- (void)setMenu:(id)menu
{
  menuCopy = menu;
  if ([(ICNoteEditorPillOrnamentBarButtonItem *)self isUsedInPillOrnament])
  {
    button = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
    [button setMenu:menuCopy];

    button2 = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
    [button2 setShowsMenuAsPrimaryAction:menuCopy != 0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICNoteEditorPillOrnamentBarButtonItem;
    [(ICNoteEditorPillOrnamentBarButtonItem *)&v7 setMenu:menuCopy];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = ICNoteEditorPillOrnamentBarButtonItem;
  [(ICNoteEditorPillOrnamentBarButtonItem *)&v12 setTitle:titleCopy];
  if (-[ICNoteEditorPillOrnamentBarButtonItem isUsedInPillOrnament](self, "isUsedInPillOrnament") && [titleCopy length])
  {
    toolTipInteraction = [(ICNoteEditorPillOrnamentBarButtonItem *)self toolTipInteraction];

    if (toolTipInteraction)
    {
      toolTipInteraction2 = [(ICNoteEditorPillOrnamentBarButtonItem *)self toolTipInteraction];
      [toolTipInteraction2 setDefaultToolTip:titleCopy];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277D75C50]) initWithDefaultToolTip:titleCopy];
      [(ICNoteEditorPillOrnamentBarButtonItem *)self setToolTipInteraction:v9];

      button = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
      toolTipInteraction3 = [(ICNoteEditorPillOrnamentBarButtonItem *)self toolTipInteraction];
      [button addInteraction:toolTipInteraction3];
    }
  }

  else
  {
    button2 = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
    toolTipInteraction4 = [(ICNoteEditorPillOrnamentBarButtonItem *)self toolTipInteraction];
    [button2 removeInteraction:toolTipInteraction4];

    [(ICNoteEditorPillOrnamentBarButtonItem *)self setToolTipInteraction:0];
  }
}

- (void)setUsedInPillOrnament:(BOOL)ornament
{
  if (self->_usedInPillOrnament != ornament)
  {
    v25 = v3;
    v26 = v4;
    self->_usedInPillOrnament = ornament;
    if (ornament)
    {
      borderlessButtonConfiguration = [MEMORY[0x277D75230] borderlessButtonConfiguration];
      labelColor = [MEMORY[0x277D75348] labelColor];
      [borderlessButtonConfiguration setBaseForegroundColor:labelColor];

      v24.receiver = self;
      v24.super_class = ICNoteEditorPillOrnamentBarButtonItem;
      image = [(ICNoteEditorPillOrnamentBarButtonItem *)&v24 image];
      [borderlessButtonConfiguration setImage:image];

      v9 = [MEMORY[0x277D75220] buttonWithConfiguration:borderlessButtonConfiguration primaryAction:0];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v9 addTarget:self action:sel_performButtonAction forControlEvents:0x2000];
      v23.receiver = self;
      v23.super_class = ICNoteEditorPillOrnamentBarButtonItem;
      menu = [(ICNoteEditorPillOrnamentBarButtonItem *)&v23 menu];
      [v9 setMenu:menu];

      v22.receiver = self;
      v22.super_class = ICNoteEditorPillOrnamentBarButtonItem;
      menu2 = [(ICNoteEditorPillOrnamentBarButtonItem *)&v22 menu];
      [v9 setShowsMenuAsPrimaryAction:menu2 != 0];

      title = [(ICNoteEditorPillOrnamentBarButtonItem *)self title];
      v13 = [title length];

      if (v13)
      {
        v14 = objc_alloc(MEMORY[0x277D75C50]);
        title2 = [(ICNoteEditorPillOrnamentBarButtonItem *)self title];
        v16 = [v14 initWithDefaultToolTip:title2];
        [(ICNoteEditorPillOrnamentBarButtonItem *)self setToolTipInteraction:v16];

        toolTipInteraction = [(ICNoteEditorPillOrnamentBarButtonItem *)self toolTipInteraction];
        [v9 addInteraction:toolTipInteraction];
      }

      v21.receiver = self;
      v21.super_class = ICNoteEditorPillOrnamentBarButtonItem;
      [(ICNoteEditorPillOrnamentBarButtonItem *)&v21 setCustomView:v9];
    }

    else
    {
      button = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
      toolTipInteraction2 = [(ICNoteEditorPillOrnamentBarButtonItem *)self toolTipInteraction];
      [button removeInteraction:toolTipInteraction2];

      [(ICNoteEditorPillOrnamentBarButtonItem *)self setToolTipInteraction:0];
      v20.receiver = self;
      v20.super_class = ICNoteEditorPillOrnamentBarButtonItem;
      [(ICNoteEditorPillOrnamentBarButtonItem *)&v20 setCustomView:0];
    }
  }
}

- (void)performButtonAction
{
  v17.receiver = self;
  v17.super_class = ICNoteEditorPillOrnamentBarButtonItem;
  target = [(ICNoteEditorPillOrnamentBarButtonItem *)&v17 target];
  v4 = ICProtocolCast();

  if (v4)
  {
    presentingViewController = [v4 presentingViewController];
    ic_window = [presentingViewController ic_window];

    [ic_window makeKeyWindow];
  }

  v16.receiver = self;
  v16.super_class = ICNoteEditorPillOrnamentBarButtonItem;
  action = [(ICNoteEditorPillOrnamentBarButtonItem *)&v16 action];
  if (action)
  {
    v8 = action;
    v15.receiver = self;
    v15.super_class = ICNoteEditorPillOrnamentBarButtonItem;
    target2 = [(ICNoteEditorPillOrnamentBarButtonItem *)&v15 target];
    v10 = [target2 methodForSelector:v8];

    if (v10)
    {
      v14.receiver = self;
      v14.super_class = ICNoteEditorPillOrnamentBarButtonItem;
      target3 = [(ICNoteEditorPillOrnamentBarButtonItem *)&v14 target];
      v13.receiver = self;
      v13.super_class = ICNoteEditorPillOrnamentBarButtonItem;
      action2 = [(ICNoteEditorPillOrnamentBarButtonItem *)&v13 action];
      v10(target3, action2, self);
    }
  }
}

@end