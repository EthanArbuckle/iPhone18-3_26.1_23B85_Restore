@interface MSDSearchResultViewController
- (BOOL)isShowingSearchResult;
- (MSDSearchResultViewController)initWithDelegate:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)didConfirmStoreAssignment:(id)a3;
- (void)dismissAllTopViews;
- (void)listViewDidClose:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)showInProgress;
- (void)showStoreInfo:(id)a3;
- (void)showStoreList:(id)a3 inDisplayMode:(unint64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(id)a3 forStore:(id)a4;
- (void)viewWillClose:(id)a3 forStore:(id)a4;
@end

@implementation MSDSearchResultViewController

- (MSDSearchResultViewController)initWithDelegate:(id)a3
{
  v4 = a3;
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
    [(MSDSearchResultViewController *)v6 setDelegate:v4];
  }

  return v6;
}

- (void)viewDidLoad
{
  v65[3] = *MEMORY[0x277D85DE8];
  v63.receiver = self;
  v63.super_class = MSDSearchResultViewController;
  [(MSDSearchResultViewController *)&v63 viewDidLoad];
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(MSDSearchResultViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc_init(MEMORY[0x277D759E8]);
  [(MSDSearchResultViewController *)self setSearchBar:v5];

  v6 = [MSDSetupUILocalization localizedStringForKey:@"SEARCH_PLACEHOLDER"];
  v7 = [(MSDSearchResultViewController *)self searchBar];
  [v7 setPlaceholder:v6];

  v8 = [(MSDSearchResultViewController *)self searchBar];
  [v8 setDelegate:self];

  v9 = [(MSDSearchResultViewController *)self searchBar];
  [v9 setSearchBarStyle:2];

  v10 = [(MSDSearchResultViewController *)self searchBar];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(MSDSearchResultViewController *)self view];
  v12 = [(MSDSearchResultViewController *)self searchBar];
  [v11 addSubview:v12];

  v60 = [(MSDSearchResultViewController *)self searchBar];
  v56 = [v60 topAnchor];
  v58 = [(MSDSearchResultViewController *)self view];
  v54 = [v58 safeAreaLayoutGuide];
  v52 = [v54 topAnchor];
  v50 = [v56 constraintEqualToAnchor:v52 constant:15.0];
  v65[0] = v50;
  v48 = [(MSDSearchResultViewController *)self searchBar];
  v44 = [v48 leadingAnchor];
  v46 = [(MSDSearchResultViewController *)self view];
  v42 = [v46 safeAreaLayoutGuide];
  v13 = [v42 leadingAnchor];
  v14 = [v44 constraintEqualToAnchor:v13];
  v65[1] = v14;
  v15 = [(MSDSearchResultViewController *)self searchBar];
  v16 = [v15 trailingAnchor];
  v17 = [(MSDSearchResultViewController *)self view];
  v18 = [v17 safeAreaLayoutGuide];
  v19 = [v18 trailingAnchor];
  v20 = [v16 constraintEqualToAnchor:v19];
  v65[2] = v20;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:3];

  [MEMORY[0x277CCAAD0] activateConstraints:v62];
  v21 = objc_alloc(MEMORY[0x277D75B40]);
  v22 = [v21 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(MSDSearchResultViewController *)self setTableView:v22];

  v23 = [(MSDSearchResultViewController *)self tableView];
  [v23 setDataSource:self];

  v24 = [(MSDSearchResultViewController *)self tableView];
  [v24 setDelegate:self];

  v25 = [(MSDSearchResultViewController *)self tableView];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = [(MSDSearchResultViewController *)self view];
  v27 = [(MSDSearchResultViewController *)self tableView];
  [v26 addSubview:v27];

  v61 = [(MSDSearchResultViewController *)self tableView];
  v57 = [v61 topAnchor];
  v59 = [(MSDSearchResultViewController *)self searchBar];
  v55 = [v59 bottomAnchor];
  v53 = [v57 constraintEqualToAnchor:v55];
  v64[0] = v53;
  v51 = [(MSDSearchResultViewController *)self tableView];
  v47 = [v51 bottomAnchor];
  v49 = [(MSDSearchResultViewController *)self view];
  v45 = [v49 bottomAnchor];
  v43 = [v47 constraintEqualToAnchor:v45];
  v64[1] = v43;
  v41 = [(MSDSearchResultViewController *)self tableView];
  v28 = [v41 leadingAnchor];
  v29 = [(MSDSearchResultViewController *)self view];
  v30 = [v29 leadingAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  v64[2] = v31;
  v32 = [(MSDSearchResultViewController *)self tableView];
  v33 = [v32 trailingAnchor];
  v34 = [(MSDSearchResultViewController *)self view];
  v35 = [v34 trailingAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  v64[3] = v36;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v40];
  v37 = [(MSDSearchResultViewController *)self tableView];
  [v37 registerClass:objc_opt_class() forCellReuseIdentifier:@"StoreInfoCell"];

  v38 = [(MSDSearchResultViewController *)self tableView];
  [v38 registerClass:objc_opt_class() forCellReuseIdentifier:@"StoreLoading"];

  v39 = *MEMORY[0x277D85DE8];
}

- (void)showInProgress
{
  [(MSDSearchResultViewController *)self setStoreInfoList:0];
  [(MSDSearchResultViewController *)self setMode:0];
  v3 = [(MSDSearchResultViewController *)self tableView];
  [v3 reloadData];
}

- (void)showStoreInfo:(id)a3
{
  v4 = a3;
  v6 = [[MSDStoreInfoViewController alloc] initWithStoreInfo:v4 andDelegate:self];

  v5 = [(MSDSearchResultViewController *)self navigationController];
  [v5 pushViewController:v6 animated:1];
}

- (void)showStoreList:(id)a3 inDisplayMode:(unint64_t)a4
{
  v9 = a3;
  if (a4 == 2)
  {
    v6 = [[MSDStoreInfoListViewController alloc] initWithStoreInfoList:v9 andDelegate:self];
    v7 = [(MSDSearchResultViewController *)self navigationController];
    [v7 pushViewController:v6 animated:1];
  }

  else
  {
    [(MSDSearchResultViewController *)self setStoreInfoList:v9];
    if (v9 && [v9 count])
    {
      if (a4)
      {
        if (a4 != 1)
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
    v6 = [(MSDSearchResultViewController *)self tableView];
    [(MSDStoreInfoListViewController *)v6 reloadData];
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

  v4 = [(MSDSearchResultViewController *)self navigationController];
  v5 = [v4 popToRootViewControllerAnimated:1];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isShowingSearchResult
{
  v2 = self;
  v3 = [(MSDSearchResultViewController *)self navigationController];
  v4 = [v3 topViewController];
  LOBYTE(v2) = [v4 isEqual:v2];

  return v2;
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = defaultLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v5;
    _os_log_impl(&dword_259BCA000, v6, OS_LOG_TYPE_DEFAULT, "User entered search text: %{public}@", buf, 0xCu);
  }

  v7 = [(MSDSearchResultViewController *)self debounceTimer];
  if (v7)
  {
    v8 = v7;
    v9 = [(MSDSearchResultViewController *)self debounceTimer];
    v10 = [v9 isValid];

    if (v10)
    {
      v11 = [(MSDSearchResultViewController *)self debounceTimer];
      [v11 invalidate];
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

  v15 = [MEMORY[0x277CBEB88] currentRunLoop];
  v16 = [(MSDSearchResultViewController *)self debounceTimer];
  [v15 addTimer:v16 forMode:*MEMORY[0x277CBE640]];

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

- (void)searchBarSearchButtonClicked:(id)a3
{
  v3 = [(MSDSearchResultViewController *)self searchBar];
  [v3 endEditing:1];
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "User cancelled search", v8, 2u);
  }

  v5 = [(MSDSearchResultViewController *)self searchBar];
  [v5 endEditing:1];

  v6 = [(MSDSearchResultViewController *)self searchBar];
  [v6 setText:0];

  v7 = [(MSDSearchResultViewController *)self delegate];
  [v7 didEnterSearchText:0 forViewController:self];
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v3 = [(MSDSearchResultViewController *)self searchBar];
  [v3 setShowsCancelButton:1];
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v3 = [(MSDSearchResultViewController *)self searchBar];
  [v3 setShowsCancelButton:0];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(MSDSearchResultViewController *)self mode:a3]== 3 || ![(MSDSearchResultViewController *)self mode])
  {
    return 2;
  }

  v5 = [(MSDSearchResultViewController *)self storeInfoList];
  v6 = [v5 count] + 1;

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 row];
  v7 = [(MSDSearchResultViewController *)self tableView];
  v8 = [v7 numberOfRowsInSection:0];

  v9 = 0;
  if (v6 < v8)
  {
    v10 = [v5 row];
    v11 = [(MSDSearchResultViewController *)self tableView];
    v12 = [v11 numberOfRowsInSection:0] - 1;

    if (v10 == v12)
    {
      v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"StoreInfoCell"];
      v13 = [(MSDStoreInfoTableViewCell *)v9 defaultContentConfiguration];
      v14 = [MSDSetupUILocalization localizedStringForKey:@"CANNOT_FIND_STORE_BUTTON"];
      [v13 setText:v14];

      v15 = [MEMORY[0x277D75348] systemBlueColor];
      v16 = [v13 textProperties];
      [v16 setColor:v15];

      [(MSDStoreInfoTableViewCell *)v9 setContentConfiguration:v13];
      v17 = [(MSDSearchResultViewController *)self tableView];
      [v17 bounds];
      [(MSDStoreInfoTableViewCell *)v9 setSeparatorInset:0.0, 0.0, 0.0, CGRectGetWidth(v38)];
    }

    else
    {
      v18 = [(MSDSearchResultViewController *)self mode];
      if (v18 == 3)
      {
        v21 = [MSDStoreInfoTableViewCell alloc];
        v22 = [MSDSetupUILocalization localizedStringForKey:@"NO_RESULTS_TITLE"];
        v23 = [MSDSetupUILocalization localizedStringForKey:@"NO_RESULTS_DESCRIPTION"];
        v24 = [MEMORY[0x277D755B8] systemImageNamed:@"magnifyingglass.circle.fill"];
        v25 = [MEMORY[0x277D75348] lightGrayColor];
        v9 = [(MSDStoreInfoTableViewCell *)v21 initWithTitle:v22 description:v23 image:v24 imageColor:v25 reuseIdentifier:@"StoreInfoCell"];
      }

      else
      {
        if (v18)
        {
          v26 = [(MSDSearchResultViewController *)self storeInfoList];
          v27 = [v26 objectAtIndex:{objc_msgSend(v5, "row")}];

          if ([v27 isHQ])
          {
            v28 = MEMORY[0x277D755B8];
            v29 = @"building.2.crop.circle.fill";
          }

          else
          {
            v30 = [(MSDSearchResultViewController *)self mode];
            v28 = MEMORY[0x277D755B8];
            if (v30 == 1)
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
          v34 = [v27 storeName];
          v35 = [v27 storeDescription];
          v9 = [(MSDStoreInfoTableViewCell *)v33 initWithTitle:v34 description:v35 image:v31 imageColor:v32 reuseIdentifier:@"StoreInfoCell"];

          goto LABEL_18;
        }

        v9 = [[MSDStoreInfoTableViewCell alloc] initSpinnerCellWithReuseIdentifier:@"StoreLoading"];
        v19 = [(MSDSearchResultViewController *)self tableView];
        [v19 bounds];
        [(MSDStoreInfoTableViewCell *)v9 setSeparatorInset:0.0, v20, 0.0, 0.0];
      }

      [(MSDStoreInfoTableViewCell *)v9 setSelectionStyle:0];
    }
  }

LABEL_18:

  return v9;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 > 0)
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v15 = a4;
  v5 = [v15 row];
  v6 = [(MSDSearchResultViewController *)self tableView];
  v7 = [v6 numberOfRowsInSection:0];

  if (v5 < v7)
  {
    v8 = [v15 row];
    v9 = [(MSDSearchResultViewController *)self tableView];
    v10 = [v9 numberOfRowsInSection:0] - 1;

    if (v8 == v10)
    {
      v11 = [(MSDSearchResultViewController *)self delegate];
      [v11 didSelectNoStoreForViewController:self];
LABEL_7:

      v14 = [(MSDSearchResultViewController *)self tableView];
      [v14 deselectRowAtIndexPath:v15 animated:1];

      goto LABEL_8;
    }

    if ([(MSDSearchResultViewController *)self mode]!= 3 && [(MSDSearchResultViewController *)self mode])
    {
      v12 = [(MSDSearchResultViewController *)self storeInfoList];
      v11 = [v12 objectAtIndex:{objc_msgSend(v15, "row")}];

      [(MSDSearchResultViewController *)self showStoreInfo:v11];
      v13 = [(MSDSearchResultViewController *)self searchBar];
      [v13 endEditing:1];

      goto LABEL_7;
    }
  }

LABEL_8:

  MEMORY[0x2821F96F8]();
}

- (void)viewWillAppear:(id)a3 forStore:(id)a4
{
  v5 = a4;
  v6 = [(MSDSearchResultViewController *)self delegate];
  [v6 didSelectStore:v5 forViewController:self];
}

- (void)viewWillClose:(id)a3 forStore:(id)a4
{
  v5 = a4;
  v6 = [(MSDSearchResultViewController *)self delegate];
  [v6 didDeselectStore:v5 forViewController:self];
}

- (void)didConfirmStoreAssignment:(id)a3
{
  v4 = a3;
  v5 = [(MSDSearchResultViewController *)self delegate];
  [v5 didAssignStore:v4 forViewController:self];
}

- (void)listViewDidClose:(id)a3
{
  v7 = a3;
  v4 = [(MSDSearchResultViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MSDSearchResultViewController *)self delegate];
    [v6 didDismissStoreListView:v7 forViewController:self];
  }
}

@end