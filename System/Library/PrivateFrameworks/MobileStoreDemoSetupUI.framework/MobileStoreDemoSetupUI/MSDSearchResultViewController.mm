@interface MSDSearchResultViewController
- (BOOL)isShowingSearchResult;
- (MSDSearchResultViewController)initWithDelegate:(id)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didConfirmStoreAssignment:(id)assignment;
- (void)dismissAllTopViews;
- (void)listViewDidClose:(id)close;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)showInProgress;
- (void)showStoreInfo:(id)info;
- (void)showStoreList:(id)list inDisplayMode:(unint64_t)mode;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(id)appear forStore:(id)store;
- (void)viewWillClose:(id)close forStore:(id)store;
@end

@implementation MSDSearchResultViewController

- (MSDSearchResultViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = MSDSearchResultViewController;
  v5 = [(MSDSearchResultViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MSDSearchResultViewController *)v5 setSearchBar:0];
    [(MSDSearchResultViewController *)v6 setTableView:0];
    [(MSDSearchResultViewController *)v6 setMode:1];
    [(MSDSearchResultViewController *)v6 setStoreInfoList:0];
    [(MSDSearchResultViewController *)v6 setDebounceTimer:0];
    [(MSDSearchResultViewController *)v6 setDelegate:delegateCopy];
  }

  return v6;
}

- (void)viewDidLoad
{
  v65[3] = *MEMORY[0x277D85DE8];
  v63.receiver = self;
  v63.super_class = MSDSearchResultViewController;
  [(MSDSearchResultViewController *)&v63 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(MSDSearchResultViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = objc_alloc_init(MEMORY[0x277D759E8]);
  [(MSDSearchResultViewController *)self setSearchBar:v5];

  v6 = [MSDSetupUILocalization localizedStringForKey:@"SEARCH_PLACEHOLDER"];
  searchBar = [(MSDSearchResultViewController *)self searchBar];
  [searchBar setPlaceholder:v6];

  searchBar2 = [(MSDSearchResultViewController *)self searchBar];
  [searchBar2 setDelegate:self];

  searchBar3 = [(MSDSearchResultViewController *)self searchBar];
  [searchBar3 setSearchBarStyle:2];

  searchBar4 = [(MSDSearchResultViewController *)self searchBar];
  [searchBar4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(MSDSearchResultViewController *)self view];
  searchBar5 = [(MSDSearchResultViewController *)self searchBar];
  [view2 addSubview:searchBar5];

  searchBar6 = [(MSDSearchResultViewController *)self searchBar];
  topAnchor = [searchBar6 topAnchor];
  view3 = [(MSDSearchResultViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v50 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
  v65[0] = v50;
  searchBar7 = [(MSDSearchResultViewController *)self searchBar];
  leadingAnchor = [searchBar7 leadingAnchor];
  view4 = [(MSDSearchResultViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v65[1] = v14;
  searchBar8 = [(MSDSearchResultViewController *)self searchBar];
  trailingAnchor = [searchBar8 trailingAnchor];
  view5 = [(MSDSearchResultViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v65[2] = v20;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:3];

  [MEMORY[0x277CCAAD0] activateConstraints:v62];
  v21 = objc_alloc(MEMORY[0x277D75B40]);
  v22 = [v21 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(MSDSearchResultViewController *)self setTableView:v22];

  tableView = [(MSDSearchResultViewController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(MSDSearchResultViewController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(MSDSearchResultViewController *)self tableView];
  [tableView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view6 = [(MSDSearchResultViewController *)self view];
  tableView4 = [(MSDSearchResultViewController *)self tableView];
  [view6 addSubview:tableView4];

  tableView5 = [(MSDSearchResultViewController *)self tableView];
  topAnchor3 = [tableView5 topAnchor];
  searchBar9 = [(MSDSearchResultViewController *)self searchBar];
  bottomAnchor = [searchBar9 bottomAnchor];
  v53 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v64[0] = v53;
  tableView6 = [(MSDSearchResultViewController *)self tableView];
  bottomAnchor2 = [tableView6 bottomAnchor];
  view7 = [(MSDSearchResultViewController *)self view];
  bottomAnchor3 = [view7 bottomAnchor];
  v43 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v64[1] = v43;
  tableView7 = [(MSDSearchResultViewController *)self tableView];
  leadingAnchor3 = [tableView7 leadingAnchor];
  view8 = [(MSDSearchResultViewController *)self view];
  leadingAnchor4 = [view8 leadingAnchor];
  v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v64[2] = v31;
  tableView8 = [(MSDSearchResultViewController *)self tableView];
  trailingAnchor3 = [tableView8 trailingAnchor];
  view9 = [(MSDSearchResultViewController *)self view];
  trailingAnchor4 = [view9 trailingAnchor];
  v36 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v64[3] = v36;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v40];
  tableView9 = [(MSDSearchResultViewController *)self tableView];
  [tableView9 registerClass:objc_opt_class() forCellReuseIdentifier:@"StoreInfoCell"];

  tableView10 = [(MSDSearchResultViewController *)self tableView];
  [tableView10 registerClass:objc_opt_class() forCellReuseIdentifier:@"StoreLoading"];

  v39 = *MEMORY[0x277D85DE8];
}

- (void)showInProgress
{
  [(MSDSearchResultViewController *)self setStoreInfoList:0];
  [(MSDSearchResultViewController *)self setMode:0];
  tableView = [(MSDSearchResultViewController *)self tableView];
  [tableView reloadData];
}

- (void)showStoreInfo:(id)info
{
  infoCopy = info;
  v6 = [[MSDStoreInfoViewController alloc] initWithStoreInfo:infoCopy andDelegate:self];

  navigationController = [(MSDSearchResultViewController *)self navigationController];
  [navigationController pushViewController:v6 animated:1];
}

- (void)showStoreList:(id)list inDisplayMode:(unint64_t)mode
{
  listCopy = list;
  if (mode == 2)
  {
    tableView = [[MSDStoreInfoListViewController alloc] initWithStoreInfoList:listCopy andDelegate:self];
    navigationController = [(MSDSearchResultViewController *)self navigationController];
    [navigationController pushViewController:tableView animated:1];
  }

  else
  {
    [(MSDSearchResultViewController *)self setStoreInfoList:listCopy];
    if (listCopy && [listCopy count])
    {
      if (mode)
      {
        if (mode != 1)
        {
          goto LABEL_11;
        }

        v8 = 2;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 3;
    }

    [(MSDSearchResultViewController *)self setMode:v8];
    tableView = [(MSDSearchResultViewController *)self tableView];
    [(MSDStoreInfoListViewController *)tableView reloadData];
  }

LABEL_11:
}

- (void)dismissAllTopViews
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = defaultLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[MSDSearchResultViewController dismissAllTopViews]";
    _os_log_impl(&dword_259BCA000, v3, OS_LOG_TYPE_DEFAULT, "%s - dismissing all top views", &v7, 0xCu);
  }

  navigationController = [(MSDSearchResultViewController *)self navigationController];
  v5 = [navigationController popToRootViewControllerAnimated:1];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isShowingSearchResult
{
  selfCopy = self;
  navigationController = [(MSDSearchResultViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  LOBYTE(selfCopy) = [topViewController isEqual:selfCopy];

  return selfCopy;
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v6 = defaultLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = changeCopy;
    _os_log_impl(&dword_259BCA000, v6, OS_LOG_TYPE_DEFAULT, "User entered search text: %{public}@", buf, 0xCu);
  }

  debounceTimer = [(MSDSearchResultViewController *)self debounceTimer];
  if (debounceTimer)
  {
    v8 = debounceTimer;
    debounceTimer2 = [(MSDSearchResultViewController *)self debounceTimer];
    isValid = [debounceTimer2 isValid];

    if (isValid)
    {
      debounceTimer3 = [(MSDSearchResultViewController *)self debounceTimer];
      [debounceTimer3 invalidate];
    }
  }

  v12 = objc_alloc(MEMORY[0x277CBEBB8]);
  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.5];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__MSDSearchResultViewController_searchBar_textDidChange___block_invoke;
  v18[3] = &unk_2798F1D38;
  v18[4] = self;
  v14 = [v12 initWithFireDate:v13 interval:0 repeats:v18 block:0.0];
  [(MSDSearchResultViewController *)self setDebounceTimer:v14];

  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  debounceTimer4 = [(MSDSearchResultViewController *)self debounceTimer];
  [currentRunLoop addTimer:debounceTimer4 forMode:*MEMORY[0x277CBE640]];

  v17 = *MEMORY[0x277D85DE8];
}

void __57__MSDSearchResultViewController_searchBar_textDidChange___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) searchBar];
  v3 = [v2 text];

  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "Processing search text: %{public}@", &v7, 0xCu);
  }

  v5 = [*(a1 + 32) delegate];
  [v5 didEnterSearchText:v3 forViewController:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  searchBar = [(MSDSearchResultViewController *)self searchBar];
  [searchBar endEditing:1];
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "User cancelled search", v8, 2u);
  }

  searchBar = [(MSDSearchResultViewController *)self searchBar];
  [searchBar endEditing:1];

  searchBar2 = [(MSDSearchResultViewController *)self searchBar];
  [searchBar2 setText:0];

  delegate = [(MSDSearchResultViewController *)self delegate];
  [delegate didEnterSearchText:0 forViewController:self];
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  searchBar = [(MSDSearchResultViewController *)self searchBar];
  [searchBar setShowsCancelButton:1];
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  searchBar = [(MSDSearchResultViewController *)self searchBar];
  [searchBar setShowsCancelButton:0];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(MSDSearchResultViewController *)self mode:view]== 3 || ![(MSDSearchResultViewController *)self mode])
  {
    return 2;
  }

  storeInfoList = [(MSDSearchResultViewController *)self storeInfoList];
  v6 = [storeInfoList count] + 1;

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy row];
  tableView = [(MSDSearchResultViewController *)self tableView];
  v8 = [tableView numberOfRowsInSection:0];

  v9 = 0;
  if (v6 < v8)
  {
    v10 = [pathCopy row];
    tableView2 = [(MSDSearchResultViewController *)self tableView];
    v12 = [tableView2 numberOfRowsInSection:0] - 1;

    if (v10 == v12)
    {
      v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"StoreInfoCell"];
      defaultContentConfiguration = [(MSDStoreInfoTableViewCell *)v9 defaultContentConfiguration];
      v14 = [MSDSetupUILocalization localizedStringForKey:@"CANNOT_FIND_STORE_BUTTON"];
      [defaultContentConfiguration setText:v14];

      systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
      textProperties = [defaultContentConfiguration textProperties];
      [textProperties setColor:systemBlueColor];

      [(MSDStoreInfoTableViewCell *)v9 setContentConfiguration:defaultContentConfiguration];
      tableView3 = [(MSDSearchResultViewController *)self tableView];
      [tableView3 bounds];
      [(MSDStoreInfoTableViewCell *)v9 setSeparatorInset:0.0, 0.0, 0.0, CGRectGetWidth(v38)];
    }

    else
    {
      mode = [(MSDSearchResultViewController *)self mode];
      if (mode == 3)
      {
        v21 = [MSDStoreInfoTableViewCell alloc];
        v22 = [MSDSetupUILocalization localizedStringForKey:@"NO_RESULTS_TITLE"];
        v23 = [MSDSetupUILocalization localizedStringForKey:@"NO_RESULTS_DESCRIPTION"];
        v24 = [MEMORY[0x277D755B8] systemImageNamed:@"magnifyingglass.circle.fill"];
        lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
        v9 = [(MSDStoreInfoTableViewCell *)v21 initWithTitle:v22 description:v23 image:v24 imageColor:lightGrayColor reuseIdentifier:@"StoreInfoCell"];
      }

      else
      {
        if (mode)
        {
          storeInfoList = [(MSDSearchResultViewController *)self storeInfoList];
          v27 = [storeInfoList objectAtIndex:{objc_msgSend(pathCopy, "row")}];

          if ([v27 isHQ])
          {
            v28 = MEMORY[0x277D755B8];
            v29 = @"building.2.crop.circle.fill";
          }

          else
          {
            mode2 = [(MSDSearchResultViewController *)self mode];
            v28 = MEMORY[0x277D755B8];
            if (mode2 == 1)
            {
              v29 = @"mappin.circle.fill";
            }

            else
            {
              v29 = @"magnifyingglass.circle.fill";
            }
          }

          v31 = [v28 systemImageNamed:v29];
          if ([(MSDSearchResultViewController *)self mode]== 1)
          {
            [MEMORY[0x277D75348] systemRedColor];
          }

          else
          {
            [MEMORY[0x277D75348] lightGrayColor];
          }
          v32 = ;
          v33 = [MSDStoreInfoTableViewCell alloc];
          storeName = [v27 storeName];
          storeDescription = [v27 storeDescription];
          v9 = [(MSDStoreInfoTableViewCell *)v33 initWithTitle:storeName description:storeDescription image:v31 imageColor:v32 reuseIdentifier:@"StoreInfoCell"];

          goto LABEL_18;
        }

        v9 = [[MSDStoreInfoTableViewCell alloc] initSpinnerCellWithReuseIdentifier:@"StoreLoading"];
        tableView4 = [(MSDSearchResultViewController *)self tableView];
        [tableView4 bounds];
        [(MSDStoreInfoTableViewCell *)v9 setSeparatorInset:0.0, v20, 0.0, 0.0];
      }

      [(MSDStoreInfoTableViewCell *)v9 setSelectionStyle:0];
    }
  }

LABEL_18:

  return v9;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section > 0)
  {
    goto LABEL_2;
  }

  if ([(MSDSearchResultViewController *)self mode]== 1)
  {
    v8 = @"NEARBY_STORE_SECTION_HEADER";
  }

  else
  {
    if ([(MSDSearchResultViewController *)self mode]!= 2)
    {
LABEL_2:
      v7 = 0;
      goto LABEL_8;
    }

    v8 = @"SEARCH_RESULT_SECTION_HEADER";
  }

  v7 = [MSDSetupUILocalization localizedStringForKey:v8];
LABEL_8:

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  tableView = [(MSDSearchResultViewController *)self tableView];
  v7 = [tableView numberOfRowsInSection:0];

  if (v5 < v7)
  {
    v8 = [pathCopy row];
    tableView2 = [(MSDSearchResultViewController *)self tableView];
    v10 = [tableView2 numberOfRowsInSection:0] - 1;

    if (v8 == v10)
    {
      delegate = [(MSDSearchResultViewController *)self delegate];
      [delegate didSelectNoStoreForViewController:self];
LABEL_7:

      tableView3 = [(MSDSearchResultViewController *)self tableView];
      [tableView3 deselectRowAtIndexPath:pathCopy animated:1];

      goto LABEL_8;
    }

    if ([(MSDSearchResultViewController *)self mode]!= 3 && [(MSDSearchResultViewController *)self mode])
    {
      storeInfoList = [(MSDSearchResultViewController *)self storeInfoList];
      delegate = [storeInfoList objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      [(MSDSearchResultViewController *)self showStoreInfo:delegate];
      searchBar = [(MSDSearchResultViewController *)self searchBar];
      [searchBar endEditing:1];

      goto LABEL_7;
    }
  }

LABEL_8:

  MEMORY[0x2821F96F8]();
}

- (void)viewWillAppear:(id)appear forStore:(id)store
{
  storeCopy = store;
  delegate = [(MSDSearchResultViewController *)self delegate];
  [delegate didSelectStore:storeCopy forViewController:self];
}

- (void)viewWillClose:(id)close forStore:(id)store
{
  storeCopy = store;
  delegate = [(MSDSearchResultViewController *)self delegate];
  [delegate didDeselectStore:storeCopy forViewController:self];
}

- (void)didConfirmStoreAssignment:(id)assignment
{
  assignmentCopy = assignment;
  delegate = [(MSDSearchResultViewController *)self delegate];
  [delegate didAssignStore:assignmentCopy forViewController:self];
}

- (void)listViewDidClose:(id)close
{
  closeCopy = close;
  delegate = [(MSDSearchResultViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(MSDSearchResultViewController *)self delegate];
    [delegate2 didDismissStoreListView:closeCopy forViewController:self];
  }
}

@end