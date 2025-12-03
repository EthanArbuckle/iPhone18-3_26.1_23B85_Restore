@interface DBInstrumentCluster
- (CGRect)sceneFrameForApplication:(id)application;
- (DBInstrumentCluster)initWithRootScene:(id)scene environmentConfiguration:(id)configuration defaultSceneWorkspaceIdentifier:(id)identifier;
- (DBInstrumentClusterThemeDelegate)clusterThemeDelegate;
- (FBSDisplayConfiguration)displayConfiguration;
- (FBSDisplayIdentity)displayIdentity;
- (UIEdgeInsets)_rootViewControllerInsets;
- (UIEdgeInsets)safeAreaInsetsForApplication:(id)application;
- (id)_clusterBackgroundColorForStyle:(int64_t)style;
- (id)_takeSnapshotOfFrame:(CGRect)frame;
- (id)clusterThemeService:(id)service didSetThemeData:(id)data;
- (id)focusWindow;
- (id)sceneIdentifierForApplication:(id)application;
- (int64_t)sceneInterfaceStyleForApplication:(id)application proxyApplication:(id)proxyApplication;
- (void)_setAirPlayCornerMaskImageDataIfNeeded;
- (void)_startUpdatingAppearanceWithUserInterfaceStyle:(int64_t)style;
- (void)_updateAppearanceWithUserInterfaceStyle:(int64_t)style;
- (void)_updateWallpaper;
- (void)acquireFocus;
- (void)environmentConfiguration:(double)configuration viewAreaDidChangeFromViewAreaFrame:(double)frame safeAreaInsets:(double)insets toViewAreaFrame:(uint64_t)areaFrame safeAreaInsets:(void *)areaInsets duration:(double)duration transitionControlType:(double)type;
- (void)environmentConfiguration:(id)configuration appearanceStyleDidChange:(int64_t)change;
- (void)environmentConfiguration:(id)configuration nightModeDidChange:(BOOL)change;
- (void)handleConnect;
- (void)invalidate;
- (void)navigationStateProvider:(id)provider frontmostIdentifierDidChange:(id)change;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)releaseFocus;
- (void)setupFocusRulesForDisplayWithConfiguration:(id)configuration;
- (void)setupSystemRulesForDisplayWithConfiguration:(id)configuration;
@end

@implementation DBInstrumentCluster

- (DBInstrumentCluster)initWithRootScene:(id)scene environmentConfiguration:(id)configuration defaultSceneWorkspaceIdentifier:(id)identifier
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = DBInstrumentCluster;
  v9 = [(DBScreenController *)&v12 initWithRootScene:scene environmentConfiguration:configurationCopy defaultSceneWorkspaceIdentifier:identifier];
  if (v9)
  {
    navigationStateProvider = [configurationCopy navigationStateProvider];
    [navigationStateProvider addObserver:v9];
  }

  return v9;
}

- (void)handleConnect
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_fault_impl(&dword_248146000, a2, OS_LOG_TYPE_FAULT, "Unexpected nil hardware identifier for instrument cluster display configuration: %{public}@", &v2, 0xCu);
}

- (void)setupFocusRulesForDisplayWithConfiguration:(id)configuration
{
  v33[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = MEMORY[0x277CF0698];
  configurationCopy = configuration;
  hardwareIdentifier = [configurationCopy hardwareIdentifier];
  v8 = [v5 displayWithHardwareIdentifier:hardwareIdentifier];
  v9 = [v4 setWithObject:v8];

  defaultFocusPredicate = [MEMORY[0x277CF0750] defaultFocusPredicate];
  [defaultFocusPredicate setDisplays:v9];
  v11 = MEMORY[0x277CF0688];
  keyboardFocusTarget = [MEMORY[0x277CF0690] keyboardFocusTarget];
  v13 = [v11 ruleForDispatchingDiscreteEventsMatchingPredicate:defaultFocusPredicate toTarget:keyboardFocusTarget];

  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = [MEMORY[0x277CF06B8] descriptorWithPage:12 usage:64];
  [v14 addObject:v15];

  v16 = [MEMORY[0x277CF06B8] descriptorWithPage:12 usage:65];
  [v14 addObject:v16];

  v17 = [MEMORY[0x277CF06B8] descriptorWithPage:12 usage:66];
  [v14 addObject:v17];

  v18 = [MEMORY[0x277CF06B8] descriptorWithPage:12 usage:67];
  [v14 addObject:v18];

  v19 = [MEMORY[0x277CF06B8] descriptorWithPage:12 usage:68];
  [v14 addObject:v19];

  v20 = [MEMORY[0x277CF06B8] descriptorWithPage:12 usage:69];
  [v14 addObject:v20];

  v21 = [MEMORY[0x277CF06B8] descriptorWithPage:12 usage:562];
  [v14 addObject:v21];

  v22 = objc_alloc_init(MEMORY[0x277CF0750]);
  [v22 setDescriptors:v14];
  [v22 setDisplays:v9];
  v23 = MEMORY[0x277CF0688];
  keyboardFocusTarget2 = [MEMORY[0x277CF0690] keyboardFocusTarget];
  v25 = [v23 ruleForDispatchingDiscreteEventsMatchingPredicate:v22 toTarget:keyboardFocusTarget2];

  v26 = MEMORY[0x277CCACA8];
  identity = [configurationCopy identity];

  v28 = [v26 stringWithFormat:@"InstrumentCluster-Focus-%@", identity];

  mEMORY[0x277CF0668] = [MEMORY[0x277CF0668] sharedInstance];
  v33[0] = v13;
  v33[1] = v25;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v31 = [mEMORY[0x277CF0668] dispatchDiscreteEventsForReason:v28 withRules:v30];
  dispatchingFocusAssertion = self->_dispatchingFocusAssertion;
  self->_dispatchingFocusAssertion = v31;
}

- (void)setupSystemRulesForDisplayWithConfiguration:(id)configuration
{
  v33[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = MEMORY[0x277CF0698];
  configurationCopy = configuration;
  hardwareIdentifier = [configurationCopy hardwareIdentifier];
  v8 = [v5 displayWithHardwareIdentifier:hardwareIdentifier];
  v9 = [v4 setWithObject:v8];

  defaultSystemPredicate = [MEMORY[0x277CF0750] defaultSystemPredicate];
  [defaultSystemPredicate setDisplays:v9];
  v10 = MEMORY[0x277CF0688];
  systemTarget = [MEMORY[0x277CF0690] systemTarget];
  v12 = [v10 ruleForDispatchingDiscreteEventsMatchingPredicate:defaultSystemPredicate toTarget:systemTarget];

  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = [MEMORY[0x277CF06B8] descriptorWithPage:12 usage:548];
  [v13 addObject:v14];

  v15 = [MEMORY[0x277CF06B8] descriptorWithPage:12 usage:562];
  [v13 addObject:v15];

  v16 = [MEMORY[0x277CF0680] descriptorWithEventType:17];
  [v13 addObject:v16];

  v17 = objc_alloc_init(MEMORY[0x277CF0750]);
  [v17 setDescriptors:v13];
  [v17 setDisplays:v9];
  v18 = MEMORY[0x277CF0688];
  systemTarget2 = [MEMORY[0x277CF0690] systemTarget];
  v20 = [v18 ruleForDispatchingDiscreteEventsMatchingPredicate:v17 toTarget:systemTarget2];

  v21 = MEMORY[0x277CCACA8];
  identity = [configurationCopy identity];

  v23 = [v21 stringWithFormat:@"InstrumentCluster-System-%@", identity];

  mEMORY[0x277CF0668] = [MEMORY[0x277CF0668] sharedInstance];
  v33[0] = v12;
  v33[1] = v20;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v26 = [mEMORY[0x277CF0668] dispatchDiscreteEventsForReason:v23 withRules:v25];
  dispatchingSystemAssertion = self->_dispatchingSystemAssertion;
  self->_dispatchingSystemAssertion = v26;

  v28 = [objc_alloc(MEMORY[0x277D75548]) initWithTarget:self action:sel__nullGestureHandler_];
  [v28 setEnabled:0];
  mEMORY[0x277D76330] = [MEMORY[0x277D76330] sharedInstance];
  displayConfiguration = [(DBInstrumentCluster *)self displayConfiguration];
  identity2 = [displayConfiguration identity];
  [mEMORY[0x277D76330] addGestureRecognizer:v28 toDisplayWithIdentity:identity2];
}

- (void)_setAirPlayCornerMaskImageDataIfNeeded
{
  v19 = *MEMORY[0x277D85DE8];
  screenInfo = [(DBScreenController *)self screenInfo];
  wantsCornerMasks = [screenInfo wantsCornerMasks];

  environmentConfiguration = DBLogForCategory(0xAuLL);
  v6 = os_log_type_enabled(environmentConfiguration, OS_LOG_TYPE_DEFAULT);
  if (wantsCornerMasks)
  {
    if (v6)
    {
      screenInfo2 = [(DBScreenController *)self screenInfo];
      identifier = [screenInfo2 identifier];
      v17 = 138412290;
      v18 = identifier;
      _os_log_impl(&dword_248146000, environmentConfiguration, OS_LOG_TYPE_DEFAULT, "Cluster screen %@ is requesting corner masks", &v17, 0xCu);
    }

    currentCornerRadius = self->_currentCornerRadius;
    environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
    [environmentConfiguration screenScale];
    v11 = DBAirPlayCornerMaskImageData(1, currentCornerRadius, v10);
  }

  else
  {
    if (v6)
    {
      screenInfo3 = [(DBScreenController *)self screenInfo];
      identifier2 = [screenInfo3 identifier];
      v17 = 138412290;
      v18 = identifier2;
      _os_log_impl(&dword_248146000, environmentConfiguration, OS_LOG_TYPE_DEFAULT, "Cluster screen %@ is not requesting corner masks", &v17, 0xCu);
    }

    v11 = 0;
  }

  environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
  session = [environmentConfiguration2 session];
  screenInfo4 = [(DBScreenController *)self screenInfo];
  [session setCornerMaskImageData:v11 forScreenInfo:screenInfo4];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"CARClusterCornerRadius"] && !-[DBInstrumentCluster isGaugeCluster](self, "isGaugeCluster"))
  {
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    [v13 floatValue];
    self->_currentCornerRadius = v14;

    cornerRadiusWindow = [(DBScreenController *)self cornerRadiusWindow];
    [cornerRadiusWindow setCornerRadius:self->_currentCornerRadius];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = DBInstrumentCluster;
    [(DBInstrumentCluster *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id)focusWindow
{
  focusController = [(DBInstrumentCluster *)self focusController];
  focusWindow = [focusController focusWindow];

  return focusWindow;
}

- (FBSDisplayIdentity)displayIdentity
{
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  displayIdentity = [environmentConfiguration displayIdentity];

  return displayIdentity;
}

- (FBSDisplayConfiguration)displayConfiguration
{
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  displayConfiguration = [environmentConfiguration displayConfiguration];

  return displayConfiguration;
}

- (id)sceneIdentifierForApplication:(id)application
{
  v4 = MEMORY[0x277CCACA8];
  applicationCopy = application;
  displayIdentity = [(DBInstrumentCluster *)self displayIdentity];
  bundleIdentifier = [applicationCopy bundleIdentifier];

  v8 = [v4 stringWithFormat:@"%@:%@", displayIdentity, bundleIdentifier];

  return v8;
}

- (CGRect)sceneFrameForApplication:(id)application
{
  presentsFullScreen = [application presentsFullScreen];
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  v6 = environmentConfiguration;
  if (presentsFullScreen)
  {
    displayConfiguration = [environmentConfiguration displayConfiguration];
    [displayConfiguration bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    [environmentConfiguration currentViewAreaFrame];
    v13 = v16;
    v15 = v17;

    v9 = *MEMORY[0x277CBF348];
    v11 = *(MEMORY[0x277CBF348] + 8);
  }

  v18 = v9;
  v19 = v11;
  v20 = v13;
  v21 = v15;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (UIEdgeInsets)safeAreaInsetsForApplication:(id)application
{
  if ([application presentsFullScreen])
  {
    v4 = *MEMORY[0x277D768C8];
    v5 = *(MEMORY[0x277D768C8] + 8);
    v6 = *(MEMORY[0x277D768C8] + 16);
    v7 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
    [environmentConfiguration currentViewAreaSafeAreaInsets];
    v4 = v9;
    v5 = v10;
    v6 = v11;
    v7 = v12;
  }

  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (int64_t)sceneInterfaceStyleForApplication:(id)application proxyApplication:(id)proxyApplication
{
  v4 = [(DBScreenController *)self environmentConfiguration:application];
  resolvedUserInterfaceStyle = [v4 resolvedUserInterfaceStyle];

  return resolvedUserInterfaceStyle;
}

- (void)invalidate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  gaugeClusterRootViewController = [(DBInstrumentCluster *)self gaugeClusterRootViewController];
  [gaugeClusterRootViewController invalidate];

  rootViewController = [(DBInstrumentCluster *)self rootViewController];
  [rootViewController invalidate];

  [(DBInstrumentClusterWorkspaceOwner *)self->_workspaceOwner invalidate];
  [(DBWorkspace *)self->_workspace invalidate];
  [(DBInstrumentClusterWindow *)self->_clusterWindow setHidden:1];
  clusterWindow = self->_clusterWindow;
  self->_clusterWindow = 0;

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObserver:self forKeyPath:@"CARClusterCornerRadius"];

  [(BSInvalidatable *)self->_dispatchingFocusAssertion invalidate];
  dispatchingFocusAssertion = self->_dispatchingFocusAssertion;
  self->_dispatchingFocusAssertion = 0;

  [(BSInvalidatable *)self->_dispatchingSystemAssertion invalidate];
  dispatchingSystemAssertion = self->_dispatchingSystemAssertion;
  self->_dispatchingSystemAssertion = 0;

  focusController = [(DBInstrumentCluster *)self focusController];
  [focusController invalidate];

  v11.receiver = self;
  v11.super_class = DBInstrumentCluster;
  [(DBScreenController *)&v11 invalidate];
}

- (void)acquireFocus
{
  clusterFocusAssertion = [(DBInstrumentCluster *)self clusterFocusAssertion];

  if (!clusterFocusAssertion)
  {
    focusController = [(DBInstrumentCluster *)self focusController];
    v5 = [focusController deferFocusToWindow:self->_clusterWindow priority:0 reason:@"ClusterFocus"];

    [(DBInstrumentCluster *)self setClusterFocusAssertion:v5];
  }
}

- (void)releaseFocus
{
  clusterFocusAssertion = [(DBInstrumentCluster *)self clusterFocusAssertion];
  [clusterFocusAssertion invalidate];

  [(DBInstrumentCluster *)self setClusterFocusAssertion:0];
}

- (id)clusterThemeService:(id)service didSetThemeData:(id)data
{
  dataCopy = data;
  clusterThemeDelegate = [(DBInstrumentCluster *)self clusterThemeDelegate];
  v10 = 0;
  [clusterThemeDelegate setThemeData:dataCopy error:&v10];

  v7 = v10;
  v8 = v10;

  return v7;
}

- (void)environmentConfiguration:(double)configuration viewAreaDidChangeFromViewAreaFrame:(double)frame safeAreaInsets:(double)insets toViewAreaFrame:(uint64_t)areaFrame safeAreaInsets:(void *)areaInsets duration:(double)duration transitionControlType:(double)type
{
  v54[2] = *MEMORY[0x277D85DE8];
  areaInsetsCopy = areaInsets;
  if ([self isGaugeCluster])
  {
    v27 = DBLogForCategory(0xAuLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [DBInstrumentCluster environmentConfiguration:v27 viewAreaDidChangeFromViewAreaFrame:? safeAreaInsets:? toViewAreaFrame:? safeAreaInsets:? duration:? transitionControlType:?];
    }
  }

  else if (*&a25 <= 0.0)
  {
    interestingWindow = [self interestingWindow];
    [interestingWindow setFrame:{*&a17, *&a18, *&a19, *&a20}];

    cornerRadiusWindow = [self cornerRadiusWindow];
    [cornerRadiusWindow setFrame:{*&a17, *&a18, *&a19, *&a20}];

    rootViewController = [self rootViewController];
    [rootViewController updateViewAreaFrame:*&a17 safeAreaInsets:{*&a18, *&a19, *&a20, a21, a22, a23, a24}];
  }

  else
  {
    v28 = [_TtC9DashBoard14DBResizeWindow alloc];
    windowScene = [self windowScene];
    environmentConfiguration = [self environmentConfiguration];
    displayConfiguration = [environmentConfiguration displayConfiguration];
    [displayConfiguration bounds];
    v32 = [(DBResizeWindow *)v28 initWithWindowScene:windowScene frame:?];

    [(DBResizeWindow *)v32 setHidden:0];
    [self setResizeWindow:v32];
    v33 = [self _takeSnapshotOfFrame:{a2, configuration, frame, insets}];
    [v33 setAutoresizingMask:18];
    insets = [[_TtC9DashBoard15DBAnimationView alloc] initWithFrame:a2, configuration, frame, insets];
    [(DBAnimationView *)insets setClipsToBounds:1];
    [(DBResizeWindow *)v32 addSubview:insets];
    [(DBAnimationView *)insets setAutoresizingMask:18];
    v54[0] = @"filters.gaussianBlur.inputRadius";
    v54[1] = @"filters.saturation.inputAmount";
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
    [(DBAnimationView *)insets setKeysToAnimate:v35];

    v36 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v36 setName:@"gaussianBlur"];
    [v36 setValue:&unk_285AA4B08 forKey:@"inputRadius"];
    [v36 setValue:MEMORY[0x277CBEC38] forKey:@"inputHardEdges"];
    v37 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2D0]];
    [v37 setName:@"saturation"];
    [v37 setValue:&unk_285AA4B18 forKey:@"inputAmount"];
    layer = [(DBAnimationView *)insets layer];
    v53[0] = v36;
    v53[1] = v37;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
    [layer setFilters:v39];

    [(DBAnimationView *)insets addSubview:v33];
    [(DBAnimationView *)insets bounds];
    [v33 setFrame:?];
    [MEMORY[0x277CD9FF0] commit];
    rootViewController2 = [self rootViewController];
    [rootViewController2 updateViewAreaFrame:*&a17 safeAreaInsets:{*&a18, *&a19, *&a20, a21, a22, a23, a24}];

    objc_initWeak(&location, self);
    v41 = MEMORY[0x277D75D18];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __160__DBInstrumentCluster_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke;
    v50[3] = &unk_278F01580;
    v42 = insets;
    v51 = v42;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __160__DBInstrumentCluster_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_257;
    v47[3] = &unk_278F02A30;
    objc_copyWeak(v49, &location);
    v49[1] = a17;
    v49[2] = a18;
    v49[3] = a19;
    v49[4] = a20;
    v43 = v42;
    v48 = v43;
    v49[5] = a25;
    [v41 animateWithDuration:v50 animations:v47 completion:0.25];

    objc_destroyWeak(v49);
    objc_destroyWeak(&location);
  }
}

void __160__DBInstrumentCluster_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setValue:&unk_285AA4B28 forKeyPath:@"filters.saturation.inputAmount"];

  v3 = [*(a1 + 32) layer];
  [v3 setValue:&unk_285AA4B38 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

void __160__DBInstrumentCluster_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_257(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [MEMORY[0x277CD9FF0] commit];
  v3 = [WeakRetained _takeSnapshotOfFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [v3 setAutoresizingMask:18];
  [v3 setAlpha:0.0];
  [*(a1 + 32) addSubview:v3];
  [*(a1 + 32) bounds];
  [v3 setFrame:?];
  v4 = MEMORY[0x277D75D18];
  v5 = *(a1 + 80);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __160__DBInstrumentCluster_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_2;
  v11[3] = &unk_278F029E0;
  objc_copyWeak(&v14, (a1 + 40));
  v12 = *(a1 + 32);
  v6 = *(a1 + 64);
  v15 = *(a1 + 48);
  v16 = v6;
  v7 = v3;
  v13 = v7;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __160__DBInstrumentCluster_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_3;
  v8[3] = &unk_278F02A08;
  objc_copyWeak(&v10, (a1 + 40));
  v9 = *(a1 + 32);
  [v4 animateWithDuration:0x20000 delay:v11 usingSpringWithDamping:v8 initialSpringVelocity:v5 options:0.0 animations:100.0 completion:0.0];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v14);
}

void __160__DBInstrumentCluster_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [*(a1 + 32) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = [WeakRetained interestingWindow];
  [v2 setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];

  v3 = [WeakRetained cornerRadiusWindow];
  [v3 setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];

  [*(a1 + 40) setAlpha:1.0];
}

void __160__DBInstrumentCluster_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained rootViewController];
  v4 = [v3 view];
  [v4 setHidden:0];

  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __160__DBInstrumentCluster_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_4;
  v7[3] = &unk_278F01580;
  v8 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __160__DBInstrumentCluster_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_5;
  v6[3] = &unk_278F01690;
  v6[4] = WeakRetained;
  [v5 animateWithDuration:v7 animations:v6 completion:0.25];
}

void __160__DBInstrumentCluster_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setValue:&unk_285AA4B18 forKeyPath:@"filters.saturation.inputAmount"];

  v3 = [*(a1 + 32) layer];
  [v3 setValue:&unk_285AA4B08 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (UIEdgeInsets)_rootViewControllerInsets
{
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  [environmentConfiguration currentViewAreaFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
  displayConfiguration = [environmentConfiguration2 displayConfiguration];
  [displayConfiguration bounds];
  v15 = v14;
  rect = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v32.origin.x = v5;
  v32.origin.y = v7;
  v32.size.width = v9;
  v32.size.height = v11;
  rect_16 = CGRectGetMinY(v32);
  v33.origin.x = v5;
  v33.origin.y = v7;
  v33.size.width = v9;
  v33.size.height = v11;
  rect_8 = CGRectGetMinX(v33);
  v34.origin.x = v15;
  v34.origin.y = v17;
  v34.size.width = v19;
  v34.size.height = v21;
  MaxY = CGRectGetMaxY(v34);
  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  v23 = MaxY - CGRectGetMaxY(v35);
  v36.origin.x = rect;
  v36.origin.y = v17;
  v36.size.width = v19;
  v36.size.height = v21;
  MaxX = CGRectGetMaxX(v36);
  v37.origin.x = v5;
  v37.origin.y = v7;
  v37.size.width = v9;
  v37.size.height = v11;
  v25 = MaxX - CGRectGetMaxX(v37);
  v27 = rect_8;
  v26 = rect_16;
  v28 = v23;
  result.right = v25;
  result.bottom = v28;
  result.left = v27;
  result.top = v26;
  return result;
}

- (void)environmentConfiguration:(id)configuration appearanceStyleDidChange:(int64_t)change
{
  v5 = [(DBScreenController *)self environmentConfiguration:configuration];
  -[DBInstrumentCluster _startUpdatingAppearanceWithUserInterfaceStyle:](self, "_startUpdatingAppearanceWithUserInterfaceStyle:", [v5 resolvedUserInterfaceStyle]);
}

- (void)_startUpdatingAppearanceWithUserInterfaceStyle:(int64_t)style
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = DBLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CPUIDescriptionForUserInterfaceStyle();
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Initiating appearance style change: %@", buf, 0xCu);
  }

  if (self->_gaugeClusterRootViewController)
  {
    objc_initWeak(buf, self);
    gaugeClusterRootViewController = self->_gaugeClusterRootViewController;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__DBInstrumentCluster__startUpdatingAppearanceWithUserInterfaceStyle___block_invoke;
    v8[3] = &unk_278F02A58;
    objc_copyWeak(&v9, buf);
    [(DBGaugeClusterRootViewController *)gaugeClusterRootViewController startAppearanceUpdate:style completion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }

  else
  {
    [(DBInstrumentCluster *)self _updateAppearanceWithUserInterfaceStyle:style];
  }
}

void __70__DBInstrumentCluster__startUpdatingAppearanceWithUserInterfaceStyle___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAppearanceWithUserInterfaceStyle:a2];
}

- (void)_updateAppearanceWithUserInterfaceStyle:(int64_t)style
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = DBLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CPUIDescriptionForUserInterfaceStyle();
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Appearance style changed: %@", buf, 0xCu);
  }

  rootScene = [(DBScreenController *)self rootScene];
  uiSettings = [rootScene uiSettings];
  userInterfaceStyle = [uiSettings userInterfaceStyle];

  if (userInterfaceStyle != style)
  {
    rootScene2 = [(DBScreenController *)self rootScene];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__DBInstrumentCluster__updateAppearanceWithUserInterfaceStyle___block_invoke;
    v12[3] = &unk_278F02220;
    v12[4] = self;
    v12[5] = style;
    [rootScene2 updateUISettingsWithBlock:v12];
  }

  v11 = [(DBInstrumentCluster *)self _clusterBackgroundColorForStyle:style];
  [(DBInstrumentClusterWindow *)self->_clusterWindow setBackgroundColor:v11];
  [(DBInstrumentCluster *)self _updateWallpaper];
}

void __63__DBInstrumentCluster__updateAppearanceWithUserInterfaceStyle___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DBLogForCategory(0xAuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = CPUIDescriptionForUserInterfaceStyle();
    v6 = [*(a1 + 32) rootScene];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "DBInstrumentCluster updating rootScene user interface style to %@; rootScene: %@", &v7, 0x16u);
  }

  [v3 setUserInterfaceStyle:*(a1 + 40)];
}

- (id)_clusterBackgroundColorForStyle:(int64_t)style
{
  if (style == 1)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v3 = ;

  return v3;
}

- (void)_updateWallpaper
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = DBLogForCategory(0xAuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Updating #wallpaper", &v11, 2u);
  }

  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  wallpaperPreferences = [environmentConfiguration wallpaperPreferences];

  currentWallpaper = [wallpaperPreferences currentWallpaper];
  v7 = DBLogForCategory(0xAuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = currentWallpaper;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Applying #wallpaper %{public}@", &v11, 0xCu);
  }

  traits = [currentWallpaper traits];
  hideRoundedCorners = [traits hideRoundedCorners];
  cornerRadiusWindow = [(DBScreenController *)self cornerRadiusWindow];
  [cornerRadiusWindow setHidden:hideRoundedCorners];
}

- (void)environmentConfiguration:(id)configuration nightModeDidChange:(BOOL)change
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = DBLogForCategory(0xAuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromBOOL();
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Night mode changed for environment to: %{public}@", &v6, 0xCu);
  }
}

- (id)_takeSnapshotOfFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  rootScene = [(DBScreenController *)self rootScene];
  snapshotContext = [rootScene snapshotContext];
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  resizeWindow = [(DBInstrumentCluster *)self resizeWindow];

  if (resizeWindow)
  {
    layerManager = [rootScene layerManager];
    resizeWindow2 = [(DBInstrumentCluster *)self resizeWindow];
    v14 = [layerManager layerWithContextID:{objc_msgSend(resizeWindow2, "_contextId")}];
    [v10 addObject:v14];
  }

  cornerRadiusWindow = [(DBScreenController *)self cornerRadiusWindow];

  if (cornerRadiusWindow)
  {
    layerManager2 = [rootScene layerManager];
    cornerRadiusWindow2 = [(DBScreenController *)self cornerRadiusWindow];
    v18 = [layerManager2 layerWithContextID:{objc_msgSend(cornerRadiusWindow2, "_contextId")}];

    if (v18)
    {
      [v10 addObject:v18];
    }
  }

  [snapshotContext setLayersToExclude:v10];
  [snapshotContext setFrame:{x, y, width, height}];
  v19 = [rootScene createSnapshotWithContext:snapshotContext];
  [v19 capture];
  uiPresentationManager = [rootScene uiPresentationManager];
  v21 = [uiPresentationManager snapshotPresentationForSnapshot:v19];

  return v21;
}

- (void)navigationStateProvider:(id)provider frontmostIdentifierDidChange:(id)change
{
  changeCopy = change;
  v6 = +[DBApplicationController sharedInstance];
  v10 = [v6 applicationWithBundleIdentifier:changeCopy];

  if ([v10 presentsFullScreen] && objc_msgSend(v10, "supportsInstrumentClusterNavigation"))
  {
    interestingWindow = [(DBScreenController *)self interestingWindow];
    environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
    displayConfiguration = [environmentConfiguration displayConfiguration];
    [displayConfiguration bounds];
    [interestingWindow setFrame:?];
  }

  else
  {
    interestingWindow = [(DBScreenController *)self interestingWindow];
    environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
    [environmentConfiguration currentViewAreaFrame];
    [interestingWindow setFrame:?];
  }
}

- (DBInstrumentClusterThemeDelegate)clusterThemeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->clusterThemeDelegate);

  return WeakRetained;
}

@end