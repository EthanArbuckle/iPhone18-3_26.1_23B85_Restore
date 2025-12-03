@interface CompletionListTableViewController
+ (id)tableViewCellForSizeEstimation;
+ (void)configureCell:(id)cell backgroundMode:(int64_t)mode separatorStyle:(int)style shouldHaveTopPadding:(BOOL)padding configurationStateDidChangeCallback:(id)callback;
- (CompletionListTableViewController)init;
- (CompletionListTableViewDataSource)dataSource;
- (UITableViewHeaderFooterView)defaultHeaderFooterView;
- (UITableViewHeaderFooterView)recentSearchesHeaderFooterView;
- (id)backgroundColorUsingTranslucentAppearance:(BOOL)appearance;
- (void)_updateTableViewContentInset;
- (void)_updateWebSearchTipProposedHeightForTableViewWidth:(double)width;
- (void)keyboardDidChangeFrame:(id)frame;
- (void)setShowsWebSearchTipIfExists:(BOOL)exists;
- (void)setWebSearchTipView:(id)view;
- (void)updateContentInsets;
- (void)updateKeyboardBottomInsetFromKeyboardFrame:(CGRect)frame;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CompletionListTableViewController

+ (void)configureCell:(id)cell backgroundMode:(int64_t)mode separatorStyle:(int)style shouldHaveTopPadding:(BOOL)padding configurationStateDidChangeCallback:(id)callback
{
  cellCopy = cell;
  callbackCopy = callback;
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
  styleCopy = style;
  v14 = callbackCopy;
  v29 = v14;
  v15 = _Block_copy(aBlock);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __138__CompletionListTableViewController_configureCell_backgroundMode_separatorStyle_shouldHaveTopPadding_configurationStateDidChangeCallback___block_invoke_2;
  v24[3] = &unk_2781DB6A0;
  if (mode == 1 && padding)
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
  if (mode == 1)
  {
    v21 = v18;
  }

  else
  {
    v21 = v19;
  }

  if (mode)
  {
    v22 = v21;
  }

  else
  {
    v22 = v15;
  }

  [cellCopy setConfigurationUpdateHandler:v22];
  if (objc_opt_respondsToSelector())
  {
    [cellCopy setCustomEdgeInsets:{v16, 0.0, 0.0, 0.0}];
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
  navigationItem = [(CompletionListTableViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];
  tableView = [(CompletionListTableViewController *)self tableView];
  v5 = [MEMORY[0x277D75C80] _traitCollectionWithVibrancy:0];
  [tableView _setLocalOverrideTraitCollection:v5];

  [tableView setAccessibilityIdentifier:@"CompletionListTableView"];
  [tableView _setFirstResponderKeyboardAvoidanceEnabled:0];
  [tableView setKeyboardDismissMode:2];
  [tableView setSectionFooterHeight:0.0];
  [tableView _setSectionContentInsetFollowsLayoutMargins:0];
  [tableView _setSectionContentInset:{0.0, 16.0, 0.0, 16.0}];
  [tableView _setSectionCornerRadius:0.0];
  [tableView _setHeaderAndFooterViewsFloat:0];
  [tableView setSectionHeaderTopPadding:0.0];
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    [tableView setSeparatorStyle:0];
  }

  [tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"CatalogViewControllerTableHeader"];
  [tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"RecentSearchesTableHeader"];
  v6 = objc_alloc(MEMORY[0x277D763C8]);
  [tableView bounds];
  v7 = [v6 initWithFrame:?];
  headerBackdropCaptureView = self->_headerBackdropCaptureView;
  self->_headerBackdropCaptureView = v7;

  captureGroup = [(_UIVisualEffectBackdropView *)self->_headerBackdropCaptureView captureGroup];
  [captureGroup setGroupName:@"completion-list-header"];

  [(_UIVisualEffectBackdropView *)self->_headerBackdropCaptureView setRenderMode:1];
  [tableView setBackgroundView:self->_headerBackdropCaptureView];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardDidChangeFrame_ name:*MEMORY[0x277D76C60] object:0];
  [defaultCenter addObserver:self selector:sel_keyboardDidChangeFrame_ name:*MEMORY[0x277D76B98] object:0];
  [defaultCenter addObserver:self selector:sel_keyboardDidChangeFrame_ name:*MEMORY[0x277D76C50] object:0];
  v11 = [[CompletionListTableViewDataSource alloc] initWithTableView:tableView];
  dataSource = self->_dataSource;
  self->_dataSource = v11;
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = CompletionListTableViewController;
  [(CompletionListTableViewController *)&v4 viewIsAppearing:appearing];
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
    tableView = [(CompletionListTableViewController *)self tableView];
    if ([(CompletionListTableViewController *)self _isInPopoverPresentation])
    {
      v4 = *MEMORY[0x277CBF348];
      v5 = *(MEMORY[0x277CBF348] + 8);
    }

    else
    {
      [tableView adjustedContentInset];
      v5 = -v6;
      v4 = 0.0;
    }

    [tableView setContentOffset:{v4, v5}];
  }
}

- (UITableViewHeaderFooterView)defaultHeaderFooterView
{
  tableView = [(CompletionListTableViewController *)self tableView];
  v3 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"CatalogViewControllerTableHeader"];

  return v3;
}

- (UITableViewHeaderFooterView)recentSearchesHeaderFooterView
{
  tableView = [(CompletionListTableViewController *)self tableView];
  v3 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"RecentSearchesTableHeader"];

  return v3;
}

- (void)updateContentInsets
{
  [MEMORY[0x277D75830] visiblePeripheralFrame];

  [(CompletionListTableViewController *)self updateKeyboardBottomInsetFromKeyboardFrame:?];
}

- (void)setWebSearchTipView:(id)view
{
  viewCopy = view;
  if (![(CompletionListTableViewController *)self _showingWebSearchTip])
  {
    objc_storeStrong(&self->_webSearchTipView, view);
  }
}

- (void)setShowsWebSearchTipIfExists:(BOOL)exists
{
  v24[4] = *MEMORY[0x277D85DE8];
  if (self->_showsWebSearchTipIfExists != exists)
  {
    self->_showsWebSearchTipIfExists = exists;
    if (self->_webSearchTipView)
    {
      tableView = [(CompletionListTableViewController *)self tableView];
      if (self->_showsWebSearchTipIfExists)
      {
        v5 = objc_alloc_init(MEMORY[0x277D75D18]);
        [tableView setTableHeaderView:v5];
        [(UIView *)self->_webSearchTipView setTranslatesAutoresizingMaskIntoConstraints:0];
        [v5 addSubview:self->_webSearchTipView];
        [MEMORY[0x277D756E0] groupedHeaderConfiguration];
        v6 = v23 = tableView;
        [v6 directionalLayoutMargins];
        v8 = v7;

        v18 = MEMORY[0x277CCAAD0];
        leftAnchor = [(UIView *)self->_webSearchTipView leftAnchor];
        leftAnchor2 = [v5 leftAnchor];
        v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:16.0];
        v24[0] = v20;
        rightAnchor = [(UIView *)self->_webSearchTipView rightAnchor];
        rightAnchor2 = [v5 rightAnchor];
        v9 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-16.0];
        v24[1] = v9;
        topAnchor = [(UIView *)self->_webSearchTipView topAnchor];
        topAnchor2 = [v5 topAnchor];
        v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v8];
        v24[2] = v12;
        bottomAnchor = [(UIView *)self->_webSearchTipView bottomAnchor];
        bottomAnchor2 = [v5 bottomAnchor];
        v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v24[3] = v15;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
        [v18 activateConstraints:v16];

        tableView = v23;
        [v23 bounds];
        [(CompletionListTableViewController *)self _updateWebSearchTipProposedHeightForTableViewWidth:CGRectGetWidth(v25)];
        [v5 setBounds:{0.0, 0.0, 0.0, v8 + self->_webSearchTipProposedHeight}];
      }

      else
      {
        [(UIView *)self->_webSearchTipView removeFromSuperview];
        [tableView setTableHeaderView:0];
      }
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  width = size.width;
  v8.receiver = self;
  v8.super_class = CompletionListTableViewController;
  [(SFPopoverSizingTableViewController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  tableView = [(CompletionListTableViewController *)self tableView];
  [tableView bounds];
  v7 = CGRectGetWidth(v9);

  if (v7 != width)
  {
    [(CompletionListTableViewController *)self _updateWebSearchTipProposedHeightForTableViewWidth:width];
  }
}

- (void)_updateWebSearchTipProposedHeightForTableViewWidth:(double)width
{
  _showingWebSearchTip = [(CompletionListTableViewController *)self _showingWebSearchTip];
  v8 = 0.0;
  if (_showingWebSearchTip)
  {
    LODWORD(v6) = 1148846080;
    LODWORD(v7) = 1112014848;
    [(UIView *)self->_webSearchTipView systemLayoutSizeFittingSize:width + -32.0 withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:v6, v7];
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
  textLabel = [v2 textLabel];
  [textLabel setText:@"A"];

  detailTextLabel = [v2 detailTextLabel];
  [detailTextLabel setText:@"A"];

  return v2;
}

- (id)backgroundColorUsingTranslucentAppearance:(BOOL)appearance
{
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  v5 = systemBackgroundColor;
  if (appearance)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    clearColor = systemBackgroundColor;
  }

  v7 = clearColor;

  return v7;
}

- (void)keyboardDidChangeFrame:(id)frame
{
  userInfo = [frame userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];

  v5 = v6;
  if (v6)
  {
    [v6 CGRectValue];
    [(CompletionListTableViewController *)self updateKeyboardBottomInsetFromKeyboardFrame:?];
    v5 = v6;
  }
}

- (void)updateKeyboardBottomInsetFromKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = 0.0;
  if (!CGRectIsEmpty(frame))
  {
    tableView = [(CompletionListTableViewController *)self tableView];
    [tableView convertRect:0 fromView:{x, y, width, height}];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    tableView2 = [(CompletionListTableViewController *)self tableView];
    [tableView2 bounds];
    MaxY = CGRectGetMaxY(v23);
    v24.origin.x = v11;
    v24.origin.y = v13;
    v24.size.width = v15;
    v24.size.height = v17;
    if (MaxY >= CGRectGetMinY(v24))
    {
      tableView3 = [(CompletionListTableViewController *)self tableView];
      [tableView3 bounds];
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
  tableView = [(CompletionListTableViewController *)self tableView];
  if ([(CompletionListTableViewController *)self _isInPopoverPresentation])
  {
    v3 = *MEMORY[0x277D29078];
    keyboardBottomInset = self->_keyboardBottomInset;
    v5 = fmax(*MEMORY[0x277D29078], keyboardBottomInset);
  }

  else
  {
    [tableView safeAreaInsets];
    v3 = 0.0;
    keyboardBottomInset = fmax(self->_keyboardBottomInset - v6, 0.0);
    v5 = keyboardBottomInset;
  }

  [objc_opt_class() bottomContentPadding];
  [tableView setContentInset:{0.0, 0.0, keyboardBottomInset + v7, 0.0}];
  [tableView setVerticalScrollIndicatorInsets:{v3, 0.0, v5, 0.0}];
}

@end