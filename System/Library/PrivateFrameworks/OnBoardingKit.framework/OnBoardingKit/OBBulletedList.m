@interface OBBulletedList
- (BOOL)_shouldHandleLandscapeiPhoneLayout;
- (OBBulletedList)initWithFrame:(CGRect)a3;
- (double)bulletedListItemSpacing;
- (void)_updateConstraints;
- (void)_updatePaddingForOrientation;
- (void)addBulletedListItem:(id)a3;
- (void)addItemWithDescription:(id)a3 image:(id)a4;
- (void)addItemWithDescription:(id)a3 symbolName:(id)a4;
- (void)addItemWithTitle:(id)a3 description:(id)a4 image:(id)a5;
- (void)addItemWithTitle:(id)a3 description:(id)a4 image:(id)a5 linkButton:(id)a6;
- (void)addItemWithTitle:(id)a3 description:(id)a4 image:(id)a5 tintColor:(id)a6;
- (void)addItemWithTitle:(id)a3 description:(id)a4 image:(id)a5 tintColor:(id)a6 linkButton:(id)a7;
- (void)addItemWithTitle:(id)a3 description:(id)a4 symbolName:(id)a5;
- (void)addItemWithTitle:(id)a3 description:(id)a4 symbolName:(id)a5 linkButton:(id)a6;
- (void)addItemWithTitle:(id)a3 description:(id)a4 symbolName:(id)a5 tintColor:(id)a6;
- (void)addItemWithTitle:(id)a3 description:(id)a4 symbolName:(id)a5 tintColor:(id)a6 linkButton:(id)a7;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation OBBulletedList

- (OBBulletedList)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = OBBulletedList;
  v3 = [(OBBulletedList *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    items = v3->_items;
    v3->_items = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    verticalConstraints = v3->_verticalConstraints;
    v3->_verticalConstraints = v6;
  }

  return v3;
}

- (void)addItemWithTitle:(id)a3 description:(id)a4 image:(id)a5 tintColor:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[OBBulletedListItem alloc] initWithTitle:v13 description:v12 image:v11 tintColor:v10];

  [(OBBulletedListItem *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v14];
}

- (void)addItemWithTitle:(id)a3 description:(id)a4 image:(id)a5 tintColor:(id)a6 linkButton:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[OBBulletedListItem alloc] initWithTitle:v16 description:v15 image:v14 tintColor:v13 linkButton:v12];

  [(OBBulletedListItem *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v17];
}

- (void)addItemWithTitle:(id)a3 description:(id)a4 image:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[OBBulletedListItem alloc] initWithTitle:v10 description:v9 image:v8 tintColor:0];

  [(OBBulletedListItem *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v11];
}

- (void)addItemWithTitle:(id)a3 description:(id)a4 image:(id)a5 linkButton:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[OBBulletedListItem alloc] initWithTitle:v13 description:v12 image:v11 tintColor:0 linkButton:v10];

  [(OBBulletedListItem *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v14];
}

- (void)addItemWithDescription:(id)a3 image:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[OBBulletedListItem alloc] initWithTitle:0 description:v7 image:v6 tintColor:0];

  [(OBBulletedListItem *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v8];
}

- (void)addItemWithTitle:(id)a3 description:(id)a4 symbolName:(id)a5 tintColor:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[OBBulletedListItem alloc] initWithTitle:v13 description:v12 symbolName:v11 tintColor:v10];

  [(OBBulletedListItem *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v14];
}

- (void)addItemWithTitle:(id)a3 description:(id)a4 symbolName:(id)a5 tintColor:(id)a6 linkButton:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[OBBulletedListItem alloc] initWithTitle:v16 description:v15 symbolName:v14 tintColor:v13 linkButton:v12];

  [(OBBulletedListItem *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v17];
}

- (void)addItemWithTitle:(id)a3 description:(id)a4 symbolName:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[OBBulletedListItem alloc] initWithTitle:v10 description:v9 symbolName:v8 tintColor:0];

  [(OBBulletedListItem *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v11];
}

- (void)addItemWithTitle:(id)a3 description:(id)a4 symbolName:(id)a5 linkButton:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[OBBulletedListItem alloc] initWithTitle:v13 description:v12 symbolName:v11 tintColor:0 linkButton:v10];

  [(OBBulletedListItem *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v14];
}

- (void)addItemWithDescription:(id)a3 symbolName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[OBBulletedListItem alloc] initWithTitle:0 description:v7 symbolName:v6 tintColor:0];

  [(OBBulletedListItem *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v8];
}

- (void)addBulletedListItem:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(OBBulletedList *)self items];
  [v5 addObject:v4];

  [(OBBulletedList *)self addSubview:v4];
  v6 = MEMORY[0x1E696ACD8];
  v7 = [(OBBulletedList *)self leadingAnchor];
  v8 = [v4 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v15[0] = v9;
  v10 = [(OBBulletedList *)self trailingAnchor];
  v11 = [v4 trailingAnchor];

  v12 = [v10 constraintEqualToAnchor:v11];
  v15[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v6 activateConstraints:v13];

  [(OBBulletedList *)self _updateConstraints];
  v14 = *MEMORY[0x1E69E9840];
}

- (double)bulletedListItemSpacing
{
  if ([(OBBulletedList *)self _shouldHandleLandscapeiPhoneLayout])
  {
    v3 = +[OBDevice currentDevice];
    if ([v3 type] == 1)
    {
      v4 = [OBViewUtilities activeInterfaceOrientationForView:self]- 3;

      v5 = 22.0;
      if (v4 < 2)
      {
        return v5;
      }
    }

    else
    {
    }
  }

  v6 = +[OBDevice currentDevice];
  v7 = [v6 templateType];

  if (v7 > 0xA)
  {
LABEL_20:
    v5 = 22.0;
    if (!v7)
    {
      return 0.0;
    }

    return v5;
  }

  if (((1 << v7) & 0x11C) != 0)
  {
    v9 = !+[OBFeatureFlags isNaturalUIEnabled];
    v10 = 26.0;
    v11 = 16.0;
    goto LABEL_16;
  }

  if (((1 << v7) & 0x242) == 0)
  {
    if (v7 == 10)
    {
      v9 = !+[OBFeatureFlags isNaturalUIEnabled];
      v10 = 20.0;
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v5 = 16.0;
  v8 = MGGetProductType();
  if (v8 != 1895344378 && v8 != 2903084588)
  {
    v9 = !+[OBFeatureFlags isNaturalUIEnabled];
    v10 = 36.0;
LABEL_15:
    v11 = 19.0;
LABEL_16:
    if (v9)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }

  return v5;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = OBBulletedList;
  [(OBBulletedList *)&v3 didMoveToWindow];
  [(OBBulletedList *)self _updateConstraints];
}

- (void)_updateConstraints
{
  v44[2] = *MEMORY[0x1E69E9840];
  v3 = [(OBBulletedList *)self verticalConstraints];
  [(OBBulletedList *)self removeConstraints:v3];

  v4 = [(OBBulletedList *)self verticalConstraints];
  [v4 removeAllObjects];

  v5 = [(OBBulletedList *)self items];
  v6 = [v5 count];

  v7 = [(OBBulletedList *)self items];
  v8 = v7;
  if (v6 == 1)
  {
    v9 = [v7 firstObject];

    v10 = [(OBBulletedList *)self verticalConstraints];
    v11 = [(OBBulletedList *)self topAnchor];
    v12 = [v9 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:0.0];
    v44[0] = v13;
    v14 = [(OBBulletedList *)self bottomAnchor];
    v15 = [v9 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:0.0];
    v44[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    [v10 addObjectsFromArray:v17];

LABEL_17:
    goto LABEL_18;
  }

  v18 = [v7 count];

  if (v18 >= 2)
  {
    [(OBBulletedList *)self bulletedListItemSpacing];
    v20 = v19;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [(OBBulletedList *)self items];
    v21 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v21)
    {
      v22 = v21;
      v9 = 0;
      v23 = *v40;
      v24 = -v20;
      do
      {
        v25 = 0;
        v26 = v9;
        do
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v39 + 1) + 8 * v25);
          v28 = [(OBBulletedList *)self verticalConstraints];
          if (v26)
          {
            v29 = [v26 bottomAnchor];
            v30 = [v27 topAnchor];
            v31 = v29;
            v32 = v30;
            v33 = v24;
          }

          else
          {
            v29 = [(OBBulletedList *)self topAnchor];
            v30 = [v27 topAnchor];
            v33 = 0.0;
            v31 = v29;
            v32 = v30;
          }

          v34 = [v31 constraintEqualToAnchor:v32 constant:v33];
          [v28 addObject:v34];

          v9 = v27;
          ++v25;
          v26 = v9;
        }

        while (v22 != v25);
        v22 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v22);
    }

    else
    {
      v9 = 0;
    }

    v10 = [(OBBulletedList *)self verticalConstraints];
    v11 = [(OBBulletedList *)self bottomAnchor];
    v12 = [v9 bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:0.0];
    [v10 addObject:v13];
    goto LABEL_17;
  }

LABEL_18:
  v35 = MEMORY[0x1E696ACD8];
  v36 = [(OBBulletedList *)self verticalConstraints];
  [v35 activateConstraints:v36];

  v37 = *MEMORY[0x1E69E9840];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = OBBulletedList;
  [(OBBulletedList *)&v3 layoutSubviews];
  [(OBBulletedList *)self _updatePaddingForOrientation];
}

- (void)_updatePaddingForOrientation
{
  v3 = 0.0;
  if ([(OBBulletedList *)self _shouldHandleLandscapeiPhoneLayout])
  {
    v4 = +[OBDevice currentDevice];
    if ([v4 type] == 1)
    {
      v5 = [OBViewUtilities activeInterfaceOrientationForView:self]- 3;

      if (v5 >= 2)
      {
        v3 = 0.0;
      }

      else
      {
        v3 = 54.0;
      }
    }

    else
    {
    }
  }

  v6 = [(OBBulletedList *)self leadingConstraint];
  [v6 setConstant:-v3];

  v7 = [(OBBulletedList *)self trailingConstraint];
  [v7 setConstant:v3];
}

- (BOOL)_shouldHandleLandscapeiPhoneLayout
{
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [(OBBulletedList *)self window];
  v5 = [v3 supportedInterfaceOrientationsForWindow:v4];

  return v5 == 8 || (v5 & 0xFFFFFFFFFFFFFFF7) == 16;
}

@end