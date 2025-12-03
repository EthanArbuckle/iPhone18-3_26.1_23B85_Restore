@interface CCUIWiFiModuleViewController
- (CCUIConnectivityManager)connectivityManager;
- (CCUIContentModuleContext)contentModuleContext;
- (CCUIWiFiModuleViewController)initWithContentModuleContext:(id)context;
- (OS_dispatch_queue)queue;
- (UIMenu)contextMenu;
- (WFControlCenterStateMonitor)stateMonitor;
- (WFNetworkListDelegate)listDelegate;
- (id)_actionFromNetworkRecord:(id)record;
- (id)_debugDescriptionForState:(int64_t)state;
- (id)_displayName;
- (id)_glyphImageForState:(int64_t)state currentSignalBars:(id)bars forceSignalBars:(BOOL)signalBars network:(id)network applyConfiguration:(BOOL)configuration;
- (id)_subtitleTextWithState:(int64_t)state;
- (id)contextMenuPreviewForControlTemplateView:(id)view;
- (id)credentialsViewControllerWithContext:(id)context;
- (id)networkErrorViewControllerWithContext:(id)context;
- (int64_t)_currentState;
- (int64_t)_stateWithOverridesApplied:(int64_t)applied;
- (void)_presentAlertWithTitle:(id)title message:(id)message completion:(id)completion;
- (void)_serializeNetworkRecord:(id)record;
- (void)_startScanning;
- (void)_stopScanning;
- (void)_toggleState;
- (void)_updateGlyphImagesWithState:(int64_t)state;
- (void)_updateState;
- (void)_updateWiFiMenuItems;
- (void)_updateWithState:(int64_t)state;
- (void)buttonTapped:(id)tapped forEvent:(id)event;
- (void)contextMenuShouldPresentForControlTemplateView:(id)view withCompletion:(id)completion;
- (void)dealloc;
- (void)didBeginContextMenuPresentationForControlTemplateView:(id)view;
- (void)didEndContextMenuPresentationForControlTemplateView:(id)view;
- (void)didReceiveSBWifiSignalStrengthChanged:(id)changed;
- (void)setCurrentNetwork:(id)network;
- (void)setNetworks:(id)networks;
- (void)startObservingStateChanges;
- (void)startObservingStateChangesIfNecessary;
- (void)stopObservingStateChanges;
- (void)stopObservingStateChangesIfNecessary;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation CCUIWiFiModuleViewController

- (CCUIWiFiModuleViewController)initWithContentModuleContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = CCUIWiFiModuleViewController;
  v5 = [(CCUIWiFiModuleViewController *)&v14 init];
  if (v5)
  {
    v6 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v16 = v5;
      _os_log_impl(&dword_21E9F5000, v6, OS_LOG_TYPE_DEFAULT, "[WiFi Module] (%{public}p) Initialization", buf, 0xCu);
    }

    objc_storeWeak(&v5->_contentModuleContext, contextCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    contentMenuActions = v5->_contentMenuActions;
    v5->_contentMenuActions = v7;

    v9 = +[CCUIConnectivityManager sharedInstance];
    objc_storeWeak(&v5->_connectivityManager, v9);
    wifiStateMonitor = [v9 wifiStateMonitor];
    objc_storeWeak(&v5->_stateMonitor, wifiStateMonitor);

    connectedNetworkSignalStrengthBars = v5->_connectedNetworkSignalStrengthBars;
    v5->_connectedNetworkSignalStrengthBars = &unk_28302E430;

    wifiQueue = [v9 wifiQueue];
    objc_storeWeak(&v5->_queue, wifiQueue);
  }

  return v5;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&dword_21E9F5000, v3, OS_LOG_TYPE_DEFAULT, "[WiFi Module] (%{public}p) Dealloc", buf, 0xCu);
  }

  [(CCUIWiFiModuleViewController *)self stopObservingStateChangesIfNecessary];
  v4.receiver = self;
  v4.super_class = CCUIWiFiModuleViewController;
  [(CCUIWiFiModuleViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = CCUIWiFiModuleViewController;
  [(CCUIButtonModuleViewController *)&v18 viewDidLoad];
  v3 = [(CCUIWiFiModuleViewController *)self _glyphImageForState:4 currentSignalBars:self->_connectedNetworkSignalStrengthBars forceSignalBars:0 network:0 applyConfiguration:1];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v5 = [objc_alloc(MEMORY[0x277CFC9B0]) initWithGlyphImage:v3 highlightColor:systemBlueColor useLightStyle:1];
  [v5 setUseAutomaticSymbolColors:1];
  v6 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__glyphViewForExpandedConnectivityModuleTapped];
  [v5 addGestureRecognizer:v6];
  glyphViewForExpandedConnectivityModule = self->_glyphViewForExpandedConnectivityModule;
  self->_glyphViewForExpandedConnectivityModule = v5;
  v8 = v5;

  v9 = objc_alloc_init(MEMORY[0x277CFC978]);
  [v9 setCustomGlyphView:v8];
  [v9 setShowsMenuAsPrimaryAction:1];
  templateViewForExpandedConnectivityModule = self->_templateViewForExpandedConnectivityModule;
  self->_templateViewForExpandedConnectivityModule = v9;
  v11 = v9;

  _displayName = [(CCUIWiFiModuleViewController *)self _displayName];
  [(CCUIButtonModuleViewController *)self setTitle:_displayName];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setTitle:_displayName];
  v13 = [objc_alloc(MEMORY[0x277CFC9B0]) initWithGlyphImage:v3 highlightColor:systemBlueColor useLightStyle:1];
  [v13 setUseIndependentAlpha:1];
  [v13 setDynamicLayoutEnabled:1];
  [v13 setUseAutomaticSymbolColors:1];
  [v13 addTarget:self action:sel__buttonViewForCollapsedConnectivityModuleTapped forControlEvents:64];
  buttonViewForCollapsedConnectivityModule = self->_buttonViewForCollapsedConnectivityModule;
  self->_buttonViewForCollapsedConnectivityModule = v13;
  v15 = v13;

  systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];

  [(CCUIButtonModuleViewController *)self setSelectedGlyphColor:systemBlueColor2];
  _templateView = [(CCUIButtonModuleViewController *)self _templateView];
  [_templateView setContextMenuDelegate:self];
  [_templateView setShowsMenuAsPrimaryAction:0];
  [(CCUIWiFiModuleViewController *)self startObservingStateChangesIfNecessary];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = CCUIWiFiModuleViewController;
  [(CCUIWiFiModuleViewController *)&v4 viewIsAppearing:appearing];
  [(CCUIWiFiModuleViewController *)self _updateState];
}

- (void)startObservingStateChangesIfNecessary
{
  if (!self->_observingStateChanges)
  {
    [(CCUIWiFiModuleViewController *)self startObservingStateChanges];
  }
}

- (void)stopObservingStateChangesIfNecessary
{
  if (self->_observingStateChanges)
  {
    [(CCUIWiFiModuleViewController *)self stopObservingStateChanges];
  }
}

- (void)startObservingStateChanges
{
  self->_observingStateChanges = 1;
  connectivityManager = [(CCUIWiFiModuleViewController *)self connectivityManager];
  [connectivityManager addWiFiViewControllerObservingStateChanges:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_didReceiveSBWifiSignalStrengthChanged_ name:@"SBWifiSignalStrengthChangedNotification" object:0];
}

- (void)stopObservingStateChanges
{
  self->_observingStateChanges = 0;
  connectivityManager = [(CCUIWiFiModuleViewController *)self connectivityManager];
  [connectivityManager removeWiFiViewControllerObservingStateChanges:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBWifiSignalStrengthChangedNotification" object:0];
}

- (void)didReceiveSBWifiSignalStrengthChanged:(id)changed
{
  userInfo = [changed userInfo];
  obj = [userInfo objectForKeyedSubscript:@"SBWifiSignalStrengthChangedKey"];

  v5 = obj;
  if (obj && self->_connectedNetworkSignalStrengthBars != obj)
  {
    objc_storeStrong(&self->_connectedNetworkSignalStrengthBars, obj);
    [(CCUIWiFiModuleViewController *)self _updateState];
    v5 = obj;
  }
}

- (void)buttonTapped:(id)tapped forEvent:(id)event
{
  eventCopy = event;
  tappedCopy = tapped;
  [(CCUIWiFiModuleViewController *)self _toggleState];
  v8.receiver = self;
  v8.super_class = CCUIWiFiModuleViewController;
  [(CCUIButtonModuleViewController *)&v8 buttonTapped:tappedCopy forEvent:eventCopy];
}

- (UIMenu)contextMenu
{
  v3 = [MEMORY[0x277D75710] menuWithChildren:self->_contentMenuActions];
  v4 = MGGetBoolAnswer();
  v5 = @"CONTROL_CENTER_STATUS_WIFI_SETTINGS";
  if (v4)
  {
    v5 = @"CONTROL_CENTER_STATUS_WLAN_SETTINGS";
  }

  v6 = v5;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:v6 value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D750C8];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __43__CCUIWiFiModuleViewController_contextMenu__block_invoke;
  v15 = &unk_278381D78;
  objc_copyWeak(&v16, &location);
  v10 = [v9 actionWithTitle:v8 image:0 identifier:0 handler:&v12];
  [v3 _setPinnedFooterElement:{v10, v12, v13, v14, v15}];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v3;
}

void __43__CCUIWiFiModuleViewController_contextMenu__block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=WIFI"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained contentModuleContext];
  [v3 openURL:v4 completionHandler:0];
}

- (void)contextMenuShouldPresentForControlTemplateView:(id)view withCompletion:(id)completion
{
  completionCopy = completion;
  contentModuleContext = [(CCUIWiFiModuleViewController *)self contentModuleContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__CCUIWiFiModuleViewController_contextMenuShouldPresentForControlTemplateView_withCompletion___block_invoke;
  v8[3] = &unk_278381DA0;
  v9 = completionCopy;
  v7 = completionCopy;
  [contentModuleContext requestAuthenticationWithCompletionHandler:v8];
}

- (id)contextMenuPreviewForControlTemplateView:(id)view
{
  if (self->_templateViewForExpandedConnectivityModule == view)
  {
    v5 = 0;
  }

  else
  {
    view = [(CCUIWiFiModuleViewController *)self view];
    superview = [view superview];

    v5 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:superview];
  }

  return v5;
}

- (void)didBeginContextMenuPresentationForControlTemplateView:(id)view
{
  [(CCUIWiFiModuleViewController *)self _startScanning];
  if (![(CCUIWiFiModuleViewController *)self _enabledForState:[(CCUIWiFiModuleViewController *)self _stateWithOverridesApplied:[(CCUIWiFiModuleViewController *)self _currentState]]])
  {
    [(CCUIWiFiModuleViewController *)self _toggleState];
  }

  [(CCUIWiFiModuleViewController *)self _updateState];
}

- (void)didEndContextMenuPresentationForControlTemplateView:(id)view
{
  [(CCUIWiFiModuleViewController *)self _stopScanning];

  [(CCUIWiFiModuleViewController *)self _updateState];
}

- (id)_displayName
{
  v2 = MGGetBoolAnswer();
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    v5 = @"CONTROL_CENTER_STATUS_WLAN_NAME";
  }

  else
  {
    v5 = @"CONTROL_CENTER_STATUS_WIFI_NAME";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

  return v6;
}

- (void)_startScanning
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134349056;
    *(&buf + 4) = self;
    _os_log_impl(&dword_21E9F5000, v3, OS_LOG_TYPE_DEFAULT, "[WiFi Module] (%{public}p) Start scanning for networks", &buf, 0xCu);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = getWFNetworkListControllerClass_softClass;
  v13 = getWFNetworkListControllerClass_softClass;
  if (!getWFNetworkListControllerClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v15 = __getWFNetworkListControllerClass_block_invoke;
    v16 = &unk_2783822F8;
    v17 = &v10;
    __getWFNetworkListControllerClass_block_invoke(&buf);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  v6 = [[v4 alloc] initWithViewController:self viewProvider:self];
  wifiManager = self->_wifiManager;
  self->_wifiManager = v6;

  WeakRetained = objc_loadWeakRetained(&self->_queue);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CCUIWiFiModuleViewController__startScanning__block_invoke;
  block[3] = &unk_278381DF0;
  block[4] = self;
  dispatch_async(WeakRetained, block);

  [(CCUIWiFiModuleViewController *)self _updateWiFiMenuItems];
}

- (void)_stopScanning
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134349056;
    selfCopy = self;
    _os_log_impl(&dword_21E9F5000, v3, OS_LOG_TYPE_DEFAULT, "[WiFi Module] (%{public}p) Stop scanning for networks", &v7, 0xCu);
  }

  [(WFNetworkListController *)self->_wifiManager stopScanning];
  wifiManager = self->_wifiManager;
  self->_wifiManager = 0;

  networks = self->_networks;
  self->_networks = 0;

  WeakRetained = objc_loadWeakRetained(&self->_listDelegate);
  [WeakRetained networkListViewControllerDidFinish:self];
}

- (void)_toggleState
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(CCUIWiFiModuleViewController *)self _stateWithOverridesApplied:[(CCUIWiFiModuleViewController *)self _currentState]];
  v4 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(CCUIWiFiModuleViewController *)self _debugDescriptionForState:v3];
    *buf = 134349314;
    selfCopy = self;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_21E9F5000, v5, OS_LOG_TYPE_DEFAULT, "[WiFi Module] (%{public}p) Toggle WiFi state from %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_stateMonitor);
  linkQuality = [WeakRetained linkQuality];
  ssid = [linkQuality ssid];

  objc_initWeak(buf, self);
  v10 = objc_loadWeakRetained(&self->_stateMonitor);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__CCUIWiFiModuleViewController__toggleState__block_invoke;
  v12[3] = &unk_2783824F8;
  v12[4] = self;
  v14[1] = v3;
  v11 = ssid;
  v13 = v11;
  objc_copyWeak(v14, buf);
  [v10 performAction:v12];

  objc_destroyWeak(v14);
  objc_destroyWeak(buf);
}

void __44__CCUIWiFiModuleViewController__toggleState__block_invoke(uint64_t a1, void *a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CCUIWiFiModuleViewController__toggleState__block_invoke_2;
  block[3] = &unk_2783824D0;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = *(a1 + 56);
  v7[1] = a2;
  v7[2] = v4;
  v6 = v3;
  objc_copyWeak(v7, (a1 + 48));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v7);
}

void __44__CCUIWiFiModuleViewController__toggleState__block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _stateWithOverridesApplied:*(a1 + 56)];
  v3 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 64);
    v6 = v3;
    v7 = [v4 _debugDescriptionForState:v5];
    v8 = [*(a1 + 32) _debugDescriptionForState:v2];
    *buf = 134349570;
    v28 = v4;
    v29 = 2114;
    v30 = v7;
    v31 = 2114;
    v32 = v8;
    _os_log_impl(&dword_21E9F5000, v6, OS_LOG_TYPE_DEFAULT, "[WiFi Module] (%{public}p) Toggled WiFi state from %{public}@ to %{public}@", buf, 0x20u);
  }

  v9 = *(a1 + 64);
  if (v9 == 1)
  {
    if (v2 != 3)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (v9 == 2 && v2 == 3)
  {
LABEL_16:
    v18 = MGGetBoolAnswer();
    v19 = @"CONTROL_CENTER_STATUS_MESSAGE_WIFI_BUSY";
    v20 = @"CONTROL_CENTER_STATUS_MESSAGE_WLAN_BUSY";
LABEL_17:
    if (v18)
    {
      v19 = v20;
    }

    v21 = MEMORY[0x277CCA8D8];
    v22 = v19;
    v16 = [v21 bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:v22 value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

LABEL_20:
    if (v17)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v24 = [WeakRetained contentModuleContext];

      v25 = [MEMORY[0x277CFC9C8] statusUpdateWithMessage:v17 type:0];
      [v24 enqueueStatusUpdate:v25];
    }

    goto LABEL_22;
  }

  if (v9 == 3 && v2 == 4)
  {
    if (![*(a1 + 40) length])
    {
      goto LABEL_22;
    }

    v11 = MGGetBoolAnswer();
    v12 = @"CONTROL_CENTER_STATUS_MESSAGE_WIFI_CONNECTED";
    if (v11)
    {
      v12 = @"CONTROL_CENTER_STATUS_MESSAGE_WLAN_CONNECTED";
    }

    v13 = MEMORY[0x277CCA8D8];
    v14 = v12;
    v15 = [v13 bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:v14 value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:v16, *(a1 + 40)];
    goto LABEL_20;
  }

  if ((v9 == 3 || v9 == 4) && v2 == 2)
  {
    v18 = MGGetBoolAnswer();
    v19 = @"CONTROL_CENTER_STATUS_MESSAGE_WIFI_DISCONNECTED";
    v20 = @"CONTROL_CENTER_STATUS_MESSAGE_WLAN_DISCONNECTED";
    goto LABEL_17;
  }

LABEL_22:
  v26 = objc_loadWeakRetained((a1 + 48));
  [v26 _updateWithState:*(a1 + 56)];
}

- (void)_updateGlyphImagesWithState:(int64_t)state
{
  v6 = [(CCUIWiFiModuleViewController *)self _glyphImageForState:state currentSignalBars:self->_connectedNetworkSignalStrengthBars forceSignalBars:0 network:0 applyConfiguration:1];
  [(CCUIButtonModuleViewController *)self setGlyphImage:v6];
  buttonViewForCollapsedConnectivityModule = [(CCUIWiFiModuleViewController *)self buttonViewForCollapsedConnectivityModule];
  [buttonViewForCollapsedConnectivityModule setGlyphImage:v6];
  glyphViewForExpandedConnectivityModule = [(CCUIWiFiModuleViewController *)self glyphViewForExpandedConnectivityModule];
  [glyphViewForExpandedConnectivityModule setGlyphImage:v6];
}

- (void)_updateState
{
  _currentState = [(CCUIWiFiModuleViewController *)self _currentState];

  [(CCUIWiFiModuleViewController *)self _updateWithState:_currentState];
}

- (void)_updateWithState:(int64_t)state
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [(CCUIWiFiModuleViewController *)self _stateWithOverridesApplied:state];
  v5 = [(CCUIWiFiModuleViewController *)self _subtitleTextWithState:v4];
  [(CCUIButtonModuleViewController *)self setValueText:v5];
  [(CCUIButtonModuleViewController *)self setSelectedValueText:v5];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setSubtitle:v5];
  v6 = [(CCUIWiFiModuleViewController *)self _inoperativeForState:v4];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setEnabled:!v6];
  [(CCUIRoundButton *)self->_buttonViewForCollapsedConnectivityModule setEnabled:!v6];
  v7 = [(CCUIWiFiModuleViewController *)self _enabledForState:v4];
  [(CCUIButtonModuleViewController *)self setSelected:v7];
  [(CCUIRoundButton *)self->_glyphViewForExpandedConnectivityModule setSelected:v7];
  [(CCUIRoundButton *)self->_buttonViewForCollapsedConnectivityModule setSelected:v7];
  [(CCUIWiFiModuleViewController *)self _updateGlyphImagesWithState:v4];
  v8 = [(CCUIWiFiModuleViewController *)self _useAlternateSelectedBackgroundForState:v4];
  [(CCUIRoundButton *)self->_buttonViewForCollapsedConnectivityModule setUseAlternateBackground:v8];
  [(CCUIRoundButton *)self->_glyphViewForExpandedConnectivityModule setUseAlternateBackground:v8];
  [(CCUIWiFiModuleViewController *)self _updateWiFiMenuItems];
  v9 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(CCUIWiFiModuleViewController *)self _debugDescriptionForState:v4];
    v12 = 134350083;
    selfCopy = self;
    v14 = 2114;
    v15 = v11;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v7;
    v20 = 2113;
    v21 = v5;
    _os_log_impl(&dword_21E9F5000, v10, OS_LOG_TYPE_DEFAULT, "[WiFi Module] (%{public}p) State updated to %{public}@ [ inoperative: %d, enabled: %d, subtitle: %{private}@ ]", &v12, 0x2Cu);
  }
}

- (int64_t)_currentState
{
  WeakRetained = objc_loadWeakRetained(&self->_stateMonitor);
  state = [WeakRetained state];

  return state;
}

- (int64_t)_stateWithOverridesApplied:(int64_t)applied
{
  if (CCSIsInternalInstall())
  {
    v4 = +[CCUIControlCenterDefaults standardDefaults];
    shouldExcludeControlCenterFromStatusBarOverrides = [v4 shouldExcludeControlCenterFromStatusBarOverrides];

    if ((shouldExcludeControlCenterFromStatusBarOverrides & 1) == 0)
    {
      getStatusBarOverrideData = [MEMORY[0x277D75A98] getStatusBarOverrideData];
      if (*(getStatusBarOverrideData + 9) == 1)
      {
        if ((*(getStatusBarOverrideData + 2160) - 5) >= 2)
        {
          return 2;
        }

        else
        {
          return 4;
        }
      }
    }
  }

  return applied;
}

- (id)credentialsViewControllerWithContext:(id)context
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=WIFI&path=Credentials"];
  contentModuleContext = [(CCUIWiFiModuleViewController *)self contentModuleContext];
  [contentModuleContext openURL:v4 completionHandler:0];

  return 0;
}

- (id)networkErrorViewControllerWithContext:(id)context
{
  error = [context error];
  localizedDescription = [error localizedDescription];
  localizedRecoverySuggestion = [error localizedRecoverySuggestion];
  [(CCUIWiFiModuleViewController *)self _presentAlertWithTitle:localizedDescription message:localizedRecoverySuggestion completion:0];

  return 0;
}

- (void)setCurrentNetwork:(id)network
{
  networkCopy = network;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CCUIWiFiModuleViewController *)a2 setCurrentNetwork:?];
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_currentNetwork, network);
    [(CCUIWiFiModuleViewController *)self _updateWiFiMenuItems];
  }
}

- (void)setNetworks:(id)networks
{
  networksCopy = networks;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CCUIWiFiModuleViewController *)a2 setNetworks:?];
  }

  allObjects = [networksCopy allObjects];
  v7 = [allObjects bs_filter:&__block_literal_global_5];

  if (self->_currentNetwork)
  {
    v8 = [v7 arrayByAddingObject:?];

    v7 = v8;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v9 = getWFScanRecordAlphaSortCompartorSymbolLoc_ptr;
  v18 = getWFScanRecordAlphaSortCompartorSymbolLoc_ptr;
  if (!getWFScanRecordAlphaSortCompartorSymbolLoc_ptr)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __getWFScanRecordAlphaSortCompartorSymbolLoc_block_invoke;
    v14[3] = &unk_2783822F8;
    v14[4] = &v15;
    __getWFScanRecordAlphaSortCompartorSymbolLoc_block_invoke(v14);
    v9 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v9)
  {
    [CCUIWiFiModuleViewController setNetworks:];
  }

  v10 = v9();
  v11 = [v7 sortedArrayUsingComparator:v10];

  if ((BSEqualObjects() & 1) == 0)
  {
    v12 = [v11 copy];
    networks = self->_networks;
    self->_networks = v12;

    [(CCUIWiFiModuleViewController *)self _updateWiFiMenuItems];
  }
}

- (void)_updateWiFiMenuItems
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"CCUIWiFiModuleViewController.m" lineNumber:560 description:@"This must be called on the main thread"];
}

- (id)_actionFromNetworkRecord:(id)record
{
  recordCopy = record;
  ssid = [recordCopy ssid];
  signalBars = [recordCopy signalBars];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:signalBars];
  v8 = [(CCUIWiFiModuleViewController *)self _glyphImageForState:3 currentSignalBars:v7 forceSignalBars:1 network:recordCopy applyConfiguration:0];
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D750C8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__CCUIWiFiModuleViewController__actionFromNetworkRecord___block_invoke;
  v13[3] = &unk_278381E40;
  objc_copyWeak(&v15, &location);
  v10 = recordCopy;
  v14 = v10;
  v11 = [v9 actionWithTitle:ssid image:v8 identifier:0 handler:v13];
  [v11 setState:{-[WFNetworkListRecord isEqual:](self->_currentNetwork, "isEqual:", v10)}];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v11;
}

void __57__CCUIWiFiModuleViewController__actionFromNetworkRecord___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained currentNetwork];
  if (([v2 isEqual:*(a1 + 32)] & 1) == 0)
  {
    [WeakRetained _updateWiFiMenuItems];
    [WeakRetained _serializeNetworkRecord:*(a1 + 32)];
    v3 = [WeakRetained listDelegate];
    [v3 networkListViewController:WeakRetained didTapRecord:*(a1 + 32)];
  }
}

- (void)_serializeNetworkRecord:(id)record
{
  attributes = [record attributes];
  stringByExpandingTildeInPath = [@"~/Library/Caches/com.apple.wifi" stringByExpandingTildeInPath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:stringByExpandingTildeInPath];

  if ((v6 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v7 = objc_claimAutoreleasedReturnValue(), v10 = 0, v8 = objc_msgSend(v7, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", stringByExpandingTildeInPath, 0, 0, &v10), v7, v8))
  {
    v9 = [stringByExpandingTildeInPath stringByAppendingPathComponent:@"LastEnterpriseNetwork.plist"];
    [attributes writeToFile:v9 atomically:0];
  }
}

- (id)_subtitleTextWithState:(int64_t)state
{
  if (state > 3)
  {
    if (state != 5)
    {
      if (state == 4)
      {
        WeakRetained = objc_loadWeakRetained(&self->_stateMonitor);
        linkQuality = [WeakRetained linkQuality];
        ssid = [linkQuality ssid];

        if ([ssid length])
        {
          goto LABEL_20;
        }

        v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = [v4 localizedStringForKey:@"CONTROL_CENTER_STATUS_WIFI_ON" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

        ssid = v9;
        goto LABEL_19;
      }

      goto LABEL_12;
    }

LABEL_10:
    v10 = MGGetBoolAnswer();
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v10)
    {
      v5 = @"CONTROL_CENTER_STATUS_WLAN_DISCONNECTED";
    }

    else
    {
      v5 = @"CONTROL_CENTER_STATUS_WIFI_DISCONNECTED";
    }

    goto LABEL_17;
  }

  if (state == 2)
  {
    goto LABEL_10;
  }

  if (state != 3)
  {
LABEL_12:
    if (state > 1)
    {
      ssid = 0;
      goto LABEL_20;
    }

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v11;
    v5 = @"CONTROL_CENTER_STATUS_WIFI_OFF";
    goto LABEL_18;
  }

  v3 = MGGetBoolAnswer();
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v3)
  {
    v5 = @"CONTROL_CENTER_STATUS_WLAN_BUSY";
  }

  else
  {
    v5 = @"CONTROL_CENTER_STATUS_WIFI_BUSY";
  }

LABEL_17:
  v11 = v4;
LABEL_18:
  ssid = [v11 localizedStringForKey:v5 value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];
LABEL_19:

LABEL_20:

  return ssid;
}

- (id)_glyphImageForState:(int64_t)state currentSignalBars:(id)bars forceSignalBars:(BOOL)signalBars network:(id)network applyConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  signalBarsCopy = signalBars;
  barsCopy = bars;
  networkCopy = network;
  v14 = networkCopy;
  if (state > 5)
  {
    v15 = 0;
  }

  else if (((1 << state) & 0x1C) != 0)
  {
    v15 = @"wifi";
    if (networkCopy)
    {
      isSecure = [networkCopy isSecure];
      v17 = @"wifi.badge.lock";
      if (!isSecure)
      {
        v17 = @"wifi";
      }

      v15 = v17;
    }
  }

  else
  {
    v15 = @"wifi.slash";
  }

  if (state == 4 || (v18 = 3.0, signalBarsCopy))
  {
    [barsCopy floatValue];
    v18 = v24 / 3.0;
    if (configurationCopy)
    {
      goto LABEL_12;
    }
  }

  else if (configurationCopy)
  {
LABEL_12:
    contentMetrics = [(CCUIButtonModuleViewController *)self contentMetrics];
    symbolConfiguration = [contentMetrics symbolConfiguration];
    if ([(CCUIButtonModuleViewController *)self contentRenderingMode]== 1)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    v22 = [MEMORY[0x277D755D0] configurationWithScale:v21];
    v23 = [symbolConfiguration configurationByApplyingConfiguration:v22];

    goto LABEL_18;
  }

  v23 = 0;
LABEL_18:
  v25 = [MEMORY[0x277D755B8] systemImageNamed:v15 variableValue:v23 withConfiguration:v18];
  imageFlippedForRightToLeftLayoutDirection = [v25 imageFlippedForRightToLeftLayoutDirection];

  return imageFlippedForRightToLeftLayoutDirection;
}

- (id)_debugDescriptionForState:(int64_t)state
{
  if ((state - 1) > 4)
  {
    return @"unavailable";
  }

  else
  {
    return off_278382588[state - 1];
  }
}

- (void)_presentAlertWithTitle:(id)title message:(id)message completion:(id)completion
{
  v8 = MEMORY[0x277D75110];
  completionCopy = completion;
  v13 = [v8 alertControllerWithTitle:title message:message preferredStyle:1];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CONTROL_CENTER_ALERT_OK" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

  v12 = [MEMORY[0x277D750F8] actionWithTitle:v11 style:0 handler:0];
  [v13 addAction:v12];

  [(CCUIWiFiModuleViewController *)self presentViewController:v13 animated:1 completion:completionCopy];
}

- (WFNetworkListDelegate)listDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_listDelegate);

  return WeakRetained;
}

- (WFControlCenterStateMonitor)stateMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_stateMonitor);

  return WeakRetained;
}

- (OS_dispatch_queue)queue
{
  WeakRetained = objc_loadWeakRetained(&self->_queue);

  return WeakRetained;
}

- (CCUIConnectivityManager)connectivityManager
{
  WeakRetained = objc_loadWeakRetained(&self->_connectivityManager);

  return WeakRetained;
}

- (CCUIContentModuleContext)contentModuleContext
{
  WeakRetained = objc_loadWeakRetained(&self->_contentModuleContext);

  return WeakRetained;
}

- (void)setCurrentNetwork:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CCUIWiFiModuleViewController.m" lineNumber:519 description:@"This must be called on the main thread"];
}

- (void)setNetworks:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CCUIWiFiModuleViewController.m" lineNumber:528 description:@"This must be called on the main thread"];
}

- (void)setNetworks:.cold.2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSComparator _WFScanRecordAlphaSortCompartor(void)"];
  [v0 handleFailureInFunction:v1 file:@"CCUIWiFiModuleViewController.m" lineNumber:44 description:{@"%s", dlerror()}];

  __break(1u);
}

@end