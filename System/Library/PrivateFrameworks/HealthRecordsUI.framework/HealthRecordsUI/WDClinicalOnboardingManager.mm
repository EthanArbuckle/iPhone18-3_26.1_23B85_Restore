@interface WDClinicalOnboardingManager
- (HKNavigationController)inFlightClinicalSharingLoginViewController;
- (HKNavigationController)onboardingTileNavigationController;
- (HRProfile)profile;
- (WDClinicalOnboardingManager)init;
- (WDClinicalOnboardingManager)initWithProfile:(id)profile;
- (WDClinicalOnboardingOAuthNavigationViewController)inFlightLoginViewController;
- (id)_deepLinkOnboardingViewControllerWithOptions:(unint64_t)options sourceIdentifier:(id)identifier;
- (id)gatewayProxyWithActivity:(id)activity;
- (id)getPendingOnboardingGatewayAndClear;
- (void)_didDismissLoginViewController:(id)controller;
- (void)_dismissInFlightLoginViewControllerIfExistsWithCompletion:(id)completion;
- (void)_onboardWithActivity:(id)activity gatewayProxy:(id)proxy hasGatewayBackedAccounts:(BOOL)accounts presentingViewController:(id)controller;
- (void)_presentAccount:(id)account presentingViewController:(id)controller sourceIdentifier:(id)identifier;
- (void)_startLoginWithLoginViewController:(id)controller presentingViewController:(id)viewController;
- (void)_startOrReplaceLoginWithLoginViewController:(id)controller presentingViewController:(id)viewController;
- (void)dealloc;
- (void)onboardWithActivity:(id)activity presentingViewController:(id)controller;
- (void)registerInflightOnboardingViewController:(id)controller completion:(id)completion;
@end

@implementation WDClinicalOnboardingManager

- (WDClinicalOnboardingManager)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (WDClinicalOnboardingManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = WDClinicalOnboardingManager;
  v5 = [(WDClinicalOnboardingManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (void)dealloc
{
  inFlightLoginViewController = [(WDClinicalOnboardingManager *)self inFlightLoginViewController];
  [inFlightLoginViewController dismissViewControllerAnimated:1 completion:0];

  v4.receiver = self;
  v4.super_class = WDClinicalOnboardingManager;
  [(WDClinicalOnboardingManager *)&v4 dealloc];
}

- (void)onboardWithActivity:(id)activity presentingViewController:(id)controller
{
  v30 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  controllerCopy = controller;
  _HKInitializeLogging();
  v8 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    logPrefix = [(WDClinicalOnboardingManager *)self logPrefix];
    v11 = HKSensitiveLogItem();
    *buf = 138543618;
    v27 = logPrefix;
    v28 = 2114;
    v29 = v11;
    _os_log_impl(&dword_1D101F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ is onboarding with activity %{public}@", buf, 0x16u);
  }

  v12 = [activityCopy objectForKeyedSubscript:*MEMORY[0x1E69A3EB8]];
  objc_opt_class();
  v13 = HKSafeObject();

  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69A3ED8]];
  objc_opt_class();
  v15 = HKSafeObject();

  v16 = [(WDClinicalOnboardingManager *)self gatewayProxyWithActivity:activityCopy];
  if (v16)
  {
    profile = [(WDClinicalOnboardingManager *)self profile];
    clinicalAccountStore = [profile clinicalAccountStore];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __76__WDClinicalOnboardingManager_onboardWithActivity_presentingViewController___block_invoke;
    v20[3] = &unk_1E83DD2E0;
    v21 = v16;
    selfCopy = self;
    v23 = controllerCopy;
    v24 = v15;
    v25 = activityCopy;
    [clinicalAccountStore fetchAllAccountsWithCompletion:v20];

    v19 = v21;
  }

  else
  {
    v19 = [(WDClinicalOnboardingManager *)self _deepLinkOnboardingViewControllerWithOptions:0 sourceIdentifier:v15];
    [v19 setShowProviderNotFound:1];
    [(WDClinicalOnboardingManager *)self _startOrReplaceLoginWithLoginViewController:v19 presentingViewController:controllerCopy];
  }
}

void __76__WDClinicalOnboardingManager_onboardWithActivity_presentingViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WDClinicalOnboardingManager_onboardWithActivity_presentingViewController___block_invoke_2;
  block[3] = &unk_1E83DD2B8;
  v11 = v3;
  *&v4 = *(a1 + 32);
  *(&v4 + 1) = *(a1 + 40);
  v9 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v12 = v9;
  v13 = v7;
  v14 = *(a1 + 64);
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__WDClinicalOnboardingManager_onboardWithActivity_presentingViewController___block_invoke_2(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__WDClinicalOnboardingManager_onboardWithActivity_presentingViewController___block_invoke_3;
  v6[3] = &unk_1E83DD290;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = [v2 hk_firstObjectPassingTest:v6];
  if (v3)
  {
    [*(a1 + 48) _presentAccount:v3 presentingViewController:*(a1 + 56) sourceIdentifier:*(a1 + 64)];
  }

  else
  {
    v4 = [*(a1 + 32) hk_filter:&__block_literal_global_3];
    v5 = [v4 count];

    [*(a1 + 48) _onboardWithActivity:*(a1 + 72) gatewayProxy:*(a1 + 40) hasGatewayBackedAccounts:v5 != 0 presentingViewController:*(a1 + 56)];
  }
}

uint64_t __76__WDClinicalOnboardingManager_onboardWithActivity_presentingViewController___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 gateway];
  v4 = [v3 externalID];
  v5 = [*(a1 + 32) gatewayID];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

BOOL __76__WDClinicalOnboardingManager_onboardWithActivity_presentingViewController___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 gateway];
  v3 = v2 != 0;

  return v3;
}

- (void)_onboardWithActivity:(id)activity gatewayProxy:(id)proxy hasGatewayBackedAccounts:(BOOL)accounts presentingViewController:(id)controller
{
  v46 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  proxyCopy = proxy;
  controllerCopy = controller;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v13 = *MEMORY[0x1E69A3EB8];
  v14 = [activityCopy objectForKeyedSubscript:*MEMORY[0x1E69A3EB8]];
  objc_opt_class();
  v39[6] = 0;
  v15 = HKSafeObject();
  v16 = 0;

  if (v15)
  {
    v38 = controllerCopy;
    v17 = proxyCopy;
    v18 = *MEMORY[0x1E69A3ED0];
    v19 = [v15 objectForKeyedSubscript:*MEMORY[0x1E69A3ED0]];
    objc_opt_class();
    v39[5] = v16;
    v20 = HKSafeObject();
    v21 = v16;

    if (!v20)
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x1E696B948];
      proxyCopy = v17;
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
      {
        v27 = v26;
        logPrefix = [(WDClinicalOnboardingManager *)self logPrefix];
        v29 = [v15 objectForKeyedSubscript:v18];
        objc_opt_class();
        v30 = HKSensitiveLogItem();
        v31 = HKSensitiveLogItem();
        *buf = 138543874;
        v41 = logPrefix;
        v42 = 2114;
        v43 = v30;
        v44 = 2114;
        v45 = v31;
        _os_log_error_impl(&dword_1D101F000, v27, OS_LOG_TYPE_ERROR, "%{public}@ was not able to parse onboarding options of type %{public}@ with error %{public}@", buf, 0x20u);

        proxyCopy = v17;
      }

      goto LABEL_15;
    }

    v22 = [v15 objectForKeyedSubscript:*MEMORY[0x1E69A3ED8]];
    objc_opt_class();
    v23 = HKSafeObject();

    if ([v20 integerValue])
    {
      [(WDClinicalOnboardingManager *)self setPendingOnboardingGateway:v17];
      v24 = [(WDClinicalOnboardingManager *)self _deepLinkOnboardingViewControllerWithOptions:1 sourceIdentifier:v23];
      [v24 setNavigationBarHidden:0];
    }

    else
    {
      if (!accounts)
      {
        [(WDClinicalOnboardingManager *)self setPendingOnboardingGateway:v17];
        v24 = +[HRViewControllerFactory shared];
        profile = [(WDClinicalOnboardingManager *)self profile];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __115__WDClinicalOnboardingManager__onboardWithActivity_gatewayProxy_hasGatewayBackedAccounts_presentingViewController___block_invoke;
        v39[3] = &unk_1E83DD308;
        v39[4] = self;
        [v24 makeAndPresentOnboardingTileViewControllerFor:profile from:v38 sourceIdentifier:v23 animated:1 completion:v39];

        goto LABEL_14;
      }

      v24 = [(WDClinicalOnboardingManager *)self _deepLinkOnboardingViewControllerWithOptions:0 sourceIdentifier:v23];
      [v24 setGatewayProxyToTry:v17];
    }

    [(WDClinicalOnboardingManager *)self _startOrReplaceLoginWithLoginViewController:v24 presentingViewController:v38];
LABEL_14:

    proxyCopy = v17;
LABEL_15:

    controllerCopy = v38;
    goto LABEL_16;
  }

  _HKInitializeLogging();
  v25 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
  {
    v33 = v25;
    logPrefix2 = [(WDClinicalOnboardingManager *)self logPrefix];
    v35 = [activityCopy objectForKeyedSubscript:v13];
    objc_opt_class();
    v36 = HKSensitiveLogItem();
    v37 = HKSensitiveLogItem();
    *buf = 138543874;
    v41 = logPrefix2;
    v42 = 2114;
    v43 = v36;
    v44 = 2114;
    v45 = v37;
    _os_log_error_impl(&dword_1D101F000, v33, OS_LOG_TYPE_ERROR, "%{public}@ was not able to parse onboarding activity dictionary of type %{public}@ with error %{public}@", buf, 0x20u);
  }

  v21 = v16;
LABEL_16:
}

- (id)_deepLinkOnboardingViewControllerWithOptions:(unint64_t)options sourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [WDClinicalOnboardingOAuthNavigationViewController alloc];
  profile = [(WDClinicalOnboardingManager *)self profile];
  v9 = [(WDClinicalOnboardingOAuthNavigationViewController *)v7 initWithContext:5 onboardingOptions:options sourceIdentifier:identifierCopy profile:profile existingAccount:0];

  return v9;
}

- (id)gatewayProxyWithActivity:(id)activity
{
  v28 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v5 = *MEMORY[0x1E69A3EB8];
  v6 = [activityCopy objectForKeyedSubscript:*MEMORY[0x1E69A3EB8]];
  objc_opt_class();
  v7 = HKSafeObject();
  v8 = 0;

  if (v7)
  {

    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A3EC8]];
    objc_opt_class();
    v10 = HKSafeObject();
    v11 = 0;

    if (!v10)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
      {
        [WDClinicalOnboardingManager gatewayProxyWithActivity:];
      }
    }

    v12 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A3EC0]];
    objc_opt_class();
    v13 = HKSafeObject();
    v8 = 0;

    if (v13)
    {
      if (v10)
      {
        v14 = [[WDClinicalGatewayProxy alloc] initWithGatewayID:v10 batchID:v13];
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
      {
        [WDClinicalOnboardingManager gatewayProxyWithActivity:];
      }
    }

    v14 = 0;
    goto LABEL_14;
  }

  _HKInitializeLogging();
  v15 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
  {
    v17 = v15;
    logPrefix = [(WDClinicalOnboardingManager *)self logPrefix];
    v19 = [activityCopy objectForKeyedSubscript:v5];
    objc_opt_class();
    v20 = HKSensitiveLogItem();
    v21 = HKSensitiveLogItem();
    *buf = 138543874;
    v23 = logPrefix;
    v24 = 2114;
    v25 = v20;
    v26 = 2114;
    v27 = v21;
    _os_log_error_impl(&dword_1D101F000, v17, OS_LOG_TYPE_ERROR, "%{public}@ was not able to fetch onboarding activity dictionary of type %{public}@ with error %{public}@", buf, 0x20u);
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (void)_presentAccount:(id)account presentingViewController:(id)controller sourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  controllerCopy = controller;
  accountCopy = account;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v11 = +[HRViewControllerFactory shared];
  profile = [(WDClinicalOnboardingManager *)self profile];
  v16 = [v11 makeAccountDetailViewControllerForAccount:accountCopy profile:profile sourceIdentifier:identifierCopy];

  v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v16 action:sel_dismissAnimated_];
  navigationItem = [v16 navigationItem];
  [navigationItem setRightBarButtonItem:v13];

  v15 = [objc_alloc(MEMORY[0x1E69A4420]) initWithRootViewController:v16];
  [controllerCopy presentViewController:v15 animated:1 completion:0];
}

- (void)registerInflightOnboardingViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__WDClinicalOnboardingManager_registerInflightOnboardingViewController_completion___block_invoke;
  v10[3] = &unk_1E83DD330;
  v10[4] = self;
  v11 = controllerCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = controllerCopy;
  [(WDClinicalOnboardingManager *)self _dismissInFlightLoginViewControllerIfExistsWithCompletion:v10];
}

void __83__WDClinicalOnboardingManager_registerInflightOnboardingViewController_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEBUG))
  {
    __83__WDClinicalOnboardingManager_registerInflightOnboardingViewController_completion___block_invoke_cold_1(a1, v4);
  }

  [*(a1 + 32) setInFlightLoginViewController:*(a1 + 40)];
  v5 = [*(a1 + 32) onboardingTileNavigationController];
  v6 = [*(a1 + 32) inFlightLoginViewController];
  [v6 setOnboardingTileNavigationViewController:v5];

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (void)_startOrReplaceLoginWithLoginViewController:(id)controller presentingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __100__WDClinicalOnboardingManager__startOrReplaceLoginWithLoginViewController_presentingViewController___block_invoke;
  v10[3] = &unk_1E83DD358;
  v10[4] = self;
  v11 = controllerCopy;
  v12 = viewControllerCopy;
  v8 = viewControllerCopy;
  v9 = controllerCopy;
  [(WDClinicalOnboardingManager *)self _dismissInFlightLoginViewControllerIfExistsWithCompletion:v10];
}

uint64_t __100__WDClinicalOnboardingManager__startOrReplaceLoginWithLoginViewController_presentingViewController___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  if (!a2)
  {
    a2 = a1[6];
  }

  return [v3 _startLoginWithLoginViewController:a1[5] presentingViewController:a2];
}

- (void)_startLoginWithLoginViewController:(id)controller presentingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEBUG))
  {
    [WDClinicalOnboardingManager _startLoginWithLoginViewController:presentingViewController:];
  }

  [(WDClinicalOnboardingManager *)self setInFlightLoginViewController:controllerCopy];
  [viewControllerCopy presentViewController:controllerCopy animated:1 completion:0];
}

- (void)_dismissInFlightLoginViewControllerIfExistsWithCompletion:(id)completion
{
  completionCopy = completion;
  inFlightLoginViewController = [(WDClinicalOnboardingManager *)self inFlightLoginViewController];
  v6 = inFlightLoginViewController;
  if (inFlightLoginViewController)
  {
    presentingViewController = [inFlightLoginViewController presentingViewController];
    if (presentingViewController)
    {
      v8 = presentingViewController;
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEBUG))
      {
        [WDClinicalOnboardingManager _dismissInFlightLoginViewControllerIfExistsWithCompletion:];
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __89__WDClinicalOnboardingManager__dismissInFlightLoginViewControllerIfExistsWithCompletion___block_invoke;
      v10[3] = &unk_1E83DD380;
      v10[4] = self;
      v11 = v6;
      v12 = v8;
      v13 = completionCopy;
      v9 = v8;
      [v9 dismissViewControllerAnimated:1 completion:v10];

      goto LABEL_9;
    }

    [(WDClinicalOnboardingManager *)self setInFlightLoginViewController:0];
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_9:
}

uint64_t __89__WDClinicalOnboardingManager__dismissInFlightLoginViewControllerIfExistsWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _didDismissLoginViewController:*(a1 + 40)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_didDismissLoginViewController:(id)controller
{
  controllerCopy = controller;
  inFlightLoginViewController = [(WDClinicalOnboardingManager *)self inFlightLoginViewController];

  if (inFlightLoginViewController == controllerCopy)
  {
    [(WDClinicalOnboardingManager *)self setInFlightLoginViewController:0];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEBUG))
    {
      [WDClinicalOnboardingManager _didDismissLoginViewController:];
    }
  }
}

- (id)getPendingOnboardingGatewayAndClear
{
  pendingOnboardingGateway = self->_pendingOnboardingGateway;
  v4 = pendingOnboardingGateway;
  v5 = self->_pendingOnboardingGateway;
  self->_pendingOnboardingGateway = 0;

  return pendingOnboardingGateway;
}

- (HRProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (WDClinicalOnboardingOAuthNavigationViewController)inFlightLoginViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_inFlightLoginViewController);

  return WeakRetained;
}

- (HKNavigationController)inFlightClinicalSharingLoginViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_inFlightClinicalSharingLoginViewController);

  return WeakRetained;
}

- (HKNavigationController)onboardingTileNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_onboardingTileNavigationController);

  return WeakRetained;
}

- (void)gatewayProxyWithActivity:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_8() logPrefix];
  v4 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4(&dword_1D101F000, v5, v6, "%{public}@ tried to onboard using a deep link with no gateway ID and found error: %{public}@", v7, v8, v9, v10, v11);
}

- (void)gatewayProxyWithActivity:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_8() logPrefix];
  v4 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4(&dword_1D101F000, v5, v6, "%{public}@ tried to onboard using a deep link with no batch ID and found error: %{public}@", v7, v8, v9, v10, v11);
}

void __83__WDClinicalOnboardingManager_registerInflightOnboardingViewController_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [OUTLINED_FUNCTION_8() logPrefix];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_startLoginWithLoginViewController:presentingViewController:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  v8 = [OUTLINED_FUNCTION_8() logPrefix];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_dismissInFlightLoginViewControllerIfExistsWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  v8 = [OUTLINED_FUNCTION_8() logPrefix];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_didDismissLoginViewController:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v3 = v2;
  v4 = [OUTLINED_FUNCTION_8() logPrefix];
  v5 = [v0 inFlightLoginViewController];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);
}

@end