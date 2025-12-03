@interface DSPrivacyPermissionsController
- (DSNavigationDelegate)delegate;
- (DSPrivacyPermissionsController)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_pushNextPane;
- (void)_updateButton;
- (void)_updateTitle;
- (void)addUnsharedPermissions:(id)permissions andApps:(id)apps;
- (void)collectPermissionsByType;
- (void)filterContentForSearchText:(id)text category:(int64_t)category;
- (void)handleResetErrors:(id)errors pushNextPane:(BOOL)pane;
- (void)reloadData;
- (void)resetAllPermissions;
- (void)resetSelectedPermissions;
- (void)returnFromDetailAndDeleteApp:(id)app;
- (void)returnFromDetailAndResetPermissionForSelectedApps:(id)apps permission:(id)permission;
- (void)returnFromDetailAndResetSelectedPermissions:(id)permissions forApp:(id)app;
- (void)returnFromDetailAndStopAllSharingForPermission:(id)permission;
- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change;
- (void)setApps:(id)apps;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation DSPrivacyPermissionsController

- (DSPrivacyPermissionsController)init
{
  v15.receiver = self;
  v15.super_class = DSPrivacyPermissionsController;
  v2 = [(DSTableWelcomeController *)&v15 initWithTitle:&stru_285BA4988 detailText:&stru_285BA4988 icon:0 adoptTableViewScrollView:1 shouldShowSearchBar:1];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    selectedApps = v2->_selectedApps;
    v2->_selectedApps = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
    sensors = v2->_sensors;
    v2->_sensors = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    selectedSensors = v2->_selectedSensors;
    v2->_selectedSensors = v7;

    v9 = DSUILocStringForKey(@"SKIP");
    v10 = [DSUIUtilities setUpBoldButtonForController:v2 title:v9 target:v2 selector:sel__pushNextPane];
    [(DSTableWelcomeController *)v2 setBoldButton:v10];

    v11 = DSUILocStringForKey(@"STOP_ALL_APP_SHARING");
    v12 = [DSUIUtilities setUpLinkButtonForController:v2 title:v11 target:v2 selector:sel_resetAllPermissions];
    [(DSTableWelcomeController *)v2 setLinkButton:v12];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_reloadData name:*MEMORY[0x277D76758] object:0];
  }

  return v2;
}

- (void)viewDidLoad
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = DSPrivacyPermissionsController;
  [(DSTableWelcomeController *)&v21 viewDidLoad];
  v3 = DSUILocStringForKey(@"BY_APP");
  v22[0] = v3;
  v4 = DSUILocStringForKey(@"BY_PERMISSION");
  v22[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  searchController = [(DSTableWelcomeController *)self searchController];
  searchBar = [searchController searchBar];
  [searchBar setScopeButtonTitles:v5];

  v8 = DSUILocStringForKey(@"SEARCH_PRIVACY_APPS_PLACEHOLDER");
  searchController2 = [(DSTableWelcomeController *)self searchController];
  searchBar2 = [searchController2 searchBar];
  [searchBar2 setPlaceholder:v8];

  v11 = objc_alloc_init(MEMORY[0x277D054D0]);
  v12 = [objc_alloc(MEMORY[0x277D05480]) initWithTCCStore:v11];
  appSharing = self->_appSharing;
  self->_appSharing = v12;

  [(DSTableWelcomeController *)self startContentSpinner];
  objc_initWeak(&location, self);
  v14 = self->_appSharing;
  allUserVisibleApps = [MEMORY[0x277D054D8] allUserVisibleApps];
  v16 = MEMORY[0x277D85CD0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __45__DSPrivacyPermissionsController_viewDidLoad__block_invoke;
  v18[3] = &unk_278F750C8;
  objc_copyWeak(&v19, &location);
  v18[4] = self;
  [(DSAppSharing *)v14 collectPermissionsForApps:allUserVisibleApps queue:MEMORY[0x277D85CD0] handler:v18];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  v17 = *MEMORY[0x277D85DE8];
}

void __45__DSPrivacyPermissionsController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setApps:v5];
    [v8 stopContentSpinner];
    if ([v6 count])
    {
      v9 = DSUILocStringForKey(@"COLLECT_APP_PERMISSIONS_FAILED_TITLE");
      v10 = DSUILocStringForKey(@"COLLECT_APP_PERMISSIONS_FAILED");
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __45__DSPrivacyPermissionsController_viewDidLoad__block_invoke_3;
      v11[3] = &unk_278F750A0;
      v11[4] = *(a1 + 32);
      [v8 presentErrorAlertWithTitle:v9 message:v10 continueHandler:&__block_literal_global_0 tryAgainHandler:v11];
    }
  }
}

- (void)resetAllPermissions
{
  v3 = MEMORY[0x277D75110];
  v4 = DSUILocStringForKey(@"RESET_ALL_PERMISSIONS_CONFIRMATION");
  v5 = [v3 alertControllerWithTitle:0 message:v4 preferredStyle:0];

  v6 = MEMORY[0x277D750F8];
  v7 = DSUILocStringForKey(@"CANCEL");
  v8 = [v6 actionWithTitle:v7 style:1 handler:&__block_literal_global_350];

  v9 = MEMORY[0x277D750F8];
  v10 = DSUILocStringForKey(@"STOP_ALL_APP_SHARING_CONFIRMATION");
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__DSPrivacyPermissionsController_resetAllPermissions__block_invoke_2;
  v12[3] = &unk_278F750A0;
  v12[4] = self;
  v11 = [v9 actionWithTitle:v10 style:2 handler:v12];

  [v5 addAction:v11];
  [v5 addAction:v8];
  [(DSPrivacyPermissionsController *)self presentViewController:v5 animated:1 completion:0];
}

void __53__DSPrivacyPermissionsController_resetAllPermissions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) buttonTray];
  [v4 showButtonsBusy];

  objc_initWeak(&location, *(a1 + 32));
  v5 = [*(a1 + 32) appSharing];
  v6 = MEMORY[0x277CBEB98];
  v7 = [MEMORY[0x277D054D8] tccServices];
  v8 = [v6 setWithArray:v7];
  v9 = [MEMORY[0x277D054D8] allUserVisibleApps];
  v10 = MEMORY[0x277D85CD0];
  v11 = MEMORY[0x277D85CD0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__DSPrivacyPermissionsController_resetAllPermissions__block_invoke_3;
  v12[3] = &unk_278F750F0;
  v12[4] = *(a1 + 32);
  objc_copyWeak(&v13, &location);
  [v5 resetPermissions:v8 forApps:v9 queue:v10 handler:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __53__DSPrivacyPermissionsController_resetAllPermissions__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277CBEB98];
  v5 = MEMORY[0x277D054D8];
  v6 = a2;
  v7 = [v5 tccServices];
  v8 = [v4 setWithArray:v7];
  v9 = MEMORY[0x277CBEB98];
  v10 = [*(a1 + 32) apps];
  v11 = [v9 setWithArray:v10];
  [v3 addUnsharedPermissions:v8 andApps:v11];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleResetErrors:v6 pushNextPane:1];
}

- (void)resetSelectedPermissions
{
  buttonTray = [(DSPrivacyPermissionsController *)self buttonTray];
  [buttonTray showButtonsBusy];

  objc_initWeak(&location, self);
  scope = self->_scope;
  if (!scope)
  {
    appSharing = [(DSPrivacyPermissionsController *)self appSharing];
    v6 = MEMORY[0x277CBEB98];
    tccServices = [MEMORY[0x277D054D8] tccServices];
    v8 = [v6 setWithArray:tccServices];
    selectedApps = [(DSPrivacyPermissionsController *)self selectedApps];
    v10 = [selectedApps valueForKey:@"appID"];
    v11 = MEMORY[0x277D85CD0];
    v12 = MEMORY[0x277D85CD0];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __58__DSPrivacyPermissionsController_resetSelectedPermissions__block_invoke;
    v26[3] = &unk_278F750F0;
    v26[4] = self;
    objc_copyWeak(&v27, &location);
    [appSharing resetPermissions:v8 forApps:v10 queue:v11 handler:v26];

    objc_destroyWeak(&v27);
    scope = self->_scope;
  }

  if (scope == 1)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    selectedSensors = [(DSPrivacyPermissionsController *)self selectedSensors];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__DSPrivacyPermissionsController_resetSelectedPermissions__block_invoke_2;
    v24[3] = &unk_278F75118;
    v15 = v13;
    v25 = v15;
    [selectedSensors enumerateObjectsUsingBlock:v24];

    appSharing2 = [(DSPrivacyPermissionsController *)self appSharing];
    allUserVisibleApps = [MEMORY[0x277D054D8] allUserVisibleApps];
    v18 = MEMORY[0x277D85CD0];
    v19 = MEMORY[0x277D85CD0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__DSPrivacyPermissionsController_resetSelectedPermissions__block_invoke_3;
    v21[3] = &unk_278F75140;
    v21[4] = self;
    v20 = v15;
    v22 = v20;
    objc_copyWeak(&v23, &location);
    [appSharing2 resetPermissions:v20 forApps:allUserVisibleApps queue:v18 handler:v21];

    objc_destroyWeak(&v23);
  }

  objc_destroyWeak(&location);
}

void __58__DSPrivacyPermissionsController_resetSelectedPermissions__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277CBEB98];
  v5 = MEMORY[0x277D054D8];
  v6 = a2;
  v7 = [v5 tccServices];
  v8 = [v4 setWithArray:v7];
  v9 = [*(a1 + 32) selectedApps];
  [v3 addUnsharedPermissions:v8 andApps:v9];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleResetErrors:v6 pushNextPane:1];
}

void __58__DSPrivacyPermissionsController_resetSelectedPermissions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 tccPermission];
  [v2 addObject:v3];
}

void __58__DSPrivacyPermissionsController_resetSelectedPermissions__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = MEMORY[0x277CBEB98];
  v6 = a2;
  v7 = [v3 apps];
  v8 = [v5 setWithArray:v7];
  [v3 addUnsharedPermissions:v4 andApps:v8];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained handleResetErrors:v6 pushNextPane:1];
}

- (void)returnFromDetailAndResetSelectedPermissions:(id)permissions forApp:(id)app
{
  permissionsCopy = permissions;
  appCopy = app;
  buttonTray = [(DSPrivacyPermissionsController *)self buttonTray];
  [buttonTray showButtonsBusy];

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __85__DSPrivacyPermissionsController_returnFromDetailAndResetSelectedPermissions_forApp___block_invoke;
  v24[3] = &unk_278F75168;
  v10 = v9;
  v25 = v10;
  [permissionsCopy enumerateObjectsUsingBlock:v24];
  objc_initWeak(&location, self);
  appSharing = [(DSPrivacyPermissionsController *)self appSharing];
  v12 = MEMORY[0x277CBEB98];
  appID = [appCopy appID];
  v14 = [v12 setWithObject:appID];
  v15 = MEMORY[0x277D85CD0];
  v16 = MEMORY[0x277D85CD0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__DSPrivacyPermissionsController_returnFromDetailAndResetSelectedPermissions_forApp___block_invoke_2;
  v19[3] = &unk_278F75190;
  v19[4] = self;
  v17 = v10;
  v20 = v17;
  v18 = appCopy;
  v21 = v18;
  objc_copyWeak(&v22, &location);
  [appSharing resetPermissions:v17 forApps:v14 queue:v15 handler:v19];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __85__DSPrivacyPermissionsController_returnFromDetailAndResetSelectedPermissions_forApp___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 tccPermission];
  [v2 addObject:v3];
}

void __85__DSPrivacyPermissionsController_returnFromDetailAndResetSelectedPermissions_forApp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = MEMORY[0x277CBEB98];
  v6 = *(a1 + 48);
  v7 = a2;
  v8 = [v5 setWithObject:v6];
  [v3 addUnsharedPermissions:v4 andApps:v8];

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained handleResetErrors:v7 pushNextPane:0];
}

- (void)returnFromDetailAndDeleteApp:(id)app
{
  appCopy = app;
  appSharing = [(DSPrivacyPermissionsController *)self appSharing];
  appID = [appCopy appID];

  v7 = [appSharing deleteApp:appID forTest:0];

  if (v7 && [v7 code] == 8)
  {
    v8 = [MEMORY[0x277D75110] ds_alertControllerWithAppDeletionError:v7];
    v9 = MEMORY[0x277D750F8];
    v10 = DSUILocStringForKey(@"OK");
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__DSPrivacyPermissionsController_returnFromDetailAndDeleteApp___block_invoke;
    v14[3] = &unk_278F750A0;
    v14[4] = self;
    v11 = [v9 actionWithTitle:v10 style:1 handler:v14];
    [v8 addAction:v11];

    [(DSPrivacyPermissionsController *)self presentViewController:v8 animated:1 completion:0];
  }

  [(DSPrivacyPermissionsController *)self reloadData];
  navigationController = [(DSPrivacyPermissionsController *)self navigationController];
  v13 = [navigationController popViewControllerAnimated:1];
}

void __63__DSPrivacyPermissionsController_returnFromDetailAndDeleteApp___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) buttonTray];
  [v1 showButtonsAvailable];
}

- (void)returnFromDetailAndResetPermissionForSelectedApps:(id)apps permission:(id)permission
{
  appsCopy = apps;
  permissionCopy = permission;
  buttonTray = [(DSPrivacyPermissionsController *)self buttonTray];
  [buttonTray showButtonsBusy];

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __95__DSPrivacyPermissionsController_returnFromDetailAndResetPermissionForSelectedApps_permission___block_invoke;
  v24[3] = &unk_278F751B8;
  v10 = v9;
  v25 = v10;
  [appsCopy enumerateObjectsUsingBlock:v24];
  objc_initWeak(&location, self);
  appSharing = [(DSPrivacyPermissionsController *)self appSharing];
  v12 = MEMORY[0x277CBEB98];
  tccPermission = [permissionCopy tccPermission];
  v14 = [v12 setWithObject:tccPermission];
  v15 = MEMORY[0x277D85CD0];
  v16 = MEMORY[0x277D85CD0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __95__DSPrivacyPermissionsController_returnFromDetailAndResetPermissionForSelectedApps_permission___block_invoke_2;
  v19[3] = &unk_278F75190;
  v19[4] = self;
  v17 = permissionCopy;
  v20 = v17;
  v18 = appsCopy;
  v21 = v18;
  objc_copyWeak(&v22, &location);
  [appSharing resetPermissions:v14 forApps:v10 queue:v15 handler:v19];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __95__DSPrivacyPermissionsController_returnFromDetailAndResetPermissionForSelectedApps_permission___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 appID];
  [v2 addObject:v3];
}

void __95__DSPrivacyPermissionsController_returnFromDetailAndResetPermissionForSelectedApps_permission___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 tccPermission];
  v8 = [v3 setWithObject:v7];
  v9 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 48)];
  [v4 addUnsharedPermissions:v8 andApps:v9];

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained handleResetErrors:v6 pushNextPane:0];
}

- (void)returnFromDetailAndStopAllSharingForPermission:(id)permission
{
  permissionCopy = permission;
  buttonTray = [(DSPrivacyPermissionsController *)self buttonTray];
  [buttonTray showButtonsBusy];

  objc_initWeak(&location, self);
  appSharing = [(DSPrivacyPermissionsController *)self appSharing];
  v7 = MEMORY[0x277CBEB98];
  tccPermission = [permissionCopy tccPermission];
  v9 = [v7 setWithObject:tccPermission];
  allUserVisibleApps = [MEMORY[0x277D054D8] allUserVisibleApps];
  v11 = MEMORY[0x277D85CD0];
  v12 = MEMORY[0x277D85CD0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__DSPrivacyPermissionsController_returnFromDetailAndStopAllSharingForPermission___block_invoke;
  v14[3] = &unk_278F75140;
  v14[4] = self;
  v13 = permissionCopy;
  v15 = v13;
  objc_copyWeak(&v16, &location);
  [appSharing resetPermissions:v9 forApps:allUserVisibleApps queue:v11 handler:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __81__DSPrivacyPermissionsController_returnFromDetailAndStopAllSharingForPermission___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 tccPermission];
  v8 = [v3 setWithObject:v7];
  v9 = MEMORY[0x277CBEB98];
  v10 = [*(a1 + 32) apps];
  v11 = [v9 setWithArray:v10];
  [v4 addUnsharedPermissions:v8 andApps:v11];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained handleResetErrors:v6 pushNextPane:0];
}

- (void)handleResetErrors:(id)errors pushNextPane:(BOOL)pane
{
  paneCopy = pane;
  errorsCopy = errors;
  if ([errorsCopy count])
  {
    v7 = [MEMORY[0x277D05498] errorWithCode:4 underlyingErrors:errorsCopy];
    v8 = [MEMORY[0x277D75110] ds_alertControllerWithStopPermissionSharingError:v7];
    v9 = MEMORY[0x277D750F8];
    v10 = DSUILocStringForKey(@"OK");
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__DSPrivacyPermissionsController_handleResetErrors_pushNextPane___block_invoke;
    v15[3] = &unk_278F750A0;
    v15[4] = self;
    v11 = [v9 actionWithTitle:v10 style:1 handler:v15];
    [v8 addAction:v11];

    [(DSPrivacyPermissionsController *)self presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    [(DSPrivacyPermissionsController *)self reloadData];
    if (paneCopy)
    {
      [(DSPrivacyPermissionsController *)self _pushNextPane];
    }

    else
    {
      navigationController = [(DSPrivacyPermissionsController *)self navigationController];
      v13 = [navigationController popViewControllerAnimated:1];
    }

    buttonTray = [(DSPrivacyPermissionsController *)self buttonTray];
    [buttonTray showButtonsAvailable];
  }
}

void __65__DSPrivacyPermissionsController_handleResetErrors_pushNextPane___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  [*(a1 + 32) setSelectedSensors:v2];

  v3 = [MEMORY[0x277CBEB58] set];
  [*(a1 + 32) setSelectedApps:v3];

  [*(a1 + 32) _updateButton];
  [*(a1 + 32) reloadData];
  v4 = [*(a1 + 32) buttonTray];
  [v4 showButtonsAvailable];
}

- (void)collectPermissionsByType
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_apps;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [MEMORY[0x277D05478] ensureApp:*(*(&v12 + 1) + 8 * v8++) inSensorDict:{v3, v12}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [MEMORY[0x277D05478] sortSensorDict:v3];
  sensors = self->_sensors;
  self->_sensors = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setApps:(id)apps
{
  objc_storeStrong(&self->_apps, apps);
  appsCopy = apps;
  v6 = [appsCopy count];

  [(DSTableWelcomeController *)self setIsModelEmpty:v6 == 0];
  [(DSPrivacyPermissionsController *)self collectPermissionsByType];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];

  [(DSPrivacyPermissionsController *)self _updateButton];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];
  searchController = [(DSTableWelcomeController *)self searchController];
  searchBar2 = [searchController searchBar];
  -[DSPrivacyPermissionsController filterContentForSearchText:category:](self, "filterContentForSearchText:category:", text, [searchBar2 selectedScopeButtonIndex]);
}

- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change
{
  headerView = [(DSPrivacyPermissionsController *)self headerView];
  if (change)
  {
    v7 = @"PRIVACY_PERMISSIONS_INFORMATION";
  }

  else
  {
    v7 = @"PRIVACY_PERMISSIONS_APPS";
  }

  if (change)
  {
    v8 = @"PRIVACY_PERMISSIONS_DETAIL_PERMISSIONS";
  }

  else
  {
    v8 = @"PRIVACY_PERMISSIONS_DETAIL_APPS";
  }

  if (change)
  {
    v9 = @"SEARCH_PRIVACY_INFORMATION_PLACEHOLDER";
  }

  else
  {
    v9 = @"SEARCH_PRIVACY_APPS_PLACEHOLDER";
  }

  v10 = DSUILocStringForKey(v7);
  [headerView setTitle:v10];

  headerView2 = [(DSPrivacyPermissionsController *)self headerView];
  v12 = DSUILocStringForKey(v8);
  [headerView2 setDetailText:v12];

  v13 = DSUILocStringForKey(v9);
  searchController = [(DSTableWelcomeController *)self searchController];
  searchBar = [searchController searchBar];
  [searchBar setPlaceholder:v13];

  searchController2 = [(DSTableWelcomeController *)self searchController];
  searchBar2 = [searchController2 searchBar];
  text = [searchBar2 text];
  [(DSPrivacyPermissionsController *)self filterContentForSearchText:text category:change];

  self->_scope = change;

  [(DSPrivacyPermissionsController *)self _updateButton];
}

- (void)filterContentForSearchText:(id)text category:(int64_t)category
{
  if (self->_scope)
  {
    text = [MEMORY[0x277CCAC30] predicateWithFormat:@"localizedName contains[c] %@", category, text];
    sensors = [(DSPrivacyPermissionsController *)self sensors];
    v6 = [sensors filteredArrayUsingPredicate:text];
    [(DSPrivacyPermissionsController *)self setFilteredSensors:v6];
  }

  else
  {
    text = [MEMORY[0x277CCAC30] predicateWithFormat:@"displayName contains[c] %@", category, text];
    sensors = [(DSPrivacyPermissionsController *)self apps];
    v6 = [sensors filteredArrayUsingPredicate:text];
    [(DSPrivacyPermissionsController *)self setFilteredApps:v6];
  }

  headerView = [(DSPrivacyPermissionsController *)self headerView];
  [headerView setTitle:&stru_285BA4988];

  headerView2 = [(DSPrivacyPermissionsController *)self headerView];
  [headerView2 setDetailText:&stru_285BA4988];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  scope = self->_scope;
  isFiltering = [(DSTableWelcomeController *)self isFiltering];
  if (scope == 1)
  {
    if (isFiltering)
    {
      [(DSPrivacyPermissionsController *)self filteredSensors];
    }

    else
    {
      [(DSPrivacyPermissionsController *)self sensors];
    }
    v8 = ;
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v10 = MEMORY[0x277D05478];
    apps = [(DSPrivacyPermissionsController *)self apps];
    v12 = [v10 localizedDescriptionFromApps:apps permission:v9];

    v13 = MEMORY[0x277D05478];
    tccPermission = [v9 tccPermission];
    v15 = [v13 iconForPermission:tccPermission tableFormat:1];

    tableView = [(OBTableWelcomeController *)self tableView];
    localizedName = [v9 localizedName];
    v18 = [DSIconTableViewCell iconTableViewCellFromTableView:tableView withText:localizedName detail:v12 icon:v15];

    [v18 setAccessoryType:4];
    [v18 setEditingAccessoryType:4];
    selectedSensors = [(DSPrivacyPermissionsController *)self selectedSensors];
    LOBYTE(localizedName) = [selectedSensors containsObject:v9];

    if (localizedName)
    {
LABEL_8:
      tableView2 = [(OBTableWelcomeController *)self tableView];
      [tableView2 selectRowAtIndexPath:pathCopy animated:1 scrollPosition:0];
    }
  }

  else
  {
    if (isFiltering)
    {
      [(DSPrivacyPermissionsController *)self filteredApps];
    }

    else
    {
      [(DSPrivacyPermissionsController *)self apps];
    }
    v23 = ;
    v9 = [v23 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v12 = [MEMORY[0x277D05478] localizedDescriptionFromPermissions:v9];
    appID = [v9 appID];
    v15 = [DSUIUtilities appIconForAppID:appID format:0];

    tableView3 = [(OBTableWelcomeController *)self tableView];
    displayName = [v9 displayName];
    v18 = [DSIconTableViewCell iconTableViewCellFromTableView:tableView3 withText:displayName detail:v12 icon:v15];

    [v18 setAccessoryType:4];
    [v18 setEditingAccessoryType:4];
    selectedApps = [(DSPrivacyPermissionsController *)self selectedApps];
    LODWORD(displayName) = [selectedApps containsObject:v9];

    if (displayName)
    {
      goto LABEL_8;
    }
  }

  v21 = v18;

  return v18;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  scope = self->_scope;
  isFiltering = [(DSTableWelcomeController *)self isFiltering];
  if (scope)
  {
    if (isFiltering)
    {
      [(DSPrivacyPermissionsController *)self filteredSensors];
    }

    else
    {
      [(DSPrivacyPermissionsController *)self sensors];
    }
  }

  else if (isFiltering)
  {
    [(DSPrivacyPermissionsController *)self filteredApps];
  }

  else
  {
    [(DSPrivacyPermissionsController *)self apps];
  }
  v8 = ;
  v9 = v8;
  v10 = [v8 count];

  if ([(DSTableWelcomeController *)self isFiltering])
  {
    if (v10)
    {
      [(DSTableWelcomeController *)self hideNoResultsView];
    }

    else
    {
      searchController = [(DSTableWelcomeController *)self searchController];
      searchBar = [searchController searchBar];
      text = [searchBar text];
      [(DSTableWelcomeController *)self showNoResultsViewWithSearchText:text];
    }
  }

  else if (v10)
  {
    [(DSTableWelcomeController *)self hideNoSharingView];
    [(DSTableWelcomeController *)self setIsModelEmpty:0];
    [(DSPrivacyPermissionsController *)self _updateButton];
    [(DSPrivacyPermissionsController *)self _updateTitle];
  }

  else
  {
    v14 = DSUILocStringForKey(@"NO_SHARING_APPS");
    v15 = [MEMORY[0x277D755B8] _systemImageNamed:@"app.3.stack.3d.fill"];
    [(DSTableWelcomeController *)self showNoSharingViewWithText:v14 image:v15];

    [(DSTableWelcomeController *)self setIsModelEmpty:1];
    [(DSPrivacyPermissionsController *)self _updateButton];
  }

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  scope = self->_scope;
  isFiltering = [(DSTableWelcomeController *)self isFiltering];
  if (scope)
  {
    selectedSensors = [(DSPrivacyPermissionsController *)self selectedSensors];
    if (isFiltering)
    {
      [(DSPrivacyPermissionsController *)self filteredSensors];
    }

    else
    {
      [(DSPrivacyPermissionsController *)self sensors];
    }
  }

  else
  {
    selectedSensors = [(DSPrivacyPermissionsController *)self selectedApps];
    if (isFiltering)
    {
      [(DSPrivacyPermissionsController *)self filteredApps];
    }

    else
    {
      [(DSPrivacyPermissionsController *)self apps];
    }
  }
  v10 = ;
  v11 = v10;
  v12 = [v10 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  [selectedSensors addObject:v12];

  [(DSPrivacyPermissionsController *)self _updateButton];
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  scope = self->_scope;
  isFiltering = [(DSTableWelcomeController *)self isFiltering];
  if (scope)
  {
    selectedSensors = [(DSPrivacyPermissionsController *)self selectedSensors];
    if (isFiltering)
    {
      [(DSPrivacyPermissionsController *)self filteredSensors];
    }

    else
    {
      [(DSPrivacyPermissionsController *)self sensors];
    }
  }

  else
  {
    selectedSensors = [(DSPrivacyPermissionsController *)self selectedApps];
    if (isFiltering)
    {
      [(DSPrivacyPermissionsController *)self filteredApps];
    }

    else
    {
      [(DSPrivacyPermissionsController *)self apps];
    }
  }
  v10 = ;
  v11 = v10;
  v12 = [v10 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  [selectedSensors removeObject:v12];

  [(DSPrivacyPermissionsController *)self _updateButton];
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  pathCopy = path;
  scope = self->_scope;
  isFiltering = [(DSTableWelcomeController *)self isFiltering];
  if (scope)
  {
    if (isFiltering)
    {
      [(DSPrivacyPermissionsController *)self filteredSensors];
    }

    else
    {
      [(DSPrivacyPermissionsController *)self sensors];
    }
    v7 = ;
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v9 = [DSPrivacyPermissionDetailController alloc];
    localizedName = [v8 localizedName];
    v11 = MEMORY[0x277CCACA8];
    v12 = DSUILocStringForKey(@"PRIVACY_PERMISSIONS_INFORMATION_DETAIL");
    localizedName2 = [v8 localizedName];
    v14 = [v11 localizedStringWithFormat:v12, localizedName2];
    apps = [(DSPrivacyPermissionsController *)self apps];
    v16 = [(DSPrivacyPermissionDetailController *)v9 initWithTitle:localizedName detailText:v14 symbolName:0 permission:v8 apps:apps];
  }

  else
  {
    if (isFiltering)
    {
      [(DSPrivacyPermissionsController *)self filteredApps];
    }

    else
    {
      [(DSPrivacyPermissionsController *)self apps];
    }
    v17 = ;
    v8 = [v17 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v18 = [DSPrivacyAppDetailController alloc];
    localizedName = [v8 displayName];
    v19 = MEMORY[0x277CCACA8];
    v12 = DSUILocStringForKey(@"PRIVACY_PERMISSIONS_APP_DETAIL");
    localizedName2 = [v8 displayName];
    v14 = [v19 localizedStringWithFormat:v12, localizedName2];
    v16 = [(DSPrivacyAppDetailController *)v18 initWithTitle:localizedName detailText:v14 symbolName:0 app:v8];
  }

  [(DSPrivacyPermissionDetailController *)v16 setDelegate:self];
  navigationController = [(DSPrivacyPermissionsController *)self navigationController];
  [navigationController pushViewController:v16 animated:1];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (([(DSTableWelcomeController *)self isKeyboardActive]|| [(DSTableWelcomeController *)self isFiltering]) && ![(DSTableWelcomeController *)self isShowingNoResultsView])
  {
    if (self->_scope)
    {
      v8 = @"SEARCH_PRIVACY_TITLE_INFORMATION";
    }

    else
    {
      v8 = @"SEARCH_PRIVACY_TITLE_APPS";
    }

    v9 = DSUILocStringForKey(v8);
    v7 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"header"];
    defaultContentConfiguration = [v7 defaultContentConfiguration];
    [defaultContentConfiguration setText:v9];
    [v7 setContentConfiguration:defaultContentConfiguration];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = DSPrivacyPermissionsController;
    v7 = [(DSTableWelcomeController *)&v12 tableView:viewCopy viewForHeaderInSection:section];
  }

  return v7;
}

- (void)reloadData
{
  objc_initWeak(&location, self);
  appSharing = self->_appSharing;
  allUserVisibleApps = [MEMORY[0x277D054D8] allUserVisibleApps];
  v5 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__DSPrivacyPermissionsController_reloadData__block_invoke;
  v7[3] = &unk_278F750C8;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [(DSAppSharing *)appSharing collectPermissionsForApps:allUserVisibleApps queue:v5 handler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __44__DSPrivacyPermissionsController_reloadData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [v6 count];

  if (v8)
  {
    v9 = DSUILocStringForKey(@"COLLECT_APP_PERMISSIONS_FAILED_TITLE");
    v10 = DSUILocStringForKey(@"COLLECT_APP_PERMISSIONS_FAILED");
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __44__DSPrivacyPermissionsController_reloadData__block_invoke_3;
    v19[3] = &unk_278F750A0;
    v20 = WeakRetained;
    [v20 presentErrorAlertWithTitle:v9 message:v10 continueHandler:&__block_literal_global_421 tryAgainHandler:v19];
  }

  if (WeakRetained)
  {
    [WeakRetained setApps:v5];
  }

  v11 = [*(a1 + 32) selectedSensors];
  v12 = MEMORY[0x277CBEB98];
  v13 = [*(a1 + 32) sensors];
  v14 = [v12 setWithArray:v13];
  [v11 intersectSet:v14];

  v15 = [*(a1 + 32) selectedApps];
  v16 = MEMORY[0x277CBEB98];
  v17 = [*(a1 + 32) apps];
  v18 = [v16 setWithArray:v17];
  [v15 intersectSet:v18];

  [*(a1 + 32) _updateButton];
}

- (void)addUnsharedPermissions:(id)permissions andApps:(id)apps
{
  appsCopy = apps;
  permissionsCopy = permissions;
  delegate = [(DSPrivacyPermissionsController *)self delegate];
  v9 = [MEMORY[0x277D05478] enumerateAppPermissionPairsFromApps:appsCopy permissions:permissionsCopy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__DSPrivacyPermissionsController_addUnsharedPermissions_andApps___block_invoke;
  v11[3] = &unk_278F75208;
  v12 = delegate;
  v10 = delegate;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];
}

void __65__DSPrivacyPermissionsController_addUnsharedPermissions_andApps___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v8 = [*(a1 + 32) unsharedPermissions];
    [v8 addObject:v5];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    v12 = v27;
    v13 = &unk_278F751E0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = *(a1 + 32);
        if (objc_opt_respondsToSelector())
        {
          v17 = [*(a1 + 32) unsharedApps];
          [v15 appID];
          v18 = v10;
          v19 = v12;
          v20 = a1;
          v21 = v11;
          v22 = v5;
          v24 = v23 = v13;
          [v17 addObject:v24];

          v13 = v23;
          v5 = v22;
          v11 = v21;
          a1 = v20;
          v12 = v19;
          v10 = v18;
        }

        v27[0] = __65__DSPrivacyPermissionsController_addUnsharedPermissions_andApps___block_invoke_2;
        v27[1] = v13;
        v28 = v5;
        v29 = v15;
        AnalyticsSendEventLazy();
      }

      v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  v25 = *MEMORY[0x277D85DE8];
}

id __65__DSPrivacyPermissionsController_addUnsharedPermissions_andApps___block_invoke_2(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v7[0] = @"permission";
  v7[1] = @"app";
  v8[0] = v2;
  v3 = [v1 appID];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_pushNextPane
{
  delegate = [(DSPrivacyPermissionsController *)self delegate];
  [delegate pushNextPane];

  searchController = [(DSTableWelcomeController *)self searchController];
  [searchController setActive:0];
}

- (void)_updateTitle
{
  scope = self->_scope;
  headerView = [(DSPrivacyPermissionsController *)self headerView];
  if (scope)
  {
    v5 = @"PRIVACY_PERMISSIONS_INFORMATION";
  }

  else
  {
    v5 = @"PRIVACY_PERMISSIONS_APPS";
  }

  if (scope)
  {
    v6 = @"PRIVACY_PERMISSIONS_DETAIL_PERMISSIONS";
  }

  else
  {
    v6 = @"PRIVACY_PERMISSIONS_DETAIL_APPS";
  }

  v7 = DSUILocStringForKey(v5);
  [headerView setTitle:v7];

  headerView2 = [(DSPrivacyPermissionsController *)self headerView];
  v8 = DSUILocStringForKey(v6);
  [headerView2 setDetailText:v8];
}

- (void)_updateButton
{
  if ([(DSPrivacyPermissionsController *)self scope])
  {
    [(DSPrivacyPermissionsController *)self selectedSensors];
  }

  else
  {
    [(DSPrivacyPermissionsController *)self selectedApps];
  }
  v3 = ;
  v4 = [v3 count];

  boldButton = [(DSTableWelcomeController *)self boldButton];
  [boldButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  if (v4)
  {
    boldButton2 = [(DSTableWelcomeController *)self boldButton];
    v7 = DSUILocStringForKey(@"STOP_ACCESS");
    [boldButton2 setTitle:v7 forState:0];

    boldButton3 = [(DSTableWelcomeController *)self boldButton];
    [boldButton3 addTarget:self action:sel_resetSelectedPermissions forControlEvents:64];
  }

  else
  {
    if ([(DSTableWelcomeController *)self isModelEmpty])
    {
      v9 = @"CONTINUE";
    }

    else
    {
      v9 = @"SKIP";
    }

    boldButton3 = DSUILocStringForKey(v9);
    boldButton4 = [(DSTableWelcomeController *)self boldButton];
    [boldButton4 setTitle:boldButton3 forState:0];

    boldButton5 = [(DSTableWelcomeController *)self boldButton];
    [boldButton5 addTarget:self action:sel__pushNextPane forControlEvents:64];
  }

  [(DSTableWelcomeController *)self hideButtonsIfSearching];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end