@interface DSNavigationController
+ (void)initialize;
- (BOOL)isDetailControllerClass:(Class)class;
- (BOOL)isInFamiliarLocation;
- (BOOL)requiresAuthForEntry;
- (BOOL)shouldFinishFlow;
- (Class)topViewControllerType;
- (DSNavigationController)init;
- (NSString)entryMethod;
- (id)deepLinkForCurrentFlowAndPane;
- (id)flowTypeForAnalytics;
- (id)initStartingWithBlockingPanes:(id)panes;
- (id)initStartingWithDeviceAccess;
- (id)initStartingWithEmergencyReset;
- (id)initStartingWithMangeSharing;
- (id)initStartingWithURL:(id)l;
- (id)paneBeforePane:(id)pane;
- (id)paneInstanceForType:(Class)type;
- (void)_pushWelcomeControllerAsTopView;
- (void)_setupRatchetObserver;
- (void)authToReturnToSafetyCheck;
- (void)cancel;
- (void)dealloc;
- (void)destroyConnectedWindowScene;
- (void)didEnterBackground:(id)background;
- (void)displayNetworkError;
- (void)exitFlowForRatchetWait;
- (void)finishFlow;
- (void)goToCustomizeSharing;
- (void)hideNetworkError;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)popToPreviousPane:(id)pane;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)pushNextPane;
- (void)pushPaneAfterPaneType:(Class)type;
- (void)pushPaneType:(Class)type loadRemoteUI:(BOOL)i;
- (void)pushPaneWithController:(id)controller paneType:(Class)type shouldShow:(BOOL)show;
- (void)quickExit;
- (void)ratchetStateDidChange:(id)change;
- (void)resetRemoteUI;
- (void)rightNavButtonTapped;
- (void)sendSummaryAnalyticsWithEventName:(id)name;
- (void)sendSummaryAnalyticsWithQuickExit:(BOOL)exit finalScreen:(BOOL)screen;
- (void)setNavigationOrderAndChapters;
- (void)setupCancelButtonWithController:(id)controller;
- (void)setupChapterIndicatorWithController:(id)controller;
- (void)setupConnectionError;
- (void)setupQuickExitButtonWithController:(id)controller;
- (void)startFlowWithType:(int64_t)type;
- (void)startWithPanes:(id)panes;
- (void)startWithURL:(id)l;
- (void)updateCurrentChapterWithPaneType:(Class)type;
- (void)updateDaemonModelForCurrentPane;
- (void)updateReachabilityState:(id)state;
- (void)viewDidLoad;
- (void)willEnterForeground:(id)foreground;
- (void)willResignActive:(id)active;
@end

@implementation DSNavigationController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = os_log_create("com.apple.DigitalSeparation", "DSNavigationController");
    v3 = DSLog_15;
    DSLog_15 = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

- (DSNavigationController)init
{
  v34.receiver = self;
  v34.super_class = DSNavigationController;
  v2 = [(DSNavigationController *)&v34 init];
  if (v2)
  {
    v3 = DSLog_15;
    if (os_log_type_enabled(DSLog_15, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_248C7E000, v3, OS_LOG_TYPE_INFO, "Initializing DSNavigationController", buf, 2u);
    }

    v4 = objc_alloc_init(DSNavigationManager);
    [v2 setNavigationManager:v4];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v6 = *(v2 + 205);
    *(v2 + 205) = dictionary;

    v7 = [MEMORY[0x277CBEB58] set];
    v8 = *(v2 + 206);
    *(v2 + 206) = v7;

    v9 = [MEMORY[0x277CBEB58] set];
    v10 = *(v2 + 207);
    *(v2 + 207) = v9;

    v11 = [MEMORY[0x277CBEB58] set];
    v12 = *(v2 + 208);
    *(v2 + 208) = v11;

    v13 = [MEMORY[0x277CBEB58] set];
    v14 = *(v2 + 209);
    *(v2 + 209) = v13;

    v15 = [MEMORY[0x277CBEB58] set];
    v16 = *(v2 + 210);
    *(v2 + 210) = v15;

    [v2 setCurrentChapterForAnalytics:1];
    [v2 setDelegate:v2];
    presentationController = [v2 presentationController];
    [presentationController setDelegate:v2];

    v18 = objc_alloc_init(MEMORY[0x277CD4790]);
    v19 = *(v2 + 187);
    *(v2 + 187) = v18;

    [v2 setupConnectionError];
    v20 = dispatch_queue_create("NetworkUpdateQueue", 0);
    [v2 setWorkQueue:v20];

    if (+[DSFeatureFlags isWifiSyncRemindersEnabled])
    {
      v21 = objc_alloc_init(MEMORY[0x277D05490]);
      [v2 setDaemonProxy:v21];
    }

    v22 = nw_path_monitor_create();
    v23 = *(v2 + 201);
    *(v2 + 201) = v22;

    objc_initWeak(buf, v2);
    pathMonitor = [v2 pathMonitor];
    update_handler[0] = MEMORY[0x277D85DD0];
    update_handler[1] = 3221225472;
    update_handler[2] = __30__DSNavigationController_init__block_invoke;
    update_handler[3] = &unk_278F75D58;
    objc_copyWeak(&v32, buf);
    nw_path_monitor_set_update_handler(pathMonitor, update_handler);

    pathMonitor2 = [v2 pathMonitor];
    workQueue = [v2 workQueue];
    nw_path_monitor_set_queue(pathMonitor2, workQueue);

    nw_path_monitor_start(*(v2 + 201));
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_willEnterForeground_ name:*MEMORY[0x277D76758] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_didEnterBackground_ name:*MEMORY[0x277D76660] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_willResignActive_ name:*MEMORY[0x277D76768] object:0];

    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }

  return v2;
}

void __30__DSNavigationController_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateReachabilityState:v3];
}

- (void)setNavigationOrderAndChapters
{
  navigationManager = [(DSNavigationController *)self navigationManager];
  v4 = [navigationManager navigationOrderForFlowType:{-[DSNavigationController currentFlowType](self, "currentFlowType")}];
  [(DSNavigationController *)self setNavigationOrder:v4];

  navigationManager2 = [(DSNavigationController *)self navigationManager];
  v5 = [navigationManager2 navigationChaptersForFlowType:{-[DSNavigationController currentFlowType](self, "currentFlowType")}];
  [(DSNavigationController *)self setNavigationChapters:v5];
}

- (void)updateReachabilityState:(id)state
{
  stateCopy = state;
  workQueue = [(DSNavigationController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LODWORD(workQueue) = nw_path_get_status(stateCopy);
  [(DSNavigationController *)self setIsReachable:(workQueue & 0xFFFFFFFD) == 1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__DSNavigationController_updateReachabilityState___block_invoke;
  v6[3] = &unk_278F75D80;
  v6[4] = self;
  v7 = (workQueue & 0xFFFFFFFD) == 1;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __50__DSNavigationController_updateReachabilityState___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isShowingNetworkError];
  if (result)
  {
    if (*(a1 + 40) == 1)
    {
      [*(a1 + 32) hideNetworkError];
      v3 = [*(a1 + 32) topViewControllerType];
      result = objc_opt_class();
      if (v3 == result)
      {
        v4 = *(a1 + 32);

        return [v4 resetRemoteUI];
      }
    }
  }

  return result;
}

- (id)initStartingWithEmergencyReset
{
  v2 = [(DSNavigationController *)self init];
  if (v2)
  {
    [(DSNavigationController *)v2 setStartingPaneType:objc_opt_class()];
    [(DSNavigationController *)v2 setCurrentFlowType:0];
    [(DSNavigationController *)v2 setNavigationOrderAndChapters];
    if ([MEMORY[0x277D054D8] shouldShowBioRatchetFlow])
    {
      [(DSNavigationController *)v2 _setupRatchetObserver];
    }
  }

  return v2;
}

- (id)initStartingWithMangeSharing
{
  v2 = [(DSNavigationController *)self init];
  if (v2)
  {
    [(DSNavigationController *)v2 setStartingPaneType:objc_opt_class()];
    [(DSNavigationController *)v2 setCurrentFlowType:1];
    [(DSNavigationController *)v2 setNavigationOrderAndChapters];
    if ([MEMORY[0x277D054D8] shouldShowBioRatchetFlow])
    {
      [(DSNavigationController *)v2 _setupRatchetObserver];
    }
  }

  return v2;
}

- (id)initStartingWithDeviceAccess
{
  v2 = [(DSNavigationController *)self init];
  v3 = v2;
  if (v2)
  {
    navigationBar = [(DSNavigationController *)v2 navigationBar];
    [navigationBar setHidden:1];

    navigationItem = [(DSNavigationController *)v3 navigationItem];
    [navigationItem setHidesBackButton:1];

    [(DSNavigationController *)v3 setCurrentFlowType:2];
    [(DSNavigationController *)v3 setNavigationOrderAndChapters];
    navigationOrder = [(DSNavigationController *)v3 navigationOrder];
    -[DSNavigationController setStartingPaneType:](v3, "setStartingPaneType:", [navigationOrder firstObject]);
  }

  return v3;
}

- (id)initStartingWithBlockingPanes:(id)panes
{
  panesCopy = panes;
  v5 = [(DSNavigationController *)self init];
  if (v5)
  {
    firstObject = [panesCopy firstObject];
    [(DSNavigationController *)v5 setStartingPaneType:objc_opt_class()];

    [(DSNavigationController *)v5 setCurrentFlowType:3];
    [(DSNavigationController *)v5 setNavigationOrderAndChapters];
    [(DSNavigationController *)v5 startWithPanes:panesCopy];
  }

  return v5;
}

- (void)startWithPanes:(id)panes
{
  v20 = *MEMORY[0x277D85DE8];
  panesCopy = panes;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = panesCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        [dictionary setValue:v11 forKey:{v13, v15}];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(DSNavigationController *)self setCachedPanes:dictionary];
  v14 = *MEMORY[0x277D85DE8];
}

- (id)initStartingWithURL:(id)l
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [(DSNavigationController *)self init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  navigationManager = [(DSNavigationController *)v5 navigationManager];
  v8 = [navigationManager shouldIngestURL:lCopy];

  if (v8)
  {
    [(DSNavigationController *)v6 startWithURL:lCopy];
LABEL_4:
    v9 = v6;
    goto LABEL_8;
  }

  v10 = DSLog_15;
  if (os_log_type_enabled(DSLog_15, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = lCopy;
    _os_log_impl(&dword_248C7E000, v10, OS_LOG_TYPE_INFO, "Safety Check will not act on URL path %@, staying on landing page", &v13, 0xCu);
  }

  v9 = 0;
LABEL_8:

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)startWithURL:(id)l
{
  v14 = *MEMORY[0x277D85DE8];
  lCopy = l;
  navigationManager = [(DSNavigationController *)self navigationManager];
  v6 = [navigationManager navigationForURL:lCopy];

  v7 = DSLog_15;
  if (os_log_type_enabled(DSLog_15, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_248C7E000, v7, OS_LOG_TYPE_INFO, "Initiating new flow for deep link: %@", &v12, 0xCu);
  }

  [(DSNavigationController *)self setDeepLink:v6];
  navigationOrder = [v6 navigationOrder];
  -[DSNavigationController setStartingPaneType:](self, "setStartingPaneType:", [navigationOrder firstObject]);

  -[DSNavigationController setCurrentFlowType:](self, "setCurrentFlowType:", [v6 flowType]);
  navigationOrder2 = [v6 navigationOrder];
  [(DSNavigationController *)self setNavigationOrder:navigationOrder2];

  navigationChapters = [v6 navigationChapters];
  [(DSNavigationController *)self setNavigationChapters:navigationChapters];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = DSNavigationController;
  [(OBNavigationController *)&v3 viewDidLoad];
  [(DSNavigationController *)self pushPaneType:[(DSNavigationController *)self startingPaneType]];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76768] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D76648] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x277D76758] object:0];

  v6.receiver = self;
  v6.super_class = DSNavigationController;
  [(DSNavigationController *)&v6 dealloc];
}

- (void)setupConnectionError
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__DSNavigationController_setupConnectionError__block_invoke;
  block[3] = &unk_278F75408;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__DSNavigationController_setupConnectionError__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D75D28]);
  [*(a1 + 32) setNetworkErrorController:v2];

  v3 = [*(a1 + 32) networkErrorController];
  [v3 setModalPresentationStyle:0];

  v4 = objc_alloc(MEMORY[0x277D757A0]);
  v5 = [*(a1 + 32) networkErrorController];
  v6 = [v4 initWithRootViewController:v5];
  [*(a1 + 32) setConnectionErrorNavigation:v6];

  v7 = [*(a1 + 32) connectionErrorNavigation];
  [v7 setModalPresentationStyle:0];

  v8 = [*(a1 + 32) networkErrorController];
  v9 = [v8 navigationItem];
  v10 = objc_alloc(MEMORY[0x277D751E0]);
  v11 = DSUILocStringForKey(@"CANCEL");
  v12 = [v10 initWithTitle:v11 style:0 target:*(a1 + 32) action:sel_cancel];
  [v9 setLeftBarButtonItem:v12];

  v13 = [*(a1 + 32) networkErrorController];
  v14 = [v13 navigationItem];
  v15 = objc_alloc(MEMORY[0x277D751E0]);
  v16 = DSUILocStringForKey(@"QUICK_EXIT");
  v17 = [v15 initWithTitle:v16 style:0 target:*(a1 + 32) action:sel_quickExit];
  [v14 setRightBarButtonItem:v17];

  v33 = [MEMORY[0x277D75390] emptyProminentConfiguration];
  v18 = DSUILocStringForKey(@"NO_CONNECTION_TITLE");
  [v33 setText:v18];

  v19 = MGGetBoolAnswer();
  v20 = @"WIFI";
  if (v19)
  {
    v20 = @"WLAN";
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_NO_CONNECTION_DETAIL", v20];
  v22 = DSUILocStringForKey(v21);

  [v33 setSecondaryText:v22];
  v23 = [MEMORY[0x277D755B8] systemImageNamed:@"bolt.horizontal.fill"];
  [v33 setImage:v23];

  v24 = DSUILocStringForKey(@"GO_TO_SETTINGS");
  v25 = [v33 buttonProperties];
  v26 = [v25 configuration];
  [v26 setTitle:v24];

  v27 = [MEMORY[0x277D750C8] actionWithHandler:&__block_literal_global_19];
  v28 = [v33 buttonProperties];
  [v28 setPrimaryAction:v27];

  v29 = [*(a1 + 32) networkErrorController];
  [v29 _setContentUnavailableConfiguration:v33];

  v30 = [MEMORY[0x277D75348] systemBackgroundColor];
  v31 = [*(a1 + 32) networkErrorController];
  v32 = [v31 view];
  [v32 setBackgroundColor:v30];
}

void __46__DSNavigationController_setupConnectionError__block_invoke_2()
{
  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings"];
  [v1 openSensitiveURL:v0 withOptions:MEMORY[0x277CBEC10]];
}

- (void)displayNetworkError
{
  connectionErrorNavigation = [(DSNavigationController *)self connectionErrorNavigation];
  [(DSNavigationController *)self presentViewController:connectionErrorNavigation animated:1 completion:0];

  self->_isShowingNetworkError = 1;
}

- (void)hideNetworkError
{
  networkErrorController = [(DSNavigationController *)self networkErrorController];
  [(DSNavigationController *)self dismissViewControllerAnimated:networkErrorController != 0 completion:0];

  self->_isShowingNetworkError = 0;
}

- (void)goToCustomizeSharing
{
  presentingViewController = [(DSNavigationController *)self presentingViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__DSNavigationController_goToCustomizeSharing__block_invoke;
  v5[3] = &unk_278F75408;
  v5[4] = self;
  [presentingViewController dismissViewControllerAnimated:1 completion:v5];

  [(DSNavigationController *)self setStartingPaneType:objc_opt_class()];
  [(DSNavigationController *)self setCurrentFlowType:1];
  [(DSNavigationController *)self setNavigationOrderAndChapters];
  [(DSNavigationController *)self pushPaneType:[(DSNavigationController *)self startingPaneType]];
  presentingViewController2 = [(DSNavigationController *)self presentingViewController];
  [presentingViewController2 presentViewController:self animated:1 completion:0];
}

- (void)pushNextPane
{
  [(DSNavigationController *)self updateDaemonModelForCurrentPane];
  if ([(DSNavigationController *)self shouldFinishFlow])
  {
    [(DSNavigationController *)self finishFlow];
  }

  topViewControllerType = [(DSNavigationController *)self topViewControllerType];

  [(DSNavigationController *)self pushPaneAfterPaneType:topViewControllerType];
}

- (BOOL)shouldFinishFlow
{
  topViewControllerType = [(DSNavigationController *)self topViewControllerType];
  navigationOrder = [(DSNavigationController *)self navigationOrder];
  LOBYTE(topViewControllerType) = topViewControllerType == [navigationOrder lastObject];

  return topViewControllerType;
}

- (void)finishFlow
{
  [(DSNavigationController *)self sendSummaryAnalyticsWithQuickExit:0 finalScreen:1];
  presentingViewController = [(DSNavigationController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)exitFlowForRatchetWait
{
  presentingViewController = [(DSNavigationController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (id)paneBeforePane:(id)pane
{
  paneCopy = pane;
  viewControllers = [(DSNavigationController *)self viewControllers];
  v6 = [viewControllers indexOfObject:paneCopy];

  if (v6 - 1 >= [viewControllers count])
  {
    v7 = 0;
  }

  else
  {
    v7 = [viewControllers objectAtIndex:v6 - 1];
  }

  return v7;
}

- (void)popToPreviousPane:(id)pane
{
  paneCopy = pane;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(DSNavigationController *)self paneBeforePane:paneCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    if (objc_opt_respondsToSelector())
    {
      buttonTray = [v7 buttonTray];
      [buttonTray showButtonsAvailable];
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && ![(DSNavigationController *)self isDetailControllerClass:objc_opt_class()])
    {
      if (![v7 shouldShow])
      {
        [(DSNavigationController *)self popToPreviousPane:v7];
        goto LABEL_14;
      }

      v16.receiver = self;
      v16.super_class = DSNavigationController;
      v9 = [(DSNavigationController *)&v16 popToViewController:v7 animated:1];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && ![(DSNavigationController *)self isDetailControllerClass:objc_opt_class()])
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __44__DSNavigationController_popToPreviousPane___block_invoke;
        v12[3] = &unk_278F75DF0;
        v13 = v7;
        selfCopy = self;
        v15 = v13;
        [v15 shouldShowWithCompletion:v12];

        goto LABEL_14;
      }

      v11.receiver = self;
      v11.super_class = DSNavigationController;
      v9 = [(DSNavigationController *)&v11 popToViewController:v7 animated:1];
    }

    v10 = v9;
LABEL_14:
  }
}

void __44__DSNavigationController_popToPreviousPane___block_invoke(uint64_t a1, char a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__DSNavigationController_popToPreviousPane___block_invoke_2;
  v6[3] = &unk_278F75DC8;
  v10 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

id __44__DSNavigationController_popToPreviousPane___block_invoke_2(uint64_t a1)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  if (v4 == 1)
  {
    v10 = v1;
    v11 = v2;
    v6 = *(a1 + 32);
    v9.receiver = v5;
    v9.super_class = DSNavigationController;
    return objc_msgSendSuper2(&v9, sel_popToViewController_animated_, v6, 1);
  }

  else
  {
    v8 = *(a1 + 48);

    return [v5 popToPreviousPane:v8];
  }
}

- (void)pushPaneAfterPaneType:(Class)type
{
  navigationOrder = [(DSNavigationController *)self navigationOrder];
  v6 = [navigationOrder indexOfObject:type];
  v7 = v6 + 1;
  v8 = v6 == -1;

  if (!v8)
  {
    navigationOrder2 = [(DSNavigationController *)self navigationOrder];
    v10 = [navigationOrder2 count];

    if (v7 < v10)
    {
      navigationOrder3 = [(DSNavigationController *)self navigationOrder];
      v12 = [navigationOrder3 objectAtIndex:v7];

      if (v12)
      {

        [(DSNavigationController *)self pushPaneType:v12];
      }
    }
  }
}

- (void)pushPaneType:(Class)type loadRemoteUI:(BOOL)i
{
  iCopy = i;
  if (objc_opt_class() != type || !iCopy)
  {
    navigationManager = [(DSNavigationController *)self navigationManager];
    panesRequiringNetwork = [navigationManager panesRequiringNetwork];
    if ([panesRequiringNetwork containsObject:type])
    {
      isNetworkReachable = [(DSNavigationController *)self isNetworkReachable];

      if (!isNetworkReachable)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    v21 = [(DSNavigationController *)self paneInstanceForType:type];
    [v21 setDelegate:self];
    if (objc_opt_respondsToSelector())
    {
      shouldShow = [v21 shouldShow];
      selfCopy3 = self;
      v24 = v21;
      typeCopy2 = type;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        topViewController = [(DSNavigationController *)self topViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          topViewController2 = [(DSNavigationController *)self topViewController];
          buttonTray = [topViewController2 buttonTray];
          [buttonTray showButtonsBusy];
        }

        else
        {
          topViewController2 = 0;
        }

        objc_initWeak(&location, self);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __52__DSNavigationController_pushPaneType_loadRemoteUI___block_invoke;
        v34[3] = &unk_278F75E40;
        objc_copyWeak(v38, &location);
        v33 = topViewController2;
        v35 = v33;
        selfCopy2 = self;
        v38[1] = type;
        v37 = v21;
        [v37 shouldShowWithCompletion:v34];

        objc_destroyWeak(v38);
        objc_destroyWeak(&location);

        goto LABEL_34;
      }

      selfCopy3 = self;
      v24 = v21;
      typeCopy2 = type;
      shouldShow = 1;
    }

    [(DSNavigationController *)selfCopy3 pushPaneWithController:v24 paneType:typeCopy2 shouldShow:shouldShow];
LABEL_34:

    return;
  }

  if ([(DSNavigationController *)self isNetworkReachable])
  {
    if (_os_feature_enabled_impl())
    {
      [(DSNavigationController *)self _pushWelcomeControllerAsTopView];
      deepLink = [(DSNavigationController *)self deepLink];
      if (deepLink && (v12 = deepLink, -[DSNavigationController deepLink](self, "deepLink"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 navigationType], v13, v12, v14 == 2))
      {
        v15 = [DSRemoteUILoader alloc];
        topViewController3 = [(DSNavigationController *)self topViewController];
        deepLink2 = [(DSNavigationController *)self deepLink];
        remoteUIURL = [deepLink2 remoteUIURL];
        v19 = [(DSRemoteUILoader *)v15 initWithPresenter:topViewController3 delegate:self URL:remoteUIURL];
        remoteUILoader = self->_remoteUILoader;
        self->_remoteUILoader = v19;
      }

      else
      {
        v30 = [DSRemoteUILoader alloc];
        topViewController3 = [(DSNavigationController *)self topViewController];
        v31 = [(DSRemoteUILoader *)v30 initWithPresenter:topViewController3 delegate:self];
        deepLink2 = self->_remoteUILoader;
        self->_remoteUILoader = v31;
      }

      v32 = self->_remoteUILoader;

      [(DSRemoteUILoader *)v32 loadRemoteUI];
    }

    else
    {

      [(DSNavigationController *)self pushPaneAfterPaneType:type];
    }

    return;
  }

LABEL_14:

  [(DSNavigationController *)self displayNetworkError];
}

void __52__DSNavigationController_pushPaneType_loadRemoteUI___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__DSNavigationController_pushPaneType_loadRemoteUI___block_invoke_2;
  v8[3] = &unk_278F75E18;
  v5 = *(a1 + 32);
  v14 = a2;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v13 = *(a1 + 64);
  v11 = WeakRetained;
  v12 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t __52__DSNavigationController_pushPaneType_loadRemoteUI___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && *(a1 + 72) == 1)
  {
    v3 = [v2 buttonTray];
    [v3 showButtonsAvailable];
  }

  if (*(a1 + 72))
  {
    goto LABEL_7;
  }

  v4 = [*(a1 + 40) deepLink];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = *(a1 + 64);
  v7 = [*(a1 + 40) deepLink];
  v8 = [v7 navigationOrder];
  v9 = [v8 firstObject];

  if (v6 == v9)
  {
    v16 = DSLog_15;
    if (os_log_type_enabled(DSLog_15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 40);
      v18 = v16;
      v19 = [v17 deepLink];
      v21 = 138412290;
      v22 = v19;
      _os_log_impl(&dword_248C7E000, v18, OS_LOG_TYPE_DEFAULT, "Asked to open to entrypoint %@ but shouldShow returns false", &v21, 0xCu);
    }

    result = [*(a1 + 48) pushPaneWithController:*(a1 + 56) paneType:*(a1 + 64) shouldShow:1];
    v20 = *MEMORY[0x277D85DE8];
  }

  else
  {
LABEL_7:
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
    v14 = *MEMORY[0x277D85DE8];

    return [v10 pushPaneWithController:v11 paneType:v12 shouldShow:v13];
  }

  return result;
}

- (void)pushPaneWithController:(id)controller paneType:(Class)type shouldShow:(BOOL)show
{
  controllerCopy = controller;
  v9 = controllerCopy;
  if (show)
  {
    if ([controllerCopy conformsToProtocol:&unk_285BCA3F8])
    {
      if ([(DSNavigationController *)self isStandardFlow]|| [(DSNavigationController *)self currentFlowType]== 3)
      {
        [(DSNavigationController *)self setupQuickExitButtonWithController:v9];
      }

      [(OBNavigationController *)self pushViewController:v9 animated:1];
    }
  }

  else
  {
    [(DSNavigationController *)self pushPaneAfterPaneType:type];
  }
}

- (Class)topViewControllerType
{
  topViewController = [(DSNavigationController *)self topViewController];
  v4 = objc_opt_class();

  navigationOrder = [(DSNavigationController *)self navigationOrder];
  v6 = [navigationOrder containsObject:v4];

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    navigationManager = [(DSNavigationController *)self navigationManager];
    v7 = [navigationManager topViewControllerForUnorderedClass:v4];
  }

  return v7;
}

- (id)paneInstanceForType:(Class)type
{
  cachedPanes = [(DSNavigationController *)self cachedPanes];
  v5 = NSStringFromClass(type);
  v6 = [cachedPanes objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_alloc_init(type);
  }

  v8 = v7;

  return v8;
}

- (void)startFlowWithType:(int64_t)type
{
  topViewControllerType = [(DSNavigationController *)self topViewControllerType];
  if (topViewControllerType == objc_opt_class())
  {

    [(DSNavigationController *)self goToCustomizeSharing];
  }

  else
  {
    [(DSNavigationController *)self setCurrentFlowType:type];

    [(DSNavigationController *)self pushNextPane];
  }
}

void __68__DSNavigationController_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *(a1 + 32);
    v3 = [v11 topViewController];
    v4 = [v3 navigationItem];
    v5 = [v4 rightBarButtonItem];

    if (!v5)
    {
      v6 = objc_alloc(MEMORY[0x277D751E0]);
      v7 = DSUILocStringForKey(@"QUICK_EXIT");
      v8 = [v6 initWithTitle:v7 style:0 target:*(a1 + 40) action:sel_quickExit];
      v9 = [v11 topViewController];
      v10 = [v9 navigationItem];
      [v10 setRightBarButtonItem:v8];
    }
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  if ([(DSNavigationController *)self currentFlowType]!= 2)
  {
    navigationItem = [viewControllerCopy navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];

    if (!rightBarButtonItem)
    {
      [(DSNavigationController *)self setupQuickExitButtonWithController:viewControllerCopy];
    }

    v8 = objc_opt_class();
    if (v8 == objc_opt_class() || (v9 = objc_opt_class(), v9 == objc_opt_class()))
    {
      [(DSNavigationController *)self setupCancelButtonWithController:viewControllerCopy];
    }

    [(DSNavigationController *)self updateCurrentChapterWithPaneType:[(DSNavigationController *)self topViewControllerType]];
    [(DSNavigationController *)self setupChapterIndicatorWithController:viewControllerCopy];
  }
}

- (void)setupQuickExitButtonWithController:(id)controller
{
  v4 = MEMORY[0x277D751E0];
  controllerCopy = controller;
  v6 = [v4 alloc];
  v9 = DSUILocStringForKey(@"QUICK_EXIT");
  v7 = [v6 initWithTitle:v9 style:0 target:self action:sel_quickExit];
  navigationItem = [controllerCopy navigationItem];

  [navigationItem setRightBarButtonItem:v7];
}

- (void)setupCancelButtonWithController:(id)controller
{
  v4 = MEMORY[0x277D751E0];
  controllerCopy = controller;
  v6 = [v4 alloc];
  v9 = DSUILocStringForKey(@"CANCEL");
  v7 = [v6 initWithTitle:v9 style:0 target:self action:sel_finishFlow];
  navigationItem = [controllerCopy navigationItem];

  [navigationItem setLeftBarButtonItem:v7];
}

- (void)updateCurrentChapterWithPaneType:(Class)type
{
  navigationChapters = [(DSNavigationController *)self navigationChapters];
  v6 = NSStringFromClass(type);
  v8 = [navigationChapters valueForKey:v6];

  if (v8)
  {
    integerValue = [v8 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  [(DSNavigationController *)self setCurrentChapter:integerValue];
  if ([(DSNavigationController *)self currentChapter])
  {
    [(DSNavigationController *)self setCurrentChapterForAnalytics:[(DSNavigationController *)self currentChapter]];
  }
}

- (void)setupChapterIndicatorWithController:(id)controller
{
  controllerCopy = controller;
  navigationItem = [controllerCopy navigationItem];
  [navigationItem setBackButtonDisplayMode:1];

  currentChapter = [(DSNavigationController *)self currentChapter];
  navigationItem2 = [controllerCopy navigationItem];
  v7 = navigationItem2;
  switch(currentChapter)
  {
    case 3:
      v8 = @"CHAPTER_THREE";
      goto LABEL_7;
    case 2:
      v8 = @"CHAPTER_TWO";
      goto LABEL_7;
    case 1:
      v8 = @"CHAPTER_ONE";
LABEL_7:
      v9 = DSUILocStringForKey(v8);
      [v7 setTitle:v9];

      goto LABEL_9;
  }

  [navigationItem2 setTitle:0];
LABEL_9:
}

- (void)quickExit
{
  visibleViewController = [(DSNavigationController *)self visibleViewController];
  if (objc_opt_respondsToSelector())
  {
    [visibleViewController performSelector:sel_postAnalytics];
  }

  if ([(DSNavigationController *)self currentFlowType]== 3)
  {
    presentingViewController = [(DSNavigationController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];

    [(DSNavigationController *)self setCachedPanes:0];
  }

  else
  {
    [(DSNavigationController *)self sendSummaryAnalyticsWithQuickExit:1 finalScreen:[(DSNavigationController *)self shouldFinishFlow]];
    [(DSNavigationController *)self destroyConnectedWindowScene];
  }
}

- (void)destroyConnectedWindowScene
{
  v26 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  connectedScenes = [mEMORY[0x277D75128] connectedScenes];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = connectedScenes;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v6)
  {
LABEL_11:

    goto LABEL_13;
  }

  v7 = v6;
  v8 = *v22;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v22 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v21 + 1) + 8 * v9);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    windowScene = v10;
    windows = [windowScene windows];
    v13 = [windows count];

    if (v13)
    {
      break;
    }

LABEL_9:
    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }
  }

  if (windowScene)
  {
    goto LABEL_14;
  }

LABEL_13:
  view = [(DSNavigationController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene)
  {
LABEL_14:
    _FBSScene = [windowScene _FBSScene];
    v17 = objc_alloc(MEMORY[0x277D75400]);
    v18 = [v17 initWithPreferredAnimationType:1 callbackQueue:MEMORY[0x277D85CD0] completion:&__block_literal_global_483];
    v19 = [MEMORY[0x277CBEB98] setWithObject:v18];
    [_FBSScene sendActions:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __53__DSNavigationController_destroyConnectedWindowScene__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DSLog_15;
  if (os_log_type_enabled(DSLog_15, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_248C7E000, v3, OS_LOG_TYPE_DEFAULT, "Scene destruction request completed with response: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)rightNavButtonTapped
{
  if ([(DSNavigationController *)self isStandardFlow])
  {

    [(DSNavigationController *)self quickExit];
  }

  else
  {

    [(DSNavigationController *)self cancel];
  }
}

- (void)willEnterForeground:(id)foreground
{
  deepLink = [(DSNavigationController *)self deepLink];
  if (deepLink && (v5 = deepLink, [(DSNavigationController *)self obfuscationWindow], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    v7 = DSLog_15;
    if (!os_log_type_enabled(DSLog_15, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v8 = "Skipping authentication check for URL launch";
  }

  else
  {
    if ([(DSNavigationController *)self currentFlowType]!= 3)
    {
      mEMORY[0x277CD47B0] = [MEMORY[0x277CD47B0] sharedInstance];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __46__DSNavigationController_willEnterForeground___block_invoke;
      v10[3] = &unk_278F75E88;
      v10[4] = self;
      [mEMORY[0x277CD47B0] stateWithCompletion:v10];

      return;
    }

    v7 = DSLog_15;
    if (!os_log_type_enabled(DSLog_15, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v8 = "Ignoring willEnterForeground: notification, not presenting anything";
  }

  _os_log_impl(&dword_248C7E000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
}

void __46__DSNavigationController_willEnterForeground___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 rawValue] == 2)
  {
    v3 = v6;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v4 = __46__DSNavigationController_willEnterForeground___block_invoke_2;
  }

  else
  {
    v3 = v5;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v4 = __46__DSNavigationController_willEnterForeground___block_invoke_3;
  }

  v3[2] = v4;
  v3[3] = &unk_278F75408;
  v3[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __46__DSNavigationController_willEnterForeground___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) obfuscationWindow];

  if (v2)
  {
    v3 = [*(a1 + 32) obfuscationWindow];
    [v3 setHidden:1];

    v4 = *(a1 + 32);

    [v4 setObfuscationWindow:0];
  }
}

- (void)authToReturnToSafetyCheck
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_248C7E000, a2, OS_LOG_TYPE_ERROR, "Cannot evaluate authentication policy for Safety Check, policy error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __51__DSNavigationController_authToReturnToSafetyCheck__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 obfuscationWindow];

    if (v3)
    {
      v4 = [*(a1 + 32) obfuscationWindow];
      [v4 setHidden:1];

      v5 = *(a1 + 32);

      [v5 setObfuscationWindow:0];
    }
  }
}

void __51__DSNavigationController_authToReturnToSafetyCheck__block_invoke_490(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = DSLog_15;
  if (os_log_type_enabled(DSLog_15, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v15) = a2;
    _os_log_impl(&dword_248C7E000, v7, OS_LOG_TYPE_INFO, "Asked user to auth for Safety Check when foregrounding with success: %d", buf, 8u);
  }

  if (a2)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__DSNavigationController_authToReturnToSafetyCheck__block_invoke_2;
    v13[3] = &unk_278F75408;
    v13[4] = WeakRetained;
    v8 = MEMORY[0x277D85CD0];
    v9 = v13;
LABEL_9:
    dispatch_async(v8, v9);
    goto LABEL_10;
  }

  if ([v5 code] != -4)
  {
    v10 = DSLog_15;
    if (os_log_type_enabled(DSLog_15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_248C7E000, v10, OS_LOG_TYPE_INFO, "Error authenticating for Safety Check, going back to base Preferences %@", buf, 0xCu);
    }

    v8 = MEMORY[0x277D85CD0];
    v9 = &__block_literal_global_493;
    goto LABEL_9;
  }

LABEL_10:
  if (v5)
  {
    v11 = DSLog_15;
    if (os_log_type_enabled(DSLog_15, OS_LOG_TYPE_ERROR))
    {
      __51__DSNavigationController_authToReturnToSafetyCheck__block_invoke_490_cold_1(v5, v11);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __51__DSNavigationController_authToReturnToSafetyCheck__block_invoke_491()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v1 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings"];
  v4 = *MEMORY[0x277CC1E10];
  v5[0] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v0 openSensitiveURL:v1 withOptions:v2];

  v3 = *MEMORY[0x277D85DE8];
}

void __51__DSNavigationController_authToReturnToSafetyCheck__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 obfuscationWindow];

    if (v3)
    {
      v4 = [*(a1 + 32) obfuscationWindow];
      [v4 setHidden:1];

      v5 = *(a1 + 32);

      [v5 setObfuscationWindow:0];
    }
  }
}

- (void)didEnterBackground:(id)background
{
  if (!self->_obfuscationWindow)
  {
    if ([(DSNavigationController *)self currentFlowType]== 3)
    {
      [(DSNavigationController *)self quickExit];
    }

    view = [(DSNavigationController *)self view];
    window = [view window];
    v5 = [DSObfuscationWindow showDSObfuscationWindowForApplicationWindow:window];
    obfuscationWindow = self->_obfuscationWindow;
    self->_obfuscationWindow = v5;
  }
}

- (void)willResignActive:(id)active
{
  if (+[DSFeatureFlags isWifiSyncRemindersEnabled])
  {
    [(DSNavigationController *)self updateDaemonModelForCurrentPane];
    daemonProxy = [(DSNavigationController *)self daemonProxy];
    [daemonProxy sendAggregatedSignals];
  }
}

- (void)cancel
{
  [(DSNavigationController *)self sendSummaryAnalyticsWithQuickExit:0 finalScreen:0];
  presentingViewController = [(DSNavigationController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  [(DSNavigationController *)self setCachedPanes:0];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  if ([(DSNavigationController *)self currentFlowType]!= 3)
  {
    shouldFinishFlow = [(DSNavigationController *)self shouldFinishFlow];

    [(DSNavigationController *)self sendSummaryAnalyticsWithQuickExit:0 finalScreen:shouldFinishFlow];
  }
}

- (void)sendSummaryAnalyticsWithQuickExit:(BOOL)exit finalScreen:(BOOL)screen
{
  v6 = MEMORY[0x277D85DD0];
  LOBYTE(v8) = screen;
  BYTE1(v8) = exit;
  AnalyticsSendEventLazy();
  if ([DSFeatureFlags isWifiSyncRemindersEnabled:v6])
  {
    [(DSNavigationController *)self updateDaemonModelForCurrentPane];
    daemonProxy = [(DSNavigationController *)self daemonProxy];
    [daemonProxy sendAggregatedSignals];
  }
}

id __72__DSNavigationController_sendSummaryAnalyticsWithQuickExit_finalScreen___block_invoke(uint64_t a1)
{
  v24[10] = *MEMORY[0x277D85DE8];
  v23[0] = @"numPeopleStoppedSharing";
  v2 = MEMORY[0x277CCABB0];
  v22 = [*(a1 + 32) unsharedPeople];
  v21 = [v2 numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
  v24[0] = v21;
  v23[1] = @"numSourcesStoppedSharing";
  v3 = MEMORY[0x277CCABB0];
  v20 = [*(a1 + 32) unsharedResourcesBySource];
  v19 = [v3 numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
  v24[1] = v19;
  v23[2] = @"numAppsStoppedPermissions";
  v4 = MEMORY[0x277CCABB0];
  v18 = [*(a1 + 32) unsharedApps];
  v5 = [v4 numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
  v24[2] = v5;
  v23[3] = @"numTypesStoppedPermissions";
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) unsharedPermissions];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
  v24[3] = v8;
  v23[4] = @"chapter";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "currentChapterForAnalytics")}];
  v24[4] = v9;
  v23[5] = @"flowType";
  v10 = [*(a1 + 32) flowTypeForAnalytics];
  v24[5] = v10;
  v23[6] = @"wasFinalScreen";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v24[6] = v11;
  v23[7] = @"wasQuickExit";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 41)];
  v24[7] = v12;
  v23[8] = @"wasRatchetEnabled";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D054D8], "shouldShowBioRatchetFlow")}];
  v24[8] = v13;
  v23[9] = @"wasFamiliarLocation";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isInFamiliarLocation")}];
  v24[9] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:10];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)sendSummaryAnalyticsWithEventName:(id)name
{
  nameCopy = name;
  if ([(DSNavigationController *)self deepLinkPaneType])
  {
    [(DSNavigationController *)self deepLinkPaneType];
  }

  else
  {
    [(DSNavigationController *)self topViewControllerType];
  }

  AnalyticsSendEventLazy();
}

id __60__DSNavigationController_sendSummaryAnalyticsWithEventName___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"FlowType";
  v2 = [*(a1 + 32) flowTypeForAnalytics];
  v7[1] = @"Operation";
  v8[0] = v2;
  v3 = NSStringFromClass(*(a1 + 40));
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)flowTypeForAnalytics
{
  if ([(DSNavigationController *)self currentFlowType])
  {
    v2 = @"Review";
  }

  else
  {
    v2 = @"Reset";
  }

  return v2;
}

- (void)resetRemoteUI
{
  viewControllers = [(DSNavigationController *)self viewControllers];
  v4 = [viewControllers count];

  if (v4)
  {
    v5 = 0;
    for (i = 1; ; ++i)
    {
      viewControllers2 = [(DSNavigationController *)self viewControllers];
      v15 = [viewControllers2 objectAtIndexedSubscript:v5];

      v8 = [(DSNavigationController *)self currentFlowType]? off_278F748C0 : off_278F74840;
      v9 = *v8;
      v10 = objc_opt_class();
      v5 = i;
      if (objc_opt_class() == v10)
      {
        break;
      }

      viewControllers3 = [(DSNavigationController *)self viewControllers];
      v12 = [viewControllers3 count];

      if (v12 <= v5)
      {
        return;
      }
    }

    viewControllers4 = [(DSNavigationController *)self viewControllers];
    v14 = [viewControllers4 subarrayWithRange:{0, i}];
    [(OBNavigationController *)self setViewControllers:v14];
  }
}

- (id)deepLinkForCurrentFlowAndPane
{
  navigationManager = [(DSNavigationController *)self navigationManager];
  v4 = [navigationManager deepLinkToPane:-[DSNavigationController topViewControllerType](self inFlow:{"topViewControllerType"), -[DSNavigationController currentFlowType](self, "currentFlowType")}];

  [(DSNavigationController *)self setDeepLinkPaneType:[(DSNavigationController *)self topViewControllerType]];

  return v4;
}

- (BOOL)isDetailControllerClass:(Class)class
{
  navigationManager = [(DSNavigationController *)self navigationManager];
  detailControllerPanes = [navigationManager detailControllerPanes];
  LOBYTE(class) = [detailControllerPanes containsObject:class];

  return class;
}

- (void)_pushWelcomeControllerAsTopView
{
  topViewController = [(DSNavigationController *)self topViewController];
  if (!topViewController)
  {
    if (![MEMORY[0x277D054D8] shouldShowBioRatchetFlow])
    {
      return;
    }

    currentFlowType = [(DSNavigationController *)self currentFlowType];
    v5 = off_278F74848;
    if (currentFlowType)
    {
      v5 = off_278F74950;
    }

    v6 = *v5;
    v7 = [(DSNavigationController *)self paneInstanceForType:objc_opt_class()];
    [(OBNavigationController *)self pushViewController:v7 animated:1];
    topViewController = v7;
  }
}

- (BOOL)isInFamiliarLocation
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CD4790]);
  authContext = self->_authContext;
  self->_authContext = v3;

  v5 = self->_authContext;
  v14[0] = &unk_285BB9430;
  v14[1] = &unk_285BB9448;
  v15[0] = MEMORY[0x277CBEC38];
  v15[1] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v13 = 0;
  v7 = [(LAContext *)v5 evaluatePolicy:1025 options:v6 error:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)ratchetStateDidChange:(id)change
{
  if ([change rawValue] == 1)
  {

    [(DSNavigationController *)self sendSummaryAnalyticsWithEventName:@"com.apple.DigitalSeparation.RatchetStarted"];
  }
}

- (void)_setupRatchetObserver
{
  mEMORY[0x277CD47B0] = [MEMORY[0x277CD47B0] sharedInstance];
  [mEMORY[0x277CD47B0] addObserver:self];
}

- (void)updateDaemonModelForCurrentPane
{
  v35 = *MEMORY[0x277D85DE8];
  topViewControllerType = [(DSNavigationController *)self topViewControllerType];
  if (topViewControllerType == objc_opt_class())
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    unpairedComputers = [(DSNavigationController *)self unpairedComputers];
    v5 = [unpairedComputers countByEnumeratingWithState:&v29 objects:v34 count:16];
    v6 = MEMORY[0x277D48DD8];
    if (v5)
    {
      v7 = v5;
      v8 = *v30;
      v9 = *MEMORY[0x277D48DD8];
      v10 = *MEMORY[0x277D48DE0];
      do
      {
        v11 = 0;
        do
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(unpairedComputers);
          }

          v12 = *(*(&v29 + 1) + 8 * v11);
          daemonProxy = [(DSNavigationController *)self daemonProxy];
          [daemonProxy removeSignalWithIdentifier:v12 sharingType:v9 signalType:v10];

          reviewedComputers = [(DSNavigationController *)self reviewedComputers];
          [reviewedComputers removeObject:v12];

          ++v11;
        }

        while (v7 != v11);
        v7 = [unpairedComputers countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v7);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    reviewedComputers2 = [(DSNavigationController *)self reviewedComputers];
    v16 = [reviewedComputers2 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      v19 = *v6;
      v20 = *MEMORY[0x277D48DE0];
      do
      {
        v21 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(reviewedComputers2);
          }

          v22 = *(*(&v25 + 1) + 8 * v21);
          daemonProxy2 = [(DSNavigationController *)self daemonProxy];
          [daemonProxy2 addSignalWithIdentifier:v22 sharingType:v19 signalType:v20];

          ++v21;
        }

        while (v17 != v21);
        v17 = [reviewedComputers2 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v17);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (NSString)entryMethod
{
  deepLink = [(DSNavigationController *)self deepLink];
  if (deepLink)
  {
    deepLink2 = [(DSNavigationController *)self deepLink];
    entrypoint = [deepLink2 entrypoint];
  }

  else
  {
    entrypoint = @"Default";
  }

  return entrypoint;
}

- (BOOL)requiresAuthForEntry
{
  deepLink = [(DSNavigationController *)self deepLink];
  if (deepLink)
  {
    deepLink2 = [(DSNavigationController *)self deepLink];
    flowRequiresAuth = [deepLink2 flowRequiresAuth];
  }

  else
  {
    flowRequiresAuth = 1;
  }

  return flowRequiresAuth;
}

void __51__DSNavigationController_authToReturnToSafetyCheck__block_invoke_490_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248C7E000, a2, OS_LOG_TYPE_ERROR, "Error while evaluating authentication policy for Safety Check, error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end