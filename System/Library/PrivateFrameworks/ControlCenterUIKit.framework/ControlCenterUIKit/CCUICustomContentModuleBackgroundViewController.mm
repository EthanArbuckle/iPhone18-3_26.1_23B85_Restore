@interface CCUICustomContentModuleBackgroundViewController
- (BOOL)_shouldLimitContentSizeCategory;
- (CGPoint)_footerCenterForBounds:(CGRect)bounds;
- (CGPoint)_headerCenterForBounds:(CGRect)bounds;
- (id)_titleFont;
- (id)requiredVisualStyleCategories;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)_updateCustomFooterViewLayoutIfNecessary;
- (void)_updateCustomHeaderViewLayoutIfNecessary;
- (void)_updateFooterButtonsLayoutIfNecessary;
- (void)_updateHeaderGlyphVisualStylingWithProvider:(id)provider;
- (void)_updateHeaderLayoutIfNecessary;
- (void)_updateTitleFont;
- (void)_visualStylingProvider:(id)provider didChangeForCategory:(int64_t)category outgoingVisualStylingProvider:(id)stylingProvider;
- (void)setCustomFooterView:(id)view;
- (void)setCustomHeaderView:(id)view;
- (void)setFooterButtons:(id)buttons;
- (void)setHeaderGlyphImage:(id)image unscaledSymbolPointSize:(double)size;
- (void)setHeaderGlyphPackageDescription:(id)description;
- (void)setHeaderGlyphState:(id)state;
- (void)setHeaderTitle:(id)title;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation CCUICustomContentModuleBackgroundViewController

- (void)viewDidLoad
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CCUICustomContentModuleBackgroundViewController;
  [(CCUICustomContentModuleBackgroundViewController *)&v6 viewDidLoad];
  v3 = objc_opt_self();
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [(CCUICustomContentModuleBackgroundViewController *)self registerForTraitChanges:v4 withAction:sel__contentSizeCategoryDidChange];

  [(CCUICustomContentModuleBackgroundViewController *)self _contentSizeCategoryDidChange];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CCUICustomContentModuleBackgroundViewController;
  [(CCUICustomContentModuleBackgroundViewController *)&v3 viewWillLayoutSubviews];
  [(CCUICustomContentModuleBackgroundViewController *)self _updateHeaderLayoutIfNecessary];
  [(CCUICustomContentModuleBackgroundViewController *)self _updateCustomHeaderViewLayoutIfNecessary];
  [(CCUICustomContentModuleBackgroundViewController *)self _updateFooterButtonsLayoutIfNecessary];
  [(CCUICustomContentModuleBackgroundViewController *)self _updateCustomFooterViewLayoutIfNecessary];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = CCUICustomContentModuleBackgroundViewController;
  [(CCUICustomContentModuleBackgroundViewController *)&v10 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (window)
  {
    v6 = [(CCUICustomContentModuleBackgroundViewController *)self visualStylingProviderForCategory:1];
    categoriesToVisualStylingProviders = self->_categoriesToVisualStylingProviders;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    v9 = [(NSMutableDictionary *)categoriesToVisualStylingProviders objectForKey:v8];
    [(CCUICustomContentModuleBackgroundViewController *)self _visualStylingProvider:v6 didChangeForCategory:1 outgoingVisualStylingProvider:v9];
  }
}

- (void)setHeaderTitle:(id)title
{
  titleCopy = title;
  headerTitleLabel = self->_headerTitleLabel;
  if (titleCopy)
  {
    v15 = titleCopy;
    if (!headerTitleLabel)
    {
      v6 = objc_alloc(MEMORY[0x1E69DCC10]);
      v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v8 = self->_headerTitleLabel;
      self->_headerTitleLabel = v7;

      v9 = self->_headerTitleLabel;
      systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
      [(UILabel *)v9 setTextColor:systemWhiteColor];

      v11 = self->_headerTitleLabel;
      v12 = [MEMORY[0x1E69DB878] systemFontOfSize:20.0];
      [(UILabel *)v11 setFont:v12];

      view = [(CCUICustomContentModuleBackgroundViewController *)self view];
      [view addSubview:self->_headerTitleLabel];

      headerTitleLabel = self->_headerTitleLabel;
    }

    [(UILabel *)headerTitleLabel setText:v15];
    headerTitleLabel = [(CCUICustomContentModuleBackgroundViewController *)self _updateTitleFont];
  }

  else
  {
    if (!headerTitleLabel)
    {
      goto LABEL_8;
    }

    v15 = 0;
    [(UILabel *)headerTitleLabel removeFromSuperview];
    v14 = self->_headerTitleLabel;
    self->_headerTitleLabel = 0;
  }

  titleCopy = v15;
LABEL_8:

  MEMORY[0x1EEE66BB8](headerTitleLabel, titleCopy);
}

- (void)setHeaderGlyphImage:(id)image unscaledSymbolPointSize:(double)size
{
  imageCopy = image;
  headerImageView = self->_headerImageView;
  if (imageCopy)
  {
    v22 = imageCopy;
    if (!headerImageView)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      v9 = self->_headerImageView;
      self->_headerImageView = v8;

      [(UIImageView *)self->_headerImageView controlCenterApplyPrimaryContentShadow];
      [(UIImageView *)self->_headerImageView setContentMode:1];
      v10 = self->_headerImageView;
      systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
      [(UIImageView *)v10 setTintColor:systemWhiteColor];

      view = [(CCUICustomContentModuleBackgroundViewController *)self view];
      [view addSubview:self->_headerImageView];

      imageCopy = v22;
    }

    if ([(UIImageView *)imageCopy isSymbolImage])
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      v15 = 1.33333333;
      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v15 = 1.5;
      }

      v16 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:round(v15 * size)];
      v17 = [(UIImageView *)v22 imageByApplyingSymbolConfiguration:v16];

      v18 = v17;
    }

    else
    {
      v18 = v22;
    }

    v23 = v18;
    [(UIImageView *)self->_headerImageView setImage:v18];
    v20 = [(CCUICustomContentModuleBackgroundViewController *)self visualStylingProviderForCategory:1];
    [(CCUICustomContentModuleBackgroundViewController *)self _updateHeaderGlyphVisualStylingWithProvider:v20];

    view2 = [(CCUICustomContentModuleBackgroundViewController *)self view];
    [view2 setNeedsLayout];

    v19 = v23;
  }

  else
  {
    if (!headerImageView)
    {
      return;
    }

    [(UIImageView *)headerImageView removeFromSuperview];
    v19 = self->_headerImageView;
    self->_headerImageView = 0;
  }
}

- (void)setHeaderGlyphPackageDescription:(id)description
{
  descriptionCopy = description;
  currentDevice = 1008;
  packageView = self->_packageView;
  v19 = descriptionCopy;
  if (!packageView)
  {
    v9 = objc_alloc_init(CCUICAPackageView);
    v10 = self->_packageView;
    self->_packageView = v9;

    [(UIView *)self->_packageView controlCenterApplyPrimaryContentShadow];
    view = [(CCUICustomContentModuleBackgroundViewController *)self view];
    [view addSubview:self->_packageView];

    descriptionCopy = v19;
    packageView = self->_packageView;
  }

  [(CCUICAPackageView *)packageView setPackageDescription:descriptionCopy];
  v12 = self->_packageView;
  v21.origin.x = CCUIReferenceScreenBounds();
  Width = CGRectGetWidth(v21);
  if (Width < 1024.0 || ([MEMORY[0x1E69DC938] currentDevice], self = objc_claimAutoreleasedReturnValue(), -[CCUICustomContentModuleBackgroundViewController userInterfaceIdiom](self, "userInterfaceIdiom") != 1) || SBFEffectiveHomeButtonType() == 2)
  {
    v22.origin.x = CCUIReferenceScreenBounds();
    v14 = CGRectGetWidth(v22);
    if (v14 >= 1024.0)
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        [(CCUICAPackageView *)v12 setScale:1.25];
LABEL_41:

LABEL_42:
        if (Width < 1024.0)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }
    }

    v23.origin.x = CCUIReferenceScreenBounds();
    v15 = CGRectGetWidth(v23);
    if (v15 >= 834.0)
    {
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice2 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        [(CCUICAPackageView *)v12 setScale:1.25];
LABEL_39:

LABEL_40:
        if (v14 < 1024.0)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

    v24.origin.x = CCUIReferenceScreenBounds();
    v16 = CGRectGetWidth(v24);
    if (v16 >= 834.0 && ([MEMORY[0x1E69DC938] currentDevice], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "userInterfaceIdiom") == 1) && SBFEffectiveHomeButtonType() != 2)
    {
      [(CCUICAPackageView *)v12 setScale:1.25];
    }

    else
    {
      currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
      v18 = 1.25;
      if ([currentDevice3 userInterfaceIdiom] != 1)
      {
        v25.origin.x = CCUIReferenceScreenBounds();
        v18 = 1.5;
        if (CGRectGetWidth(v25) < 430.0)
        {
          v26.origin.x = CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v26) < 428.0)
          {
            v27.origin.x = CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v27) < 420.0 || SBFEffectiveHomeButtonType() != 2)
            {
              v28.origin.x = CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v28) < 414.0 || SBFEffectiveHomeButtonType() != 2)
              {
                v29.origin.x = CCUIReferenceScreenBounds();
                if (CGRectGetWidth(v29) < 414.0)
                {
                  v30.origin.x = CCUIReferenceScreenBounds();
                  if (CGRectGetWidth(v30) < 393.0)
                  {
                    v31.origin.x = CCUIReferenceScreenBounds();
                    if (CGRectGetWidth(v31) < 390.0)
                    {
                      v32.origin.x = CCUIReferenceScreenBounds();
                      if (CGRectGetWidth(v32) < 375.0 || SBFEffectiveHomeButtonType() != 2)
                      {
                        v33.origin.x = CCUIReferenceScreenBounds();
                        if (CGRectGetWidth(v33) < 375.0)
                        {
                          v34.origin.x = CCUIReferenceScreenBounds();
                          if (CGRectGetWidth(v34) < 320.0)
                          {
                            v18 = 1.25;
                          }

                          else
                          {
                            v18 = 1.5;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      [(CCUICAPackageView *)v12 setScale:v18];

      if (v16 < 834.0)
      {
LABEL_38:
        if (v15 < 834.0)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

    goto LABEL_38;
  }

  [(CCUICAPackageView *)v12 setScale:1.25];
LABEL_43:

LABEL_44:
}

- (void)setHeaderGlyphState:(id)state
{
  stateCopy = state;
  [(CCUICustomContentModuleBackgroundViewController *)self loadViewIfNeeded];
  [(CCUICAPackageView *)self->_packageView setStateName:stateCopy];
}

- (void)setCustomHeaderView:(id)view
{
  viewCopy = view;
  customHeaderView = self->_customHeaderView;
  if (customHeaderView != viewCopy)
  {
    v13 = viewCopy;
    if (customHeaderView)
    {
      [(UIView *)customHeaderView removeFromSuperview];
    }

    objc_storeStrong(&self->_customHeaderView, view);
    v7 = self->_customHeaderView;
    view = [(CCUICustomContentModuleBackgroundViewController *)self view];
    v9 = view;
    if (v7)
    {
      [view addSubview:self->_customHeaderView];

      [(UILabel *)self->_headerTitleLabel removeFromSuperview];
      [(UIImageView *)self->_headerImageView removeFromSuperview];
      [(CCUICAPackageView *)self->_packageView removeFromSuperview];
    }

    else
    {
      [view addSubview:self->_headerTitleLabel];

      view2 = [(CCUICustomContentModuleBackgroundViewController *)self view];
      [view2 addSubview:self->_headerImageView];

      view3 = [(CCUICustomContentModuleBackgroundViewController *)self view];
      [view3 addSubview:self->_packageView];
    }

    view4 = [(CCUICustomContentModuleBackgroundViewController *)self view];
    [view4 setNeedsLayout];

    viewCopy = v13;
  }

  MEMORY[0x1EEE66BB8](customHeaderView, viewCopy);
}

- (void)setFooterButtons:(id)buttons
{
  v35 = *MEMORY[0x1E69E9840];
  buttonsCopy = buttons;
  footerButtons = self->_footerButtons;
  if (footerButtons)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = footerButtons;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v6);
          }

          view = [*(*(&v29 + 1) + 8 * i) view];
          [view removeFromSuperview];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v8);
    }
  }

  v12 = [buttonsCopy copy];
  v13 = self->_footerButtons;
  self->_footerButtons = v12;

  v14 = [(NSArray *)self->_footerButtons count];
  if (v14 == 1)
  {
    v15 = MEMORY[0x1E69DDC38];
  }

  else
  {
    v15 = MEMORY[0x1E69DDC50];
    if (v14 != 2)
    {
      v15 = MEMORY[0x1E69DDC60];
    }
  }

  v16 = *v15;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = self->_footerButtons;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * j);
        [v22 setContentSizeCategoryThreshold:{v16, v25}];
        view2 = [(CCUICustomContentModuleBackgroundViewController *)self view];
        view3 = [v22 view];
        [view2 addSubview:view3];
      }

      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v19);
  }
}

- (void)setCustomFooterView:(id)view
{
  v32 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  customFooterView = self->_customFooterView;
  if (customFooterView != viewCopy)
  {
    if (customFooterView)
    {
      [(UIView *)customFooterView removeFromSuperview];
    }

    objc_storeStrong(&self->_customFooterView, view);
    if (self->_customFooterView)
    {
      view = [(CCUICustomContentModuleBackgroundViewController *)self view];
      [view addSubview:self->_customFooterView];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = self->_footerButtons;
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v27;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v8);
            }

            view2 = [*(*(&v26 + 1) + 8 * i) view];
            [view2 removeFromSuperview];
          }

          v10 = [(NSArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = self->_footerButtons;
      v14 = [(NSArray *)v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(v8);
            }

            v18 = *(*(&v22 + 1) + 8 * j);
            view3 = [(CCUICustomContentModuleBackgroundViewController *)self view];
            view4 = [v18 view];
            [view3 addSubview:view4];
          }

          v15 = [(NSArray *)v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v15);
      }
    }

    view5 = [(CCUICustomContentModuleBackgroundViewController *)self view];
    [view5 setNeedsLayout];
  }
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  requiredVisualStyleCategories = [(CCUICustomContentModuleBackgroundViewController *)self requiredVisualStyleCategories];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:category];
  v7 = [requiredVisualStyleCategories containsObject:v6];

  if (v7)
  {
    categoriesToVisualStylingProviders = self->_categoriesToVisualStylingProviders;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:category];
    v10 = [(NSMutableDictionary *)categoriesToVisualStylingProviders objectForKey:v9];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      view = [(CCUICustomContentModuleBackgroundViewController *)self view];
      v12 = [view visualStylingProviderForCategory:category];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)requiredVisualStyleCategories
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{&unk_1F4D5A820, 0}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_footerButtons;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        requiredVisualStyleCategories = [*(*(&v12 + 1) + 8 * i) requiredVisualStyleCategories];
        [v3 addObjectsFromArray:requiredVisualStyleCategories];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  requiredVisualStyleCategories = [(CCUICustomContentModuleBackgroundViewController *)self requiredVisualStyleCategories];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:category];
  v8 = [requiredVisualStyleCategories containsObject:v7];

  if (v8)
  {
    categoriesToVisualStylingProviders = self->_categoriesToVisualStylingProviders;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:category];
    v11 = [(NSMutableDictionary *)categoriesToVisualStylingProviders objectForKey:v10];

    if (v11 == providerCopy)
    {
LABEL_10:

      goto LABEL_11;
    }

    v12 = self->_categoriesToVisualStylingProviders;
    if (providerCopy)
    {
      if (!v12)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v14 = self->_categoriesToVisualStylingProviders;
        self->_categoriesToVisualStylingProviders = v13;

        v12 = self->_categoriesToVisualStylingProviders;
      }

      v15 = [MEMORY[0x1E696AD98] numberWithInteger:category];
      [(NSMutableDictionary *)v12 setObject:providerCopy forKey:v15];
    }

    else
    {
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:category];
      [(NSMutableDictionary *)v12 removeObjectForKey:v16];

      if ([(NSMutableDictionary *)self->_categoriesToVisualStylingProviders count])
      {
        goto LABEL_9;
      }

      v15 = self->_categoriesToVisualStylingProviders;
      self->_categoriesToVisualStylingProviders = 0;
    }

LABEL_9:
    [(CCUICustomContentModuleBackgroundViewController *)self _visualStylingProvider:providerCopy didChangeForCategory:category outgoingVisualStylingProvider:v11];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_updateHeaderLayoutIfNecessary
{
  view = [(CCUICustomContentModuleBackgroundViewController *)self view];
  [view bounds];
  [(CCUICustomContentModuleBackgroundViewController *)self _headerCenterForBounds:?];

  if (!CGFloatIsValid() || !CGFloatIsValid())
  {
    return;
  }

  traitCollection = [(CCUICustomContentModuleBackgroundViewController *)self traitCollection];
  [traitCollection displayScale];

  image = [(UIImageView *)self->_headerImageView image];
  [image size];
  if (([image isSymbolImage] & 1) == 0)
  {
    v39.origin.x = CCUIReferenceScreenBounds();
    Width = CGRectGetWidth(v39);
    currentDevice4 = 0x1E69DC000;
    if (Width >= 1024.0 && ([MEMORY[0x1E69DC938] currentDevice], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "userInterfaceIdiom") == 1) && SBFEffectiveHomeButtonType() != 2)
    {
      v36 = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
    }

    else
    {
      v40.origin.x = CCUIReferenceScreenBounds();
      v7 = CGRectGetWidth(v40);
      v8 = v7 >= 1024.0;
      if (v7 >= 1024.0 && ([MEMORY[0x1E69DC938] currentDevice], v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "userInterfaceIdiom") == 1) && SBFEffectiveHomeButtonType() == 2)
      {
        v36 = 0;
        v9 = 0;
        v10 = 0;
        v8 = 1;
      }

      else
      {
        v41.origin.x = CCUIReferenceScreenBounds();
        v11 = CGRectGetWidth(v41);
        v10 = v11 >= 834.0;
        if (v11 >= 834.0 && ([MEMORY[0x1E69DC938] currentDevice], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "userInterfaceIdiom") == 1) && SBFEffectiveHomeButtonType() == 2)
        {
          v36 = 0;
          v9 = 0;
          v10 = 1;
        }

        else
        {
          v42.origin.x = CCUIReferenceScreenBounds();
          v12 = CGRectGetWidth(v42);
          v9 = v12 >= 834.0;
          if (v12 >= 834.0 && ([MEMORY[0x1E69DC938] currentDevice], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "userInterfaceIdiom") == 1) && SBFEffectiveHomeButtonType() != 2)
          {
            v36 = 0;
            v9 = 1;
          }

          else
          {
            currentDevice = [MEMORY[0x1E69DC938] currentDevice];
            if ([currentDevice userInterfaceIdiom] != 1)
            {
              v43.origin.x = CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v43) < 430.0)
              {
                v44.origin.x = CCUIReferenceScreenBounds();
                if (CGRectGetWidth(v44) < 428.0)
                {
                  v45.origin.x = CCUIReferenceScreenBounds();
                  if (CGRectGetWidth(v45) < 420.0 || SBFEffectiveHomeButtonType() != 2)
                  {
                    v46.origin.x = CCUIReferenceScreenBounds();
                    if (CGRectGetWidth(v46) < 414.0 || SBFEffectiveHomeButtonType() != 2)
                    {
                      v47.origin.x = CCUIReferenceScreenBounds();
                      if (CGRectGetWidth(v47) < 414.0)
                      {
                        v48.origin.x = CCUIReferenceScreenBounds();
                        if (CGRectGetWidth(v48) < 393.0)
                        {
                          v49.origin.x = CCUIReferenceScreenBounds();
                          if (CGRectGetWidth(v49) < 390.0)
                          {
                            v50.origin.x = CCUIReferenceScreenBounds();
                            if (CGRectGetWidth(v50) < 375.0 || SBFEffectiveHomeButtonType() != 2)
                            {
                              v51.origin.x = CCUIReferenceScreenBounds();
                              if (CGRectGetWidth(v51) < 375.0)
                              {
                                v52.origin.x = CCUIReferenceScreenBounds();
                                CGRectGetWidth(v52);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v36 = 1;
          }
        }
      }
    }

    v53.origin.x = CCUIReferenceScreenBounds();
    v13 = CGRectGetWidth(v53);
    if (v13 >= 1024.0 && ([MEMORY[0x1E69DC938] currentDevice], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "userInterfaceIdiom") == 1) && SBFEffectiveHomeButtonType() != 2)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v15 = 0;
    }

    else
    {
      v54.origin.x = CCUIReferenceScreenBounds();
      v14 = CGRectGetWidth(v54);
      v15 = v14 >= 1024.0;
      if (v14 >= 1024.0)
      {
        currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
        if ([currentDevice2 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v15 = 1;
          goto LABEL_68;
        }
      }

      v55.origin.x = CCUIReferenceScreenBounds();
      v19 = CGRectGetWidth(v55);
      v18 = v19 >= 834.0;
      if (v19 >= 834.0)
      {
        currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
        if ([currentDevice3 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 1;
          goto LABEL_68;
        }
      }

      v56.origin.x = CCUIReferenceScreenBounds();
      v20 = CGRectGetWidth(v56);
      v17 = v20 >= 834.0;
      if (v20 >= 834.0 && ([MEMORY[0x1E69DC938] currentDevice], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "userInterfaceIdiom") == 1) && SBFEffectiveHomeButtonType() != 2)
      {
        v16 = 0;
        v17 = 1;
      }

      else
      {
        currentDevice4 = [MEMORY[0x1E69DC938] currentDevice];
        if ([currentDevice4 userInterfaceIdiom] != 1)
        {
          v57.origin.x = CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v57) < 430.0)
          {
            v58.origin.x = CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v58) < 428.0)
            {
              v59.origin.x = CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v59) < 420.0 || SBFEffectiveHomeButtonType() != 2)
              {
                v60.origin.x = CCUIReferenceScreenBounds();
                if (CGRectGetWidth(v60) >= 414.0 && SBFEffectiveHomeButtonType() == 2 || (v61.origin.x = CCUIReferenceScreenBounds(), CGRectGetWidth(v61) >= 414.0))
                {
LABEL_64:
                  v16 = 1;
                  goto LABEL_68;
                }

                v62.origin.x = CCUIReferenceScreenBounds();
                if (CGRectGetWidth(v62) < 393.0)
                {
                  v63.origin.x = CCUIReferenceScreenBounds();
                  if (CGRectGetWidth(v63) < 390.0)
                  {
                    v64.origin.x = CCUIReferenceScreenBounds();
                    if (CGRectGetWidth(v64) < 375.0 || SBFEffectiveHomeButtonType() != 2)
                    {
                      v65.origin.x = CCUIReferenceScreenBounds();
                      if (CGRectGetWidth(v65) < 375.0)
                      {
                        v66.origin.x = CCUIReferenceScreenBounds();
                        CGRectGetWidth(v66);
                      }
                    }

                    goto LABEL_64;
                  }
                }
              }
            }
          }
        }

        v16 = 1;
      }
    }

LABEL_68:
    UISizeRoundToScale();
    if (v16)
    {

      if (!v17)
      {
        goto LABEL_70;
      }
    }

    else if (!v17)
    {
LABEL_70:
      if (v18)
      {
        goto LABEL_71;
      }

      goto LABEL_75;
    }

    if (v18)
    {
LABEL_71:

      if (!v15)
      {
LABEL_77:
        if (v13 >= 1024.0)
        {
        }

        if (v36)
        {

          if (!v9)
          {
            goto LABEL_81;
          }
        }

        else if (!v9)
        {
LABEL_81:
          if (v10)
          {
            goto LABEL_82;
          }

          goto LABEL_86;
        }

        if (v10)
        {
LABEL_82:

          if (!v8)
          {
LABEL_88:
            if (Width >= 1024.0)
            {
            }

            goto LABEL_90;
          }

LABEL_87:

          goto LABEL_88;
        }

LABEL_86:
        if (!v8)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      }

LABEL_76:

      goto LABEL_77;
    }

LABEL_75:
    if (!v15)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

LABEL_90:
  headerImageView = self->_headerImageView;
  BSRectWithSize();
  UIRectCenteredAboutPointScale();
  [(UIImageView *)headerImageView setFrame:?];
  packageView = self->_packageView;
  [(CCUICAPackageView *)packageView bounds];
  UIRectCenteredAboutPointScale();
  [(CCUICAPackageView *)packageView setFrame:?];
  v23 = self->_headerImageView;
  if (v23)
  {
    [(UIImageView *)v23 frame];
    Height = CGRectGetHeight(v67);
  }

  else
  {
    Height = 0.0;
  }

  v25 = self->_packageView;
  if (v25)
  {
    [(CCUICAPackageView *)v25 frame];
    Height = CGRectGetHeight(v68);
  }

  if (Height > 0.0)
  {
    [(UILabel *)self->_headerTitleLabel frame];
    CGRectGetHeight(v69);
  }

  headerTitleLabel = self->_headerTitleLabel;
  [(UILabel *)headerTitleLabel bounds];
  UIRectCenteredAboutPointScale();
  [(UILabel *)headerTitleLabel setFrame:?];
}

- (void)_updateCustomHeaderViewLayoutIfNecessary
{
  if (self->_customHeaderView)
  {
    view = [(CCUICustomContentModuleBackgroundViewController *)self view];
    [view bounds];
    [(CCUICustomContentModuleBackgroundViewController *)self _headerCenterForBounds:?];

    if (CGFloatIsValid())
    {
      if (CGFloatIsValid())
      {
        customHeaderView = self->_customHeaderView;
        [(UIView *)customHeaderView bounds];
        UIRectCenteredAboutPointScale();

        [(UIView *)customHeaderView setFrame:?];
      }
    }
  }
}

- (CGPoint)_headerCenterForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (!CGRectIsEmpty(bounds))
  {
    view = [(CCUICustomContentModuleBackgroundViewController *)self view];
    if (CCUILayoutShouldBePortrait(view))
    {
    }

    else
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        if ([(CCUICustomContentModuleBackgroundViewController *)self positionHeaderToRightInLandscapeRight])
        {
          v15 = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation] == 3;
        }

        else
        {
          v15 = 0;
        }

        view2 = [(CCUICustomContentModuleBackgroundViewController *)self view];
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        MidY = CGRectGetMidY(v24);
        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        [view2 _inscribedRectInBoundingPathByInsettingRect:10 onEdges:1 withOptions:{0.0, MidY, CGRectGetWidth(v25), 1.0}];
        CGRectGetMinX(v26);

        v27.origin.x = x;
        v27.origin.y = y;
        v27.size.width = width;
        v27.size.height = height;
        CGRectGetWidth(v27);
        [(CCUICustomContentModuleBackgroundViewController *)self expandedContentModuleWidth];
        if (v15)
        {
          v28.origin.x = x;
          v28.origin.y = y;
          v28.size.width = width;
          v28.size.height = height;
          CGRectGetWidth(v28);
        }

        v29.origin.x = x;
        v29.origin.y = y;
        v29.size.width = width;
        v29.size.height = height;
        CGRectGetMidY(v29);
        goto LABEL_13;
      }
    }

    view3 = [(CCUICustomContentModuleBackgroundViewController *)self view];
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    MidX = CGRectGetMidX(v19);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    [view3 _inscribedRectInBoundingPathByInsettingRect:5 onEdges:1 withOptions:{MidX, 0.0, 1.0, CGRectGetHeight(v20)}];
    CGRectGetMinY(v21);

    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    CGRectGetHeight(v22);
    [(CCUICustomContentModuleBackgroundViewController *)self expandedContentModuleHeight];
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    CGRectGetMidX(v23);
LABEL_13:
    UIPointRoundToViewScale();
    goto LABEL_14;
  }

  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
LABEL_14:
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)_updateHeaderGlyphVisualStylingWithProvider:(id)provider
{
  providerCopy = provider;
  image = [(UIImageView *)self->_headerImageView image];
  renderingMode = [image renderingMode];

  if (renderingMode == 2)
  {
    [providerCopy automaticallyUpdateView:self->_headerImageView withStyle:0];
  }

  else
  {
    [(UIImageView *)self->_headerImageView mt_removeAllVisualStyling];
  }
}

- (void)_updateTitleFont
{
  headerTitleLabel = self->_headerTitleLabel;
  _titleFont = [(CCUICustomContentModuleBackgroundViewController *)self _titleFont];
  [(UILabel *)headerTitleLabel setFont:_titleFont];

  [(UILabel *)self->_headerTitleLabel sizeToFit];
  viewIfLoaded = [(CCUICustomContentModuleBackgroundViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (id)_titleFont
{
  if ([(CCUICustomContentModuleBackgroundViewController *)self _shouldLimitContentSizeCategory])
  {
    preferredContentSizeCategory = *MEMORY[0x1E69DDC38];
  }

  else
  {
    traitCollection = [(CCUICustomContentModuleBackgroundViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  }

  headerImageView = self->_headerImageView;
  v6 = headerImageView == 0;
  if (headerImageView)
  {
    v7 = MEMORY[0x1E69DDD40];
  }

  else
  {
    v7 = MEMORY[0x1E69DDDB8];
  }

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 8;
  }

  v9 = [MEMORY[0x1E69DB878] bsui_preferredFontForTextStyle:*v7 hiFontStyle:v8 contentSizeCategory:preferredContentSizeCategory];

  return v9;
}

- (BOOL)_shouldLimitContentSizeCategory
{
  traitCollection = [(CCUICustomContentModuleBackgroundViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v4 = ([*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 3) <= 1 && UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC38]) == NSOrderedDescending;
  return v4;
}

- (void)_updateFooterButtonsLayoutIfNecessary
{
  v97 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_footerButtons count])
  {
    view = [(CCUICustomContentModuleBackgroundViewController *)self view];
    [view bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(NSArray *)self->_footerButtons count];
    firstObject = [(NSArray *)self->_footerButtons firstObject];
    button = [firstObject button];
    [button sizeThatFits:{v9, v11}];
    v16 = v15;

    view2 = [(CCUICustomContentModuleBackgroundViewController *)self view];
    if (CCUILayoutShouldBePortrait(view2))
    {
    }

    else
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        view3 = [(CCUICustomContentModuleBackgroundViewController *)self view];
        v100.origin.x = v5;
        v100.origin.y = v7;
        v100.size.width = v9;
        v100.size.height = v11;
        MidY = CGRectGetMidY(v100);
        v101.origin.x = v5;
        v101.origin.y = v7;
        v101.size.width = v9;
        v101.size.height = v11;
        v39 = 0.0;
        [view3 _inscribedRectInBoundingPathByInsettingRect:10 onEdges:1 withOptions:{0.0, MidY, CGRectGetWidth(v101), 1.0}];
        MaxX = CGRectGetMaxX(v102);

        v103.origin.x = v5;
        v103.origin.y = v7;
        v103.size.width = v9;
        v103.size.height = v11;
        v41 = CGRectGetMaxX(v103) + -16.0;
        if (MaxX >= v41)
        {
          MaxX = v41;
        }

        if (CGFloatIsValid())
        {
          v104.origin.x = v5;
          v104.origin.y = v7;
          v104.size.width = v9;
          v104.size.height = v11;
          v39 = CGRectGetMaxX(v104) - MaxX;
        }

        v105.origin.x = v5;
        v105.origin.y = v7;
        v105.size.width = v9;
        v105.size.height = v11;
        Width = CGRectGetWidth(v105);
        [(CCUICustomContentModuleBackgroundViewController *)self expandedContentModuleWidth];
        v44 = (Width - v43) * 0.5 - v39 + -16.0;
        rect = v7;
        if (-[CCUICustomContentModuleBackgroundViewController positionHeaderToRightInLandscapeRight](self, "positionHeaderToRightInLandscapeRight") && [*MEMORY[0x1E69DDA98] activeInterfaceOrientation] == 3)
        {
          v45 = v39 + v44 * 0.5;
        }

        else
        {
          v106.origin.x = v5;
          v106.origin.y = v7;
          v106.size.width = v9;
          v106.size.height = v11;
          v45 = CGRectGetWidth(v106) + v44 * -0.5 - v39;
        }

        v75 = v45;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v46 = self->_footerButtons;
        v47 = [(NSArray *)v46 countByEnumeratingWithState:&v81 objects:v94 count:16];
        v48 = 0.0;
        if (v47)
        {
          v49 = v47;
          v50 = *v82;
          do
          {
            for (i = 0; i != v49; ++i)
            {
              if (*v82 != v50)
              {
                objc_enumerationMutation(v46);
              }

              v52 = *(*(&v81 + 1) + 8 * i);
              view4 = [(CCUICustomContentModuleBackgroundViewController *)self view];
              traitCollection = [view4 traitCollection];
              [traitCollection displayScale];

              view5 = [v52 view];
              [view5 sizeThatFits:{v44, 0.0}];
              v57 = v56;

              view6 = [v52 view];
              UIRectIntegralWithScale();
              [view6 setBounds:?];

              v48 = v48 + v57;
            }

            v49 = [(NSArray *)v46 countByEnumeratingWithState:&v81 objects:v94 count:16];
          }

          while (v49);
        }

        [(CCUICustomContentModuleBackgroundViewController *)self expandedContentModuleHeight];
        v107.origin.x = v5;
        v107.origin.y = rect;
        v107.size.width = v9;
        v107.size.height = v11;
        CGRectGetHeight(v107);
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v30 = self->_footerButtons;
        v59 = [(NSArray *)v30 countByEnumeratingWithState:&v77 objects:v93 count:16];
        if (v59)
        {
          v60 = v59;
          v61 = *v78;
          do
          {
            for (j = 0; j != v60; ++j)
            {
              if (*v78 != v61)
              {
                objc_enumerationMutation(v30);
              }

              v63 = *(*(&v77 + 1) + 8 * j);
              view7 = [v63 view];
              [view7 bounds];
              v66 = v65;
              v68 = v67;
              v70 = v69;
              v72 = v71;

              view8 = [v63 view];
              v108.origin.x = v66;
              v108.origin.y = v68;
              v108.size.width = v70;
              v108.size.height = v72;
              CGRectGetHeight(v108);
              UIPointIntegral();
              [view8 setCenter:?];

              view9 = [v63 view];
              [view9 frame];
              CGRectGetMaxY(v109);
            }

            v60 = [(NSArray *)v30 countByEnumeratingWithState:&v77 objects:v93 count:16];
          }

          while (v60);
        }

        goto LABEL_44;
      }
    }

    v98.origin.x = v5;
    v98.origin.y = v7;
    v98.size.width = v9;
    v98.size.height = v11;
    CGRectGetHeight(v98);
    [(CCUICustomContentModuleBackgroundViewController *)self expandedContentModuleHeight];
    v99.origin.x = v5;
    v99.origin.y = v7;
    v99.size.width = v9;
    v99.size.height = v11;
    v20 = v16 + (CGRectGetWidth(v99) - v12 * v16) / (v12 + 1);
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v21 = self->_footerButtons;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v89 objects:v96 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v90;
      v25 = 0.0;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v90 != v24)
          {
            objc_enumerationMutation(v21);
          }

          view10 = [*(*(&v89 + 1) + 8 * k) view];
          [view10 sizeThatFits:{v20 + -12.0, 0.0}];
          v29 = v28;

          if (v25 < v29)
          {
            v25 = v29;
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v89 objects:v96 count:16];
      }

      while (v23);
    }

    [(CCUICustomContentModuleBackgroundViewController *)self expandedContentModuleHeight];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v30 = self->_footerButtons;
    v31 = [(NSArray *)v30 countByEnumeratingWithState:&v85 objects:v95 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = 0;
      v34 = *v86;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v86 != v34)
          {
            objc_enumerationMutation(v30);
          }

          ++v33;
          view11 = [*(*(&v85 + 1) + 8 * m) view];
          UIRectCenteredAboutPoint();
          UIRectIntegralWithScale();
          [view11 setFrame:?];
        }

        v32 = [(NSArray *)v30 countByEnumeratingWithState:&v85 objects:v95 count:16];
      }

      while (v32);
    }

LABEL_44:
  }
}

- (void)_updateCustomFooterViewLayoutIfNecessary
{
  if (self->_customFooterView)
  {
    view = [(CCUICustomContentModuleBackgroundViewController *)self view];
    [view bounds];
    [(CCUICustomContentModuleBackgroundViewController *)self _footerCenterForBounds:?];
    v5 = v4;
    v7 = v6;

    if (CGFloatIsValid())
    {
      if (CGFloatIsValid())
      {
        customFooterView = self->_customFooterView;

        [(UIView *)customFooterView setCenter:v5, v7];
      }
    }
  }
}

- (CGPoint)_footerCenterForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  view = [(CCUICustomContentModuleBackgroundViewController *)self view];
  if (CCUILayoutShouldBePortrait(view))
  {

LABEL_4:
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v11 = CGRectGetHeight(v28);
    [(CCUICustomContentModuleBackgroundViewController *)self expandedContentModuleHeight];
    v13 = (v11 - v12) * 0.5;
    [(CCUICustomContentModuleBackgroundViewController *)self expandedContentModuleHeight];
    v15 = v14 + v13 + v13 * 0.5;
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v16 = CGRectGetWidth(v29) * 0.5;
    goto LABEL_14;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    goto LABEL_4;
  }

  view2 = [(CCUICustomContentModuleBackgroundViewController *)self view];
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MidY = CGRectGetMidY(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v19 = 0.0;
  [view2 _inscribedRectInBoundingPathByInsettingRect:10 onEdges:1 withOptions:{0.0, MidY, CGRectGetWidth(v31), 1.0}];
  MaxX = CGRectGetMaxX(v32);

  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v21 = CGRectGetMaxX(v33) + -16.0;
  if (MaxX >= v21)
  {
    MaxX = v21;
  }

  if (CGFloatIsValid())
  {
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    v19 = CGRectGetMaxX(v34) - MaxX;
  }

  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v22 = CGRectGetWidth(v35);
  [(CCUICustomContentModuleBackgroundViewController *)self expandedContentModuleWidth];
  v24 = (v22 - v23) * 0.5 - v19 + -16.0;
  if (-[CCUICustomContentModuleBackgroundViewController positionHeaderToRightInLandscapeRight](self, "positionHeaderToRightInLandscapeRight") && [*MEMORY[0x1E69DDA98] activeInterfaceOrientation] == 3)
  {
    v16 = v19 + v24 * 0.5;
  }

  else
  {
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v16 = CGRectGetWidth(v36) + v24 * -0.5 - v19;
  }

  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v15 = CGRectGetHeight(v37) * 0.5;
LABEL_14:
  v25 = v16;
  v26 = v15;
  result.y = v26;
  result.x = v25;
  return result;
}

- (void)_visualStylingProvider:(id)provider didChangeForCategory:(int64_t)category outgoingVisualStylingProvider:(id)stylingProvider
{
  v26 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  stylingProviderCopy = stylingProvider;
  v9 = stylingProviderCopy;
  if (category == 1)
  {
    [stylingProviderCopy stopAutomaticallyUpdatingView:self->_headerImageView];
    [(CCUICustomContentModuleBackgroundViewController *)self _updateHeaderGlyphVisualStylingWithProvider:providerCopy];
  }

  v19 = v9;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = self->_footerButtons;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        requiredVisualStyleCategories = [v15 requiredVisualStyleCategories];
        v17 = [MEMORY[0x1E696AD98] numberWithInteger:category];
        v18 = [requiredVisualStyleCategories containsObject:v17];

        if (v18)
        {
          [v15 setVisualStylingProvider:providerCopy forCategory:category];
        }
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }
}

@end