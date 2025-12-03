@interface MCUIAppSignerViewController
- (BOOL)_isTrustPreventedByLockdownMode;
- (BOOL)_showVerifyRowIncludeAlmostUntrustedApps:(BOOL)apps;
- (BOOL)_tableView:(id)view isIndexPathValid:(id)valid;
- (BOOL)isFreeDeveloper;
- (MCUIAppSignerViewController)initWithAppSigner:(id)signer;
- (MCUIAppSignerViewController)initWithAppSigner:(id)signer uninstaller:(id)uninstaller;
- (id)_appCellInTableView:(id)view atIndexPath:(id)path;
- (id)_trustCellInTableView:(id)view atIndexPath:(id)path appCount:(int64_t)count;
- (id)_verifyCellInTableView:(id)view atIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_appSignerWasRemoved;
- (void)_appSignersDidChange;
- (void)_appSignersUpdated:(id)updated;
- (void)_presentAlertWithTitle:(id)title message:(id)message;
- (void)_presentAppRemovalAlert;
- (void)_presentNetworkRequiredAlert;
- (void)_presentTrustFailedAlert;
- (void)_presentVerifyAppAlert;
- (void)_removeAppSignerApps;
- (void)_setup;
- (void)_trust;
- (void)_verify;
- (void)dealloc;
- (void)networkReachabilityChanged:(id)changed;
- (void)setAppSigner:(id)signer;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation MCUIAppSignerViewController

- (MCUIAppSignerViewController)initWithAppSigner:(id)signer
{
  signerCopy = signer;
  v5 = objc_opt_new();
  v6 = [(MCUIAppSignerViewController *)self initWithAppSigner:signerCopy uninstaller:v5];

  return v6;
}

- (MCUIAppSignerViewController)initWithAppSigner:(id)signer uninstaller:(id)uninstaller
{
  signerCopy = signer;
  uninstallerCopy = uninstaller;
  v18.receiver = self;
  v18.super_class = MCUIAppSignerViewController;
  v9 = [(MCUITableViewController *)&v18 initWithStyle:2];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appSigner, signer);
    objc_storeStrong(&v10->_uninstaller, uninstaller);
    v11 = objc_alloc(MEMORY[0x277D24690]);
    v12 = dispatch_get_global_queue(33, 0);
    v13 = [v11 initWithValidationQueue:v12];
    profileTrust = v10->_profileTrust;
    v10->_profileTrust = v13;

    [(MCUIAppSignerViewController *)v10 _setup];
    displayName = [signerCopy displayName];
    navigationItem = [(MCUIAppSignerViewController *)v10 navigationItem];
    [navigationItem setTitle:displayName];
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
  tableView = [(MCUIAppSignerViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"MCUIApplicationCellIdentifier"];

  tableView2 = [(MCUIAppSignerViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"MCUIApplicationTrustCellIdentifier"];

  v23.receiver = self;
  v23.super_class = MCUIAppSignerViewController;
  [(MCUITableViewController *)&v23 reloadTableOnContentSizeCategoryChange];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  appSigner = [(MCUIAppSignerViewController *)self appSigner];
  [defaultCenter addObserver:self selector:sel__appSignersUpdated_ name:@"kMCUIAppSignersUpdatedNotification" object:appSigner];

  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [mEMORY[0x277CEC5B8] addNetworkReachableObserver:self selector:sel_networkReachabilityChanged_];

  mEMORY[0x277CEC5B8]2 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  self->_isNetworkReachable = [mEMORY[0x277CEC5B8]2 isNetworkReachable];

  objc_initWeak(&location, self);
  uTF8String = [*MEMORY[0x277D03440] UTF8String];
  v12 = MEMORY[0x277D85CD0];
  v13 = MEMORY[0x277D85CD0];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __37__MCUIAppSignerViewController__setup__block_invoke;
  handler[3] = &unk_279861FA8;
  objc_copyWeak(&v21, &location);
  notify_register_dispatch(uTF8String, &_setup_settingsChangedToken, v12, handler);

  uTF8String2 = [*MEMORY[0x277D03460] UTF8String];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __37__MCUIAppSignerViewController__setup__block_invoke_2;
  v18[3] = &unk_279861FA8;
  objc_copyWeak(&v19, &location);
  notify_register_dispatch(uTF8String2, &_setup_trustFailedToken, MEMORY[0x277D85CD0], v18);

  uTF8String3 = [*MEMORY[0x277D03468] UTF8String];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__MCUIAppSignerViewController__setup__block_invoke_3;
  v16[3] = &unk_279861FA8;
  objc_copyWeak(&v17, &location);
  notify_register_dispatch(uTF8String3, &_setup_verificationOfflineToken, MEMORY[0x277D85CD0], v16);

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
  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [mEMORY[0x277CEC5B8] removeNetworkReachableObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = MCUIAppSignerViewController;
  [(MCUITableViewController *)&v5 dealloc];
}

- (void)_appSignersUpdated:(id)updated
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
  appSigner = [(MCUIAppSignerViewController *)self appSigner];
  [appSigner refreshApplications];

  appSigner2 = [(MCUIAppSignerViewController *)self appSigner];
  displayName = [appSigner2 displayName];
  navigationItem = [(MCUIAppSignerViewController *)self navigationItem];
  [navigationItem setTitle:displayName];

  tableView = [(MCUIAppSignerViewController *)self tableView];
  [tableView reloadData];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = @"kMCUIAppSignersUpdatedNotification";
  v13[0] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [defaultCenter postNotificationName:@"kMCUIUpdatedNotification" object:self userInfo:v9];

  navigationItem2 = [(MCUIAppSignerViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_appSignerWasRemoved
{
  v7[1] = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = @"kMCUIAppSignersUpdatedNotification";
  v7[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [defaultCenter postNotificationName:@"kMCUIUpdatedNotification" object:self userInfo:v4];

  [(MCUIAppSignerViewController *)self dmc_popViewControllerAnimated:1];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)networkReachabilityChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277CEC510]];

  -[MCUIAppSignerViewController setIsNetworkReachable:](self, "setIsNetworkReachable:", [v5 BOOLValue]);
}

- (BOOL)isFreeDeveloper
{
  appSigner = [(MCUIAppSignerViewController *)self appSigner];
  if ([appSigner hasUniversalPP])
  {
    hasFreePP = 0;
  }

  else
  {
    appSigner2 = [(MCUIAppSignerViewController *)self appSigner];
    hasFreePP = [appSigner2 hasFreePP];
  }

  return hasFreePP;
}

- (void)setAppSigner:(id)signer
{
  signerCopy = signer;
  if (self->_appSigner != signerCopy)
  {
    v10 = signerCopy;
    objc_storeStrong(&self->_appSigner, signer);
    displayName = [(MCUIAppSigner *)v10 displayName];
    navigationItem = [(MCUIAppSignerViewController *)self navigationItem];
    [navigationItem setTitle:displayName];

    tableView = [(MCUIAppSignerViewController *)self tableView];
    [tableView reloadData];

    navigationItem2 = [(MCUIAppSignerViewController *)self navigationItem];
    DMCSendNavUIUpdatedNotification();

    signerCopy = v10;
  }
}

- (void)_trust
{
  v3 = MCUILocalizedString(@"TRUSTING_APP_SIGNER_STATUS");
  navigationItem = [(MCUIAppSignerViewController *)self navigationItem];
  [navigationItem setTitle:v3];

  [(UIViewController *)self MCUIShowProgressInNavBar];
  objc_initWeak(&location, self);
  trustActionGroup = [(MCUIAppSignerViewController *)self trustActionGroup];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__MCUIAppSignerViewController__trust__block_invoke;
  v6[3] = &unk_279861990;
  objc_copyWeak(&v7, &location);
  dispatch_group_notify(trustActionGroup, MEMORY[0x277D85CD0], v6);

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
  navigationItem = [(MCUIAppSignerViewController *)self navigationItem];
  [navigationItem setTitle:v3];

  [(UIViewController *)self MCUIShowProgressInNavBar];
  objc_initWeak(&location, self);
  trustActionGroup = [(MCUIAppSignerViewController *)self trustActionGroup];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__MCUIAppSignerViewController__verify__block_invoke;
  v6[3] = &unk_279861990;
  objc_copyWeak(&v7, &location);
  dispatch_group_notify(trustActionGroup, MEMORY[0x277D85CD0], v6);

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
  navigationItem = [(MCUIAppSignerViewController *)self navigationItem];
  [navigationItem setTitle:v3];

  [(UIViewController *)self MCUIShowProgressInNavBar];
  objc_initWeak(&location, self);
  appSigner = [(MCUIAppSignerViewController *)self appSigner];
  uninstaller = [(MCUIAppSignerViewController *)self uninstaller];
  trustActionGroup = [(MCUIAppSignerViewController *)self trustActionGroup];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__MCUIAppSignerViewController__removeAppSignerApps__block_invoke;
  v8[3] = &unk_279861990;
  objc_copyWeak(&v9, &location);
  [MCUIAppSignerUninstallerUtilities uninstallAppSigner:appSigner withUninstaller:uninstaller dispatchGroup:trustActionGroup completion:v8];

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

- (BOOL)_showVerifyRowIncludeAlmostUntrustedApps:(BOOL)apps
{
  appsCopy = apps;
  appSigner = [(MCUIAppSignerViewController *)self appSigner];
  applications = [appSigner applications];
  v7 = [applications count];

  appSigner2 = [(MCUIAppSignerViewController *)self appSigner];
  untrustedAppCount = [appSigner2 untrustedAppCount];
  v10 = untrustedAppCount > 0;
  if (untrustedAppCount <= 0 && appsCopy)
  {
    appSigner3 = [(MCUIAppSignerViewController *)self appSigner];
    v10 = [appSigner3 almostUntrustedAppCount] > 0;
  }

  appSigner4 = [(MCUIAppSignerViewController *)self appSigner];
  isTrusted = [appSigner4 isTrusted];
  v14 = v7 > 0 && v10;
  if (isTrusted)
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

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isLockdownModeEnabled = [mEMORY[0x277D262A0] isLockdownModeEnabled];

  return isLockdownModeEnabled;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  appSigner = [(MCUIAppSignerViewController *)self appSigner];
  isTrustable = [appSigner isTrustable];

  v6 = [(MCUIAppSignerViewController *)self _showVerifyRowIncludeAlmostUntrustedApps:1];
  appSigner2 = [(MCUIAppSignerViewController *)self appSigner];
  applications = [appSigner2 applications];
  v9 = [applications count];

  if (isTrustable)
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  appSigner = [(MCUIAppSignerViewController *)self appSigner];
  isTrustable = [appSigner isTrustable];

  v8 = [(MCUIAppSignerViewController *)self _showVerifyRowIncludeAlmostUntrustedApps:1];
  appSigner2 = [(MCUIAppSignerViewController *)self appSigner];
  applications = [appSigner2 applications];
  v11 = [applications count];

  if ((isTrustable & v8) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if ((isTrustable | v8))
  {
    v13 = 1;
  }

  else
  {
    v13 = v11;
  }

  if (section != 1)
  {
    v13 = 0;
  }

  if (section != 2)
  {
    v12 = v13;
  }

  if (section == 3)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  appSigner = [(MCUIAppSignerViewController *)self appSigner];
  isTrustable = [appSigner isTrustable];

  v8 = [(MCUIAppSignerViewController *)self _showVerifyRowIncludeAlmostUntrustedApps:1];
  appSigner2 = [(MCUIAppSignerViewController *)self appSigner];
  applications = [appSigner2 applications];
  v11 = [applications count];

  if (v11 < 1)
  {
    goto LABEL_7;
  }

  if (!(isTrustable & 1 | (section != 1 || v8)))
  {
    goto LABEL_8;
  }

  v12 = !v8;
  if (section != 2)
  {
    v12 = 0;
  }

  if (section == 3 || v12)
  {
LABEL_8:
    v14 = MEMORY[0x277CCACA8];
    v15 = MCUILocalizedString(@"APPLICATIONS_FROM_APP_SIGNER_%@");
    appSigner3 = [(MCUIAppSignerViewController *)self appSigner];
    identity = [appSigner3 identity];
    v13 = [v14 stringWithFormat:v15, identity];
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

  return v13;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v36[1] = *MEMORY[0x277D85DE8];
  appSigner = [(MCUIAppSignerViewController *)self appSigner];
  isTrusted = [appSigner isTrusted];

  if (isTrusted)
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
  appSigner2 = [(MCUIAppSignerViewController *)self appSigner];
  identity = [appSigner2 identity];
  v13 = [v9 stringWithFormat:v10, identity];

  appSigner3 = [(MCUIAppSignerViewController *)self appSigner];
  isTrustable = [appSigner3 isTrustable];

  if (!section && isTrustable)
  {
    v16 = v13;
    goto LABEL_33;
  }

  if (!section)
  {
    appSigner4 = [(MCUIAppSignerViewController *)self appSigner];
    isTrusted2 = [appSigner4 isTrusted];

    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    if (isTrusted2)
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
    v26 = [mEMORY[0x277D262A0] localizedRestrictionSourceDescriptionForFeatures:v25];

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

  if (section != 1)
  {
    goto LABEL_25;
  }

  if (![(MCUIAppSignerViewController *)self _showVerifyRowIncludeAlmostUntrustedApps:0])
  {
    if ([(MCUIAppSignerViewController *)self _showVerifyRowIncludeAlmostUntrustedApps:1])
    {
      appSigner5 = [(MCUIAppSignerViewController *)self appSigner];
      almostUntrustedAppCount = [appSigner5 almostUntrustedAppCount];

      v19 = MEMORY[0x277CCACA8];
      if (almostUntrustedAppCount < 2)
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

  appSigner6 = [(MCUIAppSignerViewController *)self appSigner];
  untrustedAppCount = [appSigner6 untrustedAppCount];

  v19 = MEMORY[0x277CCACA8];
  if (untrustedAppCount < 2)
  {
    v20 = @"APP_SIGNER_SINGULAR_APPS_NOT_VERIFIED_DESCRIPTION_%@";
  }

  else
  {
    v20 = @"APP_SIGNER_PLURAL_APPS_NOT_VERIFIED_DESCRIPTION_%@";
  }

LABEL_32:
  v30 = MCUILocalizedStringByDevice(v20);
  appSigner7 = [(MCUIAppSignerViewController *)self appSigner];
  identity2 = [appSigner7 identity];
  v16 = [v19 stringWithFormat:v30, identity2];

LABEL_33:
  v33 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  appSigner = [(MCUIAppSignerViewController *)self appSigner];
  isTrustable = [appSigner isTrustable];

  v10 = [(MCUIAppSignerViewController *)self _showVerifyRowIncludeAlmostUntrustedApps:1];
  appSigner2 = [(MCUIAppSignerViewController *)self appSigner];
  applications = [appSigner2 applications];
  v13 = [applications count];

  if (isTrustable)
  {
    if ([pathCopy section] == 1)
    {
      v14 = [(MCUIAppSignerViewController *)self _trustCellInTableView:viewCopy atIndexPath:pathCopy appCount:v13];
      goto LABEL_18;
    }

    if (v10 && [pathCopy section] == 2)
    {
      goto LABEL_9;
    }
  }

  else if (v10 && [pathCopy section] == 1)
  {
LABEL_9:
    v14 = [(MCUIAppSignerViewController *)self _verifyCellInTableView:viewCopy atIndexPath:pathCopy];
    goto LABEL_18;
  }

  if (v13 >= 1 && (!(isTrustable | v10) && [pathCopy section] == 1 || !(v10 & isTrustable) && objc_msgSend(pathCopy, "section") == 2 || objc_msgSend(pathCopy, "section") == 3))
  {
    v14 = [(MCUIAppSignerViewController *)self _appCellInTableView:viewCopy atIndexPath:pathCopy];
  }

  else
  {
    NSLog(&cfstr_Mcuiappsignerv.isa, pathCopy, isTrustable, v10, v13);
    v14 = objc_opt_new();
  }

LABEL_18:
  v15 = v14;

  return v15;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  appSigner = [(MCUIAppSignerViewController *)self appSigner];
  isTrustable = [appSigner isTrustable];

  v9 = [(MCUIAppSignerViewController *)self _showVerifyRowIncludeAlmostUntrustedApps:1];
  if ([pathCopy section] == 1 && isTrustable)
  {
    appSigner2 = [(MCUIAppSignerViewController *)self appSigner];
    isTrusted = [appSigner2 isTrusted];

    if (isTrusted)
    {
      [(MCUIAppSignerViewController *)self _presentAppRemovalAlert];
    }

    else
    {
      appSigner3 = [(MCUIAppSignerViewController *)self appSigner];
      applications = [appSigner3 applications];
      v14 = [applications count];

      if (v14)
      {
        [(MCUIAppSignerViewController *)self _trust];
      }

      else
      {
        appSigner4 = [(MCUIAppSignerViewController *)self appSigner];
        displayName = [appSigner4 displayName];
        NSLog(&cfstr_Mcuiappsignerv_0.isa, displayName);
      }
    }
  }

  else if (v9 && (!(([pathCopy section] != 1) | isTrustable & 1) || ((objc_msgSend(pathCopy, "section") == 2) & isTrustable) == 1))
  {
    [(MCUIAppSignerViewController *)self _presentVerifyAppAlert];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (BOOL)_tableView:(id)view isIndexPathValid:(id)valid
{
  viewCopy = view;
  validCopy = valid;
  section = [validCopy section];
  if (section >= [viewCopy numberOfSections])
  {
    v9 = 0;
  }

  else
  {
    v8 = [validCopy row];
    v9 = v8 < [viewCopy numberOfRowsInSection:{objc_msgSend(validCopy, "section")}];
  }

  return v9;
}

- (id)_trustCellInTableView:(id)view atIndexPath:(id)path appCount:(int64_t)count
{
  viewCopy = view;
  pathCopy = path;
  if ([(MCUIAppSignerViewController *)self _tableView:viewCopy isIndexPathValid:pathCopy])
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"MCUIApplicationTrustCellIdentifier" forIndexPath:pathCopy];

    [(MCUIAppSignerViewController *)self setTrustCell:v10];
    appSigner = [(MCUIAppSignerViewController *)self appSigner];
    LODWORD(v10) = [appSigner isTrusted];

    if (v10)
    {
      trustCell = [(MCUIAppSignerViewController *)self trustCell];
      if (count >= 2)
      {
        v13 = @"DELETE_APP_PLURAL";
      }

      else
      {
        v13 = @"DELETE_APP_SINGULAR";
      }

      trustCell2 = MCUILocalizedString(v13);
      dMCProfileRedColor = [MEMORY[0x277D75348] DMCProfileRedColor];
      v16 = trustCell;
      v17 = trustCell2;
      v18 = dMCProfileRedColor;
      v19 = 1;
    }

    else
    {
      v21 = MEMORY[0x277CCACA8];
      v22 = MCUILocalizedString(@"TRUST_APP_DEVELOPER_NAME_%@");
      appSigner2 = [(MCUIAppSignerViewController *)self appSigner];
      displayName = [appSigner2 displayName];
      trustCell = [v21 stringWithFormat:v22, displayName];

      trustCell2 = [(MCUIAppSignerViewController *)self trustCell];
      dMCProfileRedColor = [MEMORY[0x277D75348] systemBlueColor];
      v19 = [(MCUIAppSignerViewController *)self _isTrustPreventedByLockdownMode]^ 1;
      v16 = trustCell2;
      v17 = trustCell;
      v18 = dMCProfileRedColor;
    }

    [v16 setText:v17 color:v18 enabled:v19];

    trustCell3 = [(MCUIAppSignerViewController *)self trustCell];
  }

  else
  {
    NSLog(&cfstr_Mcuiappsignerv_1.isa, pathCopy);

    trustCell3 = objc_opt_new();
  }

  v25 = trustCell3;

  return v25;
}

- (id)_verifyCellInTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(MCUIAppSignerViewController *)self _tableView:viewCopy isIndexPathValid:pathCopy])
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"MCUIApplicationTrustCellIdentifier" forIndexPath:pathCopy];

    appSigner = [(MCUIAppSignerViewController *)self appSigner];
    if ([appSigner untrustedAppCount] >= 2)
    {
      v10 = @"VERIFY_APP_PLURAL";
    }

    else
    {
      v10 = @"VERIFY_APP_SINGULAR";
    }

    v11 = MCUILocalizedString(v10);
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [v8 setText:v11 color:systemBlueColor enabled:1];
  }

  else
  {
    NSLog(&cfstr_Mcuiappsignerv_2.isa, pathCopy);

    v8 = objc_opt_new();
  }

  return v8;
}

- (id)_appCellInTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(MCUIAppSignerViewController *)self _tableView:viewCopy isIndexPathValid:pathCopy])
  {
    appSigner = [(MCUIAppSignerViewController *)self appSigner];
    applications = [appSigner applications];

    v10 = [pathCopy row];
    if (v10 >= [applications count])
    {
      NSLog(&cfstr_Mcuiappsignerv_4.isa, pathCopy, applications);
      v12 = objc_opt_new();
    }

    else
    {
      v11 = [applications objectAtIndex:{objc_msgSend(pathCopy, "row")}];
      v12 = [viewCopy dequeueReusableCellWithIdentifier:@"MCUIApplicationCellIdentifier" forIndexPath:pathCopy];
      v13 = [objc_alloc(MEMORY[0x277D03238]) initWithBundleID:v11 dataSource:0];
      [v12 setApplication:v13];
    }
  }

  else
  {
    NSLog(&cfstr_Mcuiappsignerv_3.isa, pathCopy);
    v12 = objc_opt_new();
  }

  return v12;
}

- (void)_presentVerifyAppAlert
{
  if ([(MCUIAppSignerViewController *)self isNetworkReachable])
  {
    appSigner = [(MCUIAppSignerViewController *)self appSigner];
    applications = [appSigner applications];
    v5 = [applications count];

    if (v5 == 1)
    {
      v7 = @"APP_SIGNER_VERIFY_APP_SINGULAR_ALERT";
      v8 = @"APP_SIGNER_VERIFY_APP_SINGULAR_ALERT_TITLE_%@";
    }

    else
    {
      if (!v5)
      {
        appSigner2 = [(MCUIAppSignerViewController *)self appSigner];
        displayName = [appSigner2 displayName];
        NSLog(&cfstr_AppSignerDoesN.isa, displayName);

        return;
      }

      v7 = @"APP_SIGNER_VERIFY_APP_PLURAL_ALERT";
      v8 = @"APP_SIGNER_VERIFY_APP_PLURAL_ALERT_TITLE_%@";
    }

    v9 = MEMORY[0x277CCACA8];
    v10 = MCUILocalizedString(v8);
    appSigner3 = [(MCUIAppSignerViewController *)self appSigner];
    identity = [appSigner3 identity];
    v13 = [v9 stringWithFormat:v10, identity];

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
  appSigner = [(MCUIAppSignerViewController *)self appSigner];
  identity = [appSigner identity];
  v12 = [v3 stringWithFormat:v4, identity];

  v7 = MEMORY[0x277CCACA8];
  v8 = MCUILocalizedString(@"APP_SIGNER_TRUST_FAILED_MESSAGE_%@");
  appSigner2 = [(MCUIAppSignerViewController *)self appSigner];
  identity2 = [appSigner2 identity];
  v11 = [v7 stringWithFormat:v8, identity2];

  [(MCUIAppSignerViewController *)self _presentAlertWithTitle:v12 message:v11];
}

- (void)_presentNetworkRequiredAlert
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MCUILocalizedString(@"APP_SIGNER_REQUIRES_NETWORK_TITLE_%@");
  appSigner = [(MCUIAppSignerViewController *)self appSigner];
  identity = [appSigner identity];
  v12 = [v3 stringWithFormat:v4, identity];

  v7 = MEMORY[0x277CCACA8];
  v8 = MCUILocalizedStringByDevice(@"APP_SIGNER_REQUIRES_NETWORK_ALERT_%@");
  appSigner2 = [(MCUIAppSignerViewController *)self appSigner];
  identity2 = [appSigner2 identity];
  v11 = [v7 stringWithFormat:v8, identity2];

  [(MCUIAppSignerViewController *)self _presentAlertWithTitle:v12 message:v11];
}

- (void)_presentAlertWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  presentedViewController = [(MCUIAppSignerViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    v8 = [MEMORY[0x277D75110] alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
    v9 = MCUILocalizedString(@"DISMISS_ALERT");
    [v8 MCUIAddCancelActionWithTitle:v9];

    [(MCUIAppSignerViewController *)self dmc_presentAlert:v8 completion:0];
  }
}

- (void)_presentAppRemovalAlert
{
  appSigner = [(MCUIAppSignerViewController *)self appSigner];
  applications = [appSigner applications];
  firstObject = [applications firstObject];

  if (firstObject)
  {
    v6 = [objc_alloc(MEMORY[0x277D03238]) initWithBundleID:firstObject dataSource:0];
    name = [v6 name];
  }

  else
  {
    name = 0;
  }

  appSigner2 = [(MCUIAppSignerViewController *)self appSigner];
  applications2 = [appSigner2 applications];
  v10 = [applications2 count];

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
      v14 = [v12 stringWithFormat:v13, name];
      goto LABEL_9;
    }
  }

  v15 = MEMORY[0x277CCACA8];
  v13 = MCUILocalizedString(@"DELETE_APP_WARNING_MULTIPLE_%d_%@");
  v14 = [v15 localizedStringWithFormat:v13, (v10 - 1), name];
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
  trustCell = [(MCUIAppSignerViewController *)self trustCell];

  if (trustCell)
  {
    trustCell2 = [(MCUIAppSignerViewController *)self trustCell];
    popoverPresentationController = [v17 popoverPresentationController];
    [popoverPresentationController setSourceItem:trustCell2];
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