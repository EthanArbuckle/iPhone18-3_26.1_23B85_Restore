@interface DSPrivacyAppDetailController
- (DSPrivacyAppDetailController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6 shouldShowSearchBar:(BOOL)a7;
- (DSPrivacyAppDetailController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 app:(id)a6;
- (DSPrivacyPermissionsDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_updateButton;
- (void)back;
- (void)returnFromDetailAndDeleteApp;
- (void)returnFromDetailAndRevokeSelectedPermissions;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation DSPrivacyAppDetailController

- (DSPrivacyAppDetailController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 app:(id)a6
{
  v10 = a6;
  v22.receiver = self;
  v22.super_class = DSPrivacyAppDetailController;
  v11 = [(DSTableWelcomeController *)&v22 initWithTitle:a3 detailText:a4 icon:0 adoptTableViewScrollView:1 shouldShowSearchBar:0];
  v12 = [v10 appID];
  v13 = [DSUIUtilities appIconForAppID:v12 format:2];
  [(DSTableWelcomeController *)v11 addBorderedIcon:v13];

  if (v11)
  {
    objc_storeStrong(&v11->_app, a6);
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sortedPermissions = v11->_sortedPermissions;
    v11->_sortedPermissions = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    selectedPermissions = v11->_selectedPermissions;
    v11->_selectedPermissions = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [MEMORY[0x277D05478] ensureApp:v11->_app inSensorDict:v18];
    v19 = [MEMORY[0x277D05478] sortSensorDict:v18];
    v20 = v11->_sortedPermissions;
    v11->_sortedPermissions = v19;
  }

  return v11;
}

- (DSPrivacyAppDetailController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6 shouldShowSearchBar:(BOOL)a7
{
  v10 = MEMORY[0x277D05470];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v10);
  v15 = [(DSPrivacyAppDetailController *)self initWithTitle:v13 detailText:v12 symbolName:v11 app:v14];

  return v15;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = DSPrivacyAppDetailController;
  [(DSTableWelcomeController *)&v7 viewDidLoad];
  v3 = DSUILocStringForKey(@"SKIP");
  v4 = [DSUIUtilities setUpBoldButtonForController:self title:v3 target:self selector:sel_back];
  [(DSTableWelcomeController *)self setBoldButton:v4];

  v5 = DSUILocStringForKey(@"DELETE_APP");
  v6 = [DSUIUtilities setUpLinkButtonForController:self title:v5 target:self selector:sel_returnFromDetailAndDeleteApp];
  [(DSTableWelcomeController *)self setLinkButton:v6];
}

- (void)returnFromDetailAndRevokeSelectedPermissions
{
  v5 = [(DSPrivacyAppDetailController *)self delegate];
  v3 = [(DSPrivacyAppDetailController *)self selectedPermissions];
  v4 = [(DSPrivacyAppDetailController *)self app];
  [v5 returnFromDetailAndResetSelectedPermissions:v3 forApp:v4];
}

- (void)returnFromDetailAndDeleteApp
{
  v4 = [(DSPrivacyAppDetailController *)self delegate];
  v3 = [(DSPrivacyAppDetailController *)self app];
  [v4 returnFromDetailAndDeleteApp:v3];
}

- (void)back
{
  v3 = [(DSPrivacyAppDetailController *)self navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSPrivacyAppDetailController *)self sortedPermissions];
  v7 = [v5 row];

  v8 = [v6 objectAtIndexedSubscript:v7];

  v9 = [v8 tccPermission];
  if ([v9 isEqualToString:@"DSLocationAlways"])
  {

LABEL_4:
    v12 = [v8 tccPermission];
    if ([v12 isEqualToString:@"DSLocationAlways"])
    {
      v13 = @"LOCATION_ALWAYS";
    }

    else
    {
      v13 = @"LOCATION_WHILE_USING";
    }

    v14 = DSUILocStringForKey(v13);

    goto LABEL_9;
  }

  v10 = [v8 tccPermission];
  v11 = [v10 isEqualToString:@"DSLocationWhenInUse"];

  if (v11)
  {
    goto LABEL_4;
  }

  v14 = &stru_285BA4988;
LABEL_9:
  v15 = MEMORY[0x277D05478];
  v16 = [v8 tccPermission];
  v17 = [v15 iconForPermission:v16 tableFormat:1];

  v18 = [(OBTableWelcomeController *)self tableView];
  v19 = [v8 localizedName];
  v20 = [DSIconTableViewCell iconTableViewCellFromTableView:v18 withRightAlignedLabel:v19 detail:v14 icon:v17];

  [v20 setAccessoryType:0];

  return v20;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSPrivacyAppDetailController *)self selectedPermissions];
  v7 = [(DSPrivacyAppDetailController *)self sortedPermissions];
  v8 = [v5 row];

  v9 = [v7 objectAtIndexedSubscript:v8];
  [v6 addObject:v9];

  [(DSPrivacyAppDetailController *)self _updateButton];
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSPrivacyAppDetailController *)self selectedPermissions];
  v7 = [(DSPrivacyAppDetailController *)self sortedPermissions];
  v8 = [v5 row];

  v9 = [v7 objectAtIndexedSubscript:v8];
  [v6 removeObject:v9];

  [(DSPrivacyAppDetailController *)self _updateButton];
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
    v9 = &selRef_returnFromDetailAndRevokeSelectedPermissions;
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