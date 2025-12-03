@interface HKImproveSafetyDataCollectionViewController
+ (BOOL)needsRequestedPermission;
+ (id)localizedStringWithKey:(id)key;
+ (void)presentInViewController:(id)controller completion:(id)completion;
- (id)localizedStringWithKey:(id)key;
- (void)_setDataCollectionToNewValue:(BOOL)value;
- (void)_showDataCollectionAdditionalInfo;
- (void)setUpButtons;
- (void)setUpContent;
- (void)viewDidLoad;
@end

@implementation HKImproveSafetyDataCollectionViewController

+ (void)presentInViewController:(id)controller completion:(id)completion
{
  v5 = MEMORY[0x1E69B7D10];
  completionCopy = completion;
  controllerCopy = controller;
  improveSafetyPrivacyIdentifier = [objc_opt_class() improveSafetyPrivacyIdentifier];
  v13 = [v5 bundleWithIdentifier:improveSafetyPrivacyIdentifier];

  privacyFlow = [v13 privacyFlow];
  localizedShortTitle = [privacyFlow localizedShortTitle];

  v11 = [(OBTextWelcomeController *)[HKImproveSafetyDataCollectionViewController alloc] initWithTitle:localizedShortTitle];
  [(HKImproveSafetyDataCollectionViewController *)v11 setCompletion:completionCopy];

  v12 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v11];
  [v12 setModalInPresentation:1];
  [controllerCopy presentViewController:v12 animated:1 completion:0];
}

+ (BOOL)needsRequestedPermission
{
  if (([MEMORY[0x1E696C608] isRunningStoreDemoMode] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69ADFB8], "sharedConnection"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isDiagnosticSubmissionAllowed"), v2, !v3))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    v5 = [mEMORY[0x1E69ADFB8] hasSafetyDataSubmissionAllowedBeenSet] ^ 1;
  }

  return v5;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HKImproveSafetyDataCollectionViewController;
  [(OBBaseWelcomeController *)&v6 viewDidLoad];
  headerView = [(HKImproveSafetyDataCollectionViewController *)self headerView];
  LODWORD(v4) = 1045220557;
  [headerView setTitleHyphenationFactor:v4];

  baseAutomationIdentifier = self->_baseAutomationIdentifier;
  self->_baseAutomationIdentifier = @"UIA.Health.Onboarding.ImproveSafety";

  [(HKImproveSafetyDataCollectionViewController *)self setUpContent];
  [(HKImproveSafetyDataCollectionViewController *)self setUpButtons];
}

- (void)setUpContent
{
  v18[2] = *MEMORY[0x1E69E9840];
  baseAutomationIdentifier = self->_baseAutomationIdentifier;
  view = [(HKImproveSafetyDataCollectionViewController *)self view];
  [view setAccessibilityIdentifier:baseAutomationIdentifier];

  v5 = MEMORY[0x1E69B7D10];
  improveSafetyPrivacyIdentifier = [objc_opt_class() improveSafetyPrivacyIdentifier];
  v7 = [v5 bundleWithIdentifier:improveSafetyPrivacyIdentifier];

  accessoryButton = [MEMORY[0x1E69B7D60] accessoryButton];
  privacyFlow = [v7 privacyFlow];
  localizedButtonTitle = [privacyFlow localizedButtonTitle];
  [accessoryButton setTitle:localizedButtonTitle forState:0];

  titleLabel = [accessoryButton titleLabel];
  [titleLabel setNumberOfLines:0];

  [accessoryButton addTarget:self action:sel__showDataCollectionAdditionalInfo forControlEvents:64];
  v18[0] = self->_baseAutomationIdentifier;
  v18[1] = @"LearnMoreButton";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v13 = HKUIJoinStringsForAutomationIdentifier(v12);
  [accessoryButton setAccessibilityIdentifier:v13];

  v14 = [(HKImproveSafetyDataCollectionViewController *)self localizedStringWithKey:@"IMPROVE_SAFETY_DESCRIPTION"];
  [(OBTextWelcomeController *)self addSectionWithHeader:&stru_1F42FFBE0 content:v14 accessoryButton:accessoryButton];

  v15 = [(HKImproveSafetyDataCollectionViewController *)self localizedStringWithKey:@"IMPROVE_SAFETY_EXAMPLES_HEADER_TITLE"];
  [(OBTextWelcomeController *)self addSectionWithHeader:v15 content:&stru_1F42FFBE0];

  v16 = [(HKImproveSafetyDataCollectionViewController *)self localizedStringWithKey:@"IMPROVE_SAFETY_EXAMPLES_BULLET_1"];
  [(OBTextWelcomeController *)self addBulletedListItemWithTitle:v16 description:0];

  v17 = [(HKImproveSafetyDataCollectionViewController *)self localizedStringWithKey:@"IMPROVE_SAFETY_EXAMPLES_BULLET_2"];
  [(OBTextWelcomeController *)self addBulletedListItemWithTitle:v17 description:0];
}

- (void)setUpButtons
{
  v14[2] = *MEMORY[0x1E69E9840];
  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  [boldButton addTarget:self action:sel__enableDataCollection forControlEvents:64];
  v4 = [(HKImproveSafetyDataCollectionViewController *)self localizedStringWithKey:@"IMPROVE_SAFETY_ENABLE_BUTTON_TITLE"];
  [boldButton setTitle:v4 forState:0];

  v14[0] = self->_baseAutomationIdentifier;
  v14[1] = @"EnableButton";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v6 = HKUIJoinStringsForAutomationIdentifier(v5);
  [boldButton setAccessibilityIdentifier:v6];

  buttonTray = [(HKImproveSafetyDataCollectionViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  linkButton = [MEMORY[0x1E69B7D38] linkButton];
  [linkButton addTarget:self action:sel__disableDataCollection forControlEvents:64];
  v9 = [(HKImproveSafetyDataCollectionViewController *)self localizedStringWithKey:@"IMPROVE_SAFETY_DISABLE_BUTTON_TITLE"];
  [linkButton setTitle:v9 forState:0];

  v13[0] = self->_baseAutomationIdentifier;
  v13[1] = @"DisableButton";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v11 = HKUIJoinStringsForAutomationIdentifier(v10);
  [linkButton setAccessibilityIdentifier:v11];

  buttonTray2 = [(HKImproveSafetyDataCollectionViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];
}

- (void)_setDataCollectionToNewValue:(BOOL)value
{
  valueCopy = value;
  v14 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v12 = 1024;
    v13 = valueCopy;
    _os_log_impl(&dword_1C3942000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set Improve Safety Data Collection to %d", buf, 0x12u);
  }

  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  [mEMORY[0x1E69ADFB8] setSafetyDataSubmissionAllowed:valueCopy];

  presentingViewController = [(HKImproveSafetyDataCollectionViewController *)self presentingViewController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__HKImproveSafetyDataCollectionViewController__setDataCollectionToNewValue___block_invoke;
  v8[3] = &unk_1E81B8570;
  v8[4] = self;
  v9 = valueCopy;
  [presentingViewController dismissViewControllerAnimated:1 completion:v8];
}

void __76__HKImproveSafetyDataCollectionViewController__setDataCollectionToNewValue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];

  if (v2)
  {
    v3 = [*(a1 + 32) completion];
    v3[2](v3, *(a1 + 40));
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
    selfCopy = self;
    _os_log_impl(&dword_1C3942000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Presenting Privacy view controller", &v8, 0xCu);
  }

  v4 = MEMORY[0x1E69B7D58];
  improveSafetyPrivacyIdentifier = [objc_opt_class() improveSafetyPrivacyIdentifier];
  v6 = [v4 presenterForPrivacySplashWithIdentifier:improveSafetyPrivacyIdentifier];

  navigationController = [(HKImproveSafetyDataCollectionViewController *)self navigationController];
  [v6 presentInNavigationStack:navigationController];
}

+ (id)localizedStringWithKey:(id)key
{
  v3 = MEMORY[0x1E696AAE8];
  keyCopy = key;
  v5 = [v3 bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:keyCopy value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v6;
}

- (id)localizedStringWithKey:(id)key
{
  keyCopy = key;
  v4 = [objc_opt_class() localizedStringWithKey:keyCopy];

  return v4;
}

@end