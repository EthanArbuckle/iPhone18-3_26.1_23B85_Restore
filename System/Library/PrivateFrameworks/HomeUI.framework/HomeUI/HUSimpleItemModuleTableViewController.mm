@interface HUSimpleItemModuleTableViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HUSimpleItemModuleTableViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (HUSimpleItemModuleTableViewController)initWithTableViewStyle:(int64_t)style moduleCreator:(id)creator moduleControllerBuilder:(id)builder;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (void)_updateTitle;
- (void)dismissTextViewController;
- (void)viewDidLayoutSubviews;
@end

@implementation HUSimpleItemModuleTableViewController

- (HUSimpleItemModuleTableViewController)initWithTableViewStyle:(int64_t)style moduleCreator:(id)creator moduleControllerBuilder:(id)builder
{
  creatorCopy = creator;
  builderCopy = builder;
  v11 = builderCopy;
  if (creatorCopy)
  {
    if (builderCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUSimpleItemModuleTableViewController.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"moduleCreator"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUSimpleItemModuleTableViewController.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"moduleControllerBuilder"}];

LABEL_3:
  v12 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:0];
  [v12 setItemModuleCreator:creatorCopy];
  v18.receiver = self;
  v18.super_class = HUSimpleItemModuleTableViewController;
  v13 = [(HUItemTableViewController *)&v18 initWithItemManager:v12 tableViewStyle:style];
  v14 = v13;
  if (v13)
  {
    [(HUSimpleItemModuleTableViewController *)v13 setModuleControllerBuilder:v11];
  }

  return v14;
}

- (HUSimpleItemModuleTableViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithTableViewStyle_moduleCreator_moduleControllerBuilder_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUSimpleItemModuleTableViewController.m" lineNumber:45 description:{@"%s is unavailable; use %@ instead", "-[HUSimpleItemModuleTableViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  moduleControllerBuilder = [(HUSimpleItemModuleTableViewController *)self moduleControllerBuilder];
  v6 = (moduleControllerBuilder)[2](moduleControllerBuilder, moduleCopy);

  return v6;
}

- (void)_updateTitle
{
  title = [(HUSimpleItemModuleTableViewController *)self title];
  navigationItem = [(HUSimpleItemModuleTableViewController *)self navigationItem];
  [navigationItem setTitle:title];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HUSimpleItemModuleTableViewController;
  [(HUItemTableViewController *)&v4 viewDidLayoutSubviews];
  if ([(HUItemTableViewController *)self wantsPreferredContentSize])
  {
    tableView = [(HUSimpleItemModuleTableViewController *)self tableView];
    [tableView contentSize];
    [(HUSimpleItemModuleTableViewController *)self setPreferredContentSize:?];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = HUSimpleItemModuleTableViewController;
  v5 = [(HUItemTableViewController *)&v11 tableView:view cellForRowAtIndexPath:path];
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
    messageTextView = [v8 messageTextView];
    [messageTextView setDelegate:self];
  }

  return v6;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v8 = [itemManager attributedFooterTitleForSection:section];

  if (v8)
  {
    v9 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"footerReuseIdentifier"];

    if (!v9)
    {
      v9 = [[HUItemTableSectionHeaderFooterView alloc] initWithReuseIdentifier:@"footerReuseIdentifier"];
    }

    itemManager2 = [(HUItemTableViewController *)self itemManager];
    v11 = [itemManager2 displayedSectionIdentifierForSectionIndex:section];
    messageTextView = [(HUItemTableSectionHeaderFooterView *)v9 messageTextView];
    [messageTextView setIdentifier:v11];

    messageTextView2 = [(HUItemTableSectionHeaderFooterView *)v9 messageTextView];
    [messageTextView2 setDelegate:self];

    [(HUItemTableSectionHeaderFooterView *)v9 setType:1];
    [(HUItemTableSectionHeaderFooterView *)v9 setMessage:v8];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = HUSimpleItemModuleTableViewController;
    v9 = [(HUItemTableViewController *)&v15 tableView:viewCopy viewForFooterInSection:section];
  }

  return v9;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = lCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v12, 0x16u);
  }

  mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
  v10 = [mEMORY[0x277D148E8] openURL:lCopy];

  return 1;
}

- (void)dismissTextViewController
{
  navigationController = [(HUSimpleItemModuleTableViewController *)self navigationController];
  v4 = navigationController;
  if (navigationController)
  {
    selfCopy = navigationController;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  [(HUSimpleItemModuleTableViewController *)v6 dismissViewControllerAnimated:1 completion:0];
}

@end