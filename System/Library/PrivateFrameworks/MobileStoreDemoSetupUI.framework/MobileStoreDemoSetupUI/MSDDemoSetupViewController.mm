@interface MSDDemoSetupViewController
- (MSDDemoSetupViewController)init;
- (void)_continueTapped:(id)tapped;
- (void)_showEraseConfirmation;
- (void)_skipTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation MSDDemoSetupViewController

- (MSDDemoSetupViewController)init
{
  v3 = [MSDSetupUILocalization localizedStringForKey:@"DEMO_SETUP_TITLE"];
  v4 = [MSDSetupUILocalization localizedStringForKey:@"DEMO_SETUP_DESCRIPTION"];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.triangle.2.circlepath.circle.fill"];
  v8.receiver = self;
  v8.super_class = MSDDemoSetupViewController;
  v6 = [(MSDDemoSetupViewController *)&v8 initWithTitle:v3 detailText:v4 icon:v5];

  return v6;
}

- (void)viewDidLoad
{
  v9 = [MSDSetupUILocalization localizedStringForKey:@"CONTINUE_BUTTON"];
  v3 = [MSDSetupUILocalization localizedStringForKey:@"NOT_A_DEMO_DEVICE_BUTTON"];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton setTitle:v9 forState:0];
  [boldButton addTarget:self action:sel__continueTapped_ forControlEvents:64];
  buttonTray = [(MSDDemoSetupViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [linkButton setTitle:v3 forState:0];
  [linkButton addTarget:self action:sel__skipTapped_ forControlEvents:64];
  buttonTray2 = [(MSDDemoSetupViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];
}

- (void)_continueTapped:(id)tapped
{
  v24 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543618;
    v21 = objc_opt_class();
    v22 = 2114;
    v23 = tappedCopy;
    v5 = v21;
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Continue button tapped from: %{public}@", &v20, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBFC10]);
  authorizationStatus = [v6 authorizationStatus];
  v8 = defaultLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (authorizationStatus < 3)
  {
    if (v9)
    {
      v14 = objc_opt_class();
      v15 = v14;
      authorizationStatus2 = [v6 authorizationStatus];
      v20 = 138543618;
      v21 = v14;
      v22 = 1024;
      LODWORD(v23) = authorizationStatus2;
      _os_log_impl(&dword_259BCA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: location authorization status is %d; showing Location view", &v20, 0x12u);
    }

    v13 = off_2798F1838;
  }

  else
  {
    if (v9)
    {
      v10 = objc_opt_class();
      v11 = v10;
      authorizationStatus3 = [v6 authorizationStatus];
      v20 = 138543618;
      v21 = v10;
      v22 = 1024;
      LODWORD(v23) = authorizationStatus3;
      _os_log_impl(&dword_259BCA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: location is authorized: %d; showing Store Search view", &v20, 0x12u);
    }

    v13 = off_2798F1890;
  }

  v17 = objc_alloc_init(*v13);
  v18 = +[MSDSetupUIController sharedInstance];
  [v18 pushViewController:v17 andRemoveTopmostView:0];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_skipTapped:(id)tapped
{
  v12 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = tappedCopy;
    v6 = v9;
    _os_log_impl(&dword_259BCA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Not a Demo Device button tapped from: %{public}@", &v8, 0x16u);
  }

  [(MSDDemoSetupViewController *)self _showEraseConfirmation];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_showEraseConfirmation
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MSDDemoSetupViewController__showEraseConfirmation__block_invoke;
  block[3] = &unk_2798F1C48;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __52__MSDDemoSetupViewController__showEraseConfirmation__block_invoke(uint64_t a1)
{
  v7 = [MSDSetupUILocalization localizedStringForKey:@"EACS_MESSAGE"];
  v2 = [MSDSetupUILocalization localizedStringForKey:@"EACS_CONFIRM_OPTION"];
  v3 = [MSDSetupUILocalization localizedStringForKey:@"CANCEL_OPTION"];
  v4 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:0 preferredStyle:0];
  v5 = [MEMORY[0x277D750F8] actionWithTitle:v2 style:2 handler:&__block_literal_global_5];
  v6 = [MEMORY[0x277D750F8] actionWithTitle:v3 style:1 handler:0];
  [v4 addAction:v5];
  [v4 addAction:v6];
  [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
}

void __52__MSDDemoSetupViewController__showEraseConfirmation__block_invoke_2()
{
  v0 = defaultLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_259BCA000, v0, OS_LOG_TYPE_DEFAULT, "EACS confirmed", v2, 2u);
  }

  v1 = +[MSDSetupUIController sharedInstance];
  [v1 markAsNotDemoAndEraseDataPlan:1];
}

@end