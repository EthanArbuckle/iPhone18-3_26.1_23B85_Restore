@interface HUSimpleItemModuleTableViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (HUSimpleItemModuleTableViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (HUSimpleItemModuleTableViewController)initWithTableViewStyle:(int64_t)a3 moduleCreator:(id)a4 moduleControllerBuilder:(id)a5;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (void)_updateTitle;
- (void)dismissTextViewController;
- (void)viewDidLayoutSubviews;
@end

@implementation HUSimpleItemModuleTableViewController

- (HUSimpleItemModuleTableViewController)initWithTableViewStyle:(int64_t)a3 moduleCreator:(id)a4 moduleControllerBuilder:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HUSimpleItemModuleTableViewController.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"moduleCreator"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"HUSimpleItemModuleTableViewController.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"moduleControllerBuilder"}];

LABEL_3:
  v12 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:0];
  [v12 setItemModuleCreator:v9];
  v18.receiver = self;
  v18.super_class = HUSimpleItemModuleTableViewController;
  v13 = [(HUItemTableViewController *)&v18 initWithItemManager:v12 tableViewStyle:a3];
  v14 = v13;
  if (v13)
  {
    [(HUSimpleItemModuleTableViewController *)v13 setModuleControllerBuilder:v11];
  }

  return v14;
}

- (HUSimpleItemModuleTableViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithTableViewStyle_moduleCreator_moduleControllerBuilder_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUSimpleItemModuleTableViewController.m" lineNumber:45 description:{@"%s is unavailable; use %@ instead", "-[HUSimpleItemModuleTableViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = [(HUSimpleItemModuleTableViewController *)self moduleControllerBuilder];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (void)_updateTitle
{
  v4 = [(HUSimpleItemModuleTableViewController *)self title];
  v3 = [(HUSimpleItemModuleTableViewController *)self navigationItem];
  [v3 setTitle:v4];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HUSimpleItemModuleTableViewController;
  [(HUItemTableViewController *)&v4 viewDidLayoutSubviews];
  if ([(HUItemTableViewController *)self wantsPreferredContentSize])
  {
    v3 = [(HUSimpleItemModuleTableViewController *)self tableView];
    [v3 contentSize];
    [(HUSimpleItemModuleTableViewController *)self setPreferredContentSize:?];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = HUSimpleItemModuleTableViewController;
  v5 = [(HUItemTableViewController *)&v11 tableView:a3 cellForRowAtIndexPath:a4];
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 messageTextView];
    [v9 setDelegate:self];
  }

  return v6;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 attributedFooterTitleForSection:a4];

  if (v8)
  {
    v9 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"footerReuseIdentifier"];

    if (!v9)
    {
      v9 = [[HUItemTableSectionHeaderFooterView alloc] initWithReuseIdentifier:@"footerReuseIdentifier"];
    }

    v10 = [(HUItemTableViewController *)self itemManager];
    v11 = [v10 displayedSectionIdentifierForSectionIndex:a4];
    v12 = [(HUItemTableSectionHeaderFooterView *)v9 messageTextView];
    [v12 setIdentifier:v11];

    v13 = [(HUItemTableSectionHeaderFooterView *)v9 messageTextView];
    [v13 setDelegate:self];

    [(HUItemTableSectionHeaderFooterView *)v9 setType:1];
    [(HUItemTableSectionHeaderFooterView *)v9 setMessage:v8];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = HUSimpleItemModuleTableViewController;
    v9 = [(HUItemTableViewController *)&v15 tableView:v6 viewForFooterInSection:a4];
  }

  return v9;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v12, 0x16u);
  }

  v9 = [MEMORY[0x277D148E8] sharedInstance];
  v10 = [v9 openURL:v7];

  return 1;
}

- (void)dismissTextViewController
{
  v3 = [(HUSimpleItemModuleTableViewController *)self navigationController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  [(HUSimpleItemModuleTableViewController *)v6 dismissViewControllerAnimated:1 completion:0];
}

@end