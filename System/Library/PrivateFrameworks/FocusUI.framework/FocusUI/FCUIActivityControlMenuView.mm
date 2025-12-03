@interface FCUIActivityControlMenuView
- (BOOL)_toggleHighlightForMenuElement:(id)element;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CGSize)sizeThatFits:(CGSize)fits;
- (FCUIActivityControlMenuView)initWithFrame:(CGRect)frame;
- (NSArray)menuItemActions;
- (NSArray)requiredVisualStyleCategories;
- (NSString)menuAlternativeDescription;
- (id)_newMenuItemView;
- (void)_configureFooterViewIfNecessary;
- (void)_handlePressGesture:(id)gesture;
- (void)_updateVisualStylingOfView:(id)view style:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider;
- (void)_visualStylingProvider:(id)provider didChangeForCategory:(int64_t)category outgoingProvider:(id)outgoingProvider;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setFooterAction:(id)action;
- (void)setMenuAlternativeDescription:(id)description;
- (void)setMenuItemActions:(id)actions;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
@end

@implementation FCUIActivityControlMenuView

- (FCUIActivityControlMenuView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = FCUIActivityControlMenuView;
  v3 = [(FCUIActivityControlMenuView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v3 action:sel__handlePressGesture_];
    [(UIGestureRecognizer *)v4 setDelegate:v3];
    [(UIGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v4 setDelaysTouchesEnded:0];
    [(UIGestureRecognizer *)v4 setMinimumPressDuration:0.0];
    [(UIGestureRecognizer *)v4 _setKeepTouchesOnContinuation:1];
    pressGestureRecognizer = v3->_pressGestureRecognizer;
    v3->_pressGestureRecognizer = v4;
    v6 = v4;

    [(FCUIActivityControlMenuView *)v3 addGestureRecognizer:v6];
    v7 = objc_alloc(MEMORY[0x277D75A10]);
    lightConfiguration = [MEMORY[0x277D76228] lightConfiguration];
    v9 = [v7 initWithConfiguration:lightConfiguration view:v3];
    feedbackGenerator = v3->_feedbackGenerator;
    v3->_feedbackGenerator = v9;
  }

  return v3;
}

- (NSArray)menuItemActions
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_menuItemViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        defaultAction = [*(*(&v11 + 1) + 8 * i) defaultAction];
        [v3 addObject:defaultAction];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_newMenuItemView
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(FCUIActivityControlMenuItemView);
  [(FCUIActivityControlMenuItemView *)v3 setAdjustsFontForContentSizeCategory:self->_adjustsFontForContentSizeCategory];
  [(FCUIActivityControlMenuItemView *)v3 setAlpha:0.0];
  [(FCUIActivityControlMenuView *)self addSubview:v3];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  requiredVisualStyleCategories = [(FCUIActivityControlMenuItemView *)v3 requiredVisualStyleCategories];
  v5 = [requiredVisualStyleCategories countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(requiredVisualStyleCategories);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:v9];
        -[FCUIActivityControlMenuItemView setVisualStylingProvider:forCategory:](v3, "setVisualStylingProvider:forCategory:", v10, [v9 integerValue]);
      }

      v6 = [requiredVisualStyleCategories countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)setMenuItemActions:(id)actions
{
  v47 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(actionsCopy, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = actionsCopy;
  v30 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v30)
  {
    v27 = *v41;
    selfCopy = self;
    do
    {
      v5 = 0;
      do
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v5;
        v6 = *(*(&v40 + 1) + 8 * v5);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v7 = self->_menuItemViews;
        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v37;
          while (2)
          {
            v11 = 0;
            do
            {
              if (*v37 != v10)
              {
                objc_enumerationMutation(v7);
              }

              _newMenuItemView = *(*(&v36 + 1) + 8 * v11);
              identifier = [v6 identifier];
              defaultAction = [(NSArray *)_newMenuItemView defaultAction];
              identifier2 = [defaultAction identifier];
              v16 = BSEqualStrings();

              if (v16)
              {
                self = selfCopy;
                goto LABEL_16;
              }

              ++v11;
            }

            while (v9 != v11);
            v9 = [(NSArray *)v7 countByEnumeratingWithState:&v36 objects:v45 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        self = selfCopy;
        _newMenuItemView = [(FCUIActivityControlMenuView *)selfCopy _newMenuItemView];
        v7 = _newMenuItemView;
LABEL_16:
        [(NSArray *)_newMenuItemView setDefaultAction:v6];
        [v29 addObject:_newMenuItemView];

        v5 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v30);
  }

  v17 = [(NSArray *)self->_menuItemViews mutableCopy];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = v29;
  v19 = [v18 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      v22 = 0;
      do
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [v17 removeObject:*(*(&v32 + 1) + 8 * v22++)];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v20);
  }

  objc_storeStrong(&self->_menuItemViews, v29);
  outgoingMenuItemViews = self->_outgoingMenuItemViews;
  if (!outgoingMenuItemViews)
  {
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = self->_outgoingMenuItemViews;
    self->_outgoingMenuItemViews = v24;

    outgoingMenuItemViews = self->_outgoingMenuItemViews;
  }

  [(NSMutableArray *)outgoingMenuItemViews addObjectsFromArray:v17];
  [(FCUIActivityControlMenuView *)self setNeedsLayout];
}

- (NSString)menuAlternativeDescription
{
  firstObject = [(NSArray *)self->_menuItemViews firstObject];
  alternativeDescription = [firstObject alternativeDescription];

  return alternativeDescription;
}

- (void)setMenuAlternativeDescription:(id)description
{
  v13[1] = *MEMORY[0x277D85DE8];
  menuItemViews = self->_menuItemViews;
  descriptionCopy = description;
  firstObject = [(NSArray *)menuItemViews firstObject];
  alternativeDescription = [firstObject alternativeDescription];
  if ([alternativeDescription length])
  {
    firstObject2 = [(NSArray *)self->_menuItemViews firstObject];
  }

  else
  {
    firstObject2 = [(FCUIActivityControlMenuView *)self _newMenuItemView];
  }

  v9 = firstObject2;

  [v9 setAlternativeDescription:descriptionCopy];
  firstObject3 = [(NSArray *)self->_menuItemViews firstObject];

  if (firstObject3 != v9)
  {
    [(FCUIActivityControlMenuView *)self setMenuItemActions:0];
    v13[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v12 = self->_menuItemViews;
    self->_menuItemViews = v11;
  }

  [(FCUIActivityControlMenuView *)self setNeedsLayout];
}

- (void)setFooterAction:(id)action
{
  actionCopy = action;
  footerAction = [(FCUIActivityControlMenuView *)self footerAction];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    v6 = actionCopy;
    if (actionCopy)
    {
      [(FCUIActivityControlMenuView *)self _configureFooterViewIfNecessary];
      v6 = actionCopy;
    }

    [(_FCUIActivityControlMenuFooterView *)self->_footerView setFooterAction:v6];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v23 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_menuItemViews;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v18 + 1) + 8 * v12) sizeThatFits:{width, height, v18}];
        if (v6 < v13)
        {
          v6 = v13;
        }

        v7 = v7 + v14;
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [(FCUIActivityControlMenuView *)self _configureFooterViewIfNecessary];
  [(_FCUIActivityControlMenuFooterView *)self->_footerView sizeThatFits:width, height];
  v16 = v7 + v15;
  v17 = v6;
  result.height = v16;
  result.width = v17;
  return result;
}

- (void)layoutSubviews
{
  v45 = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = FCUIActivityControlMenuView;
  [(FCUIActivityControlMenuView *)&v42 layoutSubviews];
  [(FCUIActivityControlMenuView *)self bounds];
  width = v46.size.width;
  height = v46.size.height;
  v5 = CGRectGetWidth(v46);
  v6 = [(NSArray *)self->_menuItemViews count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = v6 - 1;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      v13 = [(NSArray *)self->_menuItemViews objectAtIndex:v8];
      [v13 sizeThatFits:{width, height}];
      BSRectWithSize();
      v47.size.width = v5;
      v47.origin.x = v10;
      v47.origin.y = v11;
      v47.size.height = v12;
      CGRectGetMaxY(v47);
      UIRectIntegralWithScale();
      v10 = v14;
      v11 = v15;
      v5 = v16;
      v12 = v17;
      [v13 setFrame:?];
      [v13 setSeparatorVisible:v8 < v9];
      v18 = MEMORY[0x277D75D18];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __45__FCUIActivityControlMenuView_layoutSubviews__block_invoke;
      v40[3] = &unk_27901A470;
      v41 = v13;
      v19 = v13;
      [v18 performWithoutAnimation:v40];
      [v19 setAlpha:1.0];

      ++v8;
    }

    while (v7 != v8);
  }

  else
  {
    v12 = 0.0;
    v11 = 0.0;
    v10 = 0.0;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = self->_outgoingMenuItemViews;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v36 + 1) + 8 * i) setAlpha:0.0];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v22);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = self->_purgeableMenuItemViews;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v33;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v32 + 1) + 8 * j) removeFromSuperview];
      }

      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v32 objects:v43 count:16];
    }

    while (v27);
  }

  objc_storeStrong(&self->_purgeableMenuItemViews, self->_outgoingMenuItemViews);
  outgoingMenuItemViews = self->_outgoingMenuItemViews;
  self->_outgoingMenuItemViews = 0;

  if (![(NSArray *)self->_purgeableMenuItemViews count])
  {
    purgeableMenuItemViews = self->_purgeableMenuItemViews;
    self->_purgeableMenuItemViews = 0;
  }

  [(_FCUIActivityControlMenuFooterView *)self->_footerView sizeThatFits:width, height];
  BSRectWithSize();
  v48.origin.x = v10;
  v48.origin.y = v11;
  v48.size.width = v5;
  v48.size.height = v12;
  CGRectGetMaxY(v48);
  UIRectIntegralWithScale();
  [(_FCUIActivityControlMenuFooterView *)self->_footerView setFrame:?];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  if (self->_pressGestureRecognizer == recognizer)
  {
    gestureRecognizerCopy = gestureRecognizer;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v4 = isKindOfClass ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (NSArray)requiredVisualStyleCategories
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] setWithObject:&unk_285ED9400];
  if ([(NSArray *)self->_menuItemViews count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_menuItemViews;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          requiredVisualStyleCategories = [*(*(&v14 + 1) + 8 * i) requiredVisualStyleCategories];
          [v3 addObjectsFromArray:requiredVisualStyleCategories];
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = objc_alloc_init(FCUIActivityControlMenuItemView);
    requiredVisualStyleCategories2 = [(NSArray *)v4 requiredVisualStyleCategories];
    [v3 addObjectsFromArray:requiredVisualStyleCategories2];
  }

  [(FCUIActivityControlMenuView *)self _configureFooterViewIfNecessary];
  requiredVisualStyleCategories3 = [(_FCUIActivityControlMenuFooterView *)self->_footerView requiredVisualStyleCategories];
  [v3 addObjectsFromArray:requiredVisualStyleCategories3];

  allObjects = [v3 allObjects];

  return allObjects;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  requiredVisualStyleCategories = [(FCUIActivityControlMenuView *)self requiredVisualStyleCategories];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:category];
  v8 = [requiredVisualStyleCategories containsObject:v7];

  if (v8)
  {
    categoriesToVisualStylingProviders = self->_categoriesToVisualStylingProviders;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:category];
    v11 = [(NSMutableDictionary *)categoriesToVisualStylingProviders objectForKey:v10];

    v12 = self->_categoriesToVisualStylingProviders;
    if (!v12)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v14 = self->_categoriesToVisualStylingProviders;
      self->_categoriesToVisualStylingProviders = v13;

      v12 = self->_categoriesToVisualStylingProviders;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithInteger:category];
    [(NSMutableDictionary *)v12 setObject:providerCopy forKey:v15];

    [(FCUIActivityControlMenuView *)self _visualStylingProvider:providerCopy didChangeForCategory:category outgoingProvider:v11];
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_menuItemViews;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setAdjustsFontForContentSizeCategory:{self->_adjustsFontForContentSizeCategory, v9}];
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(_FCUIActivityControlMenuFooterView *)self->_footerView setAdjustsFontForContentSizeCategory:self->_adjustsFontForContentSizeCategory];
    [(FCUIActivityControlMenuView *)self setNeedsLayout];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v16 = *MEMORY[0x277D85DE8];
  adjustsFontForContentSizeCategory = [(FCUIActivityControlMenuView *)self adjustsFontForContentSizeCategory];
  if (adjustsFontForContentSizeCategory)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_menuItemViews;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v7 |= [*(*(&v11 + 1) + 8 * i) adjustForContentSizeCategoryChange];
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    else
    {
      LOBYTE(v7) = 0;
    }

    if ([(_FCUIActivityControlMenuFooterView *)self->_footerView adjustForContentSizeCategoryChange]|| (v7 & 1) != 0)
    {
      [(FCUIActivityControlMenuView *)self setNeedsLayout];
      LOBYTE(adjustsFontForContentSizeCategory) = 1;
    }

    else
    {
      LOBYTE(adjustsFontForContentSizeCategory) = 0;
    }
  }

  return adjustsFontForContentSizeCategory;
}

- (void)_configureFooterViewIfNecessary
{
  v19 = *MEMORY[0x277D85DE8];
  if (!self->_footerView)
  {
    v3 = [_FCUIActivityControlMenuFooterView alloc];
    [(FCUIActivityControlMenuView *)self bounds];
    v4 = [(_FCUIActivityControlMenuFooterView *)v3 initWithFrame:?];
    footerView = self->_footerView;
    self->_footerView = v4;

    [(_FCUIActivityControlMenuFooterView *)self->_footerView setAdjustsFontForContentSizeCategory:self->_adjustsFontForContentSizeCategory];
    [(FCUIActivityControlMenuView *)self addSubview:self->_footerView];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    requiredVisualStyleCategories = [(_FCUIActivityControlMenuFooterView *)self->_footerView requiredVisualStyleCategories];
    v7 = [requiredVisualStyleCategories countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(requiredVisualStyleCategories);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = self->_footerView;
          v13 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:v11];
          -[_FCUIActivityControlMenuFooterView setVisualStylingProvider:forCategory:](v12, "setVisualStylingProvider:forCategory:", v13, [v11 integerValue]);
        }

        v8 = [requiredVisualStyleCategories countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)_updateVisualStylingOfView:(id)view style:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider
{
  if (view)
  {
    providerCopy = provider;
    viewCopy = view;
    [outgoingProvider stopAutomaticallyUpdatingView:viewCopy];
    [providerCopy automaticallyUpdateView:viewCopy withStyle:style];
  }
}

- (void)_visualStylingProvider:(id)provider didChangeForCategory:(int64_t)category outgoingProvider:(id)outgoingProvider
{
  v25 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  providerCopy = provider;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = selfCopy->_menuItemViews;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        requiredVisualStyleCategories = [v11 requiredVisualStyleCategories];
        v13 = [MEMORY[0x277CCABB0] numberWithInteger:category];
        v14 = [requiredVisualStyleCategories containsObject:v13];

        if (v14)
        {
          [v11 setVisualStylingProvider:providerCopy forCategory:category];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  requiredVisualStyleCategories2 = [(_FCUIActivityControlMenuFooterView *)selfCopy->_footerView requiredVisualStyleCategories];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:category];
  v17 = [requiredVisualStyleCategories2 containsObject:v16];

  if (v17)
  {
    [(_FCUIActivityControlMenuFooterView *)selfCopy->_footerView setVisualStylingProvider:providerCopy forCategory:category];
  }
}

- (BOOL)_toggleHighlightForMenuElement:(id)element
{
  v18 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v5 = [(NSArray *)self->_menuItemViews arrayByAddingObject:self->_footerView];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 isHighlighted] != (v11 == elementCopy))
        {
          [v11 setHighlighted:v11 == elementCopy];
          v8 = (v11 == elementCopy) ^ [v11 isHighlighted] ^ 1;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)_handlePressGesture:(id)gesture
{
  gestureCopy = gesture;
  [gestureCopy locationInView:self];
  v4 = [(FCUIActivityControlMenuView *)self hitTest:0 withEvent:?];
  v5 = objc_opt_respondsToSelector();
  v6 = 0;
  if (v5)
  {
    if ([v4 isMenuElement])
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  v7 = v6;
  if ([(FCUIActivityControlMenuView *)self _toggleHighlightForMenuElement:v7])
  {
    [(UISelectionFeedbackGenerator *)self->_feedbackGenerator selectionChanged];
  }

  if (v7 && [gestureCopy state] == 3)
  {
    [v7 setHighlighted:0];
    if (objc_opt_respondsToSelector())
    {
      [v7 setSelected:{objc_msgSend(v7, "isSelected") ^ 1}];
    }

    [v7 performAction];
  }
}

@end