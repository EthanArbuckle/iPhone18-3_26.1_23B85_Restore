@interface HUUtilityOnboardingTAFViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUtilityOnboardingTAFViewController)initWithContext:(id)context;
- (id)_updateRightBarButton;
- (void)_cancelOnboarding:(id)onboarding;
- (void)_continueTAFWithFutures:(id)futures;
- (void)_doneAccountDetails:(id)details;
- (void)_presentErrorAlert;
- (void)_showSpinner;
- (void)didCompleteAllFields:(BOOL)fields;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)selectedTextField:(id)field;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUUtilityOnboardingTAFViewController

- (HUUtilityOnboardingTAFViewController)initWithContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = [HUUtilityOnboardingTAFItemManager alloc];
  config = [contextCopy config];
  fields = [config fields];
  config2 = [contextCopy config];
  sections = [config2 sections];
  v10 = [(HUUtilityOnboardingTAFItemManager *)v5 initWithDelegate:self fields:fields sections:sections];

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v22 = 2080;
    v23 = "[HUUtilityOnboardingTAFViewController initWithContext:]";
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@:%s created item manager", buf, 0x16u);
  }

  v12 = [[HUUtilityOnboardingTAFTableViewController alloc] initWithContext:contextCopy itemManager:v10 tableViewStyle:1];
  [(HUUtilityOnboardingTAFViewController *)self setTableViewController:v12];

  v13 = _HULocalizedStringWithDefaultValue(@"HUUtilityOnboardingAccountLookup_Title", @"HUUtilityOnboardingAccountLookup_Title", 1);
  v14 = _HULocalizedStringWithDefaultValue(@"HUUtilityDiscoveryTAF_Detail", @"HUUtilityDiscoveryTAF_Detail", 1);
  tableViewController = [(HUUtilityOnboardingTAFViewController *)self tableViewController];
  v19.receiver = self;
  v19.super_class = HUUtilityOnboardingTAFViewController;
  v16 = [(HUItemTableOBWelcomeController *)&v19 initWithTitle:v13 detailText:v14 icon:0 contentLayout:2 itemTableViewController:tableViewController];

  [(HUUtilityOnboardingTAFViewController *)v16 setContext:contextCopy];
  tableViewController2 = [(HUUtilityOnboardingTAFViewController *)v16 tableViewController];
  [tableViewController2 setDelegate:v16];

  return v16;
}

- (void)viewDidLoad
{
  v39 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = HUUtilityOnboardingTAFViewController;
  [(HUItemTableOBWelcomeController *)&v32 viewDidLoad];
  headerView = [(HUUtilityOnboardingTAFViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_2824930A8];

  context = [(HUUtilityOnboardingTAFViewController *)self context];
  [context setOnboardingMethod:1];

  context2 = [(HUUtilityOnboardingTAFViewController *)self context];
  [context2 setDidAttemptPasswordlessMethod:1];

  navigationController = [(HUUtilityOnboardingTAFViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v9 = [viewControllers indexOfObject:self];

  if (v9)
  {
    navigationController2 = [(HUUtilityOnboardingTAFViewController *)self navigationController];
    viewControllers2 = [navigationController2 viewControllers];
    v12 = [viewControllers2 objectAtIndex:v9 - 1];
    [(HUUtilityOnboardingTAFViewController *)self setPresentingVC:v12];
  }

  _updateRightBarButton = [(HUUtilityOnboardingTAFViewController *)self _updateRightBarButton];
  allRequiredFieldsComplete = [(UtilityOnboardingContext *)self->_context allRequiredFieldsComplete];
  [_updateRightBarButton setEnabled:allRequiredFieldsComplete];
  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy2 = self;
    v35 = 2080;
    v36 = "[HUUtilityOnboardingTAFViewController viewDidLoad]";
    v37 = 1024;
    v38 = allRequiredFieldsComplete;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%@:%s ENABLING BUTTON --> %{BOOL}d", buf, 0x1Cu);
  }

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:_updateRightBarButton];

  navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem2 setHidesBackButton:1];

  v18 = objc_alloc(MEMORY[0x277D751E0]);
  v19 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
  v20 = [v18 initWithTitle:v19 style:0 target:self action:sel__cancelOnboarding_];
  navigationItem3 = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem3 setLeftBarButtonItem:v20];

  v22 = HFLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v35 = 2080;
    v36 = "[HUUtilityOnboardingTAFViewController viewDidLoad]";
    _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@:%s: presented: HUUtilityOnboardingTAFViewController", buf, 0x16u);
  }

  if (_os_feature_enabled_impl() && ([(HUUtilityOnboardingTAFViewController *)self presentingVC], v23 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v24 = objc_opt_isKindOfClass(), v23, (v24 & 1) != 0) || ([(HUUtilityOnboardingTAFViewController *)self presentingVC], v25 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v26 = objc_opt_isKindOfClass(), v25, (v26 & 1) != 0))
  {
    v27 = 8;
  }

  else
  {
    presentingVC = [(HUUtilityOnboardingTAFViewController *)self presentingVC];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v27 = 7;
    }

    else
    {
      v27 = 2;
    }
  }

  context3 = [(HUUtilityOnboardingTAFViewController *)self context];
  utilityID = [context3 utilityID];
  [HUHomeEnergyAnalyticsHelper sendUtilityAccountLookupViewEventWithUtilityID:utilityID presentingVC:v27];
}

- (id)_updateRightBarButton
{
  presentingVC = [(HUUtilityOnboardingTAFViewController *)self presentingVC];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = objc_alloc(MEMORY[0x277D751E0]);
  if (isKindOfClass)
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
    v7 = [v5 initWithTitle:v6 style:2 target:self action:sel__doneAccountDetails_];

    [v7 setAccessibilityIdentifier:@"Home.OnboardingView.Utility.TAF.DoneButton"];
    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    [leftBarButtonItem setEnabled:0];
  }

  else
  {
    v10 = _HULocalizedStringWithDefaultValue(@"HUContinueTitle", @"HUContinueTitle", 1);
    v7 = [v5 initWithTitle:v10 style:2 target:self action:sel__continueTAFWithFutures_];

    [v7 setAccessibilityIdentifier:@"Home.OnboardingView.Utility.TAF.ContinueButton"];
    [v7 setHidden:0];
  }

  return v7;
}

- (void)_presentErrorAlert
{
  v4 = MEMORY[0x277D75110];
  v5 = _HULocalizedStringWithDefaultValue(@"HUUtilityOnboardingTAF_EmailAlert_Title", @"HUUtilityOnboardingTAF_EmailAlert_Title", 1);
  v6 = _HULocalizedStringWithDefaultValue(@"HUUtilityOnboardingTAF_EmailAlert_Detail", @"HUUtilityOnboardingTAF_EmailAlert_Detail", 1);
  v7 = [v4 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = MEMORY[0x277D750F8];
  v9 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__HUUtilityOnboardingTAFViewController__presentErrorAlert__block_invoke;
  v11[3] = &unk_277DC0C80;
  v11[4] = self;
  v11[5] = a2;
  v10 = [v8 actionWithTitle:v9 style:0 handler:v11];
  [v7 addAction:v10];

  [(HUUtilityOnboardingTAFViewController *)self presentViewController:v7 animated:1 completion:0];
}

void __58__HUUtilityOnboardingTAFViewController__presentErrorAlert__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped alert button", &v5, 0x16u);
  }
}

- (void)_continueTAFWithFutures:(id)futures
{
  v24 = *MEMORY[0x277D85DE8];
  futuresCopy = futures;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    *&buf[22] = 2112;
    v23 = futuresCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped %@ button", buf, 0x20u);
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    context = [(HUUtilityOnboardingTAFViewController *)self context];
    tafResponses = [context tafResponses];
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    v23 = tafResponses;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "*** %@:%@ Retrieving TAF RESPONSES %@", buf, 0x20u);
  }

  context2 = [(HUUtilityOnboardingTAFViewController *)self context];
  showInvalidEmailAlert = [context2 showInvalidEmailAlert];

  if (showInvalidEmailAlert)
  {
    [(HUUtilityOnboardingTAFViewController *)self _presentErrorAlert];
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v23 = 13;
    [(HUUtilityOnboardingTAFViewController *)self _showSpinner];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__HUUtilityOnboardingTAFViewController__continueTAFWithFutures___block_invoke;
    v21[3] = &unk_277DB7580;
    v21[4] = self;
    v14 = [MEMORY[0x277D2C900] futureWithBlock:v21];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v16 = [v14 reschedule:mainThreadScheduler];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __64__HUUtilityOnboardingTAFViewController__continueTAFWithFutures___block_invoke_3;
    v20[3] = &unk_277DB71D0;
    v20[4] = self;
    v20[5] = a2;
    v17 = [v16 addSuccessBlock:v20];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __64__HUUtilityOnboardingTAFViewController__continueTAFWithFutures___block_invoke_149;
    v19[3] = &unk_277DC0CA8;
    v19[4] = self;
    v19[5] = buf;
    v18 = [v16 addFailureBlock:v19];

    _Block_object_dispose(buf, 8);
  }
}

void __64__HUUtilityOnboardingTAFViewController__continueTAFWithFutures___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__HUUtilityOnboardingTAFViewController__continueTAFWithFutures___block_invoke_2;
  v6[3] = &unk_277DB8C00;
  v7 = v3;
  v5 = v3;
  [v4 verifyAddressAndSubmitTAFWithCompletionHandler:v6];
}

uint64_t __64__HUUtilityOnboardingTAFViewController__continueTAFWithFutures___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithNoResult];
  }
}

void __64__HUUtilityOnboardingTAFViewController__continueTAFWithFutures___block_invoke_3(uint64_t a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = _os_feature_enabled_impl();
  v4 = MEMORY[0x277CBEB38];
  if (v3)
  {
    v25 = @"HUUtilityDiscoveryOnboardingKey_UserInput";
    v26[0] = &unk_282491C58;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v26;
    v7 = &v25;
  }

  else
  {
    v23 = @"HUUtilityDiscoveryOnboardingKey_UserInput";
    v24 = &unk_282491C70;
    v5 = MEMORY[0x277CBEAC0];
    v6 = &v24;
    v7 = &v23;
  }

  v8 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:1];
  v9 = [v4 dictionaryWithDictionary:v8];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = NSStringFromSelector(*(a1 + 40));
    v17 = 138412802;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@ Finished %@ with results  %@", &v17, 0x20u);
  }

  v13 = [*(a1 + 32) delegate];
  [v13 viewController:*(a1 + 32) didFinishWithConfigurationResults:v9];

  v14 = [*(a1 + 32) _updateRightBarButton];
  v15 = [*(a1 + 32) navigationItem];
  [v15 setRightBarButtonItem:v14];

  v16 = [*(a1 + 32) navigationItem];
  [v16 setHidesBackButton:0];
}

void __64__HUUtilityOnboardingTAFViewController__continueTAFWithFutures___block_invoke_149(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    *buf = 138412546;
    v18 = v13;
    v19 = 2112;
    v20 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "%@: Address Verification OR TAF Future failed (%@)", buf, 0x16u);
  }

  if (_os_feature_enabled_impl() && [HUHomeEnergyManagerHelper redirectToOAuth:v3])
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *buf = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v3;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "%@: Account Not Found (%@)", buf, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 12;
  }

  v6 = [*(a1 + 32) delegate];
  v15[0] = @"HUUtilityDiscoveryOnboardingKey_UserInput";
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{*(*(*(a1 + 40) + 8) + 24), @"HUUtilityDiscoveryOnboardingKey_UserInput"}];
  v15[1] = @"HUUtilityDiscoveryOnboardingKey_Error";
  v16[0] = v8;
  v16[1] = v3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v6 viewController:v7 didFinishWithConfigurationResults:v9];

  v10 = [*(a1 + 32) _updateRightBarButton];
  v11 = [*(a1 + 32) navigationItem];
  [v11 setRightBarButtonItem:v10];

  v12 = [*(a1 + 32) navigationItem];
  [v12 setHidesBackButton:0];
}

- (void)_doneAccountDetails:(id)details
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (_os_feature_enabled_impl())
  {
    v4 = &unk_282491C88;
  }

  else
  {
    v4 = &unk_282491CA0;
  }

  [dictionary setObject:v4 forKeyedSubscript:@"HUUtilityDiscoveryOnboardingKey_UserInput"];
  delegate = [(HUUtilityOnboardingTAFViewController *)self delegate];
  [delegate viewController:self didFinishWithConfigurationResults:dictionary];
}

- (void)_cancelOnboarding:(id)onboarding
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_282491CB8 forKeyedSubscript:@"HUUtilityDiscoveryOnboardingKey_UserInput"];
  delegate = [(HUUtilityOnboardingTAFViewController *)self delegate];
  [delegate viewController:self didFinishWithConfigurationResults:dictionary];
}

- (void)viewWillAppear:(BOOL)appear
{
  context = [(HUUtilityOnboardingTAFViewController *)self context];
  headerView = [(HUUtilityOnboardingTAFViewController *)self headerView];
  [context updateIconWithHeaderView:headerView axID:@"Home.OnboardingView.Utility.TAF.Icon"];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v11 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = HUUtilityOnboardingTAFViewController;
  [(OBBaseWelcomeController *)&v6 viewWillDisappear:disappear];
  if ([(HUUtilityOnboardingTAFViewController *)self isMovingFromParentViewController])
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v9 = 2080;
      v10 = "[HUUtilityOnboardingTAFViewController viewWillDisappear:]";
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped BACK button", buf, 0x16u);
    }

    delegate = [(HUUtilityOnboardingTAFViewController *)self delegate];
    [delegate viewControllerDidGoBack:self];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  focusedTextField = [(HUUtilityOnboardingTAFViewController *)self focusedTextField];

  if (focusedTextField)
  {
    focusedTextField2 = [(HUUtilityOnboardingTAFViewController *)self focusedTextField];
    [focusedTextField2 resignFirstResponder];

    [(HUUtilityOnboardingTAFViewController *)self setFocusedTextField:0];
  }
}

- (void)didCompleteAllFields:(BOOL)fields
{
  fieldsCopy = fields;
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:fieldsCopy];
}

- (void)selectedTextField:(id)field
{
  v12 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412802;
    selfCopy = self;
    v8 = 2080;
    v9 = "[HUUtilityOnboardingTAFViewController selectedTextField:]";
    v10 = 2112;
    v11 = fieldCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s Selected text field %@", &v6, 0x20u);
  }

  [(HUUtilityOnboardingTAFViewController *)self setFocusedTextField:fieldCopy];
}

- (void)_showSpinner
{
  v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v6];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem2 setHidesBackButton:1];

  [v6 startAnimating];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end