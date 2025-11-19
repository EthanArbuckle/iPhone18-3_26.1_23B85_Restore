@interface WDClinicalOnboardingOAuthNavigationViewController
- (ClinicalSharingOnboardingDelegate)onboardingDelegate;
- (WDClinicalOnboardingOAuthNavigationViewController)init;
- (WDClinicalOnboardingOAuthNavigationViewController)initWithContext:(int64_t)a3 onboardingOptions:(unint64_t)a4 sourceIdentifier:(id)a5 profile:(id)a6 existingAccount:(id)a7;
- (WDClinicalOnboardingOAuthNavigationViewController)initWithSession:(id)a3 existingAccount:(id)a4;
- (id)_createInitialRootViewController;
- (id)keyCommands;
- (void)_clearLoginBusyIndicator;
- (void)_dismissViewController;
- (void)_mainQueue_completionNotificationHandler:(id)a3;
- (void)beginListeningToNotification;
- (void)completionNotificationHandler:(id)a3;
- (void)createRootViewController;
- (void)didCompleteOnboardingFor:(id)a3;
- (void)didLoginToAccount:(id)a3;
- (void)dismissWithAccount:(id)a3 error:(id)a4 animated:(BOOL)a5;
- (void)stopListeningToNotification;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation WDClinicalOnboardingOAuthNavigationViewController

- (WDClinicalOnboardingOAuthNavigationViewController)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (WDClinicalOnboardingOAuthNavigationViewController)initWithContext:(int64_t)a3 onboardingOptions:(unint64_t)a4 sourceIdentifier:(id)a5 profile:(id)a6 existingAccount:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = [WDClinicalAccountOnboardingSession alloc];
  v16 = +[CHRAnalyticsManager shared];
  v17 = [(WDClinicalAccountOnboardingSession *)v15 initWithContext:a3 options:a4 sourceIdentifier:v14 profile:v13 analyticsManager:v16];

  v18 = [(WDClinicalOnboardingOAuthNavigationViewController *)self initWithSession:v17 existingAccount:v12];
  return v18;
}

- (WDClinicalOnboardingOAuthNavigationViewController)initWithSession:(id)a3 existingAccount:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = WDClinicalOnboardingOAuthNavigationViewController;
  v9 = [(WDClinicalOnboardingOAuthNavigationViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_onboardingSession, a3);
    v11 = [v8 copy];
    onboardingAccount = v10->_onboardingAccount;
    v10->_onboardingAccount = v11;

    [(WDClinicalOnboardingOAuthNavigationViewController *)v10 setModalPresentationStyle:2];
  }

  return v10;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = WDClinicalOnboardingOAuthNavigationViewController;
  [(HKNavigationController *)&v7 viewDidLoad];
  v3 = +[HRProfileManager sharedInstance];
  v4 = [(WDClinicalOnboardingOAuthNavigationViewController *)self profile];
  v5 = [v4 healthStore];
  v6 = [v5 profileIdentifier];
  [v3 switchCurrentProfileWithIdentifier:v6];

  [(WDClinicalOnboardingOAuthNavigationViewController *)self createRootViewController];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WDClinicalOnboardingOAuthNavigationViewController;
  [(HKNavigationController *)&v4 viewDidAppear:a3];
  [(WDClinicalOnboardingOAuthNavigationViewController *)self beginListeningToNotification];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = WDClinicalOnboardingOAuthNavigationViewController;
  [(WDClinicalOnboardingOAuthNavigationViewController *)&v5 viewWillDisappear:?];
  if (([(WDClinicalOnboardingOAuthNavigationViewController *)self isMovingFromParentViewController]& 1) != 0 || [(WDClinicalOnboardingOAuthNavigationViewController *)self isBeingDismissed])
  {
    [(WDClinicalAccountOnboardingSession *)self->_onboardingSession onboardingWillDisappearWith:self->_onboardingTileNavigationViewController animated:v3];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(WDClinicalOnboardingOAuthNavigationViewController *)self stopListeningToNotification];
  v5.receiver = self;
  v5.super_class = WDClinicalOnboardingOAuthNavigationViewController;
  [(HKNavigationController *)&v5 viewDidDisappear:v3];
}

- (id)keyCommands
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel__dismissViewController];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)beginListeningToNotification
{
  [(WDClinicalOnboardingOAuthNavigationViewController *)self stopListeningToNotification];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = [MEMORY[0x1E696AD80] OAuthCompletionNotification];
  [v4 addObserver:self selector:sel_completionNotificationHandler_ name:v3 object:0];
}

- (void)stopListeningToNotification
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = [MEMORY[0x1E696AD80] OAuthCompletionNotification];
  [v4 removeObserver:self name:v3 object:0];
}

- (void)completionNotificationHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__WDClinicalOnboardingOAuthNavigationViewController_completionNotificationHandler___block_invoke;
  v6[3] = &unk_1E83DD1A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_mainQueue_completionNotificationHandler:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _HKInitializeLogging();
  v5 = MEMORY[0x1E696B948];
  v6 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = self;
    _os_log_impl(&dword_1D101F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: got notified by OAuthCompletionNotification", &v17, 0xCu);
  }

  v7 = [v4 userInfo];
  v8 = +[_TtC15HealthRecordsUI39OAuthCompletionNotificationUserInfoKeys account];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = [v4 userInfo];

  v11 = +[_TtC15HealthRecordsUI39OAuthCompletionNotificationUserInfoKeys error];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v9)
  {
    [(WDClinicalOnboardingOAuthNavigationViewController *)self didLoginToAccount:v9];
  }

  else
  {
    [(WDClinicalOnboardingOAuthNavigationViewController *)self _clearLoginBusyIndicator];
    _HKInitializeLogging();
    v13 = *v5;
    v14 = *v5;
    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(WDClinicalOnboardingOAuthNavigationViewController *)self _mainQueue_completionNotificationHandler:v13];
      }

      v15 = +[HRViewControllerFactory shared];
      v16 = [v15 makeFailedToOnboardAccountAlertControllerToGateway:0 error:v12];

      [(WDClinicalOnboardingOAuthNavigationViewController *)self presentViewController:v16 animated:1 completion:0];
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = self;
      _os_log_impl(&dword_1D101F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: user aborted login (neither account nor error in the notification)", &v17, 0xCu);
    }
  }
}

- (void)createRootViewController
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(WDClinicalOnboardingOAuthNavigationViewController *)self _createInitialRootViewController];
  _HKInitializeLogging();
  v4 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1D101F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: created initial root view controller %{public}@", buf, 0x16u);
  }

  v6 = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  [(WDClinicalOnboardingOAuthNavigationViewController *)self setViewControllers:v5];
}

- (id)_createInitialRootViewController
{
  if (self->_providerToPresent)
  {
    v3 = [WDClinicalProviderDetailsViewController alloc];
    v4 = [(WDClinicalOnboardingOAuthNavigationViewController *)self profile];
    v5 = [(WDClinicalOnboardingOAuthNavigationViewController *)self providerToPresent];
    v6 = [(WDClinicalProviderDetailsViewController *)v3 initWithProfile:v4 provider:v5];

    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__dismissViewController];
    v8 = [(OBBaseWelcomeController *)v6 navigationItem];
    [v8 setLeftBarButtonItem:v7];
  }

  else
  {
    if ([(WDClinicalAccountOnboardingSession *)self->_onboardingSession shouldLaunchClinicalSharing])
    {
      onboardingAccount = self->_onboardingAccount;
      if (onboardingAccount)
      {
        if ([(HKClinicalAccount *)onboardingAccount needsLoginToEnableClinicalSharing])
        {
          v10 = 1;
        }

        else
        {
          v10 = 2;
        }
      }

      else
      {
        v10 = 0;
      }

      v6 = [[HRClinicalSharingOnboardingInformationalViewController alloc] initWithOnboardingSession:self->_onboardingSession flowType:v10 selectedAccount:self->_onboardingAccount delegate:self];
      goto LABEL_15;
    }

    v11 = [(WDClinicalOnboardingOAuthNavigationViewController *)self gatewayProxyToTry];

    v12 = [WDClinicalOnboardingViewController alloc];
    v13 = [(WDClinicalOnboardingOAuthNavigationViewController *)self profile];
    if (v11)
    {
      v14 = [(WDClinicalOnboardingOAuthNavigationViewController *)self gatewayProxyToTry];
      v6 = [(WDClinicalOnboardingViewController *)v12 initWithProfile:v13 gatewayProxy:v14];

      [(WDClinicalOnboardingOAuthNavigationViewController *)self setGatewayProxyToTry:0];
    }

    else
    {
      v6 = [(WDClinicalOnboardingViewController *)v12 initWithProfile:v13];

      [(HRClinicalSharingOnboardingInformationalViewController *)v6 setShowProviderNotFound:[(WDClinicalOnboardingOAuthNavigationViewController *)self showProviderNotFound]];
    }

    v7 = [(OBBaseWelcomeController *)v6 navigationItem];
    [v7 setLargeTitleDisplayMode:2];
  }

LABEL_15:

  return v6;
}

- (void)_clearLoginBusyIndicator
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(WDClinicalOnboardingOAuthNavigationViewController *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B948];
  v6 = os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_INFO);
  if (isKindOfClass)
  {
    if (v6)
    {
      v7 = 138543618;
      v8 = self;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_1D101F000, v5, OS_LOG_TYPE_INFO, "%{public}@: finished login, clearing busy indicator from %{public}@", &v7, 0x16u);
    }

    [v3 clearLoginBusyIndicator];
  }

  else if (v6)
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1D101F000, v5, OS_LOG_TYPE_INFO, "%{public}@: finished login but top view controller is %{public}@, not , unable to clear busy indicator", &v7, 0x16u);
  }
}

- (void)didLoginToAccount:(id)a3
{
  v43[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!-[WDClinicalAccountOnboardingSession shouldLaunchClinicalSharing](self->_onboardingSession, "shouldLaunchClinicalSharing") || ([v4 gateway], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "canEnableSharingToProvider"), v5, !v6))
  {
    v10 = [[WDClinicalAccountAddedViewController alloc] initWithOnboardingSession:self->_onboardingSession account:v4];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __71__WDClinicalOnboardingOAuthNavigationViewController_didLoginToAccount___block_invoke;
    v35[3] = &unk_1E83DD1A8;
    v35[4] = self;
    v11 = v4;
    v36 = v11;
    [(WDClinicalAccountAddedViewController *)v10 setDismissHandler:v35];
    if ([v11 canEnableSharingToProvider])
    {
      v12 = [v11 hasClinicalSharingScopes];
      _HKInitializeLogging();
      v13 = *MEMORY[0x1E696B948];
      v14 = os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          *buf = 138543362;
          v39 = self;
          _os_log_impl(&dword_1D101F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: did log in but may proceed to clinical sharing, not storing account just yet", buf, 0xCu);
        }

        v42 = v10;
        v15 = MEMORY[0x1E695DEC8];
        v16 = &v42;
        goto LABEL_22;
      }

      if (v14)
      {
        *buf = 138543362;
        v39 = self;
        _os_log_impl(&dword_1D101F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: did log in to a gateway supporting clinical sharing, but don't have the necessary scopes, proceeding as if logging in to a non-clinical-sharing gateway", buf, 0xCu);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x1E696B948];
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT))
      {
        onboardingSession = self->_onboardingSession;
        v19 = v17;
        v20 = [(WDClinicalAccountOnboardingSession *)onboardingSession profile];
        v21 = [v20 clinicalAccountStore];
        *buf = 138543618;
        v39 = self;
        v40 = 2114;
        v41 = v21;
        _os_log_impl(&dword_1D101F000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: did log in, persisting account and kicking off ingestion on %{public}@", buf, 0x16u);
      }

      v22 = self->_onboardingSession;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __71__WDClinicalOnboardingOAuthNavigationViewController_didLoginToAccount___block_invoke_323;
      v33[3] = &unk_1E83DD910;
      v33[4] = self;
      v34 = v10;
      [(WDClinicalAccountOnboardingSession *)v22 persistEphemeralAccount:v11 fromSharing:0 completion:v33];

      goto LABEL_26;
    }

    v23 = [v11 gateway];
    v24 = [v23 baseURL];
    v25 = [v24 absoluteString];
    v26 = [v25 isEqualToString:@"https://localhost:9090/resource"];

    _HKInitializeLogging();
    v27 = *MEMORY[0x1E696B948];
    v28 = os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT);
    if (!v26)
    {
      if (v28)
      {
        *buf = 138543362;
        v39 = self;
        _os_log_impl(&dword_1D101F000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: account re-logged in. How did you get here? File a Radar to CHR Ingest & Extract if you see me!", buf, 0xCu);
      }

      [(WDClinicalOnboardingOAuthNavigationViewController *)self dismissWithAccount:v11 error:0 animated:1];
      goto LABEL_26;
    }

    if (v28)
    {
      *buf = 138543362;
      v39 = self;
      _os_log_impl(&dword_1D101F000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: static sample account added", buf, 0xCu);
    }

    v29 = self->_onboardingSession;
    v30 = [v11 identifier];
    [(WDClinicalAccountOnboardingSession *)v29 didAddStaticSampleAccount:v30];

    v37 = v10;
    v15 = MEMORY[0x1E695DEC8];
    v16 = &v37;
LABEL_22:
    v31 = [v15 arrayWithObjects:v16 count:1];
    [(WDClinicalOnboardingOAuthNavigationViewController *)self setViewControllers:v31 animated:1];

LABEL_26:
    goto LABEL_31;
  }

  v7 = [v4 hasClinicalSharingScopes];
  _HKInitializeLogging();
  v8 = *MEMORY[0x1E696B948];
  v9 = *MEMORY[0x1E696B948];
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v39 = self;
      _os_log_impl(&dword_1D101F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: did log in but onboarding for clinical sharing, not storing account just yet", buf, 0xCu);
    }

    v10 = [(WDClinicalAccountOnboardingSession *)self->_onboardingSession makeDataTypeSelectionViewControllerForAccount:v4];
    [(WDClinicalAccountOnboardingSession *)self->_onboardingSession submitClinicalSharingOnboardingStepAnalytic:2];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(WDClinicalOnboardingOAuthNavigationViewController *)self didLoginToAccount:v8];
    }

    v10 = [(WDClinicalAccountOnboardingSession *)self->_onboardingSession makeNecessaryScopesNotPresentViewControllerForAccount:v4];
  }

  v43[0] = v10;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  [(WDClinicalOnboardingOAuthNavigationViewController *)self setViewControllers:v32 animated:1];

LABEL_31:
}

void __71__WDClinicalOnboardingOAuthNavigationViewController_didLoginToAccount___block_invoke_323(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__WDClinicalOnboardingOAuthNavigationViewController_didLoginToAccount___block_invoke_2;
  v11[3] = &unk_1E83DCA90;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v8;
  v15 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __71__WDClinicalOnboardingOAuthNavigationViewController_didLoginToAccount___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v8[0] = *(a1 + 48);
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v2 setViewControllers:v3 animated:1];
  }

  else
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      __71__WDClinicalOnboardingOAuthNavigationViewController_didLoginToAccount___block_invoke_2_cold_1(a1, v4);
    }

    v5 = +[HRViewControllerFactory shared];
    v6 = v5;
    if (*(a1 + 56))
    {
      v3 = [v5 makeFailedToOnboardAccountAlertControllerToGateway:0 error:?];
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] hk_error:0 userInfo:?];
      v3 = [v6 makeFailedToOnboardAccountAlertControllerToGateway:0 error:v7];
    }

    [*(a1 + 40) presentViewController:v3 animated:1 completion:0];
  }
}

- (void)dismissWithAccount:(id)a3 error:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = +[_TtC15HealthRecordsUI59ClinicalAccountOnboardingCompletionNotificationUserInfoKeys error];
    v22 = v10;
    v23[0] = v9;
    v11 = MEMORY[0x1E695DF20];
    v12 = v23;
    v13 = &v22;
  }

  else
  {
    if (!v8)
    {
      v14 = 0;
      goto LABEL_6;
    }

    v10 = +[_TtC15HealthRecordsUI59ClinicalAccountOnboardingCompletionNotificationUserInfoKeys account];
    v20 = v10;
    v21 = v8;
    v11 = MEMORY[0x1E695DF20];
    v12 = &v21;
    v13 = &v20;
  }

  v14 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];

LABEL_6:
  v15 = MEMORY[0x1E696AD80];
  v16 = [MEMORY[0x1E696AD80] ClinicalAccountOnboardingCompletionNotification];
  v17 = [v15 notificationWithName:v16 object:self userInfo:v14];

  v18 = [MEMORY[0x1E696AD88] defaultCenter];
  [v18 postNotification:v17];

  [(WDClinicalAccountOnboardingSession *)self->_onboardingSession markShouldDismissOnboardingTileViewController];
  v19 = [(WDClinicalOnboardingOAuthNavigationViewController *)self presentingViewController];
  [v19 dismissViewControllerAnimated:v5 completion:0];
}

- (void)_dismissViewController
{
  v3 = [MEMORY[0x1E696ABC0] hk_error:7 description:@"User Cancelled"];
  [(WDClinicalOnboardingOAuthNavigationViewController *)self dismissWithAccount:0 error:v3 animated:1];
}

- (void)didCompleteOnboardingFor:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    WeakRetained = objc_loadWeakRetained(&self->_onboardingDelegate);
    v9 = 138543874;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = WeakRetained;
    _os_log_impl(&dword_1D101F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: didCompleteOnboardingFor %@ _onboardingDelegate %@", &v9, 0x20u);
  }

  v8 = objc_loadWeakRetained(&self->_onboardingDelegate);
  [v8 didAddAccount:v4];
}

- (ClinicalSharingOnboardingDelegate)onboardingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_onboardingDelegate);

  return WeakRetained;
}

- (void)_mainQueue_completionNotificationHandler:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = HKSensitiveLogItem();
  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&dword_1D101F000, v3, OS_LOG_TYPE_ERROR, "%{public}@: login failed with error: %{public}@", &v5, 0x16u);
}

- (void)didLoginToAccount:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1D101F000, a2, OS_LOG_TYPE_ERROR, "%{public}@: did log in for clinical sharing but do not have the necessary scopes", &v2, 0xCu);
}

void __71__WDClinicalOnboardingOAuthNavigationViewController_didLoginToAccount___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = HKSensitiveLogItem();
  v5 = 138543618;
  v6 = v2;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&dword_1D101F000, v3, OS_LOG_TYPE_ERROR, "%{public}@: persisting account failed with error: %{public}@", &v5, 0x16u);
}

@end