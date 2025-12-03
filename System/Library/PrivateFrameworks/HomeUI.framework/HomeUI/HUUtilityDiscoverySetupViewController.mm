@interface HUUtilityDiscoverySetupViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUtilityDiscoverySetupViewController)initWithHome:(id)home allUtilities:(id)utilities;
- (HUUtilityDiscoverySetupViewController)initWithHome:(id)home onboardingContext:(id)context;
- (UIEdgeInsets)contentInsets;
- (_TtC6HomeUI24UtilityOnboardingContext)onboardingContext;
- (id)_checkTAF:(id)f;
- (id)_fetchUtilityConfig;
- (id)_fetchUtilityConfigAndCheckTAF;
- (id)presentationAnchorForWebAuthenticationSession:(id)session;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_buttonAction;
- (void)_cancelUtilityOnboarding:(id)onboarding;
- (void)_continueOnboarding:(id)onboarding;
- (void)_hideSpinner;
- (void)_loginWithAccount:(id)account;
- (void)_showSpinner;
- (void)_startOAuthLogin:(id)login;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation HUUtilityDiscoverySetupViewController

- (HUUtilityDiscoverySetupViewController)initWithHome:(id)home allUtilities:(id)utilities
{
  homeCopy = home;
  utilitiesCopy = utilities;
  v9 = [utilitiesCopy count];
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
    if (!utilitiesCopy || ![utilitiesCopy count])
    {
      [(HUUtilityDiscoverySetupViewController *)v15 setErrorFetchingUtilities:1];
    }

    objc_storeStrong(&v15->_home, home);
    *&v15->_contentInsets.top = 0u;
    *&v15->_contentInsets.bottom = 0u;
    objc_storeStrong(&v15->_foundUtilities, utilities);
  }

  return v15;
}

- (HUUtilityDiscoverySetupViewController)initWithHome:(id)home onboardingContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  homeCopy = home;
  v8 = [HUUtilityDiscoverySetupViewController alloc];
  allUtilities = [contextCopy allUtilities];
  v10 = [(HUUtilityDiscoverySetupViewController *)v8 initWithHome:homeCopy allUtilities:allUtilities];

  objc_storeWeak(&v10->_onboardingContext, contextCopy);
  allUtilities2 = [contextCopy allUtilities];
  v12 = [allUtilities2 count];

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
      allUtilities3 = [contextCopy allUtilities];
      v17 = 136315394;
      v18 = "[HUUtilityDiscoverySetupViewController initWithHome:onboardingContext:]";
      v19 = 2048;
      v20 = [allUtilities3 count];
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%s NOT single utility mode. Count = %lu", &v17, 0x16u);
    }

    v10->_singleUtilityMode = 0;
  }

  return v10;
}

- (void)_continueOnboarding:(id)onboarding
{
  v28 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  config = [(HUUtilityDiscoverySetupViewController *)self config];

  if (!config)
  {
    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      selfCopy4 = self;
      v24 = 2080;
      v25 = "[HUUtilityDiscoverySetupViewController _continueOnboarding:]";
      _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "%@: Configuration is nil  %s", &v22, 0x16u);
    }

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:13];
    [dictionary setObject:v20 forKeyedSubscript:@"HUUtilityDiscoveryOnboardingKey_UserInput"];

    v18 = HFLogForCategory();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

LABEL_13:
    v22 = 138412802;
    selfCopy4 = self;
    v24 = 2080;
    v25 = "[HUUtilityDiscoverySetupViewController _continueOnboarding:]";
    v26 = 2112;
    v27 = dictionary;
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@ Finished %s with results  %@", &v22, 0x20u);
LABEL_14:

    delegate = [(HUUtilityDiscoverySetupViewController *)self delegate];
    [delegate viewController:self didFinishWithConfigurationResults:dictionary];

    goto LABEL_18;
  }

  config2 = [(HUUtilityDiscoverySetupViewController *)self config];
  onboardingContext = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  [onboardingContext setConfig:config2];

  selectedUtilityInfo = [(HUUtilityDiscoverySetupViewController *)self selectedUtilityInfo];
  v9 = [selectedUtilityInfo objectForKeyedSubscript:@"utilityID"];
  onboardingContext2 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  [onboardingContext2 setUtilityID:v9];

  objc_opt_class();
  selectedUtilityInfo2 = [(HUUtilityDiscoverySetupViewController *)self selectedUtilityInfo];
  v12 = [selectedUtilityInfo2 objectForKeyedSubscript:@"logo"];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  onboardingContext3 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  [onboardingContext3 setUtilityLogo:v14];

  LODWORD(onboardingContext3) = [(HUUtilityDiscoverySetupViewController *)self tafEnabledForSelectedUtility];
  v16 = HFLogForCategory();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (onboardingContext3)
  {
    if (v17)
    {
      v22 = 138412546;
      selfCopy4 = self;
      v24 = 2080;
      v25 = "[HUUtilityDiscoverySetupViewController _continueOnboarding:]";
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@: Continue onboarding with TAF  %s", &v22, 0x16u);
    }

    [dictionary setObject:&unk_2824918C8 forKeyedSubscript:@"HUUtilityDiscoveryOnboardingKey_UserInput"];
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
    selfCopy4 = self;
    v24 = 2080;
    v25 = "[HUUtilityDiscoverySetupViewController _continueOnboarding:]";
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@: Continue onboarding with OAuth  %s", &v22, 0x16u);
  }

  [(HUUtilityDiscoverySetupViewController *)self _startOAuthLogin:dictionary];
LABEL_18:
}

- (void)_loginWithAccount:(id)account
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    selfCopy = self;
    v18 = 2080;
    v19 = "[HUUtilityDiscoverySetupViewController _loginWithAccount:]";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped button", &v16, 0x16u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  config = [(HUUtilityDiscoverySetupViewController *)self config];
  onboardingContext = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  [onboardingContext setConfig:config];

  selectedUtilityID = [(HUUtilityDiscoverySetupViewController *)self selectedUtilityID];
  onboardingContext2 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  [onboardingContext2 setUtilityID:selectedUtilityID];

  objc_opt_class();
  selectedUtilityInfo = [(HUUtilityDiscoverySetupViewController *)self selectedUtilityInfo];
  v11 = [selectedUtilityInfo objectForKeyedSubscript:@"logo"];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  onboardingContext3 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  [onboardingContext3 setUtilityLogo:v13];

  onboardingContext4 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  [onboardingContext4 setOnboardingMethod:2];

  [(HUUtilityDiscoverySetupViewController *)self _startOAuthLogin:dictionary];
}

- (void)_cancelUtilityOnboarding:(id)onboarding
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v12 = 2080;
    v13 = "[HUUtilityDiscoverySetupViewController _cancelUtilityOnboarding:]";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped button", buf, 0x16u);
  }

  selectedUtilityID = [(HUUtilityDiscoverySetupViewController *)self selectedUtilityID];
  [HUHomeEnergyAnalyticsHelper sendUtilityOnboardingCancelledEventWithUtilityID:selectedUtilityID sourceViewController:0];

  delegate = [(HUUtilityDiscoverySetupViewController *)self delegate];
  v8 = @"HUUtilityDiscoveryOnboardingKey_UserInput";
  v9 = &unk_2824918E0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v7];
}

- (id)_fetchUtilityConfig
{
  v16 = *MEMORY[0x277D85DE8];
  selectedUtilityID = [(HUUtilityDiscoverySetupViewController *)self selectedUtilityID];
  if (selectedUtilityID && (v4 = selectedUtilityID, -[HUUtilityDiscoverySetupViewController selectedUtilityID](self, "selectedUtilityID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, v6))
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__HUUtilityDiscoverySetupViewController__fetchUtilityConfig__block_invoke;
    v13[3] = &unk_277DB7580;
    v13[4] = self;
    na_genericError = [MEMORY[0x277D2C900] futureWithBlock:v13];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v9 = [na_genericError reschedule:mainThreadScheduler];
  }

  else
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "%@: Selected utility ID is empty", buf, 0xCu);
    }

    v11 = MEMORY[0x277D2C900];
    na_genericError = [MEMORY[0x277CCA9B8] na_genericError];
    v9 = [v11 futureWithError:na_genericError];
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
  selectedUtilityID = [(HUUtilityDiscoverySetupViewController *)self selectedUtilityID];
  if (selectedUtilityID && (v4 = selectedUtilityID, -[HUUtilityDiscoverySetupViewController selectedUtilityID](self, "selectedUtilityID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, v6))
  {
    _fetchUtilityConfig = [(HUUtilityDiscoverySetupViewController *)self _fetchUtilityConfig];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__HUUtilityDiscoverySetupViewController__fetchUtilityConfigAndCheckTAF__block_invoke;
    v14[3] = &unk_277DBE7B8;
    v14[4] = self;
    v8 = [_fetchUtilityConfig flatMap:v14];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v10 = [v8 reschedule:mainThreadScheduler];
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "%@: Selected utility ID is empty", buf, 0xCu);
    }

    v12 = MEMORY[0x277D2C900];
    _fetchUtilityConfig = [MEMORY[0x277CCA9B8] na_genericError];
    v10 = [v12 futureWithError:_fetchUtilityConfig];
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

- (id)_checkTAF:(id)f
{
  fCopy = f;
  v5 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HUUtilityDiscoverySetupViewController__checkTAF___block_invoke;
  v9[3] = &unk_277DB8200;
  v9[4] = self;
  v10 = fCopy;
  v6 = fCopy;
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
  headerView = [(HUUtilityDiscoverySetupViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282492F68];

  if ([(HUUtilityDiscoverySetupViewController *)self errorFetchingUtilities])
  {
    headerView2 = [(HUUtilityDiscoverySetupViewController *)self headerView];
    v6 = _HULocalizedStringWithDefaultValue(@"HUUtilityOnboarding_CannotOnboard_Title", @"HUUtilityOnboarding_CannotOnboard_Title", 1);
    [headerView2 setTitle:v6];

    headerView3 = [(HUUtilityDiscoverySetupViewController *)self headerView];
    v8 = _HULocalizedStringWithDefaultValue(@"HUUtilityOnboarding_CannotOnboard_Detail", @"HUUtilityOnboarding_CannotOnboard_Detail", 1);
    [headerView3 setDetailText:v8];

    boldButton = [MEMORY[0x277D37618] boldButton];
    [boldButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
    [boldButton setTitle:v10 forState:0];

    [boldButton setAccessibilityIdentifier:@"Home.OnboardingView.Utility.SetUp.DoneButton"];
    [boldButton addTarget:self action:sel__cancelUtilityOnboarding_ forControlEvents:64];
    buttonTray = [(HUUtilityDiscoverySetupViewController *)self buttonTray];
    [buttonTray addButton:boldButton];

    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy3 = self;
      v80 = 2080;
      v81 = "[HUUtilityDiscoverySetupViewController viewDidLoad]";
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@:%s: ERROR fetching utilities HUUtilityDiscoverySetupViewController. Presenting error view.", buf, 0x16u);
    }
  }

  else
  {
    boldButton2 = [MEMORY[0x277D37618] boldButton];
    [(HUUtilityDiscoverySetupViewController *)self setContinueOnboardingButton:boldButton2];

    continueOnboardingButton = [(HUUtilityDiscoverySetupViewController *)self continueOnboardingButton];
    [continueOnboardingButton setTranslatesAutoresizingMaskIntoConstraints:0];

    continueOnboardingButton2 = [(HUUtilityDiscoverySetupViewController *)self continueOnboardingButton];
    v16 = _HULocalizedStringWithDefaultValue(@"HUContinueTitle", @"HUContinueTitle", 1);
    [continueOnboardingButton2 setTitle:v16 forState:0];

    continueOnboardingButton3 = [(HUUtilityDiscoverySetupViewController *)self continueOnboardingButton];
    [continueOnboardingButton3 setAccessibilityIdentifier:@"Home.OnboardingView.Utility.SetUp.ContinueButton"];

    linkButton = [MEMORY[0x277D37650] linkButton];
    [(HUUtilityDiscoverySetupViewController *)self setAccountLoginButton:linkButton];

    accountLoginButton = [(HUUtilityDiscoverySetupViewController *)self accountLoginButton];
    [accountLoginButton setTranslatesAutoresizingMaskIntoConstraints:0];

    accountLoginButton2 = [(HUUtilityDiscoverySetupViewController *)self accountLoginButton];
    v21 = _HULocalizedStringWithDefaultValue(@"HUUtilityOnboarding_AccountLogin_Button", @"HUUtilityOnboarding_AccountLogin_Button", 1);
    [accountLoginButton2 setTitle:v21 forState:0];

    accountLoginButton3 = [(HUUtilityDiscoverySetupViewController *)self accountLoginButton];
    [accountLoginButton3 setAccessibilityIdentifier:@"Home.OnboardingView.Utility.SetUp.UseUtilityAccountButton"];

    continueOnboardingButton4 = [(HUUtilityDiscoverySetupViewController *)self continueOnboardingButton];
    [continueOnboardingButton4 addTarget:self action:sel__continueOnboarding_ forControlEvents:64];

    accountLoginButton4 = [(HUUtilityDiscoverySetupViewController *)self accountLoginButton];
    [accountLoginButton4 addTarget:self action:sel__loginWithAccount_ forControlEvents:64];

    buttonTray2 = [(HUUtilityDiscoverySetupViewController *)self buttonTray];
    continueOnboardingButton5 = [(HUUtilityDiscoverySetupViewController *)self continueOnboardingButton];
    [buttonTray2 addButton:continueOnboardingButton5];

    onboardingContext = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
    allUtilities = [onboardingContext allUtilities];
    v29 = [allUtilities objectAtIndexedSubscript:0];
    v30 = [v29 objectForKeyedSubscript:@"utilityID"];
    [(HUUtilityDiscoverySetupViewController *)self setSelectedUtilityID:v30];

    onboardingContext2 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
    allUtilities2 = [onboardingContext2 allUtilities];
    v33 = [allUtilities2 objectAtIndexedSubscript:0];
    [(HUUtilityDiscoverySetupViewController *)self setSelectedUtilityInfo:v33];

    [(HUUtilityDiscoverySetupViewController *)self _buttonAction];
    v34 = objc_alloc(MEMORY[0x277D75B40]);
    v35 = [v34 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    providerSelectionTableView = self->_providerSelectionTableView;
    self->_providerSelectionTableView = v35;

    v37 = HFLogForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      view = [(HUUtilityDiscoverySetupViewController *)self view];
      contentView = [(HUUtilityDiscoverySetupViewController *)self contentView];
      providerSelectionTableView = [(HUUtilityDiscoverySetupViewController *)self providerSelectionTableView];
      *buf = 138413314;
      selfCopy3 = self;
      v80 = 2080;
      v81 = "[HUUtilityDiscoverySetupViewController viewDidLoad]";
      v82 = 2112;
      v83 = view;
      v84 = 2112;
      v85 = contentView;
      v86 = 2112;
      v87 = providerSelectionTableView;
      _os_log_impl(&dword_20CEB6000, v37, OS_LOG_TYPE_DEFAULT, "%@:%s: HUUtilityDiscoverySetupViewController\n self.view: %@\n self.contentView: %@\n self.tableView: %@", buf, 0x34u);
    }

    [(UITableView *)self->_providerSelectionTableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)self->_providerSelectionTableView setAllowsSelection:[(HUUtilityDiscoverySetupViewController *)self singleUtilityMode]^ 1];
    [(UITableView *)self->_providerSelectionTableView setScrollEnabled:0];
    [(UITableView *)self->_providerSelectionTableView setDelegate:self];
    [(UITableView *)self->_providerSelectionTableView setDataSource:self];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITableView *)self->_providerSelectionTableView setBackgroundColor:clearColor];

    [(UITableView *)self->_providerSelectionTableView registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];
    contentView2 = [(HUUtilityDiscoverySetupViewController *)self contentView];
    [contentView2 addSubview:self->_providerSelectionTableView];

    heightAnchor = [(UITableView *)self->_providerSelectionTableView heightAnchor];
    v44 = [heightAnchor constraintEqualToConstant:1.0];
    providerTableViewHeightConstraint = self->_providerTableViewHeightConstraint;
    self->_providerTableViewHeightConstraint = v44;

    v64 = MEMORY[0x277CCAAD0];
    providerSelectionTableView2 = [(HUUtilityDiscoverySetupViewController *)self providerSelectionTableView];
    leadingAnchor = [providerSelectionTableView2 leadingAnchor];
    contentView3 = [(HUUtilityDiscoverySetupViewController *)self contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v71 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v77[0] = v71;
    providerSelectionTableView3 = [(HUUtilityDiscoverySetupViewController *)self providerSelectionTableView];
    trailingAnchor = [providerSelectionTableView3 trailingAnchor];
    contentView4 = [(HUUtilityDiscoverySetupViewController *)self contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v66 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v77[1] = v66;
    providerSelectionTableView4 = [(HUUtilityDiscoverySetupViewController *)self providerSelectionTableView];
    topAnchor = [providerSelectionTableView4 topAnchor];
    contentView5 = [(HUUtilityDiscoverySetupViewController *)self contentView];
    topAnchor2 = [contentView5 topAnchor];
    v60 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v77[2] = v60;
    providerSelectionTableView5 = [(HUUtilityDiscoverySetupViewController *)self providerSelectionTableView];
    bottomAnchor = [providerSelectionTableView5 bottomAnchor];
    contentView6 = [(HUUtilityDiscoverySetupViewController *)self contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v47 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v77[3] = v47;
    providerSelectionTableView6 = [(HUUtilityDiscoverySetupViewController *)self providerSelectionTableView];
    centerXAnchor = [providerSelectionTableView6 centerXAnchor];
    contentView7 = [(HUUtilityDiscoverySetupViewController *)self contentView];
    centerXAnchor2 = [contentView7 centerXAnchor];
    v52 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v77[4] = v52;
    providerTableViewHeightConstraint = [(HUUtilityDiscoverySetupViewController *)self providerTableViewHeightConstraint];
    v77[5] = providerTableViewHeightConstraint;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:6];
    [v64 activateConstraints:v54];

    boldButton = [(HUUtilityDiscoverySetupViewController *)self contentView];
    [boldButton setClipsToBounds:1];
  }

  v55 = HFLogForCategory();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy3 = self;
    v80 = 2080;
    v81 = "[HUUtilityDiscoverySetupViewController viewDidLoad]";
    _os_log_impl(&dword_20CEB6000, v55, OS_LOG_TYPE_DEFAULT, "%@:%s: presented: HUUtilityDiscoverySetupViewController", buf, 0x16u);
  }

  foundUtilities = [(HUUtilityDiscoverySetupViewController *)self foundUtilities];
  +[HUHomeEnergyAnalyticsHelper sendUtilityIntroAndSelectionSheetViewEventWithNumOfUtilities:](HUHomeEnergyAnalyticsHelper, "sendUtilityIntroAndSelectionSheetViewEventWithNumOfUtilities:", [foundUtilities count]);
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HUUtilityDiscoverySetupViewController;
  [(HUUtilityDiscoverySetupViewController *)&v4 viewWillLayoutSubviews];
  view = [(HUUtilityDiscoverySetupViewController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)updateViewConstraints
{
  providerSelectionTableView = [(HUUtilityDiscoverySetupViewController *)self providerSelectionTableView];
  [providerSelectionTableView contentSize];
  v5 = v4;
  providerTableViewHeightConstraint = [(HUUtilityDiscoverySetupViewController *)self providerTableViewHeightConstraint];
  [providerTableViewHeightConstraint setConstant:v5];

  v7.receiver = self;
  v7.super_class = HUUtilityDiscoverySetupViewController;
  [(HUUtilityDiscoverySetupViewController *)&v7 updateViewConstraints];
}

- (void)viewDidAppear:(BOOL)appear
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    view = [(HUUtilityDiscoverySetupViewController *)self view];
    contentView = [(HUUtilityDiscoverySetupViewController *)self contentView];
    providerSelectionTableView = [(HUUtilityDiscoverySetupViewController *)self providerSelectionTableView];
    v8 = 138413314;
    selfCopy = self;
    v10 = 2080;
    v11 = "[HUUtilityDiscoverySetupViewController viewDidAppear:]";
    v12 = 2112;
    v13 = view;
    v14 = 2112;
    v15 = contentView;
    v16 = 2112;
    v17 = providerSelectionTableView;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s: HUUtilityDiscoverySetupViewController\nself.view:%@\nself.contentView: %@\nself.tableView: %@", &v8, 0x34u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v11 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = HUUtilityDiscoverySetupViewController;
  [(OBBaseWelcomeController *)&v6 viewWillDisappear:disappear];
  if ([(HUUtilityDiscoverySetupViewController *)self isMovingFromParentViewController])
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v9 = 2080;
      v10 = "[HUUtilityDiscoverySetupViewController viewWillDisappear:]";
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped BACK button", buf, 0x16u);
    }

    delegate = [(HUUtilityDiscoverySetupViewController *)self delegate];
    [delegate viewControllerDidGoBack:self];
  }
}

- (void)_buttonAction
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v9 = 2080;
    v10 = "[HUUtilityDiscoverySetupViewController _buttonAction]";
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s IN Menu action", buf, 0x16u);
  }

  _fetchUtilityConfigAndCheckTAF = [(HUUtilityDiscoverySetupViewController *)self _fetchUtilityConfigAndCheckTAF];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HUUtilityDiscoverySetupViewController__buttonAction__block_invoke;
  v6[3] = &unk_277DBE7E0;
  v6[4] = self;
  v5 = [_fetchUtilityConfigAndCheckTAF addCompletionBlock:v6];
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

- (void)_startOAuthLogin:(id)login
{
  loginCopy = login;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 13;
  [(HUUtilityDiscoverySetupViewController *)self _showSpinner];
  v5 = [_TtC6HomeUI17OAuthLoginManager alloc];
  config = [(HUUtilityDiscoverySetupViewController *)self config];
  oAuthURL = [config OAuthURL];
  v8 = [(OAuthLoginManager *)v5 initWithAuthURL:oAuthURL presentingContext:self];

  v9 = MEMORY[0x277D2C900];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __58__HUUtilityDiscoverySetupViewController__startOAuthLogin___block_invoke;
  v24[3] = &unk_277DB8200;
  v10 = v8;
  v25 = v10;
  selfCopy = self;
  v11 = [v9 futureWithBlock:v24];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v13 = [v11 reschedule:mainThreadScheduler];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__HUUtilityDiscoverySetupViewController__startOAuthLogin___block_invoke_182;
  v21[3] = &unk_277DBE858;
  v21[4] = self;
  v23 = v27;
  v14 = loginCopy;
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
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  continueOnboardingButton = [(HUUtilityDiscoverySetupViewController *)self continueOnboardingButton];
  [continueOnboardingButton setEnabled:0];

  accountLoginButton = [(HUUtilityDiscoverySetupViewController *)self accountLoginButton];
  [accountLoginButton setEnabled:0];

  navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem2 setHidesBackButton:1];

  [v8 startAnimating];
}

- (void)_hideSpinner
{
  objc_opt_class();
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  customView = [rightBarButtonItem customView];
  if (objc_opt_isKindOfClass())
  {
    v6 = customView;
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;

  navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:0];

  continueOnboardingButton = [(HUUtilityDiscoverySetupViewController *)self continueOnboardingButton];
  [continueOnboardingButton setEnabled:1];

  accountLoginButton = [(HUUtilityDiscoverySetupViewController *)self accountLoginButton];
  [accountLoginButton setEnabled:1];

  navigationItem3 = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem3 setHidesBackButton:0];

  [v11 stopAnimating];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v29 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"Cell"];
  onboardingContext = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  allUtilities = [onboardingContext allUtilities];
  v10 = [allUtilities objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v11 = [v10 objectForKeyedSubscript:@"longName"];
  v12 = [v10 objectForKeyedSubscript:@"name"];
  defaultContentConfiguration = [v7 defaultContentConfiguration];
  [defaultContentConfiguration setText:v12];
  if (([v12 isEqualToString:v11] & 1) == 0)
  {
    [defaultContentConfiguration setSecondaryText:v11];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
    [secondaryTextProperties setColor:secondaryLabelColor];
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
    [defaultContentConfiguration setImage:v18];
    image = [defaultContentConfiguration image];
    [image setAccessibilityIdentifier:@"Home.OnboardingView.Utility.Logo"];

    imageProperties = [defaultContentConfiguration imageProperties];
    [imageProperties setMaximumSize:{37.0, 37.0}];

    imageProperties2 = [defaultContentConfiguration imageProperties];
    [imageProperties2 setCornerRadius:8.325];

    v22 = *MEMORY[0x277D76C88];
    imageProperties3 = [defaultContentConfiguration imageProperties];
    [imageProperties3 setReservedLayoutSize:{37.0, v22}];
  }

  [v7 setContentConfiguration:defaultContentConfiguration];
  v24 = HFLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "%@ Finished set up of cell", &v27, 0xCu);
  }

  tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v7 setBackgroundColor:tertiarySystemFillColor];

  if (!self->_singleUtilityMode && ![pathCopy row])
  {
    [v7 setAccessoryType:3];
  }

  [v7 setAccessibilityIdentifier:@"Home.OnboardingView.Utility.Setup.Cell"];

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext:view];
  allUtilities = [v4 allUtilities];
  v6 = [allUtilities count];

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v35 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v33 = 2080;
    v34 = "[HUUtilityDiscoverySetupViewController tableView:didSelectRowAtIndexPath:]";
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%s SELECTED ROW", buf, 0x16u);
  }

  v25 = [viewCopy cellForRowAtIndexPath:pathCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  indexPathsForVisibleRows = [viewCopy indexPathsForVisibleRows];
  v10 = [indexPathsForVisibleRows countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleRows);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        objc_opt_class();
        v15 = [viewCopy cellForRowAtIndexPath:v14];
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
      v11 = [indexPathsForVisibleRows countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  [v25 setAccessoryType:3];
  onboardingContext = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  allUtilities = [onboardingContext allUtilities];
  v20 = [allUtilities objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  v21 = [v20 objectForKeyedSubscript:@"utilityID"];
  [(HUUtilityDiscoverySetupViewController *)self setSelectedUtilityID:v21];

  onboardingContext2 = [(HUUtilityDiscoverySetupViewController *)self onboardingContext];
  allUtilities2 = [onboardingContext2 allUtilities];
  v24 = [allUtilities2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  [(HUUtilityDiscoverySetupViewController *)self setSelectedUtilityInfo:v24];

  [(HUUtilityDiscoverySetupViewController *)self _buttonAction];
}

- (id)presentationAnchorForWebAuthenticationSession:(id)session
{
  view = [(HUUtilityDiscoverySetupViewController *)self view];
  window = [view window];

  return window;
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