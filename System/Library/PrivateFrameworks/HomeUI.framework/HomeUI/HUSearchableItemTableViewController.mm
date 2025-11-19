@interface HUSearchableItemTableViewController
- (HUSearchableItemTableViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4 searchBar:(id)a5 searchBarPosition:(unint64_t)a6;
- (void)setupSearchBar;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateForSearch;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HUSearchableItemTableViewController

- (HUSearchableItemTableViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4 searchBar:(id)a5 searchBarPosition:(unint64_t)a6
{
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HUSearchableItemTableViewController;
  v11 = [(HUItemTableViewController *)&v18 initWithItemManager:a3 tableViewStyle:a4];
  if (v11)
  {
    v12 = v10;
    if (!v10)
    {
      v12 = objc_alloc_init(MEMORY[0x277D759E8]);
    }

    objc_storeStrong(&v11->_searchBar, v12);
    if (!v10)
    {
    }

    v13 = objc_alloc_init(MEMORY[0x277D759D8]);
    searchBarWrapper = v11->_searchBarWrapper;
    v11->_searchBarWrapper = v13;

    v11->_searchBarPosition = a6;
    v15 = [(HUSearchBar *)v11->_searchBar searchTextField];
    [v15 setDelegate:v11];

    v16 = [(HUSearchBar *)v11->_searchBar searchTextField];
    [v16 addTarget:v11 action:sel_textFieldDidChange_ forControlEvents:0x20000];
  }

  return v11;
}

- (void)updateForSearch
{
  v3 = [(HUSearchableItemTableViewController *)self searchBar];
  v4 = [v3 searchTextField];
  v5 = [v4 text];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__HUSearchableItemTableViewController_updateForSearch__block_invoke;
  aBlock[3] = &unk_277DB85D8;
  v6 = v5;
  v10 = v6;
  v7 = _Block_copy(aBlock);
  if (![v6 length])
  {

    v7 = 0;
  }

  v8 = [(HUItemTableViewController *)self itemManager];
  [v8 _setDisplayFilter:v7 recalculateVisibility:1];
}

BOOL __54__HUSearchableItemTableViewController_updateForSearch__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  v5 = [v4 rangeOfString:*(a1 + 32) options:129] != 0x7FFFFFFFFFFFFFFFLL;
  return v5;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HUSearchableItemTableViewController;
  [(HUItemTableViewController *)&v6 viewDidLoad];
  v3 = [(HUSearchableItemTableViewController *)self searchBarPosition];
  if (v3 == 1)
  {
    v4 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    v5 = [(HUSearchableItemTableViewController *)self tableView];
    [v5 setTableHeaderView:v4];
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = [(HUSearchableItemTableViewController *)self tableView];
    v5 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [v4 addSubview:v5];
LABEL_5:
  }

  [(HUSearchableItemTableViewController *)self setupSearchBar];
}

- (void)viewDidLayoutSubviews
{
  v31.receiver = self;
  v31.super_class = HUSearchableItemTableViewController;
  [(HUItemTableViewController *)&v31 viewDidLayoutSubviews];
  if (![(HUSearchableItemTableViewController *)self searchBarPosition])
  {
    v3 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [v3 frame];
    v5 = v4;

    v6 = [(HUSearchableItemTableViewController *)self tableView];
    [v6 contentInset];
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [(HUSearchableItemTableViewController *)self tableView];
    [v13 setContentInset:{v5, v8, v10, v12}];

    v14 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [v14 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [(HUSearchableItemTableViewController *)self tableView];
    [v21 contentOffset];
    v23 = v22;

    v24 = [(HUSearchableItemTableViewController *)self navigationController];
    v25 = [v24 navigationBar];
    v26 = [v25 isTranslucent];

    if (v26)
    {
      v27 = [(HUSearchableItemTableViewController *)self navigationController];
      v28 = [v27 navigationBar];
      [v28 bounds];
      v23 = v23 + v29;
    }

    v30 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [v30 setFrame:{v16, v23, v18, v20}];
  }
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [(HUSearchableItemTableViewController *)self searchBar];
  [v4 resignFirstResponder];

  v5 = [(HUSearchableItemTableViewController *)self searchBar];
  v6 = [v5 searchTextField];
  [v6 resignFirstResponder];

  [(HUSearchableItemTableViewController *)self updateForSearch];
}

- (void)setupSearchBar
{
  v32[3] = *MEMORY[0x277D85DE8];
  v3 = [(HUSearchableItemTableViewController *)self searchBar];
  v4 = [v3 superview];
  v5 = [(HUSearchableItemTableViewController *)self searchBarWrapper];

  if (v4 != v5)
  {
    v6 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    v7 = [(HUSearchableItemTableViewController *)self searchBar];
    [v6 addSubview:v7];

    v8 = [(HUSearchableItemTableViewController *)self searchBar];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v25 = MEMORY[0x277CCAAD0];
    v31 = [(HUSearchableItemTableViewController *)self searchBar];
    v29 = [v31 widthAnchor];
    v30 = [(HUSearchableItemTableViewController *)self tableView];
    v28 = [v30 widthAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v32[0] = v27;
    v26 = [(HUSearchableItemTableViewController *)self searchBar];
    v24 = [v26 heightAnchor];
    v10 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    v11 = [v10 heightAnchor];
    v12 = [v24 constraintEqualToAnchor:v11];
    v32[1] = v12;
    v13 = [(HUSearchableItemTableViewController *)self searchBar];
    v14 = [v13 widthAnchor];
    v15 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    v16 = [v15 widthAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    v32[2] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
    [v25 activateConstraints:v18];

    v19 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [v19 setBounces:0];

    v20 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [v20 setCanCancelContentTouches:0];

    v21 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [v21 setScrollsToTop:0];

    v22 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [v22 setShowsHorizontalScrollIndicator:0];

    v23 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [v23 setShowsVerticalScrollIndicator:0];
  }
}

@end