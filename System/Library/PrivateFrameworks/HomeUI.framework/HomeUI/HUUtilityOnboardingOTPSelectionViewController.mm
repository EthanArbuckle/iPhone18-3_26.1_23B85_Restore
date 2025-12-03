@interface HUUtilityOnboardingOTPSelectionViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUtilityOnboardingOTPSelectionViewController)initWithContext:(id)context;
- (id)_requestOTP;
- (void)_sendCode:(id)code;
- (void)tableView:(id)view didSelectOTPMethod:(id)method;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUUtilityOnboardingOTPSelectionViewController

- (HUUtilityOnboardingOTPSelectionViewController)initWithContext:(id)context
{
  contextCopy = context;
  otpFactors = [contextCopy otpFactors];
  v6 = [[HUUtilityOnboardingOTPSelectionItemManager alloc] initWithDelegate:self context:contextCopy];
  v7 = [[HUUtilityOnboardingOTPSelectionTableViewController alloc] initWithItemManager:v6];
  [(HUUtilityOnboardingOTPSelectionViewController *)self setTableView:v7];

  if ([otpFactors count] > 1)
  {
    v8 = @"HUUtilityOnboardingOTPSelectionDetail";
LABEL_7:
    v10 = _HULocalizedStringWithDefaultValue(v8, v8, 1);
    goto LABEL_8;
  }

  v9 = [otpFactors na_firstObjectPassingTest:&__block_literal_global_43];

  v10 = [otpFactors na_firstObjectPassingTest:&__block_literal_global_88];

  if (v9)
  {
    v8 = @"HUUtilityOnboardingOTPSelectionDetailSMS";
    goto LABEL_7;
  }

  if (v10)
  {
    v8 = @"HUUtilityOnboardingOTPSelectionDetailEmail";
    goto LABEL_7;
  }

LABEL_8:
  v11 = _HULocalizedStringWithDefaultValue(@"HUUtilityOnboardingOTPSelectionTitle", @"HUUtilityOnboardingOTPSelectionTitle", 1);
  tableView = [(HUUtilityOnboardingOTPSelectionViewController *)self tableView];
  v16.receiver = self;
  v16.super_class = HUUtilityOnboardingOTPSelectionViewController;
  v13 = [(HUItemTableOBWelcomeController *)&v16 initWithTitle:v11 detailText:v10 icon:0 contentLayout:2 itemTableViewController:tableView];

  [(HUUtilityOnboardingOTPSelectionViewController *)v13 setContext:contextCopy];
  tableView2 = [(HUUtilityOnboardingOTPSelectionViewController *)v13 tableView];
  [tableView2 setDelegate:v13];

  return v13;
}

uint64_t __65__HUUtilityOnboardingOTPSelectionViewController_initWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"factorType"];
  v3 = [v2 isEqualToString:@"SMS"];

  return v3;
}

uint64_t __65__HUUtilityOnboardingOTPSelectionViewController_initWithContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"factorType"];
  v3 = [v2 isEqualToString:@"EMAIL"];

  return v3;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = HUUtilityOnboardingOTPSelectionViewController;
  [(HUItemTableOBWelcomeController *)&v17 viewDidLoad];
  headerView = [(HUUtilityOnboardingOTPSelectionViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282492DB0];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUUtilityOnboardingOTPSelectionViewController *)self setContinueButton:boldButton];

  continueButton = [(HUUtilityOnboardingOTPSelectionViewController *)self continueButton];
  [continueButton setTranslatesAutoresizingMaskIntoConstraints:0];

  continueButton2 = [(HUUtilityOnboardingOTPSelectionViewController *)self continueButton];
  v8 = _HULocalizedStringWithDefaultValue(@"HUUtilityOnboardingOTPSelectionTitle", @"HUUtilityOnboardingOTPSelectionTitle", 1);
  [continueButton2 setTitle:v8 forState:0];

  continueButton3 = [(HUUtilityOnboardingOTPSelectionViewController *)self continueButton];
  [continueButton3 setAccessibilityIdentifier:@"Home.OnboardingView.Utility.OTPSelection.SendCodeButton"];

  continueButton4 = [(HUUtilityOnboardingOTPSelectionViewController *)self continueButton];
  [continueButton4 addTarget:self action:sel__sendCode_ forControlEvents:64];

  buttonTray = [(HUUtilityOnboardingOTPSelectionViewController *)self buttonTray];
  continueButton5 = [(HUUtilityOnboardingOTPSelectionViewController *)self continueButton];
  [buttonTray addButton:continueButton5];

  context = [(HUUtilityOnboardingOTPSelectionViewController *)self context];
  utilityID = [context utilityID];
  context2 = [(HUUtilityOnboardingOTPSelectionViewController *)self context];
  otpFactors = [context2 otpFactors];
  +[HUHomeEnergyAnalyticsHelper sendUtilityOTPMethodSelectionSheetViewEventWithUtilityID:numOfMethods:](HUHomeEnergyAnalyticsHelper, "sendUtilityOTPMethodSelectionSheetViewEventWithUtilityID:numOfMethods:", utilityID, [otpFactors count]);
}

- (void)viewWillAppear:(BOOL)appear
{
  context = [(HUUtilityOnboardingOTPSelectionViewController *)self context];
  headerView = [(HUUtilityOnboardingOTPSelectionViewController *)self headerView];
  [context updateIconWithHeaderView:headerView axID:@"Home.OnboardingView.Utility.OTPSelection.Icon"];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v11 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = HUUtilityOnboardingOTPSelectionViewController;
  [(OBBaseWelcomeController *)&v6 viewWillDisappear:disappear];
  if ([(HUUtilityOnboardingOTPSelectionViewController *)self isMovingFromParentViewController])
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v9 = 2080;
      v10 = "[HUUtilityOnboardingOTPSelectionViewController viewWillDisappear:]";
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped BACK button", buf, 0x16u);
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      delegate = [(HUUtilityOnboardingOTPSelectionViewController *)self delegate];
      [delegate viewControllerDidGoBack:self];
    }
  }
}

- (id)_requestOTP
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HUUtilityOnboardingOTPSelectionViewController__requestOTP__block_invoke;
  v6[3] = &unk_277DB7580;
  v6[4] = self;
  v2 = [MEMORY[0x277D2C900] futureWithBlock:v6];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v4 = [v2 reschedule:mainThreadScheduler];

  return v4;
}

void __60__HUUtilityOnboardingOTPSelectionViewController__requestOTP__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HUUtilityOnboardingOTPSelectionViewController__requestOTP__block_invoke_2;
  v6[3] = &unk_277DB9C58;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  [v4 requestOTPWithCompletionHandler:v6];
}

void __60__HUUtilityOnboardingOTPSelectionViewController__requestOTP__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = 138412546;
      v13 = v11;
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "%@: Error requesting OTP %@", &v12, 0x16u);
    }

    [*(a1 + 40) finishWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v12 = 136315650;
      v13 = "[HUUtilityOnboardingOTPSelectionViewController _requestOTP]_block_invoke";
      v14 = 2112;
      v15 = v8;
      v16 = 1024;
      v17 = a2;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%s(%@) ---: Requested OTP %{BOOL}d ", &v12, 0x1Cu);
    }

    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    [v9 finishWithResult:v10];
  }
}

- (void)_sendCode:(id)code
{
  v22 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    continueButton = [(HUUtilityOnboardingOTPSelectionViewController *)self continueButton];
    v7 = @"Cancel";
    if (continueButton == codeCopy)
    {
      v7 = @"Send";
    }

    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2080;
    *&buf[14] = "[HUUtilityOnboardingOTPSelectionViewController _sendCode:]";
    *&buf[22] = 2112;
    v21 = v7;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped %@ button", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v21 = 13;
  context = [(HUUtilityOnboardingOTPSelectionViewController *)self context];
  selectedOTPMethod = [(HUUtilityOnboardingOTPSelectionViewController *)self selectedOTPMethod];
  [context setSelectedOTPMethodWithFactor:selectedOTPMethod];

  context2 = [(HUUtilityOnboardingOTPSelectionViewController *)self context];
  utilityID = [context2 utilityID];
  selectedOTPMethod2 = [(HUUtilityOnboardingOTPSelectionViewController *)self selectedOTPMethod];
  latestResults = [selectedOTPMethod2 latestResults];
  v14 = [latestResults objectForKeyedSubscript:@"factor-type"];
  [HUHomeEnergyAnalyticsHelper sendUtilityOTPMethodSelectedByUserEventWithUtilityID:utilityID selectedOTPMethod:v14];

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  continueButton2 = [(HUUtilityOnboardingOTPSelectionViewController *)self continueButton];
  [continueButton2 showsBusyIndicator];

  _requestOTP = [(HUUtilityOnboardingOTPSelectionViewController *)self _requestOTP];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__HUUtilityOnboardingOTPSelectionViewController__sendCode___block_invoke;
  v19[3] = &unk_277DB9C80;
  v19[4] = self;
  v19[5] = buf;
  v18 = [_requestOTP addCompletionBlock:v19];

  _Block_object_dispose(buf, 8);
}

void __59__HUUtilityOnboardingOTPSelectionViewController__sendCode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) navigationItem];
  [v7 setHidesBackButton:0];

  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = HFLogForCategory();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v22 = 138412546;
      v23 = v21;
      v24 = 2112;
      v25 = v6;
      _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "%@: Future failed (%@)", &v22, 0x16u);
    }

    [v8 setObject:v6 forKey:@"HUUtilityDiscoveryOnboardingKey_Error"];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v22 = 138412802;
      v23 = v11;
      v24 = 2080;
      v25 = "[HUUtilityOnboardingOTPSelectionViewController _sendCode:]_block_invoke";
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%s OTP REQUEST %@", &v22, 0x20u);
    }

    v12 = _os_feature_enabled_impl();
    v13 = *(*(a1 + 40) + 8);
    if (v12)
    {
      v14 = 6;
      if (!v5)
      {
        v14 = 13;
      }

      *(v13 + 24) = v14;
      v15 = [*(a1 + 32) continueButton];
      [v15 hidesBusyIndicator];
    }

    else
    {
      v16 = 17;
      if (!v5)
      {
        v16 = 13;
      }

      *(v13 + 24) = v16;
    }
  }

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 40) + 8) + 24)];
  [v8 setObject:v17 forKey:@"HUUtilityDiscoveryOnboardingKey_UserInput"];

  v18 = HFLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    v22 = 138412802;
    v23 = v19;
    v24 = 2080;
    v25 = "[HUUtilityOnboardingOTPSelectionViewController _sendCode:]_block_invoke";
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@ Finished %s with results  %@", &v22, 0x20u);
  }

  v20 = [*(a1 + 32) delegate];
  [v20 viewController:*(a1 + 32) didFinishWithConfigurationResults:v8];
}

- (void)tableView:(id)view didSelectOTPMethod:(id)method
{
  v13 = *MEMORY[0x277D85DE8];
  methodCopy = method;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412802;
    selfCopy = self;
    v9 = 2080;
    v10 = "[HUUtilityOnboardingOTPSelectionViewController tableView:didSelectOTPMethod:]";
    v11 = 2112;
    v12 = methodCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%s SELECTED METHOD: %@", &v7, 0x20u);
  }

  [(HUUtilityOnboardingOTPSelectionViewController *)self setSelectedOTPMethod:methodCopy];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end