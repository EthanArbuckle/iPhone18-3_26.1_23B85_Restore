@interface DBDisplayManager
- (BOOL)_isPassengerDisplay:(id)display;
- (BOOL)bundleIdentifierIsCertificationApp:(id)app;
- (BOOL)bundleIdentifierSupportsDashboard:(id)dashboard;
- (BOOL)bundleIdentifierSupportsInstrumentCluster:(id)cluster;
- (DBAppHistory)appHistory;
- (DBDisplayManager)init;
- (id)_createEnvironmentConfigurationForDisplayConfiguration:(id)configuration session:(id)session;
- (id)_createRootSceneWithIdentifier:(id)identifier displayConfiguration:(id)configuration;
- (id)focusWindowForDisplayIdentity:(id)identity;
- (id)iconLayoutDataProviderForVehicleIdentifier:(id)identifier;
- (id)systemGestureWindowForDisplayIdentity:(id)identity;
- (id)widgetLayoutDataProviderForVehicleIdentifier:(id)identifier;
- (void)_enableMapsProbabilisticGuardMalloc;
- (void)_handleConnectedDisplaysIfPossible;
- (void)_setCornerMaskImageIfNecessaryForPrimaryDisplayConfiguration:(id)configuration;
- (void)_setNeedsNavigationStateProvider:(BOOL)provider forDisplayIdentity:(id)identity;
- (void)_setNeedsTemplateProcessMonitor:(BOOL)monitor forDisplayIdentity:(id)identity;
- (void)_setupInstrumentClusterWithDisplayConfiguration:(id)configuration session:(id)session defaultSceneWorkspaceIdentifier:(id)identifier;
- (void)_setupMainDisplayWithDisplayConfiguration:(id)configuration session:(id)session defaultSceneWorkspaceIdentifier:(id)identifier;
- (void)_setupPassengerDisplayWithDisplayConfiguration:(id)configuration session:(id)session defaultSceneWorkspaceIdentifier:(id)identifier;
- (void)_updateNavigationStateProvider;
- (void)_updateSessionAssertionsIfNecessary;
- (void)_updateTemplateProcessMonitor;
- (void)_updateVehicleViewAreasForSession:(id)session environmentConfiguration:(id)configuration;
- (void)activate;
- (void)didChangeAppearanceMode:(int64_t)mode forDisplayID:(id)d;
- (void)didConnectDisplayID:(id)d;
- (void)didDisconnectDisplayID:(id)d;
- (void)didForegroundAssetForDisplayID:(id)d;
- (void)displayMonitor:(id)monitor didConnectIdentity:(id)identity withConfiguration:(id)configuration;
- (void)displayMonitor:(id)monitor didUpdateIdentity:(id)identity withConfiguration:(id)configuration;
- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity;
- (void)sceneDidInvalidate:(id)invalidate;
- (void)sessionController:(id)controller didConnectSession:(id)session;
- (void)sessionServiceBecameActive:(id)active;
- (void)sessionServiceBecameInactive:(id)inactive;
- (void)workspace:(id)workspace didAddScene:(id)scene;
@end

@implementation DBDisplayManager

- (DBDisplayManager)init
{
  v32.receiver = self;
  v32.super_class = DBDisplayManager;
  v2 = [(DBDisplayManager *)&v32 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendingDisplays = v2->_pendingDisplays;
    v2->_pendingDisplays = v3;

    v5 = objc_alloc_init(DBIconBadgeController);
    iconBadgeController = v2->_iconBadgeController;
    v2->_iconBadgeController = v5;

    v7 = objc_alloc_init(DBSessionController);
    sessionController = v2->_sessionController;
    v2->_sessionController = v7;

    [(DBSessionController *)v2->_sessionController setDelegate:v2];
    v9 = objc_alloc_init(DBThermalMonitor);
    thermalMonitor = v2->_thermalMonitor;
    v2->_thermalMonitor = v9;

    v11 = [[DBSceneWorkspace alloc] initWithIdentifier:@"com.apple.DashBoard.scene-workspace.root"];
    rootSceneWorkspace = v2->_rootSceneWorkspace;
    v2->_rootSceneWorkspace = v11;

    [(DBSceneWorkspace *)v2->_rootSceneWorkspace setDelegate:v2];
    v13 = objc_alloc_init(_TtC9DashBoard30DBDefaultSceneWorkspaceManager);
    defaultSceneWorkspaceManager = v2->_defaultSceneWorkspaceManager;
    v2->_defaultSceneWorkspaceManager = v13;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    displayToScreenControllerMap = v2->_displayToScreenControllerMap;
    v2->_displayToScreenControllerMap = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    displayToPresentationBinderMap = v2->_displayToPresentationBinderMap;
    v2->_displayToPresentationBinderMap = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    displayToRootSceneMap = v2->_displayToRootSceneMap;
    v2->_displayToRootSceneMap = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    displayToEndpointInjector = v2->_displayToEndpointInjector;
    v2->_displayToEndpointInjector = dictionary4;

    v23 = objc_alloc_init(DBIconImageCache);
    iconImageCache = v2->_iconImageCache;
    v2->_iconImageCache = v23;

    v25 = +[DBApplicationController sharedInstance];
    v26 = objc_opt_new();
    [v26 setDomainIdentifier:@"com.apple.CarPlay.non-launching"];
    [v26 setInstanceIdentifier:@"com.apple.CarPlayApp.Dashboard"];
    v27 = [MEMORY[0x277D0AD28] publisherWithConfiguration:v26];
    dashboardDisplayLayoutPublisher = v2->_dashboardDisplayLayoutPublisher;
    v2->_dashboardDisplayLayoutPublisher = v27;

    [(FBSDisplayLayoutPublisher *)v2->_dashboardDisplayLayoutPublisher activate];
    v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
    foregroundedAssetDisplayIDs = v2->_foregroundedAssetDisplayIDs;
    v2->_foregroundedAssetDisplayIDs = v29;
  }

  return v2;
}

- (void)activate
{
  v16 = *MEMORY[0x277D85DE8];
  if (![(DBDisplayManager *)self activated])
  {
    mEMORY[0x277D0AA90] = [MEMORY[0x277D0AA90] sharedInstance];
    [mEMORY[0x277D0AA90] addObserver:self];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    connectedIdentities = [mEMORY[0x277D0AA90] connectedIdentities];
    v5 = [connectedIdentities countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(connectedIdentities);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          v10 = [mEMORY[0x277D0AA90] configurationForIdentity:v9];
          if (v10)
          {
            [(DBDisplayManager *)self displayMonitor:mEMORY[0x277D0AA90] didConnectIdentity:v9 withConfiguration:v10];
          }
        }

        v6 = [connectedIdentities countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [(DBDisplayManager *)self setActivated:1];
  }
}

- (id)focusWindowForDisplayIdentity:(id)identity
{
  identityCopy = identity;
  displayToScreenControllerMap = [(DBDisplayManager *)self displayToScreenControllerMap];
  v6 = [displayToScreenControllerMap objectForKey:identityCopy];

  focusWindow = [v6 focusWindow];

  return focusWindow;
}

- (id)systemGestureWindowForDisplayIdentity:(id)identity
{
  if (identity)
  {
    identityCopy = identity;
    displayToScreenControllerMap = [(DBDisplayManager *)self displayToScreenControllerMap];
    v6 = [displayToScreenControllerMap objectForKey:identityCopy];

    systemGestureWindow = [v6 systemGestureWindow];
  }

  else
  {
    systemGestureWindow = 0;
  }

  return systemGestureWindow;
}

- (DBAppHistory)appHistory
{
  mainScreenController = [(DBDisplayManager *)self mainScreenController];
  environmentConfiguration = [mainScreenController environmentConfiguration];
  appHistory = [environmentConfiguration appHistory];

  return appHistory;
}

- (id)iconLayoutDataProviderForVehicleIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    mainScreenController = [(DBDisplayManager *)self mainScreenController];
    environmentConfiguration = [mainScreenController environmentConfiguration];
    vehicleID = [environmentConfiguration vehicleID];
    v8 = [identifierCopy isEqualToString:vehicleID];

    if (v8)
    {
      iconLayoutDataProvider = [mainScreenController iconLayoutDataProvider];
    }

    else
    {
      iconLayoutDataProvider = 0;
    }
  }

  else
  {
    iconLayoutDataProvider = 0;
  }

  return iconLayoutDataProvider;
}

- (id)widgetLayoutDataProviderForVehicleIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    mainScreenController = [(DBDisplayManager *)self mainScreenController];
    environmentConfiguration = [mainScreenController environmentConfiguration];
    vehicleID = [environmentConfiguration vehicleID];
    v8 = [identifierCopy isEqualToString:vehicleID];

    if (v8)
    {
      widgetLayoutDataProvider = [mainScreenController widgetLayoutDataProvider];
    }

    else
    {
      widgetLayoutDataProvider = 0;
    }
  }

  else
  {
    widgetLayoutDataProvider = 0;
  }

  return widgetLayoutDataProvider;
}

- (void)displayMonitor:(id)monitor didConnectIdentity:(id)identity withConfiguration:(id)configuration
{
  v26 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  configurationCopy = configuration;
  isCarDisplay = [configurationCopy isCarDisplay];
  isCarInstrumentsDisplay = [configurationCopy isCarInstrumentsDisplay];
  v11 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromBOOL();
    v13 = NSStringFromBOOL();
    v20 = 138543874;
    v21 = identityCopy;
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = v13;
    _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "didConnectIdentity:%{public}@, is car display: %{public}@, is cluster display: %{public}@", &v20, 0x20u);
  }

  if (isCarInstrumentsDisplay)
  {
    kdebug_trace();
    date = [MEMORY[0x277CBEAA8] date];
    clusterDisplayReadyDate = self->_clusterDisplayReadyDate;
    self->_clusterDisplayReadyDate = date;

    clusterDisplayReadyDate = [(DBDisplayManager *)self clusterDisplayReadyDate];
    [(DBAnalytics *)self->_analytics setClusterDisplayReadyTimestamp:clusterDisplayReadyDate];
LABEL_7:

    [(DBDisplayManager *)self _setNeedsNavigationStateProvider:1 forDisplayIdentity:identityCopy];
    [(DBDisplayManager *)self _setNeedsTemplateProcessMonitor:1 forDisplayIdentity:identityCopy];
    pendingDisplays = [(DBDisplayManager *)self pendingDisplays];
    [pendingDisplays addObject:configurationCopy];

    [(DBDisplayManager *)self _handleConnectedDisplaysIfPossible];
    [(DBDisplayManager *)self _updateSessionAssertionsIfNecessary];
    goto LABEL_8;
  }

  if (isCarDisplay)
  {
    kdebug_trace();
    date2 = [MEMORY[0x277CBEAA8] date];
    mainDisplayReadyDate = self->_mainDisplayReadyDate;
    self->_mainDisplayReadyDate = date2;

    clusterDisplayReadyDate = [(DBDisplayManager *)self mainDisplayReadyDate];
    [(DBAnalytics *)self->_analytics setMainDisplayReadyTimestamp:clusterDisplayReadyDate];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)displayMonitor:(id)monitor didUpdateIdentity:(id)identity withConfiguration:(id)configuration
{
  v9 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v6 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = identityCopy;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "didUpdateIdentity:%{public}@", &v7, 0xCu);
  }
}

- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity
{
  v26 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v6 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = identityCopy;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "willDisconnectIdentity:%{public}@", buf, 0xCu);
  }

  pendingDisplays = [(DBDisplayManager *)self pendingDisplays];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__DBDisplayManager_displayMonitor_willDisconnectIdentity___block_invoke;
  v22[3] = &unk_278F03BE0;
  v8 = identityCopy;
  v23 = v8;
  v9 = [pendingDisplays bs_firstObjectPassingTest:v22];

  if (v9)
  {
    v10 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v9;
      _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Discarding pending display: %{public}@", buf, 0xCu);
    }

    pendingDisplays2 = [(DBDisplayManager *)self pendingDisplays];
    [pendingDisplays2 removeObject:v9];
  }

  [(DBDisplayManager *)self _setNeedsNavigationStateProvider:0 forDisplayIdentity:v8];
  [(DBDisplayManager *)self _setNeedsTemplateProcessMonitor:0 forDisplayIdentity:v8];
  sessionController = [(DBDisplayManager *)self sessionController];
  [sessionController setNeedsLayerMetadataService:0 forDisplayIdentity:v8];

  displayToScreenControllerMap = [(DBDisplayManager *)self displayToScreenControllerMap];
  v14 = [displayToScreenControllerMap objectForKey:v8];

  v15 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v14;
    _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_DEFAULT, "Invalidating screen controller: %{public}@", buf, 0xCu);
  }

  [v14 invalidate];
  mainScreenController = [(DBDisplayManager *)self mainScreenController];

  if (v14 == mainScreenController)
  {
    [(DBDisplayManager *)self setMainScreenController:0];
    analytics = self->_analytics;
    self->_analytics = 0;
  }

  displayToScreenControllerMap2 = [(DBDisplayManager *)self displayToScreenControllerMap];
  [displayToScreenControllerMap2 removeObjectForKey:v8];

  defaultSceneWorkspaceManager = [(DBDisplayManager *)self defaultSceneWorkspaceManager];
  [defaultSceneWorkspaceManager relinquishWorkspaceIdentifierForDisplayIdentity:v8];

  v20 = [(NSMutableDictionary *)self->_displayToRootSceneMap objectForKey:v8];
  v21 = v20;
  if (v20)
  {
    [v20 updateSettings:&__block_literal_global_35];
    [v21 invalidate];
    [(NSMutableDictionary *)self->_displayToRootSceneMap removeObjectForKey:v8];
  }

  [(DBDisplayManager *)self _updateSessionAssertionsIfNecessary];
}

uint64_t __58__DBDisplayManager_displayMonitor_willDisconnectIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identity];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)sceneDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  displayToPresentationBinderMap = [(DBDisplayManager *)self displayToPresentationBinderMap];
  settings = [invalidateCopy settings];
  displayIdentity = [settings displayIdentity];
  v7 = [displayToPresentationBinderMap objectForKey:displayIdentity];

  [v7 removeScene:invalidateCopy];
  scenes = [v7 scenes];
  v9 = [scenes count];

  if (!v9)
  {
    [v7 invalidate];
    displayToPresentationBinderMap2 = [(DBDisplayManager *)self displayToPresentationBinderMap];
    settings2 = [invalidateCopy settings];
    displayIdentity2 = [settings2 displayIdentity];
    [displayToPresentationBinderMap2 setObject:0 forKeyedSubscript:displayIdentity2];
  }

  displayToEndpointInjector = [(DBDisplayManager *)self displayToEndpointInjector];
  settings3 = [invalidateCopy settings];
  displayIdentity3 = [settings3 displayIdentity];
  v16 = [displayToEndpointInjector objectForKey:displayIdentity3];

  displayToEndpointInjector2 = [(DBDisplayManager *)self displayToEndpointInjector];
  settings4 = [invalidateCopy settings];
  displayIdentity4 = [settings4 displayIdentity];
  [displayToEndpointInjector2 removeObjectForKey:displayIdentity4];

  [v16 invalidate];
}

- (void)workspace:(id)workspace didAddScene:(id)scene
{
  sceneCopy = scene;
  displayToPresentationBinderMap = [(DBDisplayManager *)self displayToPresentationBinderMap];
  settings = [sceneCopy settings];
  displayIdentity = [settings displayIdentity];
  v9 = [displayToPresentationBinderMap objectForKey:displayIdentity];

  if (!v9)
  {
    v10 = objc_alloc(MEMORY[0x277D75928]);
    settings2 = [sceneCopy settings];
    displayConfiguration = [settings2 displayConfiguration];
    v13 = [v10 initWithDisplayConfiguration:displayConfiguration];

    [v13 setVisibilityIdentifier:@"com.apple.CarPlayApp"];
    bootstrapConfiguration = [MEMORY[0x277CF32D0] bootstrapConfiguration];
    serviceName = [MEMORY[0x277D0AD78] serviceName];
    v16 = [bootstrapConfiguration domainsContainingServiceIdentifier:serviceName];
    anyObject = [v16 anyObject];
    identifier = [anyObject identifier];

    v19 = MEMORY[0x277CF3290];
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __42__DBDisplayManager_workspace_didAddScene___block_invoke;
    v37 = &unk_278F03C28;
    v38 = v13;
    v39 = identifier;
    v20 = identifier;
    v21 = v13;
    v22 = [v19 injectorWithConfigurator:&v34];
    displayToEndpointInjector = [(DBDisplayManager *)self displayToEndpointInjector];
    settings3 = [sceneCopy settings];
    displayIdentity2 = [settings3 displayIdentity];
    [displayToEndpointInjector setObject:v22 forKey:displayIdentity2];

    v26 = MEMORY[0x277CCACA8];
    settings4 = [sceneCopy settings];
    displayConfiguration2 = [settings4 displayConfiguration];
    identity = [displayConfiguration2 identity];
    v30 = [v26 stringWithFormat:@"RootWindow-%@-%p", identity, self, v34, v35, v36, v37];

    v9 = [objc_alloc(MEMORY[0x277D75930]) initWithIdentifier:v30 priority:0 appearanceStyle:0 rootWindow:v21];
    displayToPresentationBinderMap2 = [(DBDisplayManager *)self displayToPresentationBinderMap];
    settings5 = [sceneCopy settings];
    displayIdentity3 = [settings5 displayIdentity];
    [displayToPresentationBinderMap2 setObject:v9 forKeyedSubscript:displayIdentity3];
  }

  [v9 addScene:sceneCopy];
  [sceneCopy addObserver:self];
}

void __42__DBDisplayManager_workspace_didAddScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D47008];
  v4 = a2;
  v5 = getpid();
  v6 = [*(a1 + 32) visibilityEnvironment];
  v7 = [v3 targetWithPid:v5 environmentIdentifier:v6];
  [v4 setTarget:v7];

  [v4 setDomain:*(a1 + 40)];
  v8 = [MEMORY[0x277D0AD78] serviceName];
  [v4 setService:v8];
}

- (void)sessionServiceBecameActive:(id)active
{
  [(DBDisplayManager *)self setSessionServiceIsActive:1];

  [(DBDisplayManager *)self _updateSessionAssertionsIfNecessary];
}

- (void)sessionServiceBecameInactive:(id)inactive
{
  [(DBDisplayManager *)self setSessionServiceIsActive:0];

  [(DBDisplayManager *)self _updateSessionAssertionsIfNecessary];
}

- (void)sessionController:(id)controller didConnectSession:(id)session
{
  sessionCopy = session;
  [(DBDisplayManager *)self _updateSessionAssertionsIfNecessary];
  v6 = +[_TtC9DashBoard14DBAssetLibrary shared];
  [v6 setSession:sessionCopy];

  v7 = +[DBApplicationController sharedInstance];
  [v7 sessionDidConnect];

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableMapsPGM", @"com.apple.carplay.internal", &keyExistsAndHasValidFormat);
  v9 = keyExistsAndHasValidFormat;
  if (os_variant_has_internal_diagnostics() && v9 && AppBooleanValue)
  {
    [(DBDisplayManager *)self _enableMapsProbabilisticGuardMalloc];
  }

  [(DBDisplayManager *)self _handleConnectedDisplaysIfPossible];
}

- (void)didConnectDisplayID:(id)d
{
  dCopy = d;
  mainScreenController = [(DBDisplayManager *)self mainScreenController];
  displayInfo = [mainScreenController displayInfo];
  identifier = [displayInfo identifier];

  if (identifier == dCopy)
  {
    mainScreenController2 = [(DBDisplayManager *)self mainScreenController];
    [mainScreenController2 handleMainAssetForegrounded];
  }
}

- (void)didDisconnectDisplayID:(id)d
{
  dCopy = d;
  foregroundedAssetDisplayIDs = [(DBDisplayManager *)self foregroundedAssetDisplayIDs];
  [foregroundedAssetDisplayIDs removeObject:dCopy];
}

- (void)didForegroundAssetForDisplayID:(id)d
{
  dCopy = d;
  foregroundedAssetDisplayIDs = [(DBDisplayManager *)self foregroundedAssetDisplayIDs];
  [foregroundedAssetDisplayIDs addObject:dCopy];

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  displayToScreenControllerMap = [(DBDisplayManager *)self displayToScreenControllerMap];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__DBDisplayManager_didForegroundAssetForDisplayID___block_invoke;
  v8[3] = &unk_278F03C50;
  v8[4] = self;
  v8[5] = &v9;
  [displayToScreenControllerMap enumerateKeysAndObjectsUsingBlock:v8];

  if (*(v10 + 24) == 1)
  {
    mainScreenController = [(DBDisplayManager *)self mainScreenController];
    [mainScreenController handleAllAssetsForegrounded];
  }

  _Block_object_dispose(&v9, 8);
}

void __51__DBDisplayManager_didForegroundAssetForDisplayID___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 foregroundedAssetDisplayIDs];
  v9 = [v7 displayInfo];

  v10 = [v9 identifier];
  v11 = [v8 containsObject:v10];

  if ((v11 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)didChangeAppearanceMode:(int64_t)mode forDisplayID:(id)d
{
  dCopy = d;
  displayToScreenControllerMap = [(DBDisplayManager *)self displayToScreenControllerMap];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__DBDisplayManager_didChangeAppearanceMode_forDisplayID___block_invoke;
  v9[3] = &unk_278F03C78;
  v10 = dCopy;
  modeCopy = mode;
  v8 = dCopy;
  [displayToScreenControllerMap enumerateKeysAndObjectsUsingBlock:v9];
}

void __57__DBDisplayManager_didChangeAppearanceMode_forDisplayID___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v14 = a3;
  v6 = [v14 displayInfo];
  v7 = [v6 identifier];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    v9 = [v14 environmentConfiguration];
    v10 = [v9 session];
    v11 = *(a1 + 40);
    v12 = [v14 screenInfo];
    v13 = [v12 identifier];
    [v10 handleDDPChangeAppearance:v11 screenID:v13];

    *a4 = 1;
  }
}

- (void)_updateSessionAssertionsIfNecessary
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(DBDisplayManager *)self sessionServiceIsActive])
  {
    v3 = 1;
  }

  else
  {
    displayToScreenControllerMap = [(DBDisplayManager *)self displayToScreenControllerMap];
    if ([displayToScreenControllerMap count])
    {
      v3 = 1;
    }

    else
    {
      sessionController = [(DBDisplayManager *)self sessionController];
      currentSession = [sessionController currentSession];
      v3 = currentSession != 0;
    }
  }

  v7 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromBOOL();
    v27 = 138543362;
    v28 = v8;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Updating session assertions, should hold: %{public}@", &v27, 0xCu);
  }

  idleExitTransaction = [(DBDisplayManager *)self idleExitTransaction];

  if (v3)
  {
    if (!idleExitTransaction)
    {
      v10 = DBLogForCategory(0x1DuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Taking idle-exit transaction for session", &v27, 2u);
      }

      v11 = os_transaction_create();
      [(DBDisplayManager *)self setIdleExitTransaction:v11];
    }

    watchdogMonitoringAssertion = [(DBDisplayManager *)self watchdogMonitoringAssertion];

    if (!watchdogMonitoringAssertion)
    {
      v13 = DBLogForCategory(0x1DuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Taking system shell watchdog monitoring assertion", &v27, 2u);
      }

      mEMORY[0x277D0AB10] = [MEMORY[0x277D0AB10] sharedInstance];
      v15 = [mEMORY[0x277D0AB10] assertWatchdogEnabledForLimitedDurationForReason:@"CarPlaySession"];
      [(DBDisplayManager *)self setWatchdogMonitoringAssertion:v15];
    }

    modelPolicyAssertion = [(DBDisplayManager *)self modelPolicyAssertion];
    if (!modelPolicyAssertion)
    {
      enableModelPolicyAssertion = [MEMORY[0x277CF89D0] enableModelPolicyAssertion];
      valueBool = [enableModelPolicyAssertion valueBool];

      if (!valueBool)
      {
        return;
      }

      v19 = DBLogForCategory(0x1DuLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_248146000, v19, OS_LOG_TYPE_DEFAULT, "Taking CarPlay model policy assertion", &v27, 2u);
      }

      v20 = objc_alloc_init(_TtC9DashBoard22DBModelPolicyAssertion);
      [(DBDisplayManager *)self setModelPolicyAssertion:v20];

      modelPolicyAssertion = [(DBDisplayManager *)self modelPolicyAssertion];
      [modelPolicyAssertion acquireAssertionWithCompletionHandler:&__block_literal_global_252];
    }

    goto LABEL_35;
  }

  if (idleExitTransaction)
  {
    v21 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_248146000, v21, OS_LOG_TYPE_DEFAULT, "Releasing idle-exit transaction", &v27, 2u);
    }

    [(DBDisplayManager *)self setIdleExitTransaction:0];
  }

  watchdogMonitoringAssertion2 = [(DBDisplayManager *)self watchdogMonitoringAssertion];

  if (watchdogMonitoringAssertion2)
  {
    v23 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_248146000, v23, OS_LOG_TYPE_DEFAULT, "Releasing system shell watchding monitoring assertion", &v27, 2u);
    }

    watchdogMonitoringAssertion3 = [(DBDisplayManager *)self watchdogMonitoringAssertion];
    [watchdogMonitoringAssertion3 invalidate];

    [(DBDisplayManager *)self setWatchdogMonitoringAssertion:0];
  }

  modelPolicyAssertion2 = [(DBDisplayManager *)self modelPolicyAssertion];

  if (modelPolicyAssertion2)
  {
    v26 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_248146000, v26, OS_LOG_TYPE_DEFAULT, "Releasing CarPlay model policy assertion", &v27, 2u);
    }

    modelPolicyAssertion = [(DBDisplayManager *)self modelPolicyAssertion];
    [(DBDisplayManager *)self setModelPolicyAssertion:0];
    [modelPolicyAssertion invalidateWithCompletionHandler:&__block_literal_global_256];
LABEL_35:
  }
}

void __55__DBDisplayManager__updateSessionAssertionsIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = DBLogForCategory(0x1DuLL);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__DBDisplayManager__updateSessionAssertionsIfNecessary__block_invoke_cold_1(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "CarPlay model policy assertion acquired", v5, 2u);
  }
}

void __55__DBDisplayManager__updateSessionAssertionsIfNecessary__block_invoke_253()
{
  v0 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_248146000, v0, OS_LOG_TYPE_DEFAULT, "CarPlay model policy assertion invalidated", v1, 2u);
  }
}

- (void)_setCornerMaskImageIfNecessaryForPrimaryDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  sessionController = [(DBDisplayManager *)self sessionController];
  currentSession = [sessionController currentSession];
  configuration = [currentSession configuration];
  screens = [configuration screens];
  v9 = [screens bs_firstObjectPassingTest:&__block_literal_global_259];

  if ([v9 wantsCornerMasks])
  {
    v10 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Main screen is requesting corner masks.", v19, 2u);
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults addObserver:self forKeyPath:@"CARCornerRadius" options:1 context:0];
    v12 = [standardUserDefaults objectForKey:@"CARCornerRadius"];

    if (v12)
    {
      [standardUserDefaults floatForKey:@"CARCornerRadius"];
      v14 = v13;
    }

    else
    {
      v14 = 22.0;
    }

    CRDisplayScaleAdjustedPointScale();
    v16 = DBAirPlayCornerMaskImageData(0, v14, v15);
    sessionController2 = [(DBDisplayManager *)self sessionController];
    currentSession2 = [sessionController2 currentSession];
    [currentSession2 setCornerMaskImageData:v16 forScreenInfo:v9];
  }
}

- (void)_handleConnectedDisplaysIfPossible
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  pendingDisplays = [(DBDisplayManager *)self pendingDisplays];
  v4 = [pendingDisplays copy];

  if ([v4 count])
  {
    sessionController = [(DBDisplayManager *)self sessionController];
    currentSession = [sessionController currentSession];

    v7 = DBLogForCategory(0x1DuLL);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (currentSession)
    {
      if (v8)
      {
        *buf = 138543618;
        v13 = v4;
        v14 = 2114;
        v15 = currentSession;
        _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Handling connected displays: %{public}@ with session: %{public}@", buf, 0x16u);
      }

      pendingDisplays2 = [(DBDisplayManager *)self pendingDisplays];
      [pendingDisplays2 removeAllObjects];

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __54__DBDisplayManager__handleConnectedDisplaysIfPossible__block_invoke;
      v10[3] = &unk_278F03CC8;
      v10[4] = self;
      currentSession = currentSession;
      v11 = currentSession;
      [v4 enumerateObjectsUsingBlock:v10];
    }

    else
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Session not yet available", buf, 2u);
      }
    }
  }

  else
  {
    currentSession = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(currentSession, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, currentSession, OS_LOG_TYPE_DEFAULT, "No pending displays", buf, 2u);
    }
  }
}

void __54__DBDisplayManager__handleConnectedDisplaysIfPossible__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 identity];
  v5 = [*(a1 + 32) defaultSceneWorkspaceManager];
  v6 = [v5 defaultWorkspaceIdentifierForDisplayIdentity:v4];

  if (v6)
  {
    v7 = [*(a1 + 40) configuration];
    v8 = [v7 screens];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__DBDisplayManager__handleConnectedDisplaysIfPossible__block_invoke_2;
    v15[3] = &unk_278F03CA0;
    v9 = v3;
    v10 = *(a1 + 32);
    v16 = v9;
    v17 = v10;
    v18 = v4;
    [v8 enumerateObjectsUsingBlock:v15];

    if ([*(a1 + 32) _isPassengerDisplay:v9] && (objc_msgSend(*(a1 + 32), "sessionController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "currentSupportedFeatures"), v11, (v12 & 0x20) != 0))
    {
      v13 = DBLogForCategory(0x1DuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        *buf = 136446722;
        v20 = "[DBDisplayManager _handleConnectedDisplaysIfPossible]_block_invoke";
        v21 = 2114;
        v22 = v9;
        v23 = 2114;
        v24 = v14;
        _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: Passenger display feature is enabled. Showing passenger display for %{public}@. %{public}@.", buf, 0x20u);
      }

      [*(a1 + 32) _setupPassengerDisplayWithDisplayConfiguration:v9 session:*(a1 + 40) defaultSceneWorkspaceIdentifier:v6];
    }

    else if ([v9 isCarInstrumentsDisplay])
    {
      [*(a1 + 32) _setupInstrumentClusterWithDisplayConfiguration:v9 session:*(a1 + 40) defaultSceneWorkspaceIdentifier:v6];
    }

    else if ([v9 isCarDisplay])
    {
      [*(a1 + 32) _setupMainDisplayWithDisplayConfiguration:v9 session:*(a1 + 40) defaultSceneWorkspaceIdentifier:v6];
    }
  }
}

void __54__DBDisplayManager__handleConnectedDisplaysIfPossible__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 identifier];
  v4 = [*(a1 + 32) hardwareIdentifier];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = [*(a1 + 40) sessionController];
    [v6 setNeedsLayerMetadataService:objc_msgSend(v7 forDisplayIdentity:{"supportsLayerTracking"), *(a1 + 48)}];
  }
}

- (void)_setupPassengerDisplayWithDisplayConfiguration:(id)configuration session:(id)session defaultSceneWorkspaceIdentifier:(id)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  sessionCopy = session;
  identifierCopy = identifier;
  identity = [configurationCopy identity];
  displayToScreenControllerMap = [(DBDisplayManager *)self displayToScreenControllerMap];
  v13 = [displayToScreenControllerMap objectForKey:identity];

  if (v13)
  {
    v14 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v27 = identity;
      _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_INFO, "Passenger display screen controller already set up for %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"DBPassengerDisplay-%@", identity];
    v16 = [(DBDisplayManager *)self _createRootSceneWithIdentifier:v15 displayConfiguration:configurationCopy];
    displayToRootSceneMap = [(DBDisplayManager *)self displayToRootSceneMap];
    [displayToRootSceneMap setObject:v16 forKey:identity];

    v18 = [(DBDisplayManager *)self _createEnvironmentConfigurationForDisplayConfiguration:configurationCopy session:sessionCopy];
    sessionController = [(DBDisplayManager *)self sessionController];
    uisyncChannel = [sessionController uisyncChannel];
    [v18 setUisyncChannel:uisyncChannel];

    sessionController2 = [(DBDisplayManager *)self sessionController];
    layerMetadataService = [sessionController2 layerMetadataService];
    [v18 setLayerMetadataService:layerMetadataService];

    [v18 setUisyncSessionEventDelegate:self];
    v23 = [[DBPassengerDisplay alloc] initWithRootScene:v16 environmentConfiguration:v18 defaultSceneWorkspaceIdentifier:identifierCopy];
    displayToScreenControllerMap2 = [(DBDisplayManager *)self displayToScreenControllerMap];
    [displayToScreenControllerMap2 setObject:v23 forKey:identity];

    sessionController3 = [(DBDisplayManager *)self sessionController];
    [sessionController3 addSessionObserver:v18];
  }
}

- (BOOL)_isPassengerDisplay:(id)display
{
  v26 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  sessionController = [(DBDisplayManager *)self sessionController];
  currentSession = [sessionController currentSession];

  configuration = [currentSession configuration];
  screens = [configuration screens];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __40__DBDisplayManager__isPassengerDisplay___block_invoke;
  v16[3] = &unk_278F01870;
  v9 = displayCopy;
  v17 = v9;
  v10 = [screens bs_firstObjectPassingTest:v16];

  physicalDisplay = [v10 physicalDisplay];
  v12 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    hardwareIdentifier = [v9 hardwareIdentifier];
    *buf = 136446978;
    v19 = "[DBDisplayManager _isPassengerDisplay:]";
    v20 = 2114;
    v21 = currentSession;
    v22 = 2114;
    v23 = hardwareIdentifier;
    v24 = 2114;
    v25 = physicalDisplay;
    _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: session = %{public}@. hardwareID =  = %{public}@. passengerDisplayInfo = %{public}@", buf, 0x2Au);
  }

  supportsAdditionalContent = [physicalDisplay supportsAdditionalContent];
  return supportsAdditionalContent;
}

uint64_t __40__DBDisplayManager__isPassengerDisplay___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) hardwareIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)_setupInstrumentClusterWithDisplayConfiguration:(id)configuration session:(id)session defaultSceneWorkspaceIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  sessionCopy = session;
  identifierCopy = identifier;
  identity = [configurationCopy identity];
  displayToScreenControllerMap = [(DBDisplayManager *)self displayToScreenControllerMap];
  v13 = [displayToScreenControllerMap objectForKey:identity];

  if (v13)
  {
    v14 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v31 = identity;
      _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_INFO, "Instrument cluster screen controller already set up for %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"DBInstrumentCluster-%@", identity];
    v15 = [DBDisplayManager _createRootSceneWithIdentifier:"_createRootSceneWithIdentifier:displayConfiguration:" displayConfiguration:?];
    displayToRootSceneMap = [(DBDisplayManager *)self displayToRootSceneMap];
    [displayToRootSceneMap setObject:v15 forKey:identity];

    v17 = [(DBDisplayManager *)self _createEnvironmentConfigurationForDisplayConfiguration:configurationCopy session:sessionCopy];
    sessionController = [(DBDisplayManager *)self sessionController];
    uisyncChannel = [sessionController uisyncChannel];
    [v17 setUisyncChannel:uisyncChannel];

    sessionController2 = [(DBDisplayManager *)self sessionController];
    layerMetadataService = [sessionController2 layerMetadataService];
    [v17 setLayerMetadataService:layerMetadataService];

    [v17 setUisyncSessionEventDelegate:self];
    v22 = [[DBInstrumentCluster alloc] initWithRootScene:v15 environmentConfiguration:v17 defaultSceneWorkspaceIdentifier:identifierCopy];
    [(DBInstrumentCluster *)v22 handleConnect];
    displayToScreenControllerMap2 = [(DBDisplayManager *)self displayToScreenControllerMap];
    [displayToScreenControllerMap2 setObject:v22 forKey:identity];

    sessionController3 = [(DBDisplayManager *)self sessionController];
    [sessionController3 addSessionObserver:v17];

    displayInfo = [(DBScreenController *)v22 displayInfo];
    identifier = [displayInfo identifier];

    if (([identifier isEqualToString:@"Cluster_Display"] & 1) != 0 || objc_msgSend(identifier, "isEqualToString:", @"Secondary_Cluster_Display"))
    {
      sessionController4 = [(DBDisplayManager *)self sessionController];
      clusterThemeService = [sessionController4 clusterThemeService];
      [clusterThemeService registerThemeObserver:v22];
    }
  }
}

- (void)_setupMainDisplayWithDisplayConfiguration:(id)configuration session:(id)session defaultSceneWorkspaceIdentifier:(id)identifier
{
  v42 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  sessionCopy = session;
  identifierCopy = identifier;
  identity = [configurationCopy identity];
  displayToScreenControllerMap = [(DBDisplayManager *)self displayToScreenControllerMap];
  v13 = [displayToScreenControllerMap objectForKey:identity];

  if (v13)
  {
    v14 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v41 = identity;
      _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_INFO, "Main screen controller already set up for %{public}@", buf, 0xCu);
    }
  }

  else
  {
    mainScreenController = [(DBDisplayManager *)self mainScreenController];

    if (mainScreenController)
    {
      mainScreenController2 = [(DBDisplayManager *)self mainScreenController];
      environmentConfiguration = [mainScreenController2 environmentConfiguration];
      displayIdentity = [environmentConfiguration displayIdentity];

      v19 = DBLogForCategory(0x1DuLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [DBDisplayManager _setupMainDisplayWithDisplayConfiguration:identity session:displayIdentity defaultSceneWorkspaceIdentifier:v19];
      }

      mainScreenController3 = [(DBDisplayManager *)self mainScreenController];
      [mainScreenController3 invalidate];

      [(DBDisplayManager *)self setMainScreenController:0];
    }

    HTBeginNonResponsiveTaskWithNameAndExpiration();
    v21 = DBLogForCategory(0xDuLL);
    if (os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248146000, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CarPlayReceivedMainDisplay", "", buf, 2u);
    }

    [(DBDisplayManager *)self _setCornerMaskImageIfNecessaryForPrimaryDisplayConfiguration:configurationCopy];
    dashboardDisplayLayoutPublisher = [(DBDisplayManager *)self dashboardDisplayLayoutPublisher];
    v14 = [dashboardDisplayLayoutPublisher transitionAssertionWithReason:@"Display Connection"];

    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"DBDashboard-%@", identity];
    v23 = [DBDisplayManager _createRootSceneWithIdentifier:"_createRootSceneWithIdentifier:displayConfiguration:" displayConfiguration:?];
    displayToRootSceneMap = [(DBDisplayManager *)self displayToRootSceneMap];
    [displayToRootSceneMap setObject:v23 forKey:identity];

    v25 = [(DBDisplayManager *)self _createEnvironmentConfigurationForDisplayConfiguration:configurationCopy session:sessionCopy];
    iconImageCache = [(DBDisplayManager *)self iconImageCache];
    [v25 setIconImageCache:iconImageCache];

    sessionController = [(DBDisplayManager *)self sessionController];
    uisyncChannel = [sessionController uisyncChannel];
    [v25 setUisyncChannel:uisyncChannel];

    [v25 setUisyncSessionEventDelegate:self];
    v29 = [[DBAnalytics alloc] initWithEnvironmentConfiguration:v25];
    analytics = self->_analytics;
    self->_analytics = v29;

    v31 = self->_analytics;
    mainDisplayReadyDate = [(DBDisplayManager *)self mainDisplayReadyDate];
    [(DBAnalytics *)v31 setMainDisplayReadyTimestamp:mainDisplayReadyDate];

    v33 = self->_analytics;
    clusterDisplayReadyDate = [(DBDisplayManager *)self clusterDisplayReadyDate];
    [(DBAnalytics *)v33 setClusterDisplayReadyTimestamp:clusterDisplayReadyDate];

    v35 = [[DBDashboard alloc] initWithRootScene:v23 environmentConfiguration:v25 defaultSceneWorkspaceIdentifier:identifierCopy];
    [(DBDisplayManager *)self _updateVehicleViewAreasForSession:sessionCopy environmentConfiguration:v25];
    [(DBDashboard *)v35 handleConnect];
    displayToScreenControllerMap2 = [(DBDisplayManager *)self displayToScreenControllerMap];
    [displayToScreenControllerMap2 setObject:v35 forKey:identity];

    [(DBDisplayManager *)self setMainScreenController:v35];
    sessionController2 = [(DBDisplayManager *)self sessionController];
    [sessionController2 addSessionObserver:v25];

    HTEndNonResponsiveTask();
    v38 = DBLogForCategory(0xFuLL);
    if (os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248146000, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CarPlayReceivedMainDisplay", "", buf, 2u);
    }

    [v14 invalidate];
  }
}

- (void)_updateVehicleViewAreasForSession:(id)session environmentConfiguration:(id)configuration
{
  v4 = MEMORY[0x277CF8A68];
  configurationCopy = configuration;
  v10 = objc_alloc_init(v4);
  vehicle = [configurationCopy vehicle];
  statusBarInsetViewAreas = [configurationCopy statusBarInsetViewAreas];

  identifier = [vehicle identifier];
  uUIDString = [identifier UUIDString];
  [v10 saveViewAreas:statusBarInsetViewAreas forVehicleIdentifier:uUIDString completion:&__block_literal_global_283];
}

void __79__DBDisplayManager__updateVehicleViewAreasForSession_environmentConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = DBLogForCategory(0x19uLL);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __79__DBDisplayManager__updateVehicleViewAreasForSession_environmentConfiguration___block_invoke_cold_1(v5, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Successfully saved view areas: %{public}@", &v8, 0xCu);
  }
}

- (id)_createRootSceneWithIdentifier:(id)identifier displayConfiguration:(id)configuration
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  rootSceneWorkspace = self->_rootSceneWorkspace;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __72__DBDisplayManager__createRootSceneWithIdentifier_displayConfiguration___block_invoke;
  v16 = &unk_278F021D0;
  v17 = identifierCopy;
  v18 = configurationCopy;
  v9 = configurationCopy;
  v10 = identifierCopy;
  v11 = [(DBSceneWorkspace *)rootSceneWorkspace createScene:&v13];
  [v11 activate:{&__block_literal_global_291, v13, v14, v15, v16}];

  return v11;
}

void __72__DBDisplayManager__createRootSceneWithIdentifier_displayConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setIdentifier:v3];
  v5 = [MEMORY[0x277D0ADA8] localIdentity];
  [v4 setClientIdentity:v5];

  v6 = [MEMORY[0x277D751A0] specification];
  [v4 setSpecification:v6];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__DBDisplayManager__createRootSceneWithIdentifier_displayConfiguration___block_invoke_2;
  v7[3] = &unk_278F01FF8;
  v8 = *(a1 + 40);
  [v4 configureParameters:v7];
}

void __72__DBDisplayManager__createRootSceneWithIdentifier_displayConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__DBDisplayManager__createRootSceneWithIdentifier_displayConfiguration___block_invoke_3;
  v3[3] = &unk_278F01FD0;
  v4 = *(a1 + 32);
  [a2 updateSettingsWithBlock:v3];
}

void __72__DBDisplayManager__createRootSceneWithIdentifier_displayConfiguration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setDisplayConfiguration:v3];
  [*(a1 + 32) bounds];
  [v4 setFrame:?];
  [v4 setForeground:1];
}

- (id)_createEnvironmentConfigurationForDisplayConfiguration:(id)configuration session:(id)session
{
  v27 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  configurationCopy = configuration;
  if ([configurationCopy isCarDisplay])
  {
    dashboardDisplayLayoutPublisher = [(DBDisplayManager *)self dashboardDisplayLayoutPublisher];
  }

  else
  {
    dashboardDisplayLayoutPublisher = 0;
  }

  sessionController = [(DBDisplayManager *)self sessionController];
  themeController = [sessionController themeController];

  v8 = DBLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = themeController;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "#wallpaperDebug Theme Controller found from session controller: %@", buf, 0xCu);
  }

  v9 = [DBEnvironmentConfiguration alloc];
  iconBadgeController = [(DBDisplayManager *)self iconBadgeController];
  sessionController2 = [(DBDisplayManager *)self sessionController];
  v11 = themeController;
  v20 = themeController;
  currentSupportedFeatures = [sessionController2 currentSupportedFeatures];
  processMonitor = [(DBDisplayManager *)self processMonitor];
  thermalMonitor = [(DBDisplayManager *)self thermalMonitor];
  sessionController3 = [(DBDisplayManager *)self sessionController];
  currentVehicle = [sessionController3 currentVehicle];
  navigationStateProvider = [(DBDisplayManager *)self navigationStateProvider];
  v18 = [(DBEnvironmentConfiguration *)v9 initWithDisplayConfiguration:configurationCopy layoutPublisher:dashboardDisplayLayoutPublisher iconBadgeController:iconBadgeController session:sessionCopy supportedFeatures:currentSupportedFeatures processMonitor:processMonitor thermalMonitor:thermalMonitor vehicle:currentVehicle themeController:v11 navigationStateProvider:navigationStateProvider analyticsProvider:self];

  return v18;
}

- (void)_setNeedsNavigationStateProvider:(BOOL)provider forDisplayIdentity:(id)identity
{
  providerCopy = provider;
  identityCopy = identity;
  navigationStateProviderRequesters = [(DBDisplayManager *)self navigationStateProviderRequesters];
  navigationStateProviderRequesters2 = navigationStateProviderRequesters;
  if (providerCopy)
  {

    if (!navigationStateProviderRequesters2)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(DBDisplayManager *)self setNavigationStateProviderRequesters:v9];
    }

    navigationStateProviderRequesters2 = [(DBDisplayManager *)self navigationStateProviderRequesters];
    [navigationStateProviderRequesters2 addObject:identityCopy];
  }

  else
  {
    [navigationStateProviderRequesters removeObject:identityCopy];
  }

  [(DBDisplayManager *)self _updateNavigationStateProvider];
}

- (void)_updateNavigationStateProvider
{
  navigationStateProviderRequesters = [(DBDisplayManager *)self navigationStateProviderRequesters];
  v4 = [navigationStateProviderRequesters count];

  if (v4)
  {
    if (!self->_navigationStateProvider)
    {
      v7 = objc_alloc_init(DBNavigationStateProvider);
      navigationStateProvider = self->_navigationStateProvider;
      self->_navigationStateProvider = v7;

      v9 = self->_navigationStateProvider;

      [(DBNavigationStateProvider *)v9 setInfoProvider:self];
    }
  }

  else
  {
    navigationStateProvider = [(DBDisplayManager *)self navigationStateProvider];
    [navigationStateProvider invalidate];

    v6 = self->_navigationStateProvider;
    self->_navigationStateProvider = 0;
  }
}

- (void)_enableMapsProbabilisticGuardMalloc
{
  v2 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "[MapsPGM] Maps PGM requested!", buf, 2u);
  }

  v3 = +[DBApplicationController sharedInstance];
  mapsApplication = [v3 mapsApplication];

  v5 = MEMORY[0x277D46F60];
  info = [mapsApplication info];
  applicationIdentity = [info applicationIdentity];
  v8 = [v5 identityForLSApplicationIdentity:applicationIdentity];

  v9 = MEMORY[0x277D46F48];
  v10 = [MEMORY[0x277D46FA0] predicateMatchingIdentity:v8];
  v11 = [v9 handleForPredicate:v10 error:0];

  if (v11)
  {
    mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
    [v11 auditToken];
    v13 = [mEMORY[0x277D0AAC0] registerProcessForAuditToken:buf];
  }

  mEMORY[0x277D0AAC0]2 = [MEMORY[0x277D0AAC0] sharedInstance];
  v15 = [mEMORY[0x277D0AAC0]2 processForIdentity:v8];
  v16 = objc_opt_class();
  v17 = v15;
  if (v16)
  {
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
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

  v19 = v18;

  v20 = objc_alloc_init(MEMORY[0x277D0AAA8]);
  [v20 setIdentity:v8];
  [v20 setLaunchIntent:2];
  [v20 setEnvironment:&unk_285AA4BB8];
  v21 = DBLogForCategory(0x1DuLL);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v22)
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v21, OS_LOG_TYPE_DEFAULT, "[MapsPGM] Maps process is already running. Terminating...", buf, 2u);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __55__DBDisplayManager__enableMapsProbabilisticGuardMalloc__block_invoke;
    v24[3] = &unk_278F01690;
    v25 = v20;
    [v19 killForReason:5 andReport:0 withDescription:@"Enabling PGM" completion:v24];
    mEMORY[0x277D0AAC0]3 = v25;
  }

  else
  {
    if (v22)
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v21, OS_LOG_TYPE_DEFAULT, "[MapsPGM] Requesting process launch of Maps with PGM environment variables", buf, 2u);
    }

    mEMORY[0x277D0AAC0]3 = [MEMORY[0x277D0AAC0] sharedInstance];
    [mEMORY[0x277D0AAC0]3 launchProcessWithContext:v20];
  }
}

void __55__DBDisplayManager__enableMapsProbabilisticGuardMalloc__block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"failed";
    if (a2)
    {
      v5 = @"succeeded";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "[MapsPGM] Maps termination %@", &v8, 0xCu);
  }

  v6 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "[MapsPGM] Requesting process launch of Maps with PGM environment variables", &v8, 2u);
  }

  v7 = [MEMORY[0x277D0AAC0] sharedInstance];
  [v7 launchProcessWithContext:*(a1 + 32)];
}

- (BOOL)bundleIdentifierSupportsDashboard:(id)dashboard
{
  dashboardCopy = dashboard;
  v4 = +[DBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:dashboardCopy];

  LOBYTE(dashboardCopy) = [v5 supportsDashboardNavigation];
  return dashboardCopy;
}

- (BOOL)bundleIdentifierSupportsInstrumentCluster:(id)cluster
{
  clusterCopy = cluster;
  v4 = +[DBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:clusterCopy];

  LOBYTE(clusterCopy) = [v5 supportsInstrumentClusterNavigation];
  return clusterCopy;
}

- (BOOL)bundleIdentifierIsCertificationApp:(id)app
{
  appCopy = app;
  v4 = +[DBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:appCopy];

  LOBYTE(appCopy) = [v5 isCertificationApp];
  return appCopy;
}

- (void)_setNeedsTemplateProcessMonitor:(BOOL)monitor forDisplayIdentity:(id)identity
{
  monitorCopy = monitor;
  identityCopy = identity;
  processMonitorRequesters = [(DBDisplayManager *)self processMonitorRequesters];
  processMonitorRequesters2 = processMonitorRequesters;
  if (monitorCopy)
  {

    if (!processMonitorRequesters2)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(DBDisplayManager *)self setProcessMonitorRequesters:v9];
    }

    processMonitorRequesters2 = [(DBDisplayManager *)self processMonitorRequesters];
    [processMonitorRequesters2 addObject:identityCopy];
  }

  else
  {
    [processMonitorRequesters removeObject:identityCopy];
  }

  [(DBDisplayManager *)self _updateTemplateProcessMonitor];
}

- (void)_updateTemplateProcessMonitor
{
  processMonitorRequesters = [(DBDisplayManager *)self processMonitorRequesters];
  v4 = [processMonitorRequesters count];

  processMonitor = self->_processMonitor;
  if (v4)
  {
    if (processMonitor)
    {
      return;
    }

    v6 = objc_alloc_init(DBProcessMonitor);
  }

  else
  {
    [(DBProcessMonitor *)processMonitor invalidate];
    v6 = 0;
  }

  v7 = self->_processMonitor;
  self->_processMonitor = v6;

  MEMORY[0x2821F96F8](v6, v7);
}

void __55__DBDisplayManager__updateSessionAssertionsIfNecessary__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Error acquiring model policy assertion: %{public}@", &v2, 0xCu);
}

- (void)_setupMainDisplayWithDisplayConfiguration:(uint64_t)a1 session:(uint64_t)a2 defaultSceneWorkspaceIdentifier:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_fault_impl(&dword_248146000, log, OS_LOG_TYPE_FAULT, "Attempting to set up main display for identity %{public}@ while a main screen controller already exists for identity %{public}@", &v3, 0x16u);
}

void __79__DBDisplayManager__updateVehicleViewAreasForSession_environmentConfiguration___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Unable to save view areas: %{public}@", &v2, 0xCu);
}

@end