@interface HUItemTableOBWelcomeController
- (HUItemTableOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (HUItemTableOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (HUItemTableOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout itemTableViewController:(id)controller;
- (HUItemTableOBWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (HUItemTableOBWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)hu_preloadContent;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HUItemTableOBWelcomeController

- (HUItemTableOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout itemTableViewController:(id)controller
{
  controllerCopy = controller;
  v21.receiver = self;
  v21.super_class = HUItemTableOBWelcomeController;
  v14 = [(HUItemTableOBWelcomeController *)&v21 initWithTitle:title detailText:text icon:icon contentLayout:layout];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_itemTableViewController, controller);
    tableView = [(HUItemTableViewController *)v15->_itemTableViewController tableView];
    heightAnchor = [tableView heightAnchor];
    v18 = [heightAnchor constraintEqualToConstant:1.0];
    itemTableViewHeightConstraint = v15->_itemTableViewHeightConstraint;
    v15->_itemTableViewHeightConstraint = v18;
  }

  return v15;
}

- (HUItemTableOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithTitle_detailText_icon_contentLayout_itemTableViewController_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUItemTableOBWelcomeController.m" lineNumber:47 description:{@"%s is unavailable; use %@ instead", "-[HUItemTableOBWelcomeController initWithTitle:detailText:icon:contentLayout:]", v9}];

  return 0;
}

- (HUItemTableOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithTitle_detailText_icon_contentLayout_itemTableViewController_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUItemTableOBWelcomeController.m" lineNumber:54 description:{@"%s is unavailable; use %@ instead", "-[HUItemTableOBWelcomeController initWithTitle:detailText:icon:]", v8}];

  return 0;
}

- (HUItemTableOBWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithTitle_detailText_icon_contentLayout_itemTableViewController_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUItemTableOBWelcomeController.m" lineNumber:61 description:{@"%s is unavailable; use %@ instead", "-[HUItemTableOBWelcomeController initWithTitle:detailText:symbolName:]", v8}];

  return 0;
}

- (HUItemTableOBWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithTitle_detailText_icon_contentLayout_itemTableViewController_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUItemTableOBWelcomeController.m" lineNumber:69 description:{@"%s is unavailable; use %@ instead", "-[HUItemTableOBWelcomeController initWithTitle:detailText:symbolName:contentLayout:]", v9}];

  return 0;
}

- (void)viewDidLoad
{
  v48[5] = *MEMORY[0x277D85DE8];
  v47.receiver = self;
  v47.super_class = HUItemTableOBWelcomeController;
  [(OBBaseWelcomeController *)&v47 viewDidLoad];
  clearColor = [MEMORY[0x277D75348] clearColor];
  itemTableViewController = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  tableView = [itemTableViewController tableView];
  [tableView setBackgroundColor:clearColor];

  itemTableViewController2 = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  [itemTableViewController2 setWantsPreferredContentSize:1];

  itemTableViewController3 = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  tableView2 = [itemTableViewController3 tableView];
  [tableView2 setScrollEnabled:0];

  itemTableViewController4 = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  [itemTableViewController4 setShouldUseAlternateCellColor:1];

  itemTableViewController5 = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  tableView3 = [itemTableViewController5 tableView];
  [tableView3 setLayoutMargins:{0.0, 1.0, 0.0, 1.0}];

  itemTableViewController6 = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  [itemTableViewController6 setSectionContentInsetFollowsLayoutMargins:1];

  itemTableViewController7 = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  [(HUItemTableOBWelcomeController *)self addChildViewController:itemTableViewController7];

  contentView = [(HUItemTableOBWelcomeController *)self contentView];
  itemTableViewController8 = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  tableView4 = [itemTableViewController8 tableView];
  [contentView addSubview:tableView4];

  itemTableViewController9 = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  tableView5 = [itemTableViewController9 tableView];
  [tableView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v35 = MEMORY[0x277CCAAD0];
  contentView2 = [(HUItemTableOBWelcomeController *)self contentView];
  topAnchor = [contentView2 topAnchor];
  itemTableViewController10 = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  tableView6 = [itemTableViewController10 tableView];
  topAnchor2 = [tableView6 topAnchor];
  v41 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v48[0] = v41;
  contentView3 = [(HUItemTableOBWelcomeController *)self contentView];
  bottomAnchor = [contentView3 bottomAnchor];
  itemTableViewController11 = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  tableView7 = [itemTableViewController11 tableView];
  bottomAnchor2 = [tableView7 bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v48[1] = v34;
  contentView4 = [(HUItemTableOBWelcomeController *)self contentView];
  leadingAnchor = [contentView4 leadingAnchor];
  itemTableViewController12 = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  tableView8 = [itemTableViewController12 tableView];
  leadingAnchor2 = [tableView8 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v48[2] = v19;
  contentView5 = [(HUItemTableOBWelcomeController *)self contentView];
  trailingAnchor = [contentView5 trailingAnchor];
  itemTableViewController13 = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  tableView9 = [itemTableViewController13 tableView];
  trailingAnchor2 = [tableView9 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v48[3] = v25;
  itemTableViewHeightConstraint = [(HUItemTableOBWelcomeController *)self itemTableViewHeightConstraint];
  v48[4] = itemTableViewHeightConstraint;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:5];
  [v35 activateConstraints:v27];

  itemTableViewController14 = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  [itemTableViewController14 didMoveToParentViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HUItemTableOBWelcomeController;
  [(HUItemTableOBWelcomeController *)&v4 viewWillLayoutSubviews];
  view = [(HUItemTableOBWelcomeController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)updateViewConstraints
{
  itemTableViewController = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  [itemTableViewController preferredContentSize];
  v5 = v4;
  itemTableViewHeightConstraint = [(HUItemTableOBWelcomeController *)self itemTableViewHeightConstraint];
  [itemTableViewHeightConstraint setConstant:v5];

  v7.receiver = self;
  v7.super_class = HUItemTableOBWelcomeController;
  [(HUItemTableOBWelcomeController *)&v7 updateViewConstraints];
}

- (id)hu_preloadContent
{
  itemTableViewController = [(HUItemTableOBWelcomeController *)self itemTableViewController];
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