@interface CCUIMenuModuleViewController
+ (id)checkmarkImageForPreferredContentSizeCategory:(id)a3;
- (BOOL)_forceLimitContentSizeCategoryFromContentHeightIfNecessary:(double)a3 expanded:(BOOL)a4;
- (BOOL)_setForceLimitContentSizeCategory:(BOOL)a3;
- (BOOL)_shouldHideGlyphForLimitedContentSizeCategory;
- (BOOL)_shouldLimitContentSizeCategory;
- (BOOL)_shouldShowFooterChin;
- (BOOL)_toggleSelectionForMenuItem:(id)a3;
- (BOOL)hasGlyph;
- (CCUIContentModuleContext)contentModuleContext;
- (CCUIMenuItemsUpdating)menuUpdatingDelegate;
- (CCUIMenuModuleViewController)initWithContentModuleContext:(id)a3;
- (CCUIMenuModuleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIMenu)contextMenu;
- (UIView)contentView;
- (double)_aggregateModuleHeight;
- (double)_contentScaleForSize:(CGSize)a3;
- (double)_defaultMenuItemHeight;
- (double)_desiredExpandedHeight;
- (double)_footerHeight;
- (double)_maximumHeight;
- (double)_menuItemsHeightForWidth:(double)a3;
- (double)_separatorHeight;
- (double)headerHeight;
- (double)headerHeightForWidth:(double)a3;
- (double)preferredExpandedContentHeight;
- (double)preferredExpandedContentHeightWithWidth:(double)a3;
- (double)scrollViewContentHeightForWidth:(double)a3;
- (id)_busyIndicatorView;
- (id)_leadingViewForMenuItem:(id)a3;
- (id)_menuItemFromPlaceholderIndex:(unint64_t)a3;
- (id)_preferredFontForTextStyle:(id)a3 hiFontStyle:(int64_t)a4;
- (id)_subtitleFont;
- (id)_titleFont;
- (id)_trailingViewForMenuItem:(id)a3;
- (id)contextMenuItems;
- (id)contextMenuPreviewForControlTemplateView:(id)a3;
- (id)leadingImageForMenuItem:(id)a3;
- (id)leadingViewForMenuItem:(id)a3;
- (id)menuItemForIdentifier:(id)a3;
- (id)trailingImageForMenuItem:(id)a3;
- (id)trailingViewForMenuItem:(id)a3;
- (void)_contentSizeCategoryDidChange;
- (void)_fadeViewsForExpandedState:(BOOL)a3;
- (void)_handleActionTapped:(id)a3;
- (void)_handlePressGesture:(id)a3;
- (void)_layoutBusyIndicatorForSize:(CGSize)a3;
- (void)_layoutContentViewForSize:(CGSize)a3;
- (void)_layoutFooterButtonForSize:(CGSize)a3;
- (void)_layoutFooterSeparatorForSize:(CGSize)a3;
- (void)_layoutGlyphViewForSize:(CGSize)a3;
- (void)_layoutHeaderSeparatorForSize:(CGSize)a3;
- (void)_layoutSubtitleLabelForSize:(CGSize)a3;
- (void)_layoutTitleLabelForSize:(CGSize)a3;
- (void)_layoutTransformViewForSize:(CGSize)a3;
- (void)_layoutViewSubviews;
- (void)_setMenuItems:(id)a3;
- (void)_setRootViewClipsToBounds:(BOOL)a3;
- (void)_setView:(id)a3 clipsToBounds:(BOOL)a4;
- (void)_setupSubtitleLabel;
- (void)_setupTitleLabel;
- (void)_updateLeadingAndTrailingViews;
- (void)_updateMenuItemsSeparatorVisiblity;
- (void)_updatePreferredContentSize;
- (void)_updateSubtitleFont;
- (void)_updateTitleFont;
- (void)addActionWithTitle:(id)a3 subtitle:(id)a4 glyph:(id)a5 handler:(id)a6;
- (void)contentModuleWillTransitionToExpandedContentMode:(BOOL)a3;
- (void)didTransitionToExpandedContentMode:(BOOL)a3;
- (void)removeAllActions;
- (void)removeFooterButton;
- (void)setAlwaysExpanded:(BOOL)a3;
- (void)setBusy:(BOOL)a3;
- (void)setCustomContentView:(id)a3;
- (void)setFooterButtonTitle:(id)a3 handler:(id)a4;
- (void)setGlyphImage:(id)a3;
- (void)setGlyphPackageDescription:(id)a3;
- (void)setMenuItems:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUseIndentedLayout:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToExpandedContentMode:(BOOL)a3;
@end

@implementation CCUIMenuModuleViewController

+ (id)checkmarkImageForPreferredContentSizeCategory:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = checkmarkImageForPreferredContentSizeCategory__checkmarkImage;
  if (checkmarkImageForPreferredContentSizeCategory__checkmarkImage)
  {
    v7 = checkmarkImageForPreferredContentSizeCategory__checkmarkImageContentSizeCategory == v4;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    objc_storeStrong(&checkmarkImageForPreferredContentSizeCategory__checkmarkImageContentSizeCategory, a3);
    v8 = *MEMORY[0x1E69DDC30];
    if (UIContentSizeCategoryCompareToCategory(v5, *MEMORY[0x1E69DDC30]) == NSOrderedDescending)
    {
      v9 = v8;

      v5 = v9;
    }

    v10 = [MEMORY[0x1E69DB878] bsui_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] hiFontStyle:4 contentSizeCategory:v5];
    v11 = MEMORY[0x1E69DCAD8];
    [v10 pointSize];
    v12 = [v11 configurationWithPointSize:6 weight:2 scale:?];
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark" withConfiguration:v12];
    v14 = checkmarkImageForPreferredContentSizeCategory__checkmarkImage;
    checkmarkImageForPreferredContentSizeCategory__checkmarkImage = v13;

    v15 = checkmarkImageForPreferredContentSizeCategory__checkmarkImage;
    v16 = [MEMORY[0x1E69DC888] whiteColor];
    v17 = [v15 _flatImageWithColor:v16];
    v18 = checkmarkImageForPreferredContentSizeCategory__checkmarkImage;
    checkmarkImageForPreferredContentSizeCategory__checkmarkImage = v17;

    v6 = checkmarkImageForPreferredContentSizeCategory__checkmarkImage;
  }

  v19 = v6;

  return v6;
}

- (CCUIMenuModuleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = CCUIMenuModuleViewController;
  v4 = [(CCUIButtonModuleViewController *)&v10 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    menuItems = v4->_menuItems;
    v4->_menuItems = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    identiferToActivityIndicatorView = v4->_identiferToActivityIndicatorView;
    v4->_identiferToActivityIndicatorView = v7;
  }

  return v4;
}

- (CCUIMenuModuleViewController)initWithContentModuleContext:(id)a3
{
  v4 = a3;
  v5 = [(CCUIMenuModuleViewController *)self initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_contentModuleContext, v4);
  }

  return v6;
}

- (void)setAlwaysExpanded:(BOOL)a3
{
  self->_alwaysExpanded = a3;
  if (a3)
  {
    [(CCUIButtonModuleViewController *)self setExpanded:1];
  }
}

- (id)_busyIndicatorView
{
  busyIndicatorView = self->_busyIndicatorView;
  if (!busyIndicatorView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:1];
    v5 = self->_busyIndicatorView;
    self->_busyIndicatorView = v4;

    [(UIView *)self->_transformView addSubview:self->_busyIndicatorView];
    [(UIActivityIndicatorView *)self->_busyIndicatorView setHidesWhenStopped:0];
    [(UIActivityIndicatorView *)self->_busyIndicatorView setAlpha:0.0];
    busyIndicatorView = self->_busyIndicatorView;
  }

  return busyIndicatorView;
}

- (void)setBusy:(BOOL)a3
{
  if (self->_busy != a3)
  {
    v20[5] = v6;
    v20[6] = v5;
    v20[11] = v3;
    v20[12] = v4;
    v7 = a3;
    self->_busy = a3;
    v9 = [(CCUIMenuModuleViewController *)self _busyIndicatorView];
    v10 = v9;
    if (v7)
    {
      [v9 startAnimating];
    }

    else
    {
      [v9 stopAnimating];
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __40__CCUIMenuModuleViewController_setBusy___block_invoke;
    v20[3] = &unk_1E83EA478;
    v20[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v20];
    v11 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __40__CCUIMenuModuleViewController_setBusy___block_invoke_2;
    v17[3] = &unk_1E83EA530;
    v18 = v10;
    v19 = v7;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __40__CCUIMenuModuleViewController_setBusy___block_invoke_3;
    v13[3] = &unk_1E83EA558;
    v16 = v7;
    v14 = v18;
    v15 = self;
    v12 = v18;
    [v11 animateWithDuration:v17 animations:v13 completion:0.3];
  }
}

void __40__CCUIMenuModuleViewController_setBusy___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewIfLoaded];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) viewIfLoaded];
  [v3 layoutIfNeeded];
}

uint64_t __40__CCUIMenuModuleViewController_setBusy___block_invoke_2(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

void __40__CCUIMenuModuleViewController_setBusy___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      [*(a1 + 32) removeFromSuperview];
      v3 = *(a1 + 40);
      v4 = *(v3 + 1136);
      if (*(a1 + 32) == v4)
      {
        *(v3 + 1136) = 0;
      }
    }
  }
}

- (void)addActionWithTitle:(id)a3 subtitle:(id)a4 glyph:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (a5)
  {
    v13 = MEMORY[0x1E69DCAE0];
    v14 = a5;
    a5 = [[v13 alloc] initWithImage:v14];
  }

  [a5 setContentMode:4];
  v15 = [CCUIMenuModuleItem alloc];
  v16 = [MEMORY[0x1E696AFB0] UUID];
  v17 = [v16 UUIDString];
  v18 = [(CCUIMenuModuleItem *)v15 initWithTitle:v10 identifier:v17 handler:v12];

  [(CCUIMenuModuleItem *)v18 setSubtitle:v11];
  [(NSMutableArray *)self->_menuItems addObject:v18];
  v19 = [[CCUIMenuModuleItemView alloc] initWithMenuItem:v18];
  [(CCUIMenuModuleItemView *)v19 setLeadingView:a5];
  [(CCUIMenuModuleViewController *)self preferredExpandedContentWidth];
  [(CCUIMenuModuleItemView *)v19 setPreferredMaxLayoutWidth:?];
  [(CCUIMenuModuleItemView *)v19 setIndentation:self->_indentation];
  [(CCUIMenuModuleItemView *)v19 setUseTrailingCheckmarkLayout:self->_useTrailingCheckmarkLayout];
  [(CCUIMenuModuleItemView *)v19 setUseTrailingInset:self->_useTrailingInset];
  v20 = MEMORY[0x1E69DD250];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __74__CCUIMenuModuleViewController_addActionWithTitle_subtitle_glyph_handler___block_invoke;
  v22[3] = &unk_1E83EA450;
  v22[4] = self;
  v23 = v19;
  v21 = v19;
  [v20 performWithoutAnimation:v22];
}

void __74__CCUIMenuModuleViewController_addActionWithTitle_subtitle_glyph_handler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1096) addArrangedSubview:*(a1 + 40)];
  [*(a1 + 32) _updateMenuItemsSeparatorVisiblity];
  v2 = [*(a1 + 32) viewIfLoaded];
  [v2 setNeedsLayout];
}

- (void)setMenuItems:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([v4 count] >= self->_minimumMenuItems)
  {
    v7 = v4;
  }

  else
  {
    v8 = [v4 mutableCopy];
    if ([v8 count] < self->_minimumMenuItems)
    {
      v5 = 0;
      do
      {
        v6 = [(CCUIMenuModuleViewController *)self _menuItemFromPlaceholderIndex:v5];
        [v8 addObject:v6];

        ++v5;
      }

      while ([v8 count] < self->_minimumMenuItems);
    }

    v7 = v8;
  }

  v9 = v7;
  [(CCUIMenuModuleViewController *)self _setMenuItems:v7];
}

- (id)_menuItemFromPlaceholderIndex:(unint64_t)a3
{
  v4 = [CCUIMenuModuleItem alloc];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLACEHOLDER #%ld", a3 + 1];
  v6 = [(CCUIMenuModuleItem *)v4 initWithTitle:@" " identifier:v5 handler:0];

  [(CCUIMenuModuleItem *)v6 setPlaceholder:1];

  return v6;
}

- (void)_setMenuItems:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CCUILogUserInterface;
  if (os_log_type_enabled(CCUILogUserInterface, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 134218498;
    v15 = [v4 count];
    v16 = 2114;
    v17 = objc_opt_class();
    v18 = 2112;
    v19 = v4;
    v7 = v17;
    _os_log_impl(&dword_1D168A000, v6, OS_LOG_TYPE_DEFAULT, "Setting %ld menu items for %{public}@: %@", buf, 0x20u);
  }

  v8 = [v4 mutableCopy];
  menuItems = self->_menuItems;
  self->_menuItems = v8;

  v10 = MEMORY[0x1E69DD250];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__CCUIMenuModuleViewController__setMenuItems___block_invoke;
  v12[3] = &unk_1E83EA450;
  v12[4] = self;
  v13 = v4;
  v11 = v4;
  [v10 performWithoutAnimation:v12];
}

void __46__CCUIMenuModuleViewController__setMenuItems___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 1096) arrangedSubviews];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = MEMORY[0x1E696ACD8];
        v9 = [v7 constraints];
        [v8 deactivateConstraints:v9];

        [*(*(a1 + 32) + 1096) removeArrangedSubview:v7];
        [v7 removeFromSuperview];
      }

      v4 = [v2 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 1096) layoutIfNeeded];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 40);
  v10 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * j);
        v15 = [[CCUIMenuModuleItemView alloc] initWithMenuItem:v14];
        [(CCUIMenuModuleItemView *)v15 setIndentation:*(*(a1 + 32) + 1256)];
        [(CCUIMenuModuleItemView *)v15 setUseTrailingCheckmarkLayout:*(*(a1 + 32) + 1212)];
        [(CCUIMenuModuleItemView *)v15 setUseTrailingInset:*(*(a1 + 32) + 1213)];
        v16 = [*(a1 + 32) _leadingViewForMenuItem:v14];
        [(CCUIMenuModuleItemView *)v15 setLeadingView:v16];

        v17 = [*(a1 + 32) _trailingViewForMenuItem:v14];
        [(CCUIMenuModuleItemView *)v15 setTrailingView:v17];

        [*(a1 + 32) preferredExpandedContentWidth];
        [(CCUIMenuModuleItemView *)v15 setPreferredMaxLayoutWidth:?];
        [*(*(a1 + 32) + 1096) addArrangedSubview:v15];
      }

      v11 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v11);
  }

  [*(a1 + 32) _updateMenuItemsSeparatorVisiblity];
  v18 = [*(a1 + 32) viewIfLoaded];
  [v18 layoutIfNeeded];

  [*(a1 + 32) _updatePreferredContentSize];
}

- (id)menuItemForIdentifier:(id)a3
{
  v4 = a3;
  menuItems = self->_menuItems;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__CCUIMenuModuleViewController_menuItemForIdentifier___block_invoke;
  v9[3] = &unk_1E83EA580;
  v10 = v4;
  v6 = v4;
  v7 = [(NSMutableArray *)menuItems bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __54__CCUIMenuModuleViewController_menuItemForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)setUseIndentedLayout:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [(CCUIMenuModuleViewController *)self setIndentation:v3];
}

- (id)leadingImageForMenuItem:(id)a3
{
  v4 = a3;
  if (-[CCUIMenuModuleViewController useTrailingCheckmarkLayout](self, "useTrailingCheckmarkLayout") || ![v4 isSelected])
  {
    v8 = 0;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = [(CCUIMenuModuleViewController *)self traitCollection];
    v7 = [v6 preferredContentSizeCategory];
    v8 = [v5 checkmarkImageForPreferredContentSizeCategory:v7];
  }

  return v8;
}

- (id)leadingViewForMenuItem:(id)a3
{
  v3 = [(CCUIMenuModuleViewController *)self leadingImageForMenuItem:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v3];
    [v4 setContentMode:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_leadingViewForMenuItem:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  if (([v4 isPlaceholder] & 1) == 0)
  {
    v5 = MEMORY[0x1E69DD250];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__CCUIMenuModuleViewController__leadingViewForMenuItem___block_invoke;
    v8[3] = &unk_1E83EA5A8;
    v10 = &v11;
    v8[4] = self;
    v9 = v4;
    [v5 performWithoutAnimation:v8];
  }

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __56__CCUIMenuModuleViewController__leadingViewForMenuItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) leadingViewForMenuItem:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)trailingImageForMenuItem:(id)a3
{
  v4 = a3;
  if (-[CCUIMenuModuleViewController useTrailingCheckmarkLayout](self, "useTrailingCheckmarkLayout") && [v4 isSelected])
  {
    v5 = objc_opt_class();
    v6 = [(CCUIMenuModuleViewController *)self traitCollection];
    v7 = [v6 preferredContentSizeCategory];
    v8 = [v5 checkmarkImageForPreferredContentSizeCategory:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)trailingViewForMenuItem:(id)a3
{
  v4 = a3;
  if ([v4 isBusy])
  {
    identiferToActivityIndicatorView = self->_identiferToActivityIndicatorView;
    v6 = [v4 identifier];
    v7 = [(NSMutableDictionary *)identiferToActivityIndicatorView objectForKey:v6];

    if (!v7)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:1];
      [v7 startAnimating];
      v8 = self->_identiferToActivityIndicatorView;
      v9 = [v4 identifier];
      [(NSMutableDictionary *)v8 setObject:v7 forKey:v9];
    }

    v10 = self->_identiferToActivityIndicatorView;
    v11 = [v4 identifier];
    v12 = [(NSMutableDictionary *)v10 objectForKey:v11];
  }

  else
  {
    v7 = [(CCUIMenuModuleViewController *)self trailingImageForMenuItem:v4];
    if (v7)
    {
      v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v7];
      [v12 setContentMode:4];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)_trailingViewForMenuItem:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  if (([v4 isPlaceholder] & 1) == 0)
  {
    v5 = MEMORY[0x1E69DD250];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__CCUIMenuModuleViewController__trailingViewForMenuItem___block_invoke;
    v8[3] = &unk_1E83EA5A8;
    v10 = &v11;
    v8[4] = self;
    v9 = v4;
    [v5 performWithoutAnimation:v8];
  }

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __57__CCUIMenuModuleViewController__trailingViewForMenuItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) trailingViewForMenuItem:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)removeAllActions
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__CCUIMenuModuleViewController_removeAllActions__block_invoke;
  v2[3] = &unk_1E83EA478;
  v2[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
}

uint64_t __48__CCUIMenuModuleViewController_removeAllActions__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(*(a1 + 32) + 1096) arrangedSubviews];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6) removeFromSuperview];
        v7 = [*(a1 + 32) viewIfLoaded];
        [v7 setNeedsLayout];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 1104) removeAllObjects];
}

- (void)_updatePreferredContentSize
{
  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    [(CCUIMenuModuleViewController *)self preferredExpandedContentWidth];
    v4 = v3;
    [(CCUIMenuModuleViewController *)self preferredExpandedContentHeightWithWidth:?];
    v6 = v5;
    v7 = [(CCUIMenuModuleViewController *)self viewIfLoaded];
    [v7 setNeedsLayout];

    [(CCUIMenuModuleViewController *)self setPreferredContentSize:v4, v6];
  }
}

- (void)setFooterButtonTitle:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = [CCUIMenuModuleItem alloc];
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];
  v11 = [(CCUIMenuModuleItem *)v8 initWithTitle:v6 identifier:v10 handler:v7];

  footerButtonView = self->_footerButtonView;
  if (!footerButtonView)
  {
    v18 = MEMORY[0x1E69DD250];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __61__CCUIMenuModuleViewController_setFooterButtonTitle_handler___block_invoke;
    v26[3] = &unk_1E83EA450;
    v26[4] = self;
    v17 = &v27;
    v27 = v11;
    [v18 performWithoutAnimation:v26];
    v19 = MEMORY[0x1E69DD250];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __61__CCUIMenuModuleViewController_setFooterButtonTitle_handler___block_invoke_2;
    v25[3] = &unk_1E83EA478;
    v25[4] = self;
    v20 = v25;
LABEL_6:
    [v19 animateWithDuration:v20 animations:0.3];
    goto LABEL_7;
  }

  v13 = [(CCUIMenuModuleItemView *)footerButtonView menuItem];
  v14 = [v13 title];
  v15 = BSEqualStrings();

  v16 = MEMORY[0x1E69DD250];
  if (!v15)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __61__CCUIMenuModuleViewController_setFooterButtonTitle_handler___block_invoke_4;
    v21[3] = &unk_1E83EA450;
    v21[4] = self;
    v17 = &v22;
    v22 = v11;
    v20 = v21;
    v19 = v16;
    goto LABEL_6;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __61__CCUIMenuModuleViewController_setFooterButtonTitle_handler___block_invoke_3;
  v23[3] = &unk_1E83EA450;
  v23[4] = self;
  v17 = &v24;
  v24 = v11;
  [v16 performWithoutAnimation:v23];
LABEL_7:

  [(CCUIMenuModuleViewController *)self _updatePreferredContentSize];
}

void __61__CCUIMenuModuleViewController_setFooterButtonTitle_handler___block_invoke(uint64_t a1)
{
  v2 = [[CCUIMenuModuleItemView alloc] initWithMenuItem:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1184);
  *(v3 + 1184) = v2;

  [*(*(a1 + 32) + 1184) setSeparatorVisible:0];
  v5 = *(a1 + 32);
  v6 = v5[148];
  [v5 preferredExpandedContentWidth];
  [v6 setPreferredMaxLayoutWidth:?];
  [*(*(a1 + 32) + 1056) addSubview:*(*(a1 + 32) + 1184)];
  v7 = *(a1 + 32);
  if (*(v7 + 1200))
  {
    v8 = [*(v7 + 1128) superview];
    v9 = *(*(a1 + 32) + 1224);

    v7 = *(a1 + 32);
    if (v8 != v9)
    {
      [*(v7 + 1224) insertSubview:*(v7 + 1128) belowSubview:*(v7 + 1120)];
      v7 = *(a1 + 32);
    }
  }

  v10 = [v7 viewIfLoaded];
  [v10 setNeedsLayout];

  v11 = [*(a1 + 32) viewIfLoaded];
  [v11 layoutIfNeeded];
}

void __61__CCUIMenuModuleViewController_setFooterButtonTitle_handler___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1192) = 1;
  v2 = [*(a1 + 32) viewIfLoaded];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) viewIfLoaded];
  [v3 layoutIfNeeded];
}

void __61__CCUIMenuModuleViewController_setFooterButtonTitle_handler___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 1184) setMenuItem:*(a1 + 40)];
  v2 = [*(a1 + 32) viewIfLoaded];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) viewIfLoaded];
  [v3 layoutIfNeeded];
}

- (void)removeFooterButton
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_footerButtonView)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __50__CCUIMenuModuleViewController_removeFooterButton__block_invoke;
    v4[3] = &unk_1E83EA478;
    v4[4] = self;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __50__CCUIMenuModuleViewController_removeFooterButton__block_invoke_2;
    v3[3] = &unk_1E83EA5D0;
    v3[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:v3 completion:0.3];
  }

  if (self->_customContentView)
  {
    if (!self->_customContentViewScrolls)
    {
      [(UIView *)self->_darkeningBackgroundView removeFromSuperview];
    }
  }
}

void __50__CCUIMenuModuleViewController_removeFooterButton__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1192) = 0;
  v2 = [*(a1 + 32) viewIfLoaded];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) viewIfLoaded];
  [v3 layoutIfNeeded];
}

uint64_t __50__CCUIMenuModuleViewController_removeFooterButton__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1184) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1184);
  *(v2 + 1184) = 0;

  v4 = *(a1 + 32);

  return [v4 _updatePreferredContentSize];
}

- (double)headerHeight
{
  v3 = [(CCUIMenuModuleViewController *)self view];
  [v3 bounds];
  Width = CGRectGetWidth(v8);

  [(CCUIMenuModuleViewController *)self preferredExpandedContentWidth];
  if (Width >= v5)
  {
    v5 = Width;
  }

  [(CCUIMenuModuleViewController *)self headerHeightForWidth:v5];
  return result;
}

- (double)headerHeightForWidth:(double)a3
{
  [(UILabel *)self->_titleLabel frame];
  if (CGRectIsEmpty(v21))
  {
    [(CCUIMenuModuleViewController *)self _setupTitleLabel];
  }

  titleLabel = self->_titleLabel;
  [(CCUIMenuModuleViewController *)self _titleWidthForContainerWidth:a3];
  [(UILabel *)titleLabel sizeThatFits:?];
  v7 = v6;
  [(UILabel *)self->_titleLabel _firstLineBaselineOffsetFromBoundsTop];
  v9 = v7 - v8;
  [(UILabel *)self->_titleLabel _baselineOffsetFromBottom];
  v11 = v9 - v10;
  if ([(CCUIMenuModuleViewController *)self hasGlyph])
  {
    [(CCUIMenuModuleViewController *)self _shouldHideGlyphForLimitedContentSizeCategory];
    v12 = [(UILabel *)self->_titleLabel font];
    [v12 _scaledValueForValue:18.0];
    UIRoundToScale();
    v14 = v13;
  }

  else
  {
    v12 = [(UILabel *)self->_titleLabel font];
    [v12 _scaledValueForValue:66.0];
    v14 = v11 + v15;
  }

  v16 = [(UILabel *)self->_subtitleLabel text];

  if (v16)
  {
    [(UILabel *)self->_subtitleLabel frame];
    if (CGRectIsEmpty(v22))
    {
      [(CCUIMenuModuleViewController *)self _setupSubtitleLabel];
    }

    v17 = [(UILabel *)self->_subtitleLabel font];
    [v17 _scaledValueForValue:5.0];
    v19 = v18;
    [(UILabel *)self->_subtitleLabel frame];
    v14 = v14 + v19 + CGRectGetHeight(v23);
  }

  return v14;
}

- (UIView)contentView
{
  [(CCUIMenuModuleViewController *)self loadViewIfNeeded];
  contentView = self->_contentView;

  return contentView;
}

- (BOOL)hasGlyph
{
  v5.receiver = self;
  v5.super_class = CCUIMenuModuleViewController;
  v3 = [(CCUIButtonModuleViewController *)&v5 hasGlyph];
  if (v3)
  {
    LOBYTE(v3) = ![(CCUIMenuModuleViewController *)self hideGlyphInHeader];
  }

  return v3;
}

- (void)setCustomContentView:(id)a3
{
  v5 = a3;
  customContentView = self->_customContentView;
  if (customContentView != v5)
  {
    v16 = v5;
    if (customContentView)
    {
      [(UIView *)customContentView removeFromSuperview];
      v7 = self->_customContentView;
      self->_customContentView = 0;

      v5 = v16;
      self->_customContentViewScrolls = 0;
    }

    if (v5)
    {
      [(UIStackView *)self->_menuItemsContainer removeFromSuperview];
      [(UIScrollView *)self->_contentScrollView addSubview:v16];
      objc_storeStrong(&self->_customContentView, a3);
      [(CCUIMenuModuleViewController *)self preferredExpandedContentWidth];
      [(CCUIMenuModuleViewController *)self scrollViewContentHeightForWidth:?];
      v9 = v8;
      [(CCUIMenuModuleViewController *)self preferredExpandedContentHeight];
      v11 = v10;
      [(CCUIMenuModuleViewController *)self headerHeight];
      v13 = v11 - v12;
      self->_customContentViewScrolls = v9 > v13;
      if (v9 > v13 || self->_shouldShowFooterButton)
      {
        v14 = [(UIView *)self->_darkeningBackgroundView superview];
        contentView = self->_contentView;

        v5 = v16;
        if (v14 == contentView)
        {
          goto LABEL_12;
        }

        customContentView = [(UIView *)self->_contentView insertSubview:self->_darkeningBackgroundView belowSubview:self->_contentScrollView];
      }

      else
      {
        customContentView = [(UIView *)self->_darkeningBackgroundView removeFromSuperview];
      }
    }

    else
    {
      [(UIScrollView *)self->_contentScrollView addSubview:self->_menuItemsContainer];
      customContentView = [(UIView *)self->_contentView insertSubview:self->_darkeningBackgroundView belowSubview:self->_contentScrollView];
      self->_customContentViewScrolls = 0;
    }

    v5 = v16;
  }

LABEL_12:

  MEMORY[0x1EEE66BB8](customContentView, v5);
}

- (void)viewDidLoad
{
  v55[1] = *MEMORY[0x1E69E9840];
  v54.receiver = self;
  v54.super_class = CCUIMenuModuleViewController;
  [(CCUIButtonModuleViewController *)&v54 viewDidLoad];
  v3 = [(CCUIMenuModuleViewController *)self view];
  v4 = [(CCUIButtonModuleViewController *)self _templateView];
  if ([(CCUIMenuModuleViewController *)self prefersContextMenuDisplayStyle])
  {
    [v4 setContextMenuDelegate:self];
    v5 = +[CCUIControlCenterMaterialView _blankMaterialView];
    [v4 setBackgroundView:v5];

    [(CCUIMenuModuleViewController *)self setShouldProvideOwnPlatter:0];
  }

  if (self->_shouldProvideOwnPlatter)
  {
    v6 = +[CCUIControlCenterMaterialView _darkMaterialView];
    platterMaterialView = self->_platterMaterialView;
    self->_platterMaterialView = v6;

    [(MTMaterialView *)self->_platterMaterialView _setContinuousCornerRadius:CCUIExpandedModuleContinuousCornerRadius()];
    [v3 insertSubview:self->_platterMaterialView atIndex:0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __43__CCUIMenuModuleViewController_viewDidLoad__block_invoke;
    aBlock[3] = &unk_1E83EA5F8;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    v8[2](v8, 1);
    v8[2](v8, 2);
  }

  v9 = objc_alloc(MEMORY[0x1E69DD250]);
  [v3 bounds];
  v10 = [v9 initWithFrame:?];
  transformView = self->_transformView;
  self->_transformView = v10;

  [v3 insertSubview:self->_transformView belowSubview:v4];
  v12 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:&unk_1F4D5A7D8];
  v13 = objc_alloc(MEMORY[0x1E69DCC10]);
  v14 = *MEMORY[0x1E695F058];
  v15 = *(MEMORY[0x1E695F058] + 8);
  v16 = *(MEMORY[0x1E695F058] + 16);
  v17 = *(MEMORY[0x1E695F058] + 24);
  v18 = [v13 initWithFrame:{*MEMORY[0x1E695F058], v15, v16, v17}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v18;

  [(UIView *)self->_transformView addSubview:self->_titleLabel];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  v20 = self->_titleLabel;
  v21 = [(CCUIMenuModuleViewController *)self title];
  [(UILabel *)v20 setText:v21];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [v12 automaticallyUpdateView:self->_titleLabel withStyle:0];
  v22 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v14, v15, v16, v17}];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v22;

  [(UIView *)self->_transformView addSubview:self->_subtitleLabel];
  [(UILabel *)self->_subtitleLabel setTextAlignment:1];
  v24 = self->_subtitleLabel;
  v25 = [(CCUIMenuModuleViewController *)self subtitle];
  [(UILabel *)v24 setText:v25];

  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  [v12 automaticallyUpdateView:self->_subtitleLabel withStyle:1];
  v26 = objc_alloc_init(MEMORY[0x1E69DD250]);
  headerSeparatorView = self->_headerSeparatorView;
  self->_headerSeparatorView = v26;

  [(UIView *)self->_transformView addSubview:self->_headerSeparatorView];
  [v12 automaticallyUpdateView:self->_headerSeparatorView withStyle:5];
  v28 = objc_alloc_init(MEMORY[0x1E69DD250]);
  footerSeparatorView = self->_footerSeparatorView;
  self->_footerSeparatorView = v28;

  [(UIView *)self->_transformView addSubview:self->_footerSeparatorView];
  [v12 automaticallyUpdateView:self->_footerSeparatorView withStyle:5];
  v30 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v14, v15, v16, v17}];
  contentView = self->_contentView;
  self->_contentView = v30;

  [(UIView *)self->_transformView insertSubview:self->_contentView belowSubview:self->_footerSeparatorView];
  v32 = objc_alloc(MEMORY[0x1E69DD250]);
  [(UIView *)self->_contentView bounds];
  v33 = [v32 initWithFrame:?];
  darkeningBackgroundView = self->_darkeningBackgroundView;
  self->_darkeningBackgroundView = v33;

  [(UIView *)self->_contentView addSubview:self->_darkeningBackgroundView];
  [(UIView *)self->_darkeningBackgroundView setAutoresizingMask:18];
  v35 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:&unk_1F4D5A7F0];
  [v35 _automaticallyUpdateView:self->_darkeningBackgroundView withStyleNamed:@"moduleListTint" andObserverBlock:0];

  v36 = objc_alloc(MEMORY[0x1E69DCEF8]);
  [(UIView *)self->_contentView bounds];
  v37 = [v36 initWithFrame:?];
  contentScrollView = self->_contentScrollView;
  self->_contentScrollView = v37;

  [(UIScrollView *)self->_contentScrollView setAutoresizingMask:18];
  [(UIScrollView *)self->_contentScrollView setShowsVerticalScrollIndicator:0];
  [(UIView *)self->_contentView addSubview:self->_contentScrollView];
  v39 = objc_alloc(MEMORY[0x1E69DCF90]);
  [(UIView *)self->_contentView bounds];
  v40 = [v39 initWithFrame:?];
  menuItemsContainer = self->_menuItemsContainer;
  self->_menuItemsContainer = v40;

  [(UIStackView *)self->_menuItemsContainer setAxis:1];
  [(UIScrollView *)self->_contentScrollView addSubview:self->_menuItemsContainer];
  v42 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handlePressGesture_];
  pressGestureRecognizer = self->_pressGestureRecognizer;
  self->_pressGestureRecognizer = v42;

  [(UILongPressGestureRecognizer *)self->_pressGestureRecognizer setDelegate:self];
  [(UILongPressGestureRecognizer *)self->_pressGestureRecognizer setCancelsTouchesInView:0];
  [(UILongPressGestureRecognizer *)self->_pressGestureRecognizer setDelaysTouchesEnded:0];
  [(UILongPressGestureRecognizer *)self->_pressGestureRecognizer setMinimumPressDuration:0.0];
  [(UILongPressGestureRecognizer *)self->_pressGestureRecognizer _setKeepTouchesOnContinuation:1];
  v44 = self->_pressGestureRecognizer;
  v45 = [(UIScrollView *)self->_contentScrollView panGestureRecognizer];
  [(UILongPressGestureRecognizer *)v44 requireGestureRecognizerToFail:v45];

  [v3 addGestureRecognizer:self->_pressGestureRecognizer];
  v46 = objc_alloc(MEMORY[0x1E69DCF40]);
  v47 = [MEMORY[0x1E69DD6E8] lightConfiguration];
  v48 = [v46 initWithConfiguration:v47 view:v3];
  feedbackGenerator = self->_feedbackGenerator;
  self->_feedbackGenerator = v48;

  v50 = objc_opt_self();
  v55[0] = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
  v52 = [(CCUIMenuModuleViewController *)self registerForTraitChanges:v51 withAction:sel__contentSizeCategoryDidChange];

  [(CCUIMenuModuleViewController *)self _contentSizeCategoryDidChange];
  [(CCUIMenuModuleViewController *)self _fadeViewsForExpandedState:[(CCUIButtonModuleViewController *)self isExpanded]];
}

void __43__CCUIMenuModuleViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 1080) visualStylingProviderForCategory:a2];
  if (v4)
  {
    v10 = v4;
    v5 = *(*(a1 + 32) + 1088);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = *(a1 + 32);
      v8 = *(v7 + 1088);
      *(v7 + 1088) = v6;

      v5 = *(*(a1 + 32) + 1088);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    [v5 setObject:v10 forKey:v9];

    v4 = v10;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIMenuModuleViewController;
  [(CCUIMenuModuleViewController *)&v4 viewWillAppear:a3];
  if ([(CCUIMenuModuleViewController *)self isAlwaysExpanded])
  {
    [(CCUIMenuModuleViewController *)self willTransitionToExpandedContentMode:1];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIMenuModuleViewController;
  [(CCUIMenuModuleViewController *)&v4 viewDidAppear:a3];
  if ([(CCUIMenuModuleViewController *)self isAlwaysExpanded])
  {
    [(CCUIMenuModuleViewController *)self didTransitionToExpandedContentMode:1];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIMenuModuleViewController;
  [(CCUIMenuModuleViewController *)&v4 viewWillDisappear:a3];
  if ([(CCUIMenuModuleViewController *)self isAlwaysExpanded])
  {
    [(CCUIMenuModuleViewController *)self willTransitionToExpandedContentMode:0];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIMenuModuleViewController;
  [(CCUIMenuModuleViewController *)&v4 viewDidDisappear:a3];
  if ([(CCUIMenuModuleViewController *)self isAlwaysExpanded])
  {
    [(CCUIMenuModuleViewController *)self didTransitionToExpandedContentMode:0];
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CCUIMenuModuleViewController;
  [(CCUIButtonModuleViewController *)&v3 viewWillLayoutSubviews];
  [(CCUIMenuModuleViewController *)self _setupTitleLabel];
  [(CCUIMenuModuleViewController *)self _setupSubtitleLabel];
  [(CCUIMenuModuleViewController *)self _layoutViewSubviews];
}

- (void)_layoutViewSubviews
{
  v3 = [(CCUIMenuModuleViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CCUIMenuModuleViewController *)self _layoutGlyphViewForSize:v9, v11];
  [(MTMaterialView *)self->_platterMaterialView setFrame:v5, v7, v9, v11];
  [(CCUIMenuModuleViewController *)self preferredExpandedContentWidth];
  v13 = v12;
  [(CCUIMenuModuleViewController *)self preferredExpandedContentHeight];
  v15 = v14;
  [(CCUIMenuModuleViewController *)self _forceLimitContentSizeCategoryFromContentHeightIfNecessary:[(CCUIButtonModuleViewController *)self isExpanded] expanded:v14];
  [(CCUIMenuModuleViewController *)self _layoutTransformViewForSize:v13, v15];
  [(CCUIMenuModuleViewController *)self _layoutTitleLabelForSize:v13, v15];
  [(CCUIMenuModuleViewController *)self _layoutSubtitleLabelForSize:v13, v15];
  [(CCUIMenuModuleViewController *)self _layoutBusyIndicatorForSize:v13, v15];
  [(CCUIMenuModuleViewController *)self _layoutHeaderSeparatorForSize:v13, v15];
  [(CCUIMenuModuleViewController *)self _layoutContentViewForSize:v13, v15];
  [(CCUIMenuModuleViewController *)self _layoutFooterSeparatorForSize:v13, v15];
  [(CCUIMenuModuleViewController *)self _layoutFooterButtonForSize:v13, v15];
  v16 = [(CCUIButtonModuleViewController *)self isExpanded];

  [(CCUIMenuModuleViewController *)self _fadeViewsForExpandedState:v16];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CCUIMenuModuleViewController;
  v7 = a4;
  [(CCUIMenuModuleViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__CCUIMenuModuleViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E83EA620;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v15.receiver = self;
  v15.super_class = CCUIMenuModuleViewController;
  [(CCUIMenuModuleViewController *)&v15 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (a3 && !self->_shouldProvideOwnPlatter)
  {
    v6 = [(CCUIMenuModuleViewController *)self view];
    v7 = [v6 visualStylingProviderForCategory:1];

    v8 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:&unk_1F4D5A7D8];
    v9 = v8;
    if (v8 != v7)
    {
      [v8 stopAutomaticallyUpdatingView:self->_titleLabel];
      [v9 stopAutomaticallyUpdatingView:self->_subtitleLabel];
      [v9 stopAutomaticallyUpdatingView:self->_headerSeparatorView];
      [v9 stopAutomaticallyUpdatingView:self->_footerSeparatorView];
      if (v7)
      {
        [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders setObject:v7 forKey:&unk_1F4D5A7D8];
        [v7 automaticallyUpdateView:self->_titleLabel withStyle:0];
        [v7 automaticallyUpdateView:self->_subtitleLabel withStyle:1];
        [v7 automaticallyUpdateView:self->_headerSeparatorView withStyle:5];
        [v7 automaticallyUpdateView:self->_footerSeparatorView withStyle:5];
      }
    }

    v10 = [(CCUIMenuModuleViewController *)self view];
    v11 = [v10 visualStylingProviderForCategory:2];

    v12 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:&unk_1F4D5A7F0];
    v13 = v12;
    if (v12 != v11)
    {
      [v12 stopAutomaticallyUpdatingView:self->_darkeningBackgroundView];
      if (v11)
      {
        [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders setObject:v11 forKey:&unk_1F4D5A7F0];
        [v11 _automaticallyUpdateView:self->_darkeningBackgroundView withStyleNamed:@"moduleListTint" andObserverBlock:0];
      }
    }

    v14 = [(CCUIMenuModuleViewController *)self view];
    [v14 setNeedsLayout];
  }
}

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = CCUIMenuModuleViewController;
  v4 = a3;
  [(CCUIButtonModuleViewController *)&v5 setTitle:v4];
  [(UILabel *)self->_titleLabel setText:v4, v5.receiver, v5.super_class];
}

- (void)setSubtitle:(id)a3
{
  objc_storeStrong(&self->_subtitle, a3);
  v5 = a3;
  [(UILabel *)self->_subtitleLabel setText:v5];
}

- (double)_maximumHeight
{
  v2 = CCUIExpandedModuleEdgeInsets();
  v4 = v3;
  v6.origin.x = CCUIScreenBounds();
  return CGRectGetHeight(v6) - v2 - v4;
}

- (double)_desiredExpandedHeight
{
  [(CCUIMenuModuleViewController *)self preferredExpandedContentWidth];

  [(CCUIMenuModuleViewController *)self preferredExpandedContentHeightWithWidth:?];
  return result;
}

- (void)contentModuleWillTransitionToExpandedContentMode:(BOOL)a3
{
  feedbackGenerator = self->_feedbackGenerator;
  if (a3)
  {
    [(UISelectionFeedbackGenerator *)feedbackGenerator userInteractionStarted];
  }

  else
  {
    [(UISelectionFeedbackGenerator *)feedbackGenerator userInteractionEnded];
  }
}

- (double)preferredExpandedContentHeight
{
  [(CCUIMenuModuleViewController *)self _maximumHeight];
  v4 = v3;
  [(CCUIMenuModuleViewController *)self _desiredExpandedHeight];
  if (v4 < result)
  {
    return v4;
  }

  return result;
}

- (double)preferredExpandedContentHeightWithWidth:(double)a3
{
  [(CCUIMenuModuleViewController *)self headerHeightForWidth:?];
  [(CCUIMenuModuleViewController *)self scrollViewContentHeightForWidth:a3];
  [(CCUIMenuModuleViewController *)self _footerHeight];
  v5 = [(CCUIMenuModuleViewController *)self view];
  UIRoundToViewScale();
  v7 = v6;

  return v7;
}

- (BOOL)_forceLimitContentSizeCategoryFromContentHeightIfNecessary:(double)a3 expanded:(BOOL)a4
{
  if (!a4)
  {
    return 0;
  }

  if (self->_forceLimitContentSizeCategory)
  {
    return 0;
  }

  [(CCUIMenuModuleViewController *)self _aggregateModuleHeight];
  if (v6 <= a3)
  {
    return 0;
  }

  return [(CCUIMenuModuleViewController *)self _setForceLimitContentSizeCategory:1];
}

- (void)willTransitionToExpandedContentMode:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = CCUIMenuModuleViewController;
  [(CCUIButtonModuleViewController *)&v7 willTransitionToExpandedContentMode:?];
  if (!v3)
  {
    self->_allowsMenuInteraction = 0;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__CCUIMenuModuleViewController_willTransitionToExpandedContentMode___block_invoke;
  v5[3] = &unk_1E83EA530;
  v5[4] = self;
  v6 = v3;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  [(CCUIMenuModuleViewController *)self preferredExpandedContentHeight];
  if ([(CCUIMenuModuleViewController *)self _forceLimitContentSizeCategoryFromContentHeightIfNecessary:v3 expanded:?])
  {
    [(CCUIMenuModuleItemView *)self->_footerButtonView layoutIfNeeded];
  }

  [(CCUIMenuModuleViewController *)self _setRootViewClipsToBounds:v3];
  [(CCUIMenuModuleViewController *)self _setTransformViewClipsToBounds:0];
}

uint64_t __68__CCUIMenuModuleViewController_willTransitionToExpandedContentMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonView];
  [v2 setHighlighted:0];

  v3 = [*(a1 + 32) buttonView];
  [v3 setUserInteractionEnabled:*(a1 + 40) == 0];

  v4 = *(*(a1 + 32) + 1120);
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);

  return [v4 setContentOffset:{v5, v6}];
}

- (void)didTransitionToExpandedContentMode:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = CCUIMenuModuleViewController;
  [(CCUIButtonModuleViewController *)&v5 didTransitionToExpandedContentMode:?];
  if (v3)
  {
    self->_allowsMenuInteraction = 1;
    [(CCUIMenuModuleViewController *)self _setRootViewClipsToBounds:0];
    [(CCUIMenuModuleViewController *)self _setTransformViewClipsToBounds:1];
  }
}

- (void)setGlyphImage:(id)a3
{
  v4.receiver = self;
  v4.super_class = CCUIMenuModuleViewController;
  [(CCUIButtonModuleViewController *)&v4 setGlyphImage:a3];
  [(CCUIMenuModuleViewController *)self _updateTitleFont];
  [(CCUIMenuModuleViewController *)self _updateSubtitleFont];
}

- (void)setGlyphPackageDescription:(id)a3
{
  v4.receiver = self;
  v4.super_class = CCUIMenuModuleViewController;
  [(CCUIButtonModuleViewController *)&v4 setGlyphPackageDescription:a3];
  [(CCUIMenuModuleViewController *)self _updateTitleFont];
  [(CCUIMenuModuleViewController *)self _updateSubtitleFont];
}

- (id)contextMenuItems
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [(CCUIMenuModuleViewController *)self mostRecentMenuItems];
  v3 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 isSelected];
        v10 = MEMORY[0x1E69DC628];
        v11 = [v8 title];
        v12 = [v8 image];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __48__CCUIMenuModuleViewController_contextMenuItems__block_invoke;
        v18[3] = &unk_1E83EA648;
        v18[4] = v8;
        v13 = [v10 actionWithTitle:v11 image:v12 identifier:0 handler:v18];

        [v13 setState:v9];
        v14 = [v8 subtitle];

        if (v14)
        {
          v15 = [v8 subtitle];
          [v13 setSubtitle:v15];
        }

        [v3 addObject:v13];
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  return v3;
}

- (UIMenu)contextMenu
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [(CCUIMenuModuleViewController *)self mostRecentMenuItems];
  v3 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 isSelected];
        v10 = MEMORY[0x1E69DC628];
        v11 = [v8 title];
        v12 = [v8 image];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __43__CCUIMenuModuleViewController_contextMenu__block_invoke;
        v19[3] = &unk_1E83EA648;
        v19[4] = v8;
        v13 = [v10 actionWithTitle:v11 image:v12 identifier:0 handler:v19];

        [v13 setState:v9];
        v14 = [v8 subtitle];

        if (v14)
        {
          v15 = [v8 subtitle];
          [v13 setSubtitle:v15];
        }

        [v3 addObject:v13];
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  if ([v3 count])
  {
    v16 = [MEMORY[0x1E69DCC60] menuWithChildren:v3];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)contextMenuPreviewForControlTemplateView:(id)a3
{
  v3 = [(CCUIMenuModuleViewController *)self view];
  v4 = [v3 superview];

  v5 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v4];

  return v5;
}

- (void)_handleActionTapped:(id)a3
{
  if (self->_allowsMenuInteraction)
  {
    v4 = [a3 menuItem];
    v5 = [v4 performAction];

    if (v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_contentModuleContext);

      if (WeakRetained)
      {
        v7 = objc_loadWeakRetained(&self->_contentModuleContext);
        [v7 dismissModule];
      }

      else
      {

        [(CCUIMenuModuleViewController *)self dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

- (void)_fadeViewsForExpandedState:(BOOL)a3
{
  titleLabel = self->_titleLabel;
  if (a3)
  {
    v5 = 1.0;
    [(UILabel *)titleLabel setAlpha:1.0];
    [(UILabel *)self->_subtitleLabel setAlpha:1.0];
    headerSeparatorView = self->_headerSeparatorView;
    p_contentView = &self->_contentView;
    [(UIView *)self->_contentView bounds];
    [(UIView *)headerSeparatorView setAlpha:!CGRectIsEmpty(v11)];
    [(UIView *)self->_footerSeparatorView setAlpha:[(CCUIMenuModuleViewController *)self _shouldShowFooterSeparator]];
    LOBYTE(v8) = self->_shouldShowFooterButton;
    [(CCUIMenuModuleItemView *)self->_footerButtonView setAlpha:v8];
  }

  else
  {
    v5 = 0.0;
    [(UILabel *)titleLabel setAlpha:0.0];
    [(UILabel *)self->_subtitleLabel setAlpha:0.0];
    [(UIView *)self->_headerSeparatorView setAlpha:0.0];
    [(UIView *)self->_footerSeparatorView setAlpha:0.0];
    [(CCUIMenuModuleItemView *)self->_footerButtonView setAlpha:0.0];
    [(UIView *)self->_contentView setAlpha:0.0];
    p_contentView = &self->_busyIndicatorView;
  }

  v9 = *p_contentView;

  [v9 setAlpha:v5];
}

- (void)_layoutTransformViewForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CCUIMenuModuleViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    transformView = self->_transformView;
    v16 = *(MEMORY[0x1E695EFD0] + 16);
    *&v20.a = *MEMORY[0x1E695EFD0];
    *&v20.c = v16;
    *&v20.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    v21.origin.x = v8;
    v21.origin.y = v10;
    v21.size.width = v12;
    v21.size.height = v14;
    v17 = CGRectGetWidth(v21) / width;
    v22.origin.x = v8;
    v22.origin.y = v10;
    v22.size.width = v12;
    v22.size.height = v14;
    v18 = CGRectGetHeight(v22);
    v19 = self->_transformView;
    CGAffineTransformMakeScale(&v20, v17, v18 / height);
    transformView = v19;
  }

  [(UIView *)transformView setTransform:&v20, *&v20.a, *&v20.c, *&v20.tx];
  [(UIView *)self->_transformView setFrame:v8, v10, v12, v14];
}

- (void)_layoutGlyphViewForSize:(CGSize)a3
{
  v4 = [(CCUIButtonModuleViewController *)self buttonView:a3.width];
  v5 = [(CCUIButtonModuleViewController *)self isExpanded];
  v6 = 1.0;
  if (v5)
  {
    v7 = [(CCUIMenuModuleViewController *)self _shouldHideGlyphForLimitedContentSizeCategory];
    v6 = 0.0;
    if (!v7)
    {
      v6 = ([(CCUIMenuModuleViewController *)self hideGlyphInHeader]^ 1);
    }
  }

  [v4 setAlpha:v6];

  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    v8 = [(CCUIMenuModuleViewController *)self view];
    v9 = [v8 traitCollection];
    [v9 displayScale];

    v10 = [(CCUIMenuModuleViewController *)self view];
    [v10 bounds];
    CGRectGetWidth(v22);

    UIRectIntegralWithScale();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = [(CCUIButtonModuleViewController *)self buttonView];
    [v20 setFrame:{v12, v14, v16, v18}];
  }

  else
  {
    v20 = [(CCUIButtonModuleViewController *)self buttonView];
    v19 = [(CCUIMenuModuleViewController *)self view];
    [v19 bounds];
    [v20 setFrame:?];
  }
}

- (void)_layoutTitleLabelForSize:(CGSize)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__CCUIMenuModuleViewController__layoutTitleLabelForSize___block_invoke;
  v3[3] = &unk_1E83EA670;
  v3[4] = self;
  v4 = a3;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
}

uint64_t __57__CCUIMenuModuleViewController__layoutTitleLabelForSize___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 traitCollection];
  [v3 displayScale];

  [*(*(a1 + 32) + 1040) frame];
  v5 = v4;
  v6 = [*(a1 + 32) hasGlyph];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 buttonView];
    [v8 alpha];
    BSFloatIsZero();
    v9 = [*(*(a1 + 32) + 1040) font];
    [v9 _scaledValueForValue:18.0];
    [*(*(a1 + 32) + 1040) _firstLineBaselineOffsetFromBoundsTop];
    UIRoundToScale();
    v11 = v10;
  }

  else
  {
    v8 = [v7[130] font];
    [v8 _scaledValueForValue:40.0];
    v13 = v12;
    [*(*(a1 + 32) + 1040) _firstLineBaselineOffsetFromBoundsTop];
    v11 = v13 - v14;
  }

  v15 = *(*(a1 + 32) + 1040);
  v16 = *(a1 + 40);

  return [v15 setFrame:{0.0, v11, v16, v5}];
}

- (void)_layoutSubtitleLabelForSize:(CGSize)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__CCUIMenuModuleViewController__layoutSubtitleLabelForSize___block_invoke;
  v3[3] = &unk_1E83EA670;
  v3[4] = self;
  v4 = a3;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
}

uint64_t __60__CCUIMenuModuleViewController__layoutSubtitleLabelForSize___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1048) frame];
  v3 = v2;
  [*(*(a1 + 32) + 1040) frame];
  MaxY = CGRectGetMaxY(v12);
  v5 = [*(*(a1 + 32) + 1048) font];
  [v5 _scaledValueForValue:5.0];
  v7 = MaxY + v6;

  v8 = *(*(a1 + 32) + 1048);
  v9 = *(a1 + 40);

  return [v8 setFrame:{0.0, v7, v9, v3}];
}

- (void)_layoutFooterButtonForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = 0.0;
  if (self->_shouldShowFooterButton)
  {
    [(CCUIMenuModuleItemView *)self->_footerButtonView intrinsicContentSize];
    v6 = v7;
  }

  footerButtonView = self->_footerButtonView;

  [(CCUIMenuModuleItemView *)footerButtonView setFrame:0.0, height - v6, width];
}

- (void)_layoutBusyIndicatorForSize:(CGSize)a3
{
  if (self->_busyIndicatorView)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __60__CCUIMenuModuleViewController__layoutBusyIndicatorForSize___block_invoke;
    v3[3] = &unk_1E83EA670;
    v3[4] = self;
    v4 = a3;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
  }
}

uint64_t __60__CCUIMenuModuleViewController__layoutBusyIndicatorForSize___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonView];
  [v2 frame];

  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 userInterfaceLayoutDirection];

  UIRectIntegralWithScale();
  v4 = *(*(a1 + 32) + 1136);

  return [v4 setFrame:?];
}

- (void)_layoutHeaderSeparatorForSize:(CGSize)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__CCUIMenuModuleViewController__layoutHeaderSeparatorForSize___block_invoke;
  v3[3] = &unk_1E83EA670;
  v4 = a3;
  v3[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
}

uint64_t __62__CCUIMenuModuleViewController__layoutHeaderSeparatorForSize___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  [*(a1 + 32) headerHeightForWidth:*(a1 + 40)];
  if (v2 >= v3)
  {
    v2 = v3;
  }

  v4 = *(a1 + 40);
  [*(a1 + 32) _separatorHeight];
  v6 = *(*(a1 + 32) + 1064);

  return [v6 setFrame:{0.0, v2, v4, v5}];
}

- (void)_layoutFooterSeparatorForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(CCUIMenuModuleViewController *)self _footerHeight];
  v7 = height - v6;
  [(CCUIMenuModuleViewController *)self _separatorHeight];
  footerSeparatorView = self->_footerSeparatorView;

  [(UIView *)footerSeparatorView setFrame:0.0, v7, width, v8];
}

- (double)_contentScaleForSize:(CGSize)a3
{
  width = a3.width;
  v5 = 1.0;
  if (![(CCUIButtonModuleViewController *)self isExpanded:a3.width])
  {
    [(UIView *)self->_contentView bounds];
    if (!CGRectIsEmpty(v8))
    {
      v6 = [(CCUIMenuModuleViewController *)self view];
      [v6 bounds];
      v5 = width / CGRectGetWidth(v9);
    }
  }

  return v5;
}

- (void)_setView:(id)a3 clipsToBounds:(BOOL)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69DD250];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__CCUIMenuModuleViewController__setView_clipsToBounds___block_invoke;
  v8[3] = &unk_1E83EA530;
  v9 = v5;
  v10 = a4;
  v7 = v5;
  [v6 performWithoutAnimation:v8];
}

void __55__CCUIMenuModuleViewController__setView_clipsToBounds___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setClipsToBounds:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = 0.0;
  if (*(a1 + 40) == 1)
  {
    v3 = CCUIExpandedModuleContinuousCornerRadius();
  }

  [v2 _setContinuousCornerRadius:v3];
  v4 = [*(a1 + 32) layer];
  v6 = v4;
  if (*(a1 + 40))
  {
    v5 = 12;
  }

  else
  {
    v5 = 0;
  }

  [v4 setMaskedCorners:v5];
}

- (void)_setRootViewClipsToBounds:(BOOL)a3
{
  v3 = a3;
  v5 = [(CCUIMenuModuleViewController *)self view];
  [(CCUIMenuModuleViewController *)self _setView:v5 clipsToBounds:v3];
}

- (void)_layoutContentViewForSize:(CGSize)a3
{
  width = a3.width;
  [(CCUIMenuModuleViewController *)self headerHeight];
  [(CCUIMenuModuleViewController *)self _footerHeight];
  [(CCUIMenuModuleViewController *)self _menuItemsHeightForWidth:width];
  v6 = v5;
  UIRectIntegralWithScale();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(UIView *)self->_contentView setFrame:?];
  [(UIStackView *)self->_menuItemsContainer setFrame:0.0, 0.0, width, v6];
  if (self->_customContentView)
  {
    [(CCUIMenuModuleViewController *)self scrollViewContentHeightForWidth:width];
    v6 = v15;
  }

  [(UIScrollView *)self->_contentScrollView setContentSize:width, v6];
  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  [(UIScrollView *)self->_contentScrollView setScrollEnabled:v6 > CGRectGetHeight(v21)];
  customContentView = self->_customContentView;
  if (customContentView)
  {
    [(UIView *)customContentView frame];
    v17 = self->_customContentView;
    v18 = *MEMORY[0x1E695EFF8];
    v19 = *(MEMORY[0x1E695EFF8] + 8);

    [(UIView *)v17 setFrame:v18, v19];
  }
}

- (void)_setupTitleLabel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__CCUIMenuModuleViewController__setupTitleLabel__block_invoke;
  v2[3] = &unk_1E83EA478;
  v2[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
}

uint64_t __48__CCUIMenuModuleViewController__setupTitleLabel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[130];
  [v2 preferredExpandedContentWidth];
  [v2 _titleWidthForContainerWidth:?];
  [v3 sizeThatFits:?];
  v6 = *(*(a1 + 32) + 1040);

  return [v6 setBounds:{0.0, 0.0, v4, v5}];
}

- (void)_setupSubtitleLabel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51__CCUIMenuModuleViewController__setupSubtitleLabel__block_invoke;
  v2[3] = &unk_1E83EA478;
  v2[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
}

uint64_t __51__CCUIMenuModuleViewController__setupSubtitleLabel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[131];
  [v2 preferredExpandedContentWidth];
  [v2 _titleWidthForContainerWidth:?];
  [v3 sizeThatFits:?];
  v6 = *(*(a1 + 32) + 1048);

  return [v6 setBounds:{0.0, 0.0, v4, v5}];
}

- (void)_updateMenuItemsSeparatorVisiblity
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(UIStackView *)self->_menuItemsContainer arrangedSubviews];
  v3 = [v2 reverseObjectEnumerator];
  v4 = [v3 allObjects];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (([v10 isHidden] & 1) == 0)
        {
          v11 = v7;
          if (!v7)
          {
            v11 = v10;
          }

          [v10 setSeparatorVisible:v7 != 0];
          v7 = v11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }
}

- (BOOL)_toggleSelectionForMenuItem:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  footerButtonView = self->_footerButtonView;
  if (v4)
  {
    v6 = footerButtonView == v4;
    if (v6 == [(CCUIMenuModuleItemView *)footerButtonView isHighlighted])
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    if (([(CCUIMenuModuleItemView *)footerButtonView isHighlighted]& 1) == 0)
    {
      goto LABEL_6;
    }
  }

  [(CCUIMenuModuleItemView *)self->_footerButtonView setHighlighted:v6];
  v7 = 1;
LABEL_6:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(UIStackView *)self->_menuItemsContainer arrangedSubviews];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([(CCUIMenuModuleItemView *)v13 isHighlighted]!= (v13 == v4))
        {
          [(CCUIMenuModuleItemView *)v13 setHighlighted:v13 == v4];
          v7 = 1;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7 & 1;
}

- (void)_handlePressGesture:(id)a3
{
  v30 = a3;
  if ([v30 state] == 1)
  {
    v4 = [(CCUIButtonModuleViewController *)self isExpanded];
    self->_ignoreMenuItemAtTouchLocationAfterExpanded = !v4;
    if (!v4)
    {
      pressGestureRecognizer = self->_pressGestureRecognizer;
      v6 = [(CCUIMenuModuleViewController *)self view];
      v7 = [v6 window];
      [(UILongPressGestureRecognizer *)pressGestureRecognizer locationInView:v7];
      self->_touchLocationToIgnore.x = v8;
      self->_touchLocationToIgnore.y = v9;
    }
  }

  v10 = [(CCUIMenuModuleViewController *)self view];
  [v30 locationInView:v10];
  v12 = v11;
  v14 = v13;

  v15 = [(CCUIMenuModuleViewController *)self view];
  v16 = [v15 hitTest:0 withEvent:{v12, v14}];
  v17 = objc_opt_self();
  v18 = v16;
  if (v17)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (self->_allowsMenuInteraction)
  {
    if (self->_ignoreMenuItemAtTouchLocationAfterExpanded)
    {
      v21 = [(CCUIMenuModuleViewController *)self view];
      v22 = [(CCUIMenuModuleViewController *)self view];
      v23 = [v22 window];
      [v21 convertPoint:v23 fromView:{self->_touchLocationToIgnore.x, self->_touchLocationToIgnore.y}];
      v25 = v24;
      v27 = v26;

      v28 = [(CCUIMenuModuleViewController *)self view];
      v29 = [v28 hitTest:0 withEvent:{v25, v27}];

      if (!v20)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v29 = 0;
      if (!v20)
      {
        goto LABEL_15;
      }
    }

    if (v20 == v29)
    {
LABEL_20:

      goto LABEL_21;
    }

LABEL_15:
    self->_ignoreMenuItemAtTouchLocationAfterExpanded = 0;
    if ([(CCUIMenuModuleViewController *)self _toggleSelectionForMenuItem:v20])
    {
      [(UISelectionFeedbackGenerator *)self->_feedbackGenerator selectionChanged];
    }

    if (v20 && [v30 state] == 3)
    {
      [(CCUIMenuModuleViewController *)self _handleActionTapped:v20];
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (double)_separatorHeight
{
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  v4 = [(CCUIMenuModuleViewController *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = 1.0;
  if (!UIContentSizeCategoryIsAccessibilityCategory(v5))
  {
    [v3 scale];
    v6 = v7;
  }

  return 1.0 / v6;
}

- (id)_titleFont
{
  if ([(CCUIMenuModuleViewController *)self _shouldLimitContentSizeCategory])
  {
    v3 = *MEMORY[0x1E69DDC38];
  }

  else
  {
    v4 = [(CCUIMenuModuleViewController *)self traitCollection];
    v3 = [v4 preferredContentSizeCategory];
  }

  v5 = [(CCUIMenuModuleViewController *)self hasGlyph];
  v6 = MEMORY[0x1E69DDD40];
  if (v5)
  {
    v7 = 8;
  }

  else
  {
    v6 = MEMORY[0x1E69DDDC8];
    v7 = 4;
  }

  v8 = [MEMORY[0x1E69DB878] bsui_preferredFontForTextStyle:*v6 hiFontStyle:v7 contentSizeCategory:v3];

  return v8;
}

- (id)_subtitleFont
{
  if ([(CCUIMenuModuleViewController *)self _shouldLimitContentSizeCategory])
  {
    v3 = *MEMORY[0x1E69DDC38];
  }

  else
  {
    v4 = [(CCUIMenuModuleViewController *)self traitCollection];
    v3 = [v4 preferredContentSizeCategory];
  }

  if ([(CCUIMenuModuleViewController *)self hasGlyph])
  {
    v5 = 8;
  }

  else
  {
    v5 = 1;
  }

  v6 = [MEMORY[0x1E69DB878] bsui_preferredFontForTextStyle:*MEMORY[0x1E69DDD80] hiFontStyle:v5 contentSizeCategory:v3];

  return v6;
}

- (BOOL)_shouldLimitContentSizeCategory
{
  v3 = [(CCUIMenuModuleViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = (self->_forceLimitContentSizeCategory || ([*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 3) <= 1) && UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x1E69DDC38]) == NSOrderedDescending;
  return v5;
}

- (BOOL)_shouldHideGlyphForLimitedContentSizeCategory
{
  v2 = [(CCUIMenuModuleViewController *)self _shouldLimitContentSizeCategory];
  if (v2)
  {
    LOBYTE(v2) = ([*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 3) < 2;
  }

  return v2;
}

- (id)_preferredFontForTextStyle:(id)a3 hiFontStyle:(int64_t)a4
{
  v6 = a3;
  v7 = [(CCUIMenuModuleViewController *)self traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if ([(CCUIMenuModuleViewController *)self _shouldLimitContentSizeCategory])
  {
    v9 = *MEMORY[0x1E69DDC38];

    v8 = v9;
  }

  v10 = [MEMORY[0x1E69DB878] bsui_preferredFontForTextStyle:v6 hiFontStyle:a4 contentSizeCategory:v8];

  return v10;
}

- (double)_defaultMenuItemHeight
{
  v2 = [(CCUIMenuModuleViewController *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  [CCUIMenuModuleItemView defaultMenuItemHeightForContentSizeCategory:v3];
  v5 = v4;

  return v5;
}

- (double)scrollViewContentHeightForWidth:(double)a3
{
  customContentView = self->_customContentView;
  if (customContentView)
  {
    [(UIView *)customContentView frame];

    return CGRectGetHeight(*&v5);
  }

  else if (self->_visibleMenuItems <= 0.0)
  {

    [(CCUIMenuModuleViewController *)self _menuItemsHeightForWidth:a3];
  }

  else
  {
    [(CCUIMenuModuleViewController *)self _defaultMenuItemHeight];
    v11 = v10;
    [(CCUIMenuModuleViewController *)self visibleMenuItems];
    return v11 * v12;
  }

  return result;
}

- (double)_menuItemsHeightForWidth:(double)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [(UIStackView *)self->_menuItemsContainer arrangedSubviews];
  v6 = [v5 count];

  if (!v6)
  {
    return 0.0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(UIStackView *)self->_menuItemsContainer arrangedSubviews];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (([v13 isHidden] & 1) == 0)
        {
          [v13 sizeThatFits:{a3, 0.0}];
          v11 = v11 + v14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

- (BOOL)_setForceLimitContentSizeCategory:(BOOL)a3
{
  v3 = a3;
  forceLimitContentSizeCategory = self->_forceLimitContentSizeCategory;
  if (forceLimitContentSizeCategory != a3)
  {
    self->_forceLimitContentSizeCategory = a3;
    titleLabel = self->_titleLabel;
    v7 = [(CCUIMenuModuleViewController *)self _titleFont];
    [(UILabel *)titleLabel setFont:v7];

    subtitleLabel = self->_subtitleLabel;
    v9 = [(CCUIMenuModuleViewController *)self _subtitleFont];
    [(UILabel *)subtitleLabel setFont:v9];

    [(CCUIMenuModuleItemView *)self->_footerButtonView setShouldLimitContentSizeCategory:v3];
  }

  return forceLimitContentSizeCategory != v3;
}

- (void)_contentSizeCategoryDidChange
{
  [(CCUIMenuModuleViewController *)self _setForceLimitContentSizeCategory:0];
  [(CCUIMenuModuleViewController *)self _updateTitleFont];
  [(CCUIMenuModuleViewController *)self _updateSubtitleFont];

  [(CCUIMenuModuleViewController *)self _updateLeadingAndTrailingViews];
}

- (void)_updateTitleFont
{
  titleLabel = self->_titleLabel;
  v4 = [(CCUIMenuModuleViewController *)self _titleFont];
  [(UILabel *)titleLabel setFont:v4];

  v5 = [(CCUIMenuModuleViewController *)self viewIfLoaded];
  [v5 setNeedsLayout];
}

- (void)_updateSubtitleFont
{
  subtitleLabel = self->_subtitleLabel;
  v4 = [(CCUIMenuModuleViewController *)self _subtitleFont];
  [(UILabel *)subtitleLabel setFont:v4];

  v5 = [(CCUIMenuModuleViewController *)self viewIfLoaded];
  [v5 setNeedsLayout];
}

- (void)_updateLeadingAndTrailingViews
{
  v3 = [(UIStackView *)self->_menuItemsContainer arrangedSubviews];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__CCUIMenuModuleViewController__updateLeadingAndTrailingViews__block_invoke;
  v5[3] = &unk_1E83EA698;
  v5[4] = self;
  [v3 enumerateObjectsUsingBlock:v5];
  v4 = [(CCUIMenuModuleViewController *)self viewIfLoaded];
  [v4 setNeedsLayout];
}

void __62__CCUIMenuModuleViewController__updateLeadingAndTrailingViews__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 menuItem];
  if ([v3 isSelected])
  {
    v4 = [*(a1 + 32) _leadingViewForMenuItem:v3];
    [v6 setLeadingView:v4];

    v5 = [*(a1 + 32) _trailingViewForMenuItem:v3];
    [v6 setTrailingView:v5];
  }
}

- (double)_footerHeight
{
  if ([(CCUIMenuModuleViewController *)self _shouldShowFooterChin])
  {
    v17.origin.x = CCUIReferenceScreenBounds();
    Width = CGRectGetWidth(v17);
    if (Width >= 1024.0)
    {
      v2 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v2 userInterfaceIdiom] == 1)
      {
        v8 = 24.0;
        if (SBFEffectiveHomeButtonType() != 2)
        {
          goto LABEL_40;
        }
      }
    }

    v18.origin.x = CCUIReferenceScreenBounds();
    v9 = CGRectGetWidth(v18);
    if (v9 >= 1024.0 && ([MEMORY[0x1E69DC938] currentDevice], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "userInterfaceIdiom") == 1) && SBFEffectiveHomeButtonType() == 2)
    {

      v8 = 24.0;
    }

    else
    {
      v19.origin.x = CCUIReferenceScreenBounds();
      v11 = CGRectGetWidth(v19);
      if (v11 >= 834.0)
      {
        v4 = [MEMORY[0x1E69DC938] currentDevice];
        if ([v4 userInterfaceIdiom] == 1)
        {
          v8 = 24.0;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            goto LABEL_36;
          }
        }
      }

      v20.origin.x = CCUIReferenceScreenBounds();
      v12 = CGRectGetWidth(v20);
      if (v12 >= 834.0)
      {
        v5 = [MEMORY[0x1E69DC938] currentDevice];
        if ([v5 userInterfaceIdiom] == 1)
        {
          v8 = 24.0;
          if (SBFEffectiveHomeButtonType() != 2)
          {
            goto LABEL_34;
          }
        }
      }

      v13 = [MEMORY[0x1E69DC938] currentDevice];
      v8 = 24.0;
      if ([v13 userInterfaceIdiom] != 1)
      {
        v21.origin.x = CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v21) < 430.0)
        {
          v22.origin.x = CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v22) < 428.0)
          {
            v23.origin.x = CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v23) < 420.0 || SBFEffectiveHomeButtonType() != 2)
            {
              v24.origin.x = CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v24) < 414.0 || SBFEffectiveHomeButtonType() != 2)
              {
                v25.origin.x = CCUIReferenceScreenBounds();
                if (CGRectGetWidth(v25) < 414.0)
                {
                  v26.origin.x = CCUIReferenceScreenBounds();
                  if (CGRectGetWidth(v26) < 393.0)
                  {
                    v27.origin.x = CCUIReferenceScreenBounds();
                    if (CGRectGetWidth(v27) < 390.0)
                    {
                      v28.origin.x = CCUIReferenceScreenBounds();
                      if (CGRectGetWidth(v28) < 375.0 || SBFEffectiveHomeButtonType() != 2)
                      {
                        v29.origin.x = CCUIReferenceScreenBounds();
                        if (CGRectGetWidth(v29) < 375.0)
                        {
                          v30.origin.x = CCUIReferenceScreenBounds();
                          if (CGRectGetWidth(v30) < 320.0)
                          {
                            v8 = 20.0;
                          }

                          else
                          {
                            v8 = 24.0;
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

      if (v12 >= 834.0)
      {
LABEL_34:
      }

      if (v11 >= 834.0)
      {
LABEL_36:
      }

      if (v9 >= 1024.0)
      {
      }
    }

    if (Width >= 1024.0)
    {
LABEL_40:
    }
  }

  else
  {
    v8 = 0.0;
    if (self->_shouldShowFooterButton)
    {
      [(CCUIMenuModuleItemView *)self->_footerButtonView intrinsicContentSize];
      v8 = v10;
    }
  }

  IsZero = BSFloatIsZero();
  result = 0.0;
  if ((IsZero & 1) == 0)
  {
    [(CCUIMenuModuleViewController *)self _separatorHeight];
    return v8 + v16;
  }

  return result;
}

- (double)_aggregateModuleHeight
{
  [(CCUIMenuModuleViewController *)self headerHeight];
  v4 = v3;
  [(UIView *)self->_contentView frame];
  v5 = v4 + CGRectGetHeight(v8);
  [(CCUIMenuModuleViewController *)self _footerHeight];
  return v5 + v6;
}

- (BOOL)_shouldShowFooterChin
{
  if (self->_shouldShowFooterButton)
  {
    return 0;
  }

  else
  {
    v4 = [(UIStackView *)self->_menuItemsContainer arrangedSubviews];
    if ([v4 count])
    {
      customContentViewScrolls = 1;
    }

    else
    {
      customContentViewScrolls = self->_customContentViewScrolls;
    }
  }

  return customContentViewScrolls;
}

- (CCUIContentModuleContext)contentModuleContext
{
  WeakRetained = objc_loadWeakRetained(&self->_contentModuleContext);

  return WeakRetained;
}

- (CCUIMenuItemsUpdating)menuUpdatingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_menuUpdatingDelegate);

  return WeakRetained;
}

@end