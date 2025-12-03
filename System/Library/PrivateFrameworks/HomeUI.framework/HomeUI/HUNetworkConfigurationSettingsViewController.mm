@interface HUNetworkConfigurationSettingsViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HUNetworkConfigurationSettingsViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (HUNetworkConfigurationSettingsViewController)initWithNetworkConfigurationGroupItem:(id)item;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (void)itemManagerDidFinishUpdate:(id)update;
- (void)updateNetworkConfigurationSettingsModuleFooter;
@end

@implementation HUNetworkConfigurationSettingsViewController

- (HUNetworkConfigurationSettingsViewController)initWithNetworkConfigurationGroupItem:(id)item
{
  itemCopy = item;
  v5 = [[HUNetworkConfigurationSettingsItemManager alloc] initWithDelegate:self networkConfigurationGroupItem:itemCopy];
  v10.receiver = self;
  v10.super_class = HUNetworkConfigurationSettingsViewController;
  v6 = [(HUItemTableViewController *)&v10 initWithItemManager:v5 tableViewStyle:1];
  if (v6)
  {
    group = [itemCopy group];
    hf_title = [group hf_title];
    [(HUNetworkConfigurationSettingsViewController *)v6 setTitle:hf_title];
  }

  return v6;
}

- (HUNetworkConfigurationSettingsViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithNetworkConfigurationGroupItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationSettingsViewController.m" lineNumber:43 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkConfigurationSettingsViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  itemManager = [(HUItemTableViewController *)self itemManager];
  networkConfigurationSettingsModule = [itemManager networkConfigurationSettingsModule];
  v8 = [moduleCopy isEqual:networkConfigurationSettingsModule];

  if (v8)
  {
    v9 = [[HUNetworkConfigurationSettingsModuleController alloc] initWithModule:moduleCopy];
    [(HUNetworkConfigurationSettingsViewController *)self setNetworkConfigurationSettingsModuleController:v9];

    networkConfigurationSettingsModuleController = [(HUNetworkConfigurationSettingsViewController *)self networkConfigurationSettingsModuleController];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationSettingsViewController.m" lineNumber:54 description:{@"Unexpected module %@", moduleCopy}];

    networkConfigurationSettingsModuleController = 0;
  }

  return networkConfigurationSettingsModuleController;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v15.receiver = self;
  v15.super_class = HUNetworkConfigurationSettingsViewController;
  v5 = [(HUItemTableViewController *)&v15 tableView:view viewForFooterInSection:section];
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

  networkConfigurationSettingsModuleController = [(HUNetworkConfigurationSettingsViewController *)self networkConfigurationSettingsModuleController];
  messageTextView = [v8 messageTextView];
  [messageTextView setTappableTextViewDelegate:networkConfigurationSettingsModuleController];

  messageTextView2 = [v8 messageTextView];
  [messageTextView2 setDelegate:self];

  messageTextView3 = [v8 messageTextView];
  [messageTextView3 setSelectable:0];

  messageTextView4 = [v8 messageTextView];
  [messageTextView4 _setInteractiveTextSelectionDisabled:1];

  return v6;
}

- (void)itemManagerDidFinishUpdate:(id)update
{
  v4.receiver = self;
  v4.super_class = HUNetworkConfigurationSettingsViewController;
  [(HUItemTableViewController *)&v4 itemManagerDidFinishUpdate:update];
  [(HUNetworkConfigurationSettingsViewController *)self updateNetworkConfigurationSettingsModuleFooter];
}

- (void)updateNetworkConfigurationSettingsModuleFooter
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  [itemManager recalculateVisibilityAndSortAllItems];

  tableView = [(HUNetworkConfigurationSettingsViewController *)self tableView];
  [tableView reloadData];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = lCopy;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v11, 0x16u);
  }

  return (interaction - 3) < 0xFFFFFFFFFFFFFFFELL;
}

@end