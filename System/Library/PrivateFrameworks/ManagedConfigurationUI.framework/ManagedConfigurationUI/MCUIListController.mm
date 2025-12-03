@interface MCUIListController
- (BOOL)prepareHandlingURLForSpecifierID:(id)d resourceDictionary:(id)dictionary animatePush:(BOOL *)push;
- (BOOL)shouldDeferPushForSpecifierID:(id)d;
- (MCUIListController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_specifiersForPhone;
- (id)specifiers;
- (void)_cleanCacheAndReloadSpecifiers;
- (void)_effectiveSettingsChanged;
- (void)_handleDeferredPush;
- (void)_loadManagedAccountSpecifiersWithCompletionHandler:(id)handler;
- (void)_loadVPNSpecifiersWithCompletionHandler:(id)handler;
- (void)_mainQueue_setManagedSignInButtonEnabled:(BOOL)enabled;
- (void)_mcuiUpdated;
- (void)_setIsGuestUserModeActive:(BOOL)active;
- (void)_setupDeviceExpert;
- (void)_showAccountDetailsPaneWithUsername:(id)username completion:(id)completion;
- (void)_uprootDistributedNotificationReceived:(id)received;
- (void)_uprootNotificationReceived:(id)received;
- (void)_watchFetchFailed:(id)failed;
- (void)accountCellWasTapped:(id)tapped;
- (void)dealloc;
- (void)handleURL:(id)l;
- (void)viewDidLoad;
@end

@implementation MCUIListController

- (MCUIListController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v37.receiver = self;
  v37.super_class = MCUIListController;
  v8 = [(MCUIListController *)&v37 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    v9 = +[MCUIWatchManager shared];

    if (v9)
    {
      v10 = [(MCUISpecifierProvider *)[MCUIBridgeSpecifierProvider alloc] initWithDelegate:v8];
      bridgeSpecifierProvider = v8->_bridgeSpecifierProvider;
      v8->_bridgeSpecifierProvider = v10;

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v8 selector:sel__watchFetchFailed_ name:@"kMCUIWatchFetchFailedNotification" object:0];
    }

    else
    {
      v8->_needsToReloadManageAccountSpecifiers = 1;
      v13 = [(MCUISpecifierProvider *)[MCUIMCSpecifierProvider alloc] initWithDelegate:v8];
      mcSpecifierProvider = v8->_mcSpecifierProvider;
      v8->_mcSpecifierProvider = v13;

      v15 = [objc_alloc(MEMORY[0x277D03248]) initFromViewController:v8 delegate:v8];
      dmcEnrollmentInterface = v8->_dmcEnrollmentInterface;
      v8->_dmcEnrollmentInterface = v15;

      defaultCenter = [(DMCEnrollmentInterface *)v8->_dmcEnrollmentInterface accountSpecifierProvider];
      [defaultCenter setDelegate:v8];
    }

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v8 selector:sel__effectiveSettingsChanged name:*MEMORY[0x277D25CA0] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v8 selector:sel__mcuiUpdated name:@"kMCUIUpdatedNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    v20 = *MEMORY[0x277D24DD8];
    [defaultCenter4 addObserver:v8 selector:sel__uprootNotificationReceived_ name:*MEMORY[0x277D24DD8] object:0];

    defaultCenter5 = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter5 addObserver:v8 selector:sel__uprootDistributedNotificationReceived_ name:v20 object:0];

    objc_initWeak(&location, v8);
    v22 = MEMORY[0x277D85CD0];
    v23 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__MCUIListController_initWithNibName_bundle___block_invoke;
    handler[3] = &unk_279861FA8;
    objc_copyWeak(&v35, &location);
    LODWORD(v22) = notify_register_dispatch("MISProvisioningProfileInstalled", &v8->_provisioningProfileInstalledToken, v22, handler);

    if (v22)
    {
      NSLog(&cfstr_FailedToRegist.isa);
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __45__MCUIListController_initWithNibName_bundle___block_invoke_2;
    v32[3] = &unk_279861FA8;
    objc_copyWeak(&v33, &location);
    v24 = notify_register_dispatch("MISProvisioningProfileRemoved", &v8->_provisioningProfileInstalledToken, MEMORY[0x277D85CD0], v32);

    if (v24)
    {
      NSLog(&cfstr_FailedToRegist_0.isa);
    }

    v25 = [*MEMORY[0x277D24608] cStringUsingEncoding:4];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __45__MCUIListController_initWithNibName_bundle___block_invoke_3;
    v30 = &unk_279861FA8;
    objc_copyWeak(&v31, &location);
    LODWORD(v25) = notify_register_dispatch(v25, &v8->_mdmMigrationAvailableToken, MEMORY[0x277D85CD0], &v27);

    if (v25)
    {
      NSLog(&cfstr_FailedToRegist_1.isa, v27, v28, v29, v30);
    }

    v8->_isGuestUserModeActive = 0;
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __45__MCUIListController_initWithNibName_bundle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cleanCacheAndReloadSpecifiers];
    WeakRetained = v2;
  }
}

void __45__MCUIListController_initWithNibName_bundle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cleanCacheAndReloadSpecifiers];
    WeakRetained = v2;
  }
}

void __45__MCUIListController_initWithNibName_bundle___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cleanCacheAndReloadSpecifiers];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  notify_cancel(self->_provisioningProfileInstalledToken);
  notify_cancel(self->_provisioningProfileRemovedToken);
  notify_cancel(self->_mdmMigrationAvailableToken);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  v5.receiver = self;
  v5.super_class = MCUIListController;
  [(MCUIListController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = MCUIListController;
  [(MCUIListController *)&v12 viewDidLoad];
  mcSpecifierProvider = [(MCUIListController *)self mcSpecifierProvider];
  table = [(MCUIListController *)self table];
  [mcSpecifierProvider registerCustomCellClassesInTableView:table];

  bridgeSpecifierProvider = [(MCUIListController *)self bridgeSpecifierProvider];
  table2 = [(MCUIListController *)self table];
  [bridgeSpecifierProvider registerCustomCellClassesInTableView:table2];

  dmcEnrollmentInterface = [(MCUIListController *)self dmcEnrollmentInterface];
  accountSpecifierProvider = [dmcEnrollmentInterface accountSpecifierProvider];
  table3 = [(MCUIListController *)self table];
  [accountSpecifierProvider registerCustomCellClassesInTableView:table3];

  v10 = +[MCUIBundleController mcuiTitle];
  [(MCUIListController *)self setTitle:v10];

  v11 = +[MCUIWatchManager shared];
  [v11 reloadProfiles];
}

- (void)_setupDeviceExpert
{
  v3 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v5 bundleURL];
  v8 = [v3 initWithKey:@"VPN & Device Management" table:0 locale:currentLocale bundleURL:bundleURL];

  v7 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277D24D60]];
  [(MCUIListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.device-management" title:v8 localizedNavigationComponents:MEMORY[0x277CBEBF8] deepLink:v7];
}

- (void)_effectiveSettingsChanged
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__MCUIListController__effectiveSettingsChanged__block_invoke;
  v2[3] = &unk_279861990;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __47__MCUIListController__effectiveSettingsChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadSpecifiers];
    WeakRetained = v2;
  }
}

- (void)_mcuiUpdated
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __34__MCUIListController__mcuiUpdated__block_invoke;
  v2[3] = &unk_279861990;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __34__MCUIListController__mcuiUpdated__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cleanCacheAndReloadSpecifiers];
    WeakRetained = v2;
  }
}

- (void)_cleanCacheAndReloadSpecifiers
{
  [(MCUIListController *)self setNeedsToReloadManageAccountSpecifiers:1];

  [(MCUIListController *)self reloadSpecifiers];
}

- (void)_uprootNotificationReceived:(id)received
{
  NSLog(&cfstr_Mcuilistcontro.isa, a2, received);

  [(MCUIListController *)self _mcuiUpdated];
}

- (void)_uprootDistributedNotificationReceived:(id)received
{
  NSLog(&cfstr_Mcuilistcontro_0.isa, a2, received);

  [(MCUIListController *)self _mcuiUpdated];
}

- (void)_watchFetchFailed:(id)failed
{
  failedCopy = failed;
  userInfo = [failedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"kMCUINotificationErrorKey"];

  if (v6)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__MCUIListController__watchFetchFailed___block_invoke;
    block[3] = &unk_279861A40;
    objc_copyWeak(&v9, &location);
    v8 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    NSLog(&cfstr_Mcuilistcontro_1.isa, failedCopy);
  }
}

void __40__MCUIListController__watchFetchFailed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __40__MCUIListController__watchFetchFailed___block_invoke_2;
    v4[3] = &unk_279861968;
    v4[4] = WeakRetained;
    [MEMORY[0x277D75110] MCUIShowAlertForError:v3 fromViewController:WeakRetained suggestedTitle:0 suggestedMessage:0 completion:v4];
  }
}

void __40__MCUIListController__watchFetchFailed___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) mcuiViewController];
  [v1 dmc_popViewControllerAnimated:1];
}

- (id)specifiers
{
  v2 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.super.isa + v2);
  if (!v3)
  {
    v5 = +[MCUIWatchManager shared];

    if (v5)
    {
      bridgeSpecifierProvider = [(MCUIListController *)self bridgeSpecifierProvider];
      specifiers = [bridgeSpecifierProvider specifiers];
      v8 = *(&self->super.super.super.super.super.super.isa + v2);
      *(&self->super.super.super.super.super.super.isa + v2) = specifiers;
    }

    else
    {
      _specifiersForPhone = [(MCUIListController *)self _specifiersForPhone];
      bridgeSpecifierProvider = *(&self->super.super.super.super.super.super.isa + v2);
      *(&self->super.super.super.super.super.super.isa + v2) = _specifiersForPhone;
    }

    v3 = *(&self->super.super.super.super.super.super.isa + v2);
  }

  v10 = v3;

  return v10;
}

- (id)_specifiersForPhone
{
  v3 = objc_opt_new();
  v4 = dispatch_group_create();
  vpnSpecifiers = [(MCUIListController *)self vpnSpecifiers];

  if (vpnSpecifiers)
  {
    vpnSpecifiers2 = [(MCUIListController *)self vpnSpecifiers];
    [v3 addObjectsFromArray:vpnSpecifiers2];
  }

  else
  {
    dispatch_group_enter(v4);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __41__MCUIListController__specifiersForPhone__block_invoke;
    v22[3] = &unk_279861968;
    v23 = v4;
    [(MCUIListController *)self _loadVPNSpecifiersWithCompletionHandler:v22];
  }

  if ([(MCUIListController *)self isGuestUserModeActive])
  {
    goto LABEL_9;
  }

  managedAccountSpecifiers = [(MCUIListController *)self managedAccountSpecifiers];
  v8 = [managedAccountSpecifiers count];

  if (v8)
  {
    managedAccountSpecifiers2 = [(MCUIListController *)self managedAccountSpecifiers];
    [v3 addObjectsFromArray:managedAccountSpecifiers2];
  }

  if (![(MCUIListController *)self needsToReloadManageAccountSpecifiers])
  {
LABEL_9:
    if (vpnSpecifiers)
    {
      goto LABEL_11;
    }
  }

  else
  {
    dispatch_group_enter(v4);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __41__MCUIListController__specifiersForPhone__block_invoke_2;
    v20[3] = &unk_279861968;
    v21 = v4;
    [(MCUIListController *)self _loadManagedAccountSpecifiersWithCompletionHandler:v20];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__MCUIListController__specifiersForPhone__block_invoke_3;
  block[3] = &unk_279861968;
  block[4] = self;
  dispatch_group_notify(v4, MEMORY[0x277D85CD0], block);
LABEL_11:
  mcSpecifierProvider = [(MCUIListController *)self mcSpecifierProvider];
  specifiers = [mcSpecifierProvider specifiers];

  if (specifiers)
  {
    [v3 addObjectsFromArray:specifiers];
  }

  dmcEnrollmentInterface = [(MCUIListController *)self dmcEnrollmentInterface];
  specifiersForDebuggingEnrollment = [dmcEnrollmentInterface specifiersForDebuggingEnrollment];

  if (specifiersForDebuggingEnrollment)
  {
    [v3 addObjectsFromArray:specifiersForDebuggingEnrollment];
  }

  dmcEnrollmentInterface2 = [(MCUIListController *)self dmcEnrollmentInterface];
  specifiersForMDMMigration = [dmcEnrollmentInterface2 specifiersForMDMMigration];

  if (specifiersForMDMMigration)
  {
    [v3 addObjectsFromArray:specifiersForMDMMigration];
  }

  if (![v3 count])
  {
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v17 = MCUILocalizedString(@"NO_PROFILES_INSTALLED");
    [emptyGroupSpecifier setProperty:v17 forKey:*MEMORY[0x277D3FF88]];

    [v3 addObject:emptyGroupSpecifier];
  }

  return v3;
}

uint64_t __41__MCUIListController__specifiersForPhone__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = *(a1 + 32);

  return [v2 _handleDeferredPush];
}

- (void)_loadVPNSpecifiersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__MCUIListController__loadVPNSpecifiersWithCompletionHandler___block_invoke;
  block[3] = &unk_279861BD0;
  objc_copyWeak(&v9, &location);
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __62__MCUIListController__loadVPNSpecifiersWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = PSBundlePathForPreferenceBundle();
    v4 = MEMORY[0x277CCA8D8];
    v6 = v5 = v3;
    v7 = [v4 bundleWithPath:v6];

    v8 = [v7 principalClass];
    if (v8)
    {
      v9 = v8;
      if ([(objc_class *)v8 isSubclassOfClass:objc_opt_class()])
      {
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__MCUIListController__loadVPNSpecifiersWithCompletionHandler___block_invoke_2;
    block[3] = &unk_279862150;
    objc_copyWeak(&v13, (a1 + 40));
    v11 = @"VPNPreferences";
    v12 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v13);
  }
}

void __62__MCUIListController__loadVPNSpecifiersWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v18[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = *MEMORY[0x277D3FDF8];
    v17[0] = *MEMORY[0x277D3FE08];
    v17[1] = v4;
    v18[0] = v3;
    v18[1] = MEMORY[0x277CBEC28];
    v17[2] = @"isDeviceManagement";
    v18[2] = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
    v14 = v5;
    v15 = @"items";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    v16 = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v8 = *&WeakRetained[*MEMORY[0x277D3FD20]];
    v9 = [WeakRetained bundle];
    v13 = 0;
    v10 = SpecifiersFromPlist();
    v11 = v13;
    [WeakRetained setVpnSpecifiers:{v10, &v13}];

    [WeakRetained setVpnBundleControllers:v11];
    (*(*(a1 + 40) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldDeferPushForSpecifierID:(id)d
{
  v4 = *MEMORY[0x277D24D78];
  if ([d isEqualToString:*MEMORY[0x277D24D78]])
  {
    v5 = [(MCUIListController *)self specifierForID:v4];

    if (!v5)
    {
      return 1;
    }
  }

  return [(MCUIListController *)self needsToReloadManageAccountSpecifiers];
}

- (void)_handleDeferredPush
{
  specifierIDPendingPush = [(MCUIListController *)self specifierIDPendingPush];
  v4 = [specifierIDPendingPush length];

  if (v4)
  {

    [(MCUIListController *)self handlePendingURL];
  }
}

- (void)_loadManagedAccountSpecifiersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__MCUIListController__loadManagedAccountSpecifiersWithCompletionHandler___block_invoke;
  v7[3] = &unk_2798621A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

void __73__MCUIListController__loadManagedAccountSpecifiersWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dmcEnrollmentInterface];
  v3 = [v2 specifiersForManagedAccounts];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__MCUIListController__loadManagedAccountSpecifiersWithCompletionHandler___block_invoke_2;
  block[3] = &unk_279862178;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __73__MCUIListController__loadManagedAccountSpecifiersWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNeedsToReloadManageAccountSpecifiers:0];
  [*(a1 + 32) setManagedAccountSpecifiers:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)accountCellWasTapped:(id)tapped
{
  v4 = [MEMORY[0x277D03248] accountControllerFromSpecifier:tapped baseViewController:self preferiCloudAccount:1];
  [(MCUIListController *)self showController:v4 animate:1];
}

- (void)_mainQueue_setManagedSignInButtonEnabled:(BOOL)enabled
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MCUIListController__mainQueue_setManagedSignInButtonEnabled___block_invoke;
  block[3] = &unk_2798621C8;
  objc_copyWeak(&v5, &location);
  enabledCopy = enabled;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __63__MCUIListController__mainQueue_setManagedSignInButtonEnabled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained dmcEnrollmentInterface];
    [v3 setManagedSignInButtonEnabled:*(a1 + 40)];

    [v4 _cleanCacheAndReloadSpecifiers];
    WeakRetained = v4;
  }
}

- (void)handleURL:(id)l
{
  lCopy = l;
  v5 = [lCopy objectForKey:@"sender"];
  v6 = [lCopy objectForKey:@"path"];
  [objc_opt_class() setOriginalURLSender:v5];
  if ([v6 isEqualToString:*MEMORY[0x277D24D28]])
  {
    v7 = [lCopy objectForKey:*MEMORY[0x277D24D70]];
    v8 = v7;
    if (v7)
    {
      NSLog(&cfstr_Mcuilistcontro_3.isa, v7, v6, v5);
      [(MCUIListController *)self _showAccountDetailsPaneWithUsername:v8 completion:0];
    }

    else
    {
      NSLog(&cfstr_Mcuilistcontro_2.isa, v6, v5, lCopy);
      v9.receiver = self;
      v9.super_class = MCUIListController;
      [(MCURLListenerListController *)&v9 handleURL:lCopy];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MCUIListController;
    [(MCURLListenerListController *)&v10 handleURL:lCopy];
  }
}

- (void)_showAccountDetailsPaneWithUsername:(id)username completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = [MEMORY[0x277D03230] itemSpecifierIDForAccountUsername:username];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  specifiers = [(MCUIListController *)self specifiers];
  v9 = [specifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(specifiers);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        identifier = [v13 identifier];
        v15 = [identifier isEqualToString:v7];

        if (v15)
        {
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __69__MCUIListController__showAccountDetailsPaneWithUsername_completion___block_invoke;
          v17[3] = &unk_279861C40;
          v17[4] = self;
          v17[5] = v13;
          dispatch_async(MEMORY[0x277D85CD0], v17);
          goto LABEL_11;
        }
      }

      v10 = [specifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)prepareHandlingURLForSpecifierID:(id)d resourceDictionary:(id)dictionary animatePush:(BOOL *)push
{
  dCopy = d;
  dictionaryCopy = dictionary;
  v10 = +[MCUIWatchManager shared];
  if (v10 && (v11 = v10, v12 = [dCopy isEqualToString:*MEMORY[0x277D264C0]], v11, v12))
  {
    v13 = 1;
    if (push)
    {
      *push = 1;
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = MCUIListController;
    v13 = [(MCUIListController *)&v15 prepareHandlingURLForSpecifierID:dCopy resourceDictionary:dictionaryCopy animatePush:push];
  }

  return v13;
}

- (void)_setIsGuestUserModeActive:(BOOL)active
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__MCUIListController__setIsGuestUserModeActive___block_invoke;
  block[3] = &unk_2798621C8;
  objc_copyWeak(&v5, &location);
  activeCopy = active;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __48__MCUIListController__setIsGuestUserModeActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = *(a1 + 40) == [WeakRetained isGuestUserModeActive];
    WeakRetained = v4;
    if (!v3)
    {
      [v4 setIsGuestUserModeActive:?];
      [v4 reloadSpecifiers];
      WeakRetained = v4;
    }
  }
}

@end