@interface HUHomeHubSimpleTableViewController
- (HUHomeHubSimpleTableViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style descriptionStringWithFormatKey:(id)key;
- (void)loadView;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUHomeHubSimpleTableViewController

- (HUHomeHubSimpleTableViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style descriptionStringWithFormatKey:(id)key
{
  v7.receiver = self;
  v7.super_class = HUHomeHubSimpleTableViewController;
  result = [(HUItemTableViewController *)&v7 initWithItemManager:manager tableViewStyle:style];
  if (result)
  {
    result->_descriptionStringWithFormatKey = key;
  }

  return result;
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = HUHomeHubSimpleTableViewController;
  [(HUHomeHubSimpleTableViewController *)&v6 loadView];
  tableView = [(HUHomeHubSimpleTableViewController *)self tableView];
  [tableView setAllowsSelection:0];

  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSimpleTableViewController:loadView]", v5, 2u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HUHomeHubSimpleTableViewController;
  [(HUItemTableViewController *)&v5 viewWillAppear:appear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSimpleTableViewController:viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HUHomeHubSimpleTableViewController;
  [(HUItemTableViewController *)&v5 viewWillDisappear:disappear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSimpleTableViewController:viewWillDisappear]", v4, 2u);
  }
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  v7 = MEMORY[0x277D756E0];
  cellCopy = cell;
  cellConfiguration = [v7 cellConfiguration];
  latestResults = [itemCopy latestResults];
  v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [cellConfiguration setText:v11];

  textProperties = [cellConfiguration textProperties];
  [textProperties setAlignment:4];

  latestResults2 = [itemCopy latestResults];
  v14 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13E30]];

  descriptionStringWithFormatKey = [(HUHomeHubSimpleTableViewController *)self descriptionStringWithFormatKey];
  if (descriptionStringWithFormatKey)
  {
    descriptionStringWithFormatKey2 = [(HUHomeHubSimpleTableViewController *)self descriptionStringWithFormatKey];
    v23 = HULocalizedStringWithFormat(descriptionStringWithFormatKey2, @"%@", v17, v18, v19, v20, v21, v22, v14);
  }

  else
  {
    v23 = _HULocalizedStringWithDefaultValue(v14, v14, 1);
  }

  if ([v14 length])
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  [cellConfiguration setSecondaryText:v24];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  secondaryTextProperties = [cellConfiguration secondaryTextProperties];
  [secondaryTextProperties setColor:secondaryLabelColor];

  latestResults3 = [itemCopy latestResults];
  v28 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13E98]];
  [cellConfiguration setImage:v28];

  [cellCopy setContentConfiguration:cellConfiguration];
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [cellCopy setBackgroundColor:secondarySystemBackgroundColor];
}

@end