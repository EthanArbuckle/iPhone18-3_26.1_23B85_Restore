@interface HUIconListView
- (HUIconListView)init;
- (void)_addIconNamed:(id)named;
- (void)_addIconWithDescriptor:(id)descriptor;
- (void)_layoutLeftToRight;
- (void)_layoutRightToLeft;
- (void)_prepareIconArray;
- (void)_setUpIcons;
- (void)layoutSubviews;
- (void)setIconDescriptors:(id)descriptors;
@end

@implementation HUIconListView

- (HUIconListView)init
{
  v6.receiver = self;
  v6.super_class = HUIconListView;
  v2 = [(HUIconListView *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    iconDescriptors = v2->_iconDescriptors;
    v2->_iconDescriptors = array;
  }

  return v2;
}

- (void)setIconDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  if (([(NSArray *)self->_iconDescriptors isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_iconDescriptors, descriptors);
    [(HUIconListView *)self _setUpIcons];
  }
}

- (void)_setUpIcons
{
  v13 = *MEMORY[0x277D85DE8];
  [(HUIconListView *)self _prepareIconArray];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  iconDescriptors = [(HUIconListView *)self iconDescriptors];
  v4 = [iconDescriptors countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(iconDescriptors);
        }

        [(HUIconListView *)self _addIconWithDescriptor:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [iconDescriptors countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(HUIconListView *)self setNeedsLayout];
  [(HUIconListView *)self layoutIfNeeded];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUIconListView;
  [(HUIconListView *)&v3 layoutSubviews];
  if ([MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[HUIconListView semanticContentAttribute](self, "semanticContentAttribute")}] == 1)
  {
    [(HUIconListView *)self _layoutRightToLeft];
  }

  else
  {
    [(HUIconListView *)self _layoutLeftToRight];
  }
}

- (void)_layoutLeftToRight
{
  v21 = *MEMORY[0x277D85DE8];
  [(HUIconListView *)self frame];
  v4 = v3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  iconViews = [(HUIconListView *)self iconViews];
  v6 = [iconViews countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(iconViews);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        [v11 intrinsicContentSize];
        v13 = v12;
        v15 = round(v14);
        [(HUIconListView *)self bounds];
        v22.x = v9 + v15;
        v22.y = 0.0;
        if (CGRectContainsPoint(v23, v22))
        {
          [v11 setFrame:{v9, floor((v4 - v13) * 0.5), v15, v13}];
        }

        else
        {
          [v11 removeFromSuperview];
        }

        v9 = v9 + v15 + 12.0;
      }

      v7 = [iconViews countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)_layoutRightToLeft
{
  v22 = *MEMORY[0x277D85DE8];
  [(HUIconListView *)self frame];
  v4 = v3;
  v6 = v5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  iconViews = [(HUIconListView *)self iconViews];
  v8 = [iconViews countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(iconViews);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        [v12 intrinsicContentSize];
        v14 = v13;
        v16 = round(v15);
        [(HUIconListView *)self bounds];
        v23.y = 0.0;
        v23.x = v4 - v16;
        if (CGRectContainsPoint(v24, v23))
        {
          [v12 setFrame:{v4 - v16, floor((v6 - v14) * 0.5), v16, v14}];
        }

        else
        {
          [v12 removeFromSuperview];
        }

        v4 = v4 - (v16 + 12.0);
      }

      v9 = [iconViews countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)_addIconNamed:(id)named
{
  v4 = MEMORY[0x277D14728];
  namedCopy = named;
  v6 = [[v4 alloc] initWithImageIdentifier:namedCopy];

  [(HUIconListView *)self _addIconWithDescriptor:v6];
}

- (void)_addIconWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v6 = [[HUTriggerIconView alloc] initWithIconDescriptor:descriptorCopy];

  [(HUTriggerIconView *)v6 setContentMode:1];
  iconViews = [(HUIconListView *)self iconViews];
  [iconViews addObject:v6];

  [(HUIconListView *)self addSubview:v6];
}

- (void)_prepareIconArray
{
  v16 = *MEMORY[0x277D85DE8];
  iconViews = [(HUIconListView *)self iconViews];

  if (iconViews)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    iconViews2 = [(HUIconListView *)self iconViews];
    v5 = [iconViews2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(iconViews2);
          }

          [*(*(&v11 + 1) + 8 * i) removeFromSuperview];
        }

        v6 = [iconViews2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    iconViews3 = [(HUIconListView *)self iconViews];
    [iconViews3 removeAllObjects];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    [(HUIconListView *)self setIconViews:?];
  }
}

@end