@interface DSTableWelcomeController
- (BOOL)isFiltering;
- (BOOL)isKeyboardActive;
- (BOOL)isSearchBarEmpty;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)addBorderedIcon:(id)icon;
- (void)hideButtonsIfSearching;
- (void)hideKeyboard;
- (void)hideNoResultsView;
- (void)hideNoSharingView;
- (void)presentErrorAlertController:(id)controller okHandler:(id)handler;
- (void)presentErrorAlertWithTitle:(id)title message:(id)message continueHandler:(id)handler tryAgainHandler:(id)againHandler;
- (void)setupSearchBar;
- (void)setupTableView;
- (void)showNoResultsViewWithSearchText:(id)text;
- (void)showNoSharingViewWithText:(id)text image:(id)image;
- (void)startContentSpinner;
- (void)stopContentSpinner;
- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
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
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setEditing:1];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"header"];
}

- (void)setupTableView
{
  v3 = objc_alloc_init(DSTableView);
  [(OBTableWelcomeController *)self setTableView:v3];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setDelegate:self];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDataSource:self];
}

- (void)setupSearchBar
{
  v3 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
  searchController = self->_searchController;
  self->_searchController = v3;

  searchController = [(DSTableWelcomeController *)self searchController];
  [searchController setSearchResultsUpdater:self];

  searchController2 = [(DSTableWelcomeController *)self searchController];
  [searchController2 setObscuresBackgroundDuringPresentation:0];

  searchController3 = [(DSTableWelcomeController *)self searchController];
  searchBar = [searchController3 searchBar];
  [searchBar setPlaceholder:&stru_285BA4988];

  [(DSTableWelcomeController *)self setDefinesPresentationContext:1];
  searchController4 = [(DSTableWelcomeController *)self searchController];
  [searchController4 setDelegate:self];

  searchController5 = [(DSTableWelcomeController *)self searchController];
  searchBar2 = [searchController5 searchBar];
  [searchBar2 setShowsScopeBar:1];

  searchController6 = [(DSTableWelcomeController *)self searchController];
  searchBar3 = [searchController6 searchBar];
  [searchBar3 setDelegate:self];

  searchController7 = [(DSTableWelcomeController *)self searchController];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setSearchController:searchController7];

  navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem2 setHidesSearchBarWhenScrolling:0];

  if (_UISolariumEnabled())
  {
    navigationItem3 = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem3 setPreferredSearchBarPlacement:2];
  }
}

- (BOOL)isSearchBarEmpty
{
  searchController = [(DSTableWelcomeController *)self searchController];
  searchBar = [searchController searchBar];
  text = [searchBar text];
  v5 = [text length] == 0;

  return v5;
}

- (BOOL)isFiltering
{
  if ([(DSTableWelcomeController *)self isSearchBarEmpty])
  {
    return 0;
  }

  searchController = [(DSTableWelcomeController *)self searchController];
  isActive = [searchController isActive];

  return isActive;
}

- (BOOL)isKeyboardActive
{
  searchController = [(DSTableWelcomeController *)self searchController];
  searchBar = [searchController searchBar];
  searchTextField = [searchBar searchTextField];
  isFirstResponder = [searchTextField isFirstResponder];

  return isFirstResponder;
}

- (void)presentErrorAlertWithTitle:(id)title message:(id)message continueHandler:(id)handler tryAgainHandler:(id)againHandler
{
  v10 = MEMORY[0x277D75110];
  againHandlerCopy = againHandler;
  handlerCopy = handler;
  v19 = [v10 alertControllerWithTitle:title message:message preferredStyle:1];
  v13 = MEMORY[0x277D750F8];
  v14 = DSUILocStringForKey(@"CONTINUE");
  v15 = [v13 actionWithTitle:v14 style:0 handler:handlerCopy];

  v16 = MEMORY[0x277D750F8];
  v17 = DSUILocStringForKey(@"TRY_AGAIN");
  v18 = [v16 actionWithTitle:v17 style:0 handler:againHandlerCopy];

  [v19 addAction:v15];
  [v19 addAction:v18];
  [(DSTableWelcomeController *)self presentViewController:v19 animated:1 completion:0];
}

- (void)presentErrorAlertController:(id)controller okHandler:(id)handler
{
  v6 = MEMORY[0x277D750F8];
  handlerCopy = handler;
  controllerCopy = controller;
  v9 = DSUILocStringForKey(@"OK");
  v10 = [v6 actionWithTitle:v9 style:0 handler:handlerCopy];

  [controllerCopy addAction:v10];
  [(DSTableWelcomeController *)self presentViewController:controllerCopy animated:1 completion:0];
}

- (void)hideKeyboard
{
  searchController = [(DSTableWelcomeController *)self searchController];
  searchBar = [searchController searchBar];
  searchTextField = [searchBar searchTextField];
  [searchTextField resignFirstResponder];

  boldButton = [(DSTableWelcomeController *)self boldButton];
  [boldButton setHidden:0];

  linkButton = [(DSTableWelcomeController *)self linkButton];
  [linkButton setHidden:{-[DSTableWelcomeController isModelEmpty](self, "isModelEmpty")}];
}

- (void)willPresentSearchController:(id)controller
{
  v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_hideKeyboard];
  tapGesture = self->_tapGesture;
  self->_tapGesture = v4;

  tapGesture = [(DSTableWelcomeController *)self tapGesture];
  [tapGesture setCancelsTouchesInView:0];

  view = [(DSTableWelcomeController *)self view];
  tapGesture2 = [(DSTableWelcomeController *)self tapGesture];
  [view addGestureRecognizer:tapGesture2];
}

- (void)willDismissSearchController:(id)controller
{
  tableView = [(OBTableWelcomeController *)self tableView];
  tapGesture = [(DSTableWelcomeController *)self tapGesture];
  [tableView removeGestureRecognizer:tapGesture];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = [view dequeueReusableCellWithIdentifier:{@"DSCell", path}];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75B48]);
  }

  return v4;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (section)
  {
    spinner = 0;
  }

  else
  {
    if ([(DSTableWelcomeController *)self isSpinnerActive])
    {
      spinner = [(DSTableWelcomeController *)self spinner];
    }

    else
    {
      spinner = 0;
    }
  }

  return spinner;
}

- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(OBTableWelcomeController *)self tableView];
  v6 = [tableView cellForRowAtIndexPath:pathCopy];

  [v6 setHighlighted:0];
}

- (void)startContentSpinner
{
  spinner = [(DSTableWelcomeController *)self spinner];
  [spinner startAnimating];

  spinner2 = [(DSTableWelcomeController *)self spinner];
  [spinner2 setHidesWhenStopped:1];

  [(DSTableWelcomeController *)self setIsSpinnerActive:1];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];
}

- (void)stopContentSpinner
{
  spinner = [(DSTableWelcomeController *)self spinner];
  [spinner stopAnimating];

  [(DSTableWelcomeController *)self setIsSpinnerActive:0];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];
}

- (void)addBorderedIcon:(id)icon
{
  v4 = MEMORY[0x277D755E8];
  iconCopy = icon;
  v28 = [[v4 alloc] initWithImage:iconCopy];

  [v28 _setCornerRadius:13.0];
  [v28 setClipsToBounds:1];
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  userInterfaceStyle = [currentTraitCollection userInterfaceStyle];

  if (userInterfaceStyle != 2)
  {
    systemLightGrayColor = [MEMORY[0x277D75348] systemLightGrayColor];
    cGColor = [systemLightGrayColor CGColor];
    layer = [v28 layer];
    [layer setBorderColor:cGColor];

    layer2 = [v28 layer];
    [layer2 setBorderWidth:1.0];
  }

  headerView = [(DSTableWelcomeController *)self headerView];
  customIconContainerView = [headerView customIconContainerView];
  [customIconContainerView addSubview:v28];

  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor = [v28 heightAnchor];
  v15 = [heightAnchor constraintEqualToConstant:60.0];
  [v15 setActive:1];

  widthAnchor = [v28 widthAnchor];
  v17 = [widthAnchor constraintEqualToConstant:60.0];
  [v17 setActive:1];

  centerXAnchor = [v28 centerXAnchor];
  headerView2 = [(DSTableWelcomeController *)self headerView];
  customIconContainerView2 = [headerView2 customIconContainerView];
  centerXAnchor2 = [customIconContainerView2 centerXAnchor];
  v22 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v22 setActive:1];

  centerYAnchor = [v28 centerYAnchor];
  headerView3 = [(DSTableWelcomeController *)self headerView];
  customIconContainerView3 = [headerView3 customIconContainerView];
  centerYAnchor2 = [customIconContainerView3 centerYAnchor];
  v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v27 setActive:1];
}

- (void)showNoSharingViewWithText:(id)text image:(id)image
{
  imageCopy = image;
  textCopy = text;
  [(DSTableWelcomeController *)self setIsShowingNoSharingView:1];
  headerView = [(DSTableWelcomeController *)self headerView];
  [headerView setTitle:&stru_285BA4988];

  headerView2 = [(DSTableWelcomeController *)self headerView];
  [headerView2 setDetailText:&stru_285BA4988];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setHidden:1];

  emptyProminentConfiguration = [MEMORY[0x277D75390] emptyProminentConfiguration];
  [emptyProminentConfiguration setSecondaryText:textCopy];

  [emptyProminentConfiguration setImage:imageCopy];
  [(DSTableWelcomeController *)self _setContentUnavailableConfiguration:emptyProminentConfiguration];
}

- (void)hideNoSharingView
{
  [(DSTableWelcomeController *)self setIsShowingNoSharingView:0];
  [(DSTableWelcomeController *)self _setContentUnavailableConfiguration:0];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setHidden:0];
}

- (void)showNoResultsViewWithSearchText:(id)text
{
  textCopy = text;
  [(DSTableWelcomeController *)self setIsShowingNoResultsView:1];
  if ([(DSTableWelcomeController *)self isShowingNoSharingView])
  {
    [(DSTableWelcomeController *)self hideNoSharingView];
  }

  emptyProminentConfiguration = [MEMORY[0x277D75390] emptyProminentConfiguration];
  v5 = DSUILocStringForKey(@"NO_RESULTS_TITLE");
  [emptyProminentConfiguration setText:v5];

  v6 = MEMORY[0x277CCACA8];
  v7 = DSUILocStringForKey(@"NO_RESULTS_SECONDARY");
  textCopy = [v6 localizedStringWithFormat:v7, textCopy];

  [emptyProminentConfiguration setSecondaryText:textCopy];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"magnifyingglass"];
  [emptyProminentConfiguration setImage:v9];

  [(DSTableWelcomeController *)self _setContentUnavailableConfiguration:emptyProminentConfiguration];
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
    scrollView = [(OBTableWelcomeController *)self scrollView];
    [scrollView safeAreaInsets];
    v5 = v4;

    view = [(DSTableWelcomeController *)self view];
    [view layoutMargins];
    v8 = v7;
    view2 = [(DSTableWelcomeController *)self view];
    [view2 layoutMargins];
    v11 = v10;
    scrollView2 = [(OBTableWelcomeController *)self scrollView];
    [scrollView2 contentInset];
    v14 = v5 + v13;
    view3 = [(DSTableWelcomeController *)self view];
    [view3 layoutMargins];
    v17 = v16;
    view4 = [(DSTableWelcomeController *)self view];
    [view4 setLayoutMargins:{v8, v11, v14, v17}];
  }
}

- (void)hideButtonsIfSearching
{
  if ([(DSTableWelcomeController *)self isKeyboardActive])
  {
    headerView = [(DSTableWelcomeController *)self headerView];
    [headerView setTitle:&stru_285BA4988];

    headerView2 = [(DSTableWelcomeController *)self headerView];
    [headerView2 setDetailText:&stru_285BA4988];

    boldButton = [(DSTableWelcomeController *)self boldButton];
    [boldButton setHidden:1];

    linkButton = [(DSTableWelcomeController *)self linkButton];
    linkButton2 = linkButton;
    isModelEmpty = 1;
  }

  else
  {
    boldButton2 = [(DSTableWelcomeController *)self boldButton];
    [boldButton2 setHidden:0];

    linkButton2 = [(DSTableWelcomeController *)self linkButton];
    isModelEmpty = [(DSTableWelcomeController *)self isModelEmpty];
    linkButton = linkButton2;
  }

  [linkButton setHidden:isModelEmpty];
}

@end