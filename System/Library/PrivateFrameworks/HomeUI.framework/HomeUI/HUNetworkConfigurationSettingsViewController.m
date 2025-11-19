@interface HUNetworkConfigurationSettingsViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (HUNetworkConfigurationSettingsViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (HUNetworkConfigurationSettingsViewController)initWithNetworkConfigurationGroupItem:(id)a3;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (void)itemManagerDidFinishUpdate:(id)a3;
- (void)updateNetworkConfigurationSettingsModuleFooter;
@end

@implementation HUNetworkConfigurationSettingsViewController

- (HUNetworkConfigurationSettingsViewController)initWithNetworkConfigurationGroupItem:(id)a3
{
  v4 = a3;
  v5 = [[HUNetworkConfigurationSettingsItemManager alloc] initWithDelegate:self networkConfigurationGroupItem:v4];
  v10.receiver = self;
  v10.super_class = HUNetworkConfigurationSettingsViewController;
  v6 = [(HUItemTableViewController *)&v10 initWithItemManager:v5 tableViewStyle:1];
  if (v6)
  {
    v7 = [v4 group];
    v8 = [v7 hf_title];
    [(HUNetworkConfigurationSettingsViewController *)v6 setTitle:v8];
  }

  return v6;
}

- (HUNetworkConfigurationSettingsViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithNetworkConfigurationGroupItem_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationSettingsViewController.m" lineNumber:43 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkConfigurationSettingsViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v5 = a3;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 networkConfigurationSettingsModule];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    v9 = [[HUNetworkConfigurationSettingsModuleController alloc] initWithModule:v5];
    [(HUNetworkConfigurationSettingsViewController *)self setNetworkConfigurationSettingsModuleController:v9];

    v10 = [(HUNetworkConfigurationSettingsViewController *)self networkConfigurationSettingsModuleController];
  }

  else
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationSettingsViewController.m" lineNumber:54 description:{@"Unexpected module %@", v5}];

    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v15.receiver = self;
  v15.super_class = HUNetworkConfigurationSettingsViewController;
  v5 = [(HUItemTableViewController *)&v15 tableView:a3 viewForFooterInSection:a4];
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

  v9 = [(HUNetworkConfigurationSettingsViewController *)self networkConfigurationSettingsModuleController];
  v10 = [v8 messageTextView];
  [v10 setTappableTextViewDelegate:v9];

  v11 = [v8 messageTextView];
  [v11 setDelegate:self];

  v12 = [v8 messageTextView];
  [v12 setSelectable:0];

  v13 = [v8 messageTextView];
  [v13 _setInteractiveTextSelectionDisabled:1];

  return v6;
}

- (void)itemManagerDidFinishUpdate:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUNetworkConfigurationSettingsViewController;
  [(HUItemTableViewController *)&v4 itemManagerDidFinishUpdate:a3];
  [(HUNetworkConfigurationSettingsViewController *)self updateNetworkConfigurationSettingsModuleFooter];
}

- (void)updateNetworkConfigurationSettingsModuleFooter
{
  v3 = [(HUItemTableViewController *)self itemManager];
  [v3 recalculateVisibilityAndSortAllItems];

  v4 = [(HUNetworkConfigurationSettingsViewController *)self tableView];
  [v4 reloadData];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v11, 0x16u);
  }

  return (a6 - 3) < 0xFFFFFFFFFFFFFFFELL;
}

@end