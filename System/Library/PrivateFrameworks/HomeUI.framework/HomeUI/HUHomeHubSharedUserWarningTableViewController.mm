@interface HUHomeHubSharedUserWarningTableViewController
- (void)loadView;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUHomeHubSharedUserWarningTableViewController

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = HUHomeHubSharedUserWarningTableViewController;
  [(HUHomeHubSharedUserWarningTableViewController *)&v6 loadView];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedUserWarningTableViewController:viewDidLoad]", v5, 2u);
  }

  v4 = [(HUHomeHubSharedUserWarningTableViewController *)self tableView];
  [v4 setAllowsSelection:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUHomeHubSharedUserWarningTableViewController;
  [(HUItemTableViewController *)&v5 viewWillAppear:a3];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedUserWarningTableViewController:viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUHomeHubSharedUserWarningTableViewController;
  [(HUItemTableViewController *)&v5 viewWillDisappear:a3];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedUserWarningTableViewController:viewWillDisappear]", v4, 2u);
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v24.receiver = self;
  v24.super_class = HUHomeHubSharedUserWarningTableViewController;
  [(HUItemTableViewController *)&v24 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  objc_opt_class();
  v12 = v11;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    v15 = objc_opt_class();
    v16 = v10;
    if (v16)
    {
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v16;
      if (v17)
      {
        goto LABEL_12;
      }

      v19 = [MEMORY[0x277CCA890] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v19 handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v15, objc_opt_class()}];
    }

    v18 = 0;
LABEL_12:

    v21 = [v14 home];
    v22 = [v14 user];
    v23 = [v21 hf_handleForUser:v22];
    [v18 setUserHandle:v23];
  }

  [v10 setAccessoryType:0];
}

@end