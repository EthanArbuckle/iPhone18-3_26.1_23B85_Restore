@interface MCUIBridgeSpecifierProvider
- (id)_emptySpecifier;
- (id)_specifiersForWatchProfiles;
- (id)specifiers;
- (void)loadProfileFromSpecifier:(id)specifier;
@end

@implementation MCUIBridgeSpecifierProvider

- (id)specifiers
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = +[MCUIWatchManager shared];
  fetchStatus = [v3 fetchStatus];

  if (fetchStatus == 2)
  {
    goto LABEL_7;
  }

  if (fetchStatus == 1)
  {
    delegate = [(MCUISpecifierProvider *)self delegate];
    mcuiViewController = [delegate mcuiViewController];
    [mcuiViewController dmc_popViewControllerAnimated:0];

LABEL_7:
    _specifiersForWatchProfiles = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:15 edit:0];
    [_specifiersForWatchProfiles setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    v12 = _specifiersForWatchProfiles;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    goto LABEL_8;
  }

  if (fetchStatus)
  {
    goto LABEL_10;
  }

  _specifiersForWatchProfiles = [(MCUIBridgeSpecifierProvider *)self _specifiersForWatchProfiles];
  if (![_specifiersForWatchProfiles count])
  {
    _emptySpecifier = [(MCUIBridgeSpecifierProvider *)self _emptySpecifier];
    v13[0] = _emptySpecifier;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

    goto LABEL_9;
  }

  v6 = _specifiersForWatchProfiles;
  _specifiersForWatchProfiles = v6;
LABEL_8:
  v3 = v6;
LABEL_9:

LABEL_10:
  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_specifiersForWatchProfiles
{
  v3 = objc_opt_new();
  v4 = +[MCUIWatchManager shared];
  mdmProfilesInfo = [v4 mdmProfilesInfo];
  v6 = [(MCUISpecifierProvider *)self specifiersForMDMProfiles:mdmProfilesInfo];

  if (v6)
  {
    [v3 addObjectsFromArray:v6];
  }

  v7 = +[MCUIWatchManager shared];
  configProfilesInfo = [v7 configProfilesInfo];
  v9 = [(MCUISpecifierProvider *)self specifiersForInstalledProfiles:configProfilesInfo];

  if (v9)
  {
    [v3 addObjectsFromArray:v9];
  }

  return v3;
}

- (id)_emptySpecifier
{
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v3 = MCUILocalizedString(@"NO_PROFILES_INSTALLED");
  [emptyGroupSpecifier setProperty:v3 forKey:*MEMORY[0x277D3FF88]];

  return emptyGroupSpecifier;
}

- (void)loadProfileFromSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [specifierCopy propertyForKey:@"MCUIPSItemKey"];
  if (v5)
  {
    delegate = [(MCUISpecifierProvider *)self delegate];
    mcuiViewController = [delegate mcuiViewController];
    [mcuiViewController MCUIShowProgressInNavBar];

    objc_initWeak(&location, self);
    v8 = +[MCUIWatchManager shared];
    identifier = [v5 identifier];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__MCUIBridgeSpecifierProvider_loadProfileFromSpecifier___block_invoke;
    v10[3] = &unk_279862038;
    objc_copyWeak(&v11, &location);
    [v8 fetchProfileIdentifier:identifier completion:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    NSLog(&cfstr_McuiBridgeSpec.isa, specifierCopy);
  }
}

void __56__MCUIBridgeSpecifierProvider_loadProfileFromSpecifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__MCUIBridgeSpecifierProvider_loadProfileFromSpecifier___block_invoke_2;
  block[3] = &unk_279861A68;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __56__MCUIBridgeSpecifierProvider_loadProfileFromSpecifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained delegate];
    v4 = [v3 mcuiViewController];
    [v4 MCUIHideProgressInNavBarShowBackButton:1];

    if (*(a1 + 32))
    {
      [MEMORY[0x277D75110] MCUIShowWatchUnavailableAlertWithCompletion:0];
    }

    else
    {
      v5 = [[MCRemoveProfileViewController alloc] initWithProfile:*(a1 + 40)];
      v6 = [v8 delegate];
      v7 = [v6 mcuiViewController];
      [v7 dmc_pushViewController:v5 animated:1];
    }

    WeakRetained = v8;
  }
}

@end