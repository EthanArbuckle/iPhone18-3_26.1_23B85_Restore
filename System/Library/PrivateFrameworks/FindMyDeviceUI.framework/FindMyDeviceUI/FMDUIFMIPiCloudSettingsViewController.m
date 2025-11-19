@interface FMDUIFMIPiCloudSettingsViewController
- (BOOL)_doesDeviceSupportOfflineFindingLowPowerMode;
- (BOOL)isDTOEnabledAndFindMyOn;
- (BOOL)isFMIPSwitchEnabled;
- (FMDUIFMIPiCloudSettingsViewController)init;
- (id)_clientInfoHeader;
- (id)_fmipSwitchOnForSpecifier:(id)a3;
- (id)_groupSpecifierForFMIP;
- (id)_groupSpecifierForOfflineFinding;
- (id)_groupSpecifierForSendLastLocation;
- (id)_offlineFindingSwitchOnForSpecifier:(id)a3;
- (id)_sendLastLocationSwitchOnForSpecifier:(id)a3;
- (id)_specifierForFMIP;
- (id)_specifierForOfflineFinding;
- (id)_specifierForSendLastLocation;
- (id)_userAgentHeader;
- (id)specifiers;
- (void)_disableFMIP;
- (void)_enableFMIP;
- (void)_fmipSettingsCacheDidUpdate:(id)a3;
- (void)_loadSearchPartyConfiguration;
- (void)_reloadSpecifiersOnMainQueue;
- (void)_setFMIPSwitchOn:(id)a3 forSpecifier:(id)a4;
- (void)_setOfflineFindingSwitchOn:(id)a3 forSpecifier:(id)a4;
- (void)_setSendLastLocationSwitchOn:(id)a3 forSpecifier:(id)a4;
- (void)_showFMIPPrivacyPage;
- (void)_showOfflineFindingAlertWhenTurningOff;
- (void)addHyperLinkStyleToText:(id)a3 inString:(id)a4 action:(SEL)a5 forGroup:(id)a6;
- (void)hideActivityInProgressUI;
- (void)hideActivityInProgressUIWithDelay:(double)a3;
- (void)presentHSA2UpgradeForOfflineFinding;
- (void)setSearchPartyConfigurationActive:(BOOL)a3;
- (void)showActivityInProgress;
- (void)showActivityInProgressUIWithMessage:(id)a3;
- (void)showHSA2UpgradeAlert;
- (void)showLearnMoreLinkInDTODisclosure:(id)a3;
- (void)viewDidLoad;
@end

@implementation FMDUIFMIPiCloudSettingsViewController

- (FMDUIFMIPiCloudSettingsViewController)init
{
  v6.receiver = self;
  v6.super_class = FMDUIFMIPiCloudSettingsViewController;
  v2 = [(FMDUIFMIPiCloudSettingsViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = [v3 settingsConfiguration];
    [(FMDUIFMIPiCloudSettingsViewController *)v2 setSpSession:v4];
  }

  return v2;
}

- (void)_loadSearchPartyConfiguration
{
  v3 = [(FMDUIFMIPiCloudSettingsViewController *)self spSession];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__FMDUIFMIPiCloudSettingsViewController__loadSearchPartyConfiguration__block_invoke;
  v4[3] = &unk_278FFF0F8;
  v4[4] = self;
  [v3 beginRefreshingServiceStateWithBlock:v4];
}

void __70__FMDUIFMIPiCloudSettingsViewController__loadSearchPartyConfiguration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__FMDUIFMIPiCloudSettingsViewController__loadSearchPartyConfiguration__block_invoke_2;
  block[3] = &unk_278FFF0D0;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __70__FMDUIFMIPiCloudSettingsViewController__loadSearchPartyConfiguration__block_invoke_2(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_24AE92000, v2, OS_LOG_TYPE_DEFAULT, "SP Session state changed: %@, disabled reason: %@", &v8, 0x16u);
  }

  [a1[6] setOfflineFindingEnabled:{objc_msgSend(a1[4], "isEqualToString:", *MEMORY[0x277D49880])}];
  v5 = [a1[5] allObjects];
  [a1[6] setOfflineFindingDisabledDueToNotHSA2:{objc_msgSend(v5, "containsObject:", *MEMORY[0x277D49850])}];

  result = [a1[6] reloadSpecifiers];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setSearchPartyConfigurationActive:(BOOL)a3
{
  v4 = MEMORY[0x277D49880];
  if (!a3)
  {
    v4 = MEMORY[0x277D49878];
  }

  v5 = *v4;
  objc_initWeak(&location, self);
  v6 = [(FMDUIFMIPiCloudSettingsViewController *)self spSession];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__FMDUIFMIPiCloudSettingsViewController_setSearchPartyConfigurationActive___block_invoke;
  v8[3] = &unk_278FFF120;
  v7 = v5;
  v9 = v7;
  objc_copyWeak(&v10, &location);
  [v6 setServiceState:v7 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __75__FMDUIFMIPiCloudSettingsViewController_setSearchPartyConfigurationActive___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_24AE92000, v4, OS_LOG_TYPE_DEFAULT, "Set SP Session state: %@, error: %@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _reloadSpecifiersOnMainQueue];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = FMDUIFMIPiCloudSettingsViewController;
  [(FMDUIFMIPiCloudSettingsViewController *)&v6 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"FMD_ICLOUD_SETTINGS_TITLE"];
  v5 = [v3 localizedStringForKey:v4 value:&stru_285E39358 table:0];
  [(FMDUIFMIPiCloudSettingsViewController *)self setTitle:v5];

  [(FMDUIFMIPiCloudSettingsViewController *)self _loadSearchPartyConfiguration];
}

- (BOOL)isDTOEnabledAndFindMyOn
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CD47B0] sharedInstance];
  v3 = [v2 isFeatureEnabled];

  v4 = @"NO";
  if (v3)
  {
    v5 = +[FMDUIFMIPSettingsCache sharedInstance];
    v6 = [v5 fmipEnabled];

    if (v6)
    {
      v4 = @"YES";
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v4;
  v8 = LogCategory_Unspecified();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_24AE92000, v8, OS_LOG_TYPE_DEFAULT, "Should show DTO Disclaimer - %{public}@", &v11, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

- (BOOL)isFMIPSwitchEnabled
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = +[FMDUIFMIPSettingsCache sharedInstance];
  if ([v3 fmipStateAvailable])
  {
    v4 = +[FMDUIFMIPSettingsCache sharedInstance];
    v5 = [v4 fmipStateChangeInProgress];

    v6 = @"NO";
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v8 = [(FMDUIFMIPiCloudSettingsViewController *)self isDTOEnabledAndFindMyOn];
      v7 = !v8;
      if (!v8)
      {
        v6 = @"YES";
      }
    }
  }

  else
  {

    v7 = 0;
    v6 = @"NO";
  }

  v9 = v6;
  v10 = LogCategory_Unspecified();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_24AE92000, v10, OS_LOG_TYPE_DEFAULT, "Should FMIP Button be enabled %@", &v13, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(FMDUIFMIPiCloudSettingsViewController *)self _groupSpecifierForFMIP];
  v5 = [(FMDUIFMIPiCloudSettingsViewController *)self _specifierForFMIP];
  [(FMDUIFMIPiCloudSettingsViewController *)self setFmipSpecifier:v5];

  [v3 addObject:v4];
  v6 = [(FMDUIFMIPiCloudSettingsViewController *)self fmipSpecifier];
  [v3 addObject:v6];

  if (-[FMDUIFMIPiCloudSettingsViewController firstTimeSetup](self, "firstTimeSetup") || (-[FMDUIFMIPiCloudSettingsViewController _fmipSwitchOnForSpecifier:](self, "_fmipSwitchOnForSpecifier:", 0), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 BOOLValue], v7, !v8))
  {
    [(FMDUIFMIPiCloudSettingsViewController *)self setSendLastLocationSpecifier:0];
  }

  else
  {
    v9 = [(FMDUIFMIPiCloudSettingsViewController *)self _groupSpecifierForOfflineFinding];
    [v3 addObject:v9];

    v10 = [(FMDUIFMIPiCloudSettingsViewController *)self _specifierForOfflineFinding];
    [v3 addObject:v10];

    v11 = [(FMDUIFMIPiCloudSettingsViewController *)self _specifierForSendLastLocation];
    [(FMDUIFMIPiCloudSettingsViewController *)self setSendLastLocationSpecifier:v11];

    v12 = [(FMDUIFMIPiCloudSettingsViewController *)self _groupSpecifierForSendLastLocation];
    [v3 addObject:v12];

    v13 = [(FMDUIFMIPiCloudSettingsViewController *)self sendLastLocationSpecifier];
    [v3 addObject:v13];
  }

  [(FMDUIFMIPiCloudSettingsViewController *)self setSpecifiers:v3];

  return v3;
}

- (id)_specifierForFMIP
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"FMD_ICLOUD_SETTINGS_SWITCH_TITLE"];
  v5 = [v3 localizedStringForKey:v4 value:&stru_285E39358 table:0];

  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:self set:sel__setFMIPSwitchOn_forSpecifier_ get:sel__fmipSwitchOnForSpecifier_ detail:0 cell:6 edit:0];
  v7 = [(FMDUIFMIPiCloudSettingsViewController *)self isFMIPSwitchEnabled];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  [v6 setProperty:v8 forKey:*MEMORY[0x277D3FF38]];

  [v6 setProperty:@"FIND_MY_SPECIFIER_ID" forKey:*MEMORY[0x277D3FFB8]];

  return v6;
}

- (id)_groupSpecifierForFMIP
{
  v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"FMD_GROUP_SPECIFIER"];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FMD_ICLOUD_SETTINGS_FMIP_GROUP_FOOTER" value:&stru_285E39358 table:0];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FMD_TOP_DTO_LEARN_MORE_LINK_TITLE" value:&stru_285E39358 table:0];

  if (![MEMORY[0x277CBFC10] locationServicesEnabled])
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"FMD_ICLOUD_SETTINGS_LOCATION_SERVICES_NEEDED_FOOTER"];
    v10 = [v9 localizedStringForKey:v11 value:&stru_285E39358 table:0];

    goto LABEL_5;
  }

  if ([(FMDUIFMIPiCloudSettingsViewController *)self isDTOEnabledAndFindMyOn])
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"FMD_ICLOUD_SETTINGS_FMIP_GROUP_FOOTER_TOP_DTO" value:&stru_285E39358 table:0];

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@%@%@", v9, v7, @"\n\n", v5];
LABEL_5:

    goto LABEL_7;
  }

  v10 = v5;
LABEL_7:
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"FMD_ABOUT_FMIP_PRIVACY_LINK_TITLE" value:&stru_285E39358 table:0];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v10, v13];
  if ([(FMDUIFMIPiCloudSettingsViewController *)self isDTOEnabledAndFindMyOn])
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v3 setProperty:v16 forKey:*MEMORY[0x277D3FF48]];

    [v3 setProperty:v14 forKey:*MEMORY[0x277D3FF88]];
    [(FMDUIFMIPiCloudSettingsViewController *)self addHyperLinkStyleToText:v7 inString:v14 action:sel_showLearnMoreLinkInDTODisclosure_ forGroup:v3];
  }

  else
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v3 setProperty:v18 forKey:*MEMORY[0x277D3FF48]];
  }

  [v3 setProperty:v14 forKey:*MEMORY[0x277D3FF70]];
  v23.location = [v14 rangeOfString:v13];
  v19 = NSStringFromRange(v23);
  [v3 setProperty:v19 forKey:*MEMORY[0x277D3FF58]];

  v20 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v3 setProperty:v20 forKey:*MEMORY[0x277D3FF68]];

  [v3 setProperty:@"_showFMIPPrivacyPage" forKey:*MEMORY[0x277D3FF50]];

  return v3;
}

- (void)addHyperLinkStyleToText:(id)a3 inString:(id)a4 action:(SEL)a5 forGroup:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v12 propertyForKey:*MEMORY[0x277D3FF48]];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [v13 isEqualToString:v15];

  if ((v16 & 1) == 0)
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = LogCategory_Unspecified();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FMDUIFMIPiCloudSettingsViewController addHyperLinkStyleToText:v18 inString:v19 action:? forGroup:?];
    }
  }

  v20 = [v11 rangeOfString:v10];
  if (v21)
  {
    [v12 addFooterHyperlinkWithRange:v20 target:v21 action:{self, a5}];
  }
}

- (void)showLearnMoreLinkInDTODisclosure:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/kb/HT212510"];
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v10 = 0;
  v5 = [v4 openSensitiveURL:v3 withOptions:MEMORY[0x277CBEC10] error:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = LogCategory_Unspecified();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = @"https://support.apple.com/kb/HT212510";
      _os_log_impl(&dword_24AE92000, v8, OS_LOG_TYPE_ERROR, "Could not open %@ through FindMy", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_specifierForOfflineFinding
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FMD_ICLOUD_SETTINGS_OFFLINE_FINDING_SWITCH_TITLE" value:&stru_285E39358 table:0];

  v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v4 target:self set:sel__setOfflineFindingSwitchOn_forSpecifier_ get:sel__offlineFindingSwitchOnForSpecifier_ detail:0 cell:6 edit:0];
  [v5 setProperty:@"OFFLINE_FINDING_SPECIFIER_ID" forKey:*MEMORY[0x277D3FFB8]];

  return v5;
}

- (id)_groupSpecifierForOfflineFinding
{
  v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"OFFLINE_GROUP_SPECIFIER"];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"FMD_ICLOUD_SETTINGS_OFFLINE_FINDING_FOOTER"];
  v6 = [v4 localizedStringForKey:v5 value:&stru_285E39358 table:0];

  if ([(FMDUIFMIPiCloudSettingsViewController *)self _doesDeviceSupportOfflineFindingLowPowerMode])
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"FMD_ICLOUD_SETTINGS_OFFLINE_FINDING_FOOTER_LPEM"];
    v9 = [v7 localizedStringForKey:v8 value:&stru_285E39358 table:0];

    v6 = v9;
  }

  [v3 setProperty:v6 forKey:*MEMORY[0x277D3FF88]];
  v10 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v3 setProperty:v10 forKey:*MEMORY[0x277D3FF68]];

  [v3 setProperty:@"_showOfflineFindingLearnMorePage" forKey:*MEMORY[0x277D3FF50]];

  return v3;
}

- (BOOL)_doesDeviceSupportOfflineFindingLowPowerMode
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MGCopyAnswerWithError();
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v2;
    _os_log_impl(&dword_24AE92000, v3, OS_LOG_TYPE_DEFAULT, "deviceSupportsLPEM supportedTypes %@", &v10, 0xCu);
  }

  v4 = [v2 containsObject:@"find-my"];
  v5 = LogCategory_Unspecified();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      LOWORD(v10) = 0;
      v7 = "deviceSupportsLPEM YES";
LABEL_8:
      _os_log_impl(&dword_24AE92000, v5, OS_LOG_TYPE_DEFAULT, v7, &v10, 2u);
    }
  }

  else if (v6)
  {
    LOWORD(v10) = 0;
    v7 = " deviceSupportsLPEM NO";
    goto LABEL_8;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)showHSA2UpgradeAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FMD_OFFLINE_FINDING_ACCOUNT_UPGRADE_ALERT_TITLE" value:&stru_285E39358 table:0];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FMD_OFFLINE_FINDING_ACCOUNT_UPGRADE_ALERT_MESSAGE" value:&stru_285E39358 table:0];
  v8 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"FMD_OFFLINE_FINDING_ACCOUNT_UPGRADE_NOT_NOT_BUTTON" value:&stru_285E39358 table:0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__FMDUIFMIPiCloudSettingsViewController_showHSA2UpgradeAlert__block_invoke;
  v18[3] = &unk_278FFF148;
  v18[4] = self;
  v12 = [v9 actionWithTitle:v11 style:1 handler:v18];

  v13 = MEMORY[0x277D750F8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"FMD_OFFLINE_FINDING_ACCOUNT_UPGRADE_CONTINUE_BUTTON" value:&stru_285E39358 table:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__FMDUIFMIPiCloudSettingsViewController_showHSA2UpgradeAlert__block_invoke_2;
  v17[3] = &unk_278FFF148;
  v17[4] = self;
  v16 = [v13 actionWithTitle:v15 style:0 handler:v17];

  [v8 addAction:v16];
  [v8 addAction:v12];
  [v8 setPreferredAction:v16];
  [(FMDUIFMIPiCloudSettingsViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)presentHSA2UpgradeForOfflineFinding
{
  v3 = objc_alloc_init(MEMORY[0x277CF0170]);
  v4 = [MEMORY[0x277CFD480] sharedInstance];
  v5 = [v4 primaryAccountAltDSID];
  [v3 setAltDSID:v5];

  v6 = [objc_alloc(MEMORY[0x277CECAF8]) initWithNibName:0 bundle:0];
  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
  v8 = [objc_alloc(MEMORY[0x277CFDAF0]) initWithPresentingViewController:v7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__FMDUIFMIPiCloudSettingsViewController_presentHSA2UpgradeForOfflineFinding__block_invoke;
  v11[3] = &unk_278FFF0D0;
  v12 = v8;
  v13 = v3;
  v14 = self;
  v9 = v3;
  v10 = v8;
  [(FMDUIFMIPiCloudSettingsViewController *)self presentViewController:v7 animated:1 completion:v11];
}

uint64_t __76__FMDUIFMIPiCloudSettingsViewController_presentHSA2UpgradeForOfflineFinding__block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__FMDUIFMIPiCloudSettingsViewController_presentHSA2UpgradeForOfflineFinding__block_invoke_2;
  v4[3] = &unk_278FFF198;
  v4[4] = a1[6];
  return [v2 performDeviceToDeviceEncryptionStateRepairForContext:v1 withCompletion:v4];
}

void __76__FMDUIFMIPiCloudSettingsViewController_presentHSA2UpgradeForOfflineFinding__block_invoke_2(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __76__FMDUIFMIPiCloudSettingsViewController_presentHSA2UpgradeForOfflineFinding__block_invoke_3;
  v2[3] = &unk_278FFF170;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __76__FMDUIFMIPiCloudSettingsViewController_presentHSA2UpgradeForOfflineFinding__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) setSearchPartyConfigurationActive:1];
  }

  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

- (id)_specifierForSendLastLocation
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FMD_ICLOUD_SETTINGS_SEND_LAST_LOCATION_SWITCH_TITLE" value:&stru_285E39358 table:0];

  v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v4 target:self set:sel__setSendLastLocationSwitchOn_forSpecifier_ get:sel__sendLastLocationSwitchOnForSpecifier_ detail:0 cell:6 edit:0];
  [v5 setProperty:@"SLL_SPECIFIER_ID" forKey:*MEMORY[0x277D3FFB8]];

  return v5;
}

- (id)_groupSpecifierForSendLastLocation
{
  v2 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SLL_GROUP_SPECIFIER"];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"FMD_ICLOUD_SETTINGS_SEND_LAST_LOCATION_FOOTER"];
  v5 = [v3 localizedStringForKey:v4 value:&stru_285E39358 table:0];

  [v2 setProperty:v5 forKey:*MEMORY[0x277D3FF88]];

  return v2;
}

- (void)_showFMIPPrivacyPage
{
  v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifer:*MEMORY[0x277D376C0]];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)_setFMIPSwitchOn:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  if ([(FMDUIFMIPiCloudSettingsViewController *)self firstTimeSetup])
  {
    v6 = [MEMORY[0x277CECA38] sharedInstance];
    [v6 setShouldEnable:{objc_msgSend(v5, "BOOLValue")}];

    [(FMDUIFMIPiCloudSettingsViewController *)self _reloadSpecifiersOnMainQueue];
    v7 = [(FMDUIFMIPiCloudSettingsViewController *)self parentController];
    v8 = [(FMDUIFMIPiCloudSettingsViewController *)self specifier];
    v9 = [v8 identifier];
    [v7 reloadSpecifierID:v9 animated:0];
  }

  else
  {
    v10 = [v5 BOOLValue];
    v11 = +[FMDUIFMIPSettingsCache sharedInstance];
    v12 = [v11 fmipEnabled];

    if (v10 != v12 && ![(FMDUIFMIPiCloudSettingsViewController *)self togglingFMIPSwitch])
    {
      [(FMDUIFMIPiCloudSettingsViewController *)self setTogglingFMIPSwitch:1];
      [*MEMORY[0x277D76620] beginIgnoringInteractionEvents];
      objc_initWeak(&location, self);
      v13 = dispatch_time(0, 100000000);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __71__FMDUIFMIPiCloudSettingsViewController__setFMIPSwitchOn_forSpecifier___block_invoke;
      v14[3] = &unk_278FFF1C0;
      objc_copyWeak(&v17, &location);
      v15 = v5;
      v16 = self;
      dispatch_after(v13, MEMORY[0x277D85CD0], v14);

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

void __71__FMDUIFMIPiCloudSettingsViewController__setFMIPSwitchOn_forSpecifier___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [*MEMORY[0x277D76620] endIgnoringInteractionEvents];
  if ([a1[4] BOOLValue])
  {
    [WeakRetained _enableFMIP];
  }

  else
  {
    [WeakRetained _disableFMIP];
  }

  [a1[5] setTogglingFMIPSwitch:0];
}

- (id)_fmipSwitchOnForSpecifier:(id)a3
{
  if ([(FMDUIFMIPiCloudSettingsViewController *)self firstTimeSetup])
  {
    v3 = [MEMORY[0x277CECA38] sharedInstance];
    v4 = [v3 shouldEnable];
  }

  else
  {
    v3 = +[FMDUIFMIPSettingsCache sharedInstance];
    if ([v3 fmipStateAvailable])
    {
      v5 = +[FMDUIFMIPSettingsCache sharedInstance];
      v4 = [v5 fmipEnabled];
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithBool:v4];
}

- (id)_offlineFindingSwitchOnForSpecifier:(id)a3
{
  if ([(FMDUIFMIPiCloudSettingsViewController *)self firstTimeSetup])
  {
    v4 = MEMORY[0x277CBEC28];
  }

  else
  {
    if ([(FMDUIFMIPiCloudSettingsViewController *)self offlineFindingEnabled])
    {
      v5 = [(FMDUIFMIPiCloudSettingsViewController *)self offlineFindingDisabledDueToNotHSA2]^ 1;
    }

    else
    {
      v5 = 0;
    }

    v4 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  }

  return v4;
}

- (void)_setOfflineFindingSwitchOn:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  if (![(FMDUIFMIPiCloudSettingsViewController *)self firstTimeSetup])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __81__FMDUIFMIPiCloudSettingsViewController__setOfflineFindingSwitchOn_forSpecifier___block_invoke;
    v6[3] = &unk_278FFF1E8;
    v7 = v5;
    v8 = self;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

uint64_t __81__FMDUIFMIPiCloudSettingsViewController__setOfflineFindingSwitchOn_forSpecifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) BOOLValue];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v3 offlineFindingDisabledDueToNotHSA2];
    v5 = *(a1 + 40);
    if (v4)
    {
      [v5 showHSA2UpgradeAlert];
    }

    else
    {
      [v5 setSearchPartyConfigurationActive:1];
    }

    v7 = *(a1 + 40);

    return [v7 _reloadSpecifiersOnMainQueue];
  }

  else
  {

    return [v3 _showOfflineFindingAlertWhenTurningOff];
  }
}

- (void)_showOfflineFindingAlertWhenTurningOff
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FMD_DISABLE_OFFLINE_FINDING_ALERT_TITLE" value:&stru_285E39358 table:0];

  v5 = [(FMDUIFMIPiCloudSettingsViewController *)self FMWLANEnabled];
  v6 = [(FMDUIFMIPiCloudSettingsViewController *)self _doesDeviceSupportOfflineFindingLowPowerMode];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  v9 = @"FMD_DISABLE_OFFLINE_FINDING_ALERT_MESSAGE_WLAN";
  if (v6)
  {
    v9 = @"FMD_DISABLE_OFFLINE_FINDING_ALERT_MESSAGE_WLAN_LPEM";
  }

  v10 = @"FMD_DISABLE_OFFLINE_FINDING_ALERT_MESSAGE_WIFI_LPEM";
  if (!v6)
  {
    v10 = @"FMD_DISABLE_OFFLINE_FINDING_ALERT_MESSAGE_WIFI";
  }

  if (v5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v7 localizedStringForKey:v11 value:&stru_285E39358 table:0];

  v13 = MEMORY[0x277D750F8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"FMD_DISABLE_OFFLINE_FINDING_ALERT_CANCEL_BUTTON" value:&stru_285E39358 table:0];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __79__FMDUIFMIPiCloudSettingsViewController__showOfflineFindingAlertWhenTurningOff__block_invoke;
  v23[3] = &unk_278FFF148;
  v23[4] = self;
  v16 = [v13 actionWithTitle:v15 style:1 handler:v23];

  v17 = MEMORY[0x277D750F8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"FMD_DISABLE_OFFLINE_FINDING_ALERT_DISABLE_BUTTON" value:&stru_285E39358 table:0];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__FMDUIFMIPiCloudSettingsViewController__showOfflineFindingAlertWhenTurningOff__block_invoke_2;
  v22[3] = &unk_278FFF148;
  v22[4] = self;
  v20 = [v17 actionWithTitle:v19 style:2 handler:v22];

  v21 = [MEMORY[0x277D75110] alertControllerWithTitle:v4 message:v12 preferredStyle:1];
  [v21 addAction:v16];
  [v21 addAction:v20];
  [v21 setPreferredAction:v16];
  [(FMDUIFMIPiCloudSettingsViewController *)self presentViewController:v21 animated:1 completion:0];
}

uint64_t __79__FMDUIFMIPiCloudSettingsViewController__showOfflineFindingAlertWhenTurningOff__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setOfflineFindingEnabled:0];
  v2 = *(a1 + 32);

  return [v2 setSearchPartyConfigurationActive:0];
}

- (void)_setSendLastLocationSwitchOn:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  if (![(FMDUIFMIPiCloudSettingsViewController *)self firstTimeSetup])
  {
    objc_initWeak(&location, self);
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__FMDUIFMIPiCloudSettingsViewController__setSendLastLocationSwitchOn_forSpecifier___block_invoke;
    block[3] = &unk_278FFF238;
    v8 = v5;
    objc_copyWeak(&v9, &location);
    dispatch_async(v6, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __83__FMDUIFMIPiCloudSettingsViewController__setSendLastLocationSwitchOn_forSpecifier___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D08F78] sharedInstance];
  v3 = [*(a1 + 32) BOOLValue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__FMDUIFMIPiCloudSettingsViewController__setSendLastLocationSwitchOn_forSpecifier___block_invoke_2;
  v4[3] = &unk_278FFF210;
  objc_copyWeak(&v5, (a1 + 40));
  [v2 setLowBatteryLocateEnabled:v3 withCompletion:v4];

  objc_destroyWeak(&v5);
}

void __83__FMDUIFMIPiCloudSettingsViewController__setSendLastLocationSwitchOn_forSpecifier___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    v4 = WeakRetained;
    [WeakRetained _reloadSpecifiersOnMainQueue];
    WeakRetained = v4;
  }
}

- (id)_sendLastLocationSwitchOnForSpecifier:(id)a3
{
  if ([(FMDUIFMIPiCloudSettingsViewController *)self firstTimeSetup])
  {
    v3 = MEMORY[0x277CBEC28];
  }

  else
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = +[FMDUIFMIPSettingsCache sharedInstance];
    v3 = [v4 numberWithBool:{objc_msgSend(v5, "lowBatteryLocateEnabled")}];
  }

  return v3;
}

- (void)_reloadSpecifiersOnMainQueue
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__FMDUIFMIPiCloudSettingsViewController__reloadSpecifiersOnMainQueue__block_invoke;
  block[3] = &unk_278FFF260;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_enableFMIP
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CECA28];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__FMDUIFMIPiCloudSettingsViewController__enableFMIP__block_invoke;
  v4[3] = &unk_278FFF2D0;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [v3 showEnableAlertWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __52__FMDUIFMIPiCloudSettingsViewController__enableFMIP__block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__FMDUIFMIPiCloudSettingsViewController__enableFMIP__block_invoke_2;
  block[3] = &unk_278FFF2A8;
  objc_copyWeak(&v5, (a1 + 40));
  v6 = a2;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v5);
}

void __52__FMDUIFMIPiCloudSettingsViewController__enableFMIP__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v23 = WeakRetained;
  if (*(a1 + 48) == 1)
  {
    v3 = [WeakRetained fmipSpecifier];
    [v23 reloadSpecifier:v3];
  }

  else
  {
    v4 = [MEMORY[0x277CECA38] sharedInstance];
    [v4 enableInContext:2];

    if ([MEMORY[0x277CBFC10] locationServicesEnabled])
    {
      goto LABEL_6;
    }

    v5 = MEMORY[0x277D75110];
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"FMD_ICLOUD_SETTINGS_LOCATION_SERVICES_OFF_ALERT_TITLE" value:&stru_285E39358 table:0];
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"FMD_ICLOUD_SETTINGS_LOCATION_SERVICES_OFF_ALERT_TEXT"];
    v12 = [v10 localizedStringForKey:v11 value:&stru_285E39358 table:0];
    v3 = [v5 alertControllerWithTitle:v8 message:v12 preferredStyle:1];

    v13 = MEMORY[0x277D750F8];
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"FMD_ICLOUD_SETTINGS_LOCATION_SERVICES_OFF_ALERT_CANCEL_BUTTON" value:&stru_285E39358 table:0];
    v17 = [v13 actionWithTitle:v16 style:0 handler:0];

    v18 = MEMORY[0x277D750F8];
    v19 = *(a1 + 32);
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"FMD_ICLOUD_SETTINGS_LOCATION_SERVICES_OFF_ALERT_SETTINGS_BUTTON" value:&stru_285E39358 table:0];
    v22 = [v18 actionWithTitle:v21 style:0 handler:&__block_literal_global];

    [v3 addAction:v22];
    [v3 addAction:v17];
    [v3 setPreferredAction:v17];
    [*(a1 + 32) presentViewController:v3 animated:1 completion:0];
  }

LABEL_6:
}

void __52__FMDUIFMIPiCloudSettingsViewController__enableFMIP__block_invoke_3()
{
  v1 = [MEMORY[0x277D3FA60] preferencesURL];
  v0 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

- (void)_disableFMIP
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CECA28];
  v4 = [(FMDUIFMIPiCloudSettingsViewController *)self account];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__FMDUIFMIPiCloudSettingsViewController__disableFMIP__block_invoke;
  v5[3] = &unk_278FFF320;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [v3 showDisableAlertForAccount:v4 presentingViewController:self withCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __53__FMDUIFMIPiCloudSettingsViewController__disableFMIP__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__FMDUIFMIPiCloudSettingsViewController__disableFMIP__block_invoke_2;
  v7[3] = &unk_278FFF2F8;
  objc_copyWeak(&v9, (a1 + 40));
  v10 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);

  objc_destroyWeak(&v9);
}

void __53__FMDUIFMIPiCloudSettingsViewController__disableFMIP__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (*(a1 + 56) == 1)
  {
    v3 = [WeakRetained fmipSpecifier];
    [v4 reloadSpecifier:v3];
  }

  else
  {
    [*(a1 + 32) showActivityInProgress];
    v3 = [MEMORY[0x277CECA38] sharedInstance];
    [v3 disableInContext:1 withWipeToken:*(a1 + 40)];
  }
}

- (void)_fmipSettingsCacheDidUpdate:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__FMDUIFMIPiCloudSettingsViewController__fmipSettingsCacheDidUpdate___block_invoke;
  block[3] = &unk_278FFF260;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__FMDUIFMIPiCloudSettingsViewController__fmipSettingsCacheDidUpdate___block_invoke(uint64_t a1)
{
  v2 = +[FMDUIFMIPSettingsCache sharedInstance];
  v3 = [v2 fmipStateChangeInProgress];

  if (v3)
  {
    v16 = +[FMDUIFMIPSettingsCache sharedInstance];
    if ([v16 fmipState] == 2)
    {
      v4 = [*(a1 + 32) isShowingActivityInProgressUI];

      if ((v4 & 1) == 0)
      {
        v15 = *(a1 + 32);

        [v15 showActivityInProgress];
      }
    }

    else
    {
    }
  }

  else
  {
    if ([*(a1 + 32) isShowingActivityInProgressUI])
    {
      [*(a1 + 32) hideActivityInProgressUIWithDelay:0.5];
    }

    v5 = +[FMDUIFMIPSettingsCache sharedInstance];
    v6 = [v5 fmipStateAvailable];

    v7 = [*(a1 + 32) fmipSpecifier];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v9 = *MEMORY[0x277D3FF38];
    [v7 setProperty:v8 forKey:*MEMORY[0x277D3FF38]];

    v10 = +[FMDUIFMIPSettingsCache sharedInstance];
    LODWORD(v8) = [v10 lowBatteryLocateStateAvailable];

    v11 = [*(a1 + 32) sendLastLocationSpecifier];
    v12 = v11;
    if (v8)
    {
      v13 = MEMORY[0x277CBEC38];
    }

    else
    {
      v13 = MEMORY[0x277CBEC28];
    }

    [v11 setProperty:v13 forKey:v9];

    v14 = *(a1 + 32);

    [v14 reloadSpecifiers];
  }
}

- (id)_userAgentHeader
{
  v2 = objc_alloc_init(MEMORY[0x277CEC7B8]);
  v3 = [v2 productVersion];
  v4 = [v2 buildVersion];
  v5 = [v2 deviceClass];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"iOS %@ %@ %@ Find My iPhone Settings", v3, v4, v5];

  return v6;
}

- (id)_clientInfoHeader
{
  v2 = objc_alloc_init(MEMORY[0x277CEC7B8]);
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 productType];
  v23 = [v3 stringWithFormat:@"%@", v4];

  v5 = MEMORY[0x277CCACA8];
  v6 = [v2 osName];
  v7 = [v2 osVersion];
  v8 = [v2 buildVersion];
  v9 = [v5 stringWithFormat:@"%@%@;%@", v6, v7, v8];;

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 infoDictionary];
  v12 = *MEMORY[0x277CBED58];
  v13 = [v11 objectForKey:*MEMORY[0x277CBED58]];

  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 infoDictionary];
  v16 = [v15 objectForKey:v12];

  v17 = MEMORY[0x277CCACA8];
  v18 = [v10 bundleIdentifier];
  v19 = [v14 bundleIdentifier];
  v20 = [v17 stringWithFormat:@"%@/%@ (%@/%@)", v18, v13, v19, v16];

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@> <%@> <%@>", v23, v9, v20];

  return v21;
}

- (void)showActivityInProgress
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"FMD_TURN_OFF_FMIP_PROGRESS_MSG"];
  v4 = [v5 localizedStringForKey:v3 value:&stru_285E39358 table:0];
  [(FMDUIFMIPiCloudSettingsViewController *)self showActivityInProgressUIWithMessage:v4];
}

- (void)showActivityInProgressUIWithMessage:(id)a3
{
  v11 = a3;
  self->_activityInProgress = 1;
  [*MEMORY[0x277D76620] beginIgnoringInteractionEvents];
  v4 = objc_alloc_init(MEMORY[0x277D758E8]);
  hud = self->_hud;
  self->_hud = v4;

  [(UIProgressHUD *)self->_hud setFontSize:16];
  [(UIProgressHUD *)self->_hud setText:v11];
  v6 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]);
  v7 = [v6 superview];
  if (v7)
  {
    v8 = v7;
    v9 = v6;
    do
    {
      v10 = v9;

      v9 = v8;
      v8 = [v9 superview];

      v6 = v10;
    }

    while (v8);
  }

  else
  {
    v9 = v6;
    v10 = v6;
  }

  [(UIProgressHUD *)self->_hud showInView:v10];
}

- (void)hideActivityInProgressUI
{
  [*MEMORY[0x277D76620] endIgnoringInteractionEvents];
  [(UIProgressHUD *)self->_hud removeFromSuperview];
  hud = self->_hud;
  self->_hud = 0;

  self->_activityInProgress = 0;
}

- (void)hideActivityInProgressUIWithDelay:(double)a3
{
  if (a3 <= 0.0)
  {

    [(FMDUIFMIPiCloudSettingsViewController *)self hideActivityInProgressUI];
  }

  else
  {
    [(UIProgressHUD *)self->_hud done];

    [(FMDUIFMIPiCloudSettingsViewController *)self performSelector:sel_hideActivityInProgressUI withObject:self afterDelay:a3];
  }
}

- (void)addHyperLinkStyleToText:(uint64_t)a1 inString:(NSObject *)a2 action:forGroup:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24AE92000, a2, OS_LOG_TYPE_ERROR, "Group must use %@ as footer cell class", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end