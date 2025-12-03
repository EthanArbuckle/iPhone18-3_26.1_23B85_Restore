@interface FMFSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (BOOL)isAccountInGrayMode;
- (BOOL)locationServicesDisabledByRestrictions;
- (BOOL)shouldEnableLocationSharingSpecifier;
- (BOOL)shouldShowLocationSharingSpecifier;
- (FMFSpecifierProvider)initWithAccountManager:(id)manager;
- (NSArray)specifiers;
- (void)locationSharingSpecifierWasTapped:(id)tapped;
@end

@implementation FMFSpecifierProvider

- (FMFSpecifierProvider)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = FMFSpecifierProvider;
  v6 = [(FMFSpecifierProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, manager);
  }

  return v7;
}

- (NSArray)specifiers
{
  v16[1] = *MEMORY[0x277D85DE8];
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    if ([(FMFSpecifierProvider *)self shouldShowLocationSharingSpecifier])
    {
      v4 = MEMORY[0x277D3FAD8];
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = [v5 localizedStringForKey:@"LOCATION_SHARING" value:&stru_285D99658 table:@"LocalizableUI"];
      v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:2 edit:0];

      [v7 setControllerLoadAction:sel_locationSharingSpecifierWasTapped_];
      [v7 setIdentifier:@"LOCATION_SHARING"];
      v8 = MEMORY[0x277CBEC38];
      [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
      [v7 setProperty:@"com.apple.findmy" forKey:*MEMORY[0x277D40008]];
      if ([(FMFSpecifierProvider *)self shouldEnableLocationSharingSpecifier])
      {
        v9 = v8;
      }

      else
      {
        v9 = MEMORY[0x277CBEC28];
      }

      [v7 setProperty:v9 forKey:*MEMORY[0x277D3FF38]];
      v16[0] = v7;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      v11 = self->_specifiers;
      self->_specifiers = v10;
    }

    else
    {
      v12 = self->_specifiers;
      self->_specifiers = MEMORY[0x277CBEBF8];
    }

    specifiers = self->_specifiers;
  }

  v13 = specifiers;
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)locationSharingSpecifierWasTapped:(id)tapped
{
  v11 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[FMFSpecifierProvider locationSharingSpecifierWasTapped:]";
    _os_log_impl(&dword_24A4E3000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v6 = objc_alloc_init(FMFLocationSharingViewController);
  [(FMFLocationSharingViewController *)v6 setSpecifier:tappedCopy];

  delegate = [(FMFSpecifierProvider *)self delegate];
  [delegate specifierProvider:self showViewController:v6];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldEnableLocationSharingSpecifier
{
  if ([(FMFSpecifierProvider *)self isAccountInGrayMode])
  {
    return 0;
  }

  else
  {
    return ![(FMFSpecifierProvider *)self locationServicesDisabledByRestrictions];
  }
}

- (BOOL)shouldShowLocationSharingSpecifier
{
  accountManager = [(FMFSpecifierProvider *)self accountManager];
  accounts = [accountManager accounts];
  v4 = [accounts objectForKeyedSubscript:@"com.apple.AppleID.Service.Cloud"];

  LOBYTE(accountManager) = [v4 isProvisionedForDataclass:*MEMORY[0x277CB91A0]];
  return accountManager;
}

- (BOOL)locationServicesDisabledByRestrictions
{
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v2 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  v3 = [v2 containsObject:@"location"];

  return v3;
}

- (BOOL)isAccountInGrayMode
{
  accountManager = [(FMFSpecifierProvider *)self accountManager];
  accounts = [accountManager accounts];
  v4 = [accounts objectForKeyedSubscript:@"com.apple.AppleID.Service.Cloud"];

  if (v4)
  {
    if (([v4 aa_isSuspended] & 1) != 0 || !objc_msgSend(v4, "aa_isPrimaryEmailVerified"))
    {
      v6 = 1;
    }

    else
    {
      aa_repairState = [v4 aa_repairState];
      v6 = [aa_repairState unsignedIntegerValue] == 3;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end