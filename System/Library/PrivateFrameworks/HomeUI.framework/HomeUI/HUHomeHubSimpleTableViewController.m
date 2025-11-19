@interface HUHomeHubSimpleTableViewController
- (HUHomeHubSimpleTableViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4 descriptionStringWithFormatKey:(id)a5;
- (void)loadView;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUHomeHubSimpleTableViewController

- (HUHomeHubSimpleTableViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4 descriptionStringWithFormatKey:(id)a5
{
  v7.receiver = self;
  v7.super_class = HUHomeHubSimpleTableViewController;
  result = [(HUItemTableViewController *)&v7 initWithItemManager:a3 tableViewStyle:a4];
  if (result)
  {
    result->_descriptionStringWithFormatKey = a5;
  }

  return result;
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = HUHomeHubSimpleTableViewController;
  [(HUHomeHubSimpleTableViewController *)&v6 loadView];
  v3 = [(HUHomeHubSimpleTableViewController *)self tableView];
  [v3 setAllowsSelection:0];

  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSimpleTableViewController:loadView]", v5, 2u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUHomeHubSimpleTableViewController;
  [(HUItemTableViewController *)&v5 viewWillAppear:a3];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSimpleTableViewController:viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUHomeHubSimpleTableViewController;
  [(HUItemTableViewController *)&v5 viewWillDisappear:a3];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSimpleTableViewController:viewWillDisappear]", v4, 2u);
  }
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v30 = a4;
  v7 = MEMORY[0x277D756E0];
  v8 = a3;
  v9 = [v7 cellConfiguration];
  v10 = [v30 latestResults];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v9 setText:v11];

  v12 = [v9 textProperties];
  [v12 setAlignment:4];

  v13 = [v30 latestResults];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D13E30]];

  v15 = [(HUHomeHubSimpleTableViewController *)self descriptionStringWithFormatKey];
  if (v15)
  {
    v16 = [(HUHomeHubSimpleTableViewController *)self descriptionStringWithFormatKey];
    v23 = HULocalizedStringWithFormat(v16, @"%@", v17, v18, v19, v20, v21, v22, v14);
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

  [v9 setSecondaryText:v24];
  v25 = [MEMORY[0x277D75348] secondaryLabelColor];
  v26 = [v9 secondaryTextProperties];
  [v26 setColor:v25];

  v27 = [v30 latestResults];
  v28 = [v27 objectForKeyedSubscript:*MEMORY[0x277D13E98]];
  [v9 setImage:v28];

  [v8 setContentConfiguration:v9];
  v29 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v8 setBackgroundColor:v29];
}

@end