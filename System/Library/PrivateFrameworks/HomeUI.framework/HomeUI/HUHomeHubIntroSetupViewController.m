@interface HUHomeHubIntroSetupViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeHubIntroSetupViewController)initWithHomes:(id)a3;
- (id)_commitOrContinueButtonTitle;
- (void)_cancelFlow;
- (void)_commitOrContinue;
- (void)_openLearnMoreLink:(id)a3;
- (void)_presentUpgradeFailedAlert:(id)a3 message:(id)a4 retryTitle:(id)a5 retryBlock:(id)a6 cancelBlock:(id)a7;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUHomeHubIntroSetupViewController

- (HUHomeHubIntroSetupViewController)initWithHomes:(id)a3
{
  v4 = [a3 count];
  v5 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationUpdateHomeTitle", @"HUSoftwareUpdateMigrationUpdateHomeTitle", 1);
  v6 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationUpdateHomeDescription", @"HUSoftwareUpdateMigrationUpdateHomeDescription", 1);
  v7 = MEMORY[0x277D755D0];
  v8 = [MEMORY[0x277D75348] hf_keyColor];
  v9 = [v7 configurationWithHierarchicalColor:v8];

  v10 = [MEMORY[0x277D755D0] configurationWithPointSize:100.0];
  v11 = [v10 configurationByApplyingConfiguration:v9];
  v12 = [MEMORY[0x277D755B8] systemImageNamed:@"homekit"];
  v13 = [v12 imageWithConfiguration:v11];

  v19.receiver = self;
  v19.super_class = HUHomeHubIntroSetupViewController;
  v14 = [(HUImageOBWelcomeController *)&v19 initWithTitle:v5 detailText:v6 icon:0 contentImage:v13];
  v15 = v14;
  if (v14)
  {
    v14->_moreThanOneHome = v4 > 1;
    v16 = [MEMORY[0x277D146E8] sharedDispatcher];
    homeKitDispatcher = v15->_homeKitDispatcher;
    v15->_homeKitDispatcher = v16;
  }

  return v15;
}

- (void)viewDidLoad
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubIntroSetupViewController:viewDidLoad]", buf, 2u);
  }

  v35.receiver = self;
  v35.super_class = HUHomeHubIntroSetupViewController;
  [(HUImageOBWelcomeController *)&v35 viewDidLoad];
  v4 = [(HUHomeHubIntroSetupViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_282493198];

  v6 = [MEMORY[0x277D37638] accessoryButton];
  [(HUHomeHubIntroSetupViewController *)self setLearnMoreButton:v6];

  v7 = [(HUHomeHubIntroSetupViewController *)self learnMoreButton];
  v8 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationUpdateLearnMoreLink", @"HUSoftwareUpdateMigrationUpdateLearnMoreLink", 1);
  [v7 setTitle:v8 forState:0];

  v9 = [(HUHomeHubIntroSetupViewController *)self learnMoreButton];
  [v9 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.IntroSetUp.LearnMoreLink"];

  v10 = [(HUHomeHubIntroSetupViewController *)self learnMoreButton];
  [v10 addTarget:self action:sel__openLearnMoreLink_ forControlEvents:64];

  v11 = [(HUHomeHubIntroSetupViewController *)self headerView];
  v12 = [(HUHomeHubIntroSetupViewController *)self learnMoreButton];
  [v11 addAccessoryButton:v12];

  v13 = [MEMORY[0x277D37618] boldButton];
  [(HUHomeHubIntroSetupViewController *)self setCommitButton:v13];

  v14 = [(HUHomeHubIntroSetupViewController *)self commitButton];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(HUHomeHubIntroSetupViewController *)self commitButton];
  v16 = [(HUHomeHubIntroSetupViewController *)self _commitOrContinueButtonTitle];
  [v15 setTitle:v16 forState:0];

  v17 = [(HUHomeHubIntroSetupViewController *)self commitButton];
  [v17 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.IntroSetUp.CommitOrContinueButton"];

  v18 = [(HUHomeHubIntroSetupViewController *)self commitButton];
  [v18 addTarget:self action:sel__commitOrContinue forControlEvents:64];

  v19 = [(HUHomeHubIntroSetupViewController *)self buttonTray];
  v20 = [(HUHomeHubIntroSetupViewController *)self commitButton];
  [v19 addButton:v20];

  v21 = [MEMORY[0x277D37650] linkButton];
  [(HUHomeHubIntroSetupViewController *)self setCancelButton:v21];

  v22 = [(HUHomeHubIntroSetupViewController *)self cancelButton];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = [(HUHomeHubIntroSetupViewController *)self cancelButton];
  v24 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationUpdateLaterTitle", @"HUSoftwareUpdateMigrationUpdateLaterTitle", 1);
  [v23 setTitle:v24 forState:0];

  v25 = [(HUHomeHubIntroSetupViewController *)self cancelButton];
  [v25 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.IntroSetUp.UpgradeLater"];

  v26 = [(HUHomeHubIntroSetupViewController *)self cancelButton];
  [v26 addTarget:self action:sel__cancelFlow forControlEvents:64];

  v27 = [(HUHomeHubIntroSetupViewController *)self buttonTray];
  v28 = [(HUHomeHubIntroSetupViewController *)self cancelButton];
  [v27 addButton:v28];

  [(HUHomeHubIntroSetupViewController *)self setModalInPresentation:1];
  v29 = [(HUHomeHubIntroSetupViewController *)self homeKitDispatcher];
  v30 = [v29 homeManager];
  v31 = [v30 homes];
  v32 = [v31 na_any:&__block_literal_global_226];

  if (v32)
  {
    v33 = [(HUHomeHubIntroSetupViewController *)self buttonTray];
    v34 = HULocalizedWiFiString(@"HUSoftwareUpdateMigrationUpdateCaption");
    [v33 addCaptionText:v34];
  }
}

BOOL __48__HUHomeHubIntroSetupViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 hf_blockCurrentUserFromHomeReason];
  if (v3 == 8)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v2 uniqueIdentifier];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubIntroSetupViewController:viewDidLoad] homeID with UnsupportedLegacyHomeHub = %{public}@", &v7, 0xCu);
    }
  }

  return v3 == 8;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUHomeHubIntroSetupViewController:viewWillAppear]", buf, 2u);
  }

  [(HUHomeHubIntroSetupViewController *)self setIsViewVisible:1];
  if ([(HUHomeHubIntroSetupViewController *)self needsToPresentUpgradeFailedAlert])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__HUHomeHubIntroSetupViewController_viewWillAppear___block_invoke;
    aBlock[3] = &unk_277DB8488;
    aBlock[4] = self;
    v6 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__HUHomeHubIntroSetupViewController_viewWillAppear___block_invoke_2;
    v11[3] = &unk_277DB8488;
    v11[4] = self;
    v7 = _Block_copy(v11);
    v8 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationFailedAlertTitle", @"HUSoftwareUpdateMigrationFailedAlertTitle", 1);
    v9 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationFailedAlertMessage", @"HUSoftwareUpdateMigrationFailedAlertMessage", 1);
    [(HUHomeHubIntroSetupViewController *)self _presentUpgradeFailedAlert:v8 message:v9 retryTitle:0 retryBlock:v6 cancelBlock:v7];
  }

  v10.receiver = self;
  v10.super_class = HUHomeHubIntroSetupViewController;
  [(HUHomeHubIntroSetupViewController *)&v10 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUHomeHubIntroSetupViewController:viewWillDisappear]", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = HUHomeHubIntroSetupViewController;
  [(OBBaseWelcomeController *)&v6 viewWillDisappear:v3];
}

- (id)_commitOrContinueButtonTitle
{
  v3 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationUpdateHomeButtonTitle", @"HUSoftwareUpdateMigrationUpdateHomeButtonTitle", 1);
  if ([(HUHomeHubIntroSetupViewController *)self isFinalStep])
  {
    v4 = v3;
  }

  else
  {
    v4 = _HULocalizedStringWithDefaultValue(@"HUContinueTitle", @"HUContinueTitle", 1);
  }

  v5 = v4;

  return v5;
}

- (void)_commitOrContinue
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HUHomeHubIntroSetupViewController *)self _commitOrContinueButtonTitle];
    *buf = 138412546;
    *v28 = v4;
    *&v28[8] = 1024;
    v29[0] = [(HUHomeHubIntroSetupViewController *)self isFinalStep];
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubIntroSetupViewController-_commitOrContinue:] User tapped button '%@' | isFinalStep = %{BOOL}d", buf, 0x12u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__HUHomeHubIntroSetupViewController__commitOrContinue__block_invoke;
  aBlock[3] = &unk_277DB8488;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = [MEMORY[0x277CCAC38] processInfo];
  v7 = [v6 isLowPowerModeEnabled];

  v8 = [MEMORY[0x277D14CE8] isMonitoredInterfaceWifiOrEthernet];
  v9 = [MEMORY[0x277D14CE8] isUsingiCloud];
  v10 = [MEMORY[0x277D14CE8] isCurrentAccount2FAEnabled];
  v11 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationFailedAlertTitle", @"HUSoftwareUpdateMigrationFailedAlertTitle", 1);
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v28 = v8 & 1;
    *&v28[4] = 1024;
    *&v28[6] = v7;
    LOWORD(v29[0]) = 1024;
    *(v29 + 2) = v9 & 1;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "[HUHomeHubIntroSetupViewController:_commitOrContinue] HH2 migration can only start if: User is connected to WiFi or Ethernet, and low power mode is not enabled, and logged into iCloud. isWifiOrEthernetReachable = %{BOOL}d, isLowPowerModeEnabled = %{BOOL}d, isLoggedIntoiCloud = %{BOOL}d", buf, 0x14u);
  }

  if (((v7 | v8 ^ 1) | (v9 & v10) ^ 1))
  {
    if (v7)
    {
      if ([MEMORY[0x277D14CE8] useWLANInsteadOfWiFi])
      {
        v13 = @"HUSoftwareUpdateMigrationFailedDueToLowPowerModeAlertMessageWLAN";
      }

      else
      {
        v13 = @"HUSoftwareUpdateMigrationFailedDueToLowPowerModeAlertMessageWiFi";
      }

      v15 = HULocalizedModelString(v13);
      v19 = 0;
      goto LABEL_19;
    }

    if (v8)
    {
      if (v9)
      {
        if (v10)
        {
          v19 = 0;
          v15 = 0;
LABEL_19:
          v20 = 0;
LABEL_26:
          [(HUHomeHubIntroSetupViewController *)self _presentUpgradeFailedAlert:v11 message:v15 retryTitle:v19 retryBlock:v20 cancelBlock:v5];
          goto LABEL_27;
        }

        v21 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationFailed2FATitle", @"HUSoftwareUpdateMigrationFailed2FATitle", 1);

        v15 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationFailed2FAMessage", @"HUSoftwareUpdateMigrationFailed2FAMessage", 1);
        v19 = _HULocalizedStringWithDefaultValue(@"HUGoToSettings", @"HUGoToSettings", 1);
        v20 = &__block_literal_global_111_5;
      }

      else
      {
        v21 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationFailedsignIniCloudTitle", @"HUSoftwareUpdateMigrationFailedsignIniCloudTitle", 1);

        v19 = _HULocalizedStringWithDefaultValue(@"HUGoToSettings", @"HUGoToSettings", 1);
        v15 = HULocalizedModelString(@"HUSoftwareUpdateMigrationFailedsignIniCloudMessage");
        v20 = &__block_literal_global_103_0;
      }
    }

    else
    {
      v21 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationFailedDueToNoWiFiAlertTitle", @"HUSoftwareUpdateMigrationFailedDueToNoWiFiAlertTitle", 1);

      if ([MEMORY[0x277D14CE8] useWLANInsteadOfWiFi])
      {
        HULocalizedModelString(@"HUSoftwareUpdateMigrationFailedDueToNoWLANAlertMessageWLAN");
      }

      else
      {
        _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationFailedDueToNoWiFiAlertMessageWiFi", @"HUSoftwareUpdateMigrationFailedDueToNoWiFiAlertMessageWiFi", 1);
      }
      v15 = ;
      v19 = _HULocalizedStringWithDefaultValue(@"HUGoToSettings", @"HUGoToSettings", 1);
      v20 = &__block_literal_global_93_0;
    }

    v11 = v21;
    goto LABEL_26;
  }

  v14 = [(HUHomeHubIntroSetupViewController *)self isFinalStep];
  v15 = [(HUHomeHubIntroSetupViewController *)self delegate];
  if (v14)
  {
    v25 = @"HUHomeHub2OnboardingKey_UserInput";
    v26 = &unk_282491F58;
    v16 = MEMORY[0x277CBEAC0];
    v17 = &v26;
    v18 = &v25;
  }

  else
  {
    v23 = @"HUHomeHub2OnboardingKey_UserInput";
    v24 = &unk_282491F70;
    v16 = MEMORY[0x277CBEAC0];
    v17 = &v24;
    v18 = &v23;
  }

  v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
  [v15 viewController:self didFinishWithConfigurationResults:v19];
LABEL_27:
}

void __54__HUHomeHubIntroSetupViewController__commitOrContinue__block_invoke_91()
{
  v2 = [MEMORY[0x277D148E8] sharedInstance];
  v0 = [MEMORY[0x277CBEBC0] hf_wifiSettingsURL];
  v1 = [v2 openURL:v0];
}

void __54__HUHomeHubIntroSetupViewController__commitOrContinue__block_invoke_2()
{
  v2 = [MEMORY[0x277D148E8] sharedInstance];
  v0 = [MEMORY[0x277CBEBC0] hf_openiCloudPreferencesURL];
  v1 = [v2 openURL:v0];
}

void __54__HUHomeHubIntroSetupViewController__commitOrContinue__block_invoke_3()
{
  v2 = [MEMORY[0x277D148E8] sharedInstance];
  v0 = [MEMORY[0x277CBEBC0] hf_openiCloudPasswordAndSecurityURL];
  v1 = [v2 openURL:v0];
}

- (void)_cancelFlow
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubIntroSetupViewController:_cancelFlow] User tapped cancel button (Update Later)", v6, 2u);
  }

  v4 = [(HUHomeHubIntroSetupViewController *)self delegate];
  v7 = @"HUHomeHub2OnboardingKey_UserInput";
  v8[0] = &unk_282491F88;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 viewController:self didFinishWithConfigurationResults:v5];
}

- (void)_openLearnMoreLink:(id)a3
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubIntroSetupViewController:_openLearnMoreLink] User tapped learn more link", v7, 2u);
  }

  v4 = [MEMORY[0x277D148E8] sharedInstance];
  v5 = [MEMORY[0x277CBEBC0] hu_homeUpdateLearnMoreURL];
  v6 = [v4 openURL:v5];
}

- (void)_presentUpgradeFailedAlert:(id)a3 message:(id)a4 retryTitle:(id)a5 retryBlock:(id)a6 cancelBlock:(id)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "[HUHomeHubIntroSetupViewController-_presentUpgradeFailedAlert:message:retryTitle:retryBlock:cancelBlock] presenting alert card: title %@ message %@", buf, 0x16u);
  }

  if ([(HUHomeHubIntroSetupViewController *)self isViewVisible])
  {
    [(HUHomeHubIntroSetupViewController *)self setNeedsToPresentUpgradeFailedAlert:0];
    v18 = [MEMORY[0x277D75110] alertControllerWithTitle:v12 message:v13 preferredStyle:1];
    v19 = [v14 length];
    v20 = 0x277D75000uLL;
    if (v15 && v19)
    {
      v21 = MEMORY[0x277D750F8];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __106__HUHomeHubIntroSetupViewController__presentUpgradeFailedAlert_message_retryTitle_retryBlock_cancelBlock___block_invoke;
      v31[3] = &unk_277DC20D0;
      v34 = v15;
      v32 = v14;
      v33 = v12;
      v20 = 0x277D75000;
      v22 = [v21 actionWithTitle:v32 style:0 handler:v31];
      [v18 addAction:v22];

      v23 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
    }

    else
    {
      v23 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
    }

    v24 = *(v20 + 248);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __106__HUHomeHubIntroSetupViewController__presentUpgradeFailedAlert_message_retryTitle_retryBlock_cancelBlock___block_invoke_127;
    v27[3] = &unk_277DC20D0;
    v30 = v16;
    v28 = v23;
    v29 = v12;
    v25 = v23;
    v26 = [v24 actionWithTitle:v25 style:1 handler:v27];
    [v18 addAction:v26];

    [(HUHomeHubIntroSetupViewController *)self presentViewController:v18 animated:1 completion:&__block_literal_global_130_1];
  }

  else
  {
    [(HUHomeHubIntroSetupViewController *)self setNeedsToPresentUpgradeFailedAlert:1];
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "[HUHomeHubIntroSetupViewController-_presentUpgradeFailedAlert:message:retryTitle:retryBlock:cancelBlock] Deferring alert presentation since view isn't shown yet", buf, 2u);
    }
  }
}

void __106__HUHomeHubIntroSetupViewController__presentUpgradeFailedAlert_message_retryTitle_retryBlock_cancelBlock___block_invoke(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  (*(a1[6] + 16))();
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "[HUHomeHubIntroSetupViewController-_presentUpgradeFailedAlert:message:retryTitle:retryBlock:cancelBlock] User tapped retry button %@ for alert view with title %@", &v5, 0x16u);
  }
}

void __106__HUHomeHubIntroSetupViewController__presentUpgradeFailedAlert_message_retryTitle_retryBlock_cancelBlock___block_invoke_127(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  (*(a1[6] + 16))();
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "[HUHomeHubIntroSetupViewController-_presentUpgradeFailedAlert:message:retryTitle:retryBlock:cancelBlock] User tapped cancel button %@ for alert view with title %@", &v5, 0x16u);
  }
}

void __106__HUHomeHubIntroSetupViewController__presentUpgradeFailedAlert_message_retryTitle_retryBlock_cancelBlock___block_invoke_128()
{
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "[HUHomeHubIntroSetupViewController:_presentUpgradeFailedAlert] presented alert popup", v1, 2u);
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end