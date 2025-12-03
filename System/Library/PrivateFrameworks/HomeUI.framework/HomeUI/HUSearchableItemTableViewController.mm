@interface HUSearchableItemTableViewController
- (HUSearchableItemTableViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style searchBar:(id)bar searchBarPosition:(unint64_t)position;
- (void)setupSearchBar;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateForSearch;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HUSearchableItemTableViewController

- (HUSearchableItemTableViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style searchBar:(id)bar searchBarPosition:(unint64_t)position
{
  barCopy = bar;
  v18.receiver = self;
  v18.super_class = HUSearchableItemTableViewController;
  v11 = [(HUItemTableViewController *)&v18 initWithItemManager:manager tableViewStyle:style];
  if (v11)
  {
    v12 = barCopy;
    if (!barCopy)
    {
      v12 = objc_alloc_init(MEMORY[0x277D759E8]);
    }

    objc_storeStrong(&v11->_searchBar, v12);
    if (!barCopy)
    {
    }

    v13 = objc_alloc_init(MEMORY[0x277D759D8]);
    searchBarWrapper = v11->_searchBarWrapper;
    v11->_searchBarWrapper = v13;

    v11->_searchBarPosition = position;
    searchTextField = [(HUSearchBar *)v11->_searchBar searchTextField];
    [searchTextField setDelegate:v11];

    searchTextField2 = [(HUSearchBar *)v11->_searchBar searchTextField];
    [searchTextField2 addTarget:v11 action:sel_textFieldDidChange_ forControlEvents:0x20000];
  }

  return v11;
}

- (void)updateForSearch
{
  searchBar = [(HUSearchableItemTableViewController *)self searchBar];
  searchTextField = [searchBar searchTextField];
  text = [searchTextField text];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__HUSearchableItemTableViewController_updateForSearch__block_invoke;
  aBlock[3] = &unk_277DB85D8;
  v6 = text;
  v10 = v6;
  v7 = _Block_copy(aBlock);
  if (![v6 length])
  {

    v7 = 0;
  }

  itemManager = [(HUItemTableViewController *)self itemManager];
  [itemManager _setDisplayFilter:v7 recalculateVisibility:1];
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
  searchBarPosition = [(HUSearchableItemTableViewController *)self searchBarPosition];
  if (searchBarPosition == 1)
  {
    searchBarWrapper = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    tableView = [(HUSearchableItemTableViewController *)self tableView];
    [tableView setTableHeaderView:searchBarWrapper];
    goto LABEL_5;
  }

  if (!searchBarPosition)
  {
    searchBarWrapper = [(HUSearchableItemTableViewController *)self tableView];
    tableView = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [searchBarWrapper addSubview:tableView];
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
    searchBarWrapper = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [searchBarWrapper frame];
    v5 = v4;

    tableView = [(HUSearchableItemTableViewController *)self tableView];
    [tableView contentInset];
    v8 = v7;
    v10 = v9;
    v12 = v11;

    tableView2 = [(HUSearchableItemTableViewController *)self tableView];
    [tableView2 setContentInset:{v5, v8, v10, v12}];

    searchBarWrapper2 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [searchBarWrapper2 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;

    tableView3 = [(HUSearchableItemTableViewController *)self tableView];
    [tableView3 contentOffset];
    v23 = v22;

    navigationController = [(HUSearchableItemTableViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    isTranslucent = [navigationBar isTranslucent];

    if (isTranslucent)
    {
      navigationController2 = [(HUSearchableItemTableViewController *)self navigationController];
      navigationBar2 = [navigationController2 navigationBar];
      [navigationBar2 bounds];
      v23 = v23 + v29;
    }

    searchBarWrapper3 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [searchBarWrapper3 setFrame:{v16, v23, v18, v20}];
  }
}

- (void)textFieldDidEndEditing:(id)editing
{
  searchBar = [(HUSearchableItemTableViewController *)self searchBar];
  [searchBar resignFirstResponder];

  searchBar2 = [(HUSearchableItemTableViewController *)self searchBar];
  searchTextField = [searchBar2 searchTextField];
  [searchTextField resignFirstResponder];

  [(HUSearchableItemTableViewController *)self updateForSearch];
}

- (void)setupSearchBar
{
  v32[3] = *MEMORY[0x277D85DE8];
  searchBar = [(HUSearchableItemTableViewController *)self searchBar];
  superview = [searchBar superview];
  searchBarWrapper = [(HUSearchableItemTableViewController *)self searchBarWrapper];

  if (superview != searchBarWrapper)
  {
    searchBarWrapper2 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    searchBar2 = [(HUSearchableItemTableViewController *)self searchBar];
    [searchBarWrapper2 addSubview:searchBar2];

    searchBar3 = [(HUSearchableItemTableViewController *)self searchBar];
    [searchBar3 setTranslatesAutoresizingMaskIntoConstraints:0];

    searchBarWrapper3 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [searchBarWrapper3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v25 = MEMORY[0x277CCAAD0];
    searchBar4 = [(HUSearchableItemTableViewController *)self searchBar];
    widthAnchor = [searchBar4 widthAnchor];
    tableView = [(HUSearchableItemTableViewController *)self tableView];
    widthAnchor2 = [tableView widthAnchor];
    v27 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v32[0] = v27;
    searchBar5 = [(HUSearchableItemTableViewController *)self searchBar];
    heightAnchor = [searchBar5 heightAnchor];
    searchBarWrapper4 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    heightAnchor2 = [searchBarWrapper4 heightAnchor];
    v12 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v32[1] = v12;
    searchBar6 = [(HUSearchableItemTableViewController *)self searchBar];
    widthAnchor3 = [searchBar6 widthAnchor];
    searchBarWrapper5 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    widthAnchor4 = [searchBarWrapper5 widthAnchor];
    v17 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v32[2] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
    [v25 activateConstraints:v18];

    searchBarWrapper6 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [searchBarWrapper6 setBounces:0];

    searchBarWrapper7 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [searchBarWrapper7 setCanCancelContentTouches:0];

    searchBarWrapper8 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [searchBarWrapper8 setScrollsToTop:0];

    searchBarWrapper9 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [searchBarWrapper9 setShowsHorizontalScrollIndicator:0];

    searchBarWrapper10 = [(HUSearchableItemTableViewController *)self searchBarWrapper];
    [searchBarWrapper10 setShowsVerticalScrollIndicator:0];
  }
}

@end