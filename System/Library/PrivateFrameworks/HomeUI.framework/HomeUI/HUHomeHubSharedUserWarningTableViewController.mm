@interface HUHomeHubSharedUserWarningTableViewController
- (void)loadView;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

  tableView = [(HUHomeHubSharedUserWarningTableViewController *)self tableView];
  [tableView setAllowsSelection:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HUHomeHubSharedUserWarningTableViewController;
  [(HUItemTableViewController *)&v5 viewWillAppear:appear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedUserWarningTableViewController:viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HUHomeHubSharedUserWarningTableViewController;
  [(HUItemTableViewController *)&v5 viewWillDisappear:disappear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedUserWarningTableViewController:viewWillDisappear]", v4, 2u);
  }
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v24.receiver = self;
  v24.super_class = HUHomeHubSharedUserWarningTableViewController;
  [(HUItemTableViewController *)&v24 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  objc_opt_class();
  v12 = itemCopy;
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
    v16 = cellCopy;
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

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v15, objc_opt_class()}];
    }

    v18 = 0;
LABEL_12:

    home = [v14 home];
    user = [v14 user];
    v23 = [home hf_handleForUser:user];
    [v18 setUserHandle:v23];
  }

  [cellCopy setAccessoryType:0];
}

@end