@interface CKCloudSettingsViewController
- (AIDAAccountManager)accountManager;
- (BOOL)isCloudSyncingEnabled;
- (CKCloudSettingsViewController)init;
- (UIImage)cachedAppIconUIImage;
- (id)_fetchKeepMessagesPreference:(id)a3;
- (id)_fetchStorageUsed:(id)a3;
- (id)_fetchSyncStatusText:(id)a3;
- (id)_headerGroupSpecifiers;
- (id)_makePlacardTopCardSpecifier;
- (id)_messagesInCloudCount:(id)a3;
- (id)_syncDetailsSpecifiers;
- (id)_syncSpecifiers;
- (id)account;
- (id)specifiers;
- (void)_internalInit;
- (void)_presentAlertForAccountMismatchFromSpecifier:(id)a3;
- (void)_presentScreenForSpecifier:(id)a3;
- (void)_startObservingAccountStoreChanges;
- (void)_stopObservingAccountStoreChanges;
- (void)dataclassSwitchStateDidChange:(id)a3 withSpecifier:(id)a4;
- (void)dealloc;
- (void)navigateToSettingsWithURLString:(id)a3 forSpecifier:(id)a4;
- (void)pushManageStorage:(id)a3;
- (void)syncButtonPressed:(id)a3;
- (void)updateAppIconForTraitCollection:(id)a3;
- (void)viewDidLoad;
@end

@implementation CKCloudSettingsViewController

- (id)_headerGroupSpecifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HEADER_GROUP"];
  [v3 addObject:v4];

  v5 = [(CKCloudSettingsViewController *)self _makePlacardTopCardSpecifier];
  [v3 addObject:v5];
  v6 = +[CKiCloudSettingsUtils iCloudSettingsSyncText];
  v7 = [(ACUIDataclassConfigurationViewController *)self specifierForDataclass:*MEMORY[0x277CB89D8]];
  [v7 setName:v6];
  [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  v8 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v9 = [v8 applicationIsInstalled:@"com.apple.MobileSMS"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  [v7 setProperty:v10 forKey:*MEMORY[0x277D3FF38]];

  [v7 removePropertyForKey:*MEMORY[0x277D3FFC0]];
  [v7 removePropertyForKey:*MEMORY[0x277D40020]];
  [v7 removePropertyForKey:*MEMORY[0x277D40008]];
  [v3 addObject:v7];

  return v3;
}

- (id)_makePlacardTopCardSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"HEADING_TITLE" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  v7 = [(CKCloudSettingsViewController *)self traitCollection];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v8 = [(CKCloudSettingsViewController *)self traitCollection];
    v9 = [v8 pe_isSettingsFeatureDescriptionCellSupported];

    v10 = NSClassFromString(&cfstr_Pesettingsfeat.isa);
    if (v10 && v9)
    {
      [v6 setProperty:v10 forKey:*MEMORY[0x277D3FE58]];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"SECURELY_STORE_YOUR_MESSAGES_IN_ICLOUD" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"LEARN_MORE" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

      v15 = [(CKCloudSettingsViewController *)self viewModel];
      v16 = [v15 messagesLearnMoreUrlString];

      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ [%@](%@)", v12, v14, v16];
      [v6 setProperty:v17 forKey:*MEMORY[0x277D40160]];
      [v6 setProperty:@"com.apple.MobileSMS" forKey:*MEMORY[0x277D40008]];
      [v6 setIdentifier:@"MESSAGES_HEADING_PLACARD"];
      goto LABEL_7;
    }
  }

  else
  {
    NSClassFromString(&cfstr_Pesettingsfeat.isa);
  }

  [v6 setProperty:NSClassFromString(&cfstr_Aauidataclasss.isa) forKey:*MEMORY[0x277D3FE58]];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"HEADING_TITLE" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  [v6 setProperty:v19 forKey:*MEMORY[0x277D40170]];

  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v20 localizedStringForKey:@"SECURELY_STORE_YOUR_MESSAGES_IN_ICLOUD" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %%@", v12];
  [v6 setProperty:v14 forKey:*MEMORY[0x277D40160]];
  v21 = [(CKCloudSettingsViewController *)self viewModel];
  v16 = [v21 messagesLearnMoreUrlString];

  [v6 setProperty:v16 forKey:@"AAUIDataclassAttributedLink"];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"LEARN_MORE" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  [v6 setProperty:v23 forKey:@"AAUIDataclassAttributedLinkText"];

  v17 = [(CKCloudSettingsViewController *)self cachedAppIconUIImage];
  [v6 setProperty:v17 forKey:*MEMORY[0x277D3FFC0]];
LABEL_7:

  return v6;
}

- (void)dataclassSwitchStateDidChange:(id)a3 withSpecifier:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CKCloudSettingsViewController *)self viewModel];
  v9 = [v8 micAccountsMatch];

  v10 = IMOSLoggingEnabled();
  if (v9)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = v6;
        _os_log_impl(&dword_258D24000, v11, OS_LOG_TYPE_INFO, "Toggled MiC switch newState={%@}, will call super.", buf, 0xCu);
      }
    }

    v14.receiver = self;
    v14.super_class = CKCloudSettingsViewController;
    [(ACUIDataclassConfigurationViewController *)&v14 dataclassSwitchStateDidChange:v6 withSpecifier:v7];
  }

  else
  {
    if (v10)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_258D24000, v12, OS_LOG_TYPE_INFO, "Tried to toggle MiC but there is an account mismatch. Showing alert.", buf, 2u);
      }
    }

    [(CKCloudSettingsViewController *)self _presentAlertForAccountMismatchFromSpecifier:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_presentAlertForAccountMismatchFromSpecifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v5 localizedStringForKey:@"ACCOUNT_MISMATCH_ALERT_TITLE" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ICLOUD_ACCOUNT_MISMATCH" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D750F8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SHOW_IMESSAGE_SETTINGS" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __96__CKCloudSettingsViewController_HeaderSpecifiers___presentAlertForAccountMismatchFromSpecifier___block_invoke;
  v23[3] = &unk_2798C4868;
  objc_copyWeak(&v25, &location);
  v11 = v4;
  v24 = v11;
  v12 = [v8 actionWithTitle:v10 style:0 handler:v23];

  v13 = MEMORY[0x277D750F8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __96__CKCloudSettingsViewController_HeaderSpecifiers___presentAlertForAccountMismatchFromSpecifier___block_invoke_2;
  v20[3] = &unk_2798C4868;
  objc_copyWeak(&v22, &location);
  v16 = v11;
  v21 = v16;
  v17 = [v13 actionWithTitle:v15 style:1 handler:v20];

  v18 = [MEMORY[0x277D75110] alertControllerWithTitle:v19 message:v7 preferredStyle:1];
  [v18 addAction:v12];
  [v18 addAction:v17];
  [v18 setPreferredAction:v12];
  [(CKCloudSettingsViewController *)self presentViewController:v18 animated:1 completion:0];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __96__CKCloudSettingsViewController_HeaderSpecifiers___presentAlertForAccountMismatchFromSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifier:*(a1 + 32) animated:1];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 _navigateToMessagesSettings];
}

void __96__CKCloudSettingsViewController_HeaderSpecifiers___presentAlertForAccountMismatchFromSpecifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifier:*(a1 + 32) animated:1];
}

- (CKCloudSettingsViewController)init
{
  v5.receiver = self;
  v5.super_class = CKCloudSettingsViewController;
  v2 = [(ACUIDataclassConfigurationViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CKCloudSettingsViewController *)v2 _internalInit];
  }

  return v3;
}

- (void)_internalInit
{
  v3 = objc_alloc_init(CKiCloudSettingsViewModel);
  [(CKiCloudSettingsViewModel *)v3 setDelegate:self];
  viewModel = self->_viewModel;
  self->_viewModel = v3;
}

- (void)dealloc
{
  [(CKCloudSettingsViewController *)self _stopObservingAccountStoreChanges];
  v3 = [(CKCloudSettingsViewController *)self viewModel];
  [v3 stopObservers];

  v4.receiver = self;
  v4.super_class = CKCloudSettingsViewController;
  [(ACUIDataclassConfigurationViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = CKCloudSettingsViewController;
  [(ACUIDataclassConfigurationViewController *)&v16 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MESSAGES" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  [(CKCloudSettingsViewController *)self setTitle:v4];

  gotLoadHelper_x8__OBJC_CLASS___SBSUITraitHomeScreenIconStyle(v5);
  v7 = *(v6 + 3152);
  v8 = objc_opt_self();
  v17[0] = v8;
  v9 = objc_opt_self();
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__CKCloudSettingsViewController_viewDidLoad__block_invoke;
  v13[3] = &unk_2798C4890;
  objc_copyWeak(&v14, &location);
  v11 = [(CKCloudSettingsViewController *)self registerForTraitChanges:v10 withHandler:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  v12 = *MEMORY[0x277D85DE8];
}

void __44__CKCloudSettingsViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 traitCollection];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAppIconForTraitCollection:v5];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 reloadSpecifiers];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [(CKCloudSettingsViewController *)self _headerGroupSpecifiers];
    [v5 addObjectsFromArray:v6];

    v7 = [(CKCloudSettingsViewController *)self _syncDetailsSpecifiers];
    [v5 addObjectsFromArray:v7];

    if ([(CKCloudSettingsViewController *)self isCloudSyncingEnabled]&& [(CKiCloudSettingsViewModel *)self->_viewModel isSyncAvailable])
    {
      v8 = [(CKCloudSettingsViewController *)self _syncSpecifiers];
      [v5 addObjectsFromArray:v8];
    }

    v9 = [v5 copy];
    v10 = *(&self->super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.isa + v3) = v9;

    v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_syncSpecifiers
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SYNC_ACTION_GROUP_IDENTIFIER"];
  v4 = MEMORY[0x277D3FAD8];
  v5 = [(CKCloudSettingsViewController *)self viewModel];
  v6 = [v5 syncButtonText];
  v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];

  v8 = [(CKCloudSettingsViewController *)self viewModel];
  v9 = [v8 isSyncButtonEnabled];

  [v7 setIdentifier:@"SYNC_NOW_BUTTON"];
  [v7 setButtonAction:sel_syncButtonPressed_];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  [v7 setProperty:v10 forKey:*MEMORY[0x277D3FF38]];

  v14[0] = v3;
  v14[1] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)syncButtonPressed:(id)a3
{
  v3 = [(CKCloudSettingsViewController *)self viewModel];
  [v3 syncButtonPressed];
}

- (void)navigateToSettingsWithURLString:(id)a3 forSpecifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_258D24000, v7, OS_LOG_TYPE_INFO, "Detected tap on footer link text.", &v13, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_258D24000, v8, OS_LOG_TYPE_INFO, "Attempting to present a screen for specifier={%@}", &v13, 0xCu);
    }
  }

  if (v5)
  {
    v9 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    [v9 openSensitiveURL:v10 withOptions:0];
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = 0;
      _os_log_impl(&dword_258D24000, v11, OS_LOG_TYPE_INFO, "Programming error - unable to load urlString=(%@)", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)account
{
  v2 = [(CKCloudSettingsViewController *)self accountManager];
  v3 = [v2 accounts];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v4;
}

- (AIDAAccountManager)accountManager
{
  accountManager = self->_accountManager;
  if (!accountManager)
  {
    v4 = [(CKCloudSettingsViewController *)self specifier];

    if (v4)
    {
      v5 = [(CKCloudSettingsViewController *)self specifier];
      v6 = [v5 objectForKeyedSubscript:@"icloudAccountManager"];

      [(CKCloudSettingsViewController *)self setAccountManager:v6];
      [(CKCloudSettingsViewController *)self _startObservingAccountStoreChanges];
    }

    accountManager = self->_accountManager;
    if (!accountManager)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__CKCloudSettingsViewController_accountManager__block_invoke;
      block[3] = &unk_2798C48B8;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
      accountManager = self->_accountManager;
    }
  }

  return accountManager;
}

void __47__CKCloudSettingsViewController_accountManager__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

- (void)_startObservingAccountStoreChanges
{
  objc_initWeak(&location, self);
  v3 = [(CKCloudSettingsViewController *)self accountManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__CKCloudSettingsViewController__startObservingAccountStoreChanges__block_invoke;
  v4[3] = &unk_2798C48E0;
  objc_copyWeak(&v5, &location);
  [v3 addAccountChangeObserver:self handler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __67__CKCloudSettingsViewController__startObservingAccountStoreChanges__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = *MEMORY[0x277CED1A0];
    v8 = [v14 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];
    v9 = [v5 objectForKeyedSubscript:v7];
    v10 = [v8 enabledDataclasses];
    v11 = [v10 count];
    v12 = [v9 enabledDataclasses];
    v13 = [v12 count];

    if (v11 != v13)
    {
      [WeakRetained reloadSpecifiers];
    }
  }
}

- (void)_stopObservingAccountStoreChanges
{
  accountManager = self->_accountManager;
  if (accountManager)
  {
    [(AIDAAccountManager *)accountManager removeAccountChangeObserver:self];
  }
}

- (BOOL)isCloudSyncingEnabled
{
  v3 = [(CKCloudSettingsViewController *)self account];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CKCloudSettingsViewController *)self account];
  v5 = [v4 isEnabledForDataclass:*MEMORY[0x277CB89D8]];

  return v5;
}

- (UIImage)cachedAppIconUIImage
{
  cachedAppIconUIImage = self->_cachedAppIconUIImage;
  if (!cachedAppIconUIImage)
  {
    v4 = [(CKCloudSettingsViewController *)self traitCollection];
    [(CKCloudSettingsViewController *)self updateAppIconForTraitCollection:v4];

    cachedAppIconUIImage = self->_cachedAppIconUIImage;
  }

  return cachedAppIconUIImage;
}

- (void)updateAppIconForTraitCollection:(id)a3
{
  v4 = MEMORY[0x277D1B1A8];
  v5 = a3;
  v21 = [[v4 alloc] initWithBundleIdentifier:@"com.apple.MobileSMS"];
  v6 = objc_alloc(MEMORY[0x277D1B1C8]);
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 scale];
  v9 = [v6 initWithSize:64.0 scale:{64.0, v8}];

  v10 = [v5 userInterfaceStyle] == 2;
  gotLoadHelper_x8__OBJC_CLASS___SBSUITraitHomeScreenIconStyle(v11);
  v13 = *(v12 + 3152);
  v14 = objc_opt_self();
  v15 = [v5 objectForTrait:v14];

  [v9 setAppearance:{objc_msgSend(v15, "iconServicesAppearanceUsingDarkInterfaceStyle:", v10)}];
  [v9 setAppearanceVariant:{objc_msgSend(v15, "iconServicesAppearanceVariantUsingDarkInterfaceStyle:", v10)}];
  v16 = [v15 tintColor];
  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x277D1B150]) initWithCGColor:{objc_msgSend(v16, "CGColor")}];
    [v9 setTintColor:v17];
  }

  v18 = [v21 prepareImageForDescriptor:v9];
  v19 = [MEMORY[0x277D755B8] imageWithCGImage:{objc_msgSend(v18, "CGImage")}];
  cachedAppIconUIImage = self->_cachedAppIconUIImage;
  self->_cachedAppIconUIImage = v19;
}

- (void)pushManageStorage:(id)a3
{
  v4 = a3;
  manageStorageController = self->_manageStorageController;
  if (!manageStorageController)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v6 = getICSManageStorageDrilldownControllerClass_softClass;
    v16 = getICSManageStorageDrilldownControllerClass_softClass;
    if (!getICSManageStorageDrilldownControllerClass_softClass)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __getICSManageStorageDrilldownControllerClass_block_invoke;
      v12[3] = &unk_2798C4908;
      v12[4] = &v13;
      __getICSManageStorageDrilldownControllerClass_block_invoke(v12);
      v6 = v14[3];
    }

    v7 = v6;
    _Block_object_dispose(&v13, 8);
    v8 = [v6 alloc];
    v9 = [(CKCloudSettingsViewController *)self account];
    v10 = [v8 initWithAppBundleID:@"com.apple.MobileSMS" account:v9 presentingController:self];
    v11 = self->_manageStorageController;
    self->_manageStorageController = v10;

    manageStorageController = self->_manageStorageController;
  }

  [(ICSManageStorageDrilldownController *)manageStorageController beginLoadingForSpecifier:v4];
}

- (id)_syncDetailsSpecifiers
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SYNC_DETAILS_GROUP"];
  v5 = [(CKCloudSettingsViewController *)self viewModel];
  v6 = [v5 syncStatusFooterText];

  v7 = [(CKCloudSettingsViewController *)self viewModel];
  v8 = [v7 syncStatusFooterSubstringForHyperlink];

  v30 = v6;
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v4 setProperty:v10 forKey:*MEMORY[0x277D3FF48]];

    v11 = [(CKCloudSettingsViewController *)self viewModel];
    v12 = [v11 syncStatusFooterSubstringForHyperlink];

    v32.location = [v6 rangeOfString:v12];
    v13 = NSStringFromRange(v32);
    [v4 setProperty:v13 forKey:*MEMORY[0x277D3FF58]];

    [v4 setProperty:v6 forKey:*MEMORY[0x277D3FF70]];
    v14 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v4 setProperty:v14 forKey:*MEMORY[0x277D3FF68]];

    v15 = NSStringFromSelector(sel__presentScreenForSpecifier_);
    [v4 setProperty:v15 forKey:*MEMORY[0x277D3FF50]];
  }

  else
  {
    [v4 setProperty:v6 forKey:*MEMORY[0x277D3FF88]];
  }

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"MANAGE_STORAGE_TITLE" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  v18 = [CKiCloudSettingsUtils specifierWithTitle:v17 target:self selector:sel__fetchStorageUsed_];

  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"KEEP_MESSAGES_TITLE" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  v21 = [CKiCloudSettingsUtils specifierWithTitle:v20 target:self selector:sel__fetchKeepMessagesPreference_];

  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"IN_ICLOUD_TITLE" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  v24 = [CKiCloudSettingsUtils specifierWithTitle:v23 target:self selector:sel__messagesInCloudCount_];

  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"STATUS_TITLE" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  v27 = [CKiCloudSettingsUtils specifierWithTitle:v26 target:self selector:sel__fetchSyncStatusText_];

  [v18 setCellType:2];
  [v18 setDetailControllerClass:NSClassFromString(&cfstr_Ckcloudmessage.isa)];
  [v18 setButtonAction:sel_pushManageStorage_];
  [v21 setCellType:2];
  [v21 setDetailControllerClass:NSClassFromString(&cfstr_Ckkeepmessages.isa)];
  [v3 addObject:v4];
  [v3 addObject:v18];
  if ([(CKCloudSettingsViewController *)self isCloudSyncingEnabled])
  {
    [v3 addObject:v21];
    [v3 addObject:v24];
    [v3 addObject:v27];
  }

  v28 = [v3 copy];

  return v28;
}

- (void)_presentScreenForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(CKCloudSettingsViewController *)self viewModel];
  v6 = [v5 syncState];

  if (v6 <= 9)
  {
    if (((1 << v6) & 0x78) != 0)
    {
      v8 = [(CKCloudSettingsViewController *)self viewModel];
      v9 = [v8 footerHyperlinkUrl];
      [(CKCloudSettingsViewController *)self navigateToSettingsWithURLString:v9 forSpecifier:v4];
    }

    else
    {
      if (((1 << v6) & 7) == 0)
      {
        v7 = [(CKCloudSettingsViewController *)self viewModel];
        [v7 showICloudUpsellIfAvailable];
LABEL_9:

        goto LABEL_10;
      }

      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v10 = 0;
          _os_log_impl(&dword_258D24000, v7, OS_LOG_TYPE_INFO, "Attempted to present a screen for a hyperlink for an unsupported sync state.", v10, 2u);
        }

        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (id)_fetchStorageUsed:(id)a3
{
  v4 = a3;
  v5 = [(CKCloudSettingsViewController *)self appCloudStorage];

  if (v5)
  {
    v6 = [(CKCloudSettingsViewController *)self appCloudStorage];
    v7 = [v6 storageUsed];
    [v7 longLongValue];

    v8 = NSLocalizedFileSizeDescription();
  }

  else
  {
    if (![(CKCloudSettingsViewController *)self isStorageUsedRequestInProgress])
    {
      [(CKCloudSettingsViewController *)self setStorageUsedRequestInProgress:1];
      v9 = objc_alloc(NSClassFromString(&cfstr_Icqcloudstorag.isa));
      v10 = [(CKCloudSettingsViewController *)self account];
      v11 = [v9 initWithAccount:v10];

      [v11 setShouldIgnoreCache:1];
      objc_initWeak(&location, self);
      v12 = [MEMORY[0x277CEC7A0] sharedManager];
      v13 = [v12 appBundleIdentifierForDataclass:*MEMORY[0x277CB89D8]];

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __72__CKCloudSettingsViewController_SyncStateSpecifiers___fetchStorageUsed___block_invoke;
      v15[3] = &unk_2798C4A60;
      objc_copyWeak(&v16, &location);
      [v11 fetchStorageByApp:v13 completion:v15];
      objc_destroyWeak(&v16);

      objc_destroyWeak(&location);
    }

    v8 = &stru_286A13F00;
  }

  return v8;
}

void __72__CKCloudSettingsViewController_SyncStateSpecifiers___fetchStorageUsed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setStorageUsedRequestInProgress:0];

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 setAppCloudStorage:v3];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__CKCloudSettingsViewController_SyncStateSpecifiers___fetchStorageUsed___block_invoke_2;
    block[3] = &unk_2798C4A38;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v7);
  }
}

void __72__CKCloudSettingsViewController_SyncStateSpecifiers___fetchStorageUsed___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained specifiers];

  v3 = [v6 count];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v3)
  {
    [v4 reloadSpecifierID:@"SYNC_DETAILS_GROUP" animated:1];
  }

  else
  {
    [v4 reloadSpecifiers];
  }
}

- (id)_fetchKeepMessagesPreference:(id)a3
{
  v3 = [(CKCloudSettingsViewController *)self viewModel];
  v4 = [v3 keepMessagesPreference];

  return v4;
}

- (id)_messagesInCloudCount:(id)a3
{
  v3 = [(CKCloudSettingsViewController *)self viewModel];
  v4 = [v3 messagesInCloudCount];

  return v4;
}

- (id)_fetchSyncStatusText:(id)a3
{
  v3 = [(CKCloudSettingsViewController *)self viewModel];
  v4 = [v3 syncStatus];

  return v4;
}

@end