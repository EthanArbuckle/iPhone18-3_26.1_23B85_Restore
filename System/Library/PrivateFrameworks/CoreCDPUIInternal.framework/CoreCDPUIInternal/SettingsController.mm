@interface SettingsController
- (BOOL)shouldAllowCDPEnrollment;
- (id)_enableCentralizedRPDFlow;
- (id)_enableSwiftUIRemoteSecretFlowSwitchCellSpecifier;
- (id)_enableWalrusSwitchCellSpecifier;
- (id)_recoverAndSyncrhonizeDataSpecifier;
- (id)_recoverStingrayDataSpecifier;
- (id)_recoveryKeySpecifier;
- (id)_recoveryKeySpecifierRegen;
- (id)_walrusSpecifiers;
- (id)_webAccessSpecifiers;
- (id)getUserDefaultEnabled:(id)enabled;
- (id)specifiers;
- (id)walrusEnabled;
- (id)webAccessEnabled;
- (void)_loadSpecifiers;
- (void)_recoverAndSyncrhonizeStingrayData:(id)data;
- (void)_recoverStingrayData:(id)data;
- (void)_showStatusChangeUIFor:(id)for;
- (void)_showWalrusChangeUI:(unint64_t)i;
- (void)_showWebAccessChangeUI:(unint64_t)i;
- (void)beginEnablementFlow:(id)flow;
- (void)beginFMIPRecovery:(id)recovery;
- (void)beginIDMSRecovery:(id)recovery;
- (void)beginIDMSRecoveryPrimary:(id)primary;
- (void)beginIDMSRecoveryRK:(id)k;
- (void)beginIDMSRecoveryWithFailure:(id)failure;
- (void)beginIDMSRecoveryWithRKSkip:(id)skip;
- (void)cdpContext:(id)context verifyMasterKey:(id)key completion:(id)completion;
- (void)deviceToDeviceAccountUpgradeCardUI:(id)i;
- (void)enableCDP:(id)p;
- (void)generateNewRecoveryKey:(id)key;
- (void)presentAccountRecoveryFlow;
- (void)promptFor4DigitICSC:(id)c;
- (void)promptFor4DigitRemoteSecret:(id)secret;
- (void)promptFor6DigitICSC:(id)c;
- (void)promptFor6DigitRemoteSecret:(id)secret;
- (void)promptForComplexICSC:(id)c;
- (void)promptForCustomAlphanumericRemoteSecret:(id)secret;
- (void)promptForCustomNumericRemoteSecret:(id)secret;
- (void)promptForLocalSecret:(id)secret;
- (void)promptForRandomICSC:(id)c;
- (void)removeSpinnerFromSpecifier:(id)specifier;
- (void)setUserDefaultEnabled:(id)enabled specifier:(id)specifier;
- (void)setWalrusStatus:(BOOL)status;
- (void)setWebAccessStatus:(BOOL)status;
- (void)showADPLandingPage:(id)page;
- (void)simulateADPUpsell:(id)upsell;
- (void)startBeneficiaryFlow:(id)flow;
- (void)startSpinnerForSpecifier:(id)specifier;
- (void)upsellViewModelDidRequestBeginEnablementFlowWithContext:(id)context;
- (void)upsellViewModelDidRequestCFUDismissalWithContext:(id)context;
- (void)viewDidLoad;
@end

@implementation SettingsController

- (BOOL)shouldAllowCDPEnrollment
{
  keyExistsAndHasValidFormat = 0;
  v2 = CFPreferencesGetAppBooleanValue(@"UseCDP", @"com.apple.corecdp", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v2 = [defaultManager fileExistsAtPath:@"/var/db/.AppleiCDPEnroll"];
  }

  return v2;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(SettingsController *)self loadSpecifiersFromPlistName:@"CoreCDPInternalSettings" target:self];
    v6 = [v5 mutableCopy];
    v7 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v6;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SettingsController;
  [(SettingsController *)&v7 viewDidLoad];
  v3 = objc_alloc_init(DummyWalrusStateController);
  walrusStateController = self->_walrusStateController;
  self->_walrusStateController = v3;

  v5 = objc_alloc_init(DummyWebAccessStateController);
  webAccessStatusController = self->_webAccessStatusController;
  self->_webAccessStatusController = v5;

  [(SettingsController *)self _loadSpecifiers];
}

- (void)_loadSpecifiers
{
  v3 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SettingsController__loadSpecifiers__block_invoke;
  block[3] = &unk_278E2FA50;
  block[4] = self;
  dispatch_async(v3, block);
}

void __37__SettingsController__loadSpecifiers__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v3 = [v2 aa_primaryAppleAccount];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accountProperties];
    v6 = [v5 objectForKeyedSubscript:@"personID"];

    v7 = [MEMORY[0x277CFD480] isICDPEnabledForDSID:v6 checkWithServer:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) loadSpecifiersFromPlistName:@"CoreCDPInternalSettings" target:*(a1 + 32)];
  v9 = [v8 mutableCopy];
  v10 = *(a1 + 32);
  v11 = *MEMORY[0x277D3FC48];
  v12 = *(v10 + v11);
  *(v10 + v11) = v9;

  v13 = [MEMORY[0x277CBEB18] array];
  v14 = MEMORY[0x277D3FAD8];
  if (!v4)
  {
    v19 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Enable iCDP on Sign-In" target:*(a1 + 32) set:sel_setUserDefaultEnabled_specifier_ get:sel_getUserDefaultEnabled_ detail:0 cell:6 edit:0];
    [v19 setProperty:@"UseCDP" forKey:*MEMORY[0x277D3FFF0]];
    [v19 setProperty:@"com.apple.corecdp" forKey:*MEMORY[0x277D3FEF8]];
    [v19 setProperty:@"com.apple.corecdp.enable.changed" forKey:*MEMORY[0x277D401A0]];
    [v19 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FEF0]];
    [v19 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
LABEL_9:
    [v13 addObject:v19];
    goto LABEL_10;
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = [v4 username];
  v17 = v16;
  if (!v7)
  {
    v24 = [v15 stringWithFormat:@"Enable iCDP for %@", v16];
    v19 = [v14 preferenceSpecifierNamed:v24 target:*(a1 + 32) set:0 get:0 detail:0 cell:13 edit:0];

    [v19 setButtonAction:sel_enableCDP_];
    goto LABEL_9;
  }

  v18 = [v15 stringWithFormat:@"Enabled for %@", v16];
  v19 = [v14 preferenceSpecifierNamed:v18 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

  [v19 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  [v13 addObject:v19];
  v20 = [*(a1 + 32) _recoverStingrayDataSpecifier];
  [v13 addObject:v20];

  v21 = [*(a1 + 32) _recoverAndSyncrhonizeDataSpecifier];
  [v13 addObject:v21];

  v22 = [*(a1 + 32) _recoveryKeySpecifier];
  [v13 addObject:v22];

  v23 = [*(a1 + 32) _recoveryKeySpecifierRegen];
  [v13 addObject:v23];

LABEL_10:
  v25 = [*(a1 + 32) _enableWalrusSwitchCellSpecifier];
  [v13 addObject:v25];

  v26 = [*(a1 + 32) _enableSwiftUIRemoteSecretFlowSwitchCellSpecifier];
  [v13 addObject:v26];

  v27 = [*(a1 + 32) _enableCentralizedRPDFlow];
  [v13 addObject:v27];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SettingsController__loadSpecifiers__block_invoke_2;
  block[3] = &unk_278E2FA28;
  v28 = *(a1 + 32);
  v31 = v13;
  v32 = v28;
  v29 = v13;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __37__SettingsController__loadSpecifiers__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:@"iCloud Data Protection"];
    [*(a1 + 32) insertObject:v2 atIndex:0];
    [*(a1 + 40) insertContiguousSpecifiers:*(a1 + 32) atIndex:0];
  }

  v3 = *(a1 + 40);
  v4 = [v3 _walrusSpecifiers];
  [v3 addSpecifiersFromArray:v4];

  v5 = *(a1 + 40);
  v6 = [v5 _webAccessSpecifiers];
  [v5 addSpecifiersFromArray:v6];

  v7 = *(a1 + 40);

  return [v7 reload];
}

- (id)_enableCentralizedRPDFlow
{
  v2 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Enable CentralizedRPDFlow" target:self set:sel_setUserDefaultEnabled_specifier_ get:sel_getUserDefaultEnabled_ detail:0 cell:6 edit:0];
  [v2 setProperty:@"CentralizedRPDFlow" forKey:*MEMORY[0x277D3FFF0]];
  [v2 setProperty:@"com.apple.corecdp" forKey:*MEMORY[0x277D3FEF8]];
  [v2 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FEF0]];
  [v2 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];

  return v2;
}

- (id)_enableWalrusSwitchCellSpecifier
{
  v2 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Enable Walrus" target:self set:sel_setUserDefaultEnabled_specifier_ get:sel_getUserDefaultEnabled_ detail:0 cell:6 edit:0];
  [v2 setProperty:@"EnableWalrus" forKey:*MEMORY[0x277D3FFF0]];
  [v2 setProperty:@"com.apple.corecdp" forKey:*MEMORY[0x277D3FEF8]];
  [v2 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FEF0]];
  [v2 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];

  return v2;
}

- (id)_enableSwiftUIRemoteSecretFlowSwitchCellSpecifier
{
  v2 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Enable SwiftUI Remote Secret Flow" target:self set:sel_setUserDefaultEnabled_specifier_ get:sel_getUserDefaultEnabled_ detail:0 cell:6 edit:0];
  [v2 setProperty:@"SwiftUIRemoteSecretFlow" forKey:*MEMORY[0x277D3FFF0]];
  [v2 setProperty:@"com.apple.corecdp" forKey:*MEMORY[0x277D3FEF8]];
  [v2 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FEF0]];
  [v2 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];

  return v2;
}

- (id)getUserDefaultEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = [enabledCopy propertyForKey:*MEMORY[0x277D3FEF8]];
  v5 = [enabledCopy propertyForKey:*MEMORY[0x277D3FFF0]];
  keyExistsAndHasValidFormat = 0;
  bOOLValue = CFPreferencesGetAppBooleanValue(v5, v4, &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    v7 = [enabledCopy propertyForKey:*MEMORY[0x277D3FEF0]];
    bOOLValue = [v7 BOOLValue];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];

  return v8;
}

- (void)setUserDefaultEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  v7 = [specifierCopy propertyForKey:*MEMORY[0x277D3FEF8]];
  v8 = [specifierCopy propertyForKey:*MEMORY[0x277D3FFF0]];
  if (v8)
  {
    if ([enabledCopy BOOLValue])
    {
      v9 = enabledCopy;
    }

    else
    {
      v9 = 0;
    }

    CFPreferencesSetAppValue(v8, v9, v7);
    CFPreferencesAppSynchronize(v7);
  }

  else
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SettingsController setUserDefaultEnabled:specifier:];
    }
  }
}

- (void)startSpinnerForSpecifier:(id)specifier
{
  v3 = *MEMORY[0x277D3FF38];
  specifierCopy = specifier;
  [specifierCopy setProperty:MEMORY[0x277CBEC28] forKey:v3];
  v6 = [specifierCopy propertyForKey:*MEMORY[0x277D40148]];

  if (v6)
  {
    v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
    [v5 startAnimating];
    [v6 setAccessoryView:v5];
  }
}

- (void)removeSpinnerFromSpecifier:(id)specifier
{
  v3 = *MEMORY[0x277D3FF38];
  specifierCopy = specifier;
  [specifierCopy setProperty:MEMORY[0x277CBEC38] forKey:v3];
  v6 = [specifierCopy propertyForKey:*MEMORY[0x277D40148]];

  v5 = v6;
  if (v6)
  {
    [v6 setAccessoryView:0];
    v5 = v6;
  }
}

- (id)_recoveryKeySpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Generate Recovery Key - New"];
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v5 setButtonAction:sel_generateNewRecoveryKey_];

  return v5;
}

- (id)_recoveryKeySpecifierRegen
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Generate Recovery Key - Regen"];
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v5 setButtonAction:sel_generateNewRecoveryKey_];

  return v5;
}

- (id)_walrusSpecifiers
{
  v12[6] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:@"Walrus"];
  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Enabled" target:self set:0 get:sel_walrusEnabled detail:0 cell:6 edit:0];
  v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Test Enable Walrus UI" target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v5 setButtonAction:sel_showEnableWalrusUI_];
  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Test Disable Walrus UI" target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v6 setButtonAction:sel_showDisableWalrusUI_];
  v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Show ADP Landing Page" target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v7 setButtonAction:sel_showADPLandingPage_];
  v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Simulate ADP Upsell CFU" target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v8 setButtonAction:sel_simulateADPUpsell_];
  v12[0] = v3;
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_webAccessSpecifiers
{
  v10[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:@"Web Access"];
  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Enabled" target:self set:0 get:sel_webAccessEnabled detail:0 cell:6 edit:0];
  v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Test Enable Web Access UI" target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v5 setButtonAction:sel_showEnableWebAccessUI_];
  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Test Disable Web Access UI" target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v6 setButtonAction:sel_showDisableWebAccessUI_];
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)generateNewRecoveryKey:(id)key
{
  v4 = MEMORY[0x277CFD548];
  keyCopy = key;
  v6 = [v4 alloc];
  _contextForPrimaryAccount = [(SettingsController *)self _contextForPrimaryAccount];
  v8 = [v6 initWithContext:_contextForPrimaryAccount];

  name = [keyCopy name];

  LODWORD(keyCopy) = [name hasSuffix:@"Regen"];
  context = [v8 context];
  v11 = context;
  if (keyCopy)
  {
    v12 = 4;
  }

  else
  {
    v12 = 5;
  }

  [context setType:v12];

  v13 = objc_alloc(MEMORY[0x277CFDAE0]);
  navigationController = [(SettingsController *)self navigationController];
  v15 = [v13 initWithPresentingViewController:navigationController];

  [v15 setForceInlinePresentation:{-[SettingsController _forceInlineUI](self, "_forceInlineUI")}];
  [v8 setUiProvider:v15];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __45__SettingsController_generateNewRecoveryKey___block_invoke;
  v16[3] = &unk_278E2FA78;
  v16[4] = self;
  [v8 generateNewRecoveryKey:v16];
}

void __45__SettingsController_generateNewRecoveryKey___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [*(a1 + 32) navigationController];
  v5 = [v4 popToViewController:*(a1 + 32) animated:1];

  if ([v8 code] != -5307 && objc_msgSend(v8, "code") != -5308)
  {
    v6 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Failed to generate RK" message:@"Somethng went wrong... File a radar to PEP CoreCDP" preferredStyle:1];
    v7 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:0 handler:0];
    [v6 addAction:v7];

    [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
  }
}

- (id)_recoverStingrayDataSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Restore Local Data"];
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v5 setButtonAction:sel__recoverStingrayData_];

  return v5;
}

- (void)_recoverStingrayData:(id)data
{
  dataCopy = data;
  [(SettingsController *)self startSpinnerForSpecifier:dataCopy];
  v5 = objc_alloc(MEMORY[0x277CFD548]);
  _contextForPrimaryAccount = [(SettingsController *)self _contextForPrimaryAccount];
  v7 = [v5 initWithContext:_contextForPrimaryAccount];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__SettingsController__recoverStingrayData___block_invoke;
  v9[3] = &unk_278E2FAA0;
  v9[4] = self;
  v10 = dataCopy;
  v8 = dataCopy;
  [v7 recoverWithSquirrel:v9];
}

void __43__SettingsController__recoverStingrayData___block_invoke(uint64_t a1, int a2, void *a3)
{
  v9 = a3;
  [*(a1 + 32) removeSpinnerFromSpecifier:*(a1 + 40)];
  v5 = MEMORY[0x277D75110];
  if (a2)
  {
    v6 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Result" message:@"Recovered" preferredStyle:1];
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed: %@", v9];
    v6 = [v5 alertControllerWithTitle:@"Result" message:v7 preferredStyle:1];
  }

  v8 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:0 handler:0];
  [v6 addAction:v8];

  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
}

- (id)_recoverAndSyncrhonizeDataSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Restore Local Data and Synchronize"];
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v5 setButtonAction:sel__recoverAndSyncrhonizeStingrayData_];

  return v5;
}

- (void)_recoverAndSyncrhonizeStingrayData:(id)data
{
  dataCopy = data;
  [(SettingsController *)self startSpinnerForSpecifier:dataCopy];
  v5 = objc_alloc(MEMORY[0x277CFD548]);
  _contextForPrimaryAccount = [(SettingsController *)self _contextForPrimaryAccount];
  v7 = [v5 initWithContext:_contextForPrimaryAccount];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SettingsController__recoverAndSyncrhonizeStingrayData___block_invoke;
  v9[3] = &unk_278E2FAA0;
  v9[4] = self;
  v10 = dataCopy;
  v8 = dataCopy;
  [v7 recoverAndSynchronizeWithSquirrel:v9];
}

void __57__SettingsController__recoverAndSyncrhonizeStingrayData___block_invoke(uint64_t a1, int a2, void *a3)
{
  v9 = a3;
  [*(a1 + 32) removeSpinnerFromSpecifier:*(a1 + 40)];
  v5 = MEMORY[0x277D75110];
  if (a2)
  {
    v6 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Result" message:@"Recovered and synchronized" preferredStyle:1];
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed: %@", v9];
    v6 = [v5 alertControllerWithTitle:@"Result" message:v7 preferredStyle:1];
  }

  v8 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:0 handler:0];
  [v6 addAction:v8];

  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
}

- (void)enableCDP:(id)p
{
  pCopy = p;
  v5 = objc_alloc_init(MEMORY[0x277CB8F48]);
  aa_primaryAppleAccount = [v5 aa_primaryAppleAccount];
  v7 = _CDPLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (aa_primaryAppleAccount)
  {
    if (v8)
    {
      [SettingsController enableCDP:aa_primaryAppleAccount];
    }

    CFPreferencesSetAppValue(@"USeCDP", *MEMORY[0x277CBED28], @"com.apple.corecdp");
    CFPreferencesSynchronize(@"com.apple.corecdp", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v9 = objc_alloc_init(MEMORY[0x277CF0380]);
    accountProperties = [aa_primaryAppleAccount accountProperties];
    v7 = [accountProperties objectForKeyedSubscript:@"personID"];

    [v9 setDSID:v7];
    username = [aa_primaryAppleAccount username];
    [v9 setUsername:username];

    [v9 setIsUsernameEditable:0];
    [v9 setPresentingViewController:self];
    [v9 setShouldForceInteractiveAuth:1];
    [pCopy setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    [pCopy setProperty:@"Enabling iCDP..." forKey:*MEMORY[0x277D40170]];
    [(SettingsController *)self reloadSpecifier:pCopy];
    v12 = [objc_alloc(MEMORY[0x277CF0178]) initWithIdentifier:@"com.apple.corecdp.internal_prefs"];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __32__SettingsController_enableCDP___block_invoke;
    v14[3] = &unk_278E2FAF0;
    v14[4] = self;
    v15 = v9;
    v13 = v9;
    [v12 authenticateWithContext:v13 completion:v14];
  }

  else if (v8)
  {
    [SettingsController enableCDP:];
  }
}

void __32__SettingsController_enableCDP___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __32__SettingsController_enableCDP___block_invoke_cold_1();
    }

    v9 = [objc_alloc(MEMORY[0x277CFD4A8]) initWithAuthenticationResults:v5];
    v10 = [objc_alloc(MEMORY[0x277CFD548]) initWithContext:v9];
    v11 = [objc_alloc(MEMORY[0x277CFDAE0]) initWithPresentingViewController:*(a1 + 32)];
    [v10 setUiProvider:v11];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __32__SettingsController_enableCDP___block_invoke_195;
    v16[3] = &unk_278E2FAC8;
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    v17 = v12;
    v18 = v13;
    [v10 handleCloudDataProtectionStateWithCompletion:v16];
  }

  else
  {
    if (v8)
    {
      __32__SettingsController_enableCDP___block_invoke_cold_2();
    }

    v9 = [MEMORY[0x277D75110] alertControllerWithTitle:@"iCDP Not Enabled" message:@"iCDP was not enabled on your account because authentication failed" preferredStyle:1];
    v14 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:0 handler:0];
    [v9 addAction:v14];

    [*(a1 + 32) presentViewController:v9 animated:1 completion:0];
    CFPreferencesSetAppValue(@"UseCDP", *MEMORY[0x277CBED28], @"com.apple.corecdp");
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__SettingsController_enableCDP___block_invoke_219;
    block[3] = &unk_278E2FA50;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __32__SettingsController_enableCDP___block_invoke_195(uint64_t a1, int a2, int a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109634;
    v21 = a2;
    v22 = 1024;
    v23 = a3;
    v24 = 2112;
    v25 = v7;
    _os_log_debug_impl(&dword_245291000, v8, OS_LOG_TYPE_DEBUG, "State machine finished with shouldCompleteSignIn=%i cloudDataProtectionEnabled=%i error=%@", buf, 0x18u);
  }

  v9 = MEMORY[0x277D75110];
  if (a2 && a3)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [*(a1 + 32) username];
    v12 = [v10 stringWithFormat:@"iCDP has been successfuly enabled on your account (%@)", v11];
    v13 = [v9 alertControllerWithTitle:@"iCDP Enabled!" message:v12 preferredStyle:1];

    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a2)
  {
    v13 = [MEMORY[0x277D75110] alertControllerWithTitle:@"iCDP Not Enabled" message:@"iCDP was not enabled on your account preferredStyle:{please file a radar to PEP CoreCDP | 1.0", 1}];
    CFPreferencesSetAppValue(@"UseCDP", *MEMORY[0x277CBED28], @"com.apple.corecdp");
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __32__SettingsController_enableCDP___block_invoke_208;
    v19[3] = &unk_278E2FA50;
    v19[4] = *(a1 + 40);
    v14 = MEMORY[0x277D85CD0];
    v15 = v19;
  }

  else
  {
    v13 = [MEMORY[0x277D75110] alertControllerWithTitle:@"iCDP Enable Failed" message:@"Something went wrong trying to enable iCDP on your account preferredStyle:{please file a radar to PEP CoreCDP | 1.0", 1}];
    CFPreferencesSetAppValue(@"UseCDP", *MEMORY[0x277CBED28], @"com.apple.corecdp");
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__SettingsController_enableCDP___block_invoke_2;
    block[3] = &unk_278E2FA50;
    block[4] = *(a1 + 40);
    v14 = MEMORY[0x277D85CD0];
    v15 = block;
  }

  dispatch_async(v14, v15);
  if (v13)
  {
LABEL_11:
    v16 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:0 handler:0];
    [v13 addAction:v16];

    [*(a1 + 40) presentViewController:v13 animated:1 completion:0];
  }

LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)promptForLocalSecret:(id)secret
{
  contextForPrimaryAccount = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  v4 = objc_alloc(MEMORY[0x277CFDAE0]);
  navigationController = [(SettingsController *)self navigationController];
  v6 = [v4 initWithPresentingViewController:navigationController];

  [v6 setForceInlinePresentation:{-[SettingsController _forceInlineUI](self, "_forceInlineUI")}];
  [v6 cdpContext:contextForPrimaryAccount promptForLocalSecretWithCompletion:&__block_literal_global_0];
}

void __43__SettingsController_promptForLocalSecret___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __43__SettingsController_promptForLocalSecret___block_invoke_cold_1(v5);
    }
  }

  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__SettingsController_promptForLocalSecret___block_invoke_cold_2(v4);
  }
}

- (void)promptFor4DigitRemoteSecret:(id)secret
{
  v12 = objc_alloc_init(MEMORY[0x277CFD4A8]);
  [v12 setDidUseSMSVerification:{-[SettingsController _didUseSMSVerification](self, "_didUseSMSVerification")}];
  v4 = [(SettingsController *)self _fakeDevicesWithExpectedSecret:@"1234" isNumber:1 numericLength:&unk_28583A468];
  v5 = [[DummyRemoteDeviceSecretValidator alloc] initWithExpectedSecret:@"1234"];
  v6 = objc_alloc(MEMORY[0x277CFDAE0]);
  navigationController = [(SettingsController *)self navigationController];
  v8 = [v6 initWithPresentingViewController:navigationController];
  uiController = self->_uiController;
  self->_uiController = v8;

  [(CDPUIController *)self->_uiController setForceInlinePresentation:[(SettingsController *)self _forceInlineUI]];
  _offerRemoteApproval = [(SettingsController *)self _offerRemoteApproval];
  v11 = objc_alloc_init(MEMORY[0x277CFD530]);
  [v11 setContext:v12];
  [v11 setIsWalrusEnabled:{-[SettingsController _enableWalrus](self, "_enableWalrus")}];
  [v11 setRpdProbationDuration:0.0];
  [v11 setHasPeersForRemoteApproval:_offerRemoteApproval];
  [(CDPUIController *)self->_uiController cdpRecoveryFlowContext:v11 promptForRemoteSecretWithDevices:v4 validator:v5];
}

- (void)promptFor6DigitRemoteSecret:(id)secret
{
  v4 = objc_alloc_init(MEMORY[0x277CFD4A8]);
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CFD4A8]);
  }

  v13 = v4;
  [v4 setDidUseSMSVerification:{-[SettingsController _didUseSMSVerification](self, "_didUseSMSVerification")}];
  v5 = [(SettingsController *)self _fakeDevicesWithExpectedSecret:@"123456" isNumber:1 numericLength:&unk_28583A480];
  v6 = [[DummyRemoteDeviceSecretValidator alloc] initWithExpectedSecret:@"123456"];
  v7 = objc_alloc(MEMORY[0x277CFDAE0]);
  navigationController = [(SettingsController *)self navigationController];
  v9 = [v7 initWithPresentingViewController:navigationController];
  uiController = self->_uiController;
  self->_uiController = v9;

  [(CDPUIController *)self->_uiController setForceInlinePresentation:[(SettingsController *)self _forceInlineUI]];
  if (([(DummyRemoteDeviceSecretValidator *)v6 supportedEscapeOfferMask]& 8) != 0)
  {
    [v13 setType:2];
    [v13 set_forceReset:1];
  }

  if (([(DummyRemoteDeviceSecretValidator *)v6 supportedEscapeOfferMask]& 0x40) != 0)
  {
    [v13 set_supportsCustodianRecovery:1];
  }

  _offerRemoteApproval = [(SettingsController *)self _offerRemoteApproval];
  v12 = objc_alloc_init(MEMORY[0x277CFD530]);
  [v12 setContext:v13];
  [v12 setIsWalrusEnabled:{-[SettingsController _enableWalrus](self, "_enableWalrus")}];
  [v12 setRpdProbationDuration:0.0];
  [v12 setHasPeersForRemoteApproval:_offerRemoteApproval];
  [(CDPUIController *)self->_uiController cdpRecoveryFlowContext:v12 promptForRemoteSecretWithDevices:v5 validator:v6];
}

- (void)promptForCustomNumericRemoteSecret:(id)secret
{
  v12 = objc_alloc_init(MEMORY[0x277CFD4A8]);
  [v12 setDidUseSMSVerification:{-[SettingsController _didUseSMSVerification](self, "_didUseSMSVerification")}];
  v4 = [(SettingsController *)self _fakeDevicesWithExpectedSecret:@"1234567" isNumber:1 numericLength:&unk_28583A498];
  v5 = [[DummyRemoteDeviceSecretValidator alloc] initWithExpectedSecret:@"1234567"];
  v6 = objc_alloc(MEMORY[0x277CFDAE0]);
  navigationController = [(SettingsController *)self navigationController];
  v8 = [v6 initWithPresentingViewController:navigationController];
  uiController = self->_uiController;
  self->_uiController = v8;

  [(CDPUIController *)self->_uiController setForceInlinePresentation:[(SettingsController *)self _forceInlineUI]];
  _offerRemoteApproval = [(SettingsController *)self _offerRemoteApproval];
  v11 = objc_alloc_init(MEMORY[0x277CFD530]);
  [v11 setContext:v12];
  [v11 setIsWalrusEnabled:{-[SettingsController _enableWalrus](self, "_enableWalrus")}];
  [v11 setRpdProbationDuration:0.0];
  [v11 setHasPeersForRemoteApproval:_offerRemoteApproval];
  [(CDPUIController *)self->_uiController cdpRecoveryFlowContext:v11 promptForRemoteSecretWithDevices:v4 validator:v5];
}

- (void)promptForCustomAlphanumericRemoteSecret:(id)secret
{
  v12 = objc_alloc_init(MEMORY[0x277CFD4A8]);
  [v12 setDidUseSMSVerification:{-[SettingsController _didUseSMSVerification](self, "_didUseSMSVerification")}];
  v4 = [(SettingsController *)self _fakeDevicesWithExpectedSecret:@"Chuck" isNumber:0 numericLength:&unk_28583A4B0];
  v5 = [[DummyRemoteDeviceSecretValidator alloc] initWithExpectedSecret:@"Chuck"];
  if (([(DummyRemoteDeviceSecretValidator *)v5 supportedEscapeOfferMask]& 8) != 0)
  {
    [v12 setType:2];
    [v12 set_forceReset:1];
  }

  v6 = objc_alloc(MEMORY[0x277CFDAE0]);
  navigationController = [(SettingsController *)self navigationController];
  v8 = [v6 initWithPresentingViewController:navigationController];
  uiController = self->_uiController;
  self->_uiController = v8;

  [(CDPUIController *)self->_uiController setForceInlinePresentation:[(SettingsController *)self _forceInlineUI]];
  _offerRemoteApproval = [(SettingsController *)self _offerRemoteApproval];
  v11 = objc_alloc_init(MEMORY[0x277CFD530]);
  [v11 setContext:v12];
  [v11 setIsWalrusEnabled:{-[SettingsController _enableWalrus](self, "_enableWalrus")}];
  [v11 setRpdProbationDuration:0.0];
  [v11 setHasPeersForRemoteApproval:_offerRemoteApproval];
  [(CDPUIController *)self->_uiController cdpRecoveryFlowContext:v11 promptForRemoteSecretWithDevices:v4 validator:v5];
}

- (void)promptFor4DigitICSC:(id)c
{
  v9 = objc_alloc_init(MEMORY[0x277CFD4A8]);
  [v9 setDidUseSMSVerification:{-[SettingsController _didUseSMSVerification](self, "_didUseSMSVerification")}];
  v4 = [[DummyRemoteDeviceSecretValidator alloc] initWithExpectedSecret:@"1234"];
  v5 = objc_alloc(MEMORY[0x277CFDAE0]);
  navigationController = [(SettingsController *)self navigationController];
  v7 = [v5 initWithPresentingViewController:navigationController];
  uiController = self->_uiController;
  self->_uiController = v7;

  [(CDPUIController *)self->_uiController setForceInlinePresentation:[(SettingsController *)self _forceInlineUI]];
  [(CDPUIController *)self->_uiController cdpContext:v9 promptForICSCWithIsNumeric:1 numericLength:&unk_28583A468 isRandom:0 validator:v4];
}

- (void)promptFor6DigitICSC:(id)c
{
  v9 = objc_alloc_init(MEMORY[0x277CFD4A8]);
  [v9 setDidUseSMSVerification:{-[SettingsController _didUseSMSVerification](self, "_didUseSMSVerification")}];
  v4 = [[DummyRemoteDeviceSecretValidator alloc] initWithExpectedSecret:@"123456"];
  v5 = objc_alloc(MEMORY[0x277CFDAE0]);
  navigationController = [(SettingsController *)self navigationController];
  v7 = [v5 initWithPresentingViewController:navigationController];
  uiController = self->_uiController;
  self->_uiController = v7;

  [(CDPUIController *)self->_uiController setForceInlinePresentation:[(SettingsController *)self _forceInlineUI]];
  [(CDPUIController *)self->_uiController cdpContext:v9 promptForICSCWithIsNumeric:1 numericLength:&unk_28583A480 isRandom:0 validator:v4];
}

- (void)promptForComplexICSC:(id)c
{
  v9 = objc_alloc_init(MEMORY[0x277CFD4A8]);
  [v9 setDidUseSMSVerification:{-[SettingsController _didUseSMSVerification](self, "_didUseSMSVerification")}];
  v4 = [[DummyRemoteDeviceSecretValidator alloc] initWithExpectedSecret:@"Chuck"];
  v5 = objc_alloc(MEMORY[0x277CFDAE0]);
  navigationController = [(SettingsController *)self navigationController];
  v7 = [v5 initWithPresentingViewController:navigationController];
  uiController = self->_uiController;
  self->_uiController = v7;

  [(CDPUIController *)self->_uiController setForceInlinePresentation:[(SettingsController *)self _forceInlineUI]];
  [(CDPUIController *)self->_uiController cdpContext:v9 promptForICSCWithIsNumeric:0 numericLength:0 isRandom:0 validator:v4];
}

- (void)promptForRandomICSC:(id)c
{
  v9 = objc_alloc_init(MEMORY[0x277CFD4A8]);
  [v9 setDidUseSMSVerification:{-[SettingsController _didUseSMSVerification](self, "_didUseSMSVerification")}];
  v4 = [[DummyRemoteDeviceSecretValidator alloc] initWithExpectedSecret:@"Chuck"];
  v5 = objc_alloc(MEMORY[0x277CFDAE0]);
  navigationController = [(SettingsController *)self navigationController];
  v7 = [v5 initWithPresentingViewController:navigationController];
  uiController = self->_uiController;
  self->_uiController = v7;

  [(CDPUIController *)self->_uiController setForceInlinePresentation:[(SettingsController *)self _forceInlineUI]];
  [(CDPUIController *)self->_uiController cdpContext:v9 promptForICSCWithIsNumeric:0 numericLength:0 isRandom:1 validator:v4];
}

- (void)beginIDMSRecoveryRK:(id)k
{
  v4 = objc_alloc(MEMORY[0x277CFDAE0]);
  navigationController = [(SettingsController *)self navigationController];
  v6 = [v4 initWithPresentingViewController:navigationController];
  uiController = self->_uiController;
  self->_uiController = v6;

  [(CDPUIController *)self->_uiController setForceInlinePresentation:[(SettingsController *)self _forceInlineUI]];
  _contextForPrimaryAccount = [(SettingsController *)self _contextForPrimaryAccount];
  [_contextForPrimaryAccount setIdmsMasterKeyRecovery:1];
  [_contextForPrimaryAccount setMandatesRecoveryKey:{-[SettingsController _rkMandate](self, "_rkMandate")}];
  v9 = [objc_alloc(MEMORY[0x277CFD528]) initWithContext:_contextForPrimaryAccount];
  [v9 setUiProvider:self->_uiController];
  [v9 setAuthProvider:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__SettingsController_beginIDMSRecoveryRK___block_invoke;
  v10[3] = &unk_278E2FB38;
  v10[4] = self;
  [v9 performRecovery:v10];
}

void __42__SettingsController_beginIDMSRecoveryRK___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D75110];
  v6 = MEMORY[0x277CCACA8];
  v7 = a2;
  v8 = [v6 stringWithFormat:@"Recovered: %@. Error: %ld", v7, objc_msgSend(a3, "code")];

  v10 = [v5 alertControllerWithTitle:@"Failure" message:v8 preferredStyle:1];

  v9 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:2 handler:0];
  [v10 addAction:v9];

  [*(a1 + 32) presentViewController:v10 animated:1 completion:0];
}

- (void)beginIDMSRecoveryWithRKSkip:(id)skip
{
  v4 = objc_alloc(MEMORY[0x277CFDAE0]);
  navigationController = [(SettingsController *)self navigationController];
  v6 = [v4 initWithPresentingViewController:navigationController];
  uiController = self->_uiController;
  self->_uiController = v6;

  [(CDPUIController *)self->_uiController setForceInlinePresentation:[(SettingsController *)self _forceInlineUI]];
  _contextForPrimaryAccount = [(SettingsController *)self _contextForPrimaryAccount];
  [_contextForPrimaryAccount setIdmsMasterKeyRecovery:1];
  [_contextForPrimaryAccount setMandatesRecoveryKey:{-[SettingsController _rkMandate](self, "_rkMandate")}];
  v9 = [objc_alloc(MEMORY[0x277CFD528]) initWithContext:_contextForPrimaryAccount];
  [v9 setUiProvider:self->_uiController];
  [v9 setAuthProvider:self];
  v10 = [objc_alloc(MEMORY[0x277CFDA98]) initWithConnection:0 entitlements:8 clientType:0];
  v11 = objc_alloc(MEMORY[0x277CFD550]);
  uiProvider = [v9 uiProvider];
  v13 = [v11 initWithUIProvider:uiProvider];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__SettingsController_beginIDMSRecoveryWithRKSkip___block_invoke;
  v14[3] = &unk_278E2FB38;
  v14[4] = self;
  [v10 performRecoveryWithContext:_contextForPrimaryAccount uiProvider:v13 authProvider:0 completion:v14];
}

void __50__SettingsController_beginIDMSRecoveryWithRKSkip___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D75110];
  v6 = MEMORY[0x277CCACA8];
  v7 = a2;
  v8 = [v6 stringWithFormat:@"Recovered: %@. Error: %ld", v7, objc_msgSend(a3, "code")];

  v10 = [v5 alertControllerWithTitle:@"Failure" message:v8 preferredStyle:1];

  v9 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:2 handler:0];
  [v10 addAction:v9];

  [*(a1 + 32) presentViewController:v10 animated:1 completion:0];
}

- (void)cdpContext:(id)context verifyMasterKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  v6 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SettingsController_cdpContext_verifyMasterKey_completion___block_invoke;
  block[3] = &unk_278E2F9E0;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

- (void)beginIDMSRecovery:(id)recovery
{
  v4 = [CDPRecoveryTestController alloc];
  v5 = [(SettingsController *)self _fakeDevicesWithExpectedSecret:@"1234567" isNumber:1 numericLength:&unk_28583A498];
  navigationController = [(SettingsController *)self navigationController];
  v7 = [(CDPRecoveryTestController *)v4 initWithDevices:v5 andNavigationController:navigationController];
  recoveryTestController = self->_recoveryTestController;
  self->_recoveryTestController = v7;

  v9 = self->_recoveryTestController;

  [(CDPRecoveryTestController *)v9 beginIDMSRecoveryFlow];
}

- (void)beginFMIPRecovery:(id)recovery
{
  recoveryCopy = recovery;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  _contextForPrimaryAccount = [(SettingsController *)self _contextForPrimaryAccount];
  v5 = objc_alloc_init(MEMORY[0x277CF0380]);
  dsid = [v12[5] dsid];
  stringValue = [dsid stringValue];
  [v5 setDSID:stringValue];

  appleID = [v12[5] appleID];
  [v5 setUsername:appleID];

  [v5 setIsUsernameEditable:0];
  [v5 setPresentingViewController:self];
  [v5 setShouldForceInteractiveAuth:1];
  v9 = [objc_alloc(MEMORY[0x277CF0178]) initWithIdentifier:@"com.apple.corecdp.internal_prefs"];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__SettingsController_beginFMIPRecovery___block_invoke;
  v10[3] = &unk_278E2FB60;
  v10[4] = self;
  v10[5] = &v11;
  [v9 authenticateWithContext:v5 completion:v10];

  _Block_object_dispose(&v11, 8);
}

void __40__SettingsController_beginFMIPRecovery___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x277CFD4A8];
    v7 = a2;
    v8 = [[v6 alloc] initWithAuthenticationResults:v7];

    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(*(*(a1 + 40) + 8) + 40) setGuestMode:1];
    [*(*(*(a1 + 40) + 8) + 40) setFindMyiPhoneUUID:@"1234"];
    v11 = [objc_alloc(MEMORY[0x277CFD528]) initWithContext:*(*(*(a1 + 40) + 8) + 40)];
    v12 = *(a1 + 32);
    v13 = *(v12 + 1480);
    *(v12 + 1480) = v11;

    v14 = [objc_alloc(MEMORY[0x277CFDAE0]) initWithPresentingViewController:*(a1 + 32)];
    [*(*(a1 + 32) + 1480) setUiProvider:v14];
    v15 = *(*(a1 + 32) + 1480);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __40__SettingsController_beginFMIPRecovery___block_invoke_2;
    v18[3] = &unk_278E2FAF0;
    v16 = v5;
    v17 = *(a1 + 32);
    v19 = v16;
    v20 = v17;
    [v15 performRecovery:v18];
  }
}

void __40__SettingsController_beginFMIPRecovery___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277CFD3D8]];

  v4 = MEMORY[0x277D75110];
  if (v3)
  {
    v7 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Success" message:@"FMIP present" preferredStyle:1];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"FMIP are missing, error: %@", *(a1 + 32)];
    v7 = [v4 alertControllerWithTitle:@"Failure" message:v5 preferredStyle:1];
  }

  v6 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:2 handler:0];
  [v7 addAction:v6];

  [*(a1 + 40) presentViewController:v7 animated:1 completion:0];
}

- (void)beginIDMSRecoveryPrimary:(id)primary
{
  primaryCopy = primary;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  _contextForPrimaryAccount = [(SettingsController *)self _contextForPrimaryAccount];
  v5 = objc_alloc_init(MEMORY[0x277CF0380]);
  dsid = [v12[5] dsid];
  stringValue = [dsid stringValue];
  [v5 setDSID:stringValue];

  appleID = [v12[5] appleID];
  [v5 setUsername:appleID];

  [v5 setIsUsernameEditable:0];
  [v5 setPresentingViewController:self];
  [v5 setShouldForceInteractiveAuth:1];
  v9 = [objc_alloc(MEMORY[0x277CF0178]) initWithIdentifier:@"com.apple.corecdp.internal_prefs"];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__SettingsController_beginIDMSRecoveryPrimary___block_invoke;
  v10[3] = &unk_278E2FB60;
  v10[4] = self;
  v10[5] = &v11;
  [v9 authenticateWithContext:v5 completion:v10];

  _Block_object_dispose(&v11, 8);
}

void __47__SettingsController_beginIDMSRecoveryPrimary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x277CFD4A8];
    v7 = a2;
    v8 = [[v6 alloc] initWithAuthenticationResults:v7];

    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(*(*(a1 + 40) + 8) + 40) setIdmsRecovery:1];
    [*(*(*(a1 + 40) + 8) + 40) setGuestMode:1];
    v11 = [objc_alloc(MEMORY[0x277CFD528]) initWithContext:*(*(*(a1 + 40) + 8) + 40)];
    v12 = *(a1 + 32);
    v13 = *(v12 + 1480);
    *(v12 + 1480) = v11;

    v14 = [objc_alloc(MEMORY[0x277CFDAD8]) initWithPresentingViewController:*(a1 + 32)];
    [*(*(a1 + 32) + 1480) setUiProvider:v14];
    v15 = *(*(a1 + 32) + 1480);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __47__SettingsController_beginIDMSRecoveryPrimary___block_invoke_2;
    v18[3] = &unk_278E2FAF0;
    v16 = v5;
    v17 = *(a1 + 32);
    v19 = v16;
    v20 = v17;
    [v15 performRecovery:v18];
  }
}

void __47__SettingsController_beginIDMSRecoveryPrimary___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 objectForKeyedSubscript:*MEMORY[0x277CFD3F8]];
  if (v3 && (v4 = v3, [v10 objectForKeyedSubscript:*MEMORY[0x277CFD3F0]], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Success" message:@"PRK + MID present" preferredStyle:1];
  }

  else
  {
    v7 = MEMORY[0x277D75110];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRK + MID are missing, error: %@", *(a1 + 32)];
    v6 = [v7 alertControllerWithTitle:@"Failure" message:v8 preferredStyle:1];
  }

  v9 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:2 handler:0];
  [v6 addAction:v9];

  [*(a1 + 40) presentViewController:v6 animated:1 completion:0];
}

- (void)beginIDMSRecoveryWithFailure:(id)failure
{
  v4 = [CDPRecoveryTestController alloc];
  v5 = [(SettingsController *)self _fakeDevicesWithExpectedSecret:@"1234567" isNumber:1 numericLength:&unk_28583A498];
  navigationController = [(SettingsController *)self navigationController];
  v7 = [(CDPRecoveryTestController *)v4 initWithDevices:v5 andNavigationController:navigationController];
  recoveryTestController = self->_recoveryTestController;
  self->_recoveryTestController = v7;

  v9 = self->_recoveryTestController;

  [(CDPRecoveryTestController *)v9 beginIDMSRecoveryFlowWithSecretFailure];
}

- (void)deviceToDeviceAccountUpgradeCardUI:(id)i
{
  v4 = objc_alloc(MEMORY[0x277CFDAE8]);
  mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
  primaryAccountAltDSID = [mEMORY[0x277CFD480] primaryAccountAltDSID];
  v8 = [v4 initWithAltDSID:primaryAccountAltDSID];

  v7 = [objc_alloc(MEMORY[0x277CFDAF0]) initWithContext:v8];
  [v8 setDeviceToDeviceEncryptionUpgradeUIStyle:1];
  [v8 setDeviceToDeviceEncryptionUpgradeType:0];
  [v8 setFeatureName:@"Account Upgrade Flow - Card UI"];
  [v8 setPresentingViewController:self];
  [v7 performDeviceToDeviceEncryptionStateRepairWithCompletion:0];
}

- (void)startBeneficiaryFlow:(id)flow
{
  v10 = objc_alloc_init(MEMORY[0x277CFD4A8]);
  v4 = objc_alloc_init(MEMORY[0x277CCAD78]);
  [v10 setBeneficiaryIdentifier:v4];

  aaf_toBase64DecodedData = [@"ABCD" aaf_toBase64DecodedData];
  [v10 setBeneficiaryWrappedKeyData:aaf_toBase64DecodedData];

  v6 = objc_alloc(MEMORY[0x277CFDAE0]);
  navigationController = [(SettingsController *)self navigationController];
  v8 = [v6 initWithPresentingViewController:navigationController];
  uiController = self->_uiController;
  self->_uiController = v8;

  [(CDPUIController *)self->_uiController setForceInlinePresentation:[(SettingsController *)self _forceInlineUI]];
  [(CDPUIController *)self->_uiController cdpContext:v10 promptForBeneficiaryAccessKeyWithCompletion:&__block_literal_global_351];
}

- (void)_showStatusChangeUIFor:(id)for
{
  v4 = MEMORY[0x277CFDAF8];
  forCopy = for;
  v6 = [[v4 alloc] initWithModel:forCopy];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SettingsController__showStatusChangeUIFor___block_invoke;
  v8[3] = &unk_278E2FBA8;
  v8[4] = self;
  [v6 setUserActionCallback:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SettingsController__showStatusChangeUIFor___block_invoke_2;
  v7[3] = &unk_278E2FBD0;
  v7[4] = self;
  [v6 setCompletionCallback:v7];
  [v6 presentWithViewController:self presentationType:2];
}

void __45__SettingsController__showStatusChangeUIFor___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = @"Approved";
  }

  else
  {
    v3 = @"Declined";
  }

  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:@"User choice callback made" message:v3 preferredStyle:1];
  v4 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:0 handler:0];
  [v5 addAction:v4];

  [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
}

- (void)_showWalrusChangeUI:(unint64_t)i
{
  v4 = [objc_alloc(MEMORY[0x277CFDB00]) initWithTargetStatus:i statusProvider:self->_walrusStateController statusUpdater:self->_walrusStateController];
  [(SettingsController *)self _showStatusChangeUIFor:v4];
}

- (void)_showWebAccessChangeUI:(unint64_t)i
{
  v4 = [objc_alloc(MEMORY[0x277CFDB10]) initWithTargetStatus:i statusProvider:self->_webAccessStatusController statusUpdater:self->_webAccessStatusController walrusStatusProvider:self->_walrusStateController];
  [(SettingsController *)self _showStatusChangeUIFor:v4];
}

- (id)webAccessEnabled
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(DummyWebAccessStateController *)self->_webAccessStatusController webAccessStatus:0]== 1;

  return [v2 numberWithInt:v3];
}

- (void)setWebAccessStatus:(BOOL)status
{
  webAccessStatusController = self->_webAccessStatusController;
  if (status)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [(DummyWebAccessStateController *)webAccessStatusController updateWebAccessStatus:v4 completion:&__block_literal_global_368];
}

- (id)walrusEnabled
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(DummyWalrusStateController *)self->_walrusStateController walrusStatus:0]== 1;

  return [v2 numberWithInt:v3];
}

- (void)setWalrusStatus:(BOOL)status
{
  if (status)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  _contextForPrimaryAccount = [(SettingsController *)self _contextForPrimaryAccount];
  [(DummyWalrusStateController *)self->_walrusStateController updateWalrusStatus:v4 authenticatedContext:_contextForPrimaryAccount completion:&__block_literal_global_370];
}

- (void)showADPLandingPage:(id)page
{
  _contextForPrimaryAccount = [(SettingsController *)self _contextForPrimaryAccount];
  v4 = objc_alloc_init(MEMORY[0x277CFDB08]);
  v5 = [v4 makeSwiftUIViewWithCdpContext:_contextForPrimaryAccount advancedDataProtectionViewModelDelegate:self presentingViewController:self];
  navigationController = [(SettingsController *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

- (void)simulateADPUpsell:(id)upsell
{
  _contextForPrimaryAccount = [(SettingsController *)self _contextForPrimaryAccount];
  v5 = objc_alloc_init(MEMORY[0x277CFDB08]);
  mEMORY[0x277CF02F0] = [MEMORY[0x277CF02F0] sharedBag];
  mEMORY[0x277CF0278] = [MEMORY[0x277CF0278] sharedNetworkObserver];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__SettingsController_simulateADPUpsell___block_invoke;
  v8[3] = &unk_278E2FC18;
  v8[4] = self;
  [v5 makeSwiftUIUpsellViewWithCDPContext:_contextForPrimaryAccount urlBag:mEMORY[0x277CF02F0] networkObserver:mEMORY[0x277CF0278] viewModelDelegate:self completion:v8];
}

- (void)beginEnablementFlow:(id)flow
{
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Began Enablement Flow" message:0 preferredStyle:1];
  v4 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:0 handler:0];
  [v5 addAction:v4];

  [(SettingsController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)presentAccountRecoveryFlow
{
  v4 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Account Recovery Flow" message:0 preferredStyle:1];
  v3 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:0 handler:0];
  [v4 addAction:v3];

  [(SettingsController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)upsellViewModelDidRequestBeginEnablementFlowWithContext:(id)context
{
  v6 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Began Enablement Flow" message:0 preferredStyle:1];
  v4 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:0 handler:0];
  [v6 addAction:v4];

  presentedViewController = [(SettingsController *)self presentedViewController];
  [presentedViewController presentViewController:v6 animated:1 completion:0];
}

- (void)upsellViewModelDidRequestCFUDismissalWithContext:(id)context
{
  v6 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Requested CFU dismissal" message:0 preferredStyle:1];
  v4 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:0 handler:0];
  [v6 addAction:v4];

  presentedViewController = [(SettingsController *)self presentedViewController];
  [presentedViewController presentViewController:v6 animated:1 completion:0];
}

- (void)setUserDefaultEnabled:specifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_245291000, v0, OS_LOG_TYPE_ERROR, "CoreCDP: missing key on specifier: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)enableCDP:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 username];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __32__SettingsController_enableCDP___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_fakeDevicesWithExpectedSecret:isNumber:numericLength:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__SettingsController_promptForLocalSecret___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __43__SettingsController_promptForLocalSecret___block_invoke_cold_2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a1 validatedSecret];
  [a1 secretType];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

@end