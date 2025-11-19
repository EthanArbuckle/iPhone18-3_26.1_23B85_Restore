@interface GKServiceViewController
- (GKServiceViewController)init;
- (UIViewController)privateViewController;
- (void)_addDoneButtonToViewController:(id)a3;
- (void)_startObservingChangesToProperties;
- (void)_stopObservingChangesToProperties;
- (void)cancelServiceViewController;
- (void)constructPrivateViewController;
- (void)dashboardDidChangeToLeaderboardTimeScope:(int64_t)a3;
- (void)dashboardDidChangeToViewState:(int64_t)a3;
- (void)dealloc;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)finishAndPlayChallenge:(id)a3;
- (void)finishWithTurnBasedMatch:(id)a3;
- (void)nudge;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performSelectorOnHostController:(SEL)a3;
- (void)performSelectorOnHostController:(SEL)a3 withObject:(id)a4;
- (void)performSelectorOnHostController:(SEL)a3 withObject:(id)a4 withObject:(id)a5;
- (void)presentInitialViewController:(id)a3;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)quitTurnBasedMatch:(id)a3;
- (void)remoteViewControllerDidCancel;
- (void)remoteViewControllerDidFinish;
- (void)remoteViewControllerIsCanceling;
- (void)remoteViewControllerIsFinishing;
- (void)requestDashboardLogoImageWithHandler:(id)a3;
- (void)requestImagesForLeaderboardSetsWithHandler:(id)a3;
- (void)requestImagesForLeaderboardsInSet:(id)a3 handler:(id)a4;
- (void)resetPrivateViewController;
- (void)serviceViewControllerCreated:(id)a3;
- (void)setInitialState:(id)a3 withReply:(id)a4;
- (void)setValue:(id)a3 forKeyPath:(id)a4 withReply:(id)a5;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation GKServiceViewController

- (GKServiceViewController)init
{
  v8.receiver = self;
  v8.super_class = GKServiceViewController;
  v2 = [(GKNavigationController *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 1)
    {
      [(GKServiceViewController *)v2 setModalPresentationStyle:16];
      v5 = [MEMORY[0x277D0C8C8] sharedTheme];
      [v5 formSheetSize];
      [(GKServiceViewController *)v2 setFormSheetSize:?];

      *MEMORY[0x277D0C8F0] = 0;
    }

    v2->_alwaysShowDoneButton = 1;
    [(GKServiceViewController *)v2 _startObservingChangesToProperties];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel_serviceViewControllerCreated_ name:@"GKServiceViewControllerCreatedNotification" object:0];
    objc_storeStrong(&GKServiceInterfaceController, v2);
  }

  return v2;
}

- (void)dealloc
{
  [(GKServiceViewController *)self _stopObservingChangesToProperties];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKServiceViewController;
  [(GKServiceViewController *)&v4 dealloc];
}

- (void)remoteViewControllerIsFinishing
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKServiceViewController remoteViewControllerIsFinishing];
  }

  v4 = [(GKServiceViewController *)self _remoteViewControllerProxy];
  [v4 remoteViewControllerIsFinishing];
}

- (void)remoteViewControllerDidFinish
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKServiceViewController remoteViewControllerDidFinish];
  }

  [(GKServiceViewController *)self dismissViewControllerAnimated:0 completion:&__block_literal_global_36];
}

- (void)remoteViewControllerIsCanceling
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKServiceViewController remoteViewControllerIsFinishing];
  }

  v4 = [(GKServiceViewController *)self _remoteViewControllerProxy];
  [v4 remoteViewControllerIsCanceling];
}

- (void)remoteViewControllerDidCancel
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKServiceViewController remoteViewControllerDidFinish];
  }

  [(GKServiceViewController *)self dismissViewControllerAnimated:0 completion:&__block_literal_global_13];
}

- (void)cancelServiceViewController
{
  if (*MEMORY[0x277D0C258] == 1)
  {
    [(GKServiceViewController *)self remoteViewControllerIsFinishing];
  }

  else
  {
    [(GKServiceViewController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_15];
  }
}

- (void)setValue:(id)a3 forKeyPath:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(GKServiceViewController *)self setValue:v8 forKeyPath:v9];
  if (!*MEMORY[0x277D0C2A0])
  {
    v11 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKServiceViewController setValue:forKeyPath:withReply:];
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v10)
  {
LABEL_5:
    v10[2](v10, 1);
  }

LABEL_6:
}

- (void)setInitialState:(id)a3 withReply:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"LocalPlayer"];
  v9 = [v6 objectForKey:@"StatusBarHeight"];
  v10 = v9;
  if (v9)
  {
    [v9 doubleValue];
    self->_statusBarHeight = v11;
  }

  if (!*MEMORY[0x277D0C2A0])
  {
    v12 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKServiceViewController setInitialState:withReply:];
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v8)
  {
LABEL_7:
    v13 = [MEMORY[0x277D0C138] localPlayer];
    [v13 updateFromLocalPlayer:v8];
  }

LABEL_8:
  v14 = [v6 objectForKeyedSubscript:@"HostPID"];
  -[GKServiceViewController setHostPID:](self, "setHostPID:", [v14 integerValue]);

  v15 = [(GKServiceViewController *)self daemonProxy];
  [v15 setHostPID:{-[GKServiceViewController hostPID](self, "hostPID")}];

  if (!self->_privateViewController && [(GKServiceViewController *)self isViewLoaded])
  {
    [(GKServiceViewController *)self constructPrivateViewController];
  }

  if (v7)
  {
    v7[2](v7, 1);
  }

  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  v19 = @"GKServiceViewControllerNewHostPIDKey";
  v17 = [MEMORY[0x277CCABB0] numberWithInt:{-[GKServiceViewController hostPID](self, "hostPID")}];
  v20[0] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [v16 postNotificationName:@"GKServiceViewControllerCreatedNotification" object:self userInfo:v18];
}

- (void)serviceViewControllerCreated:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"GKServiceViewControllerNewHostPIDKey"];
  v6 = [v5 integerValue];

  if (v6 != [(GKServiceViewController *)self hostPID])
  {

    [(GKServiceViewController *)self cancelServiceViewController];
  }
}

- (void)nudge
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKServiceViewController nudge];
  }

  v4 = [(GKServiceViewController *)self daemonProxy];
  [v4 setHostPID:{-[GKServiceViewController hostPID](self, "hostPID")}];
}

- (UIViewController)privateViewController
{
  if (!self->_privateViewController && [(GKServiceViewController *)self isViewLoaded])
  {
    [(GKServiceViewController *)self constructPrivateViewController];
  }

  privateViewController = self->_privateViewController;

  return privateViewController;
}

- (void)presentInitialViewController:(id)a3
{
  v5 = a3;
  v4 = [(GKServiceViewController *)self shouldAnimatePresentationForPrivateViewController:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(GKServiceViewController *)self presentViewController:v5 animated:v4 completion:&__block_literal_global_21_0];
  }

  else
  {
    [(GKServiceViewController *)self pushViewController:v5 animated:v4];
  }
}

- (void)constructPrivateViewController
{
  if (self->_privateViewController)
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 1)
    {
      [(GKServiceViewController *)self setModalPresentationStyle:16];
      v5 = [MEMORY[0x277D0C8C8] sharedTheme];
      [v5 formSheetSize];
      [(GKServiceViewController *)self setFormSheetSize:?];
    }

    else
    {
      [(GKServiceViewController *)self setModalPresentationStyle:17];
    }

    v10 = [(GKServiceViewController *)self view];
    [v10 setClipsToBounds:0];
    v6 = [MEMORY[0x277D0C868] sharedPalette];
    v7 = [v6 systemInteractionColor];
    [v10 setTintColor:v7];

    v8 = [(GKServiceViewController *)self visibleViewController];

    if (v8)
    {
      v9 = [MEMORY[0x277CBEA60] arrayWithObject:self->_privateViewController];
      [(GKServiceViewController *)self setViewControllers:v9 animated:0];
    }

    [(GKServiceViewController *)self presentInitialViewController:self->_privateViewController];
  }
}

- (void)resetPrivateViewController
{
  privateViewController = self->_privateViewController;
  if (privateViewController)
  {
    v4 = [(UIViewController *)privateViewController view];
    [v4 removeFromSuperview];

    [(GKServiceViewController *)self setPrivateViewController:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  v7 = MEMORY[0x277D0C2A8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKRemoteViewServiceController viewWillAppear:];
  }

  if (!*v5)
  {
    v8 = GKOSLoggers();
  }

  v9 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
  {
    [GKServiceViewController viewWillAppear:v9];
  }

  v10 = [(GKServiceViewController *)self daemonProxy];
  [v10 setHostPID:{-[GKServiceViewController hostPID](self, "hostPID")}];

  v11 = [(GKServiceViewController *)self daemonProxy];
  [v11 setDataUpdateDelegate:self];

  v17.receiver = self;
  v17.super_class = GKServiceViewController;
  [(GKServiceViewController *)&v17 viewWillAppear:v3];
  if ([(GKServiceViewController *)self _useBackdropViewForWindowBackground])
  {
    v12 = [(GKServiceViewController *)self navigationBar];
    v13 = [v12 _backdropViewLayerGroupName];

    v14 = [(GKServiceViewController *)self parentViewController];
    v15 = [v14 view];
    v16 = [v15 window];
    [v16 _gkUseAsModalSheetBackgroundWithGroupName:v13];
  }

  else
  {
    v13 = [MEMORY[0x277D0C868] sharedPalette];
    v14 = [v13 viewBackgroundColor];
    v15 = [v14 colorWithAlphaComponent:1.0];
    v16 = [(GKServiceViewController *)self view];
    [v16 setBackgroundColor:v15];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  v7 = MEMORY[0x277D0C2A8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKHostedViewController viewDidAppear:];
  }

  if (!*v5)
  {
    v8 = GKOSLoggers();
  }

  v9 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
  {
    [GKServiceViewController viewWillAppear:v9];
  }

  v10.receiver = self;
  v10.super_class = GKServiceViewController;
  [(GKServiceViewController *)&v10 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  v7 = MEMORY[0x277D0C2A8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKRemoteViewServiceController viewWillDisappear:];
  }

  if (!*v5)
  {
    v8 = GKOSLoggers();
  }

  v9 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
  {
    [GKServiceViewController viewWillAppear:v9];
  }

  v10.receiver = self;
  v10.super_class = GKServiceViewController;
  [(GKServiceViewController *)&v10 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  v7 = MEMORY[0x277D0C2A8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKRemoteViewServiceController viewDidDisappear:];
  }

  if (!*v5)
  {
    v8 = GKOSLoggers();
  }

  v9 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
  {
    [GKServiceViewController viewWillAppear:v9];
  }

  v13.receiver = self;
  v13.super_class = GKServiceViewController;
  [(GKServiceViewController *)&v13 viewDidDisappear:v3];
  v10 = [(GKServiceViewController *)self daemonProxy];
  v11 = [v10 dataUpdateDelegate];

  if (v11 == self)
  {
    v12 = [(GKServiceViewController *)self daemonProxy];
    [v12 setDataUpdateDelegate:0];
  }
}

- (void)finishAndPlayChallenge:(id)a3
{
  v4 = [a3 internal];
  [(GKServiceViewController *)self performSelectorOnHostController:sel_playPressedForChallenge_ withObject:v4];
}

- (void)finishWithTurnBasedMatch:(id)a3
{
  v4 = [a3 internal];
  [(GKServiceViewController *)self performSelectorOnHostController:sel_finishWithMatch_ withObject:v4];
}

- (void)quitTurnBasedMatch:(id)a3
{
  v4 = [a3 internal];
  [(GKServiceViewController *)self performSelectorOnHostController:sel_playerQuitMatch_ withObject:v4];
}

- (void)dashboardDidChangeToViewState:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(GKServiceViewController *)self performSelectorOnHostController:sel_setViewState_ withObject:v4];
}

- (void)dashboardDidChangeToLeaderboardTimeScope:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(GKServiceViewController *)self performSelectorOnHostController:sel_setLeaderboardTimeScope_ withObject:v4];
}

- (void)requestDashboardLogoImageWithHandler:(id)a3
{
  v4 = _Block_copy(a3);
  [(GKServiceViewController *)self performSelectorOnHostController:sel_requestDashboardLogoImageWithHandler_ withObject:v4];
}

- (void)requestImagesForLeaderboardSetsWithHandler:(id)a3
{
  v4 = _Block_copy(a3);
  [(GKServiceViewController *)self performSelectorOnHostController:sel_requestImagesForLeaderboardSetsWithHandler_ withObject:v4];
}

- (void)requestImagesForLeaderboardsInSet:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = _Block_copy(a4);
  [(GKServiceViewController *)self performSelectorOnHostController:sel_requestImagesForLeaderboardsInSet_handler_ withObject:v6 withObject:v7];
}

- (void)performSelectorOnHostController:(SEL)a3
{
  v4 = [(GKServiceViewController *)self _remoteViewControllerProxy];
  [v4 _gkPerformSelector:a3];
}

- (void)performSelectorOnHostController:(SEL)a3 withObject:(id)a4
{
  v6 = a4;
  v7 = [(GKServiceViewController *)self _remoteViewControllerProxy];
  [v7 _gkPerformSelector:a3 withObject:v6];
}

- (void)performSelectorOnHostController:(SEL)a3 withObject:(id)a4 withObject:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(GKServiceViewController *)self _remoteViewControllerProxy];
  [v10 _gkPerformSelector:a3 withObject:v9 withObject:v8];
}

- (void)_startObservingChangesToProperties
{
  v22 = *MEMORY[0x277D85DE8];
  if (![(GKServiceViewController *)self observationInfo])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = [(GKServiceViewController *)self observedKeyPaths];
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v16;
      v8 = MEMORY[0x277D0C2A0];
      v9 = MEMORY[0x277D0C2A8];
      *&v5 = 138412290;
      v14 = v5;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          [(GKServiceViewController *)self addObserver:self forKeyPath:v11 options:0 context:0, v14];
          if (!*v8)
          {
            v12 = GKOSLoggers();
          }

          v13 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = v14;
            v20 = v11;
            _os_log_debug_impl(&dword_24DE53000, v13, OS_LOG_TYPE_DEBUG, "observing keyPath %@", buf, 0xCu);
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v6);
    }
  }
}

- (void)_stopObservingChangesToProperties
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(GKServiceViewController *)self observedKeyPaths];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(GKServiceViewController *)self removeObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  v8 = [(GKServiceViewController *)self observedKeyPaths];
  v9 = [v8 containsObject:v7];

  if (v9)
  {
    v10 = [(GKServiceViewController *)self valueForKeyPath:v7];
    if (!*MEMORY[0x277D0C2A0])
    {
      v11 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
    {
      [GKServiceViewController observeValueForKeyPath:ofObject:change:context:];
    }
  }
}

- (void)_addDoneButtonToViewController:(id)a3
{
  v9 = a3;
  if (([v9 _gkServiceWantsCustomRightBarButtonItemInViewService] & 1) == 0)
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
  if ([(GKServiceViewController *)self alwaysShowDoneButton])
  {
    [(GKServiceViewController *)self _addDoneButtonToViewController:v6];
  }

  v7.receiver = self;
  v7.super_class = GKServiceViewController;
  [(GKNavigationController *)&v7 pushViewController:v6 animated:v4];
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
        if ([(GKServiceViewController *)self alwaysShowDoneButton])
        {
          [(GKServiceViewController *)self _addDoneButtonToViewController:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12.receiver = self;
  v12.super_class = GKServiceViewController;
  [(GKServiceViewController *)&v12 setViewControllers:v6 animated:v4];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2A8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [(GKServiceViewController *)a3 didRotateFromInterfaceOrientation:v6, self];
  }

  v7.receiver = self;
  v7.super_class = GKServiceViewController;
  [(GKServiceViewController *)&v7 didRotateFromInterfaceOrientation:a3];
}

- (void)setInitialState:withReply:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_24DE53000, v0, OS_LOG_TYPE_DEBUG, "setting player LP:%@", v1, 0xCu);
}

- (void)viewWillAppear:(void *)a1 .cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_2() callStackSymbols];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_3(&dword_24DE53000, v4, v5, "%@", v6, v7, v8, v9, v10);
}

- (void)didRotateFromInterfaceOrientation:(void *)a3 .cold.1(unint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 >= 5)
  {
    v4 = @"UIInterfaceOrientationPortrait";
  }

  else
  {
    v4 = off_27966CAF0[a1];
  }

  v5 = a2;
  v6 = [a3 interfaceOrientation];
  if (v6 >= 5)
  {
    v7 = @"UIInterfaceOrientationPortrait";
  }

  else
  {
    v7 = off_27966CAF0[v6];
  }

  v8 = 138412546;
  v9 = v4;
  v10 = 2112;
  v11 = v7;
  _os_log_debug_impl(&dword_24DE53000, v5, OS_LOG_TYPE_DEBUG, "rotated from %@ to %@", &v8, 0x16u);
}

@end