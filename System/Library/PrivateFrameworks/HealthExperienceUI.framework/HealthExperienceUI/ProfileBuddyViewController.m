@interface ProfileBuddyViewController
- (NSArray)dataEntryItems;
- (ProfileBuddyViewController)init;
- (ProfileBuddyViewController)initWithBuddyFlowUserInfo:(id)a3;
- (ProfileBuddyViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (ProfileBuddyViewControllerDelegate)delegate;
- (id)_createTableFooterView;
- (id)_createTableHeaderView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_configureHeaderView:(id)a3;
- (void)_setupObservers;
- (void)_updateForCurrentSizeCategory;
- (void)continueButtonTapped:(id)a3;
- (void)dataEntryItemDonePressed:(id)a3;
- (void)dataEntryItemNextPressed:(id)a3;
- (void)dataEntryItemPrevPressed:(id)a3;
- (void)dealloc;
- (void)focusItemAtIndex:(int64_t)a3;
- (void)setUpHeaderAndFooterViewsIfNeeded;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ProfileBuddyViewController

- (ProfileBuddyViewController)init
{
  v3 = [MEMORY[0x1E69A4010] buddyFlowUserInfoWithDemographicsInformation:0];
  v4 = [(ProfileBuddyViewController *)self initWithBuddyFlowUserInfo:v3];

  return v4;
}

- (ProfileBuddyViewController)initWithBuddyFlowUserInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ProfileBuddyViewController;
  v6 = [(ProfileBuddyViewController *)&v9 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userInfo, a3);
    v7->_hasSetUpHeaderAndFooterViews = 0;
  }

  return v7;
}

- (ProfileBuddyViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

  v4.receiver = self;
  v4.super_class = ProfileBuddyViewController;
  [(ProfileBuddyViewController *)&v4 dealloc];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ProfileBuddyViewController;
  [(ProfileBuddyViewController *)&v10 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(ProfileBuddyViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__ProfileBuddyViewController_traitCollectionDidChange___block_invoke;
      block[3] = &unk_1E7EEB0F0;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)_setupObservers
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];
}

- (NSArray)dataEntryItems
{
  v17 = *MEMORY[0x1E69E9840];
  dataEntryItems = self->_dataEntryItems;
  if (!dataEntryItems)
  {
    dataEntryItems = self->_userInfo;
    if (dataEntryItems)
    {
      v4 = [dataEntryItems defaultDataEntryItems];
      v5 = self->_dataEntryItems;
      self->_dataEntryItems = v4;

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = self->_dataEntryItems;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v12 + 1) + 8 * i) setToolbarDelegate:{self, v12}];
          }

          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }

      dataEntryItems = self->_dataEntryItems;
    }
  }

  return dataEntryItems;
}

- (void)continueButtonTapped:(id)a3
{
  v4 = [(ProfileBuddyViewController *)self view];
  [v4 endEditing:1];

  v5 = [(ProfileBuddyViewController *)self delegate];
  [v5 profileBuddyViewControllerDidTapContinue:self];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ProfileBuddyViewController;
  [(HKTableViewController *)&v6 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(ProfileBuddyViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(ProfileBuddyViewController *)self tableView];
  [v5 setKeyboardDismissMode:1];

  [(ProfileBuddyViewController *)self _updateForCurrentSizeCategory];
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = ProfileBuddyViewController;
  [(ProfileBuddyViewController *)&v10 viewWillAppear:a3];
  [(ProfileBuddyViewController *)self setUpHeaderAndFooterViewsIfNeeded];
  v4 = [(ProfileBuddyViewController *)self navigationController];
  [v4 setNavigationBarHidden:0 animated:0];

  v5 = [(ProfileBuddyViewController *)self navigationController];
  v6 = [v5 navigationBar];
  [v6 _setHidesShadow:1];

  v7 = [(ProfileBuddyViewController *)self navigationController];
  v8 = [v7 navigationBar];
  v9 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v8 setBarTintColor:v9];
}

- (void)setUpHeaderAndFooterViewsIfNeeded
{
  if (!self->_hasSetUpHeaderAndFooterViews)
  {
    v3 = [(ProfileBuddyViewController *)self _createTableHeaderView];
    headerView = self->_headerView;
    self->_headerView = v3;

    v5 = [(ProfileBuddyViewController *)self _createTableFooterView];
    footerView = self->_footerView;
    self->_footerView = v5;

    v7 = self->_headerView;
    v8 = [(ProfileBuddyViewController *)self tableView];
    [v8 setTableHeaderView:v7];

    v9 = self->_footerView;
    v10 = [(ProfileBuddyViewController *)self tableView];
    [v10 setTableFooterView:v9];

    self->_hasSetUpHeaderAndFooterViews = 1;
  }
}

- (void)_updateForCurrentSizeCategory
{
  v9 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] symbolicTraits:2];
  [v9 _scaledValueForValue:60.0];
  v4 = v3;
  if (HKUIApplicationIsUsingAccessibilityContentSizeCategory())
  {
    v5 = *MEMORY[0x1E69DE3D0];
    v6 = [(ProfileBuddyViewController *)self tableView];
    [v6 setRowHeight:v5];

    v7 = [(ProfileBuddyViewController *)self tableView];
    [v7 setEstimatedRowHeight:v4];
  }

  else
  {
    v7 = [(ProfileBuddyViewController *)self tableView];
    [v7 setRowHeight:v4];
  }

  [(ProfileBuddyViewController *)self _configureHeaderView:self->_headerView];
  v8 = [(ProfileBuddyViewController *)self tableView];
  [v8 reloadData];
}

- (id)_createTableHeaderView
{
  v3 = [(ProfileBuddyViewController *)self view];
  [v3 frame];
  Height = CGRectGetHeight(v17);
  v5 = [(ProfileBuddyViewController *)self view];
  [v5 frame];
  v7 = (Height + v6) * 0.33 + -64.0;

  if (v7 < 150.0)
  {
    v7 = 150.0;
  }

  v8 = [(ProfileBuddyViewController *)self tableView];
  [v8 frame];
  Width = CGRectGetWidth(v18);

  v10 = [objc_alloc(MEMORY[0x1E69A44F8]) initWithTopInset:self parentViewController:v7];
  v11 = [MEMORY[0x1E696AAE8] mainBundle];
  v12 = [v11 localizedStringForKey:@"HEALTH_DETAILS do not loc" value:&stru_1F3823B88 table:0];
  [v10 setTitleText:v12];

  v13 = [v10 widthAnchor];
  v14 = [v13 constraintEqualToConstant:Width];
  [v14 setActive:1];

  [(ProfileBuddyViewController *)self _configureHeaderView:v10];

  return v10;
}

- (void)_configureHeaderView:(id)a3
{
  v4 = MEMORY[0x1E696AAE8];
  v13 = a3;
  v5 = [v4 mainBundle];
  v6 = [v5 localizedStringForKey:@"HEALTH_DETAILS_DESCRIPTION do not loc" value:&stru_1F3823B88 table:0];
  [v13 setBodyText:v6];

  [v13 setBodyTextAlignment:0];
  v7 = [(ProfileBuddyViewController *)self tableView];
  [v7 frame];
  [v13 systemLayoutSizeFittingSize:{v8, *(MEMORY[0x1E69DE090] + 8)}];
  v10 = v9;
  v12 = v11;

  [v13 setFrame:{0.0, 0.0, v10, v12}];
  [v13 setBodyTextAlignment:1];
}

- (id)_createTableFooterView
{
  v3 = [(ProfileBuddyViewController *)self tableView];
  [v3 frame];
  Width = CGRectGetWidth(v9);

  v5 = [objc_alloc(MEMORY[0x1E69A4008]) initWithTarget:self action:sel_continueButtonTapped_ bottomInset:1 width:40.0 isLastScreen:Width];
  v6 = [v5 continueButton];
  [v6 addTarget:self action:sel_continueButtonTapped_ forEvents:64];

  return v5;
}

- (void)dataEntryItemDonePressed:(id)a3
{
  v3 = [(ProfileBuddyViewController *)self view];
  [v3 endEditing:0];
}

- (void)dataEntryItemPrevPressed:(id)a3
{
  v4 = [(NSArray *)self->_dataEntryItems indexOfObject:a3];
  if (v4 <= 0)
  {
    v4 = [(NSArray *)self->_dataEntryItems count];
  }

  [(ProfileBuddyViewController *)self focusItemAtIndex:v4 - 1];
}

- (void)dataEntryItemNextPressed:(id)a3
{
  v4 = [(NSArray *)self->_dataEntryItems indexOfObject:a3];
  if (v4 + 1 < [(NSArray *)self->_dataEntryItems count])
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  [(ProfileBuddyViewController *)self focusItemAtIndex:v5];
}

- (void)focusItemAtIndex:(int64_t)a3
{
  v7 = [(NSArray *)self->_dataEntryItems objectAtIndexedSubscript:?];
  [v7 beginEditing];
  v5 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:0];
  v6 = [(ProfileBuddyViewController *)self tableView];
  [v6 scrollToRowAtIndexPath:v5 atScrollPosition:3 animated:1];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(ProfileBuddyViewController *)self dataEntryItems:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ProfileBuddyViewController *)self dataEntryItems];
  v7 = [v5 row];

  v8 = [v6 objectAtIndex:v7];

  v9 = [v8 cell];

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = [(ProfileBuddyViewController *)self dataEntryItems];
  v8 = [v6 row];

  v9 = [v7 objectAtIndex:v8];

  [v9 beginEditing];
}

- (ProfileBuddyViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end