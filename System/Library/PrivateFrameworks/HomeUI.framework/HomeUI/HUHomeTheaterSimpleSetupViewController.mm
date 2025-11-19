@interface HUHomeTheaterSimpleSetupViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeTheaterSimpleSetupViewController)initWithAppleTVAccessory:(id)a3 destination:(id)a4 inHome:(id)a5;
- (HUHomeTheaterSimpleSetupViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentImage:(id)a6;
- (void)_confirm:(id)a3;
- (void)_skip:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUHomeTheaterSimpleSetupViewController

- (HUHomeTheaterSimpleSetupViewController)initWithAppleTVAccessory:(id)a3 destination:(id)a4 inHome:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 hf_displayName];
  v19 = HULocalizedStringWithFormat(@"HUHomeTheaterSetup_Title", @"%@", v13, v14, v15, v16, v17, v18, v12);

  v20 = _HULocalizedStringWithDefaultValue(@"HUHomeTheaterSetup_Detail", @"HUHomeTheaterSetup_Detail", 1);
  v21 = HUImageNamed(@"Onboarding-HomeTheater");
  v24.receiver = self;
  v24.super_class = HUHomeTheaterSimpleSetupViewController;
  v22 = [(HUImageOBWelcomeController *)&v24 initWithTitle:v19 detailText:v20 icon:0 contentImage:v21];

  if (v22)
  {
    objc_storeStrong(&v22->_accessory, a3);
    objc_storeStrong(&v22->_home, a5);
    objc_storeStrong(&v22->_destination, a4);
  }

  return v22;
}

- (HUHomeTheaterSimpleSetupViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentImage:(id)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithAppleTVAccessory_destination_inHome_);
  [v8 handleFailureInMethod:a2 object:self file:@"HUHomeTheaterSimpleSetupViewController.m" lineNumber:49 description:{@"%s is unavailable; use %@ instead", "-[HUHomeTheaterSimpleSetupViewController initWithTitle:detailText:icon:contentImage:]", v9}];

  return 0;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = HUHomeTheaterSimpleSetupViewController;
  [(HUImageOBWelcomeController *)&v15 viewDidLoad];
  v3 = [(HUHomeTheaterSimpleSetupViewController *)self headerView];
  v4 = [v3 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v4 withIDDictionary:&unk_282493288];

  v5 = [MEMORY[0x277D37618] boldButton];
  confirmButton = self->_confirmButton;
  self->_confirmButton = v5;

  [(OBTrayButton *)self->_confirmButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = self->_confirmButton;
  v8 = _HULocalizedStringWithDefaultValue(@"HUHomeTheaterSetup_UseHomeTheaterButton", @"HUHomeTheaterSetup_UseHomeTheaterButton", 1);
  [(OBTrayButton *)v7 setTitle:v8 forState:0];

  [(OBTrayButton *)self->_confirmButton setAccessibilityIdentifier:@"Home.OnboardingView.HomeTheater.UseHomeTheaterButton"];
  [(OBTrayButton *)self->_confirmButton addTarget:self action:sel__confirm_ forControlEvents:64];
  v9 = [(HUHomeTheaterSimpleSetupViewController *)self buttonTray];
  [v9 addButton:self->_confirmButton];

  v10 = [MEMORY[0x277D37650] linkButton];
  skipButton = self->_skipButton;
  self->_skipButton = v10;

  [(OBLinkTrayButton *)self->_skipButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = self->_skipButton;
  v13 = _HULocalizedStringWithDefaultValue(@"HUHomeTheaterSetup_NotNowButton", @"HUHomeTheaterSetup_NotNowButton", 1);
  [(OBLinkTrayButton *)v12 setTitle:v13 forState:0];

  [(OBLinkTrayButton *)self->_skipButton setAccessibilityIdentifier:@"Home.OnboardingView.HomeTheater.NotNowButton"];
  [(OBLinkTrayButton *)self->_skipButton addTarget:self action:sel__skip_ forControlEvents:64];
  v14 = [(HUHomeTheaterSimpleSetupViewController *)self buttonTray];
  [v14 addButton:self->_skipButton];
}

- (void)_confirm:(id)a3
{
  v5 = a3;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __51__HUHomeTheaterSimpleSetupViewController__confirm___block_invoke;
  v19[3] = &unk_277DB7508;
  v19[4] = self;
  v6 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v19];
  v7 = [(HUHomeTheaterSimpleSetupViewController *)self confirmButton];
  v8 = [v7 activityIndicator];
  [v8 startAnimating];

  v9 = [(HUHomeTheaterSimpleSetupViewController *)self confirmButton];
  [v9 setEnabled:0];

  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__HUHomeTheaterSimpleSetupViewController__confirm___block_invoke_2;
  v16[3] = &unk_277DB9D18;
  objc_copyWeak(v17, &location);
  v17[1] = a2;
  v10 = [v6 addSuccessBlock:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__HUHomeTheaterSimpleSetupViewController__confirm___block_invoke_61;
  v13[3] = &unk_277DC4EF8;
  objc_copyWeak(v15, &location);
  v15[1] = a2;
  v11 = v5;
  v14 = v11;
  v12 = [v10 addFailureBlock:v13];

  objc_destroyWeak(v15);
  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __51__HUHomeTheaterSimpleSetupViewController__confirm___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [v3 accessory];
  v5 = [v9 mediaProfile];
  v6 = [v5 hf_backingAccessory];
  v7 = [v6 audioDestinationController];
  v8 = [*(a1 + 32) destination];
  [v7 updateDestination:v8 completionHandler:v4];
}

void __51__HUHomeTheaterSimpleSetupViewController__confirm___block_invoke_2(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained accessory];

  if (!v5)
  {
    v6 = NSStringFromSelector(*(a1 + 40));
    NSLog(&cfstr_UnexpectedNilA.isa, WeakRetained, v6, v3);
  }

  v7 = [WeakRetained accessory];

  if (v7)
  {
    v8 = MEMORY[0x277CBEB38];
    v16[0] = &unk_282492780;
    v15[0] = @"HUHomeTheaterOnboardingKey_UserInput";
    v15[1] = @"HUHomeTheaterOnboardingKey_Accessory";
    v9 = [WeakRetained accessory];
    v16[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v11 = [v8 dictionaryWithDictionary:v10];

    v12 = [WeakRetained confirmButton];
    v13 = [v12 activityIndicator];
    [v13 stopAnimating];

    v14 = [WeakRetained delegate];
    [v14 viewController:WeakRetained didFinishWithConfigurationResults:v11];
  }
}

void __51__HUHomeTheaterSimpleSetupViewController__confirm___block_invoke_61(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(*(a1 + 48));
    v10 = 138412802;
    v11 = WeakRetained;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ completed with error: %@", &v10, 0x20u);
  }

  [*(a1 + 32) setEnabled:1];
  v7 = [WeakRetained confirmButton];
  v8 = [v7 activityIndicator];
  [v8 stopAnimating];

  v9 = [MEMORY[0x277D14640] sharedHandler];
  [v9 handleError:v3];
}

- (void)_skip:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB38];
  v10[0] = &unk_282492798;
  v9[0] = @"HUHomeTheaterOnboardingKey_UserInput";
  v9[1] = @"HUHomeTheaterOnboardingKey_Accessory";
  v5 = [(HUHomeTheaterSimpleSetupViewController *)self accessory];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [v4 dictionaryWithDictionary:v6];

  v8 = [(HUHomeTheaterSimpleSetupViewController *)self delegate];
  [v8 viewController:self didFinishWithConfigurationResults:v7];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end