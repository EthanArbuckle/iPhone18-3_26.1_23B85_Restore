@interface HUHomeHubIntroSetupViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeHubIntroSetupViewController)initWithHomes:(id)homes;
- (id)_commitOrContinueButtonTitle;
- (void)_cancelFlow;
- (void)_commitOrContinue;
- (void)_openLearnMoreLink:(id)link;
- (void)_presentUpgradeFailedAlert:(id)alert message:(id)message retryTitle:(id)title retryBlock:(id)block cancelBlock:(id)cancelBlock;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUHomeHubIntroSetupViewController

- (HUHomeHubIntroSetupViewController)initWithHomes:(id)homes
{
  v4 = [homes count];
  v5 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationUpdateHomeTitle", @"HUSoftwareUpdateMigrationUpdateHomeTitle", 1);
  v6 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationUpdateHomeDescription", @"HUSoftwareUpdateMigrationUpdateHomeDescription", 1);
  v7 = MEMORY[0x277D755D0];
  hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
  v9 = [v7 configurationWithHierarchicalColor:hf_keyColor];

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
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    homeKitDispatcher = v15->_homeKitDispatcher;
    v15->_homeKitDispatcher = mEMORY[0x277D146E8];
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
  headerView = [(HUHomeHubIntroSetupViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282493198];

  accessoryButton = [MEMORY[0x277D37638] accessoryButton];
  [(HUHomeHubIntroSetupViewController *)self setLearnMoreButton:accessoryButton];

  learnMoreButton = [(HUHomeHubIntroSetupViewController *)self learnMoreButton];
  v8 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationUpdateLearnMoreLink", @"HUSoftwareUpdateMigrationUpdateLearnMoreLink", 1);
  [learnMoreButton setTitle:v8 forState:0];

  learnMoreButton2 = [(HUHomeHubIntroSetupViewController *)self learnMoreButton];
  [learnMoreButton2 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.IntroSetUp.LearnMoreLink"];

  learnMoreButton3 = [(HUHomeHubIntroSetupViewController *)self learnMoreButton];
  [learnMoreButton3 addTarget:self action:sel__openLearnMoreLink_ forControlEvents:64];

  headerView2 = [(HUHomeHubIntroSetupViewController *)self headerView];
  learnMoreButton4 = [(HUHomeHubIntroSetupViewController *)self learnMoreButton];
  [headerView2 addAccessoryButton:learnMoreButton4];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUHomeHubIntroSetupViewController *)self setCommitButton:boldButton];

  commitButton = [(HUHomeHubIntroSetupViewController *)self commitButton];
  [commitButton setTranslatesAutoresizingMaskIntoConstraints:0];

  commitButton2 = [(HUHomeHubIntroSetupViewController *)self commitButton];
  _commitOrContinueButtonTitle = [(HUHomeHubIntroSetupViewController *)self _commitOrContinueButtonTitle];
  [commitButton2 setTitle:_commitOrContinueButtonTitle forState:0];

  commitButton3 = [(HUHomeHubIntroSetupViewController *)self commitButton];
  [commitButton3 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.IntroSetUp.CommitOrContinueButton"];

  commitButton4 = [(HUHomeHubIntroSetupViewController *)self commitButton];
  [commitButton4 addTarget:self action:sel__commitOrContinue forControlEvents:64];

  buttonTray = [(HUHomeHubIntroSetupViewController *)self buttonTray];
  commitButton5 = [(HUHomeHubIntroSetupViewController *)self commitButton];
  [buttonTray addButton:commitButton5];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [(HUHomeHubIntroSetupViewController *)self setCancelButton:linkButton];

  cancelButton = [(HUHomeHubIntroSetupViewController *)self cancelButton];
  [cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];

  cancelButton2 = [(HUHomeHubIntroSetupViewController *)self cancelButton];
  v24 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationUpdateLaterTitle", @"HUSoftwareUpdateMigrationUpdateLaterTitle", 1);
  [cancelButton2 setTitle:v24 forState:0];

  cancelButton3 = [(HUHomeHubIntroSetupViewController *)self cancelButton];
  [cancelButton3 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.IntroSetUp.UpgradeLater"];

  cancelButton4 = [(HUHomeHubIntroSetupViewController *)self cancelButton];
  [cancelButton4 addTarget:self action:sel__cancelFlow forControlEvents:64];

  buttonTray2 = [(HUHomeHubIntroSetupViewController *)self buttonTray];
  cancelButton5 = [(HUHomeHubIntroSetupViewController *)self cancelButton];
  [buttonTray2 addButton:cancelButton5];

  [(HUHomeHubIntroSetupViewController *)self setModalInPresentation:1];
  homeKitDispatcher = [(HUHomeHubIntroSetupViewController *)self homeKitDispatcher];
  homeManager = [homeKitDispatcher homeManager];
  homes = [homeManager homes];
  v32 = [homes na_any:&__block_literal_global_226];

  if (v32)
  {
    buttonTray3 = [(HUHomeHubIntroSetupViewController *)self buttonTray];
    v34 = HULocalizedWiFiString(@"HUSoftwareUpdateMigrationUpdateCaption");
    [buttonTray3 addCaptionText:v34];
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
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
  [(HUHomeHubIntroSetupViewController *)&v10 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUHomeHubIntroSetupViewController:viewWillDisappear]", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = HUHomeHubIntroSetupViewController;
  [(OBBaseWelcomeController *)&v6 viewWillDisappear:disappearCopy];
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
    _commitOrContinueButtonTitle = [(HUHomeHubIntroSetupViewController *)self _commitOrContinueButtonTitle];
    *buf = 138412546;
    *v28 = _commitOrContinueButtonTitle;
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
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  isMonitoredInterfaceWifiOrEthernet = [MEMORY[0x277D14CE8] isMonitoredInterfaceWifiOrEthernet];
  isUsingiCloud = [MEMORY[0x277D14CE8] isUsingiCloud];
  isCurrentAccount2FAEnabled = [MEMORY[0x277D14CE8] isCurrentAccount2FAEnabled];
  v11 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationFailedAlertTitle", @"HUSoftwareUpdateMigrationFailedAlertTitle", 1);
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v28 = isMonitoredInterfaceWifiOrEthernet & 1;
    *&v28[4] = 1024;
    *&v28[6] = isLowPowerModeEnabled;
    LOWORD(v29[0]) = 1024;
    *(v29 + 2) = isUsingiCloud & 1;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "[HUHomeHubIntroSetupViewController:_commitOrContinue] HH2 migration can only start if: User is connected to WiFi or Ethernet, and low power mode is not enabled, and logged into iCloud. isWifiOrEthernetReachable = %{BOOL}d, isLowPowerModeEnabled = %{BOOL}d, isLoggedIntoiCloud = %{BOOL}d", buf, 0x14u);
  }

  if (((isLowPowerModeEnabled | isMonitoredInterfaceWifiOrEthernet ^ 1) | (isUsingiCloud & isCurrentAccount2FAEnabled) ^ 1))
  {
    if (isLowPowerModeEnabled)
    {
      if ([MEMORY[0x277D14CE8] useWLANInsteadOfWiFi])
      {
        v13 = @"HUSoftwareUpdateMigrationFailedDueToLowPowerModeAlertMessageWLAN";
      }

      else
      {
        v13 = @"HUSoftwareUpdateMigrationFailedDueToLowPowerModeAlertMessageWiFi";
      }

      delegate = HULocalizedModelString(v13);
      v19 = 0;
      goto LABEL_19;
    }

    if (isMonitoredInterfaceWifiOrEthernet)
    {
      if (isUsingiCloud)
      {
        if (isCurrentAccount2FAEnabled)
        {
          v19 = 0;
          delegate = 0;
LABEL_19:
          v20 = 0;
LABEL_26:
          [(HUHomeHubIntroSetupViewController *)self _presentUpgradeFailedAlert:v11 message:delegate retryTitle:v19 retryBlock:v20 cancelBlock:v5];
          goto LABEL_27;
        }

        v21 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationFailed2FATitle", @"HUSoftwareUpdateMigrationFailed2FATitle", 1);

        delegate = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationFailed2FAMessage", @"HUSoftwareUpdateMigrationFailed2FAMessage", 1);
        v19 = _HULocalizedStringWithDefaultValue(@"HUGoToSettings", @"HUGoToSettings", 1);
        v20 = &__block_literal_global_111_5;
      }

      else
      {
        v21 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationFailedsignIniCloudTitle", @"HUSoftwareUpdateMigrationFailedsignIniCloudTitle", 1);

        v19 = _HULocalizedStringWithDefaultValue(@"HUGoToSettings", @"HUGoToSettings", 1);
        delegate = HULocalizedModelString(@"HUSoftwareUpdateMigrationFailedsignIniCloudMessage");
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
      delegate = ;
      v19 = _HULocalizedStringWithDefaultValue(@"HUGoToSettings", @"HUGoToSettings", 1);
      v20 = &__block_literal_global_93_0;
    }

    v11 = v21;
    goto LABEL_26;
  }

  isFinalStep = [(HUHomeHubIntroSetupViewController *)self isFinalStep];
  delegate = [(HUHomeHubIntroSetupViewController *)self delegate];
  if (isFinalStep)
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
  [delegate viewController:self didFinishWithConfigurationResults:v19];
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

  delegate = [(HUHomeHubIntroSetupViewController *)self delegate];
  v7 = @"HUHomeHub2OnboardingKey_UserInput";
  v8[0] = &unk_282491F88;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v5];
}

- (void)_openLearnMoreLink:(id)link
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubIntroSetupViewController:_openLearnMoreLink] User tapped learn more link", v7, 2u);
  }

  mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
  hu_homeUpdateLearnMoreURL = [MEMORY[0x277CBEBC0] hu_homeUpdateLearnMoreURL];
  v6 = [mEMORY[0x277D148E8] openURL:hu_homeUpdateLearnMoreURL];
}

- (void)_presentUpgradeFailedAlert:(id)alert message:(id)message retryTitle:(id)title retryBlock:(id)block cancelBlock:(id)cancelBlock
{
  v39 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  messageCopy = message;
  titleCopy = title;
  blockCopy = block;
  cancelBlockCopy = cancelBlock;
  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = alertCopy;
    v37 = 2112;
    v38 = messageCopy;
    _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "[HUHomeHubIntroSetupViewController-_presentUpgradeFailedAlert:message:retryTitle:retryBlock:cancelBlock] presenting alert card: title %@ message %@", buf, 0x16u);
  }

  if ([(HUHomeHubIntroSetupViewController *)self isViewVisible])
  {
    [(HUHomeHubIntroSetupViewController *)self setNeedsToPresentUpgradeFailedAlert:0];
    v18 = [MEMORY[0x277D75110] alertControllerWithTitle:alertCopy message:messageCopy preferredStyle:1];
    v19 = [titleCopy length];
    v20 = 0x277D75000uLL;
    if (blockCopy && v19)
    {
      v21 = MEMORY[0x277D750F8];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __106__HUHomeHubIntroSetupViewController__presentUpgradeFailedAlert_message_retryTitle_retryBlock_cancelBlock___block_invoke;
      v31[3] = &unk_277DC20D0;
      v34 = blockCopy;
      v32 = titleCopy;
      v33 = alertCopy;
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
    v30 = cancelBlockCopy;
    v28 = v23;
    v29 = alertCopy;
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