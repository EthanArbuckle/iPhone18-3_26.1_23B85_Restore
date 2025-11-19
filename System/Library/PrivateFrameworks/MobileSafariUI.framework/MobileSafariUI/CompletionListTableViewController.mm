@interface CompletionListTableViewController
+ (id)tableViewCellForSizeEstimation;
+ (void)configureCell:(id)a3 backgroundMode:(int64_t)a4 separatorStyle:(int)a5 shouldHaveTopPadding:(BOOL)a6 configurationStateDidChangeCallback:(id)a7;
- (CompletionListTableViewController)init;
- (CompletionListTableViewDataSource)dataSource;
- (UITableViewHeaderFooterView)defaultHeaderFooterView;
- (UITableViewHeaderFooterView)recentSearchesHeaderFooterView;
- (id)backgroundColorUsingTranslucentAppearance:(BOOL)a3;
- (void)_updateTableViewContentInset;
- (void)_updateWebSearchTipProposedHeightForTableViewWidth:(double)a3;
- (void)keyboardDidChangeFrame:(id)a3;
- (void)setShowsWebSearchTipIfExists:(BOOL)a3;
- (void)setWebSearchTipView:(id)a3;
- (void)updateContentInsets;
- (void)updateKeyboardBottomInsetFromKeyboardFrame:(CGRect)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CompletionListTableViewController

+ (void)configureCell:(id)a3 backgroundMode:(int64_t)a4 separatorStyle:(int)a5 shouldHaveTopPadding:(BOOL)a6 configurationStateDidChangeCallback:(id)a7
{
  v11 = a3;
  v12 = a7;
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    v13 = 22.0;
  }

  else
  {
    v13 = 20.0;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __138__CompletionListTableViewController_configureCell_backgroundMode_separatorStyle_shouldHaveTopPadding_configurationStateDidChangeCallback___block_invoke;
  aBlock[3] = &unk_2781DB678;
  v30 = v13;
  v31 = a5;
  v14 = v12;
  v29 = v14;
  v15 = _Block_copy(aBlock);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __138__CompletionListTableViewController_configureCell_backgroundMode_separatorStyle_shouldHaveTopPadding_configurationStateDidChangeCallback___block_invoke_2;
  v24[3] = &unk_2781DB6A0;
  if (a4 == 1 && a6)
  {
    v16 = 8.0;
  }

  else
  {
    v16 = 0.0;
  }

  v26 = v13;
  v27 = v16;
  v17 = v14;
  v25 = v17;
  v18 = _Block_copy(v24);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __138__CompletionListTableViewController_configureCell_backgroundMode_separatorStyle_shouldHaveTopPadding_configurationStateDidChangeCallback___block_invoke_3;
  v23[3] = &__block_descriptor_40_e54_v24__0__UITableViewCell_8__UICellConfigurationState_16l;
  *&v23[4] = v13;
  v19 = _Block_copy(v23);
  v20 = v19;
  if (a4 == 1)
  {
    v21 = v18;
  }

  else
  {
    v21 = v19;
  }

  if (a4)
  {
    v22 = v21;
  }

  else
  {
    v22 = v15;
  }

  [v11 setConfigurationUpdateHandler:v22];
  if (objc_opt_respondsToSelector())
  {
    [v11 setCustomEdgeInsets:{v16, 0.0, 0.0, 0.0}];
  }
}

void __138__CompletionListTableViewController_configureCell_backgroundMode_separatorStyle_shouldHaveTopPadding_configurationStateDidChangeCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = [MEMORY[0x277D751C0] clearConfiguration];
  if ([v5 isHighlighted])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isSelected];
  }

  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [MEMORY[0x277D75348] tertiarySystemFillColor];
    [v6 setBackgroundColor:v9];
  }

  [v6 setCornerRadius:*(a1 + 40)];
  [v17 setBackgroundConfiguration:v6];
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    [v17 setSeparatorStyle:0];
  }

  else
  {
    v10 = *(a1 + 48);
    if (v10 == 1)
    {
      [v17 setSeparatorStyle:0];
      [v17 bounds];
      CGRectGetWidth(v19);
      UIEdgeInsetsMakeWithEdges();
    }

    else
    {
      v11 = v17;
      if (v10 != 2)
      {
        goto LABEL_17;
      }

      [v17 setSeparatorStyle:1];
      +[CompletionListTableViewCell imageWidthSpace];
      v13 = v12;
      v14 = 0.0;
      v15 = 0.0;
      v16 = 16.0;
    }

    [v17 setSeparatorInset:{v14, v13, v15, v16}];
  }

  v11 = v17;
LABEL_17:
  [v11 setSelectedBackgroundView:0];
  (*(*(a1 + 32) + 16))();
}

void __138__CompletionListTableViewController_configureCell_backgroundMode_separatorStyle_shouldHaveTopPadding_configurationStateDidChangeCallback___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = [v17 backgroundConfiguration];
  v7 = [v6 customView];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v7 setClipsToBounds:0];
  }

  if ([v5 isHighlighted])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v5 isSelected];
  }

  if (![MEMORY[0x277D49A08] isSolariumEnabled] || (objc_msgSend(v17, "traitCollection"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "sf_usesVibrantAppearance"), v9, (v10 & 1) != 0))
  {
    if (v8)
    {
      [MEMORY[0x277D75348] tertiarySystemFillColor];
    }

    else
    {
      [MEMORY[0x277D75348] sf_colorNamed:@"CompletionListPlainPlatterBackgroundColor"];
    }
    v11 = ;
    [v7 setBackgroundColor:v11];

    v12 = [v7 layer];
    [v12 setBorderWidth:1.0];

    v13 = [MEMORY[0x277D75348] sf_colorNamed:@"CompletionListPlainPlatterBorderColor"];
    v14 = [v13 CGColor];
    v15 = [v7 layer];
    [v15 setBorderColor:v14];

    goto LABEL_12;
  }

  [v7 safari_setFlexibleGlassBackgroundEnabled:1];
  if (v8)
  {
    v13 = [MEMORY[0x277D75348] tertiarySystemFillColor];
    [v7 setBackgroundColor:v13];
LABEL_12:

    goto LABEL_13;
  }

  [v7 setBackgroundColor:0];
LABEL_13:
  [v7 _setContinuousCornerRadius:*(a1 + 40)];
  v16 = [MEMORY[0x277D751C0] clearConfiguration];
  [v16 setCustomView:v7];
  [v16 setBackgroundInsets:{*(a1 + 48), 0.0, 0.0, 0.0}];
  [v17 setBackgroundConfiguration:v16];
  [v17 setSeparatorStyle:0];
  [v17 bounds];
  CGRectGetWidth(v19);
  UIEdgeInsetsMakeWithEdges();
  [v17 setSeparatorInset:?];
  [v17 setSelectedBackgroundView:0];
  (*(*(a1 + 32) + 16))();
}

void __138__CompletionListTableViewController_configureCell_backgroundMode_separatorStyle_shouldHaveTopPadding_configurationStateDidChangeCallback___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = [v8 backgroundView];
  [v4 _setContinuousCornerRadius:v3];

  [v8 setBackgroundColor:0];
  v5 = [v8 selectedBackgroundView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v7 = objc_alloc_init(HaloSelectedBackgroundView);
    [v8 setSelectedBackgroundView:v7];
  }
}

- (CompletionListTableViewController)init
{
  v3.receiver = self;
  v3.super_class = CompletionListTableViewController;
  return [(CompletionListTableViewController *)&v3 initWithStyle:0];
}

- (CompletionListTableViewDataSource)dataSource
{
  [(CompletionListTableViewController *)self loadViewIfNeeded];
  dataSource = self->_dataSource;

  return dataSource;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = CompletionListTableViewController;
  [(SFPopoverSizingTableViewController *)&v13 viewDidLoad];
  v3 = [(CompletionListTableViewController *)self navigationItem];
  [v3 setLargeTitleDisplayMode:2];
  v4 = [(CompletionListTableViewController *)self tableView];
  v5 = [MEMORY[0x277D75C80] _traitCollectionWithVibrancy:0];
  [v4 _setLocalOverrideTraitCollection:v5];

  [v4 setAccessibilityIdentifier:@"CompletionListTableView"];
  [v4 _setFirstResponderKeyboardAvoidanceEnabled:0];
  [v4 setKeyboardDismissMode:2];
  [v4 setSectionFooterHeight:0.0];
  [v4 _setSectionContentInsetFollowsLayoutMargins:0];
  [v4 _setSectionContentInset:{0.0, 16.0, 0.0, 16.0}];
  [v4 _setSectionCornerRadius:0.0];
  [v4 _setHeaderAndFooterViewsFloat:0];
  [v4 setSectionHeaderTopPadding:0.0];
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    [v4 setSeparatorStyle:0];
  }

  [v4 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"CatalogViewControllerTableHeader"];
  [v4 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"RecentSearchesTableHeader"];
  v6 = objc_alloc(MEMORY[0x277D763C8]);
  [v4 bounds];
  v7 = [v6 initWithFrame:?];
  headerBackdropCaptureView = self->_headerBackdropCaptureView;
  self->_headerBackdropCaptureView = v7;

  v9 = [(_UIVisualEffectBackdropView *)self->_headerBackdropCaptureView captureGroup];
  [v9 setGroupName:@"completion-list-header"];

  [(_UIVisualEffectBackdropView *)self->_headerBackdropCaptureView setRenderMode:1];
  [v4 setBackgroundView:self->_headerBackdropCaptureView];
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 addObserver:self selector:sel_keyboardDidChangeFrame_ name:*MEMORY[0x277D76C60] object:0];
  [v10 addObserver:self selector:sel_keyboardDidChangeFrame_ name:*MEMORY[0x277D76B98] object:0];
  [v10 addObserver:self selector:sel_keyboardDidChangeFrame_ name:*MEMORY[0x277D76C50] object:0];
  v11 = [[CompletionListTableViewDataSource alloc] initWithTableView:v4];
  dataSource = self->_dataSource;
  self->_dataSource = v11;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CompletionListTableViewController;
  [(CompletionListTableViewController *)&v4 viewIsAppearing:a3];
  [MEMORY[0x277D75830] visiblePeripheralFrame];
  [(CompletionListTableViewController *)self updateKeyboardBottomInsetFromKeyboardFrame:?];
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = CompletionListTableViewController;
  [(SFPopoverSizingTableViewController *)&v7 viewDidLayoutSubviews];
  if (self->_shouldResetScrollOffsetOnNextLayout)
  {
    self->_shouldResetScrollOffsetOnNextLayout = 0;
    v3 = [(CompletionListTableViewController *)self tableView];
    if ([(CompletionListTableViewController *)self _isInPopoverPresentation])
    {
      v4 = *MEMORY[0x277CBF348];
      v5 = *(MEMORY[0x277CBF348] + 8);
    }

    else
    {
      [v3 adjustedContentInset];
      v5 = -v6;
      v4 = 0.0;
    }

    [v3 setContentOffset:{v4, v5}];
  }
}

- (UITableViewHeaderFooterView)defaultHeaderFooterView
{
  v2 = [(CompletionListTableViewController *)self tableView];
  v3 = [v2 dequeueReusableHeaderFooterViewWithIdentifier:@"CatalogViewControllerTableHeader"];

  return v3;
}

- (UITableViewHeaderFooterView)recentSearchesHeaderFooterView
{
  v2 = [(CompletionListTableViewController *)self tableView];
  v3 = [v2 dequeueReusableHeaderFooterViewWithIdentifier:@"RecentSearchesTableHeader"];

  return v3;
}

- (void)updateContentInsets
{
  [MEMORY[0x277D75830] visiblePeripheralFrame];

  [(CompletionListTableViewController *)self updateKeyboardBottomInsetFromKeyboardFrame:?];
}

- (void)setWebSearchTipView:(id)a3
{
  v5 = a3;
  if (![(CompletionListTableViewController *)self _showingWebSearchTip])
  {
    objc_storeStrong(&self->_webSearchTipView, a3);
  }
}

- (void)setShowsWebSearchTipIfExists:(BOOL)a3
{
  v24[4] = *MEMORY[0x277D85DE8];
  if (self->_showsWebSearchTipIfExists != a3)
  {
    self->_showsWebSearchTipIfExists = a3;
    if (self->_webSearchTipView)
    {
      v4 = [(CompletionListTableViewController *)self tableView];
      if (self->_showsWebSearchTipIfExists)
      {
        v5 = objc_alloc_init(MEMORY[0x277D75D18]);
        [v4 setTableHeaderView:v5];
        [(UIView *)self->_webSearchTipView setTranslatesAutoresizingMaskIntoConstraints:0];
        [v5 addSubview:self->_webSearchTipView];
        [MEMORY[0x277D756E0] groupedHeaderConfiguration];
        v6 = v23 = v4;
        [v6 directionalLayoutMargins];
        v8 = v7;

        v18 = MEMORY[0x277CCAAD0];
        v22 = [(UIView *)self->_webSearchTipView leftAnchor];
        v21 = [v5 leftAnchor];
        v20 = [v22 constraintEqualToAnchor:v21 constant:16.0];
        v24[0] = v20;
        v19 = [(UIView *)self->_webSearchTipView rightAnchor];
        v17 = [v5 rightAnchor];
        v9 = [v19 constraintEqualToAnchor:v17 constant:-16.0];
        v24[1] = v9;
        v10 = [(UIView *)self->_webSearchTipView topAnchor];
        v11 = [v5 topAnchor];
        v12 = [v10 constraintEqualToAnchor:v11 constant:v8];
        v24[2] = v12;
        v13 = [(UIView *)self->_webSearchTipView bottomAnchor];
        v14 = [v5 bottomAnchor];
        v15 = [v13 constraintEqualToAnchor:v14];
        v24[3] = v15;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
        [v18 activateConstraints:v16];

        v4 = v23;
        [v23 bounds];
        [(CompletionListTableViewController *)self _updateWebSearchTipProposedHeightForTableViewWidth:CGRectGetWidth(v25)];
        [v5 setBounds:{0.0, 0.0, 0.0, v8 + self->_webSearchTipProposedHeight}];
      }

      else
      {
        [(UIView *)self->_webSearchTipView removeFromSuperview];
        [v4 setTableHeaderView:0];
      }
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  width = a3.width;
  v8.receiver = self;
  v8.super_class = CompletionListTableViewController;
  [(SFPopoverSizingTableViewController *)&v8 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v6 = [(CompletionListTableViewController *)self tableView];
  [v6 bounds];
  v7 = CGRectGetWidth(v9);

  if (v7 != width)
  {
    [(CompletionListTableViewController *)self _updateWebSearchTipProposedHeightForTableViewWidth:width];
  }
}

- (void)_updateWebSearchTipProposedHeightForTableViewWidth:(double)a3
{
  v5 = [(CompletionListTableViewController *)self _showingWebSearchTip];
  v8 = 0.0;
  if (v5)
  {
    LODWORD(v6) = 1148846080;
    LODWORD(v7) = 1112014848;
    [(UIView *)self->_webSearchTipView systemLayoutSizeFittingSize:a3 + -32.0 withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:v6, v7];
  }

  self->_webSearchTipProposedHeight = v8;
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = CompletionListTableViewController;
  [(CompletionListTableViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(CompletionListTableViewController *)self _updateTableViewContentInset];
}

+ (id)tableViewCellForSizeEstimation
{
  v2 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:0];
  v3 = [v2 textLabel];
  [v3 setText:@"A"];

  v4 = [v2 detailTextLabel];
  [v4 setText:@"A"];

  return v2;
}

- (id)backgroundColorUsingTranslucentAppearance:(BOOL)a3
{
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  v5 = v4;
  if (a3)
  {
    v6 = [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (void)keyboardDidChangeFrame:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKey:*MEMORY[0x277D76BB8]];

  v5 = v6;
  if (v6)
  {
    [v6 CGRectValue];
    [(CompletionListTableViewController *)self updateKeyboardBottomInsetFromKeyboardFrame:?];
    v5 = v6;
  }
}

- (void)updateKeyboardBottomInsetFromKeyboardFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = 0.0;
  if (!CGRectIsEmpty(a3))
  {
    v9 = [(CompletionListTableViewController *)self tableView];
    [v9 convertRect:0 fromView:{x, y, width, height}];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [(CompletionListTableViewController *)self tableView];
    [v18 bounds];
    MaxY = CGRectGetMaxY(v23);
    v24.origin.x = v11;
    v24.origin.y = v13;
    v24.size.width = v15;
    v24.size.height = v17;
    if (MaxY >= CGRectGetMinY(v24))
    {
      v20 = [(CompletionListTableViewController *)self tableView];
      [v20 bounds];
      v21 = CGRectGetMaxY(v25);
      v26.origin.x = v11;
      v26.origin.y = v13;
      v26.size.width = v15;
      v26.size.height = v17;
      v8 = v21 - CGRectGetMinY(v26);
    }
  }

  if (v8 != self->_keyboardBottomInset)
  {
    self->_keyboardBottomInset = v8;

    [(CompletionListTableViewController *)self _updateTableViewContentInset];
  }
}

- (void)_updateTableViewContentInset
{
  v8 = [(CompletionListTableViewController *)self tableView];
  if ([(CompletionListTableViewController *)self _isInPopoverPresentation])
  {
    v3 = *MEMORY[0x277D29078];
    keyboardBottomInset = self->_keyboardBottomInset;
    v5 = fmax(*MEMORY[0x277D29078], keyboardBottomInset);
  }

  else
  {
    [v8 safeAreaInsets];
    v3 = 0.0;
    keyboardBottomInset = fmax(self->_keyboardBottomInset - v6, 0.0);
    v5 = keyboardBottomInset;
  }

  [objc_opt_class() bottomContentPadding];
  [v8 setContentInset:{0.0, 0.0, keyboardBottomInset + v7, 0.0}];
  [v8 setVerticalScrollIndicatorInsets:{v3, 0.0, v5, 0.0}];
}

@end