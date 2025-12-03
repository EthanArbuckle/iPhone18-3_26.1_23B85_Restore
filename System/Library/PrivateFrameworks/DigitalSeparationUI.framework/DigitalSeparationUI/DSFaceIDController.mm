@interface DSFaceIDController
- (DSFaceIDController)init;
- (DSNavigationDelegate)delegate;
- (void)_didTapCancelButton;
- (void)beginFaceIDEnrollment;
- (void)pearlEnrollController:(id)controller finishedEnrollWithError:(id)error;
- (void)ratchetViewController:(id)controller didFinishWithResult:(id)result error:(id)error;
- (void)resetFaceID;
- (void)shouldShowWithCompletion:(id)completion;
- (void)startRatchetEvalInPresentationContext:(id)context;
- (void)updateFaceIDPaneConfiguration;
- (void)viewDidLoad;
@end

@implementation DSFaceIDController

- (DSFaceIDController)init
{
  v3 = os_log_create("com.apple.DigitalSeparation", "DSBiometrics");
  v4 = DSLogBiometrics;
  DSLogBiometrics = v3;

  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v5 = DSUILocStringForKey(@"FACE_ID");
    v6 = DSUILocStringForKey(@"FACE_ID_DETAIL");
    v14.receiver = self;
    v14.super_class = DSFaceIDController;
    v7 = [(DSFaceIDController *)&v14 initWithTitle:v5 detailText:v6 symbolName:@"faceid"];
  }

  else
  {
    v8 = MEMORY[0x277D755D0];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v5 = [v8 configurationWithHierarchicalColor:systemBlueColor];

    v6 = DSUILocStringForKey(@"FACE_ID");
    v10 = DSUILocStringForKey(@"FACE_ID_DETAIL");
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"faceid" withConfiguration:v5];
    v13.receiver = self;
    v13.super_class = DSFaceIDController;
    v7 = [(DSFaceIDController *)&v13 initWithTitle:v6 detailText:v10 icon:v11];
  }

  return v7;
}

- (void)shouldShowWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = sharedWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DSFaceIDController_shouldShowWithCompletion___block_invoke;
  block[3] = &unk_278F75490;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(v4, block);
}

uint64_t __47__DSFaceIDController_shouldShowWithCompletion___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D054A8] isFingerprintModificationRestricted])
  {
    v2 = DSLogBiometrics;
    if (os_log_type_enabled(DSLogBiometrics, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248C7E000, v2, OS_LOG_TYPE_INFO, "Cannot reset FaceID due to device restrictions", buf, 2u);
    }

    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = (+[DSFaceIDController hasAlternateAppearance](DSFaceIDController, "hasAlternateAppearance") || !+[DSFaceIDController isPearlEnrolled](DSFaceIDController, "isPearlEnrolled")) && +[DSFaceIDController supportsPearl];
    v6 = *(v4 + 16);

    return v6(v4, v5);
  }
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = DSFaceIDController;
  [(DSOBWelcomeController *)&v15 viewDidLoad];
  v3 = +[DSFaceIDController isPearlEnrolled];
  headerView = [(DSFaceIDController *)self headerView];
  v5 = !v3;
  if (v3)
  {
    v6 = @"FACE_ID_DETAIL";
  }

  else
  {
    v6 = @"FACE_ID_ENROLL_DETAIL";
  }

  if (v3)
  {
    v7 = @"RESET_FACEID";
  }

  else
  {
    v7 = @"CONTINUE";
  }

  if (v5)
  {
    v8 = &selRef_beginFaceIDEnrollment;
  }

  else
  {
    v8 = &selRef_resetFaceID;
  }

  v9 = DSUILocStringForKey(v6);
  [headerView setDetailText:v9];

  v10 = DSUILocStringForKey(v7);
  v11 = [DSUIUtilities setUpBoldButtonForController:self title:v10 target:self selector:*v8];
  [(DSFaceIDController *)self setBoldButton:v11];

  v12 = DSUILocStringForKey(@"NOT_NOW");
  delegate = [(DSFaceIDController *)self delegate];
  v14 = [DSUIUtilities setUpLinkButtonForController:self title:v12 target:delegate selector:sel_pushNextPane];
}

- (void)updateFaceIDPaneConfiguration
{
  v3 = +[DSFaceIDController isPearlEnrolled];
  boldButton = [(DSFaceIDController *)self boldButton];
  [boldButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  headerView = [(DSFaceIDController *)self headerView];
  v6 = !v3;
  if (v3)
  {
    v7 = @"FACE_ID_DETAIL";
  }

  else
  {
    v7 = @"FACE_ID_ENROLL_DETAIL";
  }

  if (v3)
  {
    v8 = @"RESET_FACEID";
  }

  else
  {
    v8 = @"CONTINUE";
  }

  if (v6)
  {
    v9 = &selRef_beginFaceIDEnrollment;
  }

  else
  {
    v9 = &selRef_resetFaceID;
  }

  v10 = DSUILocStringForKey(v7);
  [headerView setDetailText:v10];

  boldButton2 = [(DSFaceIDController *)self boldButton];
  v12 = DSUILocStringForKey(v8);
  [boldButton2 setTitle:v12 forState:0];

  boldButton3 = [(DSFaceIDController *)self boldButton];
  [boldButton3 addTarget:self action:*v9 forControlEvents:64];
}

- (void)resetFaceID
{
  if ([MEMORY[0x277D054D8] shouldShowBioRatchetFlow])
  {

    [(DSFaceIDController *)self startRatchetEvalInPresentationContext:self];
  }

  else
  {

    [(DSFaceIDController *)self beginFaceIDEnrollment];
  }
}

- (void)beginFaceIDEnrollment
{
  biometricManager = [(DSFaceIDController *)self biometricManager];

  if (!biometricManager)
  {
    v4 = [DSBiometricManager alloc];
    authContext = [(DSFaceIDController *)self authContext];
    v6 = [(DSBiometricManager *)v4 initWithContext:authContext];
    [(DSFaceIDController *)self setBiometricManager:v6];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v7 = getBKUIPearlEnrollControllerClass_softClass;
  v21 = getBKUIPearlEnrollControllerClass_softClass;
  if (!getBKUIPearlEnrollControllerClass_softClass)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __getBKUIPearlEnrollControllerClass_block_invoke;
    v17[3] = &unk_278F75430;
    v17[4] = &v18;
    __getBKUIPearlEnrollControllerClass_block_invoke(v17);
    v7 = v19[3];
  }

  v8 = v7;
  _Block_object_dispose(&v18, 8);
  v9 = objc_alloc_init(v7);
  [v9 setEnrollmentConfiguration:0];
  delegate = [(DSFaceIDController *)self delegate];
  authContext2 = [delegate authContext];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__DSFaceIDController_beginFaceIDEnrollment__block_invoke;
  v14[3] = &unk_278F75A38;
  v14[4] = self;
  v15 = v9;
  v16 = authContext2;
  v12 = authContext2;
  v13 = v9;
  [v12 evaluatePolicy:1007 options:MEMORY[0x277CBEC10] reply:v14];
}

void __43__DSFaceIDController_beginFaceIDEnrollment__block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    objc_initWeak(&location, a1[4]);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__DSFaceIDController_beginFaceIDEnrollment__block_invoke_2;
    v12[3] = &unk_278F75A10;
    objc_copyWeak(&v15, &location);
    v13 = a1[5];
    v14 = a1[6];
    dispatch_async(MEMORY[0x277D85CD0], v12);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    goto LABEL_9;
  }

  v8 = [v6 domain];
  if ([v8 isEqualToString:*MEMORY[0x277CD4770]])
  {
    v9 = [v7 code];

    if (v9 == -5)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__DSFaceIDController_beginFaceIDEnrollment__block_invoke_3;
      block[3] = &unk_278F75408;
      block[4] = a1[4];
      dispatch_async(MEMORY[0x277D85CD0], block);
      goto LABEL_9;
    }
  }

  else
  {
  }

  v10 = DSLogBiometrics;
  if (os_log_type_enabled(DSLogBiometrics, OS_LOG_TYPE_ERROR))
  {
    __43__DSFaceIDController_beginFaceIDEnrollment__block_invoke_cold_1(v7, v10);
  }

LABEL_9:
}

void __43__DSFaceIDController_beginFaceIDEnrollment__block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = [WeakRetained biometricManager];
  [v2 deleteAllPearlIdentities];

  v3 = a1[4];
  v4 = [a1[5] externalizedContext];
  [v3 primeWithExternalizedAuthContext:v4];

  [a1[4] setDelegate:WeakRetained];
  v5 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:a1[4]];
  [WeakRetained setFaceIDEnrollmentNavigationController:v5];

  v6 = [WeakRetained faceIDEnrollmentNavigationController];
  [v6 setModalPresentationStyle:0];

  v7 = [WeakRetained navigationController];
  v8 = [WeakRetained faceIDEnrollmentNavigationController];
  [v7 presentViewController:v8 animated:1 completion:0];

  v9 = [a1[4] navigationItem];
  v10 = objc_alloc(MEMORY[0x277D751E0]);
  v11 = DSUILocStringForKey(@"QUICK_EXIT");
  v12 = [WeakRetained delegate];
  v13 = [v10 initWithTitle:v11 style:0 target:v12 action:sel_quickExit];
  [v9 setRightBarButtonItem:v13];
}

void __43__DSFaceIDController_beginFaceIDEnrollment__block_invoke_3(uint64_t a1)
{
  v2 = DSLogBiometrics;
  if (os_log_type_enabled(DSLogBiometrics, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248C7E000, v2, OS_LOG_TYPE_INFO, "Cannot evaluate authentication policy for FaceID, no passcode set.", buf, 2u);
  }

  v3 = MEMORY[0x277D75110];
  v4 = DSUILocStringForKey(@"FACEID_REQUIRES_PASSCODE_TITLE");
  v5 = DSUILocStringForKey(@"FACEID_REQUIRES_PASSCODE_DETAIL");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  v8 = DSUILocStringForKey(@"SKIP");
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__DSFaceIDController_beginFaceIDEnrollment__block_invoke_397;
  v14[3] = &unk_278F750A0;
  v14[4] = *(a1 + 32);
  v9 = [v7 actionWithTitle:v8 style:0 handler:v14];
  [v6 addAction:v9];

  v10 = MEMORY[0x277D750F8];
  v11 = DSUILocStringForKey(@"BACK_TO_PASSCODE");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__DSFaceIDController_beginFaceIDEnrollment__block_invoke_2_402;
  v13[3] = &unk_278F750A0;
  v13[4] = *(a1 + 32);
  v12 = [v10 actionWithTitle:v11 style:1 handler:v13];
  [v6 addAction:v12];

  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
}

void __43__DSFaceIDController_beginFaceIDEnrollment__block_invoke_397(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 pushNextPane];
}

void __43__DSFaceIDController_beginFaceIDEnrollment__block_invoke_2_402(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

- (void)pearlEnrollController:(id)controller finishedEnrollWithError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  errorCopy = error;
  v8 = DSLogBiometrics;
  if (os_log_type_enabled(DSLogBiometrics, OS_LOG_TYPE_INFO))
  {
    v20 = 138543362;
    v21 = errorCopy;
    _os_log_impl(&dword_248C7E000, v8, OS_LOG_TYPE_INFO, "Enroll finished with error: %{public}@", &v20, 0xCu);
  }

  if (!errorCopy)
  {
    navigationController = [(DSFaceIDController *)self navigationController];
    [navigationController dismissViewControllerAnimated:1 completion:0];

    delegate = [(DSFaceIDController *)self delegate];
    [delegate pushNextPane];
LABEL_18:

    goto LABEL_19;
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:@"com.apple.biometrickitui.pearl_enroll"])
  {

LABEL_9:
    domain2 = [errorCopy domain];
    if ([domain2 isEqualToString:@"com.apple.biometrickitui.pearl_enroll"])
    {
      code = [errorCopy code];

      if (code != -2)
      {
LABEL_17:
        delegate = [(DSFaceIDController *)self navigationController];
        [delegate dismissViewControllerAnimated:1 completion:0];
        goto LABEL_18;
      }

      userInfo = [errorCopy userInfo];
      domain2 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      v13Domain = [domain2 domain];
      if ([v13Domain isEqualToString:@"com.apple.preferences.biokit"])
      {
        code2 = [domain2 code];

        if (code2 == 8)
        {
          v18 = DSLogBiometrics;
          if (os_log_type_enabled(DSLogBiometrics, OS_LOG_TYPE_ERROR))
          {
            [DSFaceIDController pearlEnrollController:v18 finishedEnrollWithError:?];
          }
        }
      }

      else
      {
      }
    }

    goto LABEL_17;
  }

  code3 = [errorCopy code];

  if (code3 != -1)
  {
    goto LABEL_9;
  }

  [(DSFaceIDController *)self _didTapCancelButton];
LABEL_19:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_didTapCancelButton
{
  navigationController = [(DSFaceIDController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];

  [(DSFaceIDController *)self updateFaceIDPaneConfiguration];
}

- (void)startRatchetEvalInPresentationContext:(id)context
{
  v19[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD4860];
  contextCopy = context;
  v6 = objc_alloc_init(v4);
  v7 = DSUIDTOLocStringForKey(@"RATCHET_ACTION_BUTTON_TITLE");
  [v6 setCountdownPrimaryActionTitle:v7];

  delegate = [(DSFaceIDController *)self delegate];
  deepLinkForCurrentFlowAndPane = [delegate deepLinkForCurrentFlowAndPane];

  v10 = MEMORY[0x277CD4858];
  v18[0] = &unk_285BB9268;
  v11 = DSUIDTOLocStringForKey(@"RATCHET_REASON_FACEID");
  v19[0] = v11;
  v18[1] = &unk_285BB9280;
  v12 = DSUIDTOLocStringForKey(@"RATCHET_ENDED_DETAIL_FACEID");
  v19[1] = v12;
  v18[2] = &unk_285BB9298;
  v13 = [MEMORY[0x277CBEBC0] URLWithString:deepLinkForCurrentFlowAndPane];
  v18[3] = &unk_285BB92B0;
  v19[2] = v13;
  v19[3] = contextCopy;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v15 = [v10 makeViewControllerWithOptions:v14 configuration:v6];
  ratchetVC = self->_ratchetVC;
  self->_ratchetVC = v15;

  [(LARatchetViewController *)self->_ratchetVC setDelegate:self];
  [(LARatchetViewController *)self->_ratchetVC evaluateAndShowViewController];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)ratchetViewController:(id)controller didFinishWithResult:(id)result error:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  errorCopy = error;
  resultCopy = result;
  delegate = [(DSFaceIDController *)self delegate];
  v12 = [resultCopy objectForKeyedSubscript:&unk_285BB9280];

  if (v12)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__DSFaceIDController_ratchetViewController_didFinishWithResult_error___block_invoke;
    block[3] = &unk_278F752F8;
    block[4] = self;
    v25 = delegate;
    v26 = controllerCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    userInfo = [errorCopy userInfo];
    v14 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CD4788]];

    if ([errorCopy code] || !v14)
    {
      v16 = DSLogBiometrics;
      if (os_log_type_enabled(DSLogBiometrics, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = errorCopy;
        _os_log_impl(&dword_248C7E000, v16, OS_LOG_TYPE_INFO, "FaceID Change Ratchet not armed. Reason: %@", buf, 0xCu);
      }

      navigationController = [(DSFaceIDController *)self navigationController];
      topViewController = [navigationController topViewController];
      v19 = objc_opt_class();
      v20 = objc_opt_class();

      if (v19 == v20)
      {
        navigationController2 = [(DSFaceIDController *)self navigationController];
        v22 = [navigationController2 popToViewController:self animated:0];

        [delegate pushNextPane];
      }
    }

    else if ([v14 rawValue] == 1)
    {
      v15 = DSLogBiometrics;
      if (os_log_type_enabled(DSLogBiometrics, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_248C7E000, v15, OS_LOG_TYPE_INFO, "FaceID Change Ratchet initiated, timer counting down. User exiting Safety Check.", buf, 2u);
      }

      [delegate exitFlowForRatchetWait];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __70__DSFaceIDController_ratchetViewController_didFinishWithResult_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) beginFaceIDEnrollment];
  [*(a1 + 40) sendSummaryAnalyticsWithEventName:@"com.apple.DigitalSeparation.RatchedEnded"];
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) navigationController];
    v3 = [v2 viewControllers];
    v5 = [v3 mutableCopy];

    [v5 removeObject:*(a1 + 48)];
    v4 = [*(a1 + 32) navigationController];
    [v4 setViewControllers:v5];
  }
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __43__DSFaceIDController_beginFaceIDEnrollment__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[DSFaceIDController beginFaceIDEnrollment]_block_invoke_3";
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_248C7E000, a2, OS_LOG_TYPE_ERROR, "%s: Encountered error '%{public}@' when trying to authenticate", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end