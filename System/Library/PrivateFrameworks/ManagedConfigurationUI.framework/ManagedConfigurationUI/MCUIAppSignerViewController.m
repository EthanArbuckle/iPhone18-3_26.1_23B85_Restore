@interface MCUIAppSignerViewController
- (BOOL)_isTrustPreventedByLockdownMode;
- (BOOL)_showVerifyRowIncludeAlmostUntrustedApps:(BOOL)a3;
- (BOOL)_tableView:(id)a3 isIndexPathValid:(id)a4;
- (BOOL)isFreeDeveloper;
- (MCUIAppSignerViewController)initWithAppSigner:(id)a3;
- (MCUIAppSignerViewController)initWithAppSigner:(id)a3 uninstaller:(id)a4;
- (id)_appCellInTableView:(id)a3 atIndexPath:(id)a4;
- (id)_trustCellInTableView:(id)a3 atIndexPath:(id)a4 appCount:(int64_t)a5;
- (id)_verifyCellInTableView:(id)a3 atIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_appSignerWasRemoved;
- (void)_appSignersDidChange;
- (void)_appSignersUpdated:(id)a3;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4;
- (void)_presentAppRemovalAlert;
- (void)_presentNetworkRequiredAlert;
- (void)_presentTrustFailedAlert;
- (void)_presentVerifyAppAlert;
- (void)_removeAppSignerApps;
- (void)_setup;
- (void)_trust;
- (void)_verify;
- (void)dealloc;
- (void)networkReachabilityChanged:(id)a3;
- (void)setAppSigner:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation MCUIAppSignerViewController

- (MCUIAppSignerViewController)initWithAppSigner:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(MCUIAppSignerViewController *)self initWithAppSigner:v4 uninstaller:v5];

  return v6;
}

- (MCUIAppSignerViewController)initWithAppSigner:(id)a3 uninstaller:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = MCUIAppSignerViewController;
  v9 = [(MCUITableViewController *)&v18 initWithStyle:2];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appSigner, a3);
    objc_storeStrong(&v10->_uninstaller, a4);
    v11 = objc_alloc(MEMORY[0x277D24690]);
    v12 = dispatch_get_global_queue(33, 0);
    v13 = [v11 initWithValidationQueue:v12];
    profileTrust = v10->_profileTrust;
    v10->_profileTrust = v13;

    [(MCUIAppSignerViewController *)v10 _setup];
    v15 = [v7 displayName];
    v16 = [(MCUIAppSignerViewController *)v10 navigationItem];
    [v16 setTitle:v15];
  }

  return v10;
}

- (void)_setup
{
  v3 = dispatch_group_create();
  trustActionGroup = self->_trustActionGroup;
  self->_trustActionGroup = v3;

  v24.receiver = self;
  v24.super_class = MCUIAppSignerViewController;
  [(MCUITableViewController *)&v24 updateExtendedLayoutIncludesOpaqueBars];
  [(MCUIAppSignerViewController *)self setEdgesForExtendedLayout:15];
  v5 = [(MCUIAppSignerViewController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"MCUIApplicationCellIdentifier"];

  v6 = [(MCUIAppSignerViewController *)self tableView];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"MCUIApplicationTrustCellIdentifier"];

  v23.receiver = self;
  v23.super_class = MCUIAppSignerViewController;
  [(MCUITableViewController *)&v23 reloadTableOnContentSizeCategoryChange];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = [(MCUIAppSignerViewController *)self appSigner];
  [v7 addObserver:self selector:sel__appSignersUpdated_ name:@"kMCUIAppSignersUpdatedNotification" object:v8];

  v9 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [v9 addNetworkReachableObserver:self selector:sel_networkReachabilityChanged_];

  v10 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  self->_isNetworkReachable = [v10 isNetworkReachable];

  objc_initWeak(&location, self);
  v11 = [*MEMORY[0x277D03440] UTF8String];
  v12 = MEMORY[0x277D85CD0];
  v13 = MEMORY[0x277D85CD0];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __37__MCUIAppSignerViewController__setup__block_invoke;
  handler[3] = &unk_279861FA8;
  objc_copyWeak(&v21, &location);
  notify_register_dispatch(v11, &_setup_settingsChangedToken, v12, handler);

  v14 = [*MEMORY[0x277D03460] UTF8String];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __37__MCUIAppSignerViewController__setup__block_invoke_2;
  v18[3] = &unk_279861FA8;
  objc_copyWeak(&v19, &location);
  notify_register_dispatch(v14, &_setup_trustFailedToken, MEMORY[0x277D85CD0], v18);

  v15 = [*MEMORY[0x277D03468] UTF8String];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__MCUIAppSignerViewController__setup__block_invoke_3;
  v16[3] = &unk_279861FA8;
  objc_copyWeak(&v17, &location);
  notify_register_dispatch(v15, &_setup_verificationOfflineToken, MEMORY[0x277D85CD0], v16);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __37__MCUIAppSignerViewController__setup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _appSignersDidChange];
    WeakRetained = v2;
  }
}

void __37__MCUIAppSignerViewController__setup__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _presentTrustFailedAlert];
    WeakRetained = v2;
  }
}

void __37__MCUIAppSignerViewController__setup__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _presentNetworkRequiredAlert];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [v3 removeNetworkReachableObserver:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = MCUIAppSignerViewController;
  [(MCUITableViewController *)&v5 dealloc];
}

- (void)_appSignersUpdated:(id)a3
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__MCUIAppSignerViewController__appSignersUpdated___block_invoke;
  v3[3] = &unk_279861990;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __50__MCUIAppSignerViewController__appSignersUpdated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained tableView];
    [v2 reloadData];

    WeakRetained = v3;
  }
}

- (void)_appSignersDidChange
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [(MCUIAppSignerViewController *)self appSigner];
  [v3 refreshApplications];

  v4 = [(MCUIAppSignerViewController *)self appSigner];
  v5 = [v4 displayName];
  v6 = [(MCUIAppSignerViewController *)self navigationItem];
  [v6 setTitle:v5];

  v7 = [(MCUIAppSignerViewController *)self tableView];
  [v7 reloadData];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = @"kMCUIAppSignersUpdatedNotification";
  v13[0] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v8 postNotificationName:@"kMCUIUpdatedNotification" object:self userInfo:v9];

  v10 = [(MCUIAppSignerViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_appSignerWasRemoved
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = @"kMCUIAppSignersUpdatedNotification";
  v7[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v3 postNotificationName:@"kMCUIUpdatedNotification" object:self userInfo:v4];

  [(MCUIAppSignerViewController *)self dmc_popViewControllerAnimated:1];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)networkReachabilityChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277CEC510]];

  -[MCUIAppSignerViewController setIsNetworkReachable:](self, "setIsNetworkReachable:", [v5 BOOLValue]);
}

- (BOOL)isFreeDeveloper
{
  v3 = [(MCUIAppSignerViewController *)self appSigner];
  if ([v3 hasUniversalPP])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(MCUIAppSignerViewController *)self appSigner];
    v4 = [v5 hasFreePP];
  }

  return v4;
}

- (void)setAppSigner:(id)a3
{
  v5 = a3;
  if (self->_appSigner != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_appSigner, a3);
    v6 = [(MCUIAppSigner *)v10 displayName];
    v7 = [(MCUIAppSignerViewController *)self navigationItem];
    [v7 setTitle:v6];

    v8 = [(MCUIAppSignerViewController *)self tableView];
    [v8 reloadData];

    v9 = [(MCUIAppSignerViewController *)self navigationItem];
    DMCSendNavUIUpdatedNotification();

    v5 = v10;
  }
}

- (void)_trust
{
  v3 = MCUILocalizedString(@"TRUSTING_APP_SIGNER_STATUS");
  v4 = [(MCUIAppSignerViewController *)self navigationItem];
  [v4 setTitle:v3];

  [(UIViewController *)self MCUIShowProgressInNavBar];
  objc_initWeak(&location, self);
  v5 = [(MCUIAppSignerViewController *)self trustActionGroup];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__MCUIAppSignerViewController__trust__block_invoke;
  v6[3] = &unk_279861990;
  objc_copyWeak(&v7, &location);
  dispatch_group_notify(v5, MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __37__MCUIAppSignerViewController__trust__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained profileTrust];
    v5 = [v3 appSigner];
    v6 = [v5 provisioningProfiles];
    v7 = [v3 appSigner];
    v8 = [v7 displayName];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __37__MCUIAppSignerViewController__trust__block_invoke_2;
    v9[3] = &unk_279861FF8;
    objc_copyWeak(&v10, (a1 + 32));
    [v4 uiTrustAndVerifyProvisioningProfiles:v6 developer:v8 completion:v9];

    objc_destroyWeak(&v10);
  }
}

void __37__MCUIAppSignerViewController__trust__block_invoke_2(uint64_t a1, void *a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __37__MCUIAppSignerViewController__trust__block_invoke_3;
  v2[3] = &unk_279861FD0;
  v3[1] = a2;
  objc_copyWeak(v3, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(v3);
}

void __37__MCUIAppSignerViewController__trust__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [objc_alloc(MEMORY[0x277D0AE10]) initWithReason:@"MCUI provisioning profile trust"];
    [v2 setRebootType:1];
    v3 = [MEMORY[0x277D0AE18] sharedService];
    [v3 shutdownWithOptions:v2];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained MCUIHideProgressInNavBarShowBackButton:1];
    [v5 _appSignersDidChange];
    WeakRetained = v5;
  }
}

- (void)_verify
{
  v3 = MCUILocalizedString(@"VERIFYING_APPS_STATUS");
  v4 = [(MCUIAppSignerViewController *)self navigationItem];
  [v4 setTitle:v3];

  [(UIViewController *)self MCUIShowProgressInNavBar];
  objc_initWeak(&location, self);
  v5 = [(MCUIAppSignerViewController *)self trustActionGroup];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__MCUIAppSignerViewController__verify__block_invoke;
  v6[3] = &unk_279861990;
  objc_copyWeak(&v7, &location);
  dispatch_group_notify(v5, MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __38__MCUIAppSignerViewController__verify__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [WeakRetained appSigner];
    obj = [v4 provisioningProfiles];

    v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = *v16;
      do
      {
        v7 = 0;
        do
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v15 + 1) + 8 * v7);
          v9 = [v3 profileTrust];
          v10 = [v8 uuid];
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __38__MCUIAppSignerViewController__verify__block_invoke_2;
          v13[3] = &unk_279861FF8;
          objc_copyWeak(&v14, (a1 + 32));
          [v9 uiVerifyProvisioningProfileUUID:v10 completion:v13];

          objc_destroyWeak(&v14);
          ++v7;
        }

        while (v5 != v7);
        v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __38__MCUIAppSignerViewController__verify__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__MCUIAppSignerViewController__verify__block_invoke_3;
  block[3] = &unk_279861990;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __38__MCUIAppSignerViewController__verify__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained MCUIHideProgressInNavBarShowBackButton:1];
    [v2 _appSignersDidChange];
    WeakRetained = v2;
  }
}

- (void)_removeAppSignerApps
{
  v3 = MCUILocalizedString(@"REMOVING_APP_SIGNER_STATUS");
  v4 = [(MCUIAppSignerViewController *)self navigationItem];
  [v4 setTitle:v3];

  [(UIViewController *)self MCUIShowProgressInNavBar];
  objc_initWeak(&location, self);
  v5 = [(MCUIAppSignerViewController *)self appSigner];
  v6 = [(MCUIAppSignerViewController *)self uninstaller];
  v7 = [(MCUIAppSignerViewController *)self trustActionGroup];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__MCUIAppSignerViewController__removeAppSignerApps__block_invoke;
  v8[3] = &unk_279861990;
  objc_copyWeak(&v9, &location);
  [MCUIAppSignerUninstallerUtilities uninstallAppSigner:v5 withUninstaller:v6 dispatchGroup:v7 completion:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__MCUIAppSignerViewController__removeAppSignerApps__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _appSignerWasRemoved];
    WeakRetained = v2;
  }
}

- (BOOL)_showVerifyRowIncludeAlmostUntrustedApps:(BOOL)a3
{
  v3 = a3;
  v5 = [(MCUIAppSignerViewController *)self appSigner];
  v6 = [v5 applications];
  v7 = [v6 count];

  v8 = [(MCUIAppSignerViewController *)self appSigner];
  v9 = [v8 untrustedAppCount];
  v10 = v9 > 0;
  if (v9 <= 0 && v3)
  {
    v11 = [(MCUIAppSignerViewController *)self appSigner];
    v10 = [v11 almostUntrustedAppCount] > 0;
  }

  v12 = [(MCUIAppSignerViewController *)self appSigner];
  v13 = [v12 isTrusted];
  v14 = v7 > 0 && v10;
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_isTrustPreventedByLockdownMode
{
  if ([(MCUIAppSignerViewController *)self isFreeDeveloper])
  {
    return 0;
  }

  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 isLockdownModeEnabled];

  return v4;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(MCUIAppSignerViewController *)self appSigner];
  v5 = [v4 isTrustable];

  v6 = [(MCUIAppSignerViewController *)self _showVerifyRowIncludeAlmostUntrustedApps:1];
  v7 = [(MCUIAppSignerViewController *)self appSigner];
  v8 = [v7 applications];
  v9 = [v8 count];

  if (v5)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10 + v6;
  if (v9 <= 0)
  {
    return v11;
  }

  else
  {
    return v11 + 1;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(MCUIAppSignerViewController *)self appSigner];
  v7 = [v6 isTrustable];

  v8 = [(MCUIAppSignerViewController *)self _showVerifyRowIncludeAlmostUntrustedApps:1];
  v9 = [(MCUIAppSignerViewController *)self appSigner];
  v10 = [v9 applications];
  v11 = [v10 count];

  if ((v7 & v8) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if ((v7 | v8))
  {
    v13 = 1;
  }

  else
  {
    v13 = v11;
  }

  if (a4 != 1)
  {
    v13 = 0;
  }

  if (a4 != 2)
  {
    v12 = v13;
  }

  if (a4 == 3)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(MCUIAppSignerViewController *)self appSigner];
  v7 = [v6 isTrustable];

  v8 = [(MCUIAppSignerViewController *)self _showVerifyRowIncludeAlmostUntrustedApps:1];
  v9 = [(MCUIAppSignerViewController *)self appSigner];
  v10 = [v9 applications];
  v11 = [v10 count];

  if (v11 < 1)
  {
    goto LABEL_7;
  }

  if (!(v7 & 1 | (a4 != 1 || v8)))
  {
    goto LABEL_8;
  }

  v12 = !v8;
  if (a4 != 2)
  {
    v12 = 0;
  }

  if (a4 == 3 || v12)
  {
LABEL_8:
    v14 = MEMORY[0x277CCACA8];
    v15 = MCUILocalizedString(@"APPLICATIONS_FROM_APP_SIGNER_%@");
    v16 = [(MCUIAppSignerViewController *)self appSigner];
    v17 = [v16 identity];
    v13 = [v14 stringWithFormat:v15, v17];
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

  return v13;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v36[1] = *MEMORY[0x277D85DE8];
  v6 = [(MCUIAppSignerViewController *)self appSigner];
  v7 = [v6 isTrusted];

  if (v7)
  {
    v8 = @"APP_SIGNER_TRUSTED_DESCRIPTION_%@";
  }

  else if ([(MCUIAppSignerViewController *)self _isTrustPreventedByLockdownMode])
  {
    v8 = @"APP_SIGNER_LOCKDOWN_MODE_DESCRIPTION_%@";
  }

  else
  {
    v8 = @"APP_SIGNER_NOT_TRUSTED_DESCRIPTION_%@";
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = MCUILocalizedStringByDevice(v8);
  v11 = [(MCUIAppSignerViewController *)self appSigner];
  v12 = [v11 identity];
  v13 = [v9 stringWithFormat:v10, v12];

  v14 = [(MCUIAppSignerViewController *)self appSigner];
  v15 = [v14 isTrustable];

  if (!a4 && v15)
  {
    v16 = v13;
    goto LABEL_33;
  }

  if (!a4)
  {
    v21 = [(MCUIAppSignerViewController *)self appSigner];
    v22 = [v21 isTrusted];

    v23 = [MEMORY[0x277D262A0] sharedConnection];
    if (v22)
    {
      v35 = *MEMORY[0x277D25D20];
      v24 = &v35;
    }

    else
    {
      v36[0] = *MEMORY[0x277D25E70];
      v24 = v36;
    }

    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v26 = [v23 localizedRestrictionSourceDescriptionForFeatures:v25];

    if (v13 && v26)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v13, v26];
    }

    else if (v13)
    {
      v27 = v13;
    }

    else
    {
      if (!v26)
      {
        v16 = 0;
        goto LABEL_30;
      }

      v27 = v26;
    }

    v16 = v27;
LABEL_30:

    goto LABEL_33;
  }

  if (a4 != 1)
  {
    goto LABEL_25;
  }

  if (![(MCUIAppSignerViewController *)self _showVerifyRowIncludeAlmostUntrustedApps:0])
  {
    if ([(MCUIAppSignerViewController *)self _showVerifyRowIncludeAlmostUntrustedApps:1])
    {
      v28 = [(MCUIAppSignerViewController *)self appSigner];
      v29 = [v28 almostUntrustedAppCount];

      v19 = MEMORY[0x277CCACA8];
      if (v29 < 2)
      {
        v20 = @"APP_SIGNER_SINGULAR_APPS_EXPIRING_VERIFICATION_DESCRIPTION_%@";
      }

      else
      {
        v20 = @"APP_SIGNER_PLURAL_APPS_EXPIRING_VERIFICATION_DESCRIPTION_%@";
      }

      goto LABEL_32;
    }

LABEL_25:
    v16 = 0;
    goto LABEL_33;
  }

  v17 = [(MCUIAppSignerViewController *)self appSigner];
  v18 = [v17 untrustedAppCount];

  v19 = MEMORY[0x277CCACA8];
  if (v18 < 2)
  {
    v20 = @"APP_SIGNER_SINGULAR_APPS_NOT_VERIFIED_DESCRIPTION_%@";
  }

  else
  {
    v20 = @"APP_SIGNER_PLURAL_APPS_NOT_VERIFIED_DESCRIPTION_%@";
  }

LABEL_32:
  v30 = MCUILocalizedStringByDevice(v20);
  v31 = [(MCUIAppSignerViewController *)self appSigner];
  v32 = [v31 identity];
  v16 = [v19 stringWithFormat:v30, v32];

LABEL_33:
  v33 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MCUIAppSignerViewController *)self appSigner];
  v9 = [v8 isTrustable];

  v10 = [(MCUIAppSignerViewController *)self _showVerifyRowIncludeAlmostUntrustedApps:1];
  v11 = [(MCUIAppSignerViewController *)self appSigner];
  v12 = [v11 applications];
  v13 = [v12 count];

  if (v9)
  {
    if ([v7 section] == 1)
    {
      v14 = [(MCUIAppSignerViewController *)self _trustCellInTableView:v6 atIndexPath:v7 appCount:v13];
      goto LABEL_18;
    }

    if (v10 && [v7 section] == 2)
    {
      goto LABEL_9;
    }
  }

  else if (v10 && [v7 section] == 1)
  {
LABEL_9:
    v14 = [(MCUIAppSignerViewController *)self _verifyCellInTableView:v6 atIndexPath:v7];
    goto LABEL_18;
  }

  if (v13 >= 1 && (!(v9 | v10) && [v7 section] == 1 || !(v10 & v9) && objc_msgSend(v7, "section") == 2 || objc_msgSend(v7, "section") == 3))
  {
    v14 = [(MCUIAppSignerViewController *)self _appCellInTableView:v6 atIndexPath:v7];
  }

  else
  {
    NSLog(&cfstr_Mcuiappsignerv.isa, v7, v9, v10, v13);
    v14 = objc_opt_new();
  }

LABEL_18:
  v15 = v14;

  return v15;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(MCUIAppSignerViewController *)self appSigner];
  v8 = [v7 isTrustable];

  v9 = [(MCUIAppSignerViewController *)self _showVerifyRowIncludeAlmostUntrustedApps:1];
  if ([v6 section] == 1 && v8)
  {
    v10 = [(MCUIAppSignerViewController *)self appSigner];
    v11 = [v10 isTrusted];

    if (v11)
    {
      [(MCUIAppSignerViewController *)self _presentAppRemovalAlert];
    }

    else
    {
      v12 = [(MCUIAppSignerViewController *)self appSigner];
      v13 = [v12 applications];
      v14 = [v13 count];

      if (v14)
      {
        [(MCUIAppSignerViewController *)self _trust];
      }

      else
      {
        v15 = [(MCUIAppSignerViewController *)self appSigner];
        v16 = [v15 displayName];
        NSLog(&cfstr_Mcuiappsignerv_0.isa, v16);
      }
    }
  }

  else if (v9 && (!(([v6 section] != 1) | v8 & 1) || ((objc_msgSend(v6, "section") == 2) & v8) == 1))
  {
    [(MCUIAppSignerViewController *)self _presentVerifyAppAlert];
  }

  [v17 deselectRowAtIndexPath:v6 animated:1];
}

- (BOOL)_tableView:(id)a3 isIndexPathValid:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 section];
  if (v7 >= [v5 numberOfSections])
  {
    v9 = 0;
  }

  else
  {
    v8 = [v6 row];
    v9 = v8 < [v5 numberOfRowsInSection:{objc_msgSend(v6, "section")}];
  }

  return v9;
}

- (id)_trustCellInTableView:(id)a3 atIndexPath:(id)a4 appCount:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([(MCUIAppSignerViewController *)self _tableView:v8 isIndexPathValid:v9])
  {
    v10 = [v8 dequeueReusableCellWithIdentifier:@"MCUIApplicationTrustCellIdentifier" forIndexPath:v9];

    [(MCUIAppSignerViewController *)self setTrustCell:v10];
    v11 = [(MCUIAppSignerViewController *)self appSigner];
    LODWORD(v10) = [v11 isTrusted];

    if (v10)
    {
      v12 = [(MCUIAppSignerViewController *)self trustCell];
      if (a5 >= 2)
      {
        v13 = @"DELETE_APP_PLURAL";
      }

      else
      {
        v13 = @"DELETE_APP_SINGULAR";
      }

      v14 = MCUILocalizedString(v13);
      v15 = [MEMORY[0x277D75348] DMCProfileRedColor];
      v16 = v12;
      v17 = v14;
      v18 = v15;
      v19 = 1;
    }

    else
    {
      v21 = MEMORY[0x277CCACA8];
      v22 = MCUILocalizedString(@"TRUST_APP_DEVELOPER_NAME_%@");
      v23 = [(MCUIAppSignerViewController *)self appSigner];
      v24 = [v23 displayName];
      v12 = [v21 stringWithFormat:v22, v24];

      v14 = [(MCUIAppSignerViewController *)self trustCell];
      v15 = [MEMORY[0x277D75348] systemBlueColor];
      v19 = [(MCUIAppSignerViewController *)self _isTrustPreventedByLockdownMode]^ 1;
      v16 = v14;
      v17 = v12;
      v18 = v15;
    }

    [v16 setText:v17 color:v18 enabled:v19];

    v20 = [(MCUIAppSignerViewController *)self trustCell];
  }

  else
  {
    NSLog(&cfstr_Mcuiappsignerv_1.isa, v9);

    v20 = objc_opt_new();
  }

  v25 = v20;

  return v25;
}

- (id)_verifyCellInTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MCUIAppSignerViewController *)self _tableView:v6 isIndexPathValid:v7])
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"MCUIApplicationTrustCellIdentifier" forIndexPath:v7];

    v9 = [(MCUIAppSignerViewController *)self appSigner];
    if ([v9 untrustedAppCount] >= 2)
    {
      v10 = @"VERIFY_APP_PLURAL";
    }

    else
    {
      v10 = @"VERIFY_APP_SINGULAR";
    }

    v11 = MCUILocalizedString(v10);
    v12 = [MEMORY[0x277D75348] systemBlueColor];
    [v8 setText:v11 color:v12 enabled:1];
  }

  else
  {
    NSLog(&cfstr_Mcuiappsignerv_2.isa, v7);

    v8 = objc_opt_new();
  }

  return v8;
}

- (id)_appCellInTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MCUIAppSignerViewController *)self _tableView:v6 isIndexPathValid:v7])
  {
    v8 = [(MCUIAppSignerViewController *)self appSigner];
    v9 = [v8 applications];

    v10 = [v7 row];
    if (v10 >= [v9 count])
    {
      NSLog(&cfstr_Mcuiappsignerv_4.isa, v7, v9);
      v12 = objc_opt_new();
    }

    else
    {
      v11 = [v9 objectAtIndex:{objc_msgSend(v7, "row")}];
      v12 = [v6 dequeueReusableCellWithIdentifier:@"MCUIApplicationCellIdentifier" forIndexPath:v7];
      v13 = [objc_alloc(MEMORY[0x277D03238]) initWithBundleID:v11 dataSource:0];
      [v12 setApplication:v13];
    }
  }

  else
  {
    NSLog(&cfstr_Mcuiappsignerv_3.isa, v7);
    v12 = objc_opt_new();
  }

  return v12;
}

- (void)_presentVerifyAppAlert
{
  if ([(MCUIAppSignerViewController *)self isNetworkReachable])
  {
    v3 = [(MCUIAppSignerViewController *)self appSigner];
    v4 = [v3 applications];
    v5 = [v4 count];

    if (v5 == 1)
    {
      v7 = @"APP_SIGNER_VERIFY_APP_SINGULAR_ALERT";
      v8 = @"APP_SIGNER_VERIFY_APP_SINGULAR_ALERT_TITLE_%@";
    }

    else
    {
      if (!v5)
      {
        v18 = [(MCUIAppSignerViewController *)self appSigner];
        v6 = [v18 displayName];
        NSLog(&cfstr_AppSignerDoesN.isa, v6);

        return;
      }

      v7 = @"APP_SIGNER_VERIFY_APP_PLURAL_ALERT";
      v8 = @"APP_SIGNER_VERIFY_APP_PLURAL_ALERT_TITLE_%@";
    }

    v9 = MEMORY[0x277CCACA8];
    v10 = MCUILocalizedString(v8);
    v11 = [(MCUIAppSignerViewController *)self appSigner];
    v12 = [v11 identity];
    v13 = [v9 stringWithFormat:v10, v12];

    v14 = MCUILocalizedStringByDevice(v7);
    v15 = [MEMORY[0x277D75110] alertControllerWithTitle:v13 message:v14 preferredStyle:1];
    v16 = MCUILocalizedString(@"CANCEL");
    [v15 MCUIAddCancelActionWithTitle:v16];

    objc_initWeak(&location, self);
    v17 = MCUILocalizedString(@"VERIFY");
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __53__MCUIAppSignerViewController__presentVerifyAppAlert__block_invoke;
    v19[3] = &unk_279861990;
    objc_copyWeak(&v20, &location);
    [v15 MCUIAddActionWithTitle:v17 style:0 completion:v19];

    [(MCUIAppSignerViewController *)self dmc_presentAlert:v15 completion:0];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);

    return;
  }

  [(MCUIAppSignerViewController *)self _presentNetworkRequiredAlert];
}

void __53__MCUIAppSignerViewController__presentVerifyAppAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _verify];
    WeakRetained = v2;
  }
}

- (void)_presentTrustFailedAlert
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MCUILocalizedString(@"APP_SIGNER_TRUST_FAILED_TITLE_%@");
  v5 = [(MCUIAppSignerViewController *)self appSigner];
  v6 = [v5 identity];
  v12 = [v3 stringWithFormat:v4, v6];

  v7 = MEMORY[0x277CCACA8];
  v8 = MCUILocalizedString(@"APP_SIGNER_TRUST_FAILED_MESSAGE_%@");
  v9 = [(MCUIAppSignerViewController *)self appSigner];
  v10 = [v9 identity];
  v11 = [v7 stringWithFormat:v8, v10];

  [(MCUIAppSignerViewController *)self _presentAlertWithTitle:v12 message:v11];
}

- (void)_presentNetworkRequiredAlert
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MCUILocalizedString(@"APP_SIGNER_REQUIRES_NETWORK_TITLE_%@");
  v5 = [(MCUIAppSignerViewController *)self appSigner];
  v6 = [v5 identity];
  v12 = [v3 stringWithFormat:v4, v6];

  v7 = MEMORY[0x277CCACA8];
  v8 = MCUILocalizedStringByDevice(@"APP_SIGNER_REQUIRES_NETWORK_ALERT_%@");
  v9 = [(MCUIAppSignerViewController *)self appSigner];
  v10 = [v9 identity];
  v11 = [v7 stringWithFormat:v8, v10];

  [(MCUIAppSignerViewController *)self _presentAlertWithTitle:v12 message:v11];
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(MCUIAppSignerViewController *)self presentedViewController];

  if (!v7)
  {
    v8 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:v6 preferredStyle:1];
    v9 = MCUILocalizedString(@"DISMISS_ALERT");
    [v8 MCUIAddCancelActionWithTitle:v9];

    [(MCUIAppSignerViewController *)self dmc_presentAlert:v8 completion:0];
  }
}

- (void)_presentAppRemovalAlert
{
  v3 = [(MCUIAppSignerViewController *)self appSigner];
  v4 = [v3 applications];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D03238]) initWithBundleID:v5 dataSource:0];
    v7 = [v6 name];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MCUIAppSignerViewController *)self appSigner];
  v9 = [v8 applications];
  v10 = [v9 count];

  if (v10 >= 2)
  {
    v11 = MCUILocalizedString(@"DELETE_APP_PLURAL");
  }

  else
  {
    v11 = MCUILocalizedString(@"DELETE_APP_SINGULAR");
    if (v10 == 1)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = MCUILocalizedString(@"DELETE_APP_WARNING_ONE_%@");
      v14 = [v12 stringWithFormat:v13, v7];
      goto LABEL_9;
    }
  }

  v15 = MEMORY[0x277CCACA8];
  v13 = MCUILocalizedString(@"DELETE_APP_WARNING_MULTIPLE_%d_%@");
  v14 = [v15 localizedStringWithFormat:v13, (v10 - 1), v7];
LABEL_9:
  v16 = v14;

  v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v11 message:v16 preferredStyle:1];
  v18 = MCUILocalizedString(@"CANCEL");
  [v17 MCUIAddCancelActionWithTitle:v18];

  objc_initWeak(&location, self);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54__MCUIAppSignerViewController__presentAppRemovalAlert__block_invoke;
  v22[3] = &unk_279861990;
  objc_copyWeak(&v23, &location);
  [v17 MCUIAddActionWithTitle:v11 style:2 completion:v22];
  v19 = [(MCUIAppSignerViewController *)self trustCell];

  if (v19)
  {
    v20 = [(MCUIAppSignerViewController *)self trustCell];
    v21 = [v17 popoverPresentationController];
    [v21 setSourceItem:v20];
  }

  [(MCUIAppSignerViewController *)self dmc_presentAlert:v17 completion:0];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __54__MCUIAppSignerViewController__presentAppRemovalAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _removeAppSignerApps];
    WeakRetained = v2;
  }
}

@end