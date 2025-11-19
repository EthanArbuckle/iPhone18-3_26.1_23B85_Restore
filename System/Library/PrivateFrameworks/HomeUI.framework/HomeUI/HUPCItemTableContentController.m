@interface HUPCItemTableContentController
- (HUPCItemTableContentController)initWithTitle:(id)a3 detailText:(id)a4 itemTableViewController:(id)a5;
- (id)hu_preloadContent;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HUPCItemTableContentController

- (HUPCItemTableContentController)initWithTitle:(id)a3 detailText:(id)a4 itemTableViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HUPCItemTableContentController;
  v11 = [(HUPCItemTableContentController *)&v18 initWithContentView:0];
  v12 = v11;
  if (v11)
  {
    [(HUPCItemTableContentController *)v11 setTitle:v8];
    [(HUPCItemTableContentController *)v12 setSubtitle:v9];
    objc_storeStrong(&v12->_itemTableViewController, a5);
    v13 = [(HUItemTableViewController *)v12->_itemTableViewController tableView];
    v14 = [v13 heightAnchor];
    v15 = [v14 constraintEqualToConstant:1.0];
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
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(HUPCItemTableContentController *)self itemTableViewController];
  v5 = [v4 tableView];
  [v5 setBackgroundColor:v3];

  v6 = [(HUPCItemTableContentController *)self itemTableViewController];
  [v6 setWantsPreferredContentSize:1];

  v7 = [(HUPCItemTableContentController *)self itemTableViewController];
  v8 = [v7 tableView];
  [v8 setScrollEnabled:0];

  v9 = [(HUPCItemTableContentController *)self itemTableViewController];
  [v9 setShouldUseAlternateCellColor:1];

  v10 = [(HUPCItemTableContentController *)self itemTableViewController];
  v11 = [v10 tableView];
  [v11 setLayoutMargins:{0.0, 1.0, 0.0, 1.0}];

  v12 = [(HUPCItemTableContentController *)self itemTableViewController];
  [v12 setSectionContentInsetFollowsLayoutMargins:1];

  v13 = [(HUPCItemTableContentController *)self itemTableViewController];
  [(HUPCItemTableContentController *)self addChildViewController:v13];

  v14 = [(HUPCItemTableContentController *)self contentView];
  v15 = [(HUPCItemTableContentController *)self itemTableViewController];
  v16 = [v15 tableView];
  [v14 addSubview:v16];

  v17 = [(HUPCItemTableContentController *)self itemTableViewController];
  v18 = [v17 tableView];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v35 = MEMORY[0x277CCAAD0];
  v46 = [(HUPCItemTableContentController *)self contentView];
  v44 = [v46 topAnchor];
  v45 = [(HUPCItemTableContentController *)self itemTableViewController];
  v43 = [v45 tableView];
  v42 = [v43 topAnchor];
  v41 = [v44 constraintEqualToAnchor:v42];
  v48[0] = v41;
  v40 = [(HUPCItemTableContentController *)self contentView];
  v38 = [v40 bottomAnchor];
  v39 = [(HUPCItemTableContentController *)self itemTableViewController];
  v37 = [v39 tableView];
  v36 = [v37 bottomAnchor];
  v34 = [v38 constraintEqualToAnchor:v36];
  v48[1] = v34;
  v33 = [(HUPCItemTableContentController *)self contentView];
  v31 = [v33 leadingAnchor];
  v32 = [(HUPCItemTableContentController *)self itemTableViewController];
  v30 = [v32 tableView];
  v29 = [v30 leadingAnchor];
  v19 = [v31 constraintEqualToAnchor:v29];
  v48[2] = v19;
  v20 = [(HUPCItemTableContentController *)self contentView];
  v21 = [v20 trailingAnchor];
  v22 = [(HUPCItemTableContentController *)self itemTableViewController];
  v23 = [v22 tableView];
  v24 = [v23 trailingAnchor];
  v25 = [v21 constraintEqualToAnchor:v24];
  v48[3] = v25;
  v26 = [(HUPCItemTableContentController *)self itemTableViewHeightConstraint];
  v48[4] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:5];
  [v35 activateConstraints:v27];

  v28 = [(HUPCItemTableContentController *)self itemTableViewController];
  [v28 didMoveToParentViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HUPCItemTableContentController;
  [(HUPCItemTableContentController *)&v4 viewWillLayoutSubviews];
  v3 = [(HUPCItemTableContentController *)self view];
  [v3 setNeedsUpdateConstraints];
}

- (void)updateViewConstraints
{
  v3 = [(HUPCItemTableContentController *)self itemTableViewController];
  [v3 preferredContentSize];
  v5 = v4;
  v6 = [(HUPCItemTableContentController *)self itemTableViewHeightConstraint];
  [v6 setConstant:v5];

  v7.receiver = self;
  v7.super_class = HUPCItemTableContentController;
  [(HUPCItemTableContentController *)&v7 updateViewConstraints];
}

- (id)hu_preloadContent
{
  v2 = [(HUPCItemTableContentController *)self itemTableViewController];
  v3 = [v2 hu_preloadContent];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v6 = v5;

  return v6;
}

@end