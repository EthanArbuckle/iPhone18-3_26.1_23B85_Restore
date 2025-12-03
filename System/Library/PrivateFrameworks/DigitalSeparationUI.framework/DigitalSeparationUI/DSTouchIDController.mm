@interface DSTouchIDController
- (DSNavigationDelegate)delegate;
- (DSTouchIDController)init;
- (id)_cancelLeftNavigationItem;
- (void)_userDidTapCancelButton:(id)button;
- (void)addNavigationItems;
- (void)beginEnrollment;
- (void)dealloc;
- (void)deleteIdentity;
- (void)enrollResult:(int)result bkIdentity:(id)identity;
- (void)ratchetViewController:(id)controller didFinishWithResult:(id)result error:(id)error;
- (void)resetTouchID;
- (void)restartEnrollment;
- (void)shouldShowWithCompletion:(id)completion;
- (void)startRatchetEvalInPresentationContext:(id)context;
- (void)updateTouchIDPaneConfiguration;
- (void)viewDidLoad;
@end

@implementation DSTouchIDController

- (DSTouchIDController)init
{
  v3 = os_log_create("com.apple.DigitalSeparation", "DSBiometrics");
  v4 = DSLogBiometrics_1;
  DSLogBiometrics_1 = v3;

  v5 = +[DSTouchIDController isTouchIDEnrolled];
  v6 = !v5;
  if (v5)
  {
    v7 = @"TOUCH_ID";
  }

  else
  {
    v7 = @"TOUCH_ID_ENROLL";
  }

  if (v6)
  {
    v8 = @"TOUCH_ID_ENROLL_DETAIL";
  }

  else
  {
    v8 = @"TOUCH_ID_DETAIL";
  }

  v9 = DSUILocStringForKey(v7);
  v10 = DSUILocStringForKey(v8);
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v15.receiver = self;
    v15.super_class = DSTouchIDController;
    v11 = [(DSTouchIDController *)&v15 initWithTitle:v9 detailText:v10 symbolName:@"touchid"];
  }

  else
  {
    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"touchid"];
    v14.receiver = self;
    v14.super_class = DSTouchIDController;
    v11 = [(DSTouchIDController *)&v14 initWithTitle:v9 detailText:v10 icon:v12];
  }

  return v11;
}

- (void)shouldShowWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = sharedWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DSTouchIDController_shouldShowWithCompletion___block_invoke;
  block[3] = &unk_278F75490;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(v4, block);
}

uint64_t __48__DSTouchIDController_shouldShowWithCompletion___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D054A8] isFingerprintModificationRestricted])
  {
    v2 = DSLogBiometrics_1;
    if (os_log_type_enabled(DSLogBiometrics_1, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248C7E000, v2, OS_LOG_TYPE_INFO, "Cannot reset TouchID due to device restrictions", buf, 2u);
    }

    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = (+[DSTouchIDController hasMultipleFingerprints](DSTouchIDController, "hasMultipleFingerprints") || !+[DSTouchIDController isTouchIDEnrolled](DSTouchIDController, "isTouchIDEnrolled")) && +[DSBiometricManager supportsMesa];
    v6 = *(v4 + 16);

    return v6(v4, v5);
  }
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = DSTouchIDController;
  [(DSOBWelcomeController *)&v12 viewDidLoad];
  v3 = +[DSTouchIDController isTouchIDEnrolled];
  v4 = !v3;
  if (v3)
  {
    v5 = @"RESET_TOUCH_ID";
  }

  else
  {
    v5 = @"CONTINUE";
  }

  if (v4)
  {
    v6 = &selRef_enrollTouchID;
  }

  else
  {
    v6 = &selRef_resetTouchID;
  }

  v7 = DSUILocStringForKey(v5);
  v8 = [DSUIUtilities setUpBoldButtonForController:self title:v7 target:self selector:*v6];
  [(DSTouchIDController *)self setBoldButton:v8];

  v9 = DSUILocStringForKey(@"NOT_NOW");
  delegate = [(DSTouchIDController *)self delegate];
  v11 = [DSUIUtilities setUpLinkButtonForController:self title:v9 target:delegate selector:sel_pushNextPane];
}

- (void)resetTouchID
{
  if ([MEMORY[0x277D054D8] shouldShowBioRatchetFlow])
  {

    [(DSTouchIDController *)self startRatchetEvalInPresentationContext:self];
  }

  else
  {
    +[DSBiometricManager deleteAllTouchIDs];

    [(DSTouchIDController *)self beginEnrollment];
  }
}

- (void)updateTouchIDPaneConfiguration
{
  v3 = +[DSTouchIDController isTouchIDEnrolled];
  boldButton = [(DSTouchIDController *)self boldButton];
  [boldButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  headerView = [(DSTouchIDController *)self headerView];
  v6 = !v3;
  if (v3)
  {
    v7 = @"TOUCH_ID_DETAIL";
  }

  else
  {
    v7 = @"TOUCH_ID_ENROLL_DETAIL";
  }

  if (v3)
  {
    v8 = @"RESET_TOUCH_ID";
  }

  else
  {
    v8 = @"CONTINUE";
  }

  if (v6)
  {
    v9 = &selRef_enrollTouchID;
  }

  else
  {
    v9 = &selRef_resetTouchID;
  }

  v10 = DSUILocStringForKey(v7);
  [headerView setDetailText:v10];

  boldButton2 = [(DSTouchIDController *)self boldButton];
  v12 = DSUILocStringForKey(v8);
  [boldButton2 setTitle:v12 forState:0];

  boldButton3 = [(DSTouchIDController *)self boldButton];
  [boldButton3 addTarget:self action:*v9 forControlEvents:64];
}

- (void)dealloc
{
  [(BiometricKitUIEnrollViewController *)self->_enrollController setDelegate:0];
  v3.receiver = self;
  v3.super_class = DSTouchIDController;
  [(DSTouchIDController *)&v3 dealloc];
}

- (void)beginEnrollment
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v3 = getBiometricKitUIClass_softClass;
  v17 = getBiometricKitUIClass_softClass;
  if (!getBiometricKitUIClass_softClass)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __getBiometricKitUIClass_block_invoke;
    v13[3] = &unk_278F75430;
    v13[4] = &v14;
    __getBiometricKitUIClass_block_invoke(v13);
    v3 = v15[3];
  }

  v4 = v3;
  _Block_object_dispose(&v14, 8);
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance getEnrollUIViewController:1 bundleName:0];
  enrollController = self->_enrollController;
  self->_enrollController = v6;

  if (self->_enrollController)
  {
    delegate = [(DSTouchIDController *)self delegate];
    authContext = [delegate authContext];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__DSTouchIDController_beginEnrollment__block_invoke;
    v11[3] = &unk_278F75B48;
    v11[4] = self;
    v12 = authContext;
    v10 = authContext;
    [v10 evaluatePolicy:1007 options:MEMORY[0x277CBEC10] reply:v11];
  }
}

void __38__DSTouchIDController_beginEnrollment__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DSLogBiometrics_1;
    if (os_log_type_enabled(DSLogBiometrics_1, OS_LOG_TYPE_ERROR))
    {
      __38__DSTouchIDController_beginEnrollment__block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__DSTouchIDController_beginEnrollment__block_invoke_346;
    v10[3] = &unk_278F75A10;
    objc_copyWeak(&v13, &location);
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __38__DSTouchIDController_beginEnrollment__block_invoke_346(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = [WeakRetained enrollController];
  v3 = [a1[4] externalizedContext];
  [v2 setProperty:v3 forKey:@"credset"];

  v4 = [WeakRetained enrollController];
  [v4 setDelegate:a1[5]];

  v5 = objc_alloc(MEMORY[0x277D757A0]);
  v6 = [WeakRetained enrollController];
  v7 = [v5 initWithRootViewController:v6];

  [v7 setModalPresentationStyle:0];
  v8 = [a1[5] navigationController];
  [v8 presentViewController:v7 animated:1 completion:0];
}

- (void)restartEnrollment
{
  [(DSTouchIDController *)self deleteIdentity];
  enrollController = self->_enrollController;

  [(BiometricKitUIEnrollViewController *)enrollController restartEnroll];
}

- (void)deleteIdentity
{
  if (self->_identity)
  {
    [MEMORY[0x277D3F970] removeIdentity:?];
    identity = self->_identity;
    self->_identity = 0;
  }
}

- (void)addNavigationItems
{
  enrollController = [(DSTouchIDController *)self enrollController];
  navigationItem = [enrollController navigationItem];
  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = DSUILocStringForKey(@"QUICK_EXIT");
  delegate = [(DSTouchIDController *)self delegate];
  v8 = [v5 initWithTitle:v6 style:0 target:delegate action:sel_quickExit];
  [navigationItem setRightBarButtonItem:v8];

  enrollController2 = [(DSTouchIDController *)self enrollController];
  navigationItem2 = [enrollController2 navigationItem];
  _cancelLeftNavigationItem = [(DSTouchIDController *)self _cancelLeftNavigationItem];
  [navigationItem2 setLeftBarButtonItem:_cancelLeftNavigationItem animated:1];
}

- (id)_cancelLeftNavigationItem
{
  cancelLeftNavigationItem = self->_cancelLeftNavigationItem;
  if (!cancelLeftNavigationItem)
  {
    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__userDidTapCancelButton_];
    v5 = self->_cancelLeftNavigationItem;
    self->_cancelLeftNavigationItem = v4;

    cancelLeftNavigationItem = self->_cancelLeftNavigationItem;
  }

  return cancelLeftNavigationItem;
}

- (void)_userDidTapCancelButton:(id)button
{
  v4 = DSLogBiometrics_1;
  if (os_log_type_enabled(DSLogBiometrics_1, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_248C7E000, v4, OS_LOG_TYPE_INFO, "Touch ID user did tap cancel", v6, 2u);
  }

  [(DSTouchIDController *)self deleteIdentity];
  navigationController = [(DSTouchIDController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];

  [(DSTouchIDController *)self updateTouchIDPaneConfiguration];
}

- (void)enrollResult:(int)result bkIdentity:(id)identity
{
  identityCopy = identity;
  if (identityCopy)
  {
    manager = [MEMORY[0x277CF1BF8] manager];
    uuid = [identityCopy uuid];
    v9 = [manager getIdentityFromUUID:uuid];
  }

  else
  {
    v9 = 0;
  }

  if (result <= 3)
  {
    if (!result)
    {
      self->_enrollComplete = 0;
      [(DSTouchIDController *)self addNavigationItems];
      goto LABEL_22;
    }

    if (result == 1)
    {
      if (v9)
      {
        [v9 setType:1];
        v19 = 0;
        v20 = &v19;
        v21 = 0x2050000000;
        v12 = getPABSBiometricControllerClass_softClass;
        v22 = getPABSBiometricControllerClass_softClass;
        if (!getPABSBiometricControllerClass_softClass)
        {
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __getPABSBiometricControllerClass_block_invoke;
          v18[3] = &unk_278F75430;
          v18[4] = &v19;
          __getPABSBiometricControllerClass_block_invoke(v18);
          v12 = v20[3];
        }

        v13 = v12;
        _Block_object_dispose(&v19, 8);
        v14 = objc_alloc_init(v12);
        v15 = [v14 nextIdentityNameForIdentityType:1];
        [v9 setName:v15];

        manager2 = [MEMORY[0x277CF1BF8] manager];
        [manager2 updateIdentity:v9];
        goto LABEL_21;
      }

      v17 = DSLogBiometrics_1;
      if (os_log_type_enabled(DSLogBiometrics_1, OS_LOG_TYPE_ERROR))
      {
        [DSTouchIDController enrollResult:v17 bkIdentity:?];
      }

      goto LABEL_22;
    }

    if (result != 3)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  if ((result - 6) < 2)
  {
LABEL_13:
    if (v9)
    {
      manager2 = [MEMORY[0x277CF1BF8] manager];
      [manager2 removeIdentity:v9];
LABEL_21:

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (result == 4)
  {
    self->_enrollComplete = 1;
    navigationController = [(DSTouchIDController *)self navigationController];
    [navigationController dismissViewControllerAnimated:1 completion:0];

    manager2 = [(DSTouchIDController *)self delegate];
    [manager2 pushNextPane];
    goto LABEL_21;
  }

  if (result == 9)
  {
    identity = self->_identity;
    self->_identity = 0;

    [(DSTouchIDController *)self restartEnrollment];
  }

LABEL_22:
}

- (void)startRatchetEvalInPresentationContext:(id)context
{
  v19[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD4860];
  contextCopy = context;
  v6 = objc_alloc_init(v4);
  v7 = DSUIDTOLocStringForKey(@"RATCHET_ACTION_BUTTON_TITLE");
  [v6 setCountdownPrimaryActionTitle:v7];

  delegate = [(DSTouchIDController *)self delegate];
  deepLinkForCurrentFlowAndPane = [delegate deepLinkForCurrentFlowAndPane];

  v10 = MEMORY[0x277CD4858];
  v18[0] = &unk_285BB9388;
  v11 = DSUIDTOLocStringForKey(@"RATCHET_REASON_TOUCHID");
  v19[0] = v11;
  v18[1] = &unk_285BB93A0;
  v12 = DSUIDTOLocStringForKey(@"RATCHET_ENDED_DETAIL_TOUCHID");
  v19[1] = v12;
  v18[2] = &unk_285BB93B8;
  v13 = [MEMORY[0x277CBEBC0] URLWithString:deepLinkForCurrentFlowAndPane];
  v18[3] = &unk_285BB93D0;
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
  delegate = [(DSTouchIDController *)self delegate];
  v12 = [resultCopy objectForKeyedSubscript:&unk_285BB93A0];

  if (v12)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__DSTouchIDController_ratchetViewController_didFinishWithResult_error___block_invoke;
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
      v16 = DSLogBiometrics_1;
      if (os_log_type_enabled(DSLogBiometrics_1, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = errorCopy;
        _os_log_impl(&dword_248C7E000, v16, OS_LOG_TYPE_INFO, "TouchID Change Ratchet not armed. Reason: %@", buf, 0xCu);
      }

      navigationController = [(DSTouchIDController *)self navigationController];
      topViewController = [navigationController topViewController];
      v19 = objc_opt_class();
      v20 = objc_opt_class();

      if (v19 == v20)
      {
        navigationController2 = [(DSTouchIDController *)self navigationController];
        v22 = [navigationController2 popToViewController:self animated:0];

        [delegate pushNextPane];
      }
    }

    else if ([v14 rawValue] == 1)
    {
      v15 = DSLogBiometrics_1;
      if (os_log_type_enabled(DSLogBiometrics_1, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_248C7E000, v15, OS_LOG_TYPE_INFO, "TouchID Change Ratchet initiated, timer counting down. User exiting Safety Check.", buf, 2u);
      }

      [delegate exitFlowForRatchetWait];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __71__DSTouchIDController_ratchetViewController_didFinishWithResult_error___block_invoke(uint64_t a1)
{
  +[DSBiometricManager deleteAllTouchIDs];
  [*(a1 + 32) beginEnrollment];
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

void __38__DSTouchIDController_beginEnrollment__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248C7E000, a2, OS_LOG_TYPE_ERROR, "Error while evaluating Touch ID authentication policy, error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end