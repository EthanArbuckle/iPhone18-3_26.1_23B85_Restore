@interface HUMediaAccessControlEditorTableViewController
- (HUMediaAccessControlEditorTableViewController)initWithHome:(id)home;
- (id)itemModuleControllers;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (void)_updateFooterView:(id)view forSection:(int64_t)section;
- (void)accessControlEditorModuleController:(id)controller didUpdateAccessControl:(id)control;
- (void)viewDidLoad;
@end

@implementation HUMediaAccessControlEditorTableViewController

- (HUMediaAccessControlEditorTableViewController)initWithHome:(id)home
{
  homeCopy = home;
  v6 = [objc_alloc(MEMORY[0x277D147E0]) initWithDelegate:self home:homeCopy];
  v15.receiver = self;
  v15.super_class = HUMediaAccessControlEditorTableViewController;
  v7 = [(HUItemTableViewController *)&v15 initWithItemManager:v6 tableViewStyle:1];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_home, home);
    v9 = [HUMediaAccessControlEditorModuleController alloc];
    accessControlEditorItemModule = [v6 accessControlEditorItemModule];
    v11 = [(HUMediaAccessControlEditorModuleController *)v9 initWithModule:accessControlEditorItemModule];
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
  tableView = [(HUMediaAccessControlEditorTableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"Footer"];
}

- (id)itemModuleControllers
{
  v2 = MEMORY[0x277CBEB98];
  accessControlEditorModuleController = [(HUMediaAccessControlEditorTableViewController *)self accessControlEditorModuleController];
  v4 = [v2 setWithObject:accessControlEditorModuleController];

  return v4;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(HUItemTableViewController *)self tableView:viewCopy titleForFooterInSection:section];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"Footer"];
    [(HUMediaAccessControlEditorTableViewController *)self _updateFooterView:v9 forSection:section];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)accessControlEditorModuleController:(id)controller didUpdateAccessControl:(id)control
{
  v5 = [(HUMediaAccessControlEditorTableViewController *)self tableView:controller];
  [v5 beginUpdates];

  tableView = [(HUMediaAccessControlEditorTableViewController *)self tableView];
  numberOfSections = [tableView numberOfSections];

  if (numberOfSections >= 1)
  {
    v8 = 0;
    do
    {
      objc_opt_class();
      tableView2 = [(HUMediaAccessControlEditorTableViewController *)self tableView];
      v10 = [tableView2 footerViewForSection:v8];
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
      tableView3 = [(HUMediaAccessControlEditorTableViewController *)self tableView];
      numberOfSections2 = [tableView3 numberOfSections];
    }

    while (v8 < numberOfSections2);
  }

  tableView4 = [(HUMediaAccessControlEditorTableViewController *)self tableView];
  [tableView4 endUpdates];
}

- (void)_updateFooterView:(id)view forSection:(int64_t)section
{
  viewCopy = view;
  [viewCopy setType:1];
  tableView = [(HUMediaAccessControlEditorTableViewController *)self tableView];
  v7 = [(HUItemTableViewController *)self tableView:tableView titleForFooterInSection:section];
  [viewCopy setMessage:v7];
}

@end