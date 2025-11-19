@interface GKExtensionViewController
- (GKExtensionViewController)initWithCoder:(id)a3;
- (id)hostObjectProxy;
- (void)addDoneButtonToViewController:(id)a3;
- (void)addVisualEffectViewForView:(id)a3;
- (void)configureContentViewController;
- (void)constructContentViewController;
- (void)extensionIsCanceling;
- (void)extensionIsFinishing;
- (void)hostObjectProxy;
- (void)logOnceGameControllerUsedInGameLayer;
- (void)messageFromClient:(id)a3;
- (void)messageFromExtension:(id)a3;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4;
- (void)sendMessageToClient:(id)a3;
- (void)setInitialState:(id)a3 withReply:(id)a4;
- (void)setToDarkBackground;
- (void)setToLightBackground;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)setupVisualEffects;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation GKExtensionViewController

- (GKExtensionViewController)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = GKExtensionViewController;
  v3 = [(GKExtensionViewController *)&v8 initWithCoder:a3];
  if (v3)
  {
    GKUISetRemote();
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 1)
    {
      [(GKExtensionViewController *)v3 setModalPresentationStyle:16];
      v6 = [MEMORY[0x277D0C8C8] sharedTheme];
      [v6 formSheetSize];
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
  v3 = [(GKExtensionViewController *)self navigationBar];
  [v3 setBarStyle:0];

  v4 = [(GKExtensionViewController *)self navigationBar];
  [v4 setTranslucent:1];

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
  v3 = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
  v4 = [(GKExtensionViewController *)self effectView];
  [v4 setBackgroundEffects:v3];

  v5 = [(GKExtensionViewController *)self effectView];
  [v5 _setGroupName:@"gameLayerGroup"];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(GKExtensionViewController *)self daemonProxy];
  [v5 setDataUpdateDelegate:self];

  v27.receiver = self;
  v27.super_class = GKExtensionViewController;
  [(GKExtensionViewController *)&v27 viewWillAppear:v3];
  if ([(GKExtensionViewController *)self _useBackdropViewForWindowBackground])
  {
    [(GKExtensionViewController *)self setupVisualEffects];
    v6 = [(GKExtensionViewController *)self view];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(GKExtensionViewController *)self effectView];
    [v15 setFrame:{v8, v10, v12, v14}];

    v16 = [(GKExtensionViewController *)self effectView];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = [(GKExtensionViewController *)self parentViewController];
    v18 = [v17 view];
    v19 = [v18 window];
    v20 = [v19 rootViewController];
    v21 = [v20 view];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v24 = [(GKExtensionViewController *)self parentViewController];
      v25 = [v24 view];
      v23 = [v25 window];
    }

    [(GKExtensionViewController *)self addVisualEffectViewForView:v23];
  }

  if ([(GKExtensionViewController *)self hasInitialData])
  {
    v26 = [(GKExtensionViewController *)self contentViewController];

    if (!v26)
    {
      [(GKExtensionViewController *)self constructContentViewController];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = GKExtensionViewController;
  [(GKExtensionViewController *)&v11 viewDidAppear:a3];
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

- (void)addVisualEffectViewForView:(id)a3
{
  v4 = a3;
  v5 = [v4 viewWithTag:678];
  [v5 removeFromSuperview];

  v8 = objc_alloc_init(MEMORY[0x277D75D68]);
  v6 = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
  [v8 setBackgroundEffects:v6];

  v7 = [(GKExtensionViewController *)self effectView];
  [v7 _setGroupName:@"gameLayerGroup"];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setTag:678];
  [v4 insertSubview:v8 atIndex:0];
  [MEMORY[0x277CCAAD0] _gkInstallEdgeConstraintsForView:v8 containedWithinParentView:v4];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = GKExtensionViewController;
  [(GKExtensionViewController *)&v7 viewDidDisappear:a3];
  [(GKExtensionViewController *)self setViewControllers:MEMORY[0x277CBEBF8] animated:0];
  [(GKExtensionViewController *)self setContentViewController:0];
  v4 = [(GKExtensionViewController *)self daemonProxy];
  v5 = [v4 dataUpdateDelegate];

  if (v5 == self)
  {
    v6 = [(GKExtensionViewController *)self daemonProxy];
    [v6 setDataUpdateDelegate:0];
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = GKExtensionViewController;
  v6 = a4;
  [(GKExtensionViewController *)&v8 willTransitionToTraitCollection:a3 withTransitionCoordinator:v6];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__GKExtensionViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v7[3] = &unk_27966A690;
  v7[4] = self;
  [v6 animateAlongsideTransition:v7 completion:&__block_literal_global_52];
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

- (void)setInitialState:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"StatusBarHeightKey"];
  [v8 floatValue];
  [(GKExtensionViewController *)self setStatusBarHeight:v9];

  v10 = [v7 objectForKeyedSubscript:@"HostPIDKey"];
  -[GKExtensionViewController setHostPID:](self, "setHostPID:", [v10 integerValue]);

  v11 = [v7 objectForKeyedSubscript:@"currentGame"];
  v12 = MEMORY[0x277D0C048];
  v13 = [v11 internal];
  [v12 setCurrentGameFromInternal:v13 serverEnvironment:{objc_msgSend(v11, "environment")}];

  v14 = [MEMORY[0x277D0C138] localPlayer];
  v15 = [v7 objectForKeyedSubscript:@"localPlayer"];
  [v14 updateFromLocalPlayer:v15];

  v16 = [v7 objectForKeyedSubscript:@"RTLKey"];
  v17 = [v16 BOOLValue];
  *MEMORY[0x277D0C8E8] = v17;

  v18 = [v7 objectForKeyedSubscript:@"HostUserInterfaceIdiom"];

  -[GKExtensionViewController setHostUserInterfaceIdiom:](self, "setHostUserInterfaceIdiom:", [v18 integerValue]);
  [(GKExtensionViewController *)self hostUserInterfaceIdiom];
  GKSetHostUserInterfaceIdiom();
  v19 = [(GKExtensionViewController *)self daemonProxy];
  [v19 setHostPID:{-[GKExtensionViewController hostPID](self, "hostPID")}];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __55__GKExtensionViewController_setInitialState_withReply___block_invoke;
  v21[3] = &unk_27966A958;
  v21[4] = self;
  v22 = v6;
  v20 = v6;
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
  v3 = [MEMORY[0x277D0C048] currentGame];
  v4 = [v3 gameDescriptor];

  v5 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v6 = [v5 utilityServicePrivate];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__GKExtensionViewController_constructContentViewController__block_invoke;
  v8[3] = &unk_279669D38;
  v9 = v4;
  v7 = v4;
  [v6 willLaunchGameCenterUIForGameDescriptor:v7 completionHandler:v8];
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
  v3 = [(GKExtensionViewController *)self contentViewController];

  if (v3)
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 1)
    {
      [(GKExtensionViewController *)self setModalPresentationStyle:16];
      v6 = [MEMORY[0x277D0C8C8] sharedTheme];
      [v6 formSheetSize];
      [(GKExtensionViewController *)self setPreferredContentSize:?];
    }

    else
    {
      [(GKExtensionViewController *)self setModalPresentationStyle:17];
    }

    v7 = [(GKExtensionViewController *)self view];
    [v7 setClipsToBounds:0];
    v8 = [MEMORY[0x277D0C868] sharedPalette];
    v9 = [v8 systemInteractionColor];
    [v7 setTintColor:v9];

    if ([(GKExtensionViewController *)self alwaysShowDoneButton])
    {
      v10 = [(GKExtensionViewController *)self contentViewController];
      [(GKExtensionViewController *)self addDoneButtonToViewController:v10];
    }

    v11 = [(GKExtensionViewController *)self contentViewController];
    v13[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [(GKExtensionViewController *)self setViewControllers:v12 animated:0];
  }
}

- (void)addDoneButtonToViewController:(id)a3
{
  v9 = a3;
  if (([v9 _gkExtensionWantsCustomRightBarButtonItemInViewService] & 1) == 0)
  {
    v4 = objc_alloc(MEMORY[0x277D751E0]);
    v5 = GKGameCenterUIFrameworkBundle();
    v6 = GKGetLocalizedStringFromTableInBundle();
    v7 = [v4 initWithTitle:v6 style:2 target:self action:sel_donePressed_];
    v8 = [v9 navigationItem];
    [v8 setRightBarButtonItem:v7];
  }
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(GKExtensionViewController *)self alwaysShowDoneButton])
  {
    [(GKExtensionViewController *)self addDoneButtonToViewController:v6];
  }

  v7.receiver = self;
  v7.super_class = GKExtensionViewController;
  [(GKExtensionViewController *)&v7 pushViewController:v6 animated:v4];
}

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if ([(GKExtensionViewController *)self alwaysShowDoneButton])
        {
          [(GKExtensionViewController *)self addDoneButtonToViewController:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12.receiver = self;
  v12.super_class = GKExtensionViewController;
  [(GKExtensionViewController *)&v12 setViewControllers:v6 animated:v4];
}

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4
{
  v4 = *&a3;
  v7 = a4;
  if ([(GKExtensionViewController *)self _gkShouldRefreshContentsForDataType:v4 userInfo:?])
  {
    [(GKExtensionViewController *)self _gkRefreshContentsForDataType:v4 userInfo:v7];
  }

  if (v4 == 16)
  {
    v6 = [MEMORY[0x277D0C138] local];
    [v6 clearInMemoryCachedAvatars];
  }
}

- (id)hostObjectProxy
{
  v4 = [(GKExtensionViewController *)self extensionContext];
  v5 = [v4 _auxiliaryConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:&__block_literal_global_30];

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

- (void)sendMessageToClient:(id)a3
{
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  v4 = [(GKExtensionViewController *)self hostObjectProxy];
  [v4 messageFromExtension:v5];
}

- (void)messageFromExtension:(id)a3
{
  v4 = a3;
  v5 = [(GKExtensionViewController *)self hostObjectProxy];
  [v5 messageFromExtension:v4];
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

- (void)messageFromClient:(id)a3
{
  v4 = MEMORY[0x277CCAAC8];
  v5 = a3;
  v6 = GKExtensionProtocolSecureCodedClasses();
  v12 = 0;
  v7 = [v4 unarchivedObjectOfClasses:v6 fromData:v5 error:&v12];

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
  v11 = [v10 integerValue];

  switch(v11)
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GKExtensionViewController.m" lineNumber:368 description:@"GKExtensionContext remote object proxy is nil!"];
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