@interface HUPCItemTableContentController
- (HUPCItemTableContentController)initWithTitle:(id)title detailText:(id)text itemTableViewController:(id)controller;
- (id)hu_preloadContent;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HUPCItemTableContentController

- (HUPCItemTableContentController)initWithTitle:(id)title detailText:(id)text itemTableViewController:(id)controller
{
  titleCopy = title;
  textCopy = text;
  controllerCopy = controller;
  v18.receiver = self;
  v18.super_class = HUPCItemTableContentController;
  v11 = [(HUPCItemTableContentController *)&v18 initWithContentView:0];
  v12 = v11;
  if (v11)
  {
    [(HUPCItemTableContentController *)v11 setTitle:titleCopy];
    [(HUPCItemTableContentController *)v12 setSubtitle:textCopy];
    objc_storeStrong(&v12->_itemTableViewController, controller);
    tableView = [(HUItemTableViewController *)v12->_itemTableViewController tableView];
    heightAnchor = [tableView heightAnchor];
    v15 = [heightAnchor constraintEqualToConstant:1.0];
    itemTableViewHeightConstraint = v12->_itemTableViewHeightConstraint;
    v12->_itemTableViewHeightConstraint = v15;
  }

  return v12;
}

- (void)viewDidLoad
{
  v48[5] = *MEMORY[0x277D85DE8];
  v47.receiver = self;
  v47.super_class = HUPCItemTableContentController;
  [(HUPCItemTableContentController *)&v47 viewDidLoad];
  clearColor = [MEMORY[0x277D75348] clearColor];
  itemTableViewController = [(HUPCItemTableContentController *)self itemTableViewController];
  tableView = [itemTableViewController tableView];
  [tableView setBackgroundColor:clearColor];

  itemTableViewController2 = [(HUPCItemTableContentController *)self itemTableViewController];
  [itemTableViewController2 setWantsPreferredContentSize:1];

  itemTableViewController3 = [(HUPCItemTableContentController *)self itemTableViewController];
  tableView2 = [itemTableViewController3 tableView];
  [tableView2 setScrollEnabled:0];

  itemTableViewController4 = [(HUPCItemTableContentController *)self itemTableViewController];
  [itemTableViewController4 setShouldUseAlternateCellColor:1];

  itemTableViewController5 = [(HUPCItemTableContentController *)self itemTableViewController];
  tableView3 = [itemTableViewController5 tableView];
  [tableView3 setLayoutMargins:{0.0, 1.0, 0.0, 1.0}];

  itemTableViewController6 = [(HUPCItemTableContentController *)self itemTableViewController];
  [itemTableViewController6 setSectionContentInsetFollowsLayoutMargins:1];

  itemTableViewController7 = [(HUPCItemTableContentController *)self itemTableViewController];
  [(HUPCItemTableContentController *)self addChildViewController:itemTableViewController7];

  contentView = [(HUPCItemTableContentController *)self contentView];
  itemTableViewController8 = [(HUPCItemTableContentController *)self itemTableViewController];
  tableView4 = [itemTableViewController8 tableView];
  [contentView addSubview:tableView4];

  itemTableViewController9 = [(HUPCItemTableContentController *)self itemTableViewController];
  tableView5 = [itemTableViewController9 tableView];
  [tableView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v35 = MEMORY[0x277CCAAD0];
  contentView2 = [(HUPCItemTableContentController *)self contentView];
  topAnchor = [contentView2 topAnchor];
  itemTableViewController10 = [(HUPCItemTableContentController *)self itemTableViewController];
  tableView6 = [itemTableViewController10 tableView];
  topAnchor2 = [tableView6 topAnchor];
  v41 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v48[0] = v41;
  contentView3 = [(HUPCItemTableContentController *)self contentView];
  bottomAnchor = [contentView3 bottomAnchor];
  itemTableViewController11 = [(HUPCItemTableContentController *)self itemTableViewController];
  tableView7 = [itemTableViewController11 tableView];
  bottomAnchor2 = [tableView7 bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v48[1] = v34;
  contentView4 = [(HUPCItemTableContentController *)self contentView];
  leadingAnchor = [contentView4 leadingAnchor];
  itemTableViewController12 = [(HUPCItemTableContentController *)self itemTableViewController];
  tableView8 = [itemTableViewController12 tableView];
  leadingAnchor2 = [tableView8 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v48[2] = v19;
  contentView5 = [(HUPCItemTableContentController *)self contentView];
  trailingAnchor = [contentView5 trailingAnchor];
  itemTableViewController13 = [(HUPCItemTableContentController *)self itemTableViewController];
  tableView9 = [itemTableViewController13 tableView];
  trailingAnchor2 = [tableView9 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v48[3] = v25;
  itemTableViewHeightConstraint = [(HUPCItemTableContentController *)self itemTableViewHeightConstraint];
  v48[4] = itemTableViewHeightConstraint;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:5];
  [v35 activateConstraints:v27];

  itemTableViewController14 = [(HUPCItemTableContentController *)self itemTableViewController];
  [itemTableViewController14 didMoveToParentViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HUPCItemTableContentController;
  [(HUPCItemTableContentController *)&v4 viewWillLayoutSubviews];
  view = [(HUPCItemTableContentController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)updateViewConstraints
{
  itemTableViewController = [(HUPCItemTableContentController *)self itemTableViewController];
  [itemTableViewController preferredContentSize];
  v5 = v4;
  itemTableViewHeightConstraint = [(HUPCItemTableContentController *)self itemTableViewHeightConstraint];
  [itemTableViewHeightConstraint setConstant:v5];

  v7.receiver = self;
  v7.super_class = HUPCItemTableContentController;
  [(HUPCItemTableContentController *)&v7 updateViewConstraints];
}

- (id)hu_preloadContent
{
  itemTableViewController = [(HUPCItemTableContentController *)self itemTableViewController];
  hu_preloadContent = [itemTableViewController hu_preloadContent];
  v4 = hu_preloadContent;
  if (hu_preloadContent)
  {
    futureWithNoResult = hu_preloadContent;
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v6 = futureWithNoResult;

  return v6;
}

@end