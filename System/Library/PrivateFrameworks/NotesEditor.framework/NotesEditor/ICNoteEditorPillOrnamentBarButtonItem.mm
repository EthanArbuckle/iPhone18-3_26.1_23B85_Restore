@interface ICNoteEditorPillOrnamentBarButtonItem
- (UIButton)button;
- (id)menu;
- (void)performButtonAction;
- (void)setAction:(SEL)a3;
- (void)setImage:(id)a3;
- (void)setMenu:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUsedInPillOrnament:(BOOL)a3;
@end

@implementation ICNoteEditorPillOrnamentBarButtonItem

- (UIButton)button
{
  if ([(ICNoteEditorPillOrnamentBarButtonItem *)self isUsedInPillOrnament])
  {
    objc_opt_class();
    v6.receiver = self;
    v6.super_class = ICNoteEditorPillOrnamentBarButtonItem;
    v3 = [(ICNoteEditorPillOrnamentBarButtonItem *)&v6 customView];
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
    v3 = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
    v4 = [v3 menu];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ICNoteEditorPillOrnamentBarButtonItem;
    v4 = [(ICNoteEditorPillOrnamentBarButtonItem *)&v6 menu];
  }

  return v4;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICNoteEditorPillOrnamentBarButtonItem;
  [(ICNoteEditorPillOrnamentBarButtonItem *)&v8 setImage:v4];
  if ([(ICNoteEditorPillOrnamentBarButtonItem *)self isUsedInPillOrnament])
  {
    v5 = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
    v6 = [v5 configuration];

    [v6 setImage:v4];
    v7 = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
    [v7 setConfiguration:v6];
  }
}

- (void)setAction:(SEL)a3
{
  if ([(ICNoteEditorPillOrnamentBarButtonItem *)self isUsedInPillOrnament])
  {
    if ([(ICNoteEditorPillOrnamentBarButtonItem *)self action])
    {
      v5 = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
      v11.receiver = self;
      v11.super_class = ICNoteEditorPillOrnamentBarButtonItem;
      v6 = [(ICNoteEditorPillOrnamentBarButtonItem *)&v11 target];
      v10.receiver = self;
      v10.super_class = ICNoteEditorPillOrnamentBarButtonItem;
      [v5 removeTarget:v6 action:-[ICNoteEditorPillOrnamentBarButtonItem action](&v10 forControlEvents:{sel_action), 0x2000}];
    }

    if (a3)
    {
      v7 = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
      [v7 addTarget:self action:sel_performButtonAction forControlEvents:0x2000];
    }

    v9 = self;
    v8 = &v9;
  }

  else
  {
    v12.receiver = self;
    v8 = &v12;
  }

  v8->super_class = ICNoteEditorPillOrnamentBarButtonItem;
  [(objc_super *)v8 setAction:a3, v9];
}

- (void)setMenu:(id)a3
{
  v4 = a3;
  if ([(ICNoteEditorPillOrnamentBarButtonItem *)self isUsedInPillOrnament])
  {
    v5 = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
    [v5 setMenu:v4];

    v6 = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
    [v6 setShowsMenuAsPrimaryAction:v4 != 0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICNoteEditorPillOrnamentBarButtonItem;
    [(ICNoteEditorPillOrnamentBarButtonItem *)&v7 setMenu:v4];
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ICNoteEditorPillOrnamentBarButtonItem;
  [(ICNoteEditorPillOrnamentBarButtonItem *)&v12 setTitle:v4];
  if (-[ICNoteEditorPillOrnamentBarButtonItem isUsedInPillOrnament](self, "isUsedInPillOrnament") && [v4 length])
  {
    v5 = [(ICNoteEditorPillOrnamentBarButtonItem *)self toolTipInteraction];

    if (v5)
    {
      v6 = [(ICNoteEditorPillOrnamentBarButtonItem *)self toolTipInteraction];
      [v6 setDefaultToolTip:v4];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277D75C50]) initWithDefaultToolTip:v4];
      [(ICNoteEditorPillOrnamentBarButtonItem *)self setToolTipInteraction:v9];

      v10 = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
      v11 = [(ICNoteEditorPillOrnamentBarButtonItem *)self toolTipInteraction];
      [v10 addInteraction:v11];
    }
  }

  else
  {
    v7 = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
    v8 = [(ICNoteEditorPillOrnamentBarButtonItem *)self toolTipInteraction];
    [v7 removeInteraction:v8];

    [(ICNoteEditorPillOrnamentBarButtonItem *)self setToolTipInteraction:0];
  }
}

- (void)setUsedInPillOrnament:(BOOL)a3
{
  if (self->_usedInPillOrnament != a3)
  {
    v25 = v3;
    v26 = v4;
    self->_usedInPillOrnament = a3;
    if (a3)
    {
      v6 = [MEMORY[0x277D75230] borderlessButtonConfiguration];
      v7 = [MEMORY[0x277D75348] labelColor];
      [v6 setBaseForegroundColor:v7];

      v24.receiver = self;
      v24.super_class = ICNoteEditorPillOrnamentBarButtonItem;
      v8 = [(ICNoteEditorPillOrnamentBarButtonItem *)&v24 image];
      [v6 setImage:v8];

      v9 = [MEMORY[0x277D75220] buttonWithConfiguration:v6 primaryAction:0];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v9 addTarget:self action:sel_performButtonAction forControlEvents:0x2000];
      v23.receiver = self;
      v23.super_class = ICNoteEditorPillOrnamentBarButtonItem;
      v10 = [(ICNoteEditorPillOrnamentBarButtonItem *)&v23 menu];
      [v9 setMenu:v10];

      v22.receiver = self;
      v22.super_class = ICNoteEditorPillOrnamentBarButtonItem;
      v11 = [(ICNoteEditorPillOrnamentBarButtonItem *)&v22 menu];
      [v9 setShowsMenuAsPrimaryAction:v11 != 0];

      v12 = [(ICNoteEditorPillOrnamentBarButtonItem *)self title];
      v13 = [v12 length];

      if (v13)
      {
        v14 = objc_alloc(MEMORY[0x277D75C50]);
        v15 = [(ICNoteEditorPillOrnamentBarButtonItem *)self title];
        v16 = [v14 initWithDefaultToolTip:v15];
        [(ICNoteEditorPillOrnamentBarButtonItem *)self setToolTipInteraction:v16];

        v17 = [(ICNoteEditorPillOrnamentBarButtonItem *)self toolTipInteraction];
        [v9 addInteraction:v17];
      }

      v21.receiver = self;
      v21.super_class = ICNoteEditorPillOrnamentBarButtonItem;
      [(ICNoteEditorPillOrnamentBarButtonItem *)&v21 setCustomView:v9];
    }

    else
    {
      v18 = [(ICNoteEditorPillOrnamentBarButtonItem *)self button];
      v19 = [(ICNoteEditorPillOrnamentBarButtonItem *)self toolTipInteraction];
      [v18 removeInteraction:v19];

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
  v3 = [(ICNoteEditorPillOrnamentBarButtonItem *)&v17 target];
  v4 = ICProtocolCast();

  if (v4)
  {
    v5 = [v4 presentingViewController];
    v6 = [v5 ic_window];

    [v6 makeKeyWindow];
  }

  v16.receiver = self;
  v16.super_class = ICNoteEditorPillOrnamentBarButtonItem;
  v7 = [(ICNoteEditorPillOrnamentBarButtonItem *)&v16 action];
  if (v7)
  {
    v8 = v7;
    v15.receiver = self;
    v15.super_class = ICNoteEditorPillOrnamentBarButtonItem;
    v9 = [(ICNoteEditorPillOrnamentBarButtonItem *)&v15 target];
    v10 = [v9 methodForSelector:v8];

    if (v10)
    {
      v14.receiver = self;
      v14.super_class = ICNoteEditorPillOrnamentBarButtonItem;
      v11 = [(ICNoteEditorPillOrnamentBarButtonItem *)&v14 target];
      v13.receiver = self;
      v13.super_class = ICNoteEditorPillOrnamentBarButtonItem;
      v12 = [(ICNoteEditorPillOrnamentBarButtonItem *)&v13 action];
      v10(v11, v12, self);
    }
  }
}

@end