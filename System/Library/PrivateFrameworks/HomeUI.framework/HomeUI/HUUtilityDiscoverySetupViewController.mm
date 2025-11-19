@interface HUUtilityDiscoverySetupViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUtilityDiscoverySetupViewController)initWithHome:(id)a3 allUtilities:(id)a4;
- (HUUtilityDiscoverySetupViewController)initWithHome:(id)a3 onboardingContext:(id)a4;
- (UIEdgeInsets)contentInsets;
- (_TtC6HomeUI24UtilityOnboardingContext)onboardingContext;
- (id)_checkTAF:(id)a3;
- (id)_fetchUtilityConfig;
- (id)_fetchUtilityConfigAndCheckTAF;
- (id)presentationAnchorForWebAuthenticationSession:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_buttonAction;
- (void)_cancelUtilityOnboarding:(id)a3;
- (void)_continueOnboarding:(id)a3;
- (void)_hideSpinner;
- (void)_loginWithAccount:(id)a3;
- (void)_showSpinner;
- (void)_startOAuthLogin:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation HUUtilityDiscoverySetupViewController

- (HUUtilityDiscoverySetupViewController)initWithHome:(id)a3 allUtilities:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 count];
  v10 = _HULocalizedStringWithDefaultValue(@"HUUtilityDiscoverySetup_Title", @"HUUtilityDiscoverySetup_Title", 1);
  if (v9 == 1)
  {
    v11 = @"HUUtilityDiscoverySetup_Detail_SingleUtility";
  }

  else
  {
    v11 = @"HUUtilityDiscoverySetup_Detail_MultipleUtilities";
  }

  v12 = _HULocalizedStringWithDefaultValue(v11, v11, 1);
  v13 = HUImageNamed(@"Onboarding-HomeUtilityLogo");
  if ([MEMORY[0x277D14CE8] isAnIPad])
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  v17.receiver = self;
  v17.super_class = HUUtilityDiscoverySetupViewController;
  v15 = [(HUUtilityDiscoverySetupViewController *)&v17 initWithTitle:v10 detailText:v12 icon:v13 contentLayout:v14];

  if (v15)
  {
    if (!v8 || ![v8 count])
    {
      [(HUUtilityDiscoverySetupViewController *)v15 setErrorFetchingUtilities:1];
    }

    objc_storeStrong(&v15->_home, a3);
    *&v15->_contentInsets.top = 0u;
    *&v15->_contentInsets.bottom = 0u;
    objc_storeStrong(&v15->_foundUtilities, a4);
  }

  return v15;
}

- (HUUtilityDiscoverySetupViewController)initWithHome:(id)a3 onboardingContext:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [HUUtilityDiscoverySetupViewController alloc];
  v9 = [v6 allUtilities];
  v10 = [(HUUtilityDiscoverySetupViewController *)v8 initWithHome:v7 allUtilities:v9];

  objc_storeWeak(&v10->_onboardingContext, v6);
  v11 = [v6 allUtilities];
  v12 = [v11 count];

  if (v12 == 1)
  {
    v10->_singleUtilityMode = 1;
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[HUUtilityDiscoverySetupViewController initWithHome:onboardingContext:]";
      _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%s Single utility mode", &v17, 0xCu);
    }
  }

  else
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v6 allUtilities];
      v17 = 136315394;
      v18 = "[HUUtilityDiscoverySetupViewController initWithHome:onboardingContext:]";
      v19 = 2048;
      v20 = [v15 count];
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%s NOT single utility mode. Count = %lu", &v17, 0x16u);
    }

    v10->_singleUtilityMode = 0;
  }

  return v10;
}

- (void)_continueOnboarding:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HUUtilityDiscoverySetupViewController *)self config];

  if (!v5)
  {
    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      v23 = self;
      v24 = 2080;
      v25 = "[HUUtilityDiscoverySetupViewController _continueOnboarding:]";
      _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "%@: Configuration is nil  %s", &v22, 0x16u);
    }

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:13];
    [v4 setObject:v20 forKeyedSubscript:@"HUUtilityDiscoveryOnboardingKey_UserInput"];

    v18 = HFLogForCategory();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

LABEL_13:
    v22 = 138412802;
    v23 = self;
    v24 = 2080;
    v25 = "[HUUtilityDiscoverySetupViewController _continueOnboarding:]";
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@ Finished %s with results  %@", &v22, 0x20u);
LABEL_14:

    v21 = [(HUUtilityDiscoverySetupViewController *)self delegate];
    [v21 viewController:self didFinishWithConfigurationResults:v4];

    goto LABEL_18;
  }

  v6 = [(HUUtilityDiscoverySetupViewController *)self config];
  v7 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  [v7 setConfig:v6];

  v8 = [(HUUtilityDiscoverySetupViewController *)self selectedUtilityInfo];
  v9 = [v8 objectForKeyedSubscript:@"utilityID"];
  v10 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  [v10 setUtilityID:v9];

  objc_opt_class();
  v11 = [(HUUtilityDiscoverySetupViewController *)self selectedUtilityInfo];
  v12 = [v11 objectForKeyedSubscript:@"logo"];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  [v15 setUtilityLogo:v14];

  LODWORD(v15) = [(HUUtilityDiscoverySetupViewController *)self tafEnabledForSelectedUtility];
  v16 = HFLogForCategory();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      v22 = 138412546;
      v23 = self;
      v24 = 2080;
      v25 = "[HUUtilityDiscoverySetupViewController _continueOnboarding:]";
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@: Continue onboarding with TAF  %s", &v22, 0x16u);
    }

    [v4 setObject:&unk_2824918C8 forKeyedSubscript:@"HUUtilityDiscoveryOnboardingKey_UserInput"];
    v18 = HFLogForCategory();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v17)
  {
    v22 = 138412546;
    v23 = self;
    v24 = 2080;
    v25 = "[HUUtilityDiscoverySetupViewController _continueOnboarding:]";
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@: Continue onboarding with OAuth  %s", &v22, 0x16u);
  }

  [(HUUtilityDiscoverySetupViewController *)self _startOAuthLogin:v4];
LABEL_18:
}

- (void)_loginWithAccount:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = self;
    v18 = 2080;
    v19 = "[HUUtilityDiscoverySetupViewController _loginWithAccount:]";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped button", &v16, 0x16u);
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(HUUtilityDiscoverySetupViewController *)self config];
  v7 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  [v7 setConfig:v6];

  v8 = [(HUUtilityDiscoverySetupViewController *)self selectedUtilityID];
  v9 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  [v9 setUtilityID:v8];

  objc_opt_class();
  v10 = [(HUUtilityDiscoverySetupViewController *)self selectedUtilityInfo];
  v11 = [v10 objectForKeyedSubscript:@"logo"];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  [v14 setUtilityLogo:v13];

  v15 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  [v15 setOnboardingMethod:2];

  [(HUUtilityDiscoverySetupViewController *)self _startOAuthLogin:v5];
}

- (void)_cancelUtilityOnboarding:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = self;
    v12 = 2080;
    v13 = "[HUUtilityDiscoverySetupViewController _cancelUtilityOnboarding:]";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped button", buf, 0x16u);
  }

  v5 = [(HUUtilityDiscoverySetupViewController *)self selectedUtilityID];
  [HUHomeEnergyAnalyticsHelper sendUtilityOnboardingCancelledEventWithUtilityID:v5 sourceViewController:0];

  v6 = [(HUUtilityDiscoverySetupViewController *)self delegate];
  v8 = @"HUUtilityDiscoveryOnboardingKey_UserInput";
  v9 = &unk_2824918E0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v6 viewController:self didFinishWithConfigurationResults:v7];
}

- (id)_fetchUtilityConfig
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HUUtilityDiscoverySetupViewController *)self selectedUtilityID];
  if (v3 && (v4 = v3, -[HUUtilityDiscoverySetupViewController selectedUtilityID](self, "selectedUtilityID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, v6))
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__HUUtilityDiscoverySetupViewController__fetchUtilityConfig__block_invoke;
    v13[3] = &unk_277DB7580;
    v13[4] = self;
    v7 = [MEMORY[0x277D2C900] futureWithBlock:v13];
    v8 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v9 = [v7 reschedule:v8];
  }

  else
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = self;
      _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "%@: Selected utility ID is empty", buf, 0xCu);
    }

    v11 = MEMORY[0x277D2C900];
    v7 = [MEMORY[0x277CCA9B8] na_genericError];
    v9 = [v11 futureWithError:v7];
  }

  return v9;
}

void __60__HUUtilityDiscoverySetupViewController__fetchUtilityConfig__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: IN FUTURE", buf, 0xCu);
  }

  v6 = [*(a1 + 32) selectedUtilityID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HUUtilityDiscoverySetupViewController__fetchUtilityConfig__block_invoke_109;
  v8[3] = &unk_277DBE790;
  objc_copyWeak(&v10, &location);
  v7 = v3;
  v9 = v7;
  [HUHomeEnergyManagerHelper utilityInformation:v6 completionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __60__HUUtilityDiscoverySetupViewController__fetchUtilityConfig__block_invoke_109(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = HFLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      v10 = 138412546;
      v11 = WeakRetained;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: completion error (%@)", &v10, 0x16u);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    if (v9)
    {
      v10 = 138412290;
      v11 = WeakRetained;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: utility configuration fetched", &v10, 0xCu);
    }

    [WeakRetained setConfig:v5];
    [*(a1 + 32) finishWithResult:v5];
  }
}

- (id)_fetchUtilityConfigAndCheckTAF
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HUUtilityDiscoverySetupViewController *)self selectedUtilityID];
  if (v3 && (v4 = v3, -[HUUtilityDiscoverySetupViewController selectedUtilityID](self, "selectedUtilityID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, v6))
  {
    v7 = [(HUUtilityDiscoverySetupViewController *)self _fetchUtilityConfig];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__HUUtilityDiscoverySetupViewController__fetchUtilityConfigAndCheckTAF__block_invoke;
    v14[3] = &unk_277DBE7B8;
    v14[4] = self;
    v8 = [v7 flatMap:v14];
    v9 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v10 = [v8 reschedule:v9];
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = self;
      _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "%@: Selected utility ID is empty", buf, 0xCu);
    }

    v12 = MEMORY[0x277D2C900];
    v7 = [MEMORY[0x277CCA9B8] na_genericError];
    v10 = [v12 futureWithError:v7];
  }

  return v10;
}

id __71__HUUtilityDiscoverySetupViewController__fetchUtilityConfigAndCheckTAF__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__HUUtilityDiscoverySetupViewController__fetchUtilityConfigAndCheckTAF__block_invoke_2;
  v8[3] = &unk_277DB8200;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v5 = v3;
  v6 = [v4 futureWithBlock:v8];

  return v6;
}

void __71__HUUtilityDiscoverySetupViewController__fetchUtilityConfigAndCheckTAF__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v11 = v5;
    v12 = 2080;
    v13 = "[HUUtilityDiscoverySetupViewController _fetchUtilityConfigAndCheckTAF]_block_invoke_2";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: IN TAF FUTURE  %s", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__HUUtilityDiscoverySetupViewController__fetchUtilityConfigAndCheckTAF__block_invoke_113;
  v8[3] = &unk_277DB8AB0;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  [v6 isTAFEnabledWithCompletionHandler:v8];
}

void __71__HUUtilityDiscoverySetupViewController__fetchUtilityConfigAndCheckTAF__block_invoke_113(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2080;
    v11 = "[HUUtilityDiscoverySetupViewController _fetchUtilityConfigAndCheckTAF]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: COMPLETION HANDLER  %s", &v8, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v6 finishWithResult:v7];
}

- (id)_checkTAF:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HUUtilityDiscoverySetupViewController__checkTAF___block_invoke;
  v9[3] = &unk_277DB8200;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 futureWithBlock:v9];

  return v7;
}

void __51__HUUtilityDiscoverySetupViewController__checkTAF___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v11 = v5;
    v12 = 2080;
    v13 = "[HUUtilityDiscoverySetupViewController _checkTAF:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: IN TAF FUTURE  %s", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HUUtilityDiscoverySetupViewController__checkTAF___block_invoke_116;
  v8[3] = &unk_277DB8AB0;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  [v6 isTAFEnabledWithCompletionHandler:v8];
}

void __51__HUUtilityDiscoverySetupViewController__checkTAF___block_invoke_116(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2080;
    v11 = "[HUUtilityDiscoverySetupViewController _checkTAF:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: COMPLETION HANDLER  %s", &v8, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v6 finishWithResult:v7];
}

- (void)viewDidLoad
{
  v88 = *MEMORY[0x277D85DE8];
  v76.receiver = self;
  v76.super_class = HUUtilityDiscoverySetupViewController;
  [(OBBaseWelcomeController *)&v76 viewDidLoad];
  v3 = [(HUUtilityDiscoverySetupViewController *)self headerView];
  v4 = [v3 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v4 withIDDictionary:&unk_282492F68];

  if ([(HUUtilityDiscoverySetupViewController *)self errorFetchingUtilities])
  {
    v5 = [(HUUtilityDiscoverySetupViewController *)self headerView];
    v6 = _HULocalizedStringWithDefaultValue(@"HUUtilityOnboarding_CannotOnboard_Title", @"HUUtilityOnboarding_CannotOnboard_Title", 1);
    [v5 setTitle:v6];

    v7 = [(HUUtilityDiscoverySetupViewController *)self headerView];
    v8 = _HULocalizedStringWithDefaultValue(@"HUUtilityOnboarding_CannotOnboard_Detail", @"HUUtilityOnboarding_CannotOnboard_Detail", 1);
    [v7 setDetailText:v8];

    v9 = [MEMORY[0x277D37618] boldButton];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
    [v9 setTitle:v10 forState:0];

    [v9 setAccessibilityIdentifier:@"Home.OnboardingView.Utility.SetUp.DoneButton"];
    [v9 addTarget:self action:sel__cancelUtilityOnboarding_ forControlEvents:64];
    v11 = [(HUUtilityDiscoverySetupViewController *)self buttonTray];
    [v11 addButton:v9];

    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v79 = self;
      v80 = 2080;
      v81 = "[HUUtilityDiscoverySetupViewController viewDidLoad]";
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@:%s: ERROR fetching utilities HUUtilityDiscoverySetupViewController. Presenting error view.", buf, 0x16u);
    }
  }

  else
  {
    v13 = [MEMORY[0x277D37618] boldButton];
    [(HUUtilityDiscoverySetupViewController *)self setContinueOnboardingButton:v13];

    v14 = [(HUUtilityDiscoverySetupViewController *)self continueOnboardingButton];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = [(HUUtilityDiscoverySetupViewController *)self continueOnboardingButton];
    v16 = _HULocalizedStringWithDefaultValue(@"HUContinueTitle", @"HUContinueTitle", 1);
    [v15 setTitle:v16 forState:0];

    v17 = [(HUUtilityDiscoverySetupViewController *)self continueOnboardingButton];
    [v17 setAccessibilityIdentifier:@"Home.OnboardingView.Utility.SetUp.ContinueButton"];

    v18 = [MEMORY[0x277D37650] linkButton];
    [(HUUtilityDiscoverySetupViewController *)self setAccountLoginButton:v18];

    v19 = [(HUUtilityDiscoverySetupViewController *)self accountLoginButton];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

    v20 = [(HUUtilityDiscoverySetupViewController *)self accountLoginButton];
    v21 = _HULocalizedStringWithDefaultValue(@"HUUtilityOnboarding_AccountLogin_Button", @"HUUtilityOnboarding_AccountLogin_Button", 1);
    [v20 setTitle:v21 forState:0];

    v22 = [(HUUtilityDiscoverySetupViewController *)self accountLoginButton];
    [v22 setAccessibilityIdentifier:@"Home.OnboardingView.Utility.SetUp.UseUtilityAccountButton"];

    v23 = [(HUUtilityDiscoverySetupViewController *)self continueOnboardingButton];
    [v23 addTarget:self action:sel__continueOnboarding_ forControlEvents:64];

    v24 = [(HUUtilityDiscoverySetupViewController *)self accountLoginButton];
    [v24 addTarget:self action:sel__loginWithAccount_ forControlEvents:64];

    v25 = [(HUUtilityDiscoverySetupViewController *)self buttonTray];
    v26 = [(HUUtilityDiscoverySetupViewController *)self continueOnboardingButton];
    [v25 addButton:v26];

    v27 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
    v28 = [v27 allUtilities];
    v29 = [v28 objectAtIndexedSubscript:0];
    v30 = [v29 objectForKeyedSubscript:@"utilityID"];
    [(HUUtilityDiscoverySetupViewController *)self setSelectedUtilityID:v30];

    v31 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
    v32 = [v31 allUtilities];
    v33 = [v32 objectAtIndexedSubscript:0];
    [(HUUtilityDiscoverySetupViewController *)self setSelectedUtilityInfo:v33];

    [(HUUtilityDiscoverySetupViewController *)self _buttonAction];
    v34 = objc_alloc(MEMORY[0x277D75B40]);
    v35 = [v34 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    providerSelectionTableView = self->_providerSelectionTableView;
    self->_providerSelectionTableView = v35;

    v37 = HFLogForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [(HUUtilityDiscoverySetupViewController *)self view];
      v39 = [(HUUtilityDiscoverySetupViewController *)self contentView];
      v40 = [(HUUtilityDiscoverySetupViewController *)self providerSelectionTableView];
      *buf = 138413314;
      v79 = self;
      v80 = 2080;
      v81 = "[HUUtilityDiscoverySetupViewController viewDidLoad]";
      v82 = 2112;
      v83 = v38;
      v84 = 2112;
      v85 = v39;
      v86 = 2112;
      v87 = v40;
      _os_log_impl(&dword_20CEB6000, v37, OS_LOG_TYPE_DEFAULT, "%@:%s: HUUtilityDiscoverySetupViewController\n self.view: %@\n self.contentView: %@\n self.tableView: %@", buf, 0x34u);
    }

    [(UITableView *)self->_providerSelectionTableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)self->_providerSelectionTableView setAllowsSelection:[(HUUtilityDiscoverySetupViewController *)self singleUtilityMode]^ 1];
    [(UITableView *)self->_providerSelectionTableView setScrollEnabled:0];
    [(UITableView *)self->_providerSelectionTableView setDelegate:self];
    [(UITableView *)self->_providerSelectionTableView setDataSource:self];
    v41 = [MEMORY[0x277D75348] clearColor];
    [(UITableView *)self->_providerSelectionTableView setBackgroundColor:v41];

    [(UITableView *)self->_providerSelectionTableView registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];
    v42 = [(HUUtilityDiscoverySetupViewController *)self contentView];
    [v42 addSubview:self->_providerSelectionTableView];

    v43 = [(UITableView *)self->_providerSelectionTableView heightAnchor];
    v44 = [v43 constraintEqualToConstant:1.0];
    providerTableViewHeightConstraint = self->_providerTableViewHeightConstraint;
    self->_providerTableViewHeightConstraint = v44;

    v64 = MEMORY[0x277CCAAD0];
    v75 = [(HUUtilityDiscoverySetupViewController *)self providerSelectionTableView];
    v73 = [v75 leadingAnchor];
    v74 = [(HUUtilityDiscoverySetupViewController *)self contentView];
    v72 = [v74 leadingAnchor];
    v71 = [v73 constraintEqualToAnchor:v72];
    v77[0] = v71;
    v70 = [(HUUtilityDiscoverySetupViewController *)self providerSelectionTableView];
    v68 = [v70 trailingAnchor];
    v69 = [(HUUtilityDiscoverySetupViewController *)self contentView];
    v67 = [v69 trailingAnchor];
    v66 = [v68 constraintEqualToAnchor:v67];
    v77[1] = v66;
    v65 = [(HUUtilityDiscoverySetupViewController *)self providerSelectionTableView];
    v62 = [v65 topAnchor];
    v63 = [(HUUtilityDiscoverySetupViewController *)self contentView];
    v61 = [v63 topAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v77[2] = v60;
    v59 = [(HUUtilityDiscoverySetupViewController *)self providerSelectionTableView];
    v57 = [v59 bottomAnchor];
    v58 = [(HUUtilityDiscoverySetupViewController *)self contentView];
    v46 = [v58 bottomAnchor];
    v47 = [v57 constraintEqualToAnchor:v46];
    v77[3] = v47;
    v48 = [(HUUtilityDiscoverySetupViewController *)self providerSelectionTableView];
    v49 = [v48 centerXAnchor];
    v50 = [(HUUtilityDiscoverySetupViewController *)self contentView];
    v51 = [v50 centerXAnchor];
    v52 = [v49 constraintEqualToAnchor:v51];
    v77[4] = v52;
    v53 = [(HUUtilityDiscoverySetupViewController *)self providerTableViewHeightConstraint];
    v77[5] = v53;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:6];
    [v64 activateConstraints:v54];

    v9 = [(HUUtilityDiscoverySetupViewController *)self contentView];
    [v9 setClipsToBounds:1];
  }

  v55 = HFLogForCategory();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v79 = self;
    v80 = 2080;
    v81 = "[HUUtilityDiscoverySetupViewController viewDidLoad]";
    _os_log_impl(&dword_20CEB6000, v55, OS_LOG_TYPE_DEFAULT, "%@:%s: presented: HUUtilityDiscoverySetupViewController", buf, 0x16u);
  }

  v56 = [(HUUtilityDiscoverySetupViewController *)self foundUtilities];
  +[HUHomeEnergyAnalyticsHelper sendUtilityIntroAndSelectionSheetViewEventWithNumOfUtilities:](HUHomeEnergyAnalyticsHelper, "sendUtilityIntroAndSelectionSheetViewEventWithNumOfUtilities:", [v56 count]);
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HUUtilityDiscoverySetupViewController;
  [(HUUtilityDiscoverySetupViewController *)&v4 viewWillLayoutSubviews];
  v3 = [(HUUtilityDiscoverySetupViewController *)self view];
  [v3 setNeedsUpdateConstraints];
}

- (void)updateViewConstraints
{
  v3 = [(HUUtilityDiscoverySetupViewController *)self providerSelectionTableView];
  [v3 contentSize];
  v5 = v4;
  v6 = [(HUUtilityDiscoverySetupViewController *)self providerTableViewHeightConstraint];
  [v6 setConstant:v5];

  v7.receiver = self;
  v7.super_class = HUUtilityDiscoverySetupViewController;
  [(HUUtilityDiscoverySetupViewController *)&v7 updateViewConstraints];
}

- (void)viewDidAppear:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HUUtilityDiscoverySetupViewController *)self view];
    v6 = [(HUUtilityDiscoverySetupViewController *)self contentView];
    v7 = [(HUUtilityDiscoverySetupViewController *)self providerSelectionTableView];
    v8 = 138413314;
    v9 = self;
    v10 = 2080;
    v11 = "[HUUtilityDiscoverySetupViewController viewDidAppear:]";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s: HUUtilityDiscoverySetupViewController\nself.view:%@\nself.contentView: %@\nself.tableView: %@", &v8, 0x34u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = HUUtilityDiscoverySetupViewController;
  [(OBBaseWelcomeController *)&v6 viewWillDisappear:a3];
  if ([(HUUtilityDiscoverySetupViewController *)self isMovingFromParentViewController])
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v8 = self;
      v9 = 2080;
      v10 = "[HUUtilityDiscoverySetupViewController viewWillDisappear:]";
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped BACK button", buf, 0x16u);
    }

    v5 = [(HUUtilityDiscoverySetupViewController *)self delegate];
    [v5 viewControllerDidGoBack:self];
  }
}

- (void)_buttonAction
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v8 = self;
    v9 = 2080;
    v10 = "[HUUtilityDiscoverySetupViewController _buttonAction]";
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s IN Menu action", buf, 0x16u);
  }

  v4 = [(HUUtilityDiscoverySetupViewController *)self _fetchUtilityConfigAndCheckTAF];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HUUtilityDiscoverySetupViewController__buttonAction__block_invoke;
  v6[3] = &unk_277DBE7E0;
  v6[4] = self;
  v5 = [v4 addCompletionBlock:v6];
}

void __54__HUUtilityDiscoverySetupViewController__buttonAction__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      *buf = 138412546;
      v22 = v18;
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "%@: completion error (%@)", buf, 0x16u);
    }

    v9 = [*(a1 + 32) delegate];
    v10 = *(a1 + 32);
    v19 = @"HUUtilityDiscoveryOnboardingKey_UserInput";
    v20 = &unk_2824918F8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [v9 viewController:v10 didFinishWithConfigurationResults:v11];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v22 = v12;
      v23 = 1024;
      LODWORD(v24) = [v5 BOOLValue];
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: utility configuration fetched. TAF result %{BOOL}d", buf, 0x12u);
    }

    [*(a1 + 32) setTafEnabledForSelectedUtility:{objc_msgSend(v5, "BOOLValue")}];
    v13 = [v5 BOOLValue];
    v9 = HFLogForCategory();
    v14 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v14)
      {
        v15 = *(a1 + 32);
        *buf = 138412290;
        v22 = v15;
        _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@: Showing Login with Password button.", buf, 0xCu);
      }

      v9 = [*(a1 + 32) buttonTray];
      v16 = [*(a1 + 32) accountLoginButton];
      [v9 addButton:v16];
    }

    else if (v14)
    {
      v17 = *(a1 + 32);
      *buf = 138412290;
      v22 = v17;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@: Login with Password button NOT shown. Continue button will be used for OAuth.", buf, 0xCu);
    }
  }
}

- (void)_startOAuthLogin:(id)a3
{
  v4 = a3;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 13;
  [(HUUtilityDiscoverySetupViewController *)self _showSpinner];
  v5 = [_TtC6HomeUI17OAuthLoginManager alloc];
  v6 = [(HUUtilityDiscoverySetupViewController *)self config];
  v7 = [v6 OAuthURL];
  v8 = [(OAuthLoginManager *)v5 initWithAuthURL:v7 presentingContext:self];

  v9 = MEMORY[0x277D2C900];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __58__HUUtilityDiscoverySetupViewController__startOAuthLogin___block_invoke;
  v24[3] = &unk_277DB8200;
  v10 = v8;
  v25 = v10;
  v26 = self;
  v11 = [v9 futureWithBlock:v24];
  v12 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v13 = [v11 reschedule:v12];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__HUUtilityDiscoverySetupViewController__startOAuthLogin___block_invoke_182;
  v21[3] = &unk_277DBE858;
  v21[4] = self;
  v23 = v27;
  v14 = v4;
  v22 = v14;
  v15 = [v13 flatMap:v21];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__HUUtilityDiscoverySetupViewController__startOAuthLogin___block_invoke_188;
  v18[3] = &unk_277DBE880;
  v18[4] = self;
  v16 = v14;
  v19 = v16;
  v20 = v27;
  v17 = [v15 recover:v18];

  _Block_object_dispose(v27, 8);
}

void __58__HUUtilityDiscoverySetupViewController__startOAuthLogin___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HUUtilityDiscoverySetupViewController__startOAuthLogin___block_invoke_2;
  v7[3] = &unk_277DBE808;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  [v5 startAuthenticationWithPresentationContext:v4 completion:v7];
}

void __58__HUUtilityDiscoverySetupViewController__startOAuthLogin___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v11 = 138412546;
      v12 = v9;
      v13 = 2080;
      v14 = "[HUUtilityDiscoverySetupViewController _startOAuthLogin:]_block_invoke_2";
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%s Found OAuth error", &v11, 0x16u);
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    if (v8)
    {
      v10 = *(a1 + 32);
      v11 = 138412802;
      v12 = v10;
      v13 = 2080;
      v14 = "[HUUtilityDiscoverySetupViewController _startOAuthLogin:]_block_invoke";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%s Found authCode: %@", &v11, 0x20u);
    }

    [*(a1 + 40) finishWithResult:v5];
  }
}

id __58__HUUtilityDiscoverySetupViewController__startOAuthLogin___block_invoke_182(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__HUUtilityDiscoverySetupViewController__startOAuthLogin___block_invoke_2_183;
  v15[3] = &unk_277DB8200;
  v15[4] = *(a1 + 32);
  v16 = v3;
  v5 = v3;
  v6 = [v4 futureWithBlock:v15];
  v7 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v8 = [v6 reschedule:v7];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__HUUtilityDiscoverySetupViewController__startOAuthLogin___block_invoke_185;
  v13[3] = &unk_277DBE830;
  v13[4] = *(a1 + 32);
  v12 = *(a1 + 40);
  v9 = v12;
  v14 = v12;
  v10 = [v8 addSuccessBlock:v13];

  return v10;
}

void __58__HUUtilityDiscoverySetupViewController__startOAuthLogin___block_invoke_2_183(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) continueOnboardingButton];
  [v4 setEnabled:0];

  v5 = [*(a1 + 32) accountLoginButton];
  [v5 setEnabled:0];

  v6 = [*(a1 + 32) onboardingContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HUUtilityDiscoverySetupViewController__startOAuthLogin___block_invoke_3;
  v9[3] = &unk_277DB7E90;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v3;
  v8 = v3;
  [v6 createAccessTokenWithAuthCode:v7 completionHandler:v9];
}

void __58__HUUtilityDiscoverySetupViewController__startOAuthLogin___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "%@: Error generating tokens %@", &v8, 0x16u);
    }

    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 136315394;
      v9 = "[HUUtilityDiscoverySetupViewController _startOAuthLogin:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%s(%@) ---: Generated tokens", &v8, 0x16u);
    }

    [*(a1 + 40) finishWithNoResult];
  }
}

void __58__HUUtilityDiscoverySetupViewController__startOAuthLogin___block_invoke_185(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _hideSpinner];
  *(*(*(a1 + 48) + 8) + 24) = 17;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 48) + 8) + 24)];
  [*(a1 + 40) setObject:v2 forKeyedSubscript:@"HUUtilityDiscoveryOnboardingKey_UserInput"];

  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 138412802;
    v8 = v4;
    v9 = 2080;
    v10 = "[HUUtilityDiscoverySetupViewController _startOAuthLogin:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@ Finished %s with results  %@", &v7, 0x20u);
  }

  v6 = [*(a1 + 32) delegate];
  [v6 viewController:*(a1 + 32) didFinishWithConfigurationResults:*(a1 + 40)];
}

id __58__HUUtilityDiscoverySetupViewController__startOAuthLogin___block_invoke_188(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v18 = *(a1 + 32);
    v20 = 138412546;
    v21 = v18;
    v22 = 2112;
    v23 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "%@: Future failed (%@)", &v20, 0x16u);
  }

  [*(a1 + 32) _hideSpinner];
  v5 = [v3 domain];
  if ([v5 isEqual:*MEMORY[0x277CBA8B8]])
  {
    v6 = [v3 code];

    if (v6 == 1)
    {
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v20 = 138412546;
        v21 = v8;
        v22 = 2080;
        v23 = "[HUUtilityDiscoverySetupViewController _startOAuthLogin:]_block_invoke";
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%s User canceled OAuth session", &v20, 0x16u);
      }

      v9 = [*(a1 + 32) continueOnboardingButton];
      [v9 setEnabled:1];

      v10 = [*(a1 + 32) accountLoginButton];
      [v10 setEnabled:1];
      goto LABEL_14;
    }
  }

  else
  {
  }

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v19 = *(a1 + 32);
    v20 = 138412546;
    v21 = v19;
    v22 = 2080;
    v23 = "[HUUtilityDiscoverySetupViewController _startOAuthLogin:]_block_invoke";
    _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "%@:%s In failure block. Found error during OAuth session", &v20, 0x16u);
  }

  [*(a1 + 40) setObject:v3 forKeyedSubscript:@"HUUtilityDiscoveryOnboardingKey_Error"];
  *(*(*(a1 + 48) + 8) + 24) = 13;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 48) + 8) + 24)];
  [*(a1 + 40) setObject:v12 forKeyedSubscript:@"HUUtilityDiscoveryOnboardingKey_UserInput"];

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v20 = 138412802;
    v21 = v14;
    v22 = 2080;
    v23 = "[HUUtilityDiscoverySetupViewController _startOAuthLogin:]_block_invoke";
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@ Finished %s with results  %@", &v20, 0x20u);
  }

  v10 = [*(a1 + 32) delegate];
  [v10 viewController:*(a1 + 32) didFinishWithConfigurationResults:*(a1 + 40)];
LABEL_14:

  v16 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v16;
}

- (void)_showSpinner
{
  v8 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v8];
  v4 = [(OBBaseWelcomeController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = [(HUUtilityDiscoverySetupViewController *)self continueOnboardingButton];
  [v5 setEnabled:0];

  v6 = [(HUUtilityDiscoverySetupViewController *)self accountLoginButton];
  [v6 setEnabled:0];

  v7 = [(OBBaseWelcomeController *)self navigationItem];
  [v7 setHidesBackButton:1];

  [v8 startAnimating];
}

- (void)_hideSpinner
{
  objc_opt_class();
  v3 = [(OBBaseWelcomeController *)self navigationItem];
  v4 = [v3 rightBarButtonItem];
  v5 = [v4 customView];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;

  v7 = [(OBBaseWelcomeController *)self navigationItem];
  [v7 setRightBarButtonItem:0];

  v8 = [(HUUtilityDiscoverySetupViewController *)self continueOnboardingButton];
  [v8 setEnabled:1];

  v9 = [(HUUtilityDiscoverySetupViewController *)self accountLoginButton];
  [v9 setEnabled:1];

  v10 = [(OBBaseWelcomeController *)self navigationItem];
  [v10 setHidesBackButton:0];

  [v11 stopAnimating];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"Cell"];
  v8 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  v9 = [v8 allUtilities];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  v11 = [v10 objectForKeyedSubscript:@"longName"];
  v12 = [v10 objectForKeyedSubscript:@"name"];
  v13 = [v7 defaultContentConfiguration];
  [v13 setText:v12];
  if (([v12 isEqualToString:v11] & 1) == 0)
  {
    [v13 setSecondaryText:v11];
    v14 = [MEMORY[0x277D75348] secondaryLabelColor];
    v15 = [v13 secondaryTextProperties];
    [v15 setColor:v14];
  }

  objc_opt_class();
  v16 = [v10 objectForKeyedSubscript:@"logo"];
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v18)
  {
    [v13 setImage:v18];
    v19 = [v13 image];
    [v19 setAccessibilityIdentifier:@"Home.OnboardingView.Utility.Logo"];

    v20 = [v13 imageProperties];
    [v20 setMaximumSize:{37.0, 37.0}];

    v21 = [v13 imageProperties];
    [v21 setCornerRadius:8.325];

    v22 = *MEMORY[0x277D76C88];
    v23 = [v13 imageProperties];
    [v23 setReservedLayoutSize:{37.0, v22}];
  }

  [v7 setContentConfiguration:v13];
  v24 = HFLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = self;
    _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "%@ Finished set up of cell", &v27, 0xCu);
  }

  v25 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v7 setBackgroundColor:v25];

  if (!self->_singleUtilityMode && ![v6 row])
  {
    [v7 setAccessoryType:3];
  }

  [v7 setAccessibilityIdentifier:@"Home.OnboardingView.Utility.Setup.Cell"];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext:a3];
  v5 = [v4 allUtilities];
  v6 = [v5 count];

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = self;
    v33 = 2080;
    v34 = "[HUUtilityDiscoverySetupViewController tableView:didSelectRowAtIndexPath:]";
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%s SELECTED ROW", buf, 0x16u);
  }

  v25 = [v6 cellForRowAtIndexPath:v7];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [v6 indexPathsForVisibleRows];
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        objc_opt_class();
        v15 = [v6 cellForRowAtIndexPath:v14];
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        [v17 setAccessoryType:0];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  [v25 setAccessoryType:3];
  v18 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  v19 = [v18 allUtilities];
  v20 = [v19 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
  v21 = [v20 objectForKeyedSubscript:@"utilityID"];
  [(HUUtilityDiscoverySetupViewController *)self setSelectedUtilityID:v21];

  v22 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  v23 = [v22 allUtilities];
  v24 = [v23 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
  [(HUUtilityDiscoverySetupViewController *)self setSelectedUtilityInfo:v24];

  [(HUUtilityDiscoverySetupViewController *)self _buttonAction];
}

- (id)presentationAnchorForWebAuthenticationSession:(id)a3
{
  v3 = [(HUUtilityDiscoverySetupViewController *)self view];
  v4 = [v3 window];

  return v4;
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_TtC6HomeUI24UtilityOnboardingContext)onboardingContext
{
  WeakRetained = objc_loadWeakRetained(&self->_onboardingContext);

  return WeakRetained;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end