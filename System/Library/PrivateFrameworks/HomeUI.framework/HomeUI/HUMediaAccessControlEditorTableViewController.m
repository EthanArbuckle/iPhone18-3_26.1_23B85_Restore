@interface HUMediaAccessControlEditorTableViewController
- (HUMediaAccessControlEditorTableViewController)initWithHome:(id)a3;
- (id)itemModuleControllers;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (void)_updateFooterView:(id)a3 forSection:(int64_t)a4;
- (void)accessControlEditorModuleController:(id)a3 didUpdateAccessControl:(id)a4;
- (void)viewDidLoad;
@end

@implementation HUMediaAccessControlEditorTableViewController

- (HUMediaAccessControlEditorTableViewController)initWithHome:(id)a3
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277D147E0]) initWithDelegate:self home:v5];
  v15.receiver = self;
  v15.super_class = HUMediaAccessControlEditorTableViewController;
  v7 = [(HUItemTableViewController *)&v15 initWithItemManager:v6 tableViewStyle:1];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_home, a3);
    v9 = [HUMediaAccessControlEditorModuleController alloc];
    v10 = [v6 accessControlEditorItemModule];
    v11 = [(HUMediaAccessControlEditorModuleController *)v9 initWithModule:v10];
    accessControlEditorModuleController = v8->_accessControlEditorModuleController;
    v8->_accessControlEditorModuleController = v11;

    [(HUMediaAccessControlEditorModuleController *)v8->_accessControlEditorModuleController setDelegate:v8];
    v13 = HFLocalizedString();
    [(HUMediaAccessControlEditorTableViewController *)v8 setTitle:v13];
  }

  return v8;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HUMediaAccessControlEditorTableViewController;
  [(HUItemTableViewController *)&v4 viewDidLoad];
  v3 = [(HUMediaAccessControlEditorTableViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"Footer"];
}

- (id)itemModuleControllers
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUMediaAccessControlEditorTableViewController *)self accessControlEditorModuleController];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self tableView:v6 titleForFooterInSection:a4];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"Footer"];
    [(HUMediaAccessControlEditorTableViewController *)self _updateFooterView:v9 forSection:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)accessControlEditorModuleController:(id)a3 didUpdateAccessControl:(id)a4
{
  v5 = [(HUMediaAccessControlEditorTableViewController *)self tableView:a3];
  [v5 beginUpdates];

  v6 = [(HUMediaAccessControlEditorTableViewController *)self tableView];
  v7 = [v6 numberOfSections];

  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      objc_opt_class();
      v9 = [(HUMediaAccessControlEditorTableViewController *)self tableView];
      v10 = [v9 footerViewForSection:v8];
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      [(HUMediaAccessControlEditorTableViewController *)self _updateFooterView:v12 forSection:v8];
      ++v8;
      v13 = [(HUMediaAccessControlEditorTableViewController *)self tableView];
      v14 = [v13 numberOfSections];
    }

    while (v8 < v14);
  }

  v15 = [(HUMediaAccessControlEditorTableViewController *)self tableView];
  [v15 endUpdates];
}

- (void)_updateFooterView:(id)a3 forSection:(int64_t)a4
{
  v6 = a3;
  [v6 setType:1];
  v8 = [(HUMediaAccessControlEditorTableViewController *)self tableView];
  v7 = [(HUItemTableViewController *)self tableView:v8 titleForFooterInSection:a4];
  [v6 setMessage:v7];
}

@end