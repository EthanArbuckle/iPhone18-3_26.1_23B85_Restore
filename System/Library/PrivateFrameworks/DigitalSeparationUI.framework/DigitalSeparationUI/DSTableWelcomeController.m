@interface DSTableWelcomeController
- (BOOL)isFiltering;
- (BOOL)isKeyboardActive;
- (BOOL)isSearchBarEmpty;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)addBorderedIcon:(id)a3;
- (void)hideButtonsIfSearching;
- (void)hideKeyboard;
- (void)hideNoResultsView;
- (void)hideNoSharingView;
- (void)presentErrorAlertController:(id)a3 okHandler:(id)a4;
- (void)presentErrorAlertWithTitle:(id)a3 message:(id)a4 continueHandler:(id)a5 tryAgainHandler:(id)a6;
- (void)setupSearchBar;
- (void)setupTableView;
- (void)showNoResultsViewWithSearchText:(id)a3;
- (void)showNoSharingViewWithText:(id)a3 image:(id)a4;
- (void)startContentSpinner;
- (void)stopContentSpinner;
- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation DSTableWelcomeController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = DSTableWelcomeController;
  [(OBTableWelcomeController *)&v5 viewDidLoad];
  if ([(DSTableWelcomeController *)self shouldShowSearchBar])
  {
    [(DSTableWelcomeController *)self setupSearchBar];
  }

  [(DSTableWelcomeController *)self setupTableView];
  v3 = [(OBTableWelcomeController *)self tableView];
  [v3 setEditing:1];

  v4 = [(OBTableWelcomeController *)self tableView];
  [v4 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"header"];
}

- (void)setupTableView
{
  v3 = objc_alloc_init(DSTableView);
  [(OBTableWelcomeController *)self setTableView:v3];

  v4 = [(OBTableWelcomeController *)self tableView];
  [v4 setDelegate:self];

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 setDataSource:self];
}

- (void)setupSearchBar
{
  v3 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
  searchController = self->_searchController;
  self->_searchController = v3;

  v5 = [(DSTableWelcomeController *)self searchController];
  [v5 setSearchResultsUpdater:self];

  v6 = [(DSTableWelcomeController *)self searchController];
  [v6 setObscuresBackgroundDuringPresentation:0];

  v7 = [(DSTableWelcomeController *)self searchController];
  v8 = [v7 searchBar];
  [v8 setPlaceholder:&stru_285BA4988];

  [(DSTableWelcomeController *)self setDefinesPresentationContext:1];
  v9 = [(DSTableWelcomeController *)self searchController];
  [v9 setDelegate:self];

  v10 = [(DSTableWelcomeController *)self searchController];
  v11 = [v10 searchBar];
  [v11 setShowsScopeBar:1];

  v12 = [(DSTableWelcomeController *)self searchController];
  v13 = [v12 searchBar];
  [v13 setDelegate:self];

  v14 = [(DSTableWelcomeController *)self searchController];
  v15 = [(OBBaseWelcomeController *)self navigationItem];
  [v15 setSearchController:v14];

  v16 = [(OBBaseWelcomeController *)self navigationItem];
  [v16 setHidesSearchBarWhenScrolling:0];

  if (_UISolariumEnabled())
  {
    v17 = [(OBBaseWelcomeController *)self navigationItem];
    [v17 setPreferredSearchBarPlacement:2];
  }
}

- (BOOL)isSearchBarEmpty
{
  v2 = [(DSTableWelcomeController *)self searchController];
  v3 = [v2 searchBar];
  v4 = [v3 text];
  v5 = [v4 length] == 0;

  return v5;
}

- (BOOL)isFiltering
{
  if ([(DSTableWelcomeController *)self isSearchBarEmpty])
  {
    return 0;
  }

  v4 = [(DSTableWelcomeController *)self searchController];
  v5 = [v4 isActive];

  return v5;
}

- (BOOL)isKeyboardActive
{
  v2 = [(DSTableWelcomeController *)self searchController];
  v3 = [v2 searchBar];
  v4 = [v3 searchTextField];
  v5 = [v4 isFirstResponder];

  return v5;
}

- (void)presentErrorAlertWithTitle:(id)a3 message:(id)a4 continueHandler:(id)a5 tryAgainHandler:(id)a6
{
  v10 = MEMORY[0x277D75110];
  v11 = a6;
  v12 = a5;
  v19 = [v10 alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v13 = MEMORY[0x277D750F8];
  v14 = DSUILocStringForKey(@"CONTINUE");
  v15 = [v13 actionWithTitle:v14 style:0 handler:v12];

  v16 = MEMORY[0x277D750F8];
  v17 = DSUILocStringForKey(@"TRY_AGAIN");
  v18 = [v16 actionWithTitle:v17 style:0 handler:v11];

  [v19 addAction:v15];
  [v19 addAction:v18];
  [(DSTableWelcomeController *)self presentViewController:v19 animated:1 completion:0];
}

- (void)presentErrorAlertController:(id)a3 okHandler:(id)a4
{
  v6 = MEMORY[0x277D750F8];
  v7 = a4;
  v8 = a3;
  v9 = DSUILocStringForKey(@"OK");
  v10 = [v6 actionWithTitle:v9 style:0 handler:v7];

  [v8 addAction:v10];
  [(DSTableWelcomeController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)hideKeyboard
{
  v3 = [(DSTableWelcomeController *)self searchController];
  v4 = [v3 searchBar];
  v5 = [v4 searchTextField];
  [v5 resignFirstResponder];

  v6 = [(DSTableWelcomeController *)self boldButton];
  [v6 setHidden:0];

  v7 = [(DSTableWelcomeController *)self linkButton];
  [v7 setHidden:{-[DSTableWelcomeController isModelEmpty](self, "isModelEmpty")}];
}

- (void)willPresentSearchController:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_hideKeyboard];
  tapGesture = self->_tapGesture;
  self->_tapGesture = v4;

  v6 = [(DSTableWelcomeController *)self tapGesture];
  [v6 setCancelsTouchesInView:0];

  v8 = [(DSTableWelcomeController *)self view];
  v7 = [(DSTableWelcomeController *)self tapGesture];
  [v8 addGestureRecognizer:v7];
}

- (void)willDismissSearchController:(id)a3
{
  v5 = [(OBTableWelcomeController *)self tableView];
  v4 = [(DSTableWelcomeController *)self tapGesture];
  [v5 removeGestureRecognizer:v4];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = [a3 dequeueReusableCellWithIdentifier:{@"DSCell", a4}];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75B48]);
  }

  return v4;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    v5 = 0;
  }

  else
  {
    if ([(DSTableWelcomeController *)self isSpinnerActive])
    {
      v5 = [(DSTableWelcomeController *)self spinner];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v7 = [(OBTableWelcomeController *)self tableView];
  v6 = [v7 cellForRowAtIndexPath:v5];

  [v6 setHighlighted:0];
}

- (void)startContentSpinner
{
  v3 = [(DSTableWelcomeController *)self spinner];
  [v3 startAnimating];

  v4 = [(DSTableWelcomeController *)self spinner];
  [v4 setHidesWhenStopped:1];

  [(DSTableWelcomeController *)self setIsSpinnerActive:1];
  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 reloadData];
}

- (void)stopContentSpinner
{
  v3 = [(DSTableWelcomeController *)self spinner];
  [v3 stopAnimating];

  [(DSTableWelcomeController *)self setIsSpinnerActive:0];
  v4 = [(OBTableWelcomeController *)self tableView];
  [v4 reloadData];
}

- (void)addBorderedIcon:(id)a3
{
  v4 = MEMORY[0x277D755E8];
  v5 = a3;
  v28 = [[v4 alloc] initWithImage:v5];

  [v28 _setCornerRadius:13.0];
  [v28 setClipsToBounds:1];
  v6 = [MEMORY[0x277D75C80] currentTraitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v7 != 2)
  {
    v8 = [MEMORY[0x277D75348] systemLightGrayColor];
    v9 = [v8 CGColor];
    v10 = [v28 layer];
    [v10 setBorderColor:v9];

    v11 = [v28 layer];
    [v11 setBorderWidth:1.0];
  }

  v12 = [(DSTableWelcomeController *)self headerView];
  v13 = [v12 customIconContainerView];
  [v13 addSubview:v28];

  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v28 heightAnchor];
  v15 = [v14 constraintEqualToConstant:60.0];
  [v15 setActive:1];

  v16 = [v28 widthAnchor];
  v17 = [v16 constraintEqualToConstant:60.0];
  [v17 setActive:1];

  v18 = [v28 centerXAnchor];
  v19 = [(DSTableWelcomeController *)self headerView];
  v20 = [v19 customIconContainerView];
  v21 = [v20 centerXAnchor];
  v22 = [v18 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  v23 = [v28 centerYAnchor];
  v24 = [(DSTableWelcomeController *)self headerView];
  v25 = [v24 customIconContainerView];
  v26 = [v25 centerYAnchor];
  v27 = [v23 constraintEqualToAnchor:v26];
  [v27 setActive:1];
}

- (void)showNoSharingViewWithText:(id)a3 image:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(DSTableWelcomeController *)self setIsShowingNoSharingView:1];
  v8 = [(DSTableWelcomeController *)self headerView];
  [v8 setTitle:&stru_285BA4988];

  v9 = [(DSTableWelcomeController *)self headerView];
  [v9 setDetailText:&stru_285BA4988];

  v10 = [(OBTableWelcomeController *)self tableView];
  [v10 setHidden:1];

  v11 = [MEMORY[0x277D75390] emptyProminentConfiguration];
  [v11 setSecondaryText:v7];

  [v11 setImage:v6];
  [(DSTableWelcomeController *)self _setContentUnavailableConfiguration:v11];
}

- (void)hideNoSharingView
{
  [(DSTableWelcomeController *)self setIsShowingNoSharingView:0];
  [(DSTableWelcomeController *)self _setContentUnavailableConfiguration:0];
  v3 = [(OBTableWelcomeController *)self tableView];
  [v3 setHidden:0];
}

- (void)showNoResultsViewWithSearchText:(id)a3
{
  v4 = a3;
  [(DSTableWelcomeController *)self setIsShowingNoResultsView:1];
  if ([(DSTableWelcomeController *)self isShowingNoSharingView])
  {
    [(DSTableWelcomeController *)self hideNoSharingView];
  }

  v10 = [MEMORY[0x277D75390] emptyProminentConfiguration];
  v5 = DSUILocStringForKey(@"NO_RESULTS_TITLE");
  [v10 setText:v5];

  v6 = MEMORY[0x277CCACA8];
  v7 = DSUILocStringForKey(@"NO_RESULTS_SECONDARY");
  v8 = [v6 localizedStringWithFormat:v7, v4];

  [v10 setSecondaryText:v8];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"magnifyingglass"];
  [v10 setImage:v9];

  [(DSTableWelcomeController *)self _setContentUnavailableConfiguration:v10];
}

- (void)hideNoResultsView
{
  [(DSTableWelcomeController *)self setIsShowingNoResultsView:0];

  [(DSTableWelcomeController *)self _setContentUnavailableConfiguration:0];
}

- (void)viewDidLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = DSTableWelcomeController;
  [(OBTableWelcomeController *)&v19 viewDidLayoutSubviews];
  if ([(DSTableWelcomeController *)self isShowingNoSharingView])
  {
    v3 = [(OBTableWelcomeController *)self scrollView];
    [v3 safeAreaInsets];
    v5 = v4;

    v6 = [(DSTableWelcomeController *)self view];
    [v6 layoutMargins];
    v8 = v7;
    v9 = [(DSTableWelcomeController *)self view];
    [v9 layoutMargins];
    v11 = v10;
    v12 = [(OBTableWelcomeController *)self scrollView];
    [v12 contentInset];
    v14 = v5 + v13;
    v15 = [(DSTableWelcomeController *)self view];
    [v15 layoutMargins];
    v17 = v16;
    v18 = [(DSTableWelcomeController *)self view];
    [v18 setLayoutMargins:{v8, v11, v14, v17}];
  }
}

- (void)hideButtonsIfSearching
{
  if ([(DSTableWelcomeController *)self isKeyboardActive])
  {
    v3 = [(DSTableWelcomeController *)self headerView];
    [v3 setTitle:&stru_285BA4988];

    v4 = [(DSTableWelcomeController *)self headerView];
    [v4 setDetailText:&stru_285BA4988];

    v5 = [(DSTableWelcomeController *)self boldButton];
    [v5 setHidden:1];

    v6 = [(DSTableWelcomeController *)self linkButton];
    v9 = v6;
    v7 = 1;
  }

  else
  {
    v8 = [(DSTableWelcomeController *)self boldButton];
    [v8 setHidden:0];

    v9 = [(DSTableWelcomeController *)self linkButton];
    v7 = [(DSTableWelcomeController *)self isModelEmpty];
    v6 = v9;
  }

  [v6 setHidden:v7];
}

@end