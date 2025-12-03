@interface GKHostedAuthenticateViewController
- (GKHostedAuthenticateViewController)init;
- (void)_setupChildViewController;
- (void)_setupExtensionHostViewController;
- (void)continueWithMode:(int64_t)mode;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)extensionDidFinishWithError:(id)error;
- (void)finishAuthenticationWithError:(id)error;
- (void)onboardingFlowDidSignOut;
- (void)setExtensionHostViewController:(id)controller;
- (void)setModalPresentationStyle:(int64_t)style;
- (void)setRotationLocked:(BOOL)locked;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GKHostedAuthenticateViewController

- (GKHostedAuthenticateViewController)init
{
  v3.receiver = self;
  v3.super_class = GKHostedAuthenticateViewController;
  result = [(GKHostedAuthenticateViewController *)&v3 init];
  if (result)
  {
    result->_rotationLocked = 1;
    result->_origin = 0;
  }

  return result;
}

- (void)dealloc
{
  [(GKExtensionRemoteViewController *)self->_extensionHostViewController cancelExtension];
  v3.receiver = self;
  v3.super_class = GKHostedAuthenticateViewController;
  [(GKHostedAuthenticateViewController *)&v3 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  local = [MEMORY[0x277D0C138] local];
  [local hideAccessPoint];

  extensionHostViewController = [(GKHostedAuthenticateViewController *)self extensionHostViewController];

  if (!extensionHostViewController)
  {
    [(GKHostedAuthenticateViewController *)self _setupExtensionHostViewController];
  }

  v7.receiver = self;
  v7.super_class = GKHostedAuthenticateViewController;
  [(GKHostedAuthenticateViewController *)&v7 viewWillAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = GKHostedAuthenticateViewController;
  [(GKHostedAuthenticateViewController *)&v4 viewDidDisappear:disappear];
  local = [MEMORY[0x277D0C138] local];
  [local showAccessPoint];
}

- (void)setModalPresentationStyle:(int64_t)style
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v6 = 16;
  }

  else
  {
    v6 = 2;
  }

  v7.receiver = self;
  v7.super_class = GKHostedAuthenticateViewController;
  [(GKHostedAuthenticateViewController *)&v7 setModalPresentationStyle:v6];
}

- (void)continueWithMode:(int64_t)mode
{
  self->_mode = mode;
  if ([(GKHostedAuthenticateViewController *)self mode]== 2)
  {
    [(GKHostedAuthenticateViewController *)self setRotationLocked:0];
  }

  [(GKHostedAuthenticateViewController *)self _setupChildViewController];
}

- (void)_setupChildViewController
{
  view = [(GKHostedAuthenticateViewController *)self view];
  [view setAlpha:1.0];

  [(GKHostedAuthenticateViewController *)self setWantsFullScreenLayout:1];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(GKHostedAuthenticateViewController *)self setModalInPresentation:1];
    [(GKHostedAuthenticateViewController *)self setModalPresentationStyle:16];
    mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
    [mEMORY[0x277D0C8C8] authenticateExtensionFormSheetSize];
    [(GKHostedAuthenticateViewController *)self setPreferredContentSize:?];
  }

  else
  {
    [(GKHostedAuthenticateViewController *)self setModalPresentationStyle:17];
    [(GKHostedAuthenticateViewController *)self _setIgnoreAppSupportedOrientations:1];
  }

  if (!self->_extensionHostViewController)
  {

    [(GKHostedAuthenticateViewController *)self _setupExtensionHostViewController];
  }
}

- (void)_setupExtensionHostViewController
{
  v3 = +[GKAuthenticateHostViewController authenticateExtension];
  if (v3)
  {
    [GKExtensionRemoteViewController setupCallbackBlocksForExtension:v3 withParentViewController:self];
    [(GKHostedAuthenticateViewController *)self _beginDelayingPresentation:&__block_literal_global_38 cancellationHandler:5.0];
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __71__GKHostedAuthenticateViewController__setupExtensionHostViewController__block_invoke_13;
    v4[3] = &unk_27966AE58;
    objc_copyWeak(&v5, &location);
    v4[4] = self;
    [GKExtensionRemoteViewController viewControllerForExtension:v3 inputItems:0 completionHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

uint64_t __71__GKHostedAuthenticateViewController__setupExtensionHostViewController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v3 = GKOSLoggers();
    }

    v4 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __56__GKGameCenterViewController__setupRemoteViewController__block_invoke_cold_1(v4);
    }
  }

  return a2 ^ 1u;
}

void __71__GKHostedAuthenticateViewController__setupExtensionHostViewController__block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v34, (a1 + 40));
  if (v5)
  {
    v7 = v5;
    v8 = objc_loadWeakRetained(&v34);
    [v8 setExtensionHostViewController:v7];

    v36[0] = &unk_286189270;
    v35[0] = @"MessageCommandKey";
    v35[1] = @"MessageParamKey";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "origin")}];
    v36[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];

    [v7 sendMessageToExtension:v10];
    v11 = objc_loadWeakRetained(&v34);
    [v11 addChildViewController:v7];

    v12 = objc_loadWeakRetained(&v34);
    v13 = [v12 view];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [v7 view];
    [v22 setFrame:{v15, v17, v19, v21}];

    v23 = objc_loadWeakRetained(&v34);
    v24 = [v23 view];
    v25 = [v7 view];
    [v24 addSubview:v25];

    v26 = objc_loadWeakRetained(&v34);
    [v7 didMoveToParentViewController:v26];

    v27 = objc_loadWeakRetained(&v34);
    [v7 setDelegate:v27];
  }

  else
  {
    v7 = objc_loadWeakRetained(&v34);
    [v7 extensionDidFinishWithError:v6];
  }

  v28 = objc_loadWeakRetained(&v34);
  v29 = [v28 remoteViewReadyHandler];

  if (v29)
  {
    v30 = objc_loadWeakRetained(&v34);
    v31 = [v30 remoteViewReadyHandler];
    v32 = objc_loadWeakRetained(&v34);
    v33 = [v32 extensionHostViewController];
    (v31)[2](v31, v33, 0);
  }

  objc_destroyWeak(&v34);
}

- (void)setExtensionHostViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_extensionHostViewController != controllerCopy)
  {
    objc_storeStrong(&self->_extensionHostViewController, controller);
    v6 = MEMORY[0x277CBEB38];
    v7 = +[GKExtensionRemoteViewController initialItemsForExtension];
    v8 = [v6 dictionaryWithDictionary:v7];

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_mode];
    [v8 setObject:v9 forKeyedSubscript:@"AuthenticateModeKey"];

    objc_initWeak(&location, self);
    extensionHostViewController = self->_extensionHostViewController;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__GKHostedAuthenticateViewController_setExtensionHostViewController___block_invoke;
    v11[3] = &unk_27966AE80;
    objc_copyWeak(&v12, &location);
    [(GKExtensionRemoteViewController *)extensionHostViewController setInitialState:v8 withReply:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __69__GKHostedAuthenticateViewController_setExtensionHostViewController___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __69__GKHostedAuthenticateViewController_setExtensionHostViewController___block_invoke_2;
  v1[3] = &unk_279669FE0;
  objc_copyWeak(&v2, &to);
  dispatch_async(MEMORY[0x277D85CD0], v1);
  objc_destroyWeak(&v2);
  objc_destroyWeak(&to);
}

void __69__GKHostedAuthenticateViewController_setExtensionHostViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _endDelayingPresentation];
}

- (void)extensionDidFinishWithError:(id)error
{
  [(GKHostedAuthenticateViewController *)self finishAuthenticationWithError:error];
  [(GKAuthenticateHostViewController *)self->_extensionHostViewController willMoveToParentViewController:0];
  view = [(GKAuthenticateHostViewController *)self->_extensionHostViewController view];
  [view removeFromSuperview];

  [(GKAuthenticateHostViewController *)self->_extensionHostViewController removeFromParentViewController];

  [(GKHostedAuthenticateViewController *)self setExtensionHostViewController:0];
}

- (void)finishAuthenticationWithError:(id)error
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, error);
    [(GKHostedAuthenticateViewController *)self setCompletionHandler:0];
  }

  v5.receiver = self;
  v5.super_class = GKHostedAuthenticateViewController;
  [(GKHostedAuthenticateViewController *)&v5 dismissViewControllerAnimated:1 completion:&__block_literal_global_22];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v5 = [(GKHostedAuthenticateViewController *)self error:animated];
  if ([v5 code] == 2 || -[GKHostedAuthenticateViewController mode](self, "mode") == 2)
  {
    [(GKHostedAuthenticateViewController *)self finishAuthenticationWithError:v5];
  }

  else
  {
    proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    accountService = [proxyForLocalPlayer accountService];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __79__GKHostedAuthenticateViewController_dismissViewControllerAnimated_completion___block_invoke;
    v8[3] = &unk_27966BBE0;
    v8[4] = self;
    [accountService authenticatePlayerWithExistingCredentialsWithHandler:v8];
  }
}

- (void)setRotationLocked:(BOOL)locked
{
  lockedCopy = locked;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (self->_rotationLocked != lockedCopy)
    {
      self->_rotationLocked = lockedCopy;
      if (!lockedCopy)
      {
        v5 = objc_opt_class();

        [v5 attemptRotationToDeviceOrientation];
      }
    }
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__GKHostedAuthenticateViewController_setRotationLocked___block_invoke;
    v6[3] = &unk_27966A890;
    v6[4] = self;
    v7 = lockedCopy;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

- (void)onboardingFlowDidSignOut
{
  v3 = [MEMORY[0x277CCA9B8] userErrorForCode:6 underlyingError:0];
  [(GKHostedAuthenticateViewController *)self finishAuthenticationWithError:v3];
}

@end