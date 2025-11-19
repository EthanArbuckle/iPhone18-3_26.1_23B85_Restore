@interface BRKDataCollectionOnboardingViewController
+ (BOOL)shouldPresentOnboarding;
+ (void)presentInViewController:(id)a3;
- (void)openSettings;
- (void)tappedDisable;
- (void)tappedEnable;
- (void)tappedLearnMore;
- (void)viewDidLoad;
@end

@implementation BRKDataCollectionOnboardingViewController

+ (BOOL)shouldPresentOnboarding
{
  v2 = +[BRKSettings settingsForActiveDevice];
  v3 = [v2 isDataCollectionOnboardingComplete];

  return v3 ^ 1;
}

+ (void)presentInViewController:(id)a3
{
  v4 = a3;
  if ([a1 shouldPresentOnboarding])
  {
    v5 = [BRKDataCollectionOnboardingViewController alloc];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"BROOK_DATA_COLLECTION_ON_BOARDING_TITLE" value:&stru_285413D38 table:0];
    v8 = [(OBTextWelcomeController *)v5 initWithTitle:v7];

    v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
    [v9 setModalInPresentation:1];
    [v4 presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    v10 = BRKLoggingObjectForDomain(7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_241EE4000, v10, OS_LOG_TYPE_DEFAULT, "Already completed onboarding. Not presenting UI", v11, 2u);
    }
  }
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = BRKDataCollectionOnboardingViewController;
  [(OBBaseWelcomeController *)&v30 viewDidLoad];
  v3 = +[BRKSettings settingsForActiveDevice];
  settings = self->_settings;
  self->_settings = v3;

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_tappedDisable];
  v6 = [(OBBaseWelcomeController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = objc_alloc_init(MEMORY[0x277D37680]);
  [v7 addTarget:self action:sel_openSettings forControlEvents:64];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BROOK_DATA_COLLECTION_ON_BOARDING_TITLE_OPEN_SETTINGS" value:&stru_285413D38 table:0];
  [v7 setTitle:v9 forState:0];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"BROOK_DATA_COLLECTION_ON_BOARDING_BODY" value:&stru_285413D38 table:0];
  [(OBTextWelcomeController *)self addSectionWithHeader:0 content:v11 accessoryButton:v7];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"BROOK_DATA_COLLECTION_ON_BOARDING_TITLE_EXAMPLES_HEADER" value:&stru_285413D38 table:0];
  [(OBTextWelcomeController *)self addSectionWithHeader:v13 content:&stru_285413D38];

  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"BROOK_DATA_COLLECTION_ON_BOARDING_TITLE_EXAMPLES_1" value:&stru_285413D38 table:0];
  [(OBTextWelcomeController *)self addBulletedListItemWithTitle:v15 description:&stru_285413D38];

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"BROOK_DATA_COLLECTION_ON_BOARDING_TITLE_EXAMPLES_2" value:&stru_285413D38 table:0];
  [(OBTextWelcomeController *)self addBulletedListItemWithTitle:v17 description:0];

  v18 = objc_alloc_init(MEMORY[0x277D37680]);
  [v18 addTarget:self action:sel_tappedLearnMore forControlEvents:64];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"BROOK_DATA_COLLECTION_ON_BOARDING_ABOUT_IMPROVE" value:&stru_285413D38 table:0];
  [v18 setTitle:v20 forState:0];

  v21 = [v18 titleLabel];
  [v21 setNumberOfLines:0];

  [(OBTextWelcomeController *)self addSectionWithHeader:0 content:&stru_285413D38 accessoryButton:v18];
  v22 = [MEMORY[0x277D37618] boldButton];
  [v22 addTarget:self action:sel_tappedEnable forControlEvents:64];
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"BROOK_DATA_COLLECTION_ON_BOARDING_SHARE_DATA" value:&stru_285413D38 table:0];
  [v22 setTitle:v24 forState:0];

  v25 = [(BRKDataCollectionOnboardingViewController *)self buttonTray];
  [v25 addButton:v22];

  v26 = [MEMORY[0x277D37650] linkButton];
  [v26 addTarget:self action:sel_tappedDisable forControlEvents:64];
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"BROOK_DATA_COLLECTION_ON_BOARDING_DONT_SHARE_DATA" value:&stru_285413D38 table:0];
  [v26 setTitle:v28 forState:0];

  v29 = [(BRKDataCollectionOnboardingViewController *)self buttonTray];
  [v29 addButton:v26];
}

- (void)tappedDisable
{
  [(BRKSettings *)self->_settings setDataCollectionEnabled:0];
  v3 = BRKLoggingObjectForDomain(7);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_241EE4000, v3, OS_LOG_TYPE_DEFAULT, "Disabling data collection from user", v5, 2u);
  }

  v4 = [(BRKDataCollectionOnboardingViewController *)self presentingViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)tappedEnable
{
  [(BRKSettings *)self->_settings setDataCollectionEnabled:1];
  v3 = BRKLoggingObjectForDomain(7);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_241EE4000, v3, OS_LOG_TYPE_DEFAULT, "Enabling data collection from user", v5, 2u);
  }

  v4 = [(BRKDataCollectionOnboardingViewController *)self presentingViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)openSettings
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Privacy&path=PROBLEM_REPORTING"];
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = [v3 openSensitiveURL:v2 withOptions:0];

  v5 = BRKLoggingObjectForDomain(7);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"unsuccessfully";
    if (v4)
    {
      v6 = @"successfully";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "Opened privacy settings %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)tappedLearnMore
{
  v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D376D0]];
  v3 = [(BRKDataCollectionOnboardingViewController *)self navigationController];
  [v4 presentInNavigationStack:v3 animated:1];
}

@end