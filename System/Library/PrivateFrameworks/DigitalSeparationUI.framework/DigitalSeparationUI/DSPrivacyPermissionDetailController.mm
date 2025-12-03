@interface DSPrivacyPermissionDetailController
- (DSPrivacyPermissionDetailController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view shouldShowSearchBar:(BOOL)bar;
- (DSPrivacyPermissionDetailController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name permission:(id)permission apps:(id)apps;
- (DSPrivacyPermissionsDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updateButton;
- (void)back;
- (void)returnFromDetailAndResetPermissionForSelectedApps;
- (void)returnFromDetailAndStopAllSharingForPermission;
- (void)stopAllPressed;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation DSPrivacyPermissionDetailController

- (DSPrivacyPermissionDetailController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name permission:(id)permission apps:(id)apps
{
  permissionCopy = permission;
  appsCopy = apps;
  v25.receiver = self;
  v25.super_class = DSPrivacyPermissionDetailController;
  v14 = [(DSTableWelcomeController *)&v25 initWithTitle:title detailText:text icon:0 adoptTableViewScrollView:1 shouldShowSearchBar:0];
  v15 = MEMORY[0x277D05478];
  tccPermission = [permissionCopy tccPermission];
  v17 = [v15 iconForPermission:tccPermission tableFormat:0];
  [(DSTableWelcomeController *)v14 addBorderedIcon:v17];

  if (v14)
  {
    objc_storeStrong(&v14->_permission, permission);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    selectedApps = v14->_selectedApps;
    v14->_selectedApps = v18;

    v20 = MEMORY[0x277D05478];
    tccPermission2 = [permissionCopy tccPermission];
    v22 = [v20 appsWithPermission:tccPermission2 fromAllApps:appsCopy];
    apps = v14->_apps;
    v14->_apps = v22;
  }

  return v14;
}

- (DSPrivacyPermissionDetailController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view shouldShowSearchBar:(BOOL)bar
{
  v10 = MEMORY[0x277D054B0];
  nameCopy = name;
  textCopy = text;
  titleCopy = title;
  v14 = objc_alloc_init(v10);
  v15 = [(DSPrivacyPermissionDetailController *)self initWithTitle:titleCopy detailText:textCopy symbolName:nameCopy permission:v14 apps:MEMORY[0x277CBEBF8]];

  return v15;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = DSPrivacyPermissionDetailController;
  [(DSTableWelcomeController *)&v11 viewDidLoad];
  v3 = DSUILocStringForKey(@"SKIP");
  v4 = [DSUIUtilities setUpBoldButtonForController:self title:v3 target:self selector:sel_back];
  [(DSTableWelcomeController *)self setBoldButton:v4];

  v5 = MEMORY[0x277CCACA8];
  v6 = DSUILocStringForKey(@"STOP_ALL_APP_SHARING");
  permission = [(DSPrivacyPermissionDetailController *)self permission];
  localizedName = [permission localizedName];
  v9 = [v5 localizedStringWithFormat:v6, localizedName];
  v10 = [DSUIUtilities setUpLinkButtonForController:self title:v9 target:self selector:sel_stopAllPressed];
  [(DSTableWelcomeController *)self setLinkButton:v10];
}

- (void)returnFromDetailAndResetPermissionForSelectedApps
{
  delegate = [(DSPrivacyPermissionDetailController *)self delegate];
  selectedApps = [(DSPrivacyPermissionDetailController *)self selectedApps];
  permission = [(DSPrivacyPermissionDetailController *)self permission];
  [delegate returnFromDetailAndResetPermissionForSelectedApps:selectedApps permission:permission];
}

- (void)returnFromDetailAndStopAllSharingForPermission
{
  delegate = [(DSPrivacyPermissionDetailController *)self delegate];
  permission = [(DSPrivacyPermissionDetailController *)self permission];
  [delegate returnFromDetailAndStopAllSharingForPermission:permission];
}

- (void)stopAllPressed
{
  v3 = MEMORY[0x277D05478];
  permission = [(DSPrivacyPermissionDetailController *)self permission];
  tccPermission = [permission tccPermission];
  v6 = [v3 stringKeyForPermission:tccPermission];
  v7 = [@"RESET_ALL_CONFIRMATION_" stringByAppendingString:v6];
  v8 = DSUILocStringForKey(v7);

  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v8 preferredStyle:0];
  v10 = MEMORY[0x277D750F8];
  v11 = DSUILocStringForKey(@"CANCEL");
  v12 = [v10 actionWithTitle:v11 style:1 handler:&__block_literal_global_18];

  v13 = MEMORY[0x277D750F8];
  v14 = DSUILocStringForKey(@"STOP_ALL_PERMISSION_ACCESS");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__DSPrivacyPermissionDetailController_stopAllPressed__block_invoke_2;
  v16[3] = &unk_278F750A0;
  v16[4] = self;
  v15 = [v13 actionWithTitle:v14 style:2 handler:v16];

  [v9 addAction:v15];
  [v9 addAction:v12];
  [(DSPrivacyPermissionDetailController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)back
{
  navigationController = [(DSPrivacyPermissionDetailController *)self navigationController];
  v2 = [navigationController popViewControllerAnimated:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  apps = [(DSPrivacyPermissionDetailController *)self apps];
  v7 = [pathCopy row];

  v8 = [apps objectAtIndexedSubscript:v7];

  appID = [v8 appID];
  v10 = [DSUIUtilities appIconForAppID:appID format:0];

  tableView = [(OBTableWelcomeController *)self tableView];
  displayName = [v8 displayName];
  v13 = [DSIconTableViewCell iconTableViewCellFromTableView:tableView withRightAlignedLabel:displayName detail:&stru_285BA4988 icon:v10];

  [v13 setAccessoryType:0];

  return v13;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(DSPrivacyPermissionDetailController *)self apps:view];
  v5 = [v4 count];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  selectedApps = [(DSPrivacyPermissionDetailController *)self selectedApps];
  apps = [(DSPrivacyPermissionDetailController *)self apps];
  v8 = [pathCopy row];

  v9 = [apps objectAtIndexedSubscript:v8];
  [selectedApps addObject:v9];

  [(DSPrivacyPermissionDetailController *)self _updateButton];
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  selectedApps = [(DSPrivacyPermissionDetailController *)self selectedApps];
  apps = [(DSPrivacyPermissionDetailController *)self apps];
  v8 = [pathCopy row];

  v9 = [apps objectAtIndexedSubscript:v8];
  [selectedApps removeObject:v9];

  [(DSPrivacyPermissionDetailController *)self _updateButton];
}

- (void)_updateButton
{
  boldButton = [(DSTableWelcomeController *)self boldButton];
  [boldButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  tableView = [(OBTableWelcomeController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  v6 = [indexPathsForSelectedRows count];

  boldButton2 = [(DSTableWelcomeController *)self boldButton];
  if (v6)
  {
    v8 = @"STOP_ACCESS";
  }

  else
  {
    v8 = @"SKIP";
  }

  if (v6)
  {
    v9 = &selRef_returnFromDetailAndResetPermissionForSelectedApps;
  }

  else
  {
    v9 = &selRef_back;
  }

  v10 = DSUILocStringForKey(v8);
  [boldButton2 setTitle:v10 forState:0];

  boldButton3 = [(DSTableWelcomeController *)self boldButton];
  [boldButton3 addTarget:self action:*v9 forControlEvents:64];
}

- (DSPrivacyPermissionsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end