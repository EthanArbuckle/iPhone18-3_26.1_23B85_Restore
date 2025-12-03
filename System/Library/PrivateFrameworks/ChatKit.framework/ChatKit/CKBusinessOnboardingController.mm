@interface CKBusinessOnboardingController
+ (BOOL)shouldShowBusinessOnboarding;
+ (void)checkForBusinessAlertsIDSIssues:(id)issues;
- (CKBusinessOnboardingController)initWithCompletionHandler:(id)handler;
- (void)_addBusinessInitiatedBullets;
- (void)_setBusinessInitiatedFeatureStateOn:(BOOL)on completion:(id)completion;
- (void)continueButtonTapped:(id)tapped;
- (void)notNowButtonTapped:(id)tapped;
- (void)setupNotNowWithActionHandler:(id)handler;
- (void)viewDidLoad;
@end

@implementation CKBusinessOnboardingController

+ (BOOL)shouldShowBusinessOnboarding
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"BusinessChatPrivacyPageDisplayed"];

  if (v3 > 2)
  {
    return 0;
  }

  v4 = MEMORY[0x1E69A8020];

  return [v4 supportsBusinessChat];
}

+ (void)checkForBusinessAlertsIDSIssues:(id)issues
{
  issuesCopy = issues;
  if (issuesCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E69A4860]);
    v5 = [v4 initWithService:*MEMORY[0x1E69A4820] queue:MEMORY[0x1E69E96A0]];
    v6 = [MEMORY[0x1E69A4850] optionsWithFeatureID:@"bia-opt-out"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__CKBusinessOnboardingController_checkForBusinessAlertsIDSIssues___block_invoke;
    v7[3] = &unk_1E72F08C8;
    v8 = issuesCopy;
    [v5 retrieveFeatureToggleStateForOptions:v6 completion:v7];
  }
}

void __66__CKBusinessOnboardingController_checkForBusinessAlertsIDSIssues___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 success] && objc_msgSend(v3, "state") != 3)
  {
    [v3 state];
  }

  (*(*(a1 + 32) + 16))();
}

- (CKBusinessOnboardingController)initWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [(CKBusinessOnboardingController *)a2 initWithCompletionHandler:?];
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isBIAEnabled = [mEMORY[0x1E69A8070] isBIAEnabled];

  v8 = CKFrameworkBundle();
  v9 = v8;
  if (isBIAEnabled)
  {
    v10 = &stru_1F04268F8;
    v11 = [v8 localizedStringForKey:@"BUSINESS_INITIATED_ALERTS" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  else
  {
    v11 = [v8 localizedStringForKey:@"MESSAGES_FOR_BUSINESS" value:&stru_1F04268F8 table:@"ChatKit"];

    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"BUSINESS_DESCRIPTION_PLACEHOLDER" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  v17.receiver = self;
  v17.super_class = CKBusinessOnboardingController;
  v12 = [(CKBusinessOnboardingController *)&v17 initWithTitle:v11 detailText:v10 icon:0];
  v13 = v12;
  if (v12)
  {
    [(CKBusinessOnboardingController *)v12 setCompletionHandler:handlerCopy];
    [(CKBusinessOnboardingController *)v13 setModalPresentationStyle:2];
    [(CKBusinessOnboardingController *)v13 setModalInPresentation:1];
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isBIAEnabled2 = [mEMORY[0x1E69A8070]2 isBIAEnabled];

    if (isBIAEnabled2)
    {
      [(CKBusinessOnboardingController *)v13 _addBusinessInitiatedBullets];
    }
  }

  return v13;
}

- (void)_addBusinessInitiatedBullets
{
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"BUSINESS_INITIATED_WELCOME_TRUST_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"BUSINESS_INITIATED_WELCOME_TRUST_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
  [(CKBusinessOnboardingController *)self addBulletedListItemWithTitle:v4 description:v6 symbolName:@"checkmark.seal.fill"];

  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"BUSINESS_INITIATED_WELCOME_OPTOUT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"BUSINESS_INITIATED_WELCOME_OPTOUT_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
  [(CKBusinessOnboardingController *)self addBulletedListItemWithTitle:v8 description:v10 symbolName:@"rectangle.portrait.and.arrow.right.fill"];

  v14 = CKFrameworkBundle();
  v11 = [v14 localizedStringForKey:@"BUSINESS_INITIATED_WELCOME_CHAT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v12 = CKFrameworkBundle();
  v13 = [v12 localizedStringForKey:@"BUSINESS_INITIATED_WELCOME_CHAT_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
  [(CKBusinessOnboardingController *)self addBulletedListItemWithTitle:v11 description:v13 symbolName:@"message.and.message.fill"];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CKBusinessOnboardingController;
  [(OBBaseWelcomeController *)&v8 viewDidLoad];
  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"CONTINUE" value:&stru_1F04268F8 table:@"ChatKit"];
  [boldButton setTitle:v5 forState:0];

  [boldButton addTarget:self action:sel_continueButtonTapped_ forControlEvents:64];
  buttonTray = [(CKBusinessOnboardingController *)self buttonTray];
  [buttonTray addButton:boldButton];

  buttonTray2 = [(CKBusinessOnboardingController *)self buttonTray];
  [buttonTray2 setPrivacyLinkForBundles:&unk_1F04E68E8];
}

- (void)setupNotNowWithActionHandler:(id)handler
{
  aBlock = handler;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isBIAEnabled = [mEMORY[0x1E69A8070] isBIAEnabled];

  if (isBIAEnabled)
  {
    if (!self->_notNowActionHandler)
    {
      linkButton = [MEMORY[0x1E69B7D38] linkButton];
      v7 = CKFrameworkBundle();
      v8 = [v7 localizedStringForKey:@"BUSINESS_INITIATED_WELCOME_OPTOUT_BUTTON" value:&stru_1F04268F8 table:@"ChatKit"];
      [linkButton setTitle:v8 forState:0];

      [linkButton addTarget:self action:sel_notNowButtonTapped_ forControlEvents:64];
      buttonTray = [(CKBusinessOnboardingController *)self buttonTray];
      [buttonTray addButton:linkButton];
    }

    v10 = _Block_copy(aBlock);
    notNowActionHandler = self->_notNowActionHandler;
    self->_notNowActionHandler = v10;
  }
}

- (void)continueButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setInteger:3 forKey:@"BusinessChatPrivacyPageDisplayed"];

  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__CKBusinessOnboardingController_continueButtonTapped___block_invoke;
  v6[3] = &unk_1E72EC460;
  objc_copyWeak(&v7, &location);
  [(CKBusinessOnboardingController *)self _setBusinessInitiatedFeatureStateOn:1 completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __55__CKBusinessOnboardingController_continueButtonTapped___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained completionHandler];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 completionHandler];
    v5[2]();

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 setCompletionHandler:0];
  }
}

- (void)notNowButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__CKBusinessOnboardingController_notNowButtonTapped___block_invoke;
  v5[3] = &unk_1E72EC460;
  objc_copyWeak(&v6, &location);
  [(CKBusinessOnboardingController *)self _setBusinessInitiatedFeatureStateOn:0 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __53__CKBusinessOnboardingController_notNowButtonTapped___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained notNowActionHandler];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 notNowActionHandler];
    v5[2]();

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 setNotNowActionHandler:0];
  }
}

- (void)_setBusinessInitiatedFeatureStateOn:(BOOL)on completion:(id)completion
{
  onCopy = on;
  completionCopy = completion;
  v6 = objc_alloc(MEMORY[0x1E69A4860]);
  v7 = [v6 initWithService:*MEMORY[0x1E69A4820] queue:MEMORY[0x1E69E96A0]];
  if (onCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9 = [MEMORY[0x1E69A4858] optionsWithFeatureID:@"bia-opt-out" state:v8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__CKBusinessOnboardingController__setBusinessInitiatedFeatureStateOn_completion___block_invoke;
  v11[3] = &unk_1E72F08F0;
  v13 = onCopy;
  v12 = completionCopy;
  v10 = completionCopy;
  [v7 updateFeatureToggleStateWithOptions:v9 completion:v11];
}

void __81__CKBusinessOnboardingController__setBusinessInitiatedFeatureStateOn_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = @"On";
  }

  else
  {
    v4 = @"Off";
  }

  v5 = v4;
  v6 = [v3 success];
  v7 = IMLogHandleForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138478083;
      v11 = @"bia-opt-out";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "CKBusinessOnboardingController => Update %{private}@ feature toggle with option %@ returned success", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __81__CKBusinessOnboardingController__setBusinessInitiatedFeatureStateOn_completion___block_invoke_cold_1(v5, v3, v8);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

- (void)initWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CKBusinessOnboardingController.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
}

void __81__CKBusinessOnboardingController__setBusinessInitiatedFeatureStateOn_completion___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 138478339;
  v5 = @"bia-opt-out";
  v6 = 2112;
  v7 = a1;
  v8 = 2048;
  v9 = [a2 error];
  _os_log_error_impl(&dword_19020E000, a3, OS_LOG_TYPE_ERROR, "CKBusinessOnboardingController => Update %{private}@ feature toggle with option %@ returned error (%lu)", &v4, 0x20u);
}

@end