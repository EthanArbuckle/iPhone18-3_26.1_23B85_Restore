@interface DSPrivacyPermissionDetailController
- (DSPrivacyPermissionDetailController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6 shouldShowSearchBar:(BOOL)a7;
- (DSPrivacyPermissionDetailController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 permission:(id)a6 apps:(id)a7;
- (DSPrivacyPermissionsDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updateButton;
- (void)back;
- (void)returnFromDetailAndResetPermissionForSelectedApps;
- (void)returnFromDetailAndStopAllSharingForPermission;
- (void)stopAllPressed;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation DSPrivacyPermissionDetailController

- (DSPrivacyPermissionDetailController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 permission:(id)a6 apps:(id)a7
{
  v12 = a6;
  v13 = a7;
  v25.receiver = self;
  v25.super_class = DSPrivacyPermissionDetailController;
  v14 = [(DSTableWelcomeController *)&v25 initWithTitle:a3 detailText:a4 icon:0 adoptTableViewScrollView:1 shouldShowSearchBar:0];
  v15 = MEMORY[0x277D05478];
  v16 = [v12 tccPermission];
  v17 = [v15 iconForPermission:v16 tableFormat:0];
  [(DSTableWelcomeController *)v14 addBorderedIcon:v17];

  if (v14)
  {
    objc_storeStrong(&v14->_permission, a6);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    selectedApps = v14->_selectedApps;
    v14->_selectedApps = v18;

    v20 = MEMORY[0x277D05478];
    v21 = [v12 tccPermission];
    v22 = [v20 appsWithPermission:v21 fromAllApps:v13];
    apps = v14->_apps;
    v14->_apps = v22;
  }

  return v14;
}

- (DSPrivacyPermissionDetailController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6 shouldShowSearchBar:(BOOL)a7
{
  v10 = MEMORY[0x277D054B0];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v10);
  v15 = [(DSPrivacyPermissionDetailController *)self initWithTitle:v13 detailText:v12 symbolName:v11 permission:v14 apps:MEMORY[0x277CBEBF8]];

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
  v7 = [(DSPrivacyPermissionDetailController *)self permission];
  v8 = [v7 localizedName];
  v9 = [v5 localizedStringWithFormat:v6, v8];
  v10 = [DSUIUtilities setUpLinkButtonForController:self title:v9 target:self selector:sel_stopAllPressed];
  [(DSTableWelcomeController *)self setLinkButton:v10];
}

- (void)returnFromDetailAndResetPermissionForSelectedApps
{
  v5 = [(DSPrivacyPermissionDetailController *)self delegate];
  v3 = [(DSPrivacyPermissionDetailController *)self selectedApps];
  v4 = [(DSPrivacyPermissionDetailController *)self permission];
  [v5 returnFromDetailAndResetPermissionForSelectedApps:v3 permission:v4];
}

- (void)returnFromDetailAndStopAllSharingForPermission
{
  v4 = [(DSPrivacyPermissionDetailController *)self delegate];
  v3 = [(DSPrivacyPermissionDetailController *)self permission];
  [v4 returnFromDetailAndStopAllSharingForPermission:v3];
}

- (void)stopAllPressed
{
  v3 = MEMORY[0x277D05478];
  v4 = [(DSPrivacyPermissionDetailController *)self permission];
  v5 = [v4 tccPermission];
  v6 = [v3 stringKeyForPermission:v5];
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
  v3 = [(DSPrivacyPermissionDetailController *)self navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSPrivacyPermissionDetailController *)self apps];
  v7 = [v5 row];

  v8 = [v6 objectAtIndexedSubscript:v7];

  v9 = [v8 appID];
  v10 = [DSUIUtilities appIconForAppID:v9 format:0];

  v11 = [(OBTableWelcomeController *)self tableView];
  v12 = [v8 displayName];
  v13 = [DSIconTableViewCell iconTableViewCellFromTableView:v11 withRightAlignedLabel:v12 detail:&stru_285BA4988 icon:v10];

  [v13 setAccessoryType:0];

  return v13;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(DSPrivacyPermissionDetailController *)self apps:a3];
  v5 = [v4 count];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSPrivacyPermissionDetailController *)self selectedApps];
  v7 = [(DSPrivacyPermissionDetailController *)self apps];
  v8 = [v5 row];

  v9 = [v7 objectAtIndexedSubscript:v8];
  [v6 addObject:v9];

  [(DSPrivacyPermissionDetailController *)self _updateButton];
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSPrivacyPermissionDetailController *)self selectedApps];
  v7 = [(DSPrivacyPermissionDetailController *)self apps];
  v8 = [v5 row];

  v9 = [v7 objectAtIndexedSubscript:v8];
  [v6 removeObject:v9];

  [(DSPrivacyPermissionDetailController *)self _updateButton];
}

- (void)_updateButton
{
  v3 = [(DSTableWelcomeController *)self boldButton];
  [v3 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  v4 = [(OBTableWelcomeController *)self tableView];
  v5 = [v4 indexPathsForSelectedRows];
  v6 = [v5 count];

  v7 = [(DSTableWelcomeController *)self boldButton];
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
  [v7 setTitle:v10 forState:0];

  v11 = [(DSTableWelcomeController *)self boldButton];
  [v11 addTarget:self action:*v9 forControlEvents:64];
}

- (DSPrivacyPermissionsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end