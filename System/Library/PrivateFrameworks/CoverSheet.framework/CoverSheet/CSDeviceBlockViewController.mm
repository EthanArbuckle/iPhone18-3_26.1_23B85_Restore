@interface CSDeviceBlockViewController
- (BOOL)_isFindMyChangingState;
- (BOOL)_isFindMyEnabled;
- (BOOL)_shouldShowUnblockDeviceButton;
- (CSDeviceBlockViewController)initWithDeviceBlockStatusProvider:(id)provider;
- (id)_obfuscateUsername:(id)username;
- (id)_unblockPolicy;
- (id)view;
- (id)viewIfLoaded;
- (void)_attemptErase;
- (void)_attemptRecovery;
- (void)_attemptToDisableFindMyWithAccount:(id)account completion:(id)completion;
- (void)_cancelPendingActionAfterDelay:(double)delay;
- (void)_disableFindMyInContext:(unint64_t)context withWipeToken:(id)token completion:(id)completion;
- (void)_eraseDeviceWithCompletion:(id)completion;
- (void)_getUserAccountWithCompletion:(id)completion;
- (void)_handleDeviceLocatorStateDidChange:(id)change;
- (void)_performFMIPAuthenticationForContext:(id)context account:(id)account completion:(id)completion;
- (void)_presentAuthenticationViewController;
- (void)_presentUnblockDeviceViewController;
- (void)_setNetworkMonitorUpdateHandlerWithPath:(id)path completion:(id)completion;
- (void)_setUpNetworkPathMonitor;
- (void)_updateText;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)authViewController:(id)controller didConfirmEraseAfterAuthenticationWithResults:(id)results shouldEraseDataPlan:(BOOL)plan;
- (void)authViewControllerDidCancelToEraseDeviceAfterAuthentication:(id)authentication;
- (void)cancelButtonTapped;
- (void)dealloc;
- (void)deviceUnblockViewModelHandleDidRequestCancel;
- (void)handleEmergencyButtonAction;
- (void)handleSecondaryActionForView:(id)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation CSDeviceBlockViewController

- (CSDeviceBlockViewController)initWithDeviceBlockStatusProvider:(id)provider
{
  providerCopy = provider;
  v24.receiver = self;
  v24.super_class = CSDeviceBlockViewController;
  v6 = [(CSDeviceBlockViewController *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_blockStatusProvider, provider);
    v8 = objc_alloc_init(MEMORY[0x277CB8F48]);
    accountStore = v7->_accountStore;
    v7->_accountStore = v8;

    v10 = +[CSLockScreenDomain rootSettings];
    lockScreenSettings = v7->_lockScreenSettings;
    v7->_lockScreenSettings = v10;

    v12 = objc_alloc_init(CSDevicePasscodeRecoveryService);
    passcodeRecovery = v7->_passcodeRecovery;
    v7->_passcodeRecovery = v12;

    v14 = nw_path_monitor_create();
    networkPathMonitor = v7->_networkPathMonitor;
    v7->_networkPathMonitor = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.CoverSheet.deviceBlock", v16);
    networkMonitorQueue = v7->_networkMonitorQueue;
    v7->_networkMonitorQueue = v17;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v20 = getAAUIDeviceLocatorStateDidChangeNotificationSymbolLoc_ptr;
    v33 = getAAUIDeviceLocatorStateDidChangeNotificationSymbolLoc_ptr;
    if (!getAAUIDeviceLocatorStateDidChangeNotificationSymbolLoc_ptr)
    {
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __getAAUIDeviceLocatorStateDidChangeNotificationSymbolLoc_block_invoke;
      v28 = &unk_27838C610;
      v29 = &v30;
      v21 = AppleAccountUILibrary();
      v22 = dlsym(v21, "AAUIDeviceLocatorStateDidChangeNotification");
      *(v29[1] + 24) = v22;
      getAAUIDeviceLocatorStateDidChangeNotificationSymbolLoc_ptr = *(v29[1] + 24);
      v20 = v31[3];
    }

    _Block_object_dispose(&v30, 8);
    if (!v20)
    {
      [CSDeviceBlockViewController initWithDeviceBlockStatusProvider:];
    }

    [defaultCenter addObserver:v7 selector:sel__handleDeviceLocatorStateDidChange_ name:*v20 object:0];

    [(CSDeviceBlockViewController *)v7 _setUpNetworkPathMonitor];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(SBFDeviceBlockTimer *)self->_blockTimer invalidate];
  v4.receiver = self;
  v4.super_class = CSDeviceBlockViewController;
  [(CSCoverSheetViewControllerBase *)&v4 dealloc];
}

- (id)view
{
  v4.receiver = self;
  v4.super_class = CSDeviceBlockViewController;
  view = [(CSModalViewControllerBase *)&v4 view];

  return view;
}

- (id)viewIfLoaded
{
  v4.receiver = self;
  v4.super_class = CSDeviceBlockViewController;
  viewIfLoaded = [(CSModalViewControllerBase *)&v4 viewIfLoaded];

  return viewIfLoaded;
}

- (void)viewDidLoad
{
  v3 = [objc_alloc(MEMORY[0x277D65E48]) initWithDeviceBlockStatusProvider:self->_blockStatusProvider];
  blockTimer = self->_blockTimer;
  self->_blockTimer = v3;

  objc_initWeak(&location, self);
  v5 = self->_blockTimer;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42__CSDeviceBlockViewController_viewDidLoad__block_invoke;
  v19[3] = &unk_27838B748;
  objc_copyWeak(&v20, &location);
  [(SBFDeviceBlockTimer *)v5 setHandler:v19];
  view = [(CSDeviceBlockViewController *)self view];
  [view setDeviceBlockDelegate:self];
  titleText = [(SBFDeviceBlockTimer *)self->_blockTimer titleText];
  [view setTitleText:titleText];

  subtitleText = [(SBFDeviceBlockTimer *)self->_blockTimer subtitleText];
  [view setSubtitleText:subtitleText];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"DASHBOARD_BLOCK_ERASE_LINK" value:&stru_28302FDA0 table:@"CoverSheet"];
  [view setSecondarySubtitleText:v10];

  preferredFontProvider = [MEMORY[0x277CF0D60] preferredFontProvider];
  v12 = [preferredFontProvider preferredFontForTextStyle:*MEMORY[0x277D76918] hiFontStyle:1];
  [view setOverrideSecondarySubtitleFont:v12];

  grayColor = [MEMORY[0x277D75348] grayColor];
  [view setOverrideSecondarySubtitleTextColor:grayColor];

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
LABEL_5:
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"DASHBOARD_BLOCK_EMERGENCY_BUTTON" value:&stru_28302FDA0 table:@"CoverSheet"];
    [view setSecondaryActionButtonText:v17];
  }

LABEL_6:
  v18.receiver = self;
  v18.super_class = CSDeviceBlockViewController;
  [(CSModalViewControllerBase *)&v18 viewDidLoad];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __42__CSDeviceBlockViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updateText];
    v2 = [v3 view];
    [v2 updateViewForUnblockDeviceView];

    WeakRetained = v3;
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CSDeviceBlockViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidDisappear:disappear];
  [(SBFDeviceBlockTimer *)self->_blockTimer invalidate];
}

- (void)aggregateAppearance:(id)appearance
{
  v16.receiver = self;
  v16.super_class = CSDeviceBlockViewController;
  appearanceCopy = appearance;
  [(CSModalViewControllerBase *)&v16 aggregateAppearance:appearanceCopy];
  v5 = [CSComponent homeAffordance:v16.receiver];
  v6 = [v5 priority:80];
  appearanceIdentifier = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
  v8 = [v6 identifier:appearanceIdentifier];
  v9 = [v8 hidden:1];
  [appearanceCopy addComponent:v9];

  v10 = +[CSComponent proudLock];
  v11 = [v10 priority:80];
  v12 = [v11 hidden:1];
  [appearanceCopy addComponent:v12];

  v13 = +[CSComponent whitePoint];
  v14 = [v13 priority:80];
  v15 = [v14 hidden:1];
  [appearanceCopy addComponent:v15];
}

- (void)aggregateBehavior:(id)behavior
{
  behaviorCopy = behavior;
  viewIfLoaded = [(CSDeviceBlockViewController *)self viewIfLoaded];
  if ([viewIfLoaded isShowingAuthenticationView])
  {
    v6 = 12;
  }

  else
  {
    viewIfLoaded2 = [(CSDeviceBlockViewController *)self viewIfLoaded];
    if (([viewIfLoaded2 isShowingUnblockDeviceView] & 1) != 0 || self->_attemptingErase)
    {
      v6 = 12;
    }

    else if (self->_attemptingRecovery)
    {
      v6 = 12;
    }

    else
    {
      v6 = 0;
    }
  }

  v8.receiver = self;
  v8.super_class = CSDeviceBlockViewController;
  [(CSModalViewControllerBase *)&v8 aggregateBehavior:behaviorCopy];
  [behaviorCopy addRestrictedCapabilities:1048632];
  [behaviorCopy setIdleTimerDuration:v6];
}

- (void)handleSecondaryActionForView:(id)view
{
  if (![(CSDeviceBlockViewController *)self _shouldShowUnblockDeviceButton])
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v6 = [CSAction actionWithType:2];
      [(CSCoverSheetViewControllerBase *)self sendAction:v6];
    }
  }
}

- (void)handleEmergencyButtonAction
{
  v3 = [CSAction actionWithType:2];
  [(CSCoverSheetViewControllerBase *)self sendAction:v3];
}

- (void)authViewController:(id)controller didConfirmEraseAfterAuthenticationWithResults:(id)results shouldEraseDataPlan:(BOOL)plan
{
  planCopy = plan;
  v16 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  controllerCopy = controller;
  v10 = SBLogDashBoard();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (planCopy)
    {
      v11 = @"YES";
    }

    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "Device erase attempt confirmed after authentication, will erase data plan: %@", &v14, 0xCu);
  }

  authenticationViewController = self->_authenticationViewController;
  if (authenticationViewController == controllerCopy)
  {
    self->_shouldEraseDataPlan = planCopy;
    v13 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277CEFFC8]];
    [(ACAccount *)self->_findMyAccount aa_setPassword:v13];
    [(CSDeviceBlockViewController *)self _attemptErase];
  }
}

- (void)authViewControllerDidCancelToEraseDeviceAfterAuthentication:(id)authentication
{
  if (self->_authenticationViewController == authentication)
  {
    v7 = v3;
    v8 = v4;
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Device erase attempt canceled after authentication", v6, 2u);
    }
  }
}

- (void)cancelButtonTapped
{
  view = [(CSDeviceBlockViewController *)self view];
  v4 = view;
  authenticationViewController = self->_authenticationViewController;
  if (authenticationViewController)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__CSDeviceBlockViewController_cancelButtonTapped__block_invoke;
    v10[3] = &unk_27838BA70;
    v11 = view;
    selfCopy = self;
    [(CSDeviceBlockViewController *)self bs_removeChildViewController:authenticationViewController animated:0 transitionBlock:v10];
  }

  deviceUnblockViewController = self->_deviceUnblockViewController;
  if (deviceUnblockViewController)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__CSDeviceBlockViewController_cancelButtonTapped__block_invoke_2;
    v7[3] = &unk_27838BA70;
    v8 = v4;
    selfCopy2 = self;
    [(CSDeviceBlockViewController *)self bs_removeChildViewController:deviceUnblockViewController animated:0 transitionBlock:v7];
  }
}

void __49__CSDeviceBlockViewController_cancelButtonTapped__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v3 setAuthenticationView:0];
  v4 = *(a1 + 40);
  v5 = *(v4 + 1072);
  *(v4 + 1072) = 0;

  v6[2]();
}

void __49__CSDeviceBlockViewController_cancelButtonTapped__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v3 setUnblockDeviceView:0];
  v4 = *(a1 + 40);
  v5 = *(v4 + 1080);
  *(v4 + 1080) = 0;

  v6[2]();
}

- (void)deviceUnblockViewModelHandleDidRequestCancel
{
  view = [(CSDeviceBlockViewController *)self view];
  v4 = view;
  deviceUnblockViewController = self->_deviceUnblockViewController;
  if (deviceUnblockViewController)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __75__CSDeviceBlockViewController_deviceUnblockViewModelHandleDidRequestCancel__block_invoke;
    v6[3] = &unk_27838BA70;
    v6[4] = self;
    v7 = view;
    [(CSDeviceBlockViewController *)self bs_removeChildViewController:deviceUnblockViewController animated:0 transitionBlock:v6];
  }
}

void __75__CSDeviceBlockViewController_deviceUnblockViewModelHandleDidRequestCancel__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v3 _updateText];
  [*(a1 + 40) setUnblockDeviceView:0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1080);
  *(v4 + 1080) = 0;

  [*(a1 + 32) rebuildBehavior];
  v6[2]();
}

- (void)_presentUnblockDeviceViewController
{
  if (_presentUnblockDeviceViewController_onceToken != -1)
  {
    [CSDeviceBlockViewController _presentUnblockDeviceViewController];
  }

  dispatch_async(_presentUnblockDeviceViewController_forgotPasscodeEventQueue, &__block_literal_global_82);
  view = [(CSDeviceBlockViewController *)self view];
  _unblockPolicy = [(CSDeviceBlockViewController *)self _unblockPolicy];
  canUnblockDeviceUsingRecovery = [_unblockPolicy canUnblockDeviceUsingRecovery];
  v6 = off_27838A350;
  if (!canUnblockDeviceUsingRecovery)
  {
    v6 = off_27838A2F0;
  }

  v7 = [objc_alloc(*v6) initWithUnblockPolicy:_unblockPolicy blockViewController:self];
  v8 = [[CSDeviceUnblockViewController alloc] initWithViewModel:v7];
  deviceUnblockViewController = self->_deviceUnblockViewController;
  self->_deviceUnblockViewController = v8;

  v10 = self->_deviceUnblockViewController;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __66__CSDeviceBlockViewController__presentUnblockDeviceViewController__block_invoke_3;
  v15 = &unk_27838BA70;
  v16 = view;
  selfCopy = self;
  v11 = view;
  [(CSDeviceBlockViewController *)self bs_addChildViewController:v10 animated:0 transitionBlock:&v12];
  [(CSCoverSheetViewControllerBase *)self rebuildAppearance:v12];
  [v11 setNeedsLayout];
}

void __66__CSDeviceBlockViewController__presentUnblockDeviceViewController__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("com.apple.springboard.mobilekeybag.forgotPasscodeEvent", v2);
  v1 = _presentUnblockDeviceViewController_forgotPasscodeEventQueue;
  _presentUnblockDeviceViewController_forgotPasscodeEventQueue = v0;
}

void __66__CSDeviceBlockViewController__presentUnblockDeviceViewController__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 1080);
  v9 = a2;
  v5 = [v4 view];
  [v3 setUnblockDeviceView:v5];

  v6 = *(a1 + 40);
  v7 = *(v6 + 1080);
  v8 = [*(v6 + 1096) timeoutText];
  [v7 setTimeoutString:v8];

  [*(a1 + 40) rebuildBehavior];
  v9[2]();
}

- (void)_presentAuthenticationViewController
{
  view = [(CSDeviceBlockViewController *)self view];
  if (!self->_authenticationViewController)
  {
    v4 = objc_alloc_init(CSEraseDeviceAuthViewController);
    authenticationViewController = self->_authenticationViewController;
    self->_authenticationViewController = v4;

    [(CSEraseDeviceAuthViewController *)self->_authenticationViewController setDelegate:self];
    objc_initWeak(&location, self);
    v6 = self->_authenticationViewController;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__CSDeviceBlockViewController__presentAuthenticationViewController__block_invoke;
    v7[3] = &unk_27838D6C8;
    objc_copyWeak(&v10, &location);
    v8 = view;
    selfCopy = self;
    [(CSDeviceBlockViewController *)self bs_addChildViewController:v6 animated:0 transitionBlock:v7];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __67__CSDeviceBlockViewController__presentAuthenticationViewController__block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = [*(*(a1 + 40) + 1072) view];
    [v4 setAuthenticationView:v5];

    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    v8 = v7 & 0xFFFFFFFFFFFFFFFBLL;
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v9;
    if (v8 == 1)
    {
      v11 = @"DASHBOARD_BLOCK_ERASE_AUTH_MESSAGE_PAD";
    }

    else
    {
      v11 = @"DASHBOARD_BLOCK_ERASE_AUTH_MESSAGE_PHONE";
    }

    v12 = [v9 localizedStringForKey:v11 value:&stru_28302FDA0 table:@"CoverSheet"];

    v13 = MEMORY[0x277CCACA8];
    v14 = *(a1 + 40);
    v15 = [v14[145] aa_primaryEmail];
    v16 = [v14 _obfuscateUsername:v15];
    v17 = [v13 stringWithFormat:v12, v16];

    [*(*(a1 + 40) + 1072) setSubtitleLabelText:v17];
    v18 = objc_alloc_init(MEMORY[0x277CF0380]);
    v19 = [*(*(a1 + 40) + 1160) username];
    [v18 setUsername:v19];

    v20 = [*(*(a1 + 40) + 1160) aa_altDSID];
    [v18 setAltDSID:v20];

    [v18 setAuthenticationType:2];
    [v18 setShouldPromptForPasswordOnly:1];
    [v18 setIsEphemeral:1];
    [v18 setIsUsernameEditable:0];
    [v18 setMaximumLoginAttempts:2];
    v21 = NSSelectorFromString(&cfstr_Setallowauthen.isa);
    if (objc_opt_respondsToSelector())
    {
      ([v18 methodForSelector:v21])(v18, v21, 1);
    }

    [*(*(a1 + 40) + 1072) setAuthContext:v18];
    [WeakRetained rebuildBehavior];
    v22[2]();
  }
}

- (void)_updateText
{
  viewIfLoaded = [(CSDeviceBlockViewController *)self viewIfLoaded];
  subtitleText = [(SBFDeviceBlockTimer *)self->_blockTimer subtitleText];
  [viewIfLoaded setSubtitleText:subtitleText];

  if (_os_feature_enabled_impl())
  {
    _shouldShowUnblockDeviceButton = [(CSDeviceBlockViewController *)self _shouldShowUnblockDeviceButton];
    viewIfLoaded2 = [(CSDeviceBlockViewController *)self viewIfLoaded];
    v7 = viewIfLoaded2;
    if (_shouldShowUnblockDeviceButton)
    {
      [viewIfLoaded2 addDeviceUnblockButtons];
    }

    else
    {
      [viewIfLoaded2 removeDeviceUnblockButtons];
    }
  }
}

- (void)_handleDeviceLocatorStateDidChange:(id)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__CSDeviceBlockViewController__handleDeviceLocatorStateDidChange___block_invoke;
  block[3] = &unk_27838B770;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__CSDeviceBlockViewController__handleDeviceLocatorStateDidChange___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _isFindMyChangingState] & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 1112);
    if (v2)
    {
      (*(v2 + 16))(v2, 1);
      v3 = *(a1 + 32);
      v4 = *(v3 + 1112);
      *(v3 + 1112) = 0;
    }
  }
}

- (void)_attemptErase
{
  if (_os_feature_enabled_impl())
  {
    self->_attemptingErase = 1;
    [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
    objc_initWeak(&location, self);
    findMyAccount = self->_findMyAccount;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __44__CSDeviceBlockViewController__attemptErase__block_invoke;
    v4[3] = &unk_27838D6F0;
    objc_copyWeak(&v5, &location);
    [(CSDeviceBlockViewController *)self _attemptToDisableFindMyWithAccount:findMyAccount completion:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __44__CSDeviceBlockViewController__attemptErase__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SBLogDashBoard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__CSDeviceBlockViewController__attemptErase__block_invoke_cold_1(v3);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[1136] = 0;
    [WeakRetained rebuildBehavior];
  }
}

- (void)_attemptRecovery
{
  self->_attemptingRecovery = 1;
  [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
  objc_initWeak(&location, self);
  passcodeRecovery = self->_passcodeRecovery;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__CSDeviceBlockViewController__attemptRecovery__block_invoke;
  v4[3] = &unk_27838D6F0;
  objc_copyWeak(&v5, &location);
  [(CSDevicePasscodeRecoveryService *)passcodeRecovery startRecoveryInParentVC:self completion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __47__CSDeviceBlockViewController__attemptRecovery__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[1137] = 0;
    [WeakRetained rebuildBehavior];
    if (!v3)
    {
      goto LABEL_6;
    }

    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __47__CSDeviceBlockViewController__attemptRecovery__block_invoke_cold_1();
    }

    v7 = [v5 _unblockPolicy];
    v8 = [v7 canUnblockDeviceUsingRecovery];

    if ((v8 & 1) == 0)
    {
LABEL_6:
      [v5 deviceUnblockViewModelHandleDidRequestCancel];
    }
  }
}

- (BOOL)_isFindMyEnabled
{
  sharedInstance = [getAAUIDeviceLocatorServiceClass() sharedInstance];
  isEnabled = [sharedInstance isEnabled];

  return isEnabled;
}

- (BOOL)_isFindMyChangingState
{
  sharedInstance = [getAAUIDeviceLocatorServiceClass() sharedInstance];
  isChangingState = [sharedInstance isChangingState];

  return isChangingState;
}

- (void)_setUpNetworkPathMonitor
{
  objc_initWeak(&location, self);
  networkPathMonitor = self->_networkPathMonitor;
  update_handler[0] = MEMORY[0x277D85DD0];
  update_handler[1] = 3221225472;
  update_handler[2] = __55__CSDeviceBlockViewController__setUpNetworkPathMonitor__block_invoke;
  update_handler[3] = &unk_27838D718;
  objc_copyWeak(&v6, &location);
  update_handler[4] = self;
  nw_path_monitor_set_update_handler(networkPathMonitor, update_handler);
  nw_path_monitor_set_queue(self->_networkPathMonitor, self->_networkMonitorQueue);
  networkPathMonitor = [(CSDeviceBlockViewController *)self networkPathMonitor];
  nw_path_monitor_start(networkPathMonitor);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __55__CSDeviceBlockViewController__setUpNetworkPathMonitor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_initWeak(&location, WeakRetained);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__CSDeviceBlockViewController__setUpNetworkPathMonitor__block_invoke_2;
    v5[3] = &unk_27838C460;
    objc_copyWeak(&v6, &location);
    v5[4] = *(a1 + 32);
    [WeakRetained _setNetworkMonitorUpdateHandlerWithPath:v3 completion:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __55__CSDeviceBlockViewController__setUpNetworkPathMonitor__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__CSDeviceBlockViewController__setUpNetworkPathMonitor__block_invoke_3;
  v3[3] = &unk_27838B770;
  v3[4] = *(a1 + 32);
  [WeakRetained _getUserAccountWithCompletion:v3];
}

void __55__CSDeviceBlockViewController__setUpNetworkPathMonitor__block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CSDeviceBlockViewController__setUpNetworkPathMonitor__block_invoke_4;
  block[3] = &unk_27838B770;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_setNetworkMonitorUpdateHandlerWithPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__CSDeviceBlockViewController__setNetworkMonitorUpdateHandlerWithPath_completion___block_invoke;
  block[3] = &unk_27838C060;
  v11 = pathCopy;
  selfCopy = self;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = pathCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __82__CSDeviceBlockViewController__setNetworkMonitorUpdateHandlerWithPath_completion___block_invoke(uint64_t a1)
{
  *(*(a1 + 40) + 1138) = nw_path_get_status(*(a1 + 32)) == nw_path_status_satisfied;
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_getUserAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  accountStore = self->_accountStore;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__CSDeviceBlockViewController__getUserAccountWithCompletion___block_invoke;
  v7[3] = &unk_27838D740;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(ACAccountStore *)accountStore aa_primaryAppleAccountWithCompletion:v7];
}

void __61__CSDeviceBlockViewController__getUserAccountWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SBLogDashBoard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__CSDeviceBlockViewController__getUserAccountWithCompletion___block_invoke_cold_1(v6);
    }
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 1160);
  *(v8 + 1160) = v5;
  v10 = v5;

  (*(*(a1 + 40) + 16))();
}

- (void)_attemptToDisableFindMyWithAccount:(id)account completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  completionCopy = completion;
  v8 = SBLogDashBoard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [(CSDeviceBlockViewController *)self _isFindMyEnabled];
    v9 = NSStringFromBOOL();
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to disable FindMy with FindMy enabled: %@", &buf, 0xCu);
  }

  if ([(CSDeviceBlockViewController *)self _isFindMyChangingState])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __77__CSDeviceBlockViewController__attemptToDisableFindMyWithAccount_completion___block_invoke;
    v18[3] = &unk_27838D768;
    v20 = completionCopy;
    v18[4] = self;
    v19 = accountCopy;
    selfCopy = self;
    v11 = MEMORY[0x223D698D0](v18);
    pendingAction = selfCopy->_pendingAction;
    selfCopy->_pendingAction = v11;

    [(CSDeviceBlockViewController *)selfCopy _cancelPendingActionAfterDelay:10.0];
  }

  else if ([(CSDeviceBlockViewController *)self _isFindMyEnabled])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v13 = getAAUIDeviceLocatorConfirmationUtilitiesContextClass_softClass;
    v24 = getAAUIDeviceLocatorConfirmationUtilitiesContextClass_softClass;
    if (!getAAUIDeviceLocatorConfirmationUtilitiesContextClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v26 = __getAAUIDeviceLocatorConfirmationUtilitiesContextClass_block_invoke;
      v27 = &unk_27838C610;
      v28 = &v21;
      __getAAUIDeviceLocatorConfirmationUtilitiesContextClass_block_invoke(&buf);
      v13 = v22[3];
    }

    v14 = v13;
    _Block_object_dispose(&v21, 8);
    selfCopy = objc_alloc_init(v13);
    [(CSDeviceBlockViewController *)selfCopy setAccount:accountCopy];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__CSDeviceBlockViewController__attemptToDisableFindMyWithAccount_completion___block_invoke_2;
    v16[3] = &unk_27838D790;
    v16[4] = self;
    v17 = completionCopy;
    selfCopy2 = self;
    [(CSDeviceBlockViewController *)selfCopy2 _performFMIPAuthenticationForContext:selfCopy account:accountCopy completion:v16];
  }

  else
  {
    selfCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSDeviceBlockEraseErrorDomain" code:3 userInfo:0];
    (*(completionCopy + 2))(completionCopy, selfCopy);
  }
}

void __77__CSDeviceBlockViewController__attemptToDisableFindMyWithAccount_completion___block_invoke(void *a1, int a2)
{
  if (a2)
  {
    v3 = a1[6];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSDeviceBlockEraseErrorDomain" code:1 userInfo:0];
    (*(v3 + 16))(v3, v7);
  }

  else
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[4];

    [v6 _attemptToDisableFindMyWithAccount:v4 completion:v5];
  }
}

void __77__CSDeviceBlockViewController__attemptToDisableFindMyWithAccount_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = [a3 fmipWipeToken];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [*(a1 + 32) _disableFindMyInContext:4 withWipeToken:v4 completion:*(a1 + 40)];
}

- (void)_performFMIPAuthenticationForContext:(id)context account:(id)account completion:(id)completion
{
  contextCopy = context;
  accountCopy = account;
  completionCopy = completion;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v10 = getAAFMIPAuthenticateRequestClass_softClass;
  v21 = getAAFMIPAuthenticateRequestClass_softClass;
  if (!getAAFMIPAuthenticateRequestClass_softClass)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __getAAFMIPAuthenticateRequestClass_block_invoke;
    v17[3] = &unk_27838C610;
    v17[4] = &v18;
    __getAAFMIPAuthenticateRequestClass_block_invoke(v17);
    v10 = v19[3];
  }

  v11 = v10;
  _Block_object_dispose(&v18, 8);
  v12 = [[v10 alloc] initWithAccount:accountCopy];
  customRequestHeaders = [contextCopy customRequestHeaders];
  [v12 setCustomHeaders:customRequestHeaders];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__CSDeviceBlockViewController__performFMIPAuthenticationForContext_account_completion___block_invoke;
  v15[3] = &unk_27838D7B8;
  v16 = completionCopy;
  v14 = completionCopy;
  [v12 performRequestWithHandler:v15];
}

void __87__CSDeviceBlockViewController__performFMIPAuthenticationForContext_account_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = SBLogDashBoard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __87__CSDeviceBlockViewController__performFMIPAuthenticationForContext_account_completion___block_invoke_cold_1(v7);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_disableFindMyInContext:(unint64_t)context withWipeToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  sharedInstance = [getAAUIDeviceLocatorServiceClass() sharedInstance];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__CSDeviceBlockViewController__disableFindMyInContext_withWipeToken_completion___block_invoke;
  v12[3] = &unk_27838C010;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [sharedInstance disableInContext:context withWipeToken:tokenCopy completion:v12];
}

void __80__CSDeviceBlockViewController__disableFindMyInContext_withWipeToken_completion___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__CSDeviceBlockViewController__disableFindMyInContext_withWipeToken_completion___block_invoke_2;
  block[3] = &unk_27838BD30;
  v5 = a2;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __80__CSDeviceBlockViewController__disableFindMyInContext_withWipeToken_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __80__CSDeviceBlockViewController__disableFindMyInContext_withWipeToken_completion___block_invoke_3;
    v12 = &unk_27838C010;
    v13 = v2;
    v14 = *(a1 + 40);
    v3 = v2;
    v4 = MEMORY[0x223D698D0](&v9);
    v5 = *(a1 + 32);
    v6 = *(v5 + 1112);
    *(v5 + 1112) = v4;

    [*(a1 + 32) _cancelPendingActionAfterDelay:{10.0, v9, v10, v11, v12, v13}];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);

    [v8 _eraseDeviceWithCompletion:v7];
  }
}

void __80__CSDeviceBlockViewController__disableFindMyInContext_withWipeToken_completion___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);

    [v4 _eraseDeviceWithCompletion:v3];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSDeviceBlockEraseErrorDomain" code:1 userInfo:0];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)_eraseDeviceWithCompletion:(id)completion
{
  v4 = MEMORY[0x277D072B0];
  completionCopy = completion;
  v8 = objc_alloc_init(v4);
  [v8 setHideProgress:0];
  [v8 setEraseDataPlan:self->_shouldEraseDataPlan];
  v6 = [objc_alloc(MEMORY[0x277D072B8]) initWithMode:4 options:v8 reason:@"BlockedDeviceUserErase"];
  mEMORY[0x277D072C0] = [MEMORY[0x277D072C0] sharedInstance];
  [mEMORY[0x277D072C0] resetWithRequest:v6 completion:completionCopy];
}

- (void)_cancelPendingActionAfterDelay:(double)delay
{
  v4 = dispatch_time(0, (delay * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__CSDeviceBlockViewController__cancelPendingActionAfterDelay___block_invoke;
  block[3] = &unk_27838B770;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __62__CSDeviceBlockViewController__cancelPendingActionAfterDelay___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1112);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
    v3 = *(a1 + 32);
    v4 = *(v3 + 1112);
    *(v3 + 1112) = 0;
  }
}

- (id)_obfuscateUsername:(id)username
{
  usernameCopy = username;
  v4 = [usernameCopy rangeOfString:@"@"] - 1;
  v5 = [&stru_28302FDA0 stringByPaddingToLength:4 withString:@"*" startingAtIndex:0];
  v6 = [usernameCopy stringByReplacingCharactersInRange:1 withString:{v4, v5}];

  return v6;
}

- (BOOL)_shouldShowUnblockDeviceButton
{
  _unblockPolicy = [(CSDeviceBlockViewController *)self _unblockPolicy];
  canUnblockDevice = [_unblockPolicy canUnblockDevice];

  return canUnblockDevice;
}

- (id)_unblockPolicy
{
  v3 = [CSDeviceUnblockPolicy alloc];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__CSDeviceBlockViewController__unblockPolicy__block_invoke;
  v7[3] = &unk_27838D7E0;
  v7[4] = self;
  v4 = __45__CSDeviceBlockViewController__unblockPolicy__block_invoke(v7);
  v5 = [(CSDeviceUnblockPolicy *)v3 initWithEnvironment:v4];

  return v5;
}

CSDeviceUnblockPolicyEnvironment *__45__CSDeviceBlockViewController__unblockPolicy__block_invoke(uint64_t a1)
{
  v2 = [CSDeviceUnblockPolicyEnvironment alloc];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__CSDeviceBlockViewController__unblockPolicy__block_invoke_2;
  v5[3] = &unk_27838B668;
  v5[4] = *(a1 + 32);
  v3 = [(CSDeviceUnblockPolicyEnvironment *)v2 initWithBuilder:v5];

  return v3;
}

void __45__CSDeviceBlockViewController__unblockPolicy__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setIsDeviceInternetConnectionActive:*(*(a1 + 32) + 1138)];
  [v4 setIsUserFindMyAccountPresent:*(*(a1 + 32) + 1160) != 0];
  if ([*(*(a1 + 32) + 1096) isUserRequestedEraseEnabled])
  {
    v3 = 1;
  }

  else
  {
    v3 = [*(*(a1 + 32) + 1104) alwaysEnableUserRequestedErase];
  }

  [v4 setIsUserRequestedEraseEnabled:v3];
  [v4 setIsPasscodeGracePeriodUsable:{objc_msgSend(*(*(a1 + 32) + 1088), "canStartRecovery")}];
}

- (void)initWithDeviceBlockStatusProvider:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAAUIDeviceLocatorStateDidChangeNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"CSDeviceBlockViewController.m" lineNumber:41 description:{@"%s", dlerror()}];

  __break(1u);
}

void __44__CSDeviceBlockViewController__attemptErase__block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_6(&dword_21EB05000, v2, v3, "Failed attempt to disable FindMy with error: %@", v4, v5, v6, v7, v8);
}

void __47__CSDeviceBlockViewController__attemptRecovery__block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_21EB05000, v0, OS_LOG_TYPE_ERROR, "Failed to recover passcode with error: %@", v1, 0xCu);
}

void __61__CSDeviceBlockViewController__getUserAccountWithCompletion___block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_6(&dword_21EB05000, v2, v3, "Error while getting primary Apple account: %@", v4, v5, v6, v7, v8);
}

void __87__CSDeviceBlockViewController__performFMIPAuthenticationForContext_account_completion___block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_6(&dword_21EB05000, v2, v3, "Request to authenticate FindMy IP failed with error: %@", v4, v5, v6, v7, v8);
}

@end