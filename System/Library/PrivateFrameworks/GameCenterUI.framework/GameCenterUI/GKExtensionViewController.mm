@interface GKExtensionViewController
- (GKExtensionViewController)initWithCoder:(id)coder;
- (id)hostObjectProxy;
- (void)addDoneButtonToViewController:(id)controller;
- (void)addVisualEffectViewForView:(id)view;
- (void)configureContentViewController;
- (void)constructContentViewController;
- (void)extensionIsCanceling;
- (void)extensionIsFinishing;
- (void)hostObjectProxy;
- (void)logOnceGameControllerUsedInGameLayer;
- (void)messageFromClient:(id)client;
- (void)messageFromExtension:(id)extension;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
- (void)sendMessageToClient:(id)client;
- (void)setInitialState:(id)state withReply:(id)reply;
- (void)setToDarkBackground;
- (void)setToLightBackground;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)setupVisualEffects;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation GKExtensionViewController

- (GKExtensionViewController)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = GKExtensionViewController;
  v3 = [(GKExtensionViewController *)&v8 initWithCoder:coder];
  if (v3)
  {
    GKUISetRemote();
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      [(GKExtensionViewController *)v3 setModalPresentationStyle:16];
      mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
      [mEMORY[0x277D0C8C8] formSheetSize];
      [(GKExtensionViewController *)v3 setPreferredContentSize:?];

      *MEMORY[0x277D0C8F0] = 0;
    }

    else
    {
      [(GKExtensionViewController *)v3 setModalPresentationStyle:17];
    }

    v3->_alwaysShowDoneButton = 1;
    v3->_adjustTopConstraint = 1;
    [(GKExtensionViewController *)v3 _setClipUnderlapWhileTransitioning:1];
    [(GKExtensionViewController *)v3 _setPositionBarsExclusivelyWithSafeArea:1];
  }

  return v3;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = GKExtensionViewController;
  [(GKExtensionViewController *)&v6 viewDidLoad];
  navigationBar = [(GKExtensionViewController *)self navigationBar];
  [navigationBar setBarStyle:0];

  navigationBar2 = [(GKExtensionViewController *)self navigationBar];
  [navigationBar2 setTranslucent:1];

  [(GKExtensionViewController *)self setOverrideUserInterfaceStyle:2];
  if ([(GKExtensionViewController *)self _useBackdropViewForWindowBackground])
  {
    v5 = objc_alloc_init(MEMORY[0x277D75D68]);
    [(GKExtensionViewController *)self setEffectView:v5];

    [(GKExtensionViewController *)self setupVisualEffects];
  }
}

- (void)setupVisualEffects
{
  _gkGameLayerBackgroundVisualEffect = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
  effectView = [(GKExtensionViewController *)self effectView];
  [effectView setBackgroundEffects:_gkGameLayerBackgroundVisualEffect];

  effectView2 = [(GKExtensionViewController *)self effectView];
  [effectView2 _setGroupName:@"gameLayerGroup"];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  daemonProxy = [(GKExtensionViewController *)self daemonProxy];
  [daemonProxy setDataUpdateDelegate:self];

  v27.receiver = self;
  v27.super_class = GKExtensionViewController;
  [(GKExtensionViewController *)&v27 viewWillAppear:appearCopy];
  if ([(GKExtensionViewController *)self _useBackdropViewForWindowBackground])
  {
    [(GKExtensionViewController *)self setupVisualEffects];
    view = [(GKExtensionViewController *)self view];
    [view bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    effectView = [(GKExtensionViewController *)self effectView];
    [effectView setFrame:{v8, v10, v12, v14}];

    effectView2 = [(GKExtensionViewController *)self effectView];
    [effectView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    parentViewController = [(GKExtensionViewController *)self parentViewController];
    view2 = [parentViewController view];
    window = [view2 window];
    rootViewController = [window rootViewController];
    view3 = [rootViewController view];
    v22 = view3;
    if (view3)
    {
      window2 = view3;
    }

    else
    {
      parentViewController2 = [(GKExtensionViewController *)self parentViewController];
      view4 = [parentViewController2 view];
      window2 = [view4 window];
    }

    [(GKExtensionViewController *)self addVisualEffectViewForView:window2];
  }

  if ([(GKExtensionViewController *)self hasInitialData])
  {
    contentViewController = [(GKExtensionViewController *)self contentViewController];

    if (!contentViewController)
    {
      [(GKExtensionViewController *)self constructContentViewController];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = GKExtensionViewController;
  [(GKExtensionViewController *)&v11 viewDidAppear:appear];
  v4 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = MEMORY[0x277D0C2C8];
  v7 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_24DE53000, v7, OS_LOG_TYPE_INFO, "GKExtensionViewController viewDidAppear called", v10, 2u);
  }

  [(GKExtensionViewController *)self becomeFirstResponder];
  if (!*v4)
  {
    v8 = GKOSLoggers();
  }

  v9 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_24DE53000, v9, OS_LOG_TYPE_INFO, "ControllerSupport: Focus system activated by calling becomeFirstResponder", v10, 2u);
  }
}

- (void)addVisualEffectViewForView:(id)view
{
  viewCopy = view;
  v5 = [viewCopy viewWithTag:678];
  [v5 removeFromSuperview];

  v8 = objc_alloc_init(MEMORY[0x277D75D68]);
  _gkGameLayerBackgroundVisualEffect = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
  [v8 setBackgroundEffects:_gkGameLayerBackgroundVisualEffect];

  effectView = [(GKExtensionViewController *)self effectView];
  [effectView _setGroupName:@"gameLayerGroup"];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setTag:678];
  [viewCopy insertSubview:v8 atIndex:0];
  [MEMORY[0x277CCAAD0] _gkInstallEdgeConstraintsForView:v8 containedWithinParentView:viewCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = GKExtensionViewController;
  [(GKExtensionViewController *)&v7 viewDidDisappear:disappear];
  [(GKExtensionViewController *)self setViewControllers:MEMORY[0x277CBEBF8] animated:0];
  [(GKExtensionViewController *)self setContentViewController:0];
  daemonProxy = [(GKExtensionViewController *)self daemonProxy];
  dataUpdateDelegate = [daemonProxy dataUpdateDelegate];

  if (dataUpdateDelegate == self)
  {
    daemonProxy2 = [(GKExtensionViewController *)self daemonProxy];
    [daemonProxy2 setDataUpdateDelegate:0];
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = GKExtensionViewController;
  coordinatorCopy = coordinator;
  [(GKExtensionViewController *)&v8 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinatorCopy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__GKExtensionViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v7[3] = &unk_27966A690;
  v7[4] = self;
  [coordinatorCopy animateAlongsideTransition:v7 completion:&__block_literal_global_52];
}

void __87__GKExtensionViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  Height = 0.0;
  if ([*(a1 + 32) adjustTopConstraint])
  {
    v3 = [*(a1 + 32) navigationBar];
    [v3 bounds];
    Height = CGRectGetHeight(v6);
  }

  v4 = [*(a1 + 32) effectTopConstraint];
  [v4 setConstant:Height];
}

- (void)setInitialState:(id)state withReply:(id)reply
{
  replyCopy = reply;
  stateCopy = state;
  v8 = [stateCopy objectForKeyedSubscript:@"StatusBarHeightKey"];
  [v8 floatValue];
  [(GKExtensionViewController *)self setStatusBarHeight:v9];

  v10 = [stateCopy objectForKeyedSubscript:@"HostPIDKey"];
  -[GKExtensionViewController setHostPID:](self, "setHostPID:", [v10 integerValue]);

  v11 = [stateCopy objectForKeyedSubscript:@"currentGame"];
  v12 = MEMORY[0x277D0C048];
  internal = [v11 internal];
  [v12 setCurrentGameFromInternal:internal serverEnvironment:{objc_msgSend(v11, "environment")}];

  localPlayer = [MEMORY[0x277D0C138] localPlayer];
  v15 = [stateCopy objectForKeyedSubscript:@"localPlayer"];
  [localPlayer updateFromLocalPlayer:v15];

  v16 = [stateCopy objectForKeyedSubscript:@"RTLKey"];
  bOOLValue = [v16 BOOLValue];
  *MEMORY[0x277D0C8E8] = bOOLValue;

  v18 = [stateCopy objectForKeyedSubscript:@"HostUserInterfaceIdiom"];

  -[GKExtensionViewController setHostUserInterfaceIdiom:](self, "setHostUserInterfaceIdiom:", [v18 integerValue]);
  [(GKExtensionViewController *)self hostUserInterfaceIdiom];
  GKSetHostUserInterfaceIdiom();
  daemonProxy = [(GKExtensionViewController *)self daemonProxy];
  [daemonProxy setHostPID:{-[GKExtensionViewController hostPID](self, "hostPID")}];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __55__GKExtensionViewController_setInitialState_withReply___block_invoke;
  v21[3] = &unk_27966A958;
  v21[4] = self;
  v22 = replyCopy;
  v20 = replyCopy;
  dispatch_async(MEMORY[0x277D85CD0], v21);
}

uint64_t __55__GKExtensionViewController_setInitialState_withReply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasInitialData:1];
  v2 = [*(a1 + 32) contentViewController];
  if (v2)
  {
  }

  else if ([*(a1 + 32) isViewLoaded])
  {
    [*(a1 + 32) constructContentViewController];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)constructContentViewController
{
  currentGame = [MEMORY[0x277D0C048] currentGame];
  gameDescriptor = [currentGame gameDescriptor];

  proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  utilityServicePrivate = [proxyForLocalPlayer utilityServicePrivate];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__GKExtensionViewController_constructContentViewController__block_invoke;
  v8[3] = &unk_279669D38;
  v9 = gameDescriptor;
  v7 = gameDescriptor;
  [utilityServicePrivate willLaunchGameCenterUIForGameDescriptor:v7 completionHandler:v8];
  [(GKExtensionViewController *)self configureContentViewController];
}

void __59__GKExtensionViewController_constructContentViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D0C2A0];
  v5 = *MEMORY[0x277D0C2A0];
  if (v3)
  {
    if (!v5)
    {
      v6 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __59__GKExtensionViewController_constructContentViewController__block_invoke_cold_1();
    }
  }

  else
  {
    if (!v5)
    {
      v7 = GKOSLoggers();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __59__GKExtensionViewController_constructContentViewController__block_invoke_cold_2(a1, v5);
    }
  }
}

- (void)configureContentViewController
{
  v13[1] = *MEMORY[0x277D85DE8];
  contentViewController = [(GKExtensionViewController *)self contentViewController];

  if (contentViewController)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      [(GKExtensionViewController *)self setModalPresentationStyle:16];
      mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
      [mEMORY[0x277D0C8C8] formSheetSize];
      [(GKExtensionViewController *)self setPreferredContentSize:?];
    }

    else
    {
      [(GKExtensionViewController *)self setModalPresentationStyle:17];
    }

    view = [(GKExtensionViewController *)self view];
    [view setClipsToBounds:0];
    mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
    systemInteractionColor = [mEMORY[0x277D0C868] systemInteractionColor];
    [view setTintColor:systemInteractionColor];

    if ([(GKExtensionViewController *)self alwaysShowDoneButton])
    {
      contentViewController2 = [(GKExtensionViewController *)self contentViewController];
      [(GKExtensionViewController *)self addDoneButtonToViewController:contentViewController2];
    }

    contentViewController3 = [(GKExtensionViewController *)self contentViewController];
    v13[0] = contentViewController3;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [(GKExtensionViewController *)self setViewControllers:v12 animated:0];
  }
}

- (void)addDoneButtonToViewController:(id)controller
{
  controllerCopy = controller;
  if (([controllerCopy _gkExtensionWantsCustomRightBarButtonItemInViewService] & 1) == 0)
  {
    v4 = objc_alloc(MEMORY[0x277D751E0]);
    v5 = GKGameCenterUIFrameworkBundle();
    v6 = GKGetLocalizedStringFromTableInBundle();
    v7 = [v4 initWithTitle:v6 style:2 target:self action:sel_donePressed_];
    navigationItem = [controllerCopy navigationItem];
    [navigationItem setRightBarButtonItem:v7];
  }
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if ([(GKExtensionViewController *)self alwaysShowDoneButton])
  {
    [(GKExtensionViewController *)self addDoneButtonToViewController:controllerCopy];
  }

  v7.receiver = self;
  v7.super_class = GKExtensionViewController;
  [(GKExtensionViewController *)&v7 pushViewController:controllerCopy animated:animatedCopy];
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  v18 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [controllersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(controllersCopy);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if ([(GKExtensionViewController *)self alwaysShowDoneButton])
        {
          [(GKExtensionViewController *)self addDoneButtonToViewController:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [controllersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12.receiver = self;
  v12.super_class = GKExtensionViewController;
  [(GKExtensionViewController *)&v12 setViewControllers:controllersCopy animated:animatedCopy];
}

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  v4 = *&type;
  infoCopy = info;
  if ([(GKExtensionViewController *)self _gkShouldRefreshContentsForDataType:v4 userInfo:?])
  {
    [(GKExtensionViewController *)self _gkRefreshContentsForDataType:v4 userInfo:infoCopy];
  }

  if (v4 == 16)
  {
    local = [MEMORY[0x277D0C138] local];
    [local clearInMemoryCachedAvatars];
  }
}

- (id)hostObjectProxy
{
  extensionContext = [(GKExtensionViewController *)self extensionContext];
  _auxiliaryConnection = [extensionContext _auxiliaryConnection];
  v6 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_30];

  if (!v6)
  {
    [(GKExtensionViewController *)a2 hostObjectProxy];
  }

  return v6;
}

void __44__GKExtensionViewController_hostObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  v4 = *MEMORY[0x277D0C2A8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    __44__GKExtensionViewController_hostObjectProxy__block_invoke_cold_1(v4, v2);
  }
}

- (void)sendMessageToClient:(id)client
{
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:client requiringSecureCoding:1 error:0];
  hostObjectProxy = [(GKExtensionViewController *)self hostObjectProxy];
  [hostObjectProxy messageFromExtension:v5];
}

- (void)messageFromExtension:(id)extension
{
  extensionCopy = extension;
  hostObjectProxy = [(GKExtensionViewController *)self hostObjectProxy];
  [hostObjectProxy messageFromExtension:extensionCopy];
}

- (void)extensionIsCanceling
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"MessageCommandKey";
  v5[0] = &unk_286189648;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [(GKExtensionViewController *)self sendMessageToClient:v3];
}

- (void)extensionIsFinishing
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"MessageCommandKey";
  v5[0] = &unk_286189660;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [(GKExtensionViewController *)self sendMessageToClient:v3];
}

- (void)messageFromClient:(id)client
{
  v4 = MEMORY[0x277CCAAC8];
  clientCopy = client;
  v6 = GKExtensionProtocolSecureCodedClasses();
  v12 = 0;
  v7 = [v4 unarchivedObjectOfClasses:v6 fromData:clientCopy error:&v12];

  v8 = v12;
  if (v8)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [GKExtensionViewController messageFromClient:];
    }
  }

  v10 = [v7 objectForKeyedSubscript:@"MessageCommandKey"];
  integerValue = [v10 integerValue];

  switch(integerValue)
  {
    case 47:
      [(GKExtensionViewController *)self clientWillTerminate];
      break;
    case 4:
      [(GKExtensionViewController *)self clientDidCancel];
      break;
    case 3:
      [(GKExtensionViewController *)self clientDidFinish];
      break;
  }
}

- (void)logOnceGameControllerUsedInGameLayer
{
  if (logOnceGameControllerUsedInGameLayer_onceToken_0 != -1)
  {
    [GKExtensionViewController logOnceGameControllerUsedInGameLayer];
  }
}

void __65__GKExtensionViewController_logOnceGameControllerUsedInGameLayer__block_invoke()
{
  v4 = [MEMORY[0x277D0C1F8] reporter];
  v0 = *MEMORY[0x277D0BE68];
  v1 = *MEMORY[0x277D0BED0];
  v2 = [MEMORY[0x277D0C048] currentGame];
  v3 = [v2 bundleIdentifier];
  [v4 reportEvent:v0 type:v1 bundleID:v3];
}

- (void)setToLightBackground
{
  v3 = [MEMORY[0x277D75210] effectWithStyle:0];
  [(UIVisualEffectView *)self->_effectView setEffect:v3];
}

- (void)setToDarkBackground
{
  v3 = [MEMORY[0x277D75210] effectWithStyle:2];
  [(UIVisualEffectView *)self->_effectView setEffect:v3];
}

void __59__GKExtensionViewController_constructContentViewController__block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_24DE53000, v0, OS_LOG_TYPE_ERROR, "Failed to notify daemon that UI will launch: %@", v1, 0xCu);
}

void __59__GKExtensionViewController_constructContentViewController__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_24DE53000, a2, OS_LOG_TYPE_DEBUG, "Notified utility service that UI is about to launch for game: %@", &v3, 0xCu);
}

- (void)hostObjectProxy
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GKExtensionViewController.m" lineNumber:368 description:@"GKExtensionContext remote object proxy is nil!"];
}

void __44__GKExtensionViewController_hostObjectProxy__block_invoke_cold_1(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_24DE53000, v3, OS_LOG_TYPE_DEBUG, "error calling host - %@", v5, 0xCu);
}

- (void)messageFromClient:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_24DE53000, v0, OS_LOG_TYPE_ERROR, "error while decoding messageFromClient archive in GKExtensionViewController:%@", v1, 0xCu);
}

@end