@interface HACCShortcutViewController
- (AXHAShortcutUpdateProtocol)delegate;
- (BOOL)_isMainStackForModule:(unint64_t)a3;
- (BOOL)_isShownInGallery;
- (BOOL)_isStandaloneHeadphoneLevels;
- (BOOL)_isStandaloneHeadphoneLevelsFromMainStackOrderArray:(id)a3;
- (BOOL)_isStandalonePMEModule;
- (BOOL)_isStandalonePMEModuleFromMainStackOrderArray:(id)a3;
- (BOOL)addPartialSeparatorAboveModule:(unint64_t)a3;
- (BOOL)isControlCenterModuleExpanded;
- (BOOL)isExpanded;
- (BOOL)shouldDisplayControlForModule:(unint64_t)a3;
- (BOOL)shouldDisplayControlForModule:(unint64_t)a3 fromModulesArray:(id)a4 mainStackOrderArrayCopy:(id)a5;
- (BOOL)shouldShowHeadphoneLevelUnavailable;
- (BOOL)showPMEExpandedOptions;
- (HACCContentViewController)expandedController;
- (HACCShortcutViewController)initWithDelegate:(id)a3 andAvailableModules:(id)a4;
- (double)moduleHeight;
- (double)preferredContentWidth;
- (id)backgroundUpdateQueue;
- (id)containerViewsForPlatterTreatment;
- (id)contentControllerForModule:(unint64_t)a3;
- (id)parentViewControllerForModule:(unint64_t)a3;
- (id)stackOrder;
- (unint64_t)_mainStackIndexForModule:(unint64_t)a3;
- (void)_logLiveListenAnalytics;
- (void)contentCategoryDidChange:(id)a3;
- (void)controlDidActivate:(id)a3;
- (void)dealloc;
- (void)mediaPlaybackDidChange:(id)a3;
- (void)mediaServerDied;
- (void)registerNotifications;
- (void)resetHeadphoneLevelModule;
- (void)routesDidChange:(id)a3;
- (void)startListeningForHeadphoneUpdates;
- (void)startListeningForHearingAidUpdates;
- (void)stopListeningForHeadphoneUpdates;
- (void)stopListeningForHearingAidUpdates;
- (void)updateAvailableControls;
- (void)updateContentViewListeners:(BOOL)a3;
- (void)updateHeight;
- (void)updateView;
- (void)updateViewForModule:(unint64_t)a3;
- (void)updateViewForProperties:(id)a3;
- (void)viewController:(id)a3 didExpand:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation HACCShortcutViewController

- (HACCShortcutViewController)initWithDelegate:(id)a3 andAvailableModules:(id)a4
{
  v6 = a3;
  v7 = a4;
  v35.receiver = self;
  v35.super_class = HACCShortcutViewController;
  v8 = [(HACCShortcutViewController *)&v35 init];
  if (v8)
  {
    objc_initWeak(&location, v8);
    v8->_bluetoothAvailable = 1;
    [(HACCShortcutViewController *)v8 setDelegate:v6];
    v9 = [MEMORY[0x277D3A1C8] sharedInstance];
    v10 = [MEMORY[0x277D12E38] sharedUtilities];
    [v10 requestCurrentRoutesWithCompletion:0];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v8 selector:sel_hearingStatusBarTapped_ name:@"SBStatusBarReturnToHearingAidNotification" object:0];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v8 selector:sel_routesDidChange_ name:*MEMORY[0x277D12DA8] object:0];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v8 selector:sel_routesDidChange_ name:*MEMORY[0x277D3A1F0] object:0];

    [(HACCShortcutViewController *)v8 registerNotifications];
    [(HACCShortcutViewController *)v8 routesDidChange:0];
    v14 = [MEMORY[0x277D12E00] sharedInstance];
    [v14 registerLoggingBlock:&__block_literal_global_2 withListener:v8];

    v15 = [MEMORY[0x277D12E00] sharedInstance];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __67__HACCShortcutViewController_initWithDelegate_andAvailableModules___block_invoke_291;
    v31[3] = &unk_2796F7408;
    v16 = v8;
    v32 = v16;
    objc_copyWeak(&v33, &location);
    [v15 registerBluetoothStateBlock:v31 withListener:v16];

    v17 = [MEMORY[0x277D12E18] sharedInstance];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __67__HACCShortcutViewController_initWithDelegate_andAvailableModules___block_invoke_3;
    v29 = &unk_2796F6D18;
    objc_copyWeak(&v30, &location);
    [v17 registerUpdateBlock:&v26 forRetrieveSelector:sel_timerEnabled withListener:v16];

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v16 selector:sel_contentCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

    v19 = [MEMORY[0x277CBEB38] dictionary];
    [(HACCShortcutViewController *)v16 setModuleToViewControllerMap:v19];

    [(HACCShortcutViewController *)v16 setAvailableModules:v7];
    v20 = objc_alloc_init(MEMORY[0x277CCAB58]);
    [v20 addIndex:0];
    [v20 addIndex:34];
    [v20 addIndex:24];
    [v20 addIndex:32];
    [v20 addIndex:23];
    [v20 addIndex:30];
    v21 = [v20 copy];
    mainStackIndexSet = v16->_mainStackIndexSet;
    v16->_mainStackIndexSet = v21;

    v23 = [(HACCShortcutViewController *)v16 stackOrder];
    mainStackOrderArray = v16->_mainStackOrderArray;
    v16->_mainStackOrderArray = v23;

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v33);

    objc_destroyWeak(&location);
  }

  return v8;
}

void __67__HACCShortcutViewController_initWithDelegate_andAvailableModules___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_252166000, v3, OS_LOG_TYPE_DEFAULT, "%@", &v4, 0xCu);
  }
}

void __67__HACCShortcutViewController_initWithDelegate_andAvailableModules___block_invoke_291(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1058);
  if (!a2)
  {
    *(v2 + 1058) = 0;
    if (!v3)
    {
      return;
    }

    goto LABEL_5;
  }

  *(v2 + 1058) = 1;
  if ((v3 & 1) == 0)
  {
LABEL_5:
    objc_copyWeak(&v4, (a1 + 40));
    AXPerformBlockOnMainThread();
    objc_destroyWeak(&v4);
  }
}

void __67__HACCShortcutViewController_initWithDelegate_andAvailableModules___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateView];
}

void __67__HACCShortcutViewController_initWithDelegate_andAvailableModules___block_invoke_3(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void __67__HACCShortcutViewController_initWithDelegate_andAvailableModules___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateView];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = HACCShortcutViewController;
  [(HACCShortcutViewController *)&v4 dealloc];
}

- (id)stackOrder
{
  v2 = MEMORY[0x277CBEB18];
  v3 = [(HACCShortcutViewController *)self availableModules];
  v4 = [v2 arrayWithArray:v3];

  if ([v4 count])
  {
    v5 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CBEB18];
    v7 = [MEMORY[0x277D12E28] sharedInstance];
    v8 = [v7 hearingControlCenterOrder];
    v5 = [v6 arrayWithArray:v8];

    v9 = [v5 indexOfObject:&unk_2864655A0];
    if (([v5 containsObject:&unk_2864655B8] & 1) == 0 && v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 insertObject:&unk_2864655B8 atIndex:v9 + 1];
    }
  }

  return v5;
}

- (void)registerNotifications
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v4 = MEMORY[0x277D26C38];
  v5 = MEMORY[0x277D26D40];
  v6 = *MEMORY[0x277D26D40];
  v14[0] = *MEMORY[0x277D26C38];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  [v3 setAttribute:v7 forKey:*MEMORY[0x277D26DD0] error:0];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *v4;
  v10 = [MEMORY[0x277D26E58] sharedAVSystemController];
  [v8 addObserver:self selector:sel_mediaPlaybackDidChange_ name:v9 object:v10];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = *v5;
  v13 = [MEMORY[0x277D26E58] sharedAVSystemController];
  [v11 addObserver:self selector:sel_mediaServerDied name:v12 object:v13];
}

- (void)mediaServerDied
{
  v3 = dispatch_time(0, 2000000000);
  v4 = [(HACCShortcutViewController *)self backgroundUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HACCShortcutViewController_mediaServerDied__block_invoke;
  block[3] = &unk_2796F6D90;
  block[4] = self;
  dispatch_after(v3, v4, block);
}

uint64_t __45__HACCShortcutViewController_mediaServerDied__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(a1 + 32)];

  v3 = *(a1 + 32);

  return [v3 registerNotifications];
}

- (void)mediaPlaybackDidChange:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = HCLogComfortSounds();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&dword_252166000, v4, OS_LOG_TYPE_DEFAULT, "CCShortcutViewController: Media playback did change %@", buf, 0xCu);
  }

  v5 = v3;
  AXPerformBlockOnMainThread();
}

uint64_t __53__HACCShortcutViewController_mediaPlaybackDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) userInfo];
  v3 = [v2 valueForKey:@"State"];
  *(*(a1 + 32) + 1056) = [v3 BOOLValue];

  v4 = *(a1 + 32);

  return [v4 updateView];
}

- (void)routesDidChange:(id)a3
{
  v4 = HCLogHearing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_252166000, v4, OS_LOG_TYPE_DEFAULT, "CCShortcutViewController: Routes changed", buf, 2u);
  }

  v5 = [MEMORY[0x277D12E00] sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__HACCShortcutViewController_routesDidChange___block_invoke;
  v6[3] = &unk_2796F6DB8;
  v6[4] = self;
  [v5 getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:v6];
}

void __46__HACCShortcutViewController_routesDidChange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [*(a1 + 32) setCurrentDeviceAddress:v6];
  [*(a1 + 32) setCurrentDevicePSEVersion:a3];
  v7 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_252166000, v7, OS_LOG_TYPE_DEFAULT, "CCShortcutViewController: Found headphone accommodations device %@, version: %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x277D12E00] sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__HACCShortcutViewController_routesDidChange___block_invoke_318;
  v10[3] = &unk_2796F6FE0;
  v10[4] = *(a1 + 32);
  [v9 getSSLSupportStateForAddress:v6 withCompletion:v10];
}

- (id)backgroundUpdateQueue
{
  if (backgroundUpdateQueue_onceToken != -1)
  {
    [HACCShortcutViewController backgroundUpdateQueue];
  }

  v3 = backgroundUpdateQueue_backgroundUpdateQueue;

  return v3;
}

void __51__HACCShortcutViewController_backgroundUpdateQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);
  v1 = dispatch_queue_create("hucc.background.queue", v0);
  v2 = backgroundUpdateQueue_backgroundUpdateQueue;
  backgroundUpdateQueue_backgroundUpdateQueue = v1;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HACCShortcutViewController;
  [(HACCShortcutViewController *)&v7 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277D759D8]);
  [v3 setShowsVerticalScrollIndicator:0];
  [v3 setShowsHorizontalScrollIndicator:0];
  [v3 setClipsToBounds:0];
  v4 = [(HACCShortcutViewController *)self view];
  [v4 addSubview:v3];

  [(HACCShortcutViewController *)self setScrollView:v3];
  v5 = objc_alloc_init(MEMORY[0x277D75A68]);
  stackView = self->_stackView;
  self->_stackView = v5;

  [(UIStackView *)self->_stackView setSpacing:12.0];
  [(UIStackView *)self->_stackView setDistribution:3];
  [(UIStackView *)self->_stackView setAxis:1];
  [v3 addSubview:self->_stackView];
}

- (void)startListeningForHearingAidUpdates
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D12E20] sharedInstance];
  v4 = [v3 pairedHearingAids];

  if ([(HACCShortcutViewController *)self listeningForHearingAidUpdates]|| !v4)
  {
    if (!v4)
    {
      v12 = HCLogHearingAids();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_252166000, v12, OS_LOG_TYPE_DEFAULT, "CCShortcutViewController: No paired Hearing Aids", buf, 2u);
      }

      [(HACCShortcutViewController *)self stopListeningForHearingAidUpdates];
    }
  }

  else
  {
    [(HACCShortcutViewController *)self setListeningForHearingAidUpdates:1];
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v21 = self;
      _os_log_impl(&dword_252166000, v5, OS_LOG_TYPE_DEFAULT, "CCShortcutViewController: Paired to Hearing Aids, Start listening for available Hearing Devices %p", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v6 = [MEMORY[0x277D12DE8] sharedInstance];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64__HACCShortcutViewController_startListeningForHearingAidUpdates__block_invoke;
    v18[3] = &unk_2796F7430;
    objc_copyWeak(&v19, buf);
    v18[4] = self;
    [v6 registerListener:self forAvailableDeviceHandler:v18];

    v7 = [MEMORY[0x277D12DE8] sharedInstance];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__HACCShortcutViewController_startListeningForHearingAidUpdates__block_invoke_330;
    v16[3] = &unk_2796F74D0;
    objc_copyWeak(&v17, buf);
    [v7 registerListener:self forPropertyUpdateHandler:v16];

    v8 = HCLogHearingAids();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_252166000, v8, OS_LOG_TYPE_DEFAULT, "CCShortcutViewController: Requesting Reachability Status", v15, 2u);
    }

    v9 = [MEMORY[0x277D12DE8] sharedInstance];
    [v9 requestHearingAidReachabilityStatus];

    AXPerformBlockOnMainThreadAfterDelay();
    v10 = [(HACCShortcutViewController *)self currentHearingDevice];
    v11 = v10;
    if (v10)
    {
      [v10 setKeepInSync:1];
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  v13 = [(HACCShortcutViewController *)self currentHearingDevice];
  v14 = v13;
  if (v13 && ([v13 didLoadRequiredProperties] & 1) == 0)
  {
    [v14 loadRequiredProperties];
  }
}

void __64__HACCShortcutViewController_startListeningForHearingAidUpdates__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastObject];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCurrentHearingDevice:v3];

  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __64__HACCShortcutViewController_startListeningForHearingAidUpdates__block_invoke_cold_1(a1, v3, v5);
  }

  [v3 loadRequiredProperties];
}

void __64__HACCShortcutViewController_startListeningForHearingAidUpdates__block_invoke_330(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained currentHearingDevice];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HACCShortcutViewController_startListeningForHearingAidUpdates__block_invoke_2;
  v7[3] = &unk_2796F74A8;
  v6 = v5;
  v8 = v6;
  objc_copyWeak(&v9, (a1 + 32));
  [v3 enumerateKeysAndObjectsInDependentOrderUsingBlock:v7];
  objc_destroyWeak(&v9);
}

void __64__HACCShortcutViewController_startListeningForHearingAidUpdates__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([*(a1 + 32) containsPeripheralWithUUID:v5])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = HCLogHearingAids();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v13 = v6;
          _os_log_impl(&dword_252166000, v7, OS_LOG_TYPE_DEFAULT, "CCShortcutViewController: Hearing Device is updated %@", buf, 0xCu);
        }

        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __64__HACCShortcutViewController_startListeningForHearingAidUpdates__block_invoke_333;
        v10[3] = &unk_2796F7458;
        v11 = *(a1 + 32);
        [v6 enumerateKeysAndObjectsUsingBlock:v10];
        objc_copyWeak(&v9, (a1 + 40));
        v8 = v6;
        AXPerformBlockOnMainThread();

        objc_destroyWeak(&v9);
      }
    }
  }
}

void __64__HACCShortcutViewController_startListeningForHearingAidUpdates__block_invoke_333(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 setValue:v5 forProperty:{objc_msgSend(a2, "unsignedLongLongValue")}];
}

void __64__HACCShortcutViewController_startListeningForHearingAidUpdates__block_invoke_2_335(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) allKeys];
  [WeakRetained updateViewForProperties:v2];
}

- (void)stopListeningForHearingAidUpdates
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(HACCShortcutViewController *)self listeningForHearingAidUpdates])
  {
    v3 = HCLogHearingAids();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&dword_252166000, v3, OS_LOG_TYPE_DEFAULT, "CCShortcutViewController: Stop listening for Hearing Aids updates %@", &v8, 0xCu);
    }

    v4 = [MEMORY[0x277D12DE8] sharedInstance];
    [v4 unregisterAvailableDevicesListener:self];

    v5 = [MEMORY[0x277D12DE8] sharedInstance];
    [v5 unregisterPropertyUpdateListener:self];

    v6 = [(HACCShortcutViewController *)self currentHearingDevice];
    v7 = v6;
    if (v6)
    {
      [v6 setKeepInSync:0];
    }

    [(HACCShortcutViewController *)self setListeningForHearingAidUpdates:0];
    [(HACCShortcutViewController *)self setCurrentHearingDevice:0];
  }
}

- (void)startListeningForHeadphoneUpdates
{
  if (![(HACCShortcutViewController *)self listeningForHeadphoneUpdates])
  {
    v3 = [MEMORY[0x277D12E20] sharedInstance];
    v4 = [v3 liveHeadphoneLevelEnabled];

    if (v4)
    {
      [(HACCShortcutViewController *)self setListeningForHeadphoneUpdates:1];
      objc_initWeak(&location, self);
      v5 = HCLogSoundMeter();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_252166000, v5, OS_LOG_TYPE_INFO, "CCShortcutViewController: Registering listener to start receiving headphone audio updates", buf, 2u);
      }

      if ([(HACCShortcutViewController *)self _isStandaloneHeadphoneLevels])
      {
        if (![(HACCShortcutViewController *)self headphoneAudioAvailable])
        {
          [(HACCShortcutViewController *)self resetHeadphoneLevelModule];
        }
      }

      v6 = [MEMORY[0x277D12DE8] sharedInstance];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __63__HACCShortcutViewController_startListeningForHeadphoneUpdates__block_invoke;
      v7[3] = &unk_2796F74D0;
      objc_copyWeak(&v8, &location);
      [v6 registerListener:self forLiveHeadphoneLevelHandler:v7];

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __63__HACCShortcutViewController_startListeningForHeadphoneUpdates__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:*MEMORY[0x277D12DB8]];
  v5 = [v4 BOOLValue];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained headphoneAudioAvailable];

  if (v5 != v7 && v5 & 1 | !UIAccessibilityIsVoiceOverRunning())
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 setHeadphoneAudioAvailable:v5];

    objc_copyWeak(&v12, (a1 + 32));
    AXPerformBlockOnMainThread();
    objc_destroyWeak(&v12);
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 moduleToViewControllerMap];
  v11 = [v10 objectForKey:&unk_2864655B8];

  [v11 updateWithValue:v3];
}

void __63__HACCShortcutViewController_startListeningForHeadphoneUpdates__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _isStandaloneHeadphoneLevels];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v3)
  {
    [v4 resetHeadphoneLevelModule];
  }

  else
  {
    [v4 updateView];
  }
}

- (void)resetHeadphoneLevelModule
{
  v3 = [(HACCShortcutViewController *)self moduleToViewControllerMap];
  v6 = [v3 objectForKey:&unk_2864655B8];

  [v6 removeFromParentViewController];
  v4 = [v6 view];
  [v4 removeFromSuperview];

  v5 = [(HACCShortcutViewController *)self moduleToViewControllerMap];
  [v5 removeObjectForKey:&unk_2864655B8];

  [(HACCShortcutViewController *)self updateView];
}

- (void)stopListeningForHeadphoneUpdates
{
  v3 = HCLogSoundMeter();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_252166000, v3, OS_LOG_TYPE_INFO, "CCShortcutViewController: Unregistering listener to stop receiving headphone audio updates", v5, 2u);
  }

  v4 = [MEMORY[0x277D12DE8] sharedInstance];
  [v4 unregisterLiveHeadphoneLevelHandler:self];

  [(HACCShortcutViewController *)self setListeningForHeadphoneUpdates:0];
  [(HACCShortcutViewController *)self setHeadphoneAudioAvailable:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HACCShortcutViewController;
  [(HACCShortcutViewController *)&v4 viewDidAppear:a3];
  [(HACCShortcutViewController *)self updateAvailableControls];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = HACCShortcutViewController;
  [(HACCShortcutViewController *)&v6 viewWillAppear:a3];
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [HACCShortcutViewController viewWillAppear:];
  }

  v5 = [MEMORY[0x277D12E38] sharedUtilities];
  [v5 clearAudioRoutes];

  [(HACCShortcutViewController *)self startListeningForHearingAidUpdates];
  [(HACCShortcutViewController *)self startListeningForHeadphoneUpdates];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HACCShortcutViewController;
  [(HACCShortcutViewController *)&v5 viewDidDisappear:a3];
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [HACCShortcutViewController viewDidDisappear:];
  }

  if (![(HACCShortcutViewController *)self isExpanded])
  {
    [(HACCShortcutViewController *)self stopListeningForHearingAidUpdates];
    [(HACCShortcutViewController *)self stopListeningForHeadphoneUpdates];
  }

  self->_isOnOverlayWindow = 0;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HACCShortcutViewController;
  [(HACCShortcutViewController *)&v5 viewIsAppearing:a3];
  v4 = [(HACCShortcutViewController *)self view];
  [v4 setClipsToBounds:0];

  [(HACCShortcutViewController *)self updateAvailableControls];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v12.receiver = self;
  v12.super_class = HACCShortcutViewController;
  [(HACCShortcutViewController *)&v12 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(HACCShortcutViewController *)self viewDidMoveToWindow:v6 shouldAppearOrDisappear:v7];
  }

  NSClassFromString(&cfstr_Sbtransientove.isa);
  if (objc_opt_isKindOfClass())
  {
    [(HACCShortcutViewController *)self updateAvailableControls];
    [(HACCShortcutViewController *)self updateContentViewListeners:1];
    self->_isOnOverlayWindow = 1;
    v8 = HCLogHearingAids();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [HACCShortcutViewController viewDidMoveToWindow:shouldAppearOrDisappear:];
    }

    v9 = [MEMORY[0x277D12DE8] sharedInstance];
    [v9 sendMessagesPriorityHigh];
  }

  if (!v6)
  {
    [(HACCShortcutViewController *)self updateContentViewListeners:0];
    if (self->_isOnOverlayWindow)
    {
      [(HACCShortcutViewController *)self stopListeningForHearingAidUpdates];
      v10 = HCLogHearingAids();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [HACCShortcutViewController viewDidMoveToWindow:shouldAppearOrDisappear:];
      }

      v11 = [MEMORY[0x277D12DE8] sharedInstance];
      [v11 sendMessagesPriorityDefault];
    }

    self->_isOnOverlayWindow = 0;
  }
}

- (BOOL)_isShownInGallery
{
  v2 = [(HACCShortcutViewController *)self view];
  v3 = [v2 _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Sbhaddwidgetsh.isa)];
  v4 = v3 != 0;

  return v4;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HACCShortcutViewController;
  [(HACCShortcutViewController *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__HACCShortcutViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_2796F74F8;
  objc_copyWeak(&v11, &location);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__HACCShortcutViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_2796F74F8;
  objc_copyWeak(&v9, &location);
  [v7 animateAlongsideTransition:v10 completion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __81__HACCShortcutViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAvailableControls];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 updateHeight];
}

void __81__HACCShortcutViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained isExpanded];

  if ((v5 & 1) == 0)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 updateHeight];
  }

  v7 = [v3 viewControllerForKey:*MEMORY[0x277D77230]];
  v8 = [v3 viewControllerForKey:*MEMORY[0x277D77240]];

  NSClassFromString(&cfstr_Ccuimainviewco.isa);
  NSClassFromString(&cfstr_Ccuicontentmod.isa);
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
  {
    v9 = objc_loadWeakRetained((a1 + 32));
    [v9 updateContentViewListeners:1];

    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 _mainStackIndexForModule:0];

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = HCLogHearingAids();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __81__HACCShortcutViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2_cold_2();
      }

      v13 = [MEMORY[0x277D12DE8] sharedInstance];
      [v13 sendMessagesPriorityHigh];
LABEL_15:
    }
  }

  else if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
  {
    v14 = objc_loadWeakRetained((a1 + 32));
    [v14 updateContentViewListeners:0];

    v15 = objc_loadWeakRetained((a1 + 32));
    v16 = [v15 _mainStackIndexForModule:0];

    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = HCLogHearingAids();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __81__HACCShortcutViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2_cold_1();
      }

      v13 = [MEMORY[0x277D12DE8] sharedInstance];
      [v13 sendMessagesPriorityDefault];
      goto LABEL_15;
    }
  }
}

- (void)contentCategoryDidChange:(id)a3
{
  v4 = [(HACCShortcutViewController *)self moduleToViewControllerMap];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__HACCShortcutViewController_contentCategoryDidChange___block_invoke;
  v6[3] = &unk_2796F7520;
  v6[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];

  v5 = [(HACCShortcutViewController *)self moduleToViewControllerMap];
  [v5 removeAllObjects];

  [(HACCShortcutViewController *)self updateAvailableControls];
}

void __55__HACCShortcutViewController_contentCategoryDidChange___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 stackView];
  v6 = [v4 view];
  [v5 removeArrangedSubview:v6];

  v7 = [v4 view];

  [v7 removeFromSuperview];
}

- (BOOL)shouldDisplayControlForModule:(unint64_t)a3
{
  v5 = [(HACCShortcutViewController *)self mainStackOrderArray];
  v6 = [(HACCShortcutViewController *)self mainStackOrderArray];
  LOBYTE(a3) = [(HACCShortcutViewController *)self shouldDisplayControlForModule:a3 fromModulesArray:v5 mainStackOrderArrayCopy:v6];

  return a3;
}

- (BOOL)shouldDisplayControlForModule:(unint64_t)a3 fromModulesArray:(id)a4 mainStackOrderArrayCopy:(id)a5
{
  v109 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(HACCShortcutViewController *)self currentHearingDevice];
  if (v10)
  {
    v11 = [MEMORY[0x277D12DE8] sharedInstance];
    if ([v11 hearingAidReachable])
    {
      bluetoothAvailable = self->_bluetoothAvailable;
    }

    else
    {
      bluetoothAvailable = 0;
    }
  }

  else
  {
    bluetoothAvailable = 0;
  }

  v13 = [(HACCShortcutViewController *)self currentHearingDevice];
  v14 = v13;
  switch(a3)
  {
    case 0uLL:
      v27 = &unk_2864655A0;
      goto LABEL_99;
    case 1uLL:
      v37 = [v13 propertyIsAvailable:0x4000000000 forEar:2];
      v38 = v14;
      v39 = 0x4000000000;
      goto LABEL_38;
    case 2uLL:
      v37 = [v13 propertyIsAvailable:0x4000000000 forEar:4];
      v47 = v14;
      v48 = 0x4000000000;
      goto LABEL_74;
    case 3uLL:
      v43 = [v13 propertyIsAvailable:0x4000000000 forEar:2];
      v44 = [v14 propertyIsAvailable:0x4000000000 forEar:4];
      v45 = v14;
      v46 = 0x4000000000;
      goto LABEL_58;
    case 4uLL:
      v37 = [v13 propertyIsAvailable:64 forEar:2];
      v38 = v14;
      v39 = 64;
      goto LABEL_38;
    case 5uLL:
      v37 = [v13 propertyIsAvailable:64 forEar:4];
      v47 = v14;
      v48 = 64;
      goto LABEL_74;
    case 6uLL:
      v43 = [v13 propertyIsAvailable:64 forEar:2];
      v44 = [v14 propertyIsAvailable:64 forEar:4];
      v45 = v14;
      v46 = 64;
      goto LABEL_58;
    case 7uLL:
      v37 = [v13 propertyIsAvailable:0x80000000 forEar:2];
      v38 = v14;
      v39 = 0x80000000;
LABEL_38:
      v52 = [v38 shouldOnlyShowIndividualVolumesForProperty:v39];
      if (!bluetoothAvailable)
      {
        goto LABEL_157;
      }

      v53 = v52;
      v54 = [v14 isLeftConnected];
      goto LABEL_76;
    case 8uLL:
      v37 = [v13 propertyIsAvailable:0x80000000 forEar:4];
      v47 = v14;
      v48 = 0x80000000;
LABEL_74:
      v73 = [v47 shouldOnlyShowIndividualVolumesForProperty:v48];
      if (!bluetoothAvailable)
      {
        goto LABEL_157;
      }

      v53 = v73;
      v54 = [v14 isRightConnected];
LABEL_76:
      LOBYTE(self) = v54 & v37 & v53;
      goto LABEL_165;
    case 9uLL:
      v43 = [v13 propertyIsAvailable:0x80000000 forEar:2];
      v44 = [v14 propertyIsAvailable:0x80000000 forEar:4];
      v45 = v14;
      v46 = 0x80000000;
LABEL_58:
      v67 = [v45 shouldOnlyShowIndividualVolumesForProperty:v46];
      if (!bluetoothAvailable)
      {
        goto LABEL_157;
      }

      v68 = v67;
      if (![v14 isLeftConnected])
      {
        goto LABEL_157;
      }

      if ([v14 isRightConnected])
      {
        LOBYTE(self) = (v68 ^ 1) & (v43 | v44);
      }

      else
      {
        LOBYTE(self) = 0;
      }

      goto LABEL_165;
    case 0xAuLL:
      if ([v13 propertyIsAvailable:0x2000000000 forEar:2])
      {
        goto LABEL_71;
      }

      v35 = v14;
      v36 = 0x2000000000;
      goto LABEL_136;
    case 0xBuLL:
      if ([v13 propertyIsAvailable:0x1000000000 forEar:2])
      {
LABEL_71:
        LOBYTE(self) = 1;
        if (!bluetoothAvailable)
        {
          goto LABEL_157;
        }
      }

      else
      {
        v35 = v14;
        v36 = 0x1000000000;
LABEL_136:
        LOBYTE(self) = [v35 propertyIsAvailable:v36 forEar:4];
        if (!bluetoothAvailable)
        {
          goto LABEL_157;
        }
      }

      if (([v14 isLeftConnected] & 1) == 0 && !objc_msgSend(v14, "isRightConnected"))
      {
        goto LABEL_157;
      }

      goto LABEL_165;
    case 0xCuLL:
      v40 = [v13 propertyIsAvailable:128 forEar:2];
      v41 = [v14 shouldOnlyShowIndividualVolumesForProperty:128];
      v19 = [v14 leftSelectedStreamingProgram];
      if ([v19 isSelected])
      {
        v42 = [v19 isStreamOrMixingStream];
      }

      else
      {
        v42 = 0;
      }

      if (!bluetoothAvailable)
      {
        goto LABEL_134;
      }

      v87 = [v14 isLeftConnected];
      goto LABEL_133;
    case 0xDuLL:
      v40 = [v13 propertyIsAvailable:128 forEar:4];
      v41 = [v14 shouldOnlyShowIndividualVolumesForProperty:128];
      v19 = [v14 rightSelectedStreamingProgram];
      if ([v19 isSelected])
      {
        v42 = [v19 isStreamOrMixingStream];
      }

      else
      {
        v42 = 0;
      }

      if (!bluetoothAvailable)
      {
        goto LABEL_134;
      }

      v87 = [v14 isRightConnected];
LABEL_133:
      LOBYTE(self) = v87 & v40 & v41 & v42;
      goto LABEL_164;
    case 0xEuLL:
      v98 = [v13 propertyIsAvailable:128 forEar:2];
      v32 = [v14 propertyIsAvailable:128 forEar:4];
      v33 = [v14 shouldOnlyShowIndividualVolumesForProperty:128];
      v19 = [v14 leftSelectedStreamingProgram];
      v28 = [v14 rightSelectedStreamingProgram];
      if ([v19 isSelected])
      {
        v34 = [v19 isStreamOrMixingStream];
      }

      else
      {
        v34 = 0;
      }

      if ([v28 isSelected])
      {
        v86 = [v28 isStreamOrMixingStream];
      }

      else
      {
        v86 = 0;
      }

      if (!bluetoothAvailable || ![v14 isLeftConnected] || v33 & 1 | ((objc_msgSend(v14, "isRightConnected") & 1) == 0))
      {
        goto LABEL_119;
      }

      LOBYTE(self) = v34 & v98 | v86 & v32;
      goto LABEL_163;
    case 0xFuLL:
      v49 = [v13 leftPrograms];
      v50 = [v49 count];

      v51 = v50 == 0;
      goto LABEL_64;
    case 0x10uLL:
      v29 = [v13 rightPrograms];
      v30 = [v29 count];

      v31 = v30 == 0;
      goto LABEL_83;
    case 0x11uLL:
      v59 = [v13 programs];
      v60 = [v59 count];

      v61 = v60 == 0;
      goto LABEL_45;
    case 0x12uLL:
      v69 = [v13 leftPrograms];
      v70 = [v69 indexOfObjectPassingTest:&__block_literal_global_367];

      v51 = v70 == 0x7FFFFFFFFFFFFFFFLL;
LABEL_64:
      v71 = !v51;
      if (bluetoothAvailable & v71) != 1 || ([v14 showCombinedPrograms])
      {
        goto LABEL_157;
      }

      v72 = [v14 isLeftConnected];
      goto LABEL_159;
    case 0x13uLL:
      v75 = [v13 rightPrograms];
      v76 = [v75 indexOfObjectPassingTest:&__block_literal_global_369];

      v31 = v76 == 0x7FFFFFFFFFFFFFFFLL;
LABEL_83:
      v77 = !v31;
      if ((bluetoothAvailable & v77) == 1 && ([v14 showCombinedPrograms] & 1) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_157;
    case 0x14uLL:
      v62 = [v13 programs];
      v63 = [v62 indexOfObjectPassingTest:&__block_literal_global_371];

      v61 = v63 == 0x7FFFFFFFFFFFFFFFLL;
LABEL_45:
      v64 = !v61;
      if ((bluetoothAvailable & v64) != 1 || ![v14 showCombinedPrograms])
      {
        goto LABEL_157;
      }

      if ([v14 isLeftConnected])
      {
        goto LABEL_147;
      }

LABEL_88:
      v72 = [v14 isRightConnected];
      goto LABEL_159;
    case 0x15uLL:
      v65 = [(HACCShortcutViewController *)self currentHearingDevice];
      if ([v65 propertyIsAvailable:0x10000000000 forEar:2])
      {
        v66 = 1;
      }

      else
      {
        v88 = [(HACCShortcutViewController *)self currentHearingDevice];
        v66 = [v88 propertyIsAvailable:0x10000000000 forEar:4];
      }

      v89 = hearingAidReceivingAudio();
      if (bluetoothAvailable & v66)
      {
        LODWORD(self) = ([v14 availableInputEars] != 0) & (v89 ^ 1);
      }

      else
      {
        LODWORD(self) = 0;
      }

      v90 = HCLogHearingAids();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110144;
        v100 = self;
        v101 = 1024;
        v102 = bluetoothAvailable;
        v103 = 1024;
        v104 = v66;
        v105 = 1024;
        v106 = [v14 availableInputEars];
        v107 = 1024;
        v108 = v89;
        _os_log_impl(&dword_252166000, v90, OS_LOG_TYPE_DEFAULT, "CCShortcutViewController: Showing mic control %d = [%d, %d, %d, %d]", buf, 0x20u);
      }

      goto LABEL_165;
    case 0x16uLL:
      LOBYTE(self) = bluetoothAvailable;
      goto LABEL_165;
    case 0x17uLL:
      if ([(HACCShortcutViewController *)self _isStandaloneHeadphoneLevelsFromMainStackOrderArray:v9])
      {
        goto LABEL_147;
      }

      if (![(HACCShortcutViewController *)self headphoneAudioAvailable])
      {
        goto LABEL_157;
      }

      v19 = [MEMORY[0x277D12E20] sharedInstance];
      if (![v19 liveHeadphoneLevelEnabled])
      {
        goto LABEL_134;
      }

      v20 = &unk_2864655A0;
LABEL_12:
      LOBYTE(self) = [v8 containsObject:v20];
      goto LABEL_164;
    case 0x18uLL:
    case 0x1CuLL:
      v19 = [MEMORY[0x277D12E18] sharedInstance];
      if ([v19 comfortSoundsAvailable])
      {
        goto LABEL_11;
      }

      goto LABEL_134;
    case 0x19uLL:
      v19 = [MEMORY[0x277D12E18] sharedInstance];
      if (![v19 comfortSoundsAvailable] || self->_mediaIsPlaying)
      {
        goto LABEL_134;
      }

LABEL_11:
      v20 = &unk_286465618;
      goto LABEL_12;
    case 0x1AuLL:
      v19 = [MEMORY[0x277D12E18] sharedInstance];
      if (![v19 comfortSoundsAvailable])
      {
        goto LABEL_134;
      }

      v28 = [MEMORY[0x277D12E18] sharedInstance];
      if (![v28 mixesWithMedia] || !self->_mediaIsPlaying)
      {
        goto LABEL_119;
      }

      goto LABEL_95;
    case 0x1BuLL:
      v19 = [MEMORY[0x277D12E18] sharedInstance];
      if (![v19 comfortSoundsAvailable])
      {
        goto LABEL_134;
      }

      v28 = [MEMORY[0x277D12E18] sharedInstance];
      if ([v28 timerEnabled])
      {
LABEL_95:
        LOBYTE(self) = [v8 containsObject:&unk_286465618];
      }

      else
      {
LABEL_119:
        LOBYTE(self) = 0;
      }

      goto LABEL_163;
    case 0x1DuLL:
      if (![(HACCShortcutViewController *)self shouldDisplayControlForModule:25 fromModulesArray:v8 mainStackOrderArrayCopy:v9]&& ![(HACCShortcutViewController *)self shouldDisplayControlForModule:26 fromModulesArray:v8 mainStackOrderArrayCopy:v9])
      {
        goto LABEL_157;
      }

      v27 = &unk_286465618;
      goto LABEL_99;
    case 0x1EuLL:
      goto LABEL_42;
    case 0x1FuLL:
      v55 = [(HACCShortcutViewController *)self moduleToViewControllerMap];
      v56 = [v55 objectForKey:&unk_2864655E8];
      v57 = [v56 value];
      v58 = [v57 BOOLValue];

      if (!v58 || !_os_feature_enabled_impl())
      {
        goto LABEL_157;
      }

LABEL_42:
      v27 = &unk_2864655E8;
      goto LABEL_99;
    case 0x20uLL:
      v19 = [MEMORY[0x277D3A1D0] sharedInstance];
      if (([v19 personalMediaEnabled] & 1) != 0 || !-[HACCShortcutViewController currentDeviceSupportsSSL](self, "currentDeviceSupportsSSL") || !objc_msgSend(v8, "containsObject:", &unk_286465600))
      {
        goto LABEL_134;
      }

      v28 = [MEMORY[0x277D3A1C8] sharedInstance];
      v74 = [(HACCShortcutViewController *)self currentDeviceAddress];
      LOBYTE(self) = [v28 yodelEnabledForAddress:v74] ^ 1;
      goto LABEL_162;
    case 0x21uLL:
      v27 = &unk_286465600;
      goto LABEL_99;
    case 0x22uLL:
    case 0x23uLL:
    case 0x26uLL:
      v15 = [MEMORY[0x277D3A1C8] sharedInstance];
      v16 = [(HACCShortcutViewController *)self currentDeviceAddress];
      v17 = [v15 yodelEnabledForAddress:v16];

      if (v17)
      {
        v18 = [v8 containsObject:&unk_2864655D0];
      }

      else
      {
        v21 = [MEMORY[0x277D3A1D0] sharedInstance];
        if ([v21 personalMediaEnabled])
        {
          v22 = [MEMORY[0x277D3A1D0] sharedInstance];
          v23 = [v22 personalMediaConfiguration];
          if (v23)
          {
            v18 = [v8 containsObject:&unk_2864655D0];
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      v92 = HCLogAudioAccommodations();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v100 = [v8 containsObject:&unk_2864655D0];
        _os_log_impl(&dword_252166000, v92, OS_LOG_TYPE_DEFAULT, "CCShortcutViewController: Should Display Control - modules array does contain PME toggle: %d", buf, 8u);
      }

      if (v18)
      {
LABEL_147:
        LOBYTE(self) = 1;
        goto LABEL_165;
      }

      v72 = [(HACCShortcutViewController *)self _isStandalonePMEModuleFromMainStackOrderArray:v9];
      goto LABEL_159;
    case 0x24uLL:
      v24 = [MEMORY[0x277D3A1C8] sharedInstance];
      v25 = [(HACCShortcutViewController *)self currentDeviceAddress];
      v26 = [v24 yodelEnabledForAddress:v25];

      if (v26)
      {
        v27 = &unk_2864655D0;
LABEL_99:
        v72 = [v8 containsObject:v27];
        goto LABEL_159;
      }

      v19 = [MEMORY[0x277D3A1D0] sharedInstance];
      if ([v19 personalMediaEnabled])
      {
        v28 = [MEMORY[0x277D3A1D0] sharedInstance];
        v74 = [v28 personalMediaConfiguration];
        if (v74)
        {
          v84 = [MEMORY[0x277D3A1D0] sharedInstance];
          v85 = [(HACCShortcutViewController *)self currentDeviceAddress];
          if ([v84 transparencyCustomizedForAddress:v85])
          {
            LOBYTE(self) = [v8 containsObject:&unk_2864655D0];
          }

          else
          {
            LOBYTE(self) = 0;
          }
        }

        else
        {
          LOBYTE(self) = 0;
        }

LABEL_162:

LABEL_163:
      }

      else
      {
LABEL_134:
        LOBYTE(self) = 0;
      }

LABEL_164:

      goto LABEL_165;
    case 0x25uLL:
      if ([(HACCShortcutViewController *)self currentDevicePSEVersion]< 2)
      {
        v91 = 0;
      }

      else
      {
        v78 = [MEMORY[0x277D3A1D0] sharedInstance];
        if ([v78 personalMediaEnabled])
        {
          v79 = [MEMORY[0x277D3A1D0] sharedInstance];
          v80 = [v79 personalMediaConfiguration];
          if (v80)
          {
            v81 = [MEMORY[0x277D3A1D0] sharedInstance];
            v82 = [(HACCShortcutViewController *)self currentDeviceAddress];
            v83 = [v81 transparencyCustomizedForAddress:v82];
          }

          else
          {
            v83 = 0;
          }

          v93 = [(HACCShortcutViewController *)self currentDeviceSupportsSSL];
          if (v83)
          {
            goto LABEL_158;
          }
        }

        else
        {

          v93 = [(HACCShortcutViewController *)self currentDeviceSupportsSSL];
        }

        v91 = v93;
      }

      v94 = [MEMORY[0x277D3A1C8] sharedInstance];
      v95 = [(HACCShortcutViewController *)self currentDeviceAddress];
      v96 = [v94 yodelEnabledForAddress:v95];

      if ((v96 & 1) == 0 && !v91)
      {
LABEL_157:
        LOBYTE(self) = 0;
        goto LABEL_165;
      }

LABEL_158:
      v72 = [(HACCShortcutViewController *)self shouldDisplayControlForModule:36 fromModulesArray:v8 mainStackOrderArrayCopy:v9];
LABEL_159:
      LOBYTE(self) = v72;
LABEL_165:

      return self & 1;
    default:
      goto LABEL_157;
  }
}

- (BOOL)addPartialSeparatorAboveModule:(unint64_t)a3
{
  v5 = a3 == 37 || a3 - 25 < 2;
  v6 = _os_feature_enabled_impl();
  v7 = a3 == 31 || v5;
  if (v6)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

- (id)parentViewControllerForModule:(unint64_t)a3
{
  if (a3 > 24)
  {
    if (a3 > 31)
    {
      if (a3 <= 34)
      {
        if (a3 == 33)
        {
          v3 = [(HACCShortcutViewController *)self moduleToViewControllerMap];
          v4 = v3;
          v5 = &unk_286465600;
          goto LABEL_10;
        }
      }

      else if (a3 - 35 < 4)
      {
        v3 = [(HACCShortcutViewController *)self moduleToViewControllerMap];
        v4 = v3;
        v5 = &unk_2864655D0;
        goto LABEL_10;
      }
    }

    else
    {
      if (a3 - 25 < 5)
      {
        v3 = [(HACCShortcutViewController *)self moduleToViewControllerMap];
        v4 = v3;
        v5 = &unk_286465618;
        goto LABEL_10;
      }

      if (a3 == 31)
      {
        v3 = [(HACCShortcutViewController *)self moduleToViewControllerMap];
        v4 = v3;
        v5 = &unk_2864655E8;
        goto LABEL_10;
      }
    }
  }

  else if (a3 - 1 < 0x16)
  {
    v3 = [(HACCShortcutViewController *)self moduleToViewControllerMap];
    v4 = v3;
    v5 = &unk_2864655A0;
LABEL_10:
    v6 = [v3 objectForKey:v5];

    goto LABEL_11;
  }

  v6 = self;
LABEL_11:

  return v6;
}

- (BOOL)_isMainStackForModule:(unint64_t)a3
{
  v4 = [(HACCShortcutViewController *)self mainStackIndexSet];
  LOBYTE(a3) = [v4 containsIndex:a3];

  return a3;
}

- (unint64_t)_mainStackIndexForModule:(unint64_t)a3
{
  v4 = [(HACCShortcutViewController *)self mainStackOrderArray];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [v4 indexOfObject:v5];

  return v6;
}

- (id)contentControllerForModule:(unint64_t)a3
{
  v3 = [[HACCContentViewController alloc] initWithContentModule:a3 andDelegate:self];

  return v3;
}

- (void)updateContentViewListeners:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(HACCShortcutViewController *)self moduleToViewControllerMap];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 contentView];
        if (v3)
        {
          v12 = objc_opt_respondsToSelector();

          if ((v12 & 1) == 0)
          {
            continue;
          }

          v13 = [v10 contentView];
          [v13 subscribeListeners];
        }

        else
        {
          v14 = objc_opt_respondsToSelector();

          if ((v14 & 1) == 0)
          {
            continue;
          }

          v13 = [v10 contentView];
          [v13 unsubscribeListeners];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)updateAvailableControls
{
  if (![(HACCShortcutViewController *)self _isShownInGallery])
  {
    [(HACCShortcutViewController *)self startListeningForHearingAidUpdates];
    [(HACCShortcutViewController *)self startListeningForHeadphoneUpdates];
    v3 = [(HACCShortcutViewController *)self view];
    [v3 bounds];
    v5 = v4;
    v7 = v6;

    v8 = [(HACCShortcutViewController *)self view];
    [v8 frame];
    v10 = v9;
    v12 = v11;

    v13 = [(HACCShortcutViewController *)self scrollView];
    [v13 setFrame:{v5, v7, v10, v12}];

    v14 = [(HACCShortcutViewController *)self mainStackOrderArray];
    v15 = [v14 copy];

    v16 = [MEMORY[0x277D12DE8] sharedInstance];
    v17 = [v16 connectionQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __53__HACCShortcutViewController_updateAvailableControls__block_invoke;
    v19[3] = &unk_2796F6CA8;
    v19[4] = self;
    v20 = v15;
    v18 = v15;
    dispatch_async(v17, v19);
  }
}

void __53__HACCShortcutViewController_updateAvailableControls__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB58] indexSet];
  v3 = [*(a1 + 32) stackOrder];
  for (i = 0; i != 39; ++i)
  {
    if ([*(a1 + 32) shouldDisplayControlForModule:i fromModulesArray:v3 mainStackOrderArrayCopy:*(a1 + 40)])
    {
      [v2 addIndex:i];
    }
  }

  v7 = v2;
  v5 = v2;
  v6 = v3;
  AXPerformBlockOnMainThread();
}

uint64_t __53__HACCShortcutViewController_updateAvailableControls__block_invoke_2(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setMainStackOrderArray:*(a1 + 40)];
  v2 = 0;
  *&v3 = 138412802;
  v46 = v3;
  do
  {
    v4 = [*(a1 + 32) moduleToViewControllerMap];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
    v6 = [v4 objectForKey:v5];

    if ([*(a1 + 48) containsIndex:v2])
    {
      if (!v6)
      {
        v6 = [*(a1 + 32) contentControllerForModule:v2];
        v7 = [*(a1 + 32) moduleToViewControllerMap];
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
        [v7 setObject:v6 forKey:v8];

        v9 = [*(a1 + 32) parentViewControllerForModule:v2];
        [v9 addChildViewController:v6];

        v10 = HCLogHearing();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
          v12 = MEMORY[0x277CCABB0];
          v13 = [*(a1 + 32) parentViewControllerForModule:v2];
          v14 = [v13 childViewControllers];
          v15 = [v12 numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
          *buf = v46;
          v48 = v11;
          v49 = 2112;
          v50 = v6;
          v51 = 2112;
          v52 = v15;
          _os_log_impl(&dword_252166000, v10, OS_LOG_TYPE_DEFAULT, "HACCShortcutViewController module %@, add controller %@, children %@", buf, 0x20u);
        }
      }

      v16 = [*(a1 + 32) _isMainStackForModule:v2];
      v17 = *(a1 + 32);
      if (v16)
      {
        v18 = [v17 _mainStackIndexForModule:v2];
        if (v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_22:
          [v6 updateValue];
          goto LABEL_31;
        }

        v19 = v18;
        v20 = [v6 view];
        v21 = [v20 superview];

        if (v21)
        {
          v22 = [*(a1 + 32) stackView];
          v23 = [v6 view];
          [v22 removeArrangedSubview:v23];
        }

        v24 = [*(a1 + 32) stackView];
        v25 = [v24 arrangedSubviews];
        v26 = [v25 count];

        if (v19 >= v26)
        {
          v27 = v26;
        }

        else
        {
          v27 = v19;
        }

        v28 = [*(a1 + 32) stackView];
        v29 = [v6 view];
        [v28 insertArrangedSubview:v29 atIndex:v27];
      }

      else
      {
        v28 = [v17 parentViewControllerForModule:v2];
        if (!v28)
        {
          goto LABEL_21;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_21;
        }

        v34 = [v6 view];
        v35 = [v34 superview];

        if (v35)
        {
          goto LABEL_21;
        }

        v29 = [v6 view];
        [v28 addExpandedView:v29 shouldAlwaysExpand:{objc_msgSend(*(a1 + 32), "prefersContentToAlwaysExpand")}];
      }

LABEL_21:
      goto LABEL_22;
    }

    v30 = [*(a1 + 32) _isMainStackForModule:v2];
    v31 = *(a1 + 32);
    if (v30)
    {
      v32 = [v31 stackView];
      v33 = [v6 view];
      [v32 removeArrangedSubview:v33];
    }

    else
    {
      v32 = [v31 parentViewControllerForModule:v2];
      if (!v32)
      {
        goto LABEL_27;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_27;
      }

      v33 = [v6 view];
      [v32 removeExpandedView:v33];
    }

LABEL_27:
    [v6 removeFromParentViewController];
    v36 = [v6 view];
    [v36 removeFromSuperview];

    v37 = [*(a1 + 32) moduleToViewControllerMap];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
    [v37 removeObjectForKey:v38];

    if (!v6)
    {
      goto LABEL_32;
    }

    v39 = HCLogHearing();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
      v41 = MEMORY[0x277CCABB0];
      v42 = [*(a1 + 32) parentViewControllerForModule:v2];
      v43 = [v42 childViewControllers];
      v44 = [v41 numberWithUnsignedInteger:{objc_msgSend(v43, "count")}];
      *buf = v46;
      v48 = v40;
      v49 = 2112;
      v50 = v6;
      v51 = 2112;
      v52 = v44;
      _os_log_impl(&dword_252166000, v39, OS_LOG_TYPE_DEFAULT, "CCShortcutViewController: module %@, remove controller %@, children %@", buf, 0x20u);
    }

LABEL_31:
LABEL_32:
    ++v2;
  }

  while (v2 != 39);
  return [*(a1 + 32) updateHeight];
}

- (void)updateHeight
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v3 = [(HACCShortcutViewController *)self view];
  [v3 bounds];
  v5 = v4;

  v6 = [(HACCShortcutViewController *)self mainStackIndexSet];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42__HACCShortcutViewController_updateHeight__block_invoke;
  v18[3] = &unk_2796F7548;
  v18[4] = self;
  v18[5] = &v19;
  [v6 enumerateIndexesUsingBlock:v18];

  self->_moduleHeight = v20[3];
  v7 = [(HACCShortcutViewController *)self stackView];
  [v7 frame];
  v9 = v8;
  v11 = v10;

  v12 = v20[3];
  v13 = [(HACCShortcutViewController *)self stackView];
  [v13 setFrame:{v9, v11, v5, v12}];

  v14 = [(HACCShortcutViewController *)self scrollView];
  [(HACCShortcutViewController *)self moduleHeight];
  [v14 setFrame:{0.0, 0.0, v5, v15}];

  v16 = [(HACCShortcutViewController *)self scrollView];
  [v16 setContentSize:{v5, v20[3]}];

  v17 = [(HACCShortcutViewController *)self delegate];
  [v17 shortcutDidChangeSize:self];

  _Block_object_dispose(&v19, 8);
}

void __42__HACCShortcutViewController_updateHeight__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) moduleToViewControllerMap];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v9 = [v4 objectForKey:v5];

  v6 = v9;
  if (v9)
  {
    if (a2)
    {
      *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + 12.0;
    }

    v7 = [v9 view];
    [v7 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
    *(*(*(a1 + 40) + 8) + 24) = v8 + *(*(*(a1 + 40) + 8) + 24);

    v6 = v9;
  }
}

- (double)moduleHeight
{
  moduleHeight = self->_moduleHeight;
  v4 = [(HACCShortcutViewController *)self view];
  [v4 bounds];
  v5 = CGRectGetMidY(v11) - moduleHeight * 0.5;

  v6 = MEMORY[0x25309AB60]() * 0.5;
  if (v5 >= v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 bounds];
  v9 = CGRectGetHeight(v12) + v7 * -2.0;

  self->_mainModuleOrigin.x = 0.0;
  self->_mainModuleOrigin.y = v7;
  if (v9 >= moduleHeight)
  {
    return moduleHeight;
  }

  else
  {
    return v9;
  }
}

- (double)preferredContentWidth
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  Width = CGRectGetWidth(v5);

  return Width;
}

- (id)containerViewsForPlatterTreatment
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(HACCShortcutViewController *)self mainStackIndexSet];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HACCShortcutViewController_containerViewsForPlatterTreatment__block_invoke;
  v9[3] = &unk_2796F7570;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateIndexesUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __63__HACCShortcutViewController_containerViewsForPlatterTreatment__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) moduleToViewControllerMap];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v9 = [v4 objectForKey:v5];

  v6 = v9;
  if (v9)
  {
    v7 = *(a1 + 40);
    v8 = [v9 contentView];
    [v7 addObject:v8];

    v6 = v9;
  }
}

- (HACCContentViewController)expandedController
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  v2 = [(HACCShortcutViewController *)self moduleToViewControllerMap];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__HACCShortcutViewController_expandedController__block_invoke;
  v5[3] = &unk_2796F7598;
  v5[4] = &v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __48__HACCShortcutViewController_expandedController__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [v9 presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (BOOL)isExpanded
{
  v2 = [(HACCShortcutViewController *)self expandedController];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isControlCenterModuleExpanded
{
  v2 = [(HACCShortcutViewController *)self parentViewController];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 isExpanded];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)updateView
{
  v3 = [(HACCShortcutViewController *)self view];
  [v3 alpha];
  v5 = v4;

  if (v5 > 0.0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__HACCShortcutViewController_updateView__block_invoke;
    v6[3] = &unk_2796F6D90;
    v6[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v6 options:&__block_literal_global_394 animations:0.35 completion:0.0];
  }
}

- (void)updateViewForModule:(unint64_t)a3
{
  v6 = [(HACCShortcutViewController *)self moduleToViewControllerMap];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [v6 objectForKey:v4];
  [v5 updateValue];
}

- (void)updateViewForProperties:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D12DE8] sharedInstance];
  v6 = [v5 hearingAidReachable];

  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__HACCShortcutViewController_updateViewForProperties___block_invoke_2;
    v8[3] = &unk_2796F7600;
    v8[4] = self;
    [v4 enumerateObjectsUsingBlock:v8];
  }

  else if ([(HACCShortcutViewController *)self isExpanded])
  {
    v7 = [(HACCShortcutViewController *)self moduleToViewControllerMap];
    [v7 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_396];
  }
}

void __54__HACCShortcutViewController_updateViewForProperties___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 integerValue];
  if (v6 > 0xFFFFFFFFLL)
  {
    if (v6 > 0xFFFFFFFFFLL)
    {
      if (v6 > 0x3FFFFFFFFFLL)
      {
        if (v6 == 0x4000000000 || v6 == 0x8000000000)
        {
          v14 = [*(a1 + 32) moduleToViewControllerMap];
          v15 = [v14 objectForKey:&unk_286465708];
          [v15 updateValue];

          v16 = [*(a1 + 32) moduleToViewControllerMap];
          v17 = [v16 objectForKey:&unk_286465720];
          [v17 updateValue];

          v7 = [*(a1 + 32) moduleToViewControllerMap];
          v40 = v7;
          v8 = &unk_286465738;
          goto LABEL_28;
        }
      }

      else
      {
        if (v6 == 0x1000000000)
        {
          v7 = [*(a1 + 32) moduleToViewControllerMap];
          v40 = v7;
          v8 = &unk_286465768;
          goto LABEL_28;
        }

        if (v6 == 0x2000000000)
        {
          v7 = [*(a1 + 32) moduleToViewControllerMap];
          v40 = v7;
          v8 = &unk_286465750;
LABEL_28:
          v36 = [v7 objectForKey:v8];
          [v36 updateValue];

          return;
        }
      }

      goto LABEL_31;
    }

    if (v6 != 0x100000000)
    {
      if (v6 != 0x200000000)
      {
        v9 = 0x400000000;
        goto LABEL_18;
      }

LABEL_25:
      v22 = [*(a1 + 32) moduleToViewControllerMap];
      v23 = [v22 objectForKey:&unk_2864656C0];
      [v23 updateValue];

      v24 = [*(a1 + 32) moduleToViewControllerMap];
      v25 = [v24 objectForKey:&unk_2864656D8];
      [v25 updateValue];

      v7 = [*(a1 + 32) moduleToViewControllerMap];
      v40 = v7;
      v8 = &unk_2864656F0;
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (v6 <= 255)
  {
    if (v6 != 4)
    {
      if (v6 != 64)
      {
        if (v6 != 128)
        {
          goto LABEL_31;
        }

        goto LABEL_25;
      }

LABEL_23:
      v18 = [*(a1 + 32) moduleToViewControllerMap];
      v19 = [v18 objectForKey:&unk_286465630];
      [v19 updateValue];

      v20 = [*(a1 + 32) moduleToViewControllerMap];
      v21 = [v20 objectForKey:&unk_286465648];
      [v21 updateValue];

      v7 = [*(a1 + 32) moduleToViewControllerMap];
      v40 = v7;
      v8 = &unk_286465660;
      goto LABEL_28;
    }

LABEL_24:
    v7 = [*(a1 + 32) moduleToViewControllerMap];
    v40 = v7;
    v8 = &unk_2864655A0;
    goto LABEL_28;
  }

  if (v6 == 256)
  {
    v26 = [*(a1 + 32) moduleToViewControllerMap];
    v27 = [v26 objectForKey:&unk_286465780];
    [v27 updateValue];

    v28 = [*(a1 + 32) moduleToViewControllerMap];
    v29 = [v28 objectForKey:&unk_286465798];
    [v29 updateValue];

    v30 = [*(a1 + 32) moduleToViewControllerMap];
    v31 = [v30 objectForKey:&unk_2864657B0];
    [v31 updateValue];

    v32 = [*(a1 + 32) moduleToViewControllerMap];
    v33 = [v32 objectForKey:&unk_2864657C8];
    [v33 updateValue];

    v34 = [*(a1 + 32) moduleToViewControllerMap];
    v35 = [v34 objectForKey:&unk_2864657E0];
    [v35 updateValue];

    v7 = [*(a1 + 32) moduleToViewControllerMap];
    v40 = v7;
    v8 = &unk_2864657F8;
    goto LABEL_28;
  }

  if (v6 == 0x40000)
  {
    goto LABEL_24;
  }

  v9 = 0x80000000;
LABEL_18:
  if (v6 == v9)
  {
    v10 = [*(a1 + 32) moduleToViewControllerMap];
    v11 = [v10 objectForKey:&unk_286465678];
    [v11 updateValue];

    v12 = [*(a1 + 32) moduleToViewControllerMap];
    v13 = [v12 objectForKey:&unk_286465690];
    [v13 updateValue];

    v7 = [*(a1 + 32) moduleToViewControllerMap];
    v40 = v7;
    v8 = &unk_2864656A8;
    goto LABEL_28;
  }

LABEL_31:
  v37 = [*(a1 + 32) isExpanded];
  v38 = *(a1 + 32);
  if (v37)
  {
    v39 = [v38 moduleToViewControllerMap];
    [v39 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_439];
  }

  else
  {
    [v38 updateAvailableControls];
  }

  *a4 = 1;
}

- (BOOL)_isStandaloneHeadphoneLevels
{
  v3 = [(HACCShortcutViewController *)self mainStackOrderArray];
  if ([v3 count] == 1)
  {
    v4 = [(HACCShortcutViewController *)self mainStackOrderArray];
    v5 = [v4 containsObject:&unk_2864655B8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isStandaloneHeadphoneLevelsFromMainStackOrderArray:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 containsObject:&unk_2864655B8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldShowHeadphoneLevelUnavailable
{
  v3 = [(HACCShortcutViewController *)self _isStandaloneHeadphoneLevels];
  if ([(HACCShortcutViewController *)self headphoneAudioAvailable])
  {
    v4 = [MEMORY[0x277D12E20] sharedInstance];
    v5 = [v4 liveHeadphoneLevelEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v3 & v5;
}

- (BOOL)_isStandalonePMEModule
{
  v3 = [(HACCShortcutViewController *)self mainStackOrderArray];
  if ([v3 count] == 1)
  {
    v4 = [(HACCShortcutViewController *)self mainStackOrderArray];
    v5 = [v4 containsObject:&unk_2864655D0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isStandalonePMEModuleFromMainStackOrderArray:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 containsObject:&unk_2864655D0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)showPMEExpandedOptions
{
  v3 = [MEMORY[0x277D3A1D0] sharedInstance];
  if ([v3 personalMediaEnabled])
  {
    v4 = [MEMORY[0x277D3A1D0] sharedInstance];
    v5 = [v4 personalMediaConfiguration];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277D3A1C8] sharedInstance];
  v8 = [(HACCShortcutViewController *)self currentDeviceAddress];
  v9 = [v7 yodelEnabledForAddress:v8];

  return (v9 | v6) & 1;
}

- (void)viewController:(id)a3 didExpand:(BOOL)a4
{
  if (!a4)
  {
    a3 = 0;
  }

  [(HACCShortcutViewController *)self setExpandedController:a3];
}

- (void)controlDidActivate:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HCLogHearing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 module];
    v7 = [v4 contentValue];
    *buf = 134218242;
    v56 = v6;
    v57 = 2112;
    v58 = v7;
    _os_log_impl(&dword_252166000, v5, OS_LOG_TYPE_DEFAULT, "CCShortcutViewController: Control activated %ld - %@", buf, 0x16u);
  }

  v8 = [(HACCShortcutViewController *)self currentHearingDevice];
  switch([v4 module])
  {
    case 1:
      v9 = [v4 contentValue];
      [v9 doubleValue];
      [v8 setLeftMixedVolume:?];
      goto LABEL_45;
    case 2:
      goto LABEL_16;
    case 3:
      v25 = [v4 contentValue];
      [v25 doubleValue];
      [v8 setLeftMixedVolume:?];

LABEL_16:
      v9 = [v4 contentValue];
      [v9 doubleValue];
      [v8 setRightMixedVolume:?];
      goto LABEL_45;
    case 4:
      v9 = [v4 contentValue];
      [v9 doubleValue];
      [v8 setLeftMicrophoneVolume:?];
      goto LABEL_45;
    case 5:
      goto LABEL_18;
    case 6:
      v26 = [v4 contentValue];
      [v26 doubleValue];
      [v8 setLeftMicrophoneVolume:?];

LABEL_18:
      v9 = [v4 contentValue];
      [v9 doubleValue];
      [v8 setRightMicrophoneVolume:?];
      goto LABEL_45;
    case 7:
      v9 = [v4 contentValue];
      [v9 doubleValue];
      [v8 setLeftSensitivity:?];
      goto LABEL_45;
    case 8:
      goto LABEL_27;
    case 9:
      v35 = [v4 contentValue];
      [v35 doubleValue];
      [v8 setLeftSensitivity:?];

LABEL_27:
      v9 = [v4 contentValue];
      [v9 doubleValue];
      [v8 setRightSensitivity:?];
      goto LABEL_45;
    case 10:
      v32 = [v4 contentValue];
      [v32 doubleValue];
      v34 = ((v33 + -0.5) * 255.0);

      [v8 setLeftTreble:v34];
      [v8 setRightTreble:v34];
      goto LABEL_46;
    case 11:
      v15 = [v4 contentValue];
      [v15 doubleValue];
      v17 = ((v16 + -0.5) * 255.0);

      [v8 setLeftBass:v17];
      [v8 setRightBass:v17];
      goto LABEL_46;
    case 12:
      v9 = [v4 contentValue];
      [v9 doubleValue];
      [v8 setLeftStreamVolume:?];
      goto LABEL_45;
    case 13:
      goto LABEL_9;
    case 14:
      v14 = [v4 contentValue];
      [v14 doubleValue];
      [v8 setLeftStreamVolume:?];

LABEL_9:
      v9 = [v4 contentValue];
      [v9 doubleValue];
      [v8 setRightStreamVolume:?];
      goto LABEL_45;
    case 24:
      v27 = [MEMORY[0x277D12E18] sharedInstance];
      v28 = [v27 comfortSoundsAvailable];

      if (!v28)
      {
        goto LABEL_46;
      }

      v29 = [MEMORY[0x277D12E18] sharedInstance];
      v30 = [v29 comfortSoundsEnabled];

      v9 = [MEMORY[0x277D12E18] sharedInstance];
      [v9 setComfortSoundsEnabled:v30 ^ 1u];
      goto LABEL_45;
    case 25:
      v9 = [MEMORY[0x277D12E18] sharedInstance];
      v31 = [v4 contentValue];
      [v31 doubleValue];
      [v9 setRelativeVolume:?];
      goto LABEL_31;
    case 26:
      v9 = [MEMORY[0x277D12E18] sharedInstance];
      v31 = [v4 contentValue];
      [v31 doubleValue];
      [v9 setMediaVolume:?];
LABEL_31:

      goto LABEL_45;
    case 30:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v4;
      }

      else
      {
        v18 = 0;
      }

      v41 = [v4 contentValue];
      v42 = [v41 BOOLValue];

      hearingLocString();
      if (v42)
        v43 = {;
        [v18 setAccessibilityValueString:v43];

        v44 = [MEMORY[0x277D12DE8] sharedInstance];
        [v44 stopLiveListen];
      }

      else
        v45 = {;
        [v18 setAccessibilityValueString:v45];

        v46 = [MEMORY[0x277D12DE8] sharedInstance];
        [v46 startLiveListen];

        [(HACCShortcutViewController *)self _logLiveListenAnalytics];
      }

      goto LABEL_42;
    case 32:
      v9 = [(HACCShortcutViewController *)self currentDeviceAddress];
      if ([v9 length])
      {
        v10 = [MEMORY[0x277D3A1D0] sharedInstance];
        if ([v10 personalMediaEnabled])
        {
          v11 = [MEMORY[0x277D3A1D0] sharedInstance];
          v12 = [v11 personalMediaConfiguration];
          v13 = v12 != 0;
        }

        else
        {
          v13 = 0;
        }

        v47 = [MEMORY[0x277D3A1D0] sharedInstance];
        v48 = [v47 transparencyCustomizedForAddress:v9];

        v49 = [MEMORY[0x277D12E00] sharedInstance];
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __49__HACCShortcutViewController_controlDidActivate___block_invoke;
        v50[3] = &unk_2796F7650;
        v53 = v13;
        v54 = v48;
        v51 = v9;
        v52 = v4;
        [v49 getSSLEnabledForAddress:v51 withCompletion:v50];
      }

LABEL_45:

      goto LABEL_46;
    case 37:
      v18 = [(HACCShortcutViewController *)self currentDeviceAddress];
      v19 = [MEMORY[0x277D3A1C8] sharedInstance];
      v20 = [v19 yodelEnabledForAddress:v18];

      if (v20)
      {
        v21 = [MEMORY[0x277D3A1C8] sharedInstance];
        v22 = [v21 beamformingForAddress:v18];

        v23 = HCLogAudioAccommodations();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v56) = v22;
          _os_log_impl(&dword_252166000, v23, OS_LOG_TYPE_DEFAULT, "CCShortcutViewController: Yodel beamformer toggled %d", buf, 8u);
        }

        v24 = [MEMORY[0x277D3A1C8] sharedInstance];
        [v24 setBeamforming:v22 ^ 1u forAddress:v18];
      }

      else
      {
        v36 = [MEMORY[0x277D3A1D0] sharedInstance];
        v37 = [v36 transparencyCustomizedForAddress:v18];

        if (!v37)
        {
          goto LABEL_37;
        }

        v38 = [MEMORY[0x277D3A1D0] sharedInstance];
        v39 = [v38 transparencyBeamformingForAddress:v18];

        v40 = HCLogAudioAccommodations();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v56) = v39;
          _os_log_impl(&dword_252166000, v40, OS_LOG_TYPE_DEFAULT, "CCShortcutViewController: Beamformer toggled %d", buf, 8u);
        }

        v24 = [MEMORY[0x277D3A1D0] sharedInstance];
        [v24 setTransparencyBeamforming:v39 ^ 1u forAddress:v18];
      }

LABEL_37:
      [(HACCShortcutViewController *)self updateViewForModule:37];
LABEL_42:

LABEL_46:
      return;
    default:
      goto LABEL_46;
  }
}

void __49__HACCShortcutViewController_controlDidActivate___block_invoke(uint64_t a1, char a2)
{
  v4 = [MEMORY[0x277D12E00] sharedInstance];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HACCShortcutViewController_controlDidActivate___block_invoke_2;
  v5[3] = &unk_2796F7628;
  v8 = a2;
  v9 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v4 getCurrentRouteListeningModeWithCompletion:v5];
}

uint64_t __49__HACCShortcutViewController_controlDidActivate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 49);
    v7 = *(a1 + 50);
    v12[0] = 67109632;
    v12[1] = v4 ^ 1;
    v13 = 1024;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    _os_log_impl(&dword_252166000, v5, OS_LOG_TYPE_DEFAULT, "CCShortcutViewController: SSL toggled-%i, headphoneAcc-%i, transparencySettings-%i", v12, 0x14u);
  }

  if (a2 != 8 && (v4 & 1) == 0)
  {
    v8 = [MEMORY[0x277D12E00] sharedInstance];
    [v8 setCurrentRouteListeningMode:8];

    v9 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_252166000, v9, OS_LOG_TYPE_DEFAULT, "CCShortcutViewController: SSL force turning on transparency mode", v12, 2u);
    }
  }

  v10 = [MEMORY[0x277D12E00] sharedInstance];
  [v10 setSSLEnabled:v4 ^ 1u forAddress:*(a1 + 32)];

  return [*(a1 + 40) updateValue];
}

- (void)_logLiveListenAnalytics
{
  v2 = [MEMORY[0x277D12E38] sharedUtilities];
  [v2 requestCurrentRoutesWithCompletion:&__block_literal_global_450];
}

void __53__HACCShortcutViewController__logLiveListenAnalytics__block_invoke(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = [a2 objectForKey:@"AXSHARoutePicked"];
  v3 = [v2 objectForKey:*MEMORY[0x277D12DD8]];
  v4 = v3;
  v12[0] = @"enabled";
  v12[1] = @"headset_model";
  v5 = @"Unknown";
  if (v3)
  {
    v5 = v3;
  }

  v13[0] = MEMORY[0x277CBEC38];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v7 = AXLogAggregate();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_252166000, v7, OS_LOG_TYPE_INFO, "Live listen enabled: %@", buf, 0xCu);
  }

  v9 = v6;
  v8 = v6;
  AnalyticsSendEventLazy();
}

- (AXHAShortcutUpdateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __64__HACCShortcutViewController_startListeningForHearingAidUpdates__block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2(&dword_252166000, a2, a3, "CCShortcutViewController: Current Hearing Device updated: %p %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)viewDidMoveToWindow:(NSObject *)a3 shouldAppearOrDisappear:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2(&dword_252166000, a2, a3, "CCShortcutViewController: viewDidMoveToWindow: %p window %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)viewDidMoveToWindow:shouldAppearOrDisappear:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)viewDidMoveToWindow:shouldAppearOrDisappear:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __81__HACCShortcutViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __81__HACCShortcutViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end