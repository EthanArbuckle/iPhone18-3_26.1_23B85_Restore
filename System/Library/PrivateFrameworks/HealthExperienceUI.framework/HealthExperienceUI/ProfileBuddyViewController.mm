@interface ProfileBuddyViewController
- (NSArray)dataEntryItems;
- (ProfileBuddyViewController)init;
- (ProfileBuddyViewController)initWithBuddyFlowUserInfo:(id)info;
- (ProfileBuddyViewController)initWithNibName:(id)name bundle:(id)bundle;
- (ProfileBuddyViewControllerDelegate)delegate;
- (id)_createTableFooterView;
- (id)_createTableHeaderView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_configureHeaderView:(id)view;
- (void)_setupObservers;
- (void)_updateForCurrentSizeCategory;
- (void)continueButtonTapped:(id)tapped;
- (void)dataEntryItemDonePressed:(id)pressed;
- (void)dataEntryItemNextPressed:(id)pressed;
- (void)dataEntryItemPrevPressed:(id)pressed;
- (void)dealloc;
- (void)focusItemAtIndex:(int64_t)index;
- (void)setUpHeaderAndFooterViewsIfNeeded;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ProfileBuddyViewController

- (ProfileBuddyViewController)init
{
  v3 = [MEMORY[0x1E69A4010] buddyFlowUserInfoWithDemographicsInformation:0];
  v4 = [(ProfileBuddyViewController *)self initWithBuddyFlowUserInfo:v3];

  return v4;
}

- (ProfileBuddyViewController)initWithBuddyFlowUserInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = ProfileBuddyViewController;
  v6 = [(ProfileBuddyViewController *)&v9 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userInfo, info);
    v7->_hasSetUpHeaderAndFooterViews = 0;
  }

  return v7;
}

- (ProfileBuddyViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

  v4.receiver = self;
  v4.super_class = ProfileBuddyViewController;
  [(ProfileBuddyViewController *)&v4 dealloc];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = ProfileBuddyViewController;
  [(ProfileBuddyViewController *)&v10 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(ProfileBuddyViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];
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
      defaultDataEntryItems = [dataEntryItems defaultDataEntryItems];
      v5 = self->_dataEntryItems;
      self->_dataEntryItems = defaultDataEntryItems;

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

- (void)continueButtonTapped:(id)tapped
{
  view = [(ProfileBuddyViewController *)self view];
  [view endEditing:1];

  delegate = [(ProfileBuddyViewController *)self delegate];
  [delegate profileBuddyViewControllerDidTapContinue:self];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ProfileBuddyViewController;
  [(HKTableViewController *)&v6 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(ProfileBuddyViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  tableView = [(ProfileBuddyViewController *)self tableView];
  [tableView setKeyboardDismissMode:1];

  [(ProfileBuddyViewController *)self _updateForCurrentSizeCategory];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = ProfileBuddyViewController;
  [(ProfileBuddyViewController *)&v10 viewWillAppear:appear];
  [(ProfileBuddyViewController *)self setUpHeaderAndFooterViewsIfNeeded];
  navigationController = [(ProfileBuddyViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:0];

  navigationController2 = [(ProfileBuddyViewController *)self navigationController];
  navigationBar = [navigationController2 navigationBar];
  [navigationBar _setHidesShadow:1];

  navigationController3 = [(ProfileBuddyViewController *)self navigationController];
  navigationBar2 = [navigationController3 navigationBar];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [navigationBar2 setBarTintColor:systemBackgroundColor];
}

- (void)setUpHeaderAndFooterViewsIfNeeded
{
  if (!self->_hasSetUpHeaderAndFooterViews)
  {
    _createTableHeaderView = [(ProfileBuddyViewController *)self _createTableHeaderView];
    headerView = self->_headerView;
    self->_headerView = _createTableHeaderView;

    _createTableFooterView = [(ProfileBuddyViewController *)self _createTableFooterView];
    footerView = self->_footerView;
    self->_footerView = _createTableFooterView;

    v7 = self->_headerView;
    tableView = [(ProfileBuddyViewController *)self tableView];
    [tableView setTableHeaderView:v7];

    v9 = self->_footerView;
    tableView2 = [(ProfileBuddyViewController *)self tableView];
    [tableView2 setTableFooterView:v9];

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
    tableView = [(ProfileBuddyViewController *)self tableView];
    [tableView setRowHeight:v5];

    tableView2 = [(ProfileBuddyViewController *)self tableView];
    [tableView2 setEstimatedRowHeight:v4];
  }

  else
  {
    tableView2 = [(ProfileBuddyViewController *)self tableView];
    [tableView2 setRowHeight:v4];
  }

  [(ProfileBuddyViewController *)self _configureHeaderView:self->_headerView];
  tableView3 = [(ProfileBuddyViewController *)self tableView];
  [tableView3 reloadData];
}

- (id)_createTableHeaderView
{
  view = [(ProfileBuddyViewController *)self view];
  [view frame];
  Height = CGRectGetHeight(v17);
  view2 = [(ProfileBuddyViewController *)self view];
  [view2 frame];
  v7 = (Height + v6) * 0.33 + -64.0;

  if (v7 < 150.0)
  {
    v7 = 150.0;
  }

  tableView = [(ProfileBuddyViewController *)self tableView];
  [tableView frame];
  Width = CGRectGetWidth(v18);

  v10 = [objc_alloc(MEMORY[0x1E69A44F8]) initWithTopInset:self parentViewController:v7];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v12 = [mainBundle localizedStringForKey:@"HEALTH_DETAILS do not loc" value:&stru_1F3823B88 table:0];
  [v10 setTitleText:v12];

  widthAnchor = [v10 widthAnchor];
  v14 = [widthAnchor constraintEqualToConstant:Width];
  [v14 setActive:1];

  [(ProfileBuddyViewController *)self _configureHeaderView:v10];

  return v10;
}

- (void)_configureHeaderView:(id)view
{
  v4 = MEMORY[0x1E696AAE8];
  viewCopy = view;
  mainBundle = [v4 mainBundle];
  v6 = [mainBundle localizedStringForKey:@"HEALTH_DETAILS_DESCRIPTION do not loc" value:&stru_1F3823B88 table:0];
  [viewCopy setBodyText:v6];

  [viewCopy setBodyTextAlignment:0];
  tableView = [(ProfileBuddyViewController *)self tableView];
  [tableView frame];
  [viewCopy systemLayoutSizeFittingSize:{v8, *(MEMORY[0x1E69DE090] + 8)}];
  v10 = v9;
  v12 = v11;

  [viewCopy setFrame:{0.0, 0.0, v10, v12}];
  [viewCopy setBodyTextAlignment:1];
}

- (id)_createTableFooterView
{
  tableView = [(ProfileBuddyViewController *)self tableView];
  [tableView frame];
  Width = CGRectGetWidth(v9);

  v5 = [objc_alloc(MEMORY[0x1E69A4008]) initWithTarget:self action:sel_continueButtonTapped_ bottomInset:1 width:40.0 isLastScreen:Width];
  continueButton = [v5 continueButton];
  [continueButton addTarget:self action:sel_continueButtonTapped_ forEvents:64];

  return v5;
}

- (void)dataEntryItemDonePressed:(id)pressed
{
  view = [(ProfileBuddyViewController *)self view];
  [view endEditing:0];
}

- (void)dataEntryItemPrevPressed:(id)pressed
{
  v4 = [(NSArray *)self->_dataEntryItems indexOfObject:pressed];
  if (v4 <= 0)
  {
    v4 = [(NSArray *)self->_dataEntryItems count];
  }

  [(ProfileBuddyViewController *)self focusItemAtIndex:v4 - 1];
}

- (void)dataEntryItemNextPressed:(id)pressed
{
  v4 = [(NSArray *)self->_dataEntryItems indexOfObject:pressed];
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

- (void)focusItemAtIndex:(int64_t)index
{
  v7 = [(NSArray *)self->_dataEntryItems objectAtIndexedSubscript:?];
  [v7 beginEditing];
  v5 = [MEMORY[0x1E696AC88] indexPathForRow:index inSection:0];
  tableView = [(ProfileBuddyViewController *)self tableView];
  [tableView scrollToRowAtIndexPath:v5 atScrollPosition:3 animated:1];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(ProfileBuddyViewController *)self dataEntryItems:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  dataEntryItems = [(ProfileBuddyViewController *)self dataEntryItems];
  v7 = [pathCopy row];

  v8 = [dataEntryItems objectAtIndex:v7];

  cell = [v8 cell];

  return cell;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  dataEntryItems = [(ProfileBuddyViewController *)self dataEntryItems];
  v8 = [pathCopy row];

  v9 = [dataEntryItems objectAtIndex:v8];

  [v9 beginEditing];
}

- (ProfileBuddyViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end