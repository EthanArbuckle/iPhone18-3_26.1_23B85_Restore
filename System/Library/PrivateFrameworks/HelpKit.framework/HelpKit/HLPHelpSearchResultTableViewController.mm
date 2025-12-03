@interface HLPHelpSearchResultTableViewController
- (id)noResultFooterViewWithText:(id)text;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)preferSeparatorValue:(double)value;
- (void)updateWithSearchText:(id)text searchResults:(id)results;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HLPHelpSearchResultTableViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HLPHelpSearchResultTableViewController;
  [(HLPHelpSearchResultTableViewController *)&v5 viewDidLoad];
  tableView = [(HLPHelpSearchResultTableViewController *)self tableView];
  [tableView setContentInsetAdjustmentBehavior:0];

  tableView2 = [(HLPHelpSearchResultTableViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"SearchResultTableViewIdentifier"];
}

- (id)noResultFooterViewWithText:(id)text
{
  v3 = MEMORY[0x277D75D18];
  textCopy = text;
  v5 = objc_alloc_init(v3);
  v6 = [objc_alloc(MEMORY[0x277D719C0]) initWithType:4 additionalContext:textCopy defaultMessage:0];

  v7 = [objc_alloc(MEMORY[0x277D719B8]) initWithContentMessageViewModel:v6];
  view = [v7 view];
  [v5 addSubview:view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [view topAnchor];
  topAnchor2 = [v5 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v11 setActive:1];

  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [v5 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v14 setActive:1];

  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [v5 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v17 setActive:1];

  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [v5 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v20 setActive:1];

  return v5;
}

- (void)updateWithSearchText:(id)text searchResults:(id)results
{
  textCopy = text;
  resultsCopy = results;
  objc_storeStrong(&self->_searchResults, results);
  tableView = [(HLPHelpSearchResultTableViewController *)self tableView];
  [tableView reloadData];

  if ([textCopy length] && !objc_msgSend(resultsCopy, "count"))
  {
    v8 = [(HLPHelpSearchResultTableViewController *)self noResultFooterViewWithText:textCopy];
    [(HLPHelpSearchResultTableViewController *)self setFooterView:v8];
  }

  else
  {
    [(HLPHelpSearchResultTableViewController *)self setFooterView:0];
  }

  tableView2 = [(HLPHelpSearchResultTableViewController *)self tableView];
  [tableView2 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  footerView = [(HLPHelpSearchResultTableViewController *)self footerView];
  [footerView setFrame:{v11, v13, v15, v17}];

  footerView2 = [(HLPHelpSearchResultTableViewController *)self footerView];
  tableView3 = [(HLPHelpSearchResultTableViewController *)self tableView];
  [tableView3 setTableFooterView:footerView2];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = HLPHelpSearchResultTableViewController;
  [(HLPHelpSearchResultTableViewController *)&v13 viewDidLayoutSubviews];
  tableView = [(HLPHelpSearchResultTableViewController *)self tableView];
  [tableView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  footerView = [(HLPHelpSearchResultTableViewController *)self footerView];
  [footerView setFrame:{v5, v7, v9, v11}];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"SearchResultTableViewIdentifier" forIndexPath:pathCopy];
  [v7 setSearchResult:1];
  [v7 setShowFirstLevelIcon:0];
  if (![(HLPHelpSearchResultTableViewController *)self fullBookView])
  {
    [v7 setAccessoryType:1];
  }

  [v7 setIgnoreLevels:1];
  searchResults = self->_searchResults;
  v9 = [pathCopy row];

  v10 = [(NSArray *)searchResults objectAtIndexedSubscript:v9];
  [v7 setHelpItem:v10];

  return v7;
}

- (void)preferSeparatorValue:(double)value
{
  if (value >= 24.0)
  {
    valueCopy = value;
  }

  else
  {
    valueCopy = 24.0;
  }

  if (self->_separatorValue != valueCopy)
  {
    self->_separatorValue = valueCopy;
    tableView = [(HLPHelpSearchResultTableViewController *)self tableView];
    [tableView setSeparatorInset:{0.0, valueCopy, 0.0, 0.0}];
  }
}

@end