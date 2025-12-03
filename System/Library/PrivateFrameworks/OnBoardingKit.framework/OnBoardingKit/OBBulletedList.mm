@interface OBBulletedList
- (BOOL)_shouldHandleLandscapeiPhoneLayout;
- (OBBulletedList)initWithFrame:(CGRect)frame;
- (double)bulletedListItemSpacing;
- (void)_updateConstraints;
- (void)_updatePaddingForOrientation;
- (void)addBulletedListItem:(id)item;
- (void)addItemWithDescription:(id)description image:(id)image;
- (void)addItemWithDescription:(id)description symbolName:(id)name;
- (void)addItemWithTitle:(id)title description:(id)description image:(id)image;
- (void)addItemWithTitle:(id)title description:(id)description image:(id)image linkButton:(id)button;
- (void)addItemWithTitle:(id)title description:(id)description image:(id)image tintColor:(id)color;
- (void)addItemWithTitle:(id)title description:(id)description image:(id)image tintColor:(id)color linkButton:(id)button;
- (void)addItemWithTitle:(id)title description:(id)description symbolName:(id)name;
- (void)addItemWithTitle:(id)title description:(id)description symbolName:(id)name linkButton:(id)button;
- (void)addItemWithTitle:(id)title description:(id)description symbolName:(id)name tintColor:(id)color;
- (void)addItemWithTitle:(id)title description:(id)description symbolName:(id)name tintColor:(id)color linkButton:(id)button;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation OBBulletedList

- (OBBulletedList)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = OBBulletedList;
  v3 = [(OBBulletedList *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)addItemWithTitle:(id)title description:(id)description image:(id)image tintColor:(id)color
{
  colorCopy = color;
  imageCopy = image;
  descriptionCopy = description;
  titleCopy = title;
  v14 = [[OBBulletedListItem alloc] initWithTitle:titleCopy description:descriptionCopy image:imageCopy tintColor:colorCopy];

  [(OBBulletedListItem *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v14];
}

- (void)addItemWithTitle:(id)title description:(id)description image:(id)image tintColor:(id)color linkButton:(id)button
{
  buttonCopy = button;
  colorCopy = color;
  imageCopy = image;
  descriptionCopy = description;
  titleCopy = title;
  v17 = [[OBBulletedListItem alloc] initWithTitle:titleCopy description:descriptionCopy image:imageCopy tintColor:colorCopy linkButton:buttonCopy];

  [(OBBulletedListItem *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v17];
}

- (void)addItemWithTitle:(id)title description:(id)description image:(id)image
{
  imageCopy = image;
  descriptionCopy = description;
  titleCopy = title;
  v11 = [[OBBulletedListItem alloc] initWithTitle:titleCopy description:descriptionCopy image:imageCopy tintColor:0];

  [(OBBulletedListItem *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v11];
}

- (void)addItemWithTitle:(id)title description:(id)description image:(id)image linkButton:(id)button
{
  buttonCopy = button;
  imageCopy = image;
  descriptionCopy = description;
  titleCopy = title;
  v14 = [[OBBulletedListItem alloc] initWithTitle:titleCopy description:descriptionCopy image:imageCopy tintColor:0 linkButton:buttonCopy];

  [(OBBulletedListItem *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v14];
}

- (void)addItemWithDescription:(id)description image:(id)image
{
  imageCopy = image;
  descriptionCopy = description;
  v8 = [[OBBulletedListItem alloc] initWithTitle:0 description:descriptionCopy image:imageCopy tintColor:0];

  [(OBBulletedListItem *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v8];
}

- (void)addItemWithTitle:(id)title description:(id)description symbolName:(id)name tintColor:(id)color
{
  colorCopy = color;
  nameCopy = name;
  descriptionCopy = description;
  titleCopy = title;
  v14 = [[OBBulletedListItem alloc] initWithTitle:titleCopy description:descriptionCopy symbolName:nameCopy tintColor:colorCopy];

  [(OBBulletedListItem *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v14];
}

- (void)addItemWithTitle:(id)title description:(id)description symbolName:(id)name tintColor:(id)color linkButton:(id)button
{
  buttonCopy = button;
  colorCopy = color;
  nameCopy = name;
  descriptionCopy = description;
  titleCopy = title;
  v17 = [[OBBulletedListItem alloc] initWithTitle:titleCopy description:descriptionCopy symbolName:nameCopy tintColor:colorCopy linkButton:buttonCopy];

  [(OBBulletedListItem *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v17];
}

- (void)addItemWithTitle:(id)title description:(id)description symbolName:(id)name
{
  nameCopy = name;
  descriptionCopy = description;
  titleCopy = title;
  v11 = [[OBBulletedListItem alloc] initWithTitle:titleCopy description:descriptionCopy symbolName:nameCopy tintColor:0];

  [(OBBulletedListItem *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v11];
}

- (void)addItemWithTitle:(id)title description:(id)description symbolName:(id)name linkButton:(id)button
{
  buttonCopy = button;
  nameCopy = name;
  descriptionCopy = description;
  titleCopy = title;
  v14 = [[OBBulletedListItem alloc] initWithTitle:titleCopy description:descriptionCopy symbolName:nameCopy tintColor:0 linkButton:buttonCopy];

  [(OBBulletedListItem *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v14];
}

- (void)addItemWithDescription:(id)description symbolName:(id)name
{
  nameCopy = name;
  descriptionCopy = description;
  v8 = [[OBBulletedListItem alloc] initWithTitle:0 description:descriptionCopy symbolName:nameCopy tintColor:0];

  [(OBBulletedListItem *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v8];
}

- (void)addBulletedListItem:(id)item
{
  v15[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  items = [(OBBulletedList *)self items];
  [items addObject:itemCopy];

  [(OBBulletedList *)self addSubview:itemCopy];
  v6 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(OBBulletedList *)self leadingAnchor];
  leadingAnchor2 = [itemCopy leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v15[0] = v9;
  trailingAnchor = [(OBBulletedList *)self trailingAnchor];
  trailingAnchor2 = [itemCopy trailingAnchor];

  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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
  templateType = [v6 templateType];

  if (templateType > 0xA)
  {
LABEL_20:
    v5 = 22.0;
    if (!templateType)
    {
      return 0.0;
    }

    return v5;
  }

  if (((1 << templateType) & 0x11C) != 0)
  {
    v9 = !+[OBFeatureFlags isNaturalUIEnabled];
    v10 = 26.0;
    v11 = 16.0;
    goto LABEL_16;
  }

  if (((1 << templateType) & 0x242) == 0)
  {
    if (templateType == 10)
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
  verticalConstraints = [(OBBulletedList *)self verticalConstraints];
  [(OBBulletedList *)self removeConstraints:verticalConstraints];

  verticalConstraints2 = [(OBBulletedList *)self verticalConstraints];
  [verticalConstraints2 removeAllObjects];

  items = [(OBBulletedList *)self items];
  v6 = [items count];

  items2 = [(OBBulletedList *)self items];
  v8 = items2;
  if (v6 == 1)
  {
    firstObject = [items2 firstObject];

    verticalConstraints3 = [(OBBulletedList *)self verticalConstraints];
    topAnchor = [(OBBulletedList *)self topAnchor];
    topAnchor2 = [firstObject topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v44[0] = v13;
    bottomAnchor = [(OBBulletedList *)self bottomAnchor];
    bottomAnchor2 = [firstObject bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    v44[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    [verticalConstraints3 addObjectsFromArray:v17];

LABEL_17:
    goto LABEL_18;
  }

  v18 = [items2 count];

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
      firstObject = 0;
      v23 = *v40;
      v24 = -v20;
      do
      {
        v25 = 0;
        v26 = firstObject;
        do
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v39 + 1) + 8 * v25);
          verticalConstraints4 = [(OBBulletedList *)self verticalConstraints];
          if (v26)
          {
            bottomAnchor3 = [v26 bottomAnchor];
            topAnchor3 = [v27 topAnchor];
            v31 = bottomAnchor3;
            v32 = topAnchor3;
            v33 = v24;
          }

          else
          {
            bottomAnchor3 = [(OBBulletedList *)self topAnchor];
            topAnchor3 = [v27 topAnchor];
            v33 = 0.0;
            v31 = bottomAnchor3;
            v32 = topAnchor3;
          }

          v34 = [v31 constraintEqualToAnchor:v32 constant:v33];
          [verticalConstraints4 addObject:v34];

          firstObject = v27;
          ++v25;
          v26 = firstObject;
        }

        while (v22 != v25);
        v22 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v22);
    }

    else
    {
      firstObject = 0;
    }

    verticalConstraints3 = [(OBBulletedList *)self verticalConstraints];
    topAnchor = [(OBBulletedList *)self bottomAnchor];
    topAnchor2 = [firstObject bottomAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    [verticalConstraints3 addObject:v13];
    goto LABEL_17;
  }

LABEL_18:
  v35 = MEMORY[0x1E696ACD8];
  verticalConstraints5 = [(OBBulletedList *)self verticalConstraints];
  [v35 activateConstraints:verticalConstraints5];

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

  leadingConstraint = [(OBBulletedList *)self leadingConstraint];
  [leadingConstraint setConstant:-v3];

  trailingConstraint = [(OBBulletedList *)self trailingConstraint];
  [trailingConstraint setConstant:v3];
}

- (BOOL)_shouldHandleLandscapeiPhoneLayout
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  window = [(OBBulletedList *)self window];
  v5 = [mEMORY[0x1E69DC668] supportedInterfaceOrientationsForWindow:window];

  return v5 == 8 || (v5 & 0xFFFFFFFFFFFFFFF7) == 16;
}

@end