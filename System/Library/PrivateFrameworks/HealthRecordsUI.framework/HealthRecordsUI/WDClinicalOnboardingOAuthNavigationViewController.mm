@interface WDClinicalOnboardingOAuthNavigationViewController
- (ClinicalSharingOnboardingDelegate)onboardingDelegate;
- (WDClinicalOnboardingOAuthNavigationViewController)init;
- (WDClinicalOnboardingOAuthNavigationViewController)initWithContext:(int64_t)context onboardingOptions:(unint64_t)options sourceIdentifier:(id)identifier profile:(id)profile existingAccount:(id)account;
- (WDClinicalOnboardingOAuthNavigationViewController)initWithSession:(id)session existingAccount:(id)account;
- (id)_createInitialRootViewController;
- (id)keyCommands;
- (void)_clearLoginBusyIndicator;
- (void)_dismissViewController;
- (void)_mainQueue_completionNotificationHandler:(id)handler;
- (void)beginListeningToNotification;
- (void)completionNotificationHandler:(id)handler;
- (void)createRootViewController;
- (void)didCompleteOnboardingFor:(id)for;
- (void)didLoginToAccount:(id)account;
- (void)dismissWithAccount:(id)account error:(id)error animated:(BOOL)animated;
- (void)stopListeningToNotification;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (WDClinicalOnboardingOAuthNavigationViewController)initWithContext:(int64_t)context onboardingOptions:(unint64_t)options sourceIdentifier:(id)identifier profile:(id)profile existingAccount:(id)account
{
  accountCopy = account;
  profileCopy = profile;
  identifierCopy = identifier;
  v15 = [WDClinicalAccountOnboardingSession alloc];
  v16 = +[CHRAnalyticsManager shared];
  v17 = [(WDClinicalAccountOnboardingSession *)v15 initWithContext:context options:options sourceIdentifier:identifierCopy profile:profileCopy analyticsManager:v16];

  v18 = [(WDClinicalOnboardingOAuthNavigationViewController *)self initWithSession:v17 existingAccount:accountCopy];
  return v18;
}

- (WDClinicalOnboardingOAuthNavigationViewController)initWithSession:(id)session existingAccount:(id)account
{
  sessionCopy = session;
  accountCopy = account;
  v14.receiver = self;
  v14.super_class = WDClinicalOnboardingOAuthNavigationViewController;
  v9 = [(WDClinicalOnboardingOAuthNavigationViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_onboardingSession, session);
    v11 = [accountCopy copy];
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
  profile = [(WDClinicalOnboardingOAuthNavigationViewController *)self profile];
  healthStore = [profile healthStore];
  profileIdentifier = [healthStore profileIdentifier];
  [v3 switchCurrentProfileWithIdentifier:profileIdentifier];

  [(WDClinicalOnboardingOAuthNavigationViewController *)self createRootViewController];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WDClinicalOnboardingOAuthNavigationViewController;
  [(HKNavigationController *)&v4 viewDidAppear:appear];
  [(WDClinicalOnboardingOAuthNavigationViewController *)self beginListeningToNotification];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = WDClinicalOnboardingOAuthNavigationViewController;
  [(WDClinicalOnboardingOAuthNavigationViewController *)&v5 viewWillDisappear:?];
  if (([(WDClinicalOnboardingOAuthNavigationViewController *)self isMovingFromParentViewController]& 1) != 0 || [(WDClinicalOnboardingOAuthNavigationViewController *)self isBeingDismissed])
  {
    [(WDClinicalAccountOnboardingSession *)self->_onboardingSession onboardingWillDisappearWith:self->_onboardingTileNavigationViewController animated:disappearCopy];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(WDClinicalOnboardingOAuthNavigationViewController *)self stopListeningToNotification];
  v5.receiver = self;
  v5.super_class = WDClinicalOnboardingOAuthNavigationViewController;
  [(HKNavigationController *)&v5 viewDidDisappear:disappearCopy];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  oAuthCompletionNotification = [MEMORY[0x1E696AD80] OAuthCompletionNotification];
  [defaultCenter addObserver:self selector:sel_completionNotificationHandler_ name:oAuthCompletionNotification object:0];
}

- (void)stopListeningToNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  oAuthCompletionNotification = [MEMORY[0x1E696AD80] OAuthCompletionNotification];
  [defaultCenter removeObserver:self name:oAuthCompletionNotification object:0];
}

- (void)completionNotificationHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__WDClinicalOnboardingOAuthNavigationViewController_completionNotificationHandler___block_invoke;
  v6[3] = &unk_1E83DD1A8;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_mainQueue_completionNotificationHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _HKInitializeLogging();
  v5 = MEMORY[0x1E696B948];
  v6 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1D101F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: got notified by OAuthCompletionNotification", &v17, 0xCu);
  }

  userInfo = [handlerCopy userInfo];
  v8 = +[_TtC15HealthRecordsUI39OAuthCompletionNotificationUserInfoKeys account];
  v9 = [userInfo objectForKeyedSubscript:v8];

  userInfo2 = [handlerCopy userInfo];

  v11 = +[_TtC15HealthRecordsUI39OAuthCompletionNotificationUserInfoKeys error];
  v12 = [userInfo2 objectForKeyedSubscript:v11];

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
      selfCopy2 = self;
      _os_log_impl(&dword_1D101F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: user aborted login (neither account nor error in the notification)", &v17, 0xCu);
    }
  }
}

- (void)createRootViewController
{
  v11 = *MEMORY[0x1E69E9840];
  _createInitialRootViewController = [(WDClinicalOnboardingOAuthNavigationViewController *)self _createInitialRootViewController];
  _HKInitializeLogging();
  v4 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = _createInitialRootViewController;
    _os_log_impl(&dword_1D101F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: created initial root view controller %{public}@", buf, 0x16u);
  }

  v6 = _createInitialRootViewController;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  [(WDClinicalOnboardingOAuthNavigationViewController *)self setViewControllers:v5];
}

- (id)_createInitialRootViewController
{
  if (self->_providerToPresent)
  {
    v3 = [WDClinicalProviderDetailsViewController alloc];
    profile = [(WDClinicalOnboardingOAuthNavigationViewController *)self profile];
    providerToPresent = [(WDClinicalOnboardingOAuthNavigationViewController *)self providerToPresent];
    v6 = [(WDClinicalProviderDetailsViewController *)v3 initWithProfile:profile provider:providerToPresent];

    navigationItem2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__dismissViewController];
    navigationItem = [(OBBaseWelcomeController *)v6 navigationItem];
    [navigationItem setLeftBarButtonItem:navigationItem2];
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

    gatewayProxyToTry = [(WDClinicalOnboardingOAuthNavigationViewController *)self gatewayProxyToTry];

    v12 = [WDClinicalOnboardingViewController alloc];
    profile2 = [(WDClinicalOnboardingOAuthNavigationViewController *)self profile];
    if (gatewayProxyToTry)
    {
      gatewayProxyToTry2 = [(WDClinicalOnboardingOAuthNavigationViewController *)self gatewayProxyToTry];
      v6 = [(WDClinicalOnboardingViewController *)v12 initWithProfile:profile2 gatewayProxy:gatewayProxyToTry2];

      [(WDClinicalOnboardingOAuthNavigationViewController *)self setGatewayProxyToTry:0];
    }

    else
    {
      v6 = [(WDClinicalOnboardingViewController *)v12 initWithProfile:profile2];

      [(HRClinicalSharingOnboardingInformationalViewController *)v6 setShowProviderNotFound:[(WDClinicalOnboardingOAuthNavigationViewController *)self showProviderNotFound]];
    }

    navigationItem2 = [(OBBaseWelcomeController *)v6 navigationItem];
    [navigationItem2 setLargeTitleDisplayMode:2];
  }

LABEL_15:

  return v6;
}

- (void)_clearLoginBusyIndicator
{
  v11 = *MEMORY[0x1E69E9840];
  topViewController = [(WDClinicalOnboardingOAuthNavigationViewController *)self topViewController];
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
      selfCopy2 = self;
      v9 = 2114;
      v10 = topViewController;
      _os_log_impl(&dword_1D101F000, v5, OS_LOG_TYPE_INFO, "%{public}@: finished login, clearing busy indicator from %{public}@", &v7, 0x16u);
    }

    [topViewController clearLoginBusyIndicator];
  }

  else if (v6)
  {
    v7 = 138543618;
    selfCopy2 = self;
    v9 = 2114;
    v10 = topViewController;
    _os_log_impl(&dword_1D101F000, v5, OS_LOG_TYPE_INFO, "%{public}@: finished login but top view controller is %{public}@, not , unable to clear busy indicator", &v7, 0x16u);
  }
}

- (void)didLoginToAccount:(id)account
{
  v43[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!-[WDClinicalAccountOnboardingSession shouldLaunchClinicalSharing](self->_onboardingSession, "shouldLaunchClinicalSharing") || ([accountCopy gateway], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "canEnableSharingToProvider"), v5, !v6))
  {
    v10 = [[WDClinicalAccountAddedViewController alloc] initWithOnboardingSession:self->_onboardingSession account:accountCopy];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __71__WDClinicalOnboardingOAuthNavigationViewController_didLoginToAccount___block_invoke;
    v35[3] = &unk_1E83DD1A8;
    v35[4] = self;
    v11 = accountCopy;
    v36 = v11;
    [(WDClinicalAccountAddedViewController *)v10 setDismissHandler:v35];
    if ([v11 canEnableSharingToProvider])
    {
      hasClinicalSharingScopes = [v11 hasClinicalSharingScopes];
      _HKInitializeLogging();
      v13 = *MEMORY[0x1E696B948];
      v14 = os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT);
      if (hasClinicalSharingScopes)
      {
        if (v14)
        {
          *buf = 138543362;
          selfCopy6 = self;
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
        selfCopy6 = self;
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
        profile = [(WDClinicalAccountOnboardingSession *)onboardingSession profile];
        clinicalAccountStore = [profile clinicalAccountStore];
        *buf = 138543618;
        selfCopy6 = self;
        v40 = 2114;
        v41 = clinicalAccountStore;
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

    gateway = [v11 gateway];
    baseURL = [gateway baseURL];
    absoluteString = [baseURL absoluteString];
    v26 = [absoluteString isEqualToString:@"https://localhost:9090/resource"];

    _HKInitializeLogging();
    v27 = *MEMORY[0x1E696B948];
    v28 = os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT);
    if (!v26)
    {
      if (v28)
      {
        *buf = 138543362;
        selfCopy6 = self;
        _os_log_impl(&dword_1D101F000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: account re-logged in. How did you get here? File a Radar to CHR Ingest & Extract if you see me!", buf, 0xCu);
      }

      [(WDClinicalOnboardingOAuthNavigationViewController *)self dismissWithAccount:v11 error:0 animated:1];
      goto LABEL_26;
    }

    if (v28)
    {
      *buf = 138543362;
      selfCopy6 = self;
      _os_log_impl(&dword_1D101F000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: static sample account added", buf, 0xCu);
    }

    v29 = self->_onboardingSession;
    identifier = [v11 identifier];
    [(WDClinicalAccountOnboardingSession *)v29 didAddStaticSampleAccount:identifier];

    v37 = v10;
    v15 = MEMORY[0x1E695DEC8];
    v16 = &v37;
LABEL_22:
    v31 = [v15 arrayWithObjects:v16 count:1];
    [(WDClinicalOnboardingOAuthNavigationViewController *)self setViewControllers:v31 animated:1];

LABEL_26:
    goto LABEL_31;
  }

  hasClinicalSharingScopes2 = [accountCopy hasClinicalSharingScopes];
  _HKInitializeLogging();
  v8 = *MEMORY[0x1E696B948];
  v9 = *MEMORY[0x1E696B948];
  if (hasClinicalSharingScopes2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy6 = self;
      _os_log_impl(&dword_1D101F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: did log in but onboarding for clinical sharing, not storing account just yet", buf, 0xCu);
    }

    v10 = [(WDClinicalAccountOnboardingSession *)self->_onboardingSession makeDataTypeSelectionViewControllerForAccount:accountCopy];
    [(WDClinicalAccountOnboardingSession *)self->_onboardingSession submitClinicalSharingOnboardingStepAnalytic:2];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(WDClinicalOnboardingOAuthNavigationViewController *)self didLoginToAccount:v8];
    }

    v10 = [(WDClinicalAccountOnboardingSession *)self->_onboardingSession makeNecessaryScopesNotPresentViewControllerForAccount:accountCopy];
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

- (void)dismissWithAccount:(id)account error:(id)error animated:(BOOL)animated
{
  animatedCopy = animated;
  v23[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  errorCopy = error;
  if (errorCopy)
  {
    v10 = +[_TtC15HealthRecordsUI59ClinicalAccountOnboardingCompletionNotificationUserInfoKeys error];
    v22 = v10;
    v23[0] = errorCopy;
    v11 = MEMORY[0x1E695DF20];
    v12 = v23;
    v13 = &v22;
  }

  else
  {
    if (!accountCopy)
    {
      v14 = 0;
      goto LABEL_6;
    }

    v10 = +[_TtC15HealthRecordsUI59ClinicalAccountOnboardingCompletionNotificationUserInfoKeys account];
    v20 = v10;
    v21 = accountCopy;
    v11 = MEMORY[0x1E695DF20];
    v12 = &v21;
    v13 = &v20;
  }

  v14 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];

LABEL_6:
  v15 = MEMORY[0x1E696AD80];
  clinicalAccountOnboardingCompletionNotification = [MEMORY[0x1E696AD80] ClinicalAccountOnboardingCompletionNotification];
  v17 = [v15 notificationWithName:clinicalAccountOnboardingCompletionNotification object:self userInfo:v14];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotification:v17];

  [(WDClinicalAccountOnboardingSession *)self->_onboardingSession markShouldDismissOnboardingTileViewController];
  presentingViewController = [(WDClinicalOnboardingOAuthNavigationViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:animatedCopy completion:0];
}

- (void)_dismissViewController
{
  v3 = [MEMORY[0x1E696ABC0] hk_error:7 description:@"User Cancelled"];
  [(WDClinicalOnboardingOAuthNavigationViewController *)self dismissWithAccount:0 error:v3 animated:1];
}

- (void)didCompleteOnboardingFor:(id)for
{
  v15 = *MEMORY[0x1E69E9840];
  forCopy = for;
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    WeakRetained = objc_loadWeakRetained(&self->_onboardingDelegate);
    v9 = 138543874;
    selfCopy = self;
    v11 = 2112;
    v12 = forCopy;
    v13 = 2112;
    v14 = WeakRetained;
    _os_log_impl(&dword_1D101F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: didCompleteOnboardingFor %@ _onboardingDelegate %@", &v9, 0x20u);
  }

  v8 = objc_loadWeakRetained(&self->_onboardingDelegate);
  [v8 didAddAccount:forCopy];
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