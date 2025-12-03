@interface DSPrivacyAppDetailController
- (DSPrivacyAppDetailController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view shouldShowSearchBar:(BOOL)bar;
- (DSPrivacyAppDetailController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name app:(id)app;
- (DSPrivacyPermissionsDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_updateButton;
- (void)back;
- (void)returnFromDetailAndDeleteApp;
- (void)returnFromDetailAndRevokeSelectedPermissions;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation DSPrivacyAppDetailController

- (DSPrivacyAppDetailController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name app:(id)app
{
  appCopy = app;
  v22.receiver = self;
  v22.super_class = DSPrivacyAppDetailController;
  v11 = [(DSTableWelcomeController *)&v22 initWithTitle:title detailText:text icon:0 adoptTableViewScrollView:1 shouldShowSearchBar:0];
  appID = [appCopy appID];
  v13 = [DSUIUtilities appIconForAppID:appID format:2];
  [(DSTableWelcomeController *)v11 addBorderedIcon:v13];

  if (v11)
  {
    objc_storeStrong(&v11->_app, app);
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

- (DSPrivacyAppDetailController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view shouldShowSearchBar:(BOOL)bar
{
  v10 = MEMORY[0x277D05470];
  nameCopy = name;
  textCopy = text;
  titleCopy = title;
  v14 = objc_alloc_init(v10);
  v15 = [(DSPrivacyAppDetailController *)self initWithTitle:titleCopy detailText:textCopy symbolName:nameCopy app:v14];

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
  delegate = [(DSPrivacyAppDetailController *)self delegate];
  selectedPermissions = [(DSPrivacyAppDetailController *)self selectedPermissions];
  v4 = [(DSPrivacyAppDetailController *)self app];
  [delegate returnFromDetailAndResetSelectedPermissions:selectedPermissions forApp:v4];
}

- (void)returnFromDetailAndDeleteApp
{
  delegate = [(DSPrivacyAppDetailController *)self delegate];
  v3 = [(DSPrivacyAppDetailController *)self app];
  [delegate returnFromDetailAndDeleteApp:v3];
}

- (void)back
{
  navigationController = [(DSPrivacyAppDetailController *)self navigationController];
  v2 = [navigationController popViewControllerAnimated:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  sortedPermissions = [(DSPrivacyAppDetailController *)self sortedPermissions];
  v7 = [pathCopy row];

  v8 = [sortedPermissions objectAtIndexedSubscript:v7];

  tccPermission = [v8 tccPermission];
  if ([tccPermission isEqualToString:@"DSLocationAlways"])
  {

LABEL_4:
    tccPermission2 = [v8 tccPermission];
    if ([tccPermission2 isEqualToString:@"DSLocationAlways"])
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

  tccPermission3 = [v8 tccPermission];
  v11 = [tccPermission3 isEqualToString:@"DSLocationWhenInUse"];

  if (v11)
  {
    goto LABEL_4;
  }

  v14 = &stru_285BA4988;
LABEL_9:
  v15 = MEMORY[0x277D05478];
  tccPermission4 = [v8 tccPermission];
  v17 = [v15 iconForPermission:tccPermission4 tableFormat:1];

  tableView = [(OBTableWelcomeController *)self tableView];
  localizedName = [v8 localizedName];
  v20 = [DSIconTableViewCell iconTableViewCellFromTableView:tableView withRightAlignedLabel:localizedName detail:v14 icon:v17];

  [v20 setAccessoryType:0];

  return v20;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  selectedPermissions = [(DSPrivacyAppDetailController *)self selectedPermissions];
  sortedPermissions = [(DSPrivacyAppDetailController *)self sortedPermissions];
  v8 = [pathCopy row];

  v9 = [sortedPermissions objectAtIndexedSubscript:v8];
  [selectedPermissions addObject:v9];

  [(DSPrivacyAppDetailController *)self _updateButton];
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  selectedPermissions = [(DSPrivacyAppDetailController *)self selectedPermissions];
  sortedPermissions = [(DSPrivacyAppDetailController *)self sortedPermissions];
  v8 = [pathCopy row];

  v9 = [sortedPermissions objectAtIndexedSubscript:v8];
  [selectedPermissions removeObject:v9];

  [(DSPrivacyAppDetailController *)self _updateButton];
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
    v9 = &selRef_returnFromDetailAndRevokeSelectedPermissions;
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