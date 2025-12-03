@interface GKServiceViewController
- (GKServiceViewController)init;
- (UIViewController)privateViewController;
- (void)_addDoneButtonToViewController:(id)controller;
- (void)_startObservingChangesToProperties;
- (void)_stopObservingChangesToProperties;
- (void)cancelServiceViewController;
- (void)constructPrivateViewController;
- (void)dashboardDidChangeToLeaderboardTimeScope:(int64_t)scope;
- (void)dashboardDidChangeToViewState:(int64_t)state;
- (void)dealloc;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)finishAndPlayChallenge:(id)challenge;
- (void)finishWithTurnBasedMatch:(id)match;
- (void)nudge;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performSelectorOnHostController:(SEL)controller;
- (void)performSelectorOnHostController:(SEL)controller withObject:(id)object;
- (void)performSelectorOnHostController:(SEL)controller withObject:(id)object withObject:(id)withObject;
- (void)presentInitialViewController:(id)controller;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)quitTurnBasedMatch:(id)match;
- (void)remoteViewControllerDidCancel;
- (void)remoteViewControllerDidFinish;
- (void)remoteViewControllerIsCanceling;
- (void)remoteViewControllerIsFinishing;
- (void)requestDashboardLogoImageWithHandler:(id)handler;
- (void)requestImagesForLeaderboardSetsWithHandler:(id)handler;
- (void)requestImagesForLeaderboardsInSet:(id)set handler:(id)handler;
- (void)resetPrivateViewController;
- (void)serviceViewControllerCreated:(id)created;
- (void)setInitialState:(id)state withReply:(id)reply;
- (void)setValue:(id)value forKeyPath:(id)path withReply:(id)reply;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation GKServiceViewController

- (GKServiceViewController)init
{
  v8.receiver = self;
  v8.super_class = GKServiceViewController;
  v2 = [(GKNavigationController *)&v8 init];
  if (v2)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      [(GKServiceViewController *)v2 setModalPresentationStyle:16];
      mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
      [mEMORY[0x277D0C8C8] formSheetSize];
      [(GKServiceViewController *)v2 setFormSheetSize:?];

      *MEMORY[0x277D0C8F0] = 0;
    }

    v2->_alwaysShowDoneButton = 1;
    [(GKServiceViewController *)v2 _startObservingChangesToProperties];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_serviceViewControllerCreated_ name:@"GKServiceViewControllerCreatedNotification" object:0];
    objc_storeStrong(&GKServiceInterfaceController, v2);
  }

  return v2;
}

- (void)dealloc
{
  [(GKServiceViewController *)self _stopObservingChangesToProperties];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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

  _remoteViewControllerProxy = [(GKServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy remoteViewControllerIsFinishing];
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

  _remoteViewControllerProxy = [(GKServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy remoteViewControllerIsCanceling];
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

- (void)setValue:(id)value forKeyPath:(id)path withReply:(id)reply
{
  valueCopy = value;
  pathCopy = path;
  replyCopy = reply;
  [(GKServiceViewController *)self setValue:valueCopy forKeyPath:pathCopy];
  if (!*MEMORY[0x277D0C2A0])
  {
    v11 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [GKServiceViewController setValue:forKeyPath:withReply:];
    if (!replyCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (replyCopy)
  {
LABEL_5:
    replyCopy[2](replyCopy, 1);
  }

LABEL_6:
}

- (void)setInitialState:(id)state withReply:(id)reply
{
  v20[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  replyCopy = reply;
  v8 = [stateCopy objectForKey:@"LocalPlayer"];
  v9 = [stateCopy objectForKey:@"StatusBarHeight"];
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
    localPlayer = [MEMORY[0x277D0C138] localPlayer];
    [localPlayer updateFromLocalPlayer:v8];
  }

LABEL_8:
  v14 = [stateCopy objectForKeyedSubscript:@"HostPID"];
  -[GKServiceViewController setHostPID:](self, "setHostPID:", [v14 integerValue]);

  daemonProxy = [(GKServiceViewController *)self daemonProxy];
  [daemonProxy setHostPID:{-[GKServiceViewController hostPID](self, "hostPID")}];

  if (!self->_privateViewController && [(GKServiceViewController *)self isViewLoaded])
  {
    [(GKServiceViewController *)self constructPrivateViewController];
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, 1);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v19 = @"GKServiceViewControllerNewHostPIDKey";
  v17 = [MEMORY[0x277CCABB0] numberWithInt:{-[GKServiceViewController hostPID](self, "hostPID")}];
  v20[0] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [defaultCenter postNotificationName:@"GKServiceViewControllerCreatedNotification" object:self userInfo:v18];
}

- (void)serviceViewControllerCreated:(id)created
{
  userInfo = [created userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"GKServiceViewControllerNewHostPIDKey"];
  integerValue = [v5 integerValue];

  if (integerValue != [(GKServiceViewController *)self hostPID])
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

  daemonProxy = [(GKServiceViewController *)self daemonProxy];
  [daemonProxy setHostPID:{-[GKServiceViewController hostPID](self, "hostPID")}];
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

- (void)presentInitialViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [(GKServiceViewController *)self shouldAnimatePresentationForPrivateViewController:controllerCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(GKServiceViewController *)self presentViewController:controllerCopy animated:v4 completion:&__block_literal_global_21_0];
  }

  else
  {
    [(GKServiceViewController *)self pushViewController:controllerCopy animated:v4];
  }
}

- (void)constructPrivateViewController
{
  if (self->_privateViewController)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      [(GKServiceViewController *)self setModalPresentationStyle:16];
      mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
      [mEMORY[0x277D0C8C8] formSheetSize];
      [(GKServiceViewController *)self setFormSheetSize:?];
    }

    else
    {
      [(GKServiceViewController *)self setModalPresentationStyle:17];
    }

    view = [(GKServiceViewController *)self view];
    [view setClipsToBounds:0];
    mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
    systemInteractionColor = [mEMORY[0x277D0C868] systemInteractionColor];
    [view setTintColor:systemInteractionColor];

    visibleViewController = [(GKServiceViewController *)self visibleViewController];

    if (visibleViewController)
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
    view = [(UIViewController *)privateViewController view];
    [view removeFromSuperview];

    [(GKServiceViewController *)self setPrivateViewController:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
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

  daemonProxy = [(GKServiceViewController *)self daemonProxy];
  [daemonProxy setHostPID:{-[GKServiceViewController hostPID](self, "hostPID")}];

  daemonProxy2 = [(GKServiceViewController *)self daemonProxy];
  [daemonProxy2 setDataUpdateDelegate:self];

  v17.receiver = self;
  v17.super_class = GKServiceViewController;
  [(GKServiceViewController *)&v17 viewWillAppear:appearCopy];
  if ([(GKServiceViewController *)self _useBackdropViewForWindowBackground])
  {
    navigationBar = [(GKServiceViewController *)self navigationBar];
    _backdropViewLayerGroupName = [navigationBar _backdropViewLayerGroupName];

    parentViewController = [(GKServiceViewController *)self parentViewController];
    view = [parentViewController view];
    window = [view window];
    [window _gkUseAsModalSheetBackgroundWithGroupName:_backdropViewLayerGroupName];
  }

  else
  {
    _backdropViewLayerGroupName = [MEMORY[0x277D0C868] sharedPalette];
    parentViewController = [_backdropViewLayerGroupName viewBackgroundColor];
    view = [parentViewController colorWithAlphaComponent:1.0];
    window = [(GKServiceViewController *)self view];
    [window setBackgroundColor:view];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
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
  [(GKServiceViewController *)&v10 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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
  [(GKServiceViewController *)&v10 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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
  [(GKServiceViewController *)&v13 viewDidDisappear:disappearCopy];
  daemonProxy = [(GKServiceViewController *)self daemonProxy];
  dataUpdateDelegate = [daemonProxy dataUpdateDelegate];

  if (dataUpdateDelegate == self)
  {
    daemonProxy2 = [(GKServiceViewController *)self daemonProxy];
    [daemonProxy2 setDataUpdateDelegate:0];
  }
}

- (void)finishAndPlayChallenge:(id)challenge
{
  internal = [challenge internal];
  [(GKServiceViewController *)self performSelectorOnHostController:sel_playPressedForChallenge_ withObject:internal];
}

- (void)finishWithTurnBasedMatch:(id)match
{
  internal = [match internal];
  [(GKServiceViewController *)self performSelectorOnHostController:sel_finishWithMatch_ withObject:internal];
}

- (void)quitTurnBasedMatch:(id)match
{
  internal = [match internal];
  [(GKServiceViewController *)self performSelectorOnHostController:sel_playerQuitMatch_ withObject:internal];
}

- (void)dashboardDidChangeToViewState:(int64_t)state
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  [(GKServiceViewController *)self performSelectorOnHostController:sel_setViewState_ withObject:v4];
}

- (void)dashboardDidChangeToLeaderboardTimeScope:(int64_t)scope
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:scope];
  [(GKServiceViewController *)self performSelectorOnHostController:sel_setLeaderboardTimeScope_ withObject:v4];
}

- (void)requestDashboardLogoImageWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  [(GKServiceViewController *)self performSelectorOnHostController:sel_requestDashboardLogoImageWithHandler_ withObject:v4];
}

- (void)requestImagesForLeaderboardSetsWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  [(GKServiceViewController *)self performSelectorOnHostController:sel_requestImagesForLeaderboardSetsWithHandler_ withObject:v4];
}

- (void)requestImagesForLeaderboardsInSet:(id)set handler:(id)handler
{
  setCopy = set;
  v7 = _Block_copy(handler);
  [(GKServiceViewController *)self performSelectorOnHostController:sel_requestImagesForLeaderboardsInSet_handler_ withObject:setCopy withObject:v7];
}

- (void)performSelectorOnHostController:(SEL)controller
{
  _remoteViewControllerProxy = [(GKServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy _gkPerformSelector:controller];
}

- (void)performSelectorOnHostController:(SEL)controller withObject:(id)object
{
  objectCopy = object;
  _remoteViewControllerProxy = [(GKServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy _gkPerformSelector:controller withObject:objectCopy];
}

- (void)performSelectorOnHostController:(SEL)controller withObject:(id)object withObject:(id)withObject
{
  withObjectCopy = withObject;
  objectCopy = object;
  _remoteViewControllerProxy = [(GKServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy _gkPerformSelector:controller withObject:objectCopy withObject:withObjectCopy];
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
    observedKeyPaths = [(GKServiceViewController *)self observedKeyPaths];
    v4 = [observedKeyPaths countByEnumeratingWithState:&v15 objects:v21 count:16];
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
            objc_enumerationMutation(observedKeyPaths);
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

        v6 = [observedKeyPaths countByEnumeratingWithState:&v15 objects:v21 count:16];
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
  observedKeyPaths = [(GKServiceViewController *)self observedKeyPaths];
  v4 = [observedKeyPaths countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(observedKeyPaths);
        }

        [(GKServiceViewController *)self removeObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [observedKeyPaths countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  observedKeyPaths = [(GKServiceViewController *)self observedKeyPaths];
  v9 = [observedKeyPaths containsObject:pathCopy];

  if (v9)
  {
    v10 = [(GKServiceViewController *)self valueForKeyPath:pathCopy];
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

- (void)_addDoneButtonToViewController:(id)controller
{
  controllerCopy = controller;
  if (([controllerCopy _gkServiceWantsCustomRightBarButtonItemInViewService] & 1) == 0)
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
  if ([(GKServiceViewController *)self alwaysShowDoneButton])
  {
    [(GKServiceViewController *)self _addDoneButtonToViewController:controllerCopy];
  }

  v7.receiver = self;
  v7.super_class = GKServiceViewController;
  [(GKNavigationController *)&v7 pushViewController:controllerCopy animated:animatedCopy];
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
        if ([(GKServiceViewController *)self alwaysShowDoneButton])
        {
          [(GKServiceViewController *)self _addDoneButtonToViewController:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [controllersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12.receiver = self;
  v12.super_class = GKServiceViewController;
  [(GKServiceViewController *)&v12 setViewControllers:controllersCopy animated:animatedCopy];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2A8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [(GKServiceViewController *)orientation didRotateFromInterfaceOrientation:v6, self];
  }

  v7.receiver = self;
  v7.super_class = GKServiceViewController;
  [(GKServiceViewController *)&v7 didRotateFromInterfaceOrientation:orientation];
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