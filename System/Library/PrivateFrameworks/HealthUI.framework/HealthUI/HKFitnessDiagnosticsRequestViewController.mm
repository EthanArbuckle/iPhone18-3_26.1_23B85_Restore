@interface HKFitnessDiagnosticsRequestViewController
+ (BOOL)needsRequestedPermission;
+ (void)presentInViewController:(id)a3 completion:(id)a4;
- (void)_disableDataCollection;
- (void)_enableDataCollection;
- (void)_showDataCollectionAdditionalInfo;
- (void)viewDidLoad;
@end

@implementation HKFitnessDiagnosticsRequestViewController

- (void)viewDidLoad
{
  v50[2] = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = HKFitnessDiagnosticsRequestViewController;
  [(OBBaseWelcomeController *)&v47 viewDidLoad];
  baseAutomationIdentifier = self->_baseAutomationIdentifier;
  self->_baseAutomationIdentifier = @"UIA.Health.Onboarding.ImproveHealthAndActivity";

  v4 = self->_baseAutomationIdentifier;
  v5 = [(HKFitnessDiagnosticsRequestViewController *)self view];
  [v5 setAccessibilityIdentifier:v4];

  v6 = MEMORY[0x1E69B7D10];
  v7 = [(HKFitnessDiagnosticsRequestViewController *)self improveHealthPrivacyIdentifier];
  v46 = [v6 bundleWithIdentifier:v7];

  v8 = [MEMORY[0x1E69B7D60] accessoryButton];
  v9 = [v46 privacyFlow];
  v10 = [v9 localizedButtonTitle];
  [v8 setTitle:v10 forState:0];

  v11 = [v8 titleLabel];
  [v11 setNumberOfLines:0];

  [v8 addTarget:self action:sel__showDataCollectionAdditionalInfo forControlEvents:64];
  v50[0] = self->_baseAutomationIdentifier;
  v50[1] = @"LearnMoreButton";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v13 = HKUIJoinStringsForAutomationIdentifier(v12);
  [v8 setAccessibilityIdentifier:v13];

  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"DATA_COLLECTION_MESSAGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(OBTextWelcomeController *)self addSectionWithHeader:&stru_1F42FFBE0 content:v15 accessoryButton:v8];

  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v17 = [v16 localizedStringForKey:@"DATA_COLLECTION_BODY_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(OBTextWelcomeController *)self addSectionWithHeader:v17 content:&stru_1F42FFBE0];

  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v19 = [v18 localizedStringForKey:@"DATA_COLLECTION_BODY_BULLET_1" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(OBTextWelcomeController *)self addBulletedListItemWithTitle:v19 description:0];

  v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v21 = [v20 localizedStringForKey:@"DATA_COLLECTION_BODY_BULLET_2" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(OBTextWelcomeController *)self addBulletedListItemWithTitle:v21 description:0];

  v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v23 = [v22 localizedStringForKey:@"DATA_COLLECTION_BODY_BULLET_3" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(OBTextWelcomeController *)self addBulletedListItemWithTitle:v23 description:0];

  v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v25 = [v24 localizedStringForKey:@"DATA_COLLECTION_BODY_BULLET_4" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(OBTextWelcomeController *)self addBulletedListItemWithTitle:v25 description:0];

  v26 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v27 = [v26 localizedStringForKey:@"DATA_COLLECTION_BODY_BULLET_5" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(OBTextWelcomeController *)self addBulletedListItemWithTitle:v27 description:0];

  v28 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v29 = [v28 localizedStringForKey:@"DATA_COLLECTION_BODY_BULLET_6" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(OBTextWelcomeController *)self addBulletedListItemWithTitle:v29 description:0];

  v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v31 = [v30 localizedStringForKey:@"DATA_COLLECTION_BODY_BULLET_7" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(OBTextWelcomeController *)self addBulletedListItemWithTitle:v31 description:0];

  v32 = [MEMORY[0x1E69B7D00] boldButton];
  [v32 addTarget:self action:sel__enableDataCollection forControlEvents:64];
  v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v34 = [v33 localizedStringForKey:@"DATA_COLLECTION_ENABLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v32 setTitle:v34 forState:0];

  v49[0] = self->_baseAutomationIdentifier;
  v49[1] = @"EnableButton";
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v36 = HKUIJoinStringsForAutomationIdentifier(v35);
  [v32 setAccessibilityIdentifier:v36];

  v37 = [(HKFitnessDiagnosticsRequestViewController *)self buttonTray];
  [v37 addButton:v32];

  v38 = [MEMORY[0x1E69B7D38] linkButton];
  [v38 addTarget:self action:sel__disableDataCollection forControlEvents:64];
  v39 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v40 = [v39 localizedStringForKey:@"DATA_COLLECTION_DISABLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v38 setTitle:v40 forState:0];

  v48[0] = self->_baseAutomationIdentifier;
  v48[1] = @"DisableButton";
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
  v42 = HKUIJoinStringsForAutomationIdentifier(v41);
  [v38 setAccessibilityIdentifier:v42];

  v43 = [(HKFitnessDiagnosticsRequestViewController *)self buttonTray];
  [v43 addButton:v38];

  v44 = [(HKFitnessDiagnosticsRequestViewController *)self headerView];
  LODWORD(v45) = 1045220557;
  [v44 setTitleHyphenationFactor:v45];
}

+ (void)presentInViewController:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [HKFitnessDiagnosticsRequestViewController alloc];
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"DATA_COLLECTION_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v11 = [(OBTextWelcomeController *)v7 initWithTitle:v9];

  [(HKFitnessDiagnosticsRequestViewController *)v11 setCompletion:v5];
  v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v11];
  [v10 setModalInPresentation:1];
  [v10 setModalPresentationStyle:2];
  [v6 presentViewController:v10 animated:1 completion:0];
}

+ (BOOL)needsRequestedPermission
{
  if (([MEMORY[0x1E696C608] isRunningStoreDemoMode] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69ADFB8], "sharedConnection"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isDiagnosticSubmissionAllowed"), v2, !v3))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v5 = [v4 hasHealthDataSubmissionAllowedBeenSet] ^ 1;
  }

  return v5;
}

- (void)_enableDataCollection
{
  v8 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = self;
    _os_log_impl(&dword_1C3942000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enabled Data Collection", buf, 0xCu);
  }

  v4 = *MEMORY[0x1E69A2D58];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__HKFitnessDiagnosticsRequestViewController__enableDataCollection__block_invoke;
  v5[3] = &unk_1E81B59C0;
  v5[4] = self;
  [MEMORY[0x1E69A2D70] setUserDidAccept:1 currentAgreement:v4 completion:v5];
}

void __66__HKFitnessDiagnosticsRequestViewController__enableDataCollection__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__HKFitnessDiagnosticsRequestViewController__enableDataCollection__block_invoke_2;
  block[3] = &unk_1E81B55A8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __66__HKFitnessDiagnosticsRequestViewController__enableDataCollection__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__HKFitnessDiagnosticsRequestViewController__enableDataCollection__block_invoke_3;
  v3[3] = &unk_1E81B55A8;
  v3[4] = *(a1 + 32);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

void __66__HKFitnessDiagnosticsRequestViewController__enableDataCollection__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];

  if (v2)
  {
    v3 = [*(a1 + 32) completion];
    v3[2](v3, 1);
  }
}

- (void)_disableDataCollection
{
  v8 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = self;
    _os_log_impl(&dword_1C3942000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Disabled Data Collection", buf, 0xCu);
  }

  v4 = *MEMORY[0x1E69A2D58];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__HKFitnessDiagnosticsRequestViewController__disableDataCollection__block_invoke;
  v5[3] = &unk_1E81B59C0;
  v5[4] = self;
  [MEMORY[0x1E69A2D70] setUserDidAccept:0 currentAgreement:v4 completion:v5];
}

void __67__HKFitnessDiagnosticsRequestViewController__disableDataCollection__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__HKFitnessDiagnosticsRequestViewController__disableDataCollection__block_invoke_2;
  block[3] = &unk_1E81B55A8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__HKFitnessDiagnosticsRequestViewController__disableDataCollection__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__HKFitnessDiagnosticsRequestViewController__disableDataCollection__block_invoke_3;
  v3[3] = &unk_1E81B55A8;
  v3[4] = *(a1 + 32);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

void __67__HKFitnessDiagnosticsRequestViewController__disableDataCollection__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];

  if (v2)
  {
    v3 = [*(a1 + 32) completion];
    v3[2](v3, 0);
  }
}

- (void)_showDataCollectionAdditionalInfo
{
  v10 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_1C3942000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Presenting Privacy view controller", &v8, 0xCu);
  }

  v4 = MEMORY[0x1E69B7D58];
  v5 = [(HKFitnessDiagnosticsRequestViewController *)self improveHealthPrivacyIdentifier];
  v6 = [v4 presenterForPrivacySplashWithIdentifier:v5];

  v7 = [(HKFitnessDiagnosticsRequestViewController *)self navigationController];
  [v6 presentInNavigationStack:v7];
}

@end