@interface HLPHelpSearchResultTableViewController
- (id)noResultFooterViewWithText:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)preferSeparatorValue:(double)a3;
- (void)updateWithSearchText:(id)a3 searchResults:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HLPHelpSearchResultTableViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HLPHelpSearchResultTableViewController;
  [(HLPHelpSearchResultTableViewController *)&v5 viewDidLoad];
  v3 = [(HLPHelpSearchResultTableViewController *)self tableView];
  [v3 setContentInsetAdjustmentBehavior:0];

  v4 = [(HLPHelpSearchResultTableViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"SearchResultTableViewIdentifier"];
}

- (id)noResultFooterViewWithText:(id)a3
{
  v3 = MEMORY[0x277D75D18];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [objc_alloc(MEMORY[0x277D719C0]) initWithType:4 additionalContext:v4 defaultMessage:0];

  v7 = [objc_alloc(MEMORY[0x277D719B8]) initWithContentMessageViewModel:v6];
  v8 = [v7 view];
  [v5 addSubview:v8];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v8 topAnchor];
  v10 = [v5 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [v8 bottomAnchor];
  v13 = [v5 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [v8 leadingAnchor];
  v16 = [v5 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [v8 trailingAnchor];
  v19 = [v5 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  return v5;
}

- (void)updateWithSearchText:(id)a3 searchResults:(id)a4
{
  v21 = a3;
  v6 = a4;
  objc_storeStrong(&self->_searchResults, a4);
  v7 = [(HLPHelpSearchResultTableViewController *)self tableView];
  [v7 reloadData];

  if ([v21 length] && !objc_msgSend(v6, "count"))
  {
    v8 = [(HLPHelpSearchResultTableViewController *)self noResultFooterViewWithText:v21];
    [(HLPHelpSearchResultTableViewController *)self setFooterView:v8];
  }

  else
  {
    [(HLPHelpSearchResultTableViewController *)self setFooterView:0];
  }

  v9 = [(HLPHelpSearchResultTableViewController *)self tableView];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(HLPHelpSearchResultTableViewController *)self footerView];
  [v18 setFrame:{v11, v13, v15, v17}];

  v19 = [(HLPHelpSearchResultTableViewController *)self footerView];
  v20 = [(HLPHelpSearchResultTableViewController *)self tableView];
  [v20 setTableFooterView:v19];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = HLPHelpSearchResultTableViewController;
  [(HLPHelpSearchResultTableViewController *)&v13 viewDidLayoutSubviews];
  v3 = [(HLPHelpSearchResultTableViewController *)self tableView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(HLPHelpSearchResultTableViewController *)self footerView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"SearchResultTableViewIdentifier" forIndexPath:v6];
  [v7 setSearchResult:1];
  [v7 setShowFirstLevelIcon:0];
  if (![(HLPHelpSearchResultTableViewController *)self fullBookView])
  {
    [v7 setAccessoryType:1];
  }

  [v7 setIgnoreLevels:1];
  searchResults = self->_searchResults;
  v9 = [v6 row];

  v10 = [(NSArray *)searchResults objectAtIndexedSubscript:v9];
  [v7 setHelpItem:v10];

  return v7;
}

- (void)preferSeparatorValue:(double)a3
{
  if (a3 >= 24.0)
  {
    v3 = a3;
  }

  else
  {
    v3 = 24.0;
  }

  if (self->_separatorValue != v3)
  {
    self->_separatorValue = v3;
    v4 = [(HLPHelpSearchResultTableViewController *)self tableView];
    [v4 setSeparatorInset:{0.0, v3, 0.0, 0.0}];
  }
}

@end