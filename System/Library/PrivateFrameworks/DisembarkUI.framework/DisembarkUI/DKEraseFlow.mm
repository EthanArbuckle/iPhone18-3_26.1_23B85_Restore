@interface DKEraseFlow
+ (id)_stringForState:(unint64_t)state;
- (Class)_viewControllerClassForState:(unint64_t)state;
- (DKEraseFlow)initWithConfiguration:(id)configuration;
- (DKEraseFlow)initWithNavigationController:(id)controller;
- (DKEraseFlow)initWithNavigationController:(id)controller configuration:(id)configuration;
- (UINavigationController)navigationController;
- (id)_viewControllerForState:(unint64_t)state;
- (id)initForSetupAssistant;
- (id)startFlow;
- (unint64_t)state;
- (void)_advanceFromInternetWarningAfterPresentedNetworkSettingsDismisses:(id)dismisses;
- (void)_advanceFromState:(unint64_t)state;
- (void)_advanceToState:(unint64_t)state;
- (void)_allowHomeButton;
- (void)_disallowHomeButton;
- (void)_endFlow;
- (void)_endFlowForCancellationWithReason:(id)reason;
- (void)_endFlowWithReason:(id)reason;
- (void)_eraseDevice;
- (void)_hostWillTerminate;
- (void)_nextStateFromState:(unint64_t)state completion:(id)completion;
- (void)_presentEraseConfirmation:(id)confirmation;
- (void)_registerForAnalyticsNotifications;
- (void)_signOutAndEraseDevice;
- (void)_startFlow;
- (void)_startNonInteractiveCloudUpload;
- (void)_supportsNonInteractiveCloudUpload:(id)upload;
- (void)_unregisterForAnalyticsNotifications;
- (void)prepareFlow:(id)flow;
- (void)showFlowContainerFromParentViewController:(id)controller completion:(id)completion;
@end

@implementation DKEraseFlow

- (DKEraseFlow)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v39.receiver = self;
  v39.super_class = DKEraseFlow;
  v6 = [(DKEraseFlow *)&v39 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    eraseDevice = v7->_eraseDevice;
    v7->_eraseDevice = &__block_literal_global_1;

    objc_initWeak(&location, v7);
    v9 = objc_alloc_init(MEMORY[0x277CD9200]);
    pathEvaluator = v7->_pathEvaluator;
    v7->_pathEvaluator = v9;

    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __37__DKEraseFlow_initWithConfiguration___block_invoke_43;
    v36 = &unk_278F7DF70;
    objc_copyWeak(&v37, &location);
    v11 = _Block_copy(&v33);
    hasInternetConnectivity = v7->_hasInternetConnectivity;
    v7->_hasInternetConnectivity = v11;

    isBasebandDead = v7->_isBasebandDead;
    v7->_isBasebandDead = &__block_literal_global_46;

    presentNetworkSettings = v7->_presentNetworkSettings;
    v7->_presentNetworkSettings = &__block_literal_global_49;

    v15 = objc_alloc_init(DKFindMyProvider);
    findMyProvider = v7->_findMyProvider;
    v7->_findMyProvider = v15;

    v17 = objc_alloc_init(DKAppleCareProvider);
    appleCareProvider = v7->_appleCareProvider;
    v7->_appleCareProvider = v17;

    v19 = objc_alloc_init(DKPasscodeProvider);
    passcodeProvider = v7->_passcodeProvider;
    v7->_passcodeProvider = v19;

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    name = [currentDevice name];
    deviceName = v7->_deviceName;
    v7->_deviceName = name;

    v24 = objc_alloc_init(DKCloudProvider);
    cloudProvider = v7->_cloudProvider;
    v7->_cloudProvider = v24;

    v26 = objc_alloc_init(DKWalletProvider);
    walletProvider = v7->_walletProvider;
    v7->_walletProvider = v26;

    v28 = [[DKAccountProvider alloc] initWithFindMyProvider:v7->_findMyProvider appleCareProvider:v7->_appleCareProvider];
    accountProvider = v7->_accountProvider;
    v7->_accountProvider = v28;

    v30 = [[DKNotableUserDataProvider alloc] initWithAccountProvider:v7->_accountProvider findMyProvider:v7->_findMyProvider appleCareProvider:v7->_appleCareProvider walletProvider:v7->_walletProvider];
    notableUserDataProvider = v7->_notableUserDataProvider;
    v7->_notableUserDataProvider = v30;

    v7->_eraseDataPlan = 0;
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __37__DKEraseFlow_initWithConfiguration___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = objc_alloc_init(MEMORY[0x277D072B0]);
  [v3 setEraseDataPlan:a2];
  v4 = _DKLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_248D68000, v4, OS_LOG_TYPE_DEFAULT, "Erasing data partition...", v7, 2u);
  }

  v5 = [objc_alloc(MEMORY[0x277D072B8]) initWithMode:4 options:v3 reason:@"Disembark"];
  v6 = [MEMORY[0x277D072C0] sharedInstance];
  [v6 resetWithRequest:v5 completion:&__block_literal_global_37];
}

void __37__DKEraseFlow_initWithConfiguration___block_invoke_34(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _DKLogSystem();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __37__DKEraseFlow_initWithConfiguration___block_invoke_34_cold_1(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248D68000, v4, OS_LOG_TYPE_DEFAULT, "Erase succeeded", v5, 2u);
  }
}

BOOL __37__DKEraseFlow_initWithConfiguration___block_invoke_43(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained pathEvaluator];
  v3 = [v2 path];

  v4 = ([v3 status] & 0xFFFFFFFFFFFFFFFDLL) != 0;
  return v4;
}

uint64_t __37__DKEraseFlow_initWithConfiguration___block_invoke_2()
{
  v0 = *MEMORY[0x277CBECE8];
  _CTServerConnectionCreateWithIdentifier();
  _CTServerConnectionGetRadioModuleIsDead();
  return 0;
}

void __37__DKEraseFlow_initWithConfiguration___block_invoke_3()
{
  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs://root=WIFI"];
  [v1 openSensitiveURL:v0 withOptions:0];
}

- (id)initForSetupAssistant
{
  v3 = +[DKConfiguration setupAssistantConfiguration];
  v4 = [(DKEraseFlow *)self initWithConfiguration:v3];

  return v4;
}

- (DKEraseFlow)initWithNavigationController:(id)controller configuration:(id)configuration
{
  controllerCopy = controller;
  v8 = [(DKEraseFlow *)self initWithConfiguration:configuration];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_navigationController, controller);
  }

  return v9;
}

- (DKEraseFlow)initWithNavigationController:(id)controller
{
  controllerCopy = controller;
  v5 = +[DKConfiguration defaultConfiguration];
  v6 = [(DKEraseFlow *)self initWithNavigationController:controllerCopy configuration:v5];

  return v6;
}

- (void)prepareFlow:(id)flow
{
  flowCopy = flow;
  v5 = _DKLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248D68000, v5, OS_LOG_TYPE_DEFAULT, "Preparing flow...", buf, 2u);
  }

  v6 = dispatch_get_global_queue(25, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__DKEraseFlow_prepareFlow___block_invoke;
  v8[3] = &unk_278F7E030;
  v8[4] = self;
  v9 = flowCopy;
  v7 = flowCopy;
  dispatch_async(v6, v8);
}

void __27__DKEraseFlow_prepareFlow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) findMyProvider];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__DKEraseFlow_prepareFlow___block_invoke_2;
  v4[3] = &unk_278F7DBC0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 fetchFindMyState:v4];
}

void __27__DKEraseFlow_prepareFlow___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appleCareProvider];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__DKEraseFlow_prepareFlow___block_invoke_3;
  v4[3] = &unk_278F7E030;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 preloadCoverageDetails:v4];
}

void __27__DKEraseFlow_prepareFlow___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) notableUserDataProvider];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__DKEraseFlow_prepareFlow___block_invoke_4;
  v4[3] = &unk_278F7E008;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 fetchNotableUserData:v4];
}

void __27__DKEraseFlow_prepareFlow___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__DKEraseFlow_prepareFlow___block_invoke_5;
  v6[3] = &unk_278F7DFE0;
  v6[4] = v4;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 _supportsNonInteractiveCloudUpload:v6];
}

void __27__DKEraseFlow_prepareFlow___block_invoke_5(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__DKEraseFlow_prepareFlow___block_invoke_6;
  block[3] = &unk_278F7DFB8;
  v12 = a2;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 48);
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __27__DKEraseFlow_prepareFlow___block_invoke_6(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _DKLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_248D68000, v2, OS_LOG_TYPE_DEFAULT, "Flow preparation completed!", &v9, 2u);
  }

  v3 = *(a1 + 64);
  v4 = _DKLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_248D68000, v4, OS_LOG_TYPE_DEFAULT, "Starting non-interactive cloud upload...", &v9, 2u);
    }

    [*(a1 + 32) _startNonInteractiveCloudUpload];
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_248D68000, v4, OS_LOG_TYPE_DEFAULT, "Unable to start non-interactive cloud upload (%{public}@)", &v9, 0xCu);
    }
  }

  [*(a1 + 32) setNotableUserData:*(a1 + 48)];
  result = (*(*(a1 + 56) + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)showFlowContainerFromParentViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  navigationController = [(DKEraseFlow *)self navigationController];
  [navigationController setModalPresentationStyle:0];

  navigationController2 = [(DKEraseFlow *)self navigationController];
  [controllerCopy presentViewController:navigationController2 animated:1 completion:completionCopy];
}

- (id)startFlow
{
  [(DKEraseFlow *)self _startFlow];

  return [(DKEraseFlow *)self initialViewController];
}

- (UINavigationController)navigationController
{
  if (!self->_navigationController)
  {
    initialViewController = [(DKEraseFlow *)self initialViewController];

    if (initialViewController)
    {
      initialViewController2 = [(DKEraseFlow *)self initialViewController];
      navigationController = [initialViewController2 navigationController];
      [(DKEraseFlow *)self setNavigationController:navigationController];
    }
  }

  navigationController = self->_navigationController;

  return navigationController;
}

- (void)_registerForAnalyticsNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__hostWillTerminate name:*MEMORY[0x277D76E50] object:0];
}

- (void)_unregisterForAnalyticsNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76E50] object:0];
}

- (void)_hostWillTerminate
{
  [(DKEraseFlow *)self _unregisterForAnalyticsNotifications];
  state = [(DKEraseFlow *)self state];

  [(DKEraseFlow *)self _sendTerminatedAnalyticsEventWithState:state willErase:0 reason:@"Terminated"];
}

- (void)_supportsNonInteractiveCloudUpload:(id)upload
{
  uploadCopy = upload;
  accountProvider = [(DKEraseFlow *)self accountProvider];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__DKEraseFlow__supportsNonInteractiveCloudUpload___block_invoke;
  v7[3] = &unk_278F7E0A8;
  v7[4] = self;
  v8 = uploadCopy;
  v6 = uploadCopy;
  [accountProvider preparationRequiredForPrimaryAppleAccountWithCompletion:v7];
}

void __50__DKEraseFlow__supportsNonInteractiveCloudUpload___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__DKEraseFlow__supportsNonInteractiveCloudUpload___block_invoke_2;
  v8[3] = &unk_278F7E080;
  v9 = v5;
  v6 = *(a1 + 40);
  v12 = a2;
  v10 = *(a1 + 32);
  v11 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __50__DKEraseFlow__supportsNonInteractiveCloudUpload___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _DKLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __50__DKEraseFlow__supportsNonInteractiveCloudUpload___block_invoke_2_cold_1(v2, v3);
    }

    (*(*(a1 + 48) + 16))();
  }

  else if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);

    v5();
  }

  else
  {
    v6 = [*(a1 + 40) cloudProvider];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__DKEraseFlow__supportsNonInteractiveCloudUpload___block_invoke_92;
    v8[3] = &unk_278F7E058;
    v7 = *(a1 + 48);
    v8[4] = *(a1 + 40);
    v9 = v7;
    [v6 hasDataToUpload:v8];
  }
}

void __50__DKEraseFlow__supportsNonInteractiveCloudUpload___block_invoke_92(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) configuration];
    v4 = [v3 allowNonInteractiveCloudUpload];

    if (v4)
    {
      v5 = [*(a1 + 32) cloudProvider];
      v6 = [v5 isRestoring];

      if (v6)
      {
        v7 = *(*(a1 + 40) + 16);
      }

      else
      {
        v9 = [*(a1 + 32) cloudProvider];
        v10 = [v9 isUploadSupportedForCurrentNetwork];

        if (!v10 || v10 == 2)
        {
          v7 = *(*(a1 + 40) + 16);
        }

        else
        {
          if (v10 != 1)
          {
            return;
          }

          v7 = *(*(a1 + 40) + 16);
        }
      }
    }

    else
    {
      v7 = *(*(a1 + 40) + 16);
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

- (void)_startNonInteractiveCloudUpload
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__DKEraseFlow__startNonInteractiveCloudUpload__block_invoke;
  v7[3] = &unk_278F7E0D0;
  objc_copyWeak(&v8, &location);
  [(DKEraseFlow *)self setCloudUploadProgressHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__DKEraseFlow__startNonInteractiveCloudUpload__block_invoke_2;
  v5[3] = &unk_278F7E0F8;
  objc_copyWeak(&v6, &location);
  [(DKEraseFlow *)self setCloudUploadCompletion:v5];
  [(DKEraseFlow *)self setCloudUploadInProgress:1];
  v3 = dispatch_get_global_queue(25, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__DKEraseFlow__startNonInteractiveCloudUpload__block_invoke_3;
  v4[3] = &unk_278F7DC60;
  v4[4] = self;
  dispatch_async(v3, v4);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __46__DKEraseFlow__startNonInteractiveCloudUpload__block_invoke(uint64_t a1, float a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v5 = a2;
  [WeakRetained setCloudUploadProgress:v5];
  [WeakRetained setCloudUploadTimeRemaining:a3];
}

void __46__DKEraseFlow__startNonInteractiveCloudUpload__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCloudUploadResults:v3];
  LODWORD(a1) = [v3 success];

  if (a1)
  {
    [WeakRetained setCloudUploadSucceeded:1];
    [WeakRetained setCloudUploadProgress:0.0];
  }
}

void __46__DKEraseFlow__startNonInteractiveCloudUpload__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudProvider];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__DKEraseFlow__startNonInteractiveCloudUpload__block_invoke_4;
  v4[3] = &unk_278F7E120;
  v5 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__DKEraseFlow__startNonInteractiveCloudUpload__block_invoke_5;
  v3[3] = &unk_278F7E148;
  v3[4] = v5;
  [v2 beginUploadAllowingExpensiveCellular:0 progressHandler:v4 completion:v3];
}

void __46__DKEraseFlow__startNonInteractiveCloudUpload__block_invoke_4(uint64_t a1, float a2, double a3)
{
  v6 = [*(a1 + 32) cloudUploadProgressHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) cloudUploadProgressHandler];
    v7[2](a2, a3);
  }
}

void __46__DKEraseFlow__startNonInteractiveCloudUpload__block_invoke_5(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) cloudUploadCompletion];

  if (v3)
  {
    v4 = [*(a1 + 32) cloudUploadCompletion];
    (v4)[2](v4, v5);
  }
}

- (void)_startFlow
{
  v3 = _DKLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248D68000, v3, OS_LOG_TYPE_DEFAULT, "Starting flow...", v4, 2u);
  }

  [MEMORY[0x277D05530] clearFollowUp];
  [(DKEraseFlow *)self _registerForAnalyticsNotifications];
  [(DKEraseFlow *)self _advanceToState:0];
}

- (void)_endFlowWithReason:(id)reason
{
  reasonCopy = reason;
  [(DKEraseFlow *)self _sendTerminatedAnalyticsEventWithState:[(DKEraseFlow *)self state] willErase:1 reason:reasonCopy];

  [(DKEraseFlow *)self _endFlow];
}

- (void)_endFlowForCancellationWithReason:(id)reason
{
  reasonCopy = reason;
  state = [(DKEraseFlow *)self state];
  reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"User Cancelled (%@)", reasonCopy];

  [(DKEraseFlow *)self _sendTerminatedAnalyticsEventWithState:state willErase:1 reason:reasonCopy];

  [(DKEraseFlow *)self _endFlow];
}

- (void)_endFlow
{
  v3 = _DKLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248D68000, v3, OS_LOG_TYPE_DEFAULT, "Ending flow...", v6, 2u);
  }

  [(DKEraseFlow *)self _allowHomeButton];
  [(DKEraseFlow *)self _unregisterForAnalyticsNotifications];
  completion = [(DKEraseFlow *)self completion];

  if (completion)
  {
    completion2 = [(DKEraseFlow *)self completion];
    completion2[2]();
  }

  else
  {
    completion2 = [(DKEraseFlow *)self navigationController];
    [completion2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (unint64_t)state
{
  navigationController = [(DKEraseFlow *)self navigationController];
  topViewController = [navigationController topViewController];
  v5 = objc_opt_class();

  if (v5 == [(DKEraseFlow *)self _viewControllerClassForState:0])
  {
    return 0;
  }

  v6 = 1;
  if (v5 != [(DKEraseFlow *)self _viewControllerClassForState:1])
  {
    v6 = 2;
    if (v5 != [(DKEraseFlow *)self _viewControllerClassForState:2])
    {
      v6 = 7;
      if (v5 != [(DKEraseFlow *)self _viewControllerClassForState:7])
      {
        v6 = 3;
        if (v5 != [(DKEraseFlow *)self _viewControllerClassForState:3])
        {
          v6 = 4;
          if (v5 != [(DKEraseFlow *)self _viewControllerClassForState:4])
          {
            return 5;
          }
        }
      }
    }
  }

  return v6;
}

- (void)_advanceFromState:(unint64_t)state
{
  navigationController = [(DKEraseFlow *)self navigationController];
  topViewController = [navigationController topViewController];
  view = [topViewController view];
  [view setUserInteractionEnabled:0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__DKEraseFlow__advanceFromState___block_invoke;
  v8[3] = &unk_278F7E170;
  v8[4] = self;
  [(DKEraseFlow *)self _nextStateFromState:state completion:v8];
}

uint64_t __33__DKEraseFlow__advanceFromState___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) navigationController];
  v5 = [v4 topViewController];
  v6 = [v5 view];
  [v6 setUserInteractionEnabled:1];

  v7 = *(a1 + 32);

  return [v7 _advanceToState:a2];
}

- (void)_advanceFromInternetWarningAfterPresentedNetworkSettingsDismisses:(id)dismisses
{
  dismissesCopy = dismisses;
  presentedViewController = [dismissesCopy presentedViewController];
  if (!presentedViewController)
  {
    [DKEraseFlow _advanceFromInternetWarningAfterPresentedNetworkSettingsDismisses:];
  }

  v6 = _DKLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248D68000, v6, OS_LOG_TYPE_DEFAULT, "Waiting for network settings dismissal", buf, 2u);
  }

  [dismissesCopy showBusy];
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  dispatch_source_set_timer(v7, 0, 0x5F5E100uLL, 0x989680uLL);
  *buf = 0;
  v15 = buf;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  objc_initWeak(&location, dismissesCopy);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __81__DKEraseFlow__advanceFromInternetWarningAfterPresentedNetworkSettingsDismisses___block_invoke;
  handler[3] = &unk_278F7E198;
  objc_copyWeak(&v12, &location);
  v10 = v7;
  v11 = buf;
  handler[4] = self;
  v8 = v7;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_activate(v8);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);
}

void __81__DKEraseFlow__advanceFromInternetWarningAfterPresentedNetworkSettingsDismisses___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v12 = _DKLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_248D68000, v12, OS_LOG_TYPE_DEFAULT, "Detected internet warning release", v20, 2u);
    }

LABEL_14:
    dispatch_source_cancel(*(a1 + 40));
    goto LABEL_15;
  }

  v4 = [WeakRetained presentedViewController];

  if (!v4)
  {
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v5 = _DKLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248D68000, v5, OS_LOG_TYPE_DEFAULT, "Detected network settings dismissal", buf, 2u);
      }

      v6 = [MEMORY[0x277CBEAA8] now];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    v9 = [*(a1 + 32) hasInternetConnectivity];
    v10 = v9[2]();

    if (v10)
    {
      v11 = _DKLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_248D68000, v11, OS_LOG_TYPE_DEFAULT, "Detected network settings connectivity", v18, 2u);
      }

      [v3 showAvailable];
      [*(a1 + 32) _advanceFromState:{objc_msgSend(*(a1 + 32), "state")}];
    }

    else
    {
      v13 = [MEMORY[0x277CBEAA8] now];
      [v13 timeIntervalSinceDate:*(*(*(a1 + 48) + 8) + 40)];
      v15 = v14;

      if (v15 < 2.0)
      {
        goto LABEL_15;
      }

      v16 = _DKLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_248D68000, v16, OS_LOG_TYPE_DEFAULT, "Network settings did not change connectivity after delay", v17, 2u);
      }

      [v3 showAvailable];
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)_advanceToState:(unint64_t)state
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = _DKLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() _stringForState:state];
    *buf = 138543362;
    v35 = v6;
    _os_log_impl(&dword_248D68000, v5, OS_LOG_TYPE_DEFAULT, "Advancing to state %{public}@...", buf, 0xCu);
  }

  if ([(DKEraseFlow *)self _isHomeButtonAllowedForState:state])
  {
    [(DKEraseFlow *)self _allowHomeButton];
  }

  else
  {
    [(DKEraseFlow *)self _disallowHomeButton];
  }

  v7 = [(DKEraseFlow *)self _viewControllerForState:state];
  if (v7)
  {
    v8 = _DKLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = v7;
      _os_log_impl(&dword_248D68000, v8, OS_LOG_TYPE_DEFAULT, "Pushing to %{public}@...", buf, 0xCu);
    }

    if (state != 4)
    {
      goto LABEL_23;
    }

    v9 = v7;
    objc_initWeak(buf, self);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __31__DKEraseFlow__advanceToState___block_invoke;
    v32[3] = &unk_278F7E120;
    v10 = v9;
    v33 = v10;
    [(DKEraseFlow *)self setCloudUploadProgressHandler:v32];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __31__DKEraseFlow__advanceToState___block_invoke_2;
    v29[3] = &unk_278F7E1C0;
    objc_copyWeak(&v31, buf);
    v11 = v10;
    v30 = v11;
    [(DKEraseFlow *)self setCloudUploadCompletion:v29];
    if ([(DKEraseFlow *)self isCloudUploadInProgress])
    {
      cloudUploadProgressHandler = [(DKEraseFlow *)self cloudUploadProgressHandler];
      [(DKEraseFlow *)self cloudUploadProgress];
      v14 = v13;
      [(DKEraseFlow *)self cloudUploadTimeRemaining];
      cloudUploadProgressHandler[2](cloudUploadProgressHandler, v14, v15);

      cloudUploadResults = [(DKEraseFlow *)self cloudUploadResults];

      if (!cloudUploadResults)
      {
        goto LABEL_22;
      }

      cloudUploadResults2 = [(DKEraseFlow *)self cloudUploadResults];
      success = [cloudUploadResults2 success];

      if (success)
      {
        goto LABEL_22;
      }

      cloudUploadCompletion = [(DKEraseFlow *)self cloudUploadCompletion];
      cloudUploadResults3 = [(DKEraseFlow *)self cloudUploadResults];
      (cloudUploadCompletion)[2](cloudUploadCompletion, cloudUploadResults3);
    }

    else
    {
      cloudUploadCompletion = [(DKEraseFlow *)self cloudProvider];
      allowExpensiveCellular = [(DKEraseFlow *)self allowExpensiveCellular];
      cloudUploadResults3 = [(DKEraseFlow *)self cloudUploadProgressHandler];
      cloudUploadCompletion2 = [(DKEraseFlow *)self cloudUploadCompletion];
      [cloudUploadCompletion beginUploadAllowingExpensiveCellular:allowExpensiveCellular progressHandler:cloudUploadResults3 completion:cloudUploadCompletion2];
    }

LABEL_22:
    objc_destroyWeak(&v31);

    objc_destroyWeak(buf);
LABEL_23:
    navigationController = [(DKEraseFlow *)self navigationController];

    if (navigationController)
    {
      navigationController2 = [(DKEraseFlow *)self navigationController];
      [navigationController2 pushViewController:v7 animated:1];
    }

    else
    {
      [(DKEraseFlow *)self setInitialViewController:v7];
    }

    goto LABEL_31;
  }

  if (state > 5)
  {
    if (state == 6)
    {
      accountProvider = [(DKEraseFlow *)self accountProvider];
      navigationController3 = [(DKEraseFlow *)self navigationController];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __31__DKEraseFlow__advanceToState___block_invoke_3;
      v28[3] = &unk_278F7E210;
      v28[4] = self;
      [accountProvider preparePrimaryAppleAccountForSignOutWithPresentingViewController:navigationController3 completion:v28];

      goto LABEL_31;
    }

    if (state != 7)
    {
      goto LABEL_31;
    }

LABEL_27:
    [DKEraseFlow _advanceToState:];
  }

  if (state != 5)
  {
    if (state >= 5)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  if ([(DKEraseFlow *)self continueWithoutInternet])
  {
    [(DKEraseFlow *)self _eraseDevice];
  }

  else
  {
    [(DKEraseFlow *)self _signOutAndEraseDevice];
  }

LABEL_31:

  v27 = *MEMORY[0x277D85DE8];
}

void __31__DKEraseFlow__advanceToState___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 success])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _advanceToState:5];
  }

  else
  {
    [*(a1 + 32) uploadDidComplete:v4];
  }
}

void __31__DKEraseFlow__advanceToState___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__DKEraseFlow__advanceToState___block_invoke_4;
  block[3] = &unk_278F7E1E8;
  v9 = a2;
  block[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __31__DKEraseFlow__advanceToState___block_invoke_4(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *MEMORY[0x277D85DE8];

    return [v3 _advanceFromState:6];
  }

  else
  {
    v6 = _DKLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = _DKIsInternalInstall();
      v9 = *(a1 + 40);
      if ((v8 & 1) == 0 && v9)
      {
        v11 = MEMORY[0x277CCACA8];
        v1 = [*(a1 + 40) domain];
        v9 = [v11 stringWithFormat:@"<Error domain: %@, code %ld>", v1, objc_msgSend(*(a1 + 40), "code")];
        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      *buf = 138412290;
      v13 = v9;
      _os_log_error_impl(&dword_248D68000, v6, OS_LOG_TYPE_ERROR, "Failed to prepare primary Apple Account for sign out: %@", buf, 0xCu);
      if (v10)
      {
      }
    }

    result = [*(a1 + 32) _endFlowWithReason:@"Primary Apple Account Preparation Failure"];
    v7 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (Class)_viewControllerClassForState:(unint64_t)state
{
  if (state <= 7 && ((0x9Fu >> state) & 1) != 0)
  {
    v4 = *off_278F7E398[state];
    v5 = objc_opt_class();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_viewControllerForState:(unint64_t)state
{
  v4 = 0;
  v40 = *MEMORY[0x277D85DE8];
  if (state > 2)
  {
    switch(state)
    {
      case 3uLL:
        v4 = objc_alloc_init(DKPromptCloudUploadViewController);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __39__DKEraseFlow__viewControllerForState___block_invoke_138;
        v26[3] = &unk_278F7E328;
        v26[4] = self;
        [(DKPromptCloudUploadViewController *)v4 setHasInternetConnectivity:v26];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __39__DKEraseFlow__viewControllerForState___block_invoke_2_139;
        v25[3] = &unk_278F7E328;
        v25[4] = self;
        [(DKPromptCloudUploadViewController *)v4 setShouldWarnForDataUsage:v25];
        presentNetworkSettings = [(DKEraseFlow *)self presentNetworkSettings];
        [(DKPromptCloudUploadViewController *)v4 setPresentNetworkSettings:presentNetworkSettings];

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __39__DKEraseFlow__viewControllerForState___block_invoke_3_140;
        v24[3] = &unk_278F7DC60;
        v24[4] = self;
        [(DKPromptCloudUploadViewController *)v4 setEraseNowBlock:v24];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __39__DKEraseFlow__viewControllerForState___block_invoke_4_141;
        v23[3] = &unk_278F7DC38;
        v23[4] = self;
        [(DKPromptCloudUploadViewController *)v4 setUploadThenEraseBlock:v23];
        break;
      case 4uLL:
        v4 = objc_alloc_init(DKCloudUploadViewController);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __39__DKEraseFlow__viewControllerForState___block_invoke_5_142;
        v22[3] = &unk_278F7DC60;
        v22[4] = self;
        [(DKPromptCloudUploadViewController *)v4 setCancelBlock:v22];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __39__DKEraseFlow__viewControllerForState___block_invoke_6_146;
        v21[3] = &unk_278F7DC60;
        v21[4] = self;
        [(DKPromptCloudUploadViewController *)v4 setSkipBlock:v21];
        break;
      case 7uLL:
        if ([(DKEraseFlow *)self requiresADPSpecificInternetWarning])
        {
          +[DKInternetWarningViewController advancedDataProtectionConfiguration];
        }

        else
        {
          +[DKInternetWarningViewController standardConfiguration];
        }
        v17 = ;
        v4 = [[DKInternetWarningViewController alloc] initWithConfiguration:v17];
        notableUserData = [(DKEraseFlow *)self notableUserData];
        [(DKPromptCloudUploadViewController *)v4 setNotableUserData:notableUserData];

        objc_initWeak(buf, v4);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __39__DKEraseFlow__viewControllerForState___block_invoke_10;
        v28[3] = &unk_278F7E300;
        v28[4] = self;
        objc_copyWeak(&v29, buf);
        [(DKPromptCloudUploadViewController *)v4 setRequireInternetBlock:v28];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __39__DKEraseFlow__viewControllerForState___block_invoke_137;
        v27[3] = &unk_278F7DC60;
        v27[4] = self;
        [(DKPromptCloudUploadViewController *)v4 setContinueWithoutInternetBlock:v27];
        objc_destroyWeak(&v29);
        objc_destroyWeak(buf);

        break;
    }
  }

  else if (state)
  {
    if (state == 1)
    {
      v4 = objc_alloc_init(DKPasscodeViewController);
      passcodeProvider = [(DKEraseFlow *)self passcodeProvider];
      unlockType = [passcodeProvider unlockType];
      passcodeProvider2 = [(DKEraseFlow *)self passcodeProvider];
      -[DKPromptCloudUploadViewController setUnlockScreenType:simplePasscodeType:](v4, "setUnlockScreenType:simplePasscodeType:", unlockType, [passcodeProvider2 simplePasscodeType]);

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __39__DKEraseFlow__viewControllerForState___block_invoke_6;
      v33[3] = &unk_278F7E2B0;
      v33[4] = self;
      [(DKPromptCloudUploadViewController *)v4 setVerifyPasscode:v33];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __39__DKEraseFlow__viewControllerForState___block_invoke_7;
      v32[3] = &unk_278F7E2D8;
      v32[4] = self;
      [(DKPromptCloudUploadViewController *)v4 setPasscodeVerified:v32];
    }

    else if (state == 2)
    {
      v5 = [DKScreenTimePasscodeViewController alloc];
      deviceName = [(DKEraseFlow *)self deviceName];
      v4 = [(DKScreenTimePasscodeViewController *)v5 initWithDeviceName:deviceName];

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __39__DKEraseFlow__viewControllerForState___block_invoke_8;
      v31[3] = &unk_278F7E2B0;
      v31[4] = self;
      [(DKPromptCloudUploadViewController *)v4 setVerifyPasscode:v31];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __39__DKEraseFlow__viewControllerForState___block_invoke_9;
      v30[3] = &unk_278F7DC60;
      v30[4] = self;
      [(DKPromptCloudUploadViewController *)v4 setPasscodeVerified:v30];
    }
  }

  else
  {
    v4 = objc_alloc_init(DKIntroViewController);
    notableUserData2 = [(DKEraseFlow *)self notableUserData];
    [(DKPromptCloudUploadViewController *)v4 setNotableUserData:notableUserData2];

    v8 = _DKLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      notableUserData3 = [(DKPromptCloudUploadViewController *)v4 notableUserData];
      *buf = 138412290;
      v39 = notableUserData3;
      _os_log_impl(&dword_248D68000, v8, OS_LOG_TYPE_DEFAULT, "viewController.notableUserData %@", buf, 0xCu);
    }

    hasInternetConnectivity = [(DKEraseFlow *)self hasInternetConnectivity];
    [(DKPromptCloudUploadViewController *)v4 setHasInternetConnectivity:hasInternetConnectivity];

    isBasebandDead = [(DKEraseFlow *)self isBasebandDead];
    [(DKPromptCloudUploadViewController *)v4 setIsBasebandDead:isBasebandDead[2]()];

    configuration = [(DKEraseFlow *)self configuration];
    -[DKPromptCloudUploadViewController setPreventOpeningSafari:](v4, "setPreventOpeningSafari:", [configuration preventOpeningSafari]);

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __39__DKEraseFlow__viewControllerForState___block_invoke;
    v37[3] = &unk_278F7E238;
    v37[4] = self;
    [(DKPromptCloudUploadViewController *)v4 setFetchRestoreState:v37];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __39__DKEraseFlow__viewControllerForState___block_invoke_2;
    v36[3] = &unk_278F7E288;
    v36[4] = self;
    [(DKPromptCloudUploadViewController *)v4 setConfirmErase:v36];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __39__DKEraseFlow__viewControllerForState___block_invoke_4;
    v35[3] = &unk_278F7DC38;
    v35[4] = self;
    [(DKPromptCloudUploadViewController *)v4 setBeginEraseBlock:v35];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __39__DKEraseFlow__viewControllerForState___block_invoke_5;
    v34[3] = &unk_278F7DC60;
    v34[4] = self;
    [(DKPromptCloudUploadViewController *)v4 setEraseLaterBlock:v34];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

void __39__DKEraseFlow__viewControllerForState___block_invoke(uint64_t a1, void (**a2)(void, void))
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 cloudProvider];
  a2[2](v4, [v5 isRestoring]);
}

void __39__DKEraseFlow__viewControllerForState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__DKEraseFlow__viewControllerForState___block_invoke_3;
  v6[3] = &unk_278F7E260;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 _presentEraseConfirmation:v6];
}

uint64_t __39__DKEraseFlow__viewControllerForState___block_invoke_3(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 setEraseDataPlan:?];
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  else
  {

    return [v3 _endFlowForCancellationWithReason:@"Confirmation"];
  }
}

uint64_t __39__DKEraseFlow__viewControllerForState___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSkipLocalDataCheck:a2];
  v3 = *(a1 + 32);
  v4 = [v3 state];

  return [v3 _advanceFromState:v4];
}

uint64_t __39__DKEraseFlow__viewControllerForState___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 postFollowUp];

  if (v3)
  {
    [MEMORY[0x277D05530] postFollowUp];
  }

  v4 = *(a1 + 32);

  return [v4 _endFlowWithReason:@"Not Now"];
}

uint64_t __39__DKEraseFlow__viewControllerForState___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 passcodeProvider];
  v5 = [v4 verifyPasscode:v3];

  return v5;
}

uint64_t __39__DKEraseFlow__viewControllerForState___block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 accountProvider];
  [v7 cacheLocalDevicePasscode:v6 passcodeType:a3];

  v8 = *(a1 + 32);
  v9 = [v8 state];

  return [v8 _advanceFromState:v9];
}

uint64_t __39__DKEraseFlow__viewControllerForState___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 passcodeProvider];
  v5 = [v4 verifyScreenTimePasscode:v3];

  return v5;
}

uint64_t __39__DKEraseFlow__viewControllerForState___block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 state];

  return [v1 _advanceFromState:v2];
}

void __39__DKEraseFlow__viewControllerForState___block_invoke_10(uint64_t a1)
{
  v2 = _DKLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_248D68000, v2, OS_LOG_TYPE_DEFAULT, "Requiring internet and presenting network settings", v9, 2u);
  }

  [*(a1 + 32) setContinueWithoutInternet:0];
  v3 = [*(a1 + 32) presentNetworkSettings];
  v3[2]();

  v4 = [*(a1 + 32) configuration];
  v5 = [v4 presentsNetworkSettingsModally];

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = [WeakRetained presentedViewController];

      if (v8)
      {
        [*(a1 + 32) _advanceFromInternetWarningAfterPresentedNetworkSettingsDismisses:v7];
      }
    }
  }
}

uint64_t __39__DKEraseFlow__viewControllerForState___block_invoke_137(uint64_t a1)
{
  v2 = _DKLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248D68000, v2, OS_LOG_TYPE_DEFAULT, "Continuing without internet", v4, 2u);
  }

  [*(a1 + 32) setContinueWithoutInternet:1];
  return [*(a1 + 32) _advanceFromState:{objc_msgSend(*(a1 + 32), "state")}];
}

BOOL __39__DKEraseFlow__viewControllerForState___block_invoke_138(uint64_t a1)
{
  v1 = [*(a1 + 32) cloudProvider];
  v2 = [v1 isUploadSupportedForCurrentNetwork];

  return (v2 - 1) < 2;
}

BOOL __39__DKEraseFlow__viewControllerForState___block_invoke_2_139(uint64_t a1)
{
  v1 = [*(a1 + 32) cloudProvider];
  v2 = [v1 isUploadSupportedForCurrentNetwork];

  return v2 == 2;
}

uint64_t __39__DKEraseFlow__viewControllerForState___block_invoke_4_141(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setAllowExpensiveCellular:a2];
  v3 = *(a1 + 32);
  v4 = [v3 state];

  return [v3 _advanceFromState:v4];
}

uint64_t __39__DKEraseFlow__viewControllerForState___block_invoke_6_146(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudProvider];
  [v2 cancelUpload];

  v3 = *(a1 + 32);
  v4 = [v3 state];

  return [v3 _advanceFromState:v4];
}

- (void)_nextStateFromState:(unint64_t)state completion:(id)completion
{
  completionCopy = completion;
  if (state > 3)
  {
    if (state <= 5)
    {
      if (state != 4)
      {
        [DKEraseFlow _nextStateFromState:completion:];
      }
    }

    else
    {
      if (state != 6)
      {
        if (state != 7)
        {
          goto LABEL_31;
        }

        continueWithoutInternet = [(DKEraseFlow *)self continueWithoutInternet];
        v10 = completionCopy[2];
        if (!continueWithoutInternet)
        {
          v11 = completionCopy;
          v12 = 6;
LABEL_25:
          v10(v11, v12);
          goto LABEL_31;
        }

LABEL_24:
        v11 = completionCopy;
        v12 = 5;
        goto LABEL_25;
      }

      if (![(DKEraseFlow *)self cloudUploadSucceeded]&& ![(DKEraseFlow *)self skipLocalDataCheck])
      {
        configuration = [(DKEraseFlow *)self configuration];
        skipBackup = [configuration skipBackup];

        if (!skipBackup)
        {
          if ([(DKEraseFlow *)self isCloudUploadInProgress])
          {
            goto LABEL_13;
          }

          cloudProvider = [(DKEraseFlow *)self cloudProvider];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __46__DKEraseFlow__nextStateFromState_completion___block_invoke_147;
          v24[3] = &unk_278F7D998;
          v25 = completionCopy;
          [cloudProvider hasDataToUpload:v24];

          v22 = v25;
          goto LABEL_28;
        }
      }
    }

    v10 = completionCopy[2];
    goto LABEL_24;
  }

  if (state > 1)
  {
    if (state != 2)
    {
LABEL_13:
      (completionCopy[2])(completionCopy, 4);
      goto LABEL_31;
    }

    hasInternetConnectivity = [(DKEraseFlow *)self hasInternetConnectivity];
    v16 = hasInternetConnectivity[2]();

    if (v16)
    {
      selfCopy3 = self;
      v18 = 7;
      goto LABEL_30;
    }

    accountProvider = [(DKEraseFlow *)self accountProvider];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __46__DKEraseFlow__nextStateFromState_completion___block_invoke;
    v26[3] = &unk_278F7E378;
    v26[4] = self;
    v27 = completionCopy;
    [accountProvider primaryAppleAccountRequiresADPSpecificInternetWarning:v26];

    v22 = v27;
LABEL_28:

    goto LABEL_31;
  }

  if (!state)
  {
    passcodeProvider = [(DKEraseFlow *)self passcodeProvider];
    isDevicePasscodeSet = [passcodeProvider isDevicePasscodeSet];

    if (isDevicePasscodeSet)
    {
      (completionCopy[2])(completionCopy, 1);
      goto LABEL_31;
    }

    selfCopy3 = self;
    v18 = 1;
    goto LABEL_30;
  }

  if (state == 1)
  {
    passcodeProvider2 = [(DKEraseFlow *)self passcodeProvider];
    isScreenTimePasscodeSet = [passcodeProvider2 isScreenTimePasscodeSet];

    if (isScreenTimePasscodeSet)
    {
      (completionCopy[2])(completionCopy, 2);
      goto LABEL_31;
    }

    selfCopy3 = self;
    v18 = 2;
LABEL_30:
    [(DKEraseFlow *)selfCopy3 _nextStateFromState:v18 completion:completionCopy];
  }

LABEL_31:
}

void __46__DKEraseFlow__nextStateFromState_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__DKEraseFlow__nextStateFromState_completion___block_invoke_2;
  v9[3] = &unk_278F7E350;
  v13 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __46__DKEraseFlow__nextStateFromState_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = _DKLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v9[0] = 67109378;
    v9[1] = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_248D68000, v2, OS_LOG_TYPE_DEFAULT, "Requires adp specific internet warning %d error %@", v9, 0x12u);
  }

  if (!*(a1 + 32) && (([*(a1 + 40) setRequiresADPSpecificInternetWarning:*(a1 + 56)], (*(a1 + 56) & 1) != 0) || (objc_msgSend(*(a1 + 40), "notableUserData"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "findMyEnabled"), v6, v7)))
  {
    result = (*(*(a1 + 48) + 16))();
  }

  else
  {
    result = [*(a1 + 40) _nextStateFromState:7 completion:*(a1 + 48)];
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __46__DKEraseFlow__nextStateFromState_completion___block_invoke_147(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 5;
  }

  return (*(v2 + 16))(v2, v3);
}

+ (id)_stringForState:(unint64_t)state
{
  if (state - 1 > 6)
  {
    return @"Introduction";
  }

  else
  {
    return off_278F7E3D8[state - 1];
  }
}

- (void)_disallowHomeButton
{
  homeButtonConsumer = [(DKEraseFlow *)self homeButtonConsumer];

  if (!homeButtonConsumer)
  {
    v4 = _DKLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_248D68000, v4, OS_LOG_TYPE_DEFAULT, "Disallowing home button use...", v7, 2u);
    }

    mEMORY[0x277D66AA0] = [MEMORY[0x277D66AA0] sharedInstance];
    v6 = [mEMORY[0x277D66AA0] beginConsumingPressesForButtonKind:1 eventConsumer:self priority:0];
    [(DKEraseFlow *)self setHomeButtonConsumer:v6];
  }
}

- (void)_allowHomeButton
{
  homeButtonConsumer = [(DKEraseFlow *)self homeButtonConsumer];

  if (homeButtonConsumer)
  {
    v4 = _DKLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_248D68000, v4, OS_LOG_TYPE_DEFAULT, "Allowing home button use...", v6, 2u);
    }

    homeButtonConsumer2 = [(DKEraseFlow *)self homeButtonConsumer];
    [homeButtonConsumer2 invalidate];

    [(DKEraseFlow *)self setHomeButtonConsumer:0];
  }
}

- (void)_presentEraseConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  notableUserData = [(DKEraseFlow *)self notableUserData];
  cellularPlans = [notableUserData cellularPlans];
  v8 = [DKEraseConfirmationAlertController alertControllerWithCellularPlans:cellularPlans completion:confirmationCopy];

  navigationController = [(DKEraseFlow *)self navigationController];
  [navigationController presentViewController:v8 animated:1 completion:0];
}

- (void)_eraseDevice
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(DKEraseFlow *)self _sendTerminatedAnalyticsEventWithState:[(DKEraseFlow *)self state] willErase:1 reason:@"User Initiated"];
  eraseDevice = [(DKEraseFlow *)self eraseDevice];
  eraseDevice[2](eraseDevice, [(DKEraseFlow *)self eraseDataPlan]);
}

- (void)_signOutAndEraseDevice
{
  accountProvider = [(DKEraseFlow *)self accountProvider];
  if (!accountProvider)
  {
    [DKEraseFlow _signOutAndEraseDevice];
  }

  findMyProvider = [(DKEraseFlow *)self findMyProvider];
  if (!findMyProvider)
  {
    [DKEraseFlow _signOutAndEraseDevice];
  }

  navigationController = [(DKEraseFlow *)self navigationController];
  topViewController = [navigationController topViewController];
  if (!topViewController)
  {
    [DKEraseFlow _signOutAndEraseDevice];
  }

  v7 = _DKLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248D68000, v7, OS_LOG_TYPE_DEFAULT, "Starting sign out of primary Apple account...", buf, 2u);
  }

  accountProvider2 = [(DKEraseFlow *)self accountProvider];
  navigationController2 = [(DKEraseFlow *)self navigationController];
  topViewController2 = [navigationController2 topViewController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__DKEraseFlow__signOutAndEraseDevice__block_invoke;
  v11[3] = &unk_278F7E210;
  v11[4] = self;
  [accountProvider2 signOutPrimaryAppleAccountWithPresentingViewController:topViewController2 completion:v11];
}

void __37__DKEraseFlow__signOutAndEraseDevice__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__DKEraseFlow__signOutAndEraseDevice__block_invoke_2;
  block[3] = &unk_278F7E1E8;
  v11 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__DKEraseFlow__signOutAndEraseDevice__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 40);

    [v2 _eraseDevice];
  }

  else
  {
    v3 = _DKLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __37__DKEraseFlow__signOutAndEraseDevice__block_invoke_2_cold_1(a1, v3);
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__DKEraseFlow__signOutAndEraseDevice__block_invoke_178;
    v7[3] = &unk_278F7DC60;
    v7[4] = *(a1 + 40);
    v4 = [MEMORY[0x277D75110] dkui_unknownFailureAlertControllerWithCompletion:v7];
    v5 = [*(a1 + 40) navigationController];
    v6 = [v5 topViewController];
    [v6 presentViewController:v4 animated:1 completion:0];
  }
}

void __37__DKEraseFlow_initWithConfiguration___block_invoke_34_cold_1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = _DKIsInternalInstall();
  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x277CCACA8];
    v2 = [a1 domain];
    a1 = [v6 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(a1, "code")];
  }

  *buf = 138543362;
  v9 = a1;
  _os_log_error_impl(&dword_248D68000, a2, OS_LOG_TYPE_ERROR, "Failed to erase: %{public}@", buf, 0xCu);
  if (!v5)
  {
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __50__DKEraseFlow__supportsNonInteractiveCloudUpload___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_248D68000, a2, OS_LOG_TYPE_ERROR, "Failed to determine preparation requirements for primary Apple Account: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __37__DKEraseFlow__signOutAndEraseDevice__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_248D68000, a2, OS_LOG_TYPE_ERROR, "Failed to sign out of primary Apple account: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end