@interface GKSignInViewController
- (BOOL)authenticationController:(id)controller shouldContinueWithAuthenticationResults:(id)results error:(id)error forContext:(id)context;
- (BOOL)handleUnderlyingAuthenticationError:(id)error playerID:(id)d;
- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response;
- (GKSignInViewController)init;
- (UIEdgeInsets)contentInsetsBeforeKeyboard;
- (UIEdgeInsets)currentContentInsets;
- (UIEdgeInsets)scrollIndicatorInsetsBeforeKeyboard;
- (void)_systemContentSizeSettingDidChange:(id)change;
- (void)accountRemoteUIController:(id)controller finishedWithError:(id)error;
- (void)addCancelButtonToNavigationItem:(id)item;
- (void)authenticateRequestCompletedWithErrorResponse:(id)response error:(id)error;
- (void)createAppleID;
- (void)createConstraints;
- (void)createSubviews;
- (void)dealloc;
- (void)finishAuthenticationWithError:(id)error;
- (void)iForgotTapped;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)loadAccountRemoteUIForPlayer:(id)player mode:(int64_t)mode url:(id)url postBody:(id)body completionHandler:(id)handler;
- (void)loadView;
- (void)presentAccountRemoteUIControllerAnimated:(BOOL)animated;
- (void)presentError:(id)error forAccountRemoteUIController:(id)controller;
- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response;
- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal;
- (void)remoteUIControllerDidDismiss:(id)dismiss;
- (void)setupAuthKitInlineViewController;
- (void)showAAUISignInController;
- (void)showAccountDisabledAlert;
- (void)showAccountRemoteUIForAccountName:(id)name mode:(int64_t)mode url:(id)url postBody:(id)body;
- (void)showAccountRemoteUIForLocalPlayer:(id)player mode:(int64_t)mode url:(id)url postBody:(id)body;
- (void)showAccountRemoteUIForPlayerID:(id)d mode:(int64_t)mode;
- (void)showAuthKitAlertFromGreenBuddyWithAuthInfo:(id)info completion:(id)completion;
- (void)showConnectionFailedAlert;
- (void)showForgotPasswordAlert;
- (void)showLoginFailedAlert;
- (void)showPasswordAlertWithTitle:(id)title message:(id)message;
- (void)showPasswordChangeAlertWithURL:(id)l;
- (void)showPasswordResetAlertWithTitle:(id)title message:(id)message;
- (void)showViewController:(id)controller;
- (void)signIn;
- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results;
- (void)signInControllerDidCancel:(id)cancel;
- (void)signInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error;
- (void)startLoadingIndicator;
- (void)stopLoadingIndicator;
- (void)updateConstraintConstantsForTraitCollection:(id)collection;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation GKSignInViewController

- (GKSignInViewController)init
{
  v7.receiver = self;
  v7.super_class = GKSignInViewController;
  v2 = [(GKSignInViewController *)&v7 init];
  if (v2)
  {
    currentGame = [MEMORY[0x277D0C048] currentGame];
    game = v2->_game;
    v2->_game = currentGame;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__systemContentSizeSettingDidChange_ name:*MEMORY[0x277D76810] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKSignInViewController;
  [(GKSignInViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = GKSignInViewController;
  [(GKViewController *)&v11 viewWillAppear:appear];
  [(UIScrollView *)self->_scrollView setContentInset:self->_currentContentInsets.top, self->_currentContentInsets.left, self->_currentContentInsets.bottom, self->_currentContentInsets.right];
  signInInputView = [(GKSignInViewController *)self signInInputView];
  [signInInputView bounds];
  [(UIScrollView *)self->_scrollView setContentSize:v5, v6];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];

  navigationController = [(GKSignInViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0];

  navigationItem = [(GKSignInViewController *)self navigationItem];
  [(GKSignInViewController *)self addCancelButtonToNavigationItem:navigationItem];
}

- (void)addCancelButtonToNavigationItem:(id)item
{
  v4 = MEMORY[0x277D751E0];
  itemCopy = item;
  v6 = [[v4 alloc] initWithBarButtonSystemItem:1 target:self action:sel_cancelSignIn];
  [v6 setAccessibilityIdentifier:@"UIA.GameCenter.SignIn.cancelButton"];
  [itemCopy setLeftBarButtonItem:v6];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = GKSignInViewController;
  [(GKSignInViewController *)&v5 viewWillLayoutSubviews];
  [(UIScrollView *)self->_scrollView setContentInset:self->_currentContentInsets.top, self->_currentContentInsets.left, self->_currentContentInsets.bottom, self->_currentContentInsets.right];
  [(GKSignInInputView *)self->_signInInputView bounds];
  [(UIScrollView *)self->_scrollView setContentSize:v3, v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = GKSignInViewController;
  [(GKViewController *)&v3 viewDidAppear:appear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = GKSignInViewController;
  [(GKSignInViewController *)&v6 viewDidDisappear:disappear];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C60] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D76C50] object:0];
}

- (void)loadView
{
  v24.receiver = self;
  v24.super_class = GKSignInViewController;
  [(GKViewController *)&v24 loadView];
  mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
  easySignInSheetEnabled = [mEMORY[0x277D0C1D8] easySignInSheetEnabled];

  if (easySignInSheetEnabled)
  {
    objc_initWeak(&location, self);
    v5 = [GKSignInView alloc];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __34__GKSignInViewController_loadView__block_invoke;
    v21 = &unk_279669FE0;
    objc_copyWeak(&v22, &location);
    v6 = [(GKSignInView *)v5 initWithSignInAction:&v18];
    signInView = self->_signInView;
    self->_signInView = v6;

    [(GKSignInView *)self->_signInView setTranslatesAutoresizingMaskIntoConstraints:0, v18, v19, v20, v21];
    view = [(GKSignInViewController *)self view];
    [view addSubview:self->_signInView];

    v9 = MEMORY[0x277CCAAD0];
    v10 = self->_signInView;
    view2 = [(GKSignInViewController *)self view];
    [v9 _gkInstallEdgeConstraintsForView:v10 containedWithinParentView:view2];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    [(GKSignInViewController *)self createSubviews];
    [(GKSignInViewController *)self setupAuthKitInlineViewController];
    [(GKSignInViewController *)self createConstraints];
  }

  scrollView = [(GKSignInViewController *)self scrollView];
  [scrollView setContentInsetAdjustmentBehavior:0];

  navigationController = [(GKSignInViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0];

  navigationController2 = [(GKSignInViewController *)self navigationController];
  [navigationController2 makeNavigationBarBackgroundTranslucent];

  v15 = objc_opt_new();
  navigationController3 = [(GKSignInViewController *)self navigationController];
  navigationBar = [navigationController3 navigationBar];
  [navigationBar setShadowImage:v15];

  self->_constraintsCreated = 0;
}

void __34__GKSignInViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showAAUISignInController];
}

- (void)setupAuthKitInlineViewController
{
  v3 = objc_alloc_init(MEMORY[0x277CF03A0]);
  inlineSignInViewController = self->_inlineSignInViewController;
  self->_inlineSignInViewController = v3;

  [(AKInlineSignInViewController *)self->_inlineSignInViewController setWantsAuthenticationProgress:1];
  authenticationController = [(AKInlineSignInViewController *)self->_inlineSignInViewController authenticationController];
  [authenticationController setDelegate:self];

  view = [(AKInlineSignInViewController *)self->_inlineSignInViewController view];
  [view setAccessibilityIdentifier:@"UIA.GameCenter.SignIn.form"];

  v7 = objc_alloc_init(MEMORY[0x277CF0380]);
  authContext = self->_authContext;
  self->_authContext = v7;

  [(AKAppleIDAuthenticationInAppContext *)self->_authContext setServiceType:6];
  [(AKAppleIDAuthenticationInAppContext *)self->_authContext setPresentingViewController:self];
  [(AKInlineSignInViewController *)self->_inlineSignInViewController setDelegate:self];
  authContext = [(GKSignInViewController *)self authContext];
  [(AKInlineSignInViewController *)self->_inlineSignInViewController setContext:authContext];

  [(AKInlineSignInViewController *)self->_inlineSignInViewController setWantsAuthenticationProgress:1];
  [(AKInlineSignInViewController *)self->_inlineSignInViewController setSecondaryButtonTarget:self action:sel_iForgotTapped];
  [(AKInlineSignInViewController *)self->_inlineSignInViewController setTertiaryButtonTarget:self action:sel_createAppleID];
  [(GKSignInViewController *)self addChildViewController:self->_inlineSignInViewController];
  signInInputView = [(GKSignInViewController *)self signInInputView];
  view2 = [(AKInlineSignInViewController *)self->_inlineSignInViewController view];
  [signInInputView addSubview:view2];

  [(AKInlineSignInViewController *)self->_inlineSignInViewController didMoveToParentViewController:self];
  view3 = [(AKInlineSignInViewController *)self->_inlineSignInViewController view];
  bottomAnchor = [view3 bottomAnchor];
  signInInputView2 = [(GKSignInViewController *)self signInInputView];
  bottomAnchor2 = [signInInputView2 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v15 setActive:1];
}

- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results
{
  v5 = [results objectForKeyedSubscript:*MEMORY[0x277CED1B0]];
  error = [v5 error];
  if (error)
  {
  }

  else if ([v5 success])
  {
    proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    accountServicePrivate = [proxyForLocalPlayer accountServicePrivate];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__GKSignInViewController_signInController_didCompleteWithOperationsResults___block_invoke;
    v13[3] = &unk_27966BBE0;
    v13[4] = self;
    [accountServicePrivate authenticatePlayerWithUsername:0 password:0 altDSID:0 usingFastPath:1 handler:v13];

    goto LABEL_11;
  }

  error2 = [v5 error];

  if (error2)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v10 = GKOSLoggers();
    }

    v11 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [GKSignInViewController signInController:v11 didCompleteWithOperationsResults:v5];
    }
  }

  [(GKSignInViewController *)self dismissViewControllerAnimated:1 completion:0];
LABEL_11:
  signInView = [(GKSignInViewController *)self signInView];
  [signInView enablePrimaryButton];
}

- (void)signInControllerDidCancel:(id)cancel
{
  [(GKSignInViewController *)self dismissViewControllerAnimated:1 completion:0];
  signInView = [(GKSignInViewController *)self signInView];
  [signInView enablePrimaryButton];
}

- (void)signInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error
{
  controllerCopy = controller;
  if (results && !error)
  {
    v9 = *MEMORY[0x277CEFFD8];
    resultsCopy = results;
    v11 = [resultsCopy objectForKeyedSubscript:v9];
    v12 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277CEFFC8]];
    v13 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277CEFF78]];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__GKSignInViewController_signInViewController_didAuthenticateWithResults_error___block_invoke;
    block[3] = &unk_279669E48;
    block[4] = self;
    v14 = controllerCopy;
    v20 = v14;
    dispatch_async(MEMORY[0x277D85CD0], block);
    proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    accountServicePrivate = [proxyForLocalPlayer accountServicePrivate];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __80__GKSignInViewController_signInViewController_didAuthenticateWithResults_error___block_invoke_2;
    v17[3] = &unk_27966BC08;
    v17[4] = self;
    v18 = v14;
    [accountServicePrivate authenticatePlayerWithUsername:v11 password:v12 altDSID:v13 usingFastPath:1 handler:v17];
  }
}

void __80__GKSignInViewController_signInViewController_didAuthenticateWithResults_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) startLoadingIndicator];
  v2 = [*(a1 + 40) view];
  [v2 setHidden:1];
}

void __80__GKSignInViewController_signInViewController_didAuthenticateWithResults_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) stopLoadingIndicator];
  if (v5)
  {
    v6 = [*(a1 + 40) view];
    [v6 setHidden:0];
  }

  [*(a1 + 32) authenticateRequestCompletedWithErrorResponse:v7 error:v5];
}

- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response
{
  v5 = MEMORY[0x277CEC7B8];
  requestCopy = request;
  v7 = objc_alloc_init(v5);
  clientInfoHeader = [v7 clientInfoHeader];
  [requestCopy setValue:clientInfoHeader forHTTPHeaderField:@"X-MMe-Client-Info"];

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
  uppercaseString = [v10 uppercaseString];
  [requestCopy setValue:uppercaseString forHTTPHeaderField:@"X-MMe-Country"];

  return 1;
}

- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response
{
  v5 = [response URL];
  absoluteString = [v5 absoluteString];
  v7 = [absoluteString containsString:@"skipCreateAppleID"];

  if (v7)
  {
    self->_userShouldSkipCreateAppleID = 1;
  }
}

- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal
{
  controllerCopy = controller;
  modelCopy = model;
  v10 = modelCopy;
  if (signal && *signal == 2 && ([modelCopy defaultPages], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, !v12))
  {
    v18 = MEMORY[0x277D0C2A0];
    v19 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v20 = GKOSLoggers();
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&dword_24DE53000, v19, OS_LOG_TYPE_INFO, "Warning: AppleIDController received an object model with actionSignal=Push but no pages.", v21, 2u);
    }
  }

  else
  {
    u13ObjectModels = self->_u13ObjectModels;
    if (!u13ObjectModels)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = self->_u13ObjectModels;
      self->_u13ObjectModels = v14;

      u13ObjectModels = self->_u13ObjectModels;
    }

    [(NSMutableArray *)u13ObjectModels addObject:v10];
    clientInfo = [v10 clientInfo];
    v17 = [clientInfo objectForKeyedSubscript:@"continue"];

    if (v17 && ([v17 BOOLValue] & 1) == 0)
    {
      self->_userShouldSkipCreateAppleID = 1;
    }
  }
}

- (void)remoteUIControllerDidDismiss:(id)dismiss
{
  v29 = *MEMORY[0x277D85DE8];
  dismissCopy = dismiss;
  navigationController = [dismissCopy navigationController];
  v6 = [navigationController popViewControllerAnimated:1];

  if (self->_userShouldSkipCreateAppleID)
  {
    [(GKDispatchGroup *)self->_u13Group leave];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = self->_u13ObjectModels;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v24 + 1) + 8 * v12++) populatePostbackDictionary:v7];
        }

        while (v10 != v12);
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v14 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];

    if (![v14 length])
    {
      [GKSignInViewController remoteUIControllerDidDismiss:];
    }

    _gkPreferredSystemLanguage = [MEMORY[0x277CCA8D8] _gkPreferredSystemLanguage];
    if (![_gkPreferredSystemLanguage length])
    {
      [GKSignInViewController remoteUIControllerDidDismiss:];
    }

    if ([_gkPreferredSystemLanguage rangeOfString:@"-"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = MEMORY[0x277CCACA8];
      lowercaseString = [v14 lowercaseString];
      v18 = [v16 stringWithFormat:@"%@-%@", _gkPreferredSystemLanguage, lowercaseString];

      _gkPreferredSystemLanguage = v18;
    }

    systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
    name = [systemTimeZone name];

    if ([name length])
    {
      [v7 setObject:name forKey:*MEMORY[0x277CEC710]];
    }

    [v7 setObject:_gkPreferredSystemLanguage forKey:*MEMORY[0x277CEC708]];
    uppercaseString = [v14 uppercaseString];
    [v7 setObject:uppercaseString forKey:*MEMORY[0x277CEC700]];

    v22 = objc_alloc_init(MEMORY[0x277CEC848]);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __55__GKSignInViewController_remoteUIControllerDidDismiss___block_invoke;
    v23[3] = &unk_27966BC30;
    v23[4] = self;
    [v22 createAppleIDWithParameters:v7 handlerWithResponse:v23];
  }
}

void __55__GKSignInViewController_remoteUIControllerDidDismiss___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = [v6 responseDictionary];
  v14 = [v7 objectForKeyedSubscript:@"title"];

  v8 = [v6 responseDictionary];

  v9 = [v8 objectForKeyedSubscript:@"status-message"];

  if (v14 | v9)
  {
    v10 = *(a1 + 32);
    v11 = GKGameCenterUIFrameworkBundle();
    v12 = GKGetLocalizedStringFromTableInBundle();
    v13 = [v10 _gkPresentAlertWithTitle:v14 message:v9 buttonTitle:v12];
  }

  [*(*(a1 + 32) + 1168) leave];
}

- (BOOL)authenticationController:(id)controller shouldContinueWithAuthenticationResults:(id)results error:(id)error forContext:(id)context
{
  contextCopy = context;
  v10 = *MEMORY[0x277CEFFC0];
  errorCopy = error;
  v12 = [results objectForKey:v10];
  code = [errorCopy code];

  if (code == -7006)
  {
    [(GKSignInViewController *)self showLoginFailedAlert];
  }

  else if (v12)
  {
    v14 = MEMORY[0x277D0C020];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKSignInViewController.m", 586, "-[GKSignInViewController authenticationController:shouldContinueWithAuthenticationResults:error:forContext:]"];
    v16 = [v14 dispatchGroupWithName:v15];
    [(GKSignInViewController *)self setU13Group:v16];

    u13Group = self->_u13Group;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __108__GKSignInViewController_authenticationController_shouldContinueWithAuthenticationResults_error_forContext___block_invoke;
    v19[3] = &unk_279669B00;
    v20 = v12;
    v21 = contextCopy;
    selfCopy = self;
    [(GKDispatchGroup *)u13Group perform:v19];
    [(GKDispatchGroup *)self->_u13Group enter];
    [(GKDispatchGroup *)self->_u13Group wait];
  }

  return 1;
}

void __108__GKSignInViewController_authenticationController_shouldContinueWithAuthenticationResults_error_forContext___block_invoke(uint64_t a1, void *a2)
{
  v31 = a2;
  v3 = objc_alloc_init(MEMORY[0x277CEC7B8]);
  v4 = MEMORY[0x277CBEBC0];
  v5 = [MEMORY[0x277CEC860] urlConfiguration];
  v6 = [v5 repairCloudAccountUIURL];
  v7 = [v4 URLWithString:v6];

  v32 = v7;
  v8 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v7 cachePolicy:1 timeoutInterval:30.0];
  [v8 setHTTPMethod:@"POST"];
  [v8 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
  [v8 setValue:*(a1 + 32) forHTTPHeaderField:@"X-Apple-AK-Continuation-Data"];
  v33 = v3;
  v9 = [v3 clientInfoHeader];
  [v8 setValue:v9 forHTTPHeaderField:@"X-MMe-Client-Info"];

  v10 = [*(a1 + 40) altDSID];
  v29 = [*(a1 + 40) _password];
  v30 = v10;
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v10, v29];
  v11 = [v28 dataUsingEncoding:4];
  v12 = [v11 base64EncodedStringWithOptions:0];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Basic %@", v12];
  [v8 addValue:v13 forHTTPHeaderField:@"Authorization"];
  v14 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"com.apple.GameCenter.u13"];
  v15 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [v15 set_appleIDContext:v14];
  v16 = objc_alloc_init(MEMORY[0x277D46220]);
  v17 = *(a1 + 48);
  v18 = *(v17 + 1144);
  *(v17 + 1144) = v16;

  [*(*(a1 + 48) + 1144) setDelegate:?];
  [*(*(a1 + 48) + 1144) setSessionConfiguration:v15];
  v19 = objc_alloc_init(MEMORY[0x277D757A0]);
  v20 = *(a1 + 48);
  v21 = *(v20 + 1152);
  *(v20 + 1152) = v19;

  v22 = [MEMORY[0x277D75418] currentDevice];
  v23 = [v22 userInterfaceIdiom];

  if (v23 == 1)
  {
    [*(*(a1 + 48) + 1152) setModalPresentationStyle:16];
    v24 = [*(*(a1 + 48) + 1152) view];
    v25 = [v24 layer];
    [v25 setMasksToBounds:1];
  }

  [*(a1 + 48) presentViewController:*(*(a1 + 48) + 1152) animated:1 completion:0];
  [*(*(a1 + 48) + 1144) setDelegate:?];
  [*(*(a1 + 48) + 1144) setNavigationController:*(*(a1 + 48) + 1152)];
  v26 = *(*(a1 + 48) + 1144);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __108__GKSignInViewController_authenticationController_shouldContinueWithAuthenticationResults_error_forContext___block_invoke_2;
  v34[3] = &unk_27966BC58;
  v35 = v31;
  v27 = v31;
  [v26 loadRequest:v8 completion:v34];
}

- (void)createSubviews
{
  v3 = objc_alloc(MEMORY[0x277D759D8]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  scrollView = self->_scrollView;
  self->_scrollView = v8;

  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  colorPalette = [(GKViewController *)self colorPalette];
  viewBackgroundColor = [colorPalette viewBackgroundColor];
  [(UIScrollView *)self->_scrollView setBackgroundColor:viewBackgroundColor];

  [(UIScrollView *)self->_scrollView setOpaque:1];
  [(UIScrollView *)self->_scrollView contentInset];
  self->_contentInsetsBeforeKeyboard.top = v12;
  self->_contentInsetsBeforeKeyboard.left = v13;
  self->_contentInsetsBeforeKeyboard.bottom = v14;
  self->_contentInsetsBeforeKeyboard.right = v15;
  v16 = *&self->_contentInsetsBeforeKeyboard.bottom;
  *&self->_currentContentInsets.top = *&self->_contentInsetsBeforeKeyboard.top;
  *&self->_currentContentInsets.bottom = v16;
  [(UIScrollView *)self->_scrollView verticalScrollIndicatorInsets];
  self->_scrollIndicatorInsetsBeforeKeyboard.top = v17;
  self->_scrollIndicatorInsetsBeforeKeyboard.left = v18;
  self->_scrollIndicatorInsetsBeforeKeyboard.bottom = v19;
  self->_scrollIndicatorInsetsBeforeKeyboard.right = v20;
  v21 = [[GKSignInInputView alloc] initWithFrame:v4, v5, v6, v7];
  signInInputView = self->_signInInputView;
  self->_signInInputView = v21;

  [(GKSignInInputView *)self->_signInInputView setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(GKSignInInputView *)self->_signInInputView setBackgroundColor:clearColor];

  v24 = objc_alloc_init(MEMORY[0x277D756B8]);
  loginPromptLabel = self->_loginPromptLabel;
  self->_loginPromptLabel = v24;

  [(UILabel *)self->_loginPromptLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v26) = 1148846080;
  [(UILabel *)self->_loginPromptLabel setContentCompressionResistancePriority:1 forAxis:v26];
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [(UILabel *)self->_loginPromptLabel setBackgroundColor:clearColor2];

  [(UILabel *)self->_loginPromptLabel setLineBreakMode:0];
  [(UILabel *)self->_loginPromptLabel setNumberOfLines:0];
  [(UILabel *)self->_loginPromptLabel setTextAlignment:1];
  v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_loginPromptLabel setFont:v28];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_loginPromptLabel setTextColor:secondaryLabelColor];

  sIGN_IN_PROMPT_MESSAGE_TEXT = [MEMORY[0x277D0C850] SIGN_IN_PROMPT_MESSAGE_TEXT];
  [(UILabel *)self->_loginPromptLabel setText:sIGN_IN_PROMPT_MESSAGE_TEXT];

  [(UILabel *)self->_loginPromptLabel setAccessibilityIdentifier:@"UIA.GameCenter.SignIn.prompt"];
  v31 = objc_alloc(MEMORY[0x277D755E8]);
  v32 = MEMORY[0x277D755B8];
  v33 = GKGameCenterUIFrameworkBundle();
  v34 = [v32 imageNamed:@"GKOnboardingIcon" inBundle:v33];
  v35 = [v31 initWithImage:v34];
  bubbleImageView = self->_bubbleImageView;
  self->_bubbleImageView = v35;

  [(UIImageView *)self->_bubbleImageView setAccessibilityIdentifier:@"UIA.GameCenter.SignIn.icon"];
  v37 = objc_alloc_init(MEMORY[0x277D756B8]);
  signInLabel = self->_signInLabel;
  self->_signInLabel = v37;

  [(UILabel *)self->_signInLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor3 = [MEMORY[0x277D75348] clearColor];
  [(UILabel *)self->_signInLabel setBackgroundColor:clearColor3];

  [(UILabel *)self->_signInLabel setLineBreakMode:0];
  [(UILabel *)self->_signInLabel setNumberOfLines:0];
  [(UILabel *)self->_signInLabel setTextAlignment:1];
  v40 = [MEMORY[0x277D74300] _gkPreferredFontForTextStyle:*MEMORY[0x277D76A00] symbolicTraits:2];
  [(UILabel *)self->_signInLabel setFont:v40];

  v41 = GKGameCenterUIFrameworkBundle();
  v42 = GKGetLocalizedStringFromTableInBundle();
  [(UILabel *)self->_signInLabel setText:v42];

  [(UILabel *)self->_signInLabel setAccessibilityIdentifier:@"UIA.GameCenter.SignIn.header"];
  v43 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  progressIndicator = self->_progressIndicator;
  self->_progressIndicator = v43;

  [(UIActivityIndicatorView *)self->_progressIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)self->_progressIndicator setHidesWhenStopped:1];
  colorPalette2 = [(GKViewController *)self colorPalette];
  activityIndicatorColor = [colorPalette2 activityIndicatorColor];
  [(UIActivityIndicatorView *)self->_progressIndicator setColor:activityIndicatorColor];

  [(UIActivityIndicatorView *)self->_progressIndicator setAccessibilityIdentifier:@"UIA.GameCenter.SignIn.progressIndicator"];
  view = [(GKSignInViewController *)self view];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  [view addSubview:self->_scrollView];
  _gkApplyFakeStatusBarView = [view _gkApplyFakeStatusBarView];
  [(UIScrollView *)self->_scrollView addSubview:self->_signInInputView];
  [(GKSignInInputView *)self->_signInInputView addSubview:self->_bubbleImageView];
  [(GKSignInInputView *)self->_signInInputView addSubview:self->_signInLabel];
  [(GKSignInInputView *)self->_signInInputView addSubview:self->_loginPromptLabel];
  [(GKSignInInputView *)self->_signInInputView addSubview:self->_progressIndicator];
}

- (void)viewSafeAreaInsetsDidChange
{
  view = [(GKSignInViewController *)self view];
  [view safeAreaInsets];
  v5 = v4;
  view2 = [(GKSignInViewController *)self view];
  [view2 safeAreaInsets];
  v8 = v5 + v7;

  signInInputView = [(GKSignInViewController *)self signInInputView];
  signInInputViewHeightConstraint = [signInInputView signInInputViewHeightConstraint];
  [signInInputViewHeightConstraint setConstant:-v8];

  v11.receiver = self;
  v11.super_class = GKSignInViewController;
  [(GKSignInViewController *)&v11 viewSafeAreaInsetsDidChange];
}

- (void)_systemContentSizeSettingDidChange:(id)change
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(GKSignInInputView *)self->_signInInputView subviews:change];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 conformsToProtocol:&unk_2861BAE00])
        {
          [v8 replayAndApplyStyleWithSystemContentChange:1];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = GKSignInViewController;
  [(GKSignInViewController *)&v9 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinator];
  if ([collectionCopy userInterfaceIdiom] == 1)
  {
    [(GKSignInViewController *)self updateConstraintConstantsForTraitCollection:collectionCopy];
    fullWidthViewConstraints = [(GKSignInViewController *)self fullWidthViewConstraints];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __84__GKSignInViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
    v8[3] = &unk_27966BC80;
    v8[4] = self;
    [fullWidthViewConstraints enumerateObjectsUsingBlock:v8];
  }
}

void __84__GKSignInViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 fullWidthContentWidthConstraintConstant];
  [v3 setConstant:?];
}

- (void)updateConstraintConstantsForTraitCollection:(id)collection
{
  collectionCopy = collection;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    if (*MEMORY[0x277D0C258])
    {
      v6 = 291.0;
    }

    else
    {
      v6 = dbl_24E3678A0[[collectionCopy horizontalSizeClass] == 2];
    }
  }

  else
  {
    v6 = 290.0;
  }

  [(GKSignInViewController *)self setFullWidthContentWidthConstraintConstant:v6];
}

- (void)createConstraints
{
  v51[2] = *MEMORY[0x277D85DE8];
  if (!self->_constraintsCreated)
  {
    view = [(GKSignInViewController *)self view];
    v3 = *MEMORY[0x277D768C8];
    v4 = *(MEMORY[0x277D768C8] + 8);
    v5 = *(MEMORY[0x277D768C8] + 16);
    v6 = *(MEMORY[0x277D768C8] + 24);
    v7 = [MEMORY[0x277CCAAD0] _gkConstraintsForView:self->_scrollView withinView:view insets:{*MEMORY[0x277D768C8], v4, v5, v6}];
    [view addConstraints:v7];

    v8 = MEMORY[0x277CCAAD0];
    signInInputView = self->_signInInputView;
    v10 = self->_scrollView;
    v11 = [v8 _gkConstraintsForView:signInInputView withinView:v10 insets:{v3, v4, v5, v6}];
    [(UIScrollView *)v10 addConstraints:v11];

    v12 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_signInInputView attribute:7 relatedBy:0 toItem:v10 attribute:7 multiplier:1.0 constant:0.0];
    [(UIScrollView *)v10 addConstraint:v12];

    array = [MEMORY[0x277CBEB18] array];
    [(UIImageView *)self->_bubbleImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    bottomAnchor = [(UIImageView *)self->_bubbleImageView bottomAnchor];
    firstBaselineAnchor = [(UILabel *)self->_signInLabel firstBaselineAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:firstBaselineAnchor constant:-37.0];
    [v15 setActive:1];

    centerXAnchor = [(UIImageView *)self->_bubbleImageView centerXAnchor];
    centerXAnchor2 = [(GKSignInInputView *)self->_signInInputView centerXAnchor];
    v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
    [v18 setActive:1];

    v19 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_signInLabel attribute:11 relatedBy:0 toItem:self->_signInInputView attribute:3 multiplier:1.0 constant:0.0];
    [(GKSignInInputView *)self->_signInInputView setTopToSignInBaselineConstraint:v19];

    v20 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_loginPromptLabel attribute:12 relatedBy:0 toItem:self->_signInLabel attribute:11 multiplier:1.0 constant:0.0];
    [(GKSignInInputView *)self->_signInInputView setSignInBaselineToPromptTextTopConstraint:v20];

    v21 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_progressIndicator attribute:3 relatedBy:0 toItem:self->_loginPromptLabel attribute:11 multiplier:1.0 constant:0.0];
    [(GKSignInInputView *)self->_signInInputView setPromptTextToProgressIndicatorTopConstraint:v21];

    v22 = MEMORY[0x277CCAAD0];
    view2 = [(AKInlineSignInViewController *)self->_inlineSignInViewController view];
    v24 = [v22 constraintWithItem:view2 attribute:12 relatedBy:0 toItem:self->_loginPromptLabel attribute:11 multiplier:1.0 constant:0.0];
    [(GKSignInInputView *)self->_signInInputView setSignInFormToSignInLabelTopConstraint:v24];

    signInInputView = [(GKSignInViewController *)self signInInputView];
    heightAnchor = [signInInputView heightAnchor];
    view3 = [(GKSignInViewController *)self view];
    heightAnchor2 = [view3 heightAnchor];
    v29 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];
    [(GKSignInInputView *)self->_signInInputView setSignInInputViewHeightConstraint:v29];

    signInInputViewHeightConstraint = [(GKSignInInputView *)self->_signInInputView signInInputViewHeightConstraint];
    [signInInputViewHeightConstraint setActive:1];

    allVariableConstraints = [(GKSignInInputView *)self->_signInInputView allVariableConstraints];
    [array addObjectsFromArray:allVariableConstraints];

    traitCollection = [(GKSignInViewController *)self traitCollection];
    [(GKSignInViewController *)self updateConstraintConstantsForTraitCollection:traitCollection];

    signInLabel = self->_signInLabel;
    v51[0] = self->_loginPromptLabel;
    v51[1] = signInLabel;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
    v50[0] = self->_progressIndicator;
    view4 = [(AKInlineSignInViewController *)self->_inlineSignInViewController view];
    v50[1] = view4;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
    v37 = [v34 arrayByAddingObjectsFromArray:v36];

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __43__GKSignInViewController_createConstraints__block_invoke;
    v47[3] = &unk_27966BCA8;
    v38 = array;
    v48 = v38;
    selfCopy = self;
    [v37 enumerateObjectsUsingBlock:v47];
    v39 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v34, "count")}];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __43__GKSignInViewController_createConstraints__block_invoke_2;
    v44[3] = &unk_27966BCD0;
    v44[4] = self;
    v45 = v38;
    v46 = v39;
    v40 = v39;
    v41 = v38;
    [v34 enumerateObjectsUsingBlock:v44];
    [(GKSignInViewController *)self setFullWidthViewConstraints:v40];
    [(GKSignInInputView *)self->_signInInputView addConstraints:v41];
    [(GKSignInInputView *)self->_signInInputView setupConstraintConstantsForOrientation:[(GKSignInViewController *)self interfaceOrientation]];
    [(GKSignInInputView *)self->_signInInputView setNeedsLayout];
    self->_constraintsCreated = 1;
  }
}

void __43__GKSignInViewController_createConstraints__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCAAD0] _gkConstraintForView:a2 centeredXInView:*(*(a1 + 40) + 1080)];
  [v2 addObject:v3];
}

void __43__GKSignInViewController_createConstraints__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAAD0];
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 fullWidthContentWidthConstraintConstant];
  v6 = [v3 _gkConstraintForView:v5 withConstantWidth:?];

  [*(a1 + 40) addObject:v6];
  [*(a1 + 48) addObject:v6];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v8.receiver = self;
  v8.super_class = GKSignInViewController;
  [GKSignInViewController willAnimateRotationToInterfaceOrientation:sel_willAnimateRotationToInterfaceOrientation_duration_ duration:?];
  [(GKSignInInputView *)self->_signInInputView setupConstraintConstantsForOrientation:orientation];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__GKSignInViewController_willAnimateRotationToInterfaceOrientation_duration___block_invoke;
  v7[3] = &unk_2796699A8;
  v7[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v7 animations:duration];
}

- (void)startLoadingIndicator
{
  progressIndicator = [(GKSignInViewController *)self progressIndicator];
  [progressIndicator startAnimating];
}

- (void)stopLoadingIndicator
{
  progressIndicator = [(GKSignInViewController *)self progressIndicator];
  [progressIndicator stopAnimating];
}

- (void)signIn
{
  v3 = [MEMORY[0x277D0C888] authenticatorForPlayerWithUsername:self->_appleID password:0 withPresentingViewController:self];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__GKSignInViewController_signIn__block_invoke;
  v5[3] = &unk_2796699A8;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__GKSignInViewController_signIn__block_invoke_3;
  v4[3] = &unk_27966BCF8;
  v4[4] = self;
  [v3 authenticateUsingAuthUIWithAuthUIDismissHandler:v5 completionHandler:v4];
}

void __32__GKSignInViewController_signIn__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__GKSignInViewController_signIn__block_invoke_2;
  block[3] = &unk_2796699A8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __32__GKSignInViewController_signIn__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  [*(a1 + 32) authenticateRequestCompletedWithErrorResponse:a5 error:v7];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32__GKSignInViewController_signIn__block_invoke_4;
  v10[3] = &unk_279669E48;
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

- (void)showPasswordChangeAlertWithURL:(id)l
{
  lCopy = l;
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();

  v7 = MEMORY[0x277CCACA8];
  v8 = GKGameCenterUIFrameworkBundle();
  v9 = GKGetLocalizedStringFromTableInBundle();
  host = [lCopy host];
  v11 = [v7 stringWithFormat:v9, host];

  v12 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v11 preferredStyle:1];
  v13 = MEMORY[0x277D750F8];
  v14 = GKGameCenterUIFrameworkBundle();
  v15 = GKGetLocalizedStringFromTableInBundle();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57__GKSignInViewController_showPasswordChangeAlertWithURL___block_invoke;
  v23[3] = &unk_279669C68;
  v24 = lCopy;
  v16 = lCopy;
  v17 = [v13 actionWithTitle:v15 style:0 handler:v23];
  [v12 addAction:v17];

  v18 = MEMORY[0x277D750F8];
  v19 = GKGameCenterUIFrameworkBundle();
  v20 = GKGetLocalizedStringFromTableInBundle();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__GKSignInViewController_showPasswordChangeAlertWithURL___block_invoke_2;
  v22[3] = &unk_279669C68;
  v22[4] = self;
  v21 = [v18 actionWithTitle:v20 style:1 handler:v22];
  [v12 addAction:v21];

  [(GKSignInViewController *)self presentViewController:v12 animated:1 completion:0];
}

void __57__GKSignInViewController_showPasswordChangeAlertWithURL___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 openURL:*(a1 + 32)];
}

void __57__GKSignInViewController_showPasswordChangeAlertWithURL___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userErrorForCode:2 underlyingError:0];
  [v1 finishAuthenticationWithError:v2];
}

- (void)authenticateRequestCompletedWithErrorResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  if (!errorCopy)
  {
    if ([MEMORY[0x277D0C048] isGameCenter] && objc_msgSend(responseCopy, "shouldShowLinkAccountsUI"))
    {
      playerID = [responseCopy playerID];
      [(GKSignInViewController *)self showAccountRemoteUIForPlayerID:playerID mode:3];
      goto LABEL_10;
    }

    if (([responseCopy passwordChangeRequired] & 1) == 0)
    {
      [(GKSignInViewController *)self finishAuthenticationWithError:0];
      goto LABEL_11;
    }

LABEL_9:
    playerID = [responseCopy passwordChangeURL];
    [(GKSignInViewController *)self showPasswordChangeAlertWithURL:playerID];
    goto LABEL_10;
  }

  if ([responseCopy passwordChangeRequired])
  {
    goto LABEL_9;
  }

  if (![errorCopy gkIsNotConnectedToInternetError])
  {
    domain = [errorCopy domain];
    v16 = [domain isEqualToString:*MEMORY[0x277D0BA78]];

    if (v16)
    {
      code = [errorCopy code];
      if (code > 5)
      {
        if (code == 6)
        {
          userInfo = [errorCopy userInfo];
          playerID = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];

          playerID2 = [responseCopy playerID];
          v27 = [(GKSignInViewController *)self handleUnderlyingAuthenticationError:playerID playerID:playerID2];

          if (!v27)
          {
            [(GKSignInViewController *)self showConnectionFailedAlert];
          }

          goto LABEL_10;
        }

        if (code == 15)
        {
          v18 = MEMORY[0x277D75110];
          v19 = GKGameCenterUIFrameworkBundle();
          v20 = GKGetLocalizedStringFromTableInBundle();
          playerID = [v18 alertControllerWithTitle:v20 message:0 preferredStyle:1];

          v21 = MEMORY[0x277D750F8];
          v22 = GKGameCenterUIFrameworkBundle();
          v23 = GKGetLocalizedStringFromTableInBundle();
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __78__GKSignInViewController_authenticateRequestCompletedWithErrorResponse_error___block_invoke;
          v28[3] = &unk_279669C68;
          v28[4] = self;
          v24 = [v21 actionWithTitle:v23 style:0 handler:v28];
          [playerID addAction:v24];

          [(GKSignInViewController *)self presentViewController:playerID animated:1 completion:0];
          goto LABEL_10;
        }
      }

      else
      {
        if (code == 2)
        {
          goto LABEL_11;
        }

        if (code == 5)
        {
          [(GKSignInViewController *)self showLoginFailedAlert];
          goto LABEL_11;
        }
      }
    }

    [(GKSignInViewController *)self showConnectionFailedAlert];
    goto LABEL_11;
  }

  playerID = GKGameCenterUIFrameworkBundle();
  v9 = GKGetLocalizedStringFromTableInBundle();
  v10 = GKGameCenterUIFrameworkBundle();
  v11 = GKGetLocalizedStringFromTableInBundle();
  v12 = GKGameCenterUIFrameworkBundle();
  v13 = GKGetLocalizedStringFromTableInBundle();
  v14 = [(GKSignInViewController *)self _gkPresentAlertWithTitle:v9 message:v11 buttonTitle:v13];

LABEL_10:
LABEL_11:
}

void __78__GKSignInViewController_authenticateRequestCompletedWithErrorResponse_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userErrorForCode:15 underlyingError:0];
  [v1 finishAuthenticationWithError:v2];
}

- (void)presentError:(id)error forAccountRemoteUIController:(id)controller
{
  if (([controller mode] - 1) > 2)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v5 = GKGameCenterUIFrameworkBundle();
    v11 = GKGetLocalizedStringFromTableInBundle();

    v6 = GKGameCenterUIFrameworkBundle();
    v7 = GKGetLocalizedStringFromTableInBundle();
  }

  v8 = GKGameCenterUIFrameworkBundle();
  v9 = GKGetLocalizedStringFromTableInBundle();
  v10 = [(GKSignInViewController *)self _gkPresentAlertWithTitle:v11 message:v7 buttonTitle:v9];
}

- (void)accountRemoteUIController:(id)controller finishedWithError:(id)error
{
  controllerCopy = controller;
  playerForRemoteUI = [controllerCopy playerForRemoteUI];
  v7 = playerForRemoteUI;
  if (playerForRemoteUI)
  {
    localPlayer = playerForRemoteUI;
  }

  else
  {
    localPlayer = [MEMORY[0x277D0C138] localPlayer];
  }

  v9 = localPlayer;

  if ([controllerCopy isServerAuthenticated])
  {
    if ([v9 isAuthenticated])
    {
      [(GKSignInViewController *)self finishAuthenticationWithError:0];
    }

    else if ([controllerCopy mode] == 1)
    {
      [(GKSignInViewController *)self cancelSignIn];
    }
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__GKSignInViewController_accountRemoteUIController_finishedWithError___block_invoke;
    v10[3] = &unk_279669D38;
    v10[4] = self;
    [v9 signOutWithCompletionHandler:v10];
  }

  [(GKSignInViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)loadAccountRemoteUIForPlayer:(id)player mode:(int64_t)mode url:(id)url postBody:(id)body completionHandler:(id)handler
{
  playerCopy = player;
  urlCopy = url;
  bodyCopy = body;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [GKSignInViewController loadAccountRemoteUIForPlayer:a2 mode:self url:? postBody:? completionHandler:?];
  }

  self->_loadingRemoteUI = 1;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __91__GKSignInViewController_loadAccountRemoteUIForPlayer_mode_url_postBody_completionHandler___block_invoke;
  v19[3] = &unk_27966BD70;
  v19[4] = self;
  v20 = playerCopy;
  v21 = handlerCopy;
  v17 = handlerCopy;
  v18 = playerCopy;
  [GKAccountRemoteUIController accountRemoteUIControllerForPlayer:v18 mode:mode url:urlCopy postBody:bodyCopy completionHandler:v19];
}

void __91__GKSignInViewController_loadAccountRemoteUIForPlayer_mode_url_postBody_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] == 3)
    {
      v8 = [v7 domain];
      v9 = [v8 isEqualToString:@"GKRemoteUIErrorDomain"];

      if (v9)
      {
        v10 = *(a1 + 32);
        v11 = [v7 userInfo];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __91__GKSignInViewController_loadAccountRemoteUIForPlayer_mode_url_postBody_completionHandler___block_invoke_2;
        v19[3] = &unk_27966BD20;
        v12 = *(a1 + 40);
        v19[4] = *(a1 + 32);
        v20 = v12;
        [v10 showAuthKitAlertFromGreenBuddyWithAuthInfo:v11 completion:v19];

LABEL_11:
        v13 = *(*(a1 + 48) + 16);
        goto LABEL_12;
      }
    }

    *(*(a1 + 32) + 1017) = 0;
    v14 = [v7 domain];
    if ([v14 isEqualToString:@"GKRemoteUIErrorDomain"])
    {
      v15 = [v7 code];

      if (!v15)
      {
        [*(a1 + 40) cancelAuthentication];
        [*(a1 + 40) startAuthenticationForExistingPrimaryPlayer];
        v16 = *(a1 + 32);
        v17 = [MEMORY[0x277CCA9B8] userErrorForCode:2 underlyingError:0];
        [v16 finishAuthenticationWithError:v17];

        goto LABEL_11;
      }
    }

    else
    {
    }

    [*(a1 + 32) finishAuthenticationWithError:v7];
    goto LABEL_11;
  }

  *(*(a1 + 32) + 1017) = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __91__GKSignInViewController_loadAccountRemoteUIForPlayer_mode_url_postBody_completionHandler___block_invoke_4;
  v18[3] = &unk_27966BD48;
  v18[4] = *(a1 + 32);
  [v5 setCompletionHandler:v18];
  [*(a1 + 32) setAccountController:v5];
  v13 = *(*(a1 + 48) + 16);
LABEL_12:
  v13();
}

void __91__GKSignInViewController_loadAccountRemoteUIForPlayer_mode_url_postBody_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 1017) = 0;
  if ([a2 code] == -7003)
  {
    v3 = [MEMORY[0x277CCA9B8] userErrorForCode:2 underlyingError:0];
    [*(a1 + 40) authenticationDidCompleteWithError:v3];
    [*(a1 + 32) finishAuthenticationWithError:v3];
    [*(a1 + 40) signOutWithCompletionHandler:&__block_literal_global_26];
  }
}

void __91__GKSignInViewController_loadAccountRemoteUIForPlayer_mode_url_postBody_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([v7 isServerAuthenticated] & 1) == 0)
  {
    v6 = [MEMORY[0x277CCA9B8] userErrorForCode:2 underlyingError:0];

    v5 = v6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) accountRemoteUIController:v7 finishedWithError:v5];
  }

  [*(a1 + 32) setAccountController:0];
}

- (void)presentAccountRemoteUIControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = [GKRemoteUINavigationController alloc];
  accountController = [(GKSignInViewController *)self accountController];
  v18 = [(GKRemoteUINavigationController *)v5 initWithRemoteUIController:accountController];

  if (([MEMORY[0x277D0C048] isGameCenter] & 1) == 0)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
    {
      [(GKRemoteUINavigationController *)v18 setModalPresentationStyle:16];
      mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
      [mEMORY[0x277D0C8C8] formSheetSize];
      [(GKRemoteUINavigationController *)v18 setFormSheetSize:?];

      view = [(GKRemoteUINavigationController *)v18 view];
      layer = [view layer];
      [layer setMasksToBounds:1];

      mEMORY[0x277D0C8C8]2 = [MEMORY[0x277D0C8C8] sharedTheme];
      [mEMORY[0x277D0C8C8]2 formSheetCornerRadius];
      v14 = v13;
      view2 = [(GKRemoteUINavigationController *)v18 view];
      layer2 = [view2 layer];
      [layer2 setCornerRadius:v14];
    }
  }

  if (self->_remoteUIPresentingViewController)
  {
    remoteUIPresentingViewController = self->_remoteUIPresentingViewController;
  }

  else
  {
    remoteUIPresentingViewController = self;
  }

  [(GKSignInViewController *)remoteUIPresentingViewController presentViewController:v18 animated:animatedCopy completion:0];
}

- (void)showAccountRemoteUIForPlayerID:(id)d mode:(int64_t)mode
{
  dCopy = d;
  view = [(GKSignInViewController *)self view];
  [view setUserInteractionEnabled:0];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v8 = [MEMORY[0x277D0C138] authenticatedLocalPlayersFiltered:0];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __62__GKSignInViewController_showAccountRemoteUIForPlayerID_mode___block_invoke;
  v13 = &unk_27966BD98;
  v9 = dCopy;
  v14 = v9;
  v15 = &v16;
  [v8 enumerateObjectsUsingBlock:&v10];

  [(GKSignInViewController *)self showAccountRemoteUIForLocalPlayer:v17[5] mode:mode url:0 postBody:0, v10, v11, v12, v13];
  _Block_object_dispose(&v16, 8);
}

void __62__GKSignInViewController_showAccountRemoteUIForPlayerID_mode___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = [v7 internal];
  v5 = [v4 playerID];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)showAccountRemoteUIForAccountName:(id)name mode:(int64_t)mode url:(id)url postBody:(id)body
{
  nameCopy = name;
  urlCopy = url;
  bodyCopy = body;
  view = [(GKSignInViewController *)self view];
  [view setUserInteractionEnabled:0];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v27 = 0;
  v14 = [MEMORY[0x277D0C138] authenticatedLocalPlayersFiltered:0];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __78__GKSignInViewController_showAccountRemoteUIForAccountName_mode_url_postBody___block_invoke;
  v19 = &unk_27966BD98;
  v15 = nameCopy;
  v20 = v15;
  v21 = &v22;
  [v14 enumerateObjectsUsingBlock:&v16];

  [(GKSignInViewController *)self showAccountRemoteUIForLocalPlayer:v23[5] mode:mode url:urlCopy postBody:bodyCopy, v16, v17, v18, v19];
  _Block_object_dispose(&v22, 8);
}

void __78__GKSignInViewController_showAccountRemoteUIForAccountName_mode_url_postBody___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = [v6 accountName];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)showAccountRemoteUIForLocalPlayer:(id)player mode:(int64_t)mode url:(id)url postBody:(id)body
{
  v10 = MEMORY[0x277D0C010];
  bodyCopy = body;
  urlCopy = url;
  playerCopy = player;
  v14 = [v10 proxyForPlayer:playerCopy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__GKSignInViewController_showAccountRemoteUIForLocalPlayer_mode_url_postBody___block_invoke;
  v15[3] = &unk_279669D38;
  v15[4] = self;
  [(GKSignInViewController *)self loadAccountRemoteUIForPlayer:playerCopy mode:mode url:urlCopy postBody:bodyCopy completionHandler:v15];
}

void __78__GKSignInViewController_showAccountRemoteUIForLocalPlayer_mode_url_postBody___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) view];
  [v3 setUserInteractionEnabled:1];

  if (v10)
  {
    if ([v10 code] != 3)
    {
      v4 = *(a1 + 32);
      v5 = GKGameCenterUIFrameworkBundle();
      v6 = GKGetLocalizedStringFromTableInBundle();
      v7 = GKGameCenterUIFrameworkBundle();
      v8 = GKGetLocalizedStringFromTableInBundle();
      v9 = [v4 _gkPresentAlertForError:v10 title:v6 defaultMessage:v8];
    }
  }

  else
  {
    [*(a1 + 32) presentAccountRemoteUIControllerAnimated:1];
  }
}

- (void)showAuthKitAlertFromGreenBuddyWithAuthInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  v8 = [infoCopy objectForKeyedSubscript:@"authUsername"];
  v9 = MEMORY[0x277CBEBC0];
  v10 = [infoCopy objectForKeyedSubscript:@"authOkUrl"];
  v11 = [v9 URLWithString:v10];

  v12 = MEMORY[0x277CBEBC0];
  v13 = [infoCopy objectForKeyedSubscript:@"cancelUrl"];

  v14 = [v12 URLWithString:v13];

  remoteUIPresentingViewController = self->_remoteUIPresentingViewController;
  if (!remoteUIPresentingViewController)
  {
    remoteUIPresentingViewController = self;
  }

  v16 = MEMORY[0x277D0C888];
  v17 = remoteUIPresentingViewController;
  v18 = [v16 authenticatorForPlayerWithUsername:v8 password:0 withPresentingViewController:v17];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __80__GKSignInViewController_showAuthKitAlertFromGreenBuddyWithAuthInfo_completion___block_invoke;
  v22[3] = &unk_27966BDC0;
  v22[4] = self;
  v23 = v11;
  v24 = v14;
  v25 = completionCopy;
  v19 = completionCopy;
  v20 = v14;
  v21 = v11;
  [v18 authenticateUsingAuthUIAllowingAppleIDCreation:0 usernameEditable:0 dismissHandler:0 completionHandler:v22];
}

void __80__GKSignInViewController_showAuthKitAlertFromGreenBuddyWithAuthInfo_completion___block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = v18;
  if (v13 && v14 && !v18)
  {
    v20 = a1[4];
    v21 = a1[5];
    if (v15)
    {
      v22 = v15;
    }

    else
    {
      v22 = v13;
    }

    v26[0] = @"authUsername";
    v26[1] = @"authPassword";
    v27[0] = v22;
    v27[1] = v14;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    [v20 showAccountRemoteUIForAccountName:v13 mode:1 url:v21 postBody:v23];
  }

  else
  {
    v24 = a1[6];
    if (v24)
    {
      [MEMORY[0x277D0C888] postURL:v24 postBody:MEMORY[0x277CBEC10] completion:0];
    }
  }

  v25 = a1[7];
  if (v25)
  {
    (*(v25 + 16))(v25, v19);
  }
}

- (void)showViewController:(id)controller
{
  controllerCopy = controller;
  v8 = [[GKNavigationController alloc] initWithRootViewController:controllerCopy];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
  {
    [(GKNavigationController *)v8 setModalPresentationStyle:16];
    mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
    [mEMORY[0x277D0C8C8] formSheetSize];
    [(GKNavigationController *)v8 setFormSheetSize:?];
  }

  [(GKSignInViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)finishAuthenticationWithError:(id)error
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, error);
    [(GKSignInViewController *)self setCompletionHandler:0];
  }

  [(GKSignInViewController *)self stopLoadingIndicator];
}

- (BOOL)handleUnderlyingAuthenticationError:(id)error playerID:(id)d
{
  dCopy = d;
  code = [error code];
  switch(code)
  {
    case 5048:
      v9 = GKGameCenterUIFrameworkBundle();
      v10 = GKGetLocalizedStringFromTableInBundle();
      v11 = GKGameCenterUIFrameworkBundle();
      v12 = GKGetLocalizedStringFromTableInBundle();
      v13 = [(GKSignInViewController *)self _gkPresentAlertWithTitle:v10 message:0 buttonTitle:v12];

      goto LABEL_7;
    case 5046:
      [(GKSignInViewController *)self showAccountDisabledAlert];
LABEL_7:
      v8 = 1;
      break;
    case 5029:
      v8 = 1;
      [(GKSignInViewController *)self showAccountRemoteUIForPlayerID:dCopy mode:1];
      break;
    default:
      v8 = 0;
      break;
  }

  return v8;
}

- (void)showPasswordResetAlertWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__GKSignInViewController_showPasswordResetAlertWithTitle_message___block_invoke;
  block[3] = &unk_27966A9A8;
  block[4] = self;
  v11 = titleCopy;
  v12 = messageCopy;
  v8 = messageCopy;
  v9 = titleCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__GKSignInViewController_showPasswordResetAlertWithTitle_message___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v6 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  v5 = [v1 _gkPresentConfirmationAlertWithTitle:v2 message:v3 buttonTitle:v4 block:&__block_literal_global_386 cancelAction:0];
}

void __66__GKSignInViewController_showPasswordResetAlertWithTitle_message___block_invoke_2()
{
  v1 = [MEMORY[0x277D75128] sharedApplication];
  v0 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277D0BA70]];
  [v1 openURL:v0];
}

- (void)showPasswordAlertWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__GKSignInViewController_showPasswordAlertWithTitle_message___block_invoke;
  block[3] = &unk_27966A9A8;
  block[4] = self;
  v11 = titleCopy;
  v12 = messageCopy;
  v8 = messageCopy;
  v9 = titleCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __61__GKSignInViewController_showPasswordAlertWithTitle_message___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v6 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  v5 = [v1 _gkPresentAlertWithTitle:v2 message:v3 buttonTitle:v4];
}

- (void)showLoginFailedAlert
{
  v4 = GKGameCenterUIFrameworkBundle();
  v3 = GKGetLocalizedStringFromTableInBundle();
  [(GKSignInViewController *)self showPasswordAlertWithTitle:v3 message:0];
}

- (void)showForgotPasswordAlert
{
  v6 = GKGameCenterUIFrameworkBundle();
  v3 = GKGetLocalizedStringFromTableInBundle();
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();
  [(GKSignInViewController *)self showPasswordResetAlertWithTitle:v3 message:v5];
}

- (void)showAccountDisabledAlert
{
  v4 = GKGameCenterUIFrameworkBundle();
  v3 = GKGetLocalizedStringFromTableInBundle();
  [(GKSignInViewController *)self showPasswordResetAlertWithTitle:v3 message:0];
}

- (void)showConnectionFailedAlert
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__GKSignInViewController_showConnectionFailedAlert__block_invoke;
  block[3] = &unk_2796699A8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__GKSignInViewController_showConnectionFailedAlert__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  v5 = [v1 _gkPresentAlertWithTitle:v2 message:0 buttonTitle:v4];
}

- (void)createAppleID
{
  [(GKSignInViewController *)self setEditing:0];
  defaultWorkspace = [MEMORY[0x277D0BFE0] defaultWorkspace];
  [defaultWorkspace openICloudSettings];
}

- (void)showAAUISignInController
{
  v3 = objc_alloc_init(GKAAUISignInController);
  [(AAUISignInController *)v3 setServiceType:*MEMORY[0x277CED1B0]];
  [(GKAAUISignInController *)v3 setDelegate:self];
  [(AAUISignInController *)v3 _setShouldForceOperation:1];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v6 = 18;
  }

  else
  {
    v6 = 5;
  }

  [(GKAAUISignInController *)v3 setModalPresentationStyle:v6];
  signInView = [(GKSignInViewController *)self signInView];
  [signInView disablePrimaryButton];

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__GKSignInViewController_showAAUISignInController__block_invoke;
  v9[3] = &unk_27966BDE8;
  objc_copyWeak(&v11, &location);
  v8 = v3;
  v10 = v8;
  [(AAUISignInController *)v8 prepareInViewController:self completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__GKSignInViewController_showAAUISignInController__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (a2)
  {
    [WeakRetained presentViewController:*(a1 + 32) animated:1 completion:0];
  }

  else
  {
    v5 = [WeakRetained signInView];
    [v5 enablePrimaryButton];
  }
}

- (void)iForgotTapped
{
  v3 = objc_alloc_init(MEMORY[0x277CF0380]);
  [v3 setNeedsCredentialRecovery:1];
  [v3 setPresentingViewController:self];
  appleID = [(GKSignInViewController *)self appleID];
  [v3 setUsername:appleID];

  view = [(GKSignInViewController *)self view];
  [view setUserInteractionEnabled:0];

  v6 = objc_alloc_init(MEMORY[0x277CF0178]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__GKSignInViewController_iForgotTapped__block_invoke;
  v7[3] = &unk_27966BE10;
  v7[4] = self;
  [v6 authenticateWithContext:v3 completion:v7];
}

void __39__GKSignInViewController_iForgotTapped__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__GKSignInViewController_iForgotTapped__block_invoke_2;
  block[3] = &unk_2796699A8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __39__GKSignInViewController_iForgotTapped__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setUserInteractionEnabled:1];
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
  [v4 CGRectValue];
  v6 = v5;

  scrollView = [(GKSignInViewController *)self scrollView];
  [scrollView setContentInset:{0.0, 0.0, v6, 0.0}];

  scrollView2 = [(GKSignInViewController *)self scrollView];
  [scrollView2 setScrollIndicatorInsets:{0.0, 0.0, v6, 0.0}];

  self->_currentContentInsets.top = 0.0;
  self->_currentContentInsets.left = 0.0;
  self->_currentContentInsets.bottom = v6;
  self->_currentContentInsets.right = 0.0;
  view = [(GKSignInViewController *)self view];
  [view frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v17 - v6;
  inlineSignInViewController = [(GKSignInViewController *)self inlineSignInViewController];
  view2 = [inlineSignInViewController view];
  [view2 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  scrollView3 = [(GKSignInViewController *)self scrollView];
  [scrollView3 contentOffset];
  v31 = v24 - v30;

  v36.origin.x = v11;
  v36.origin.y = v13;
  v36.size.width = v15;
  v36.size.height = v18;
  v35.x = v22;
  v35.y = v31;
  if (!CGRectContainsPoint(v36, v35))
  {
    scrollView4 = [(GKSignInViewController *)self scrollView];
    [scrollView4 scrollRectToVisible:1 animated:{v22, v31, v26, v28}];
  }
}

- (void)keyboardWillHide:(id)hide
{
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  scrollView = [(GKSignInViewController *)self scrollView];
  [scrollView setContentInset:{v4, v5, v6, v7}];

  self->_currentContentInsets.top = v4;
  self->_currentContentInsets.left = v5;
  self->_currentContentInsets.bottom = v6;
  self->_currentContentInsets.right = v7;
  scrollView2 = [(GKSignInViewController *)self scrollView];
  [scrollView2 setScrollIndicatorInsets:{v4, v5, v6, v7}];
}

- (UIEdgeInsets)currentContentInsets
{
  top = self->_currentContentInsets.top;
  left = self->_currentContentInsets.left;
  bottom = self->_currentContentInsets.bottom;
  right = self->_currentContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)contentInsetsBeforeKeyboard
{
  top = self->_contentInsetsBeforeKeyboard.top;
  left = self->_contentInsetsBeforeKeyboard.left;
  bottom = self->_contentInsetsBeforeKeyboard.bottom;
  right = self->_contentInsetsBeforeKeyboard.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)scrollIndicatorInsetsBeforeKeyboard
{
  top = self->_scrollIndicatorInsetsBeforeKeyboard.top;
  left = self->_scrollIndicatorInsetsBeforeKeyboard.left;
  bottom = self->_scrollIndicatorInsetsBeforeKeyboard.bottom;
  right = self->_scrollIndicatorInsetsBeforeKeyboard.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)signInController:(void *)a1 didCompleteWithOperationsResults:(void *)a2 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 error];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_24DE53000, v3, OS_LOG_TYPE_ERROR, "signInController:didCompleteWithOperationsResults returned error: %@", &v5, 0xCu);
}

- (void)loadAccountRemoteUIForPlayer:(uint64_t)a1 mode:(uint64_t)a2 url:postBody:completionHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GKSignInViewController.m" lineNumber:990 description:{@"Invalid parameter not satisfying: %@", @"handler != nil"}];
}

@end