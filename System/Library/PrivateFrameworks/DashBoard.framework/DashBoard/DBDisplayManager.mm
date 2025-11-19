@interface DBDisplayManager
- (BOOL)_isPassengerDisplay:(id)a3;
- (BOOL)bundleIdentifierIsCertificationApp:(id)a3;
- (BOOL)bundleIdentifierSupportsDashboard:(id)a3;
- (BOOL)bundleIdentifierSupportsInstrumentCluster:(id)a3;
- (DBAppHistory)appHistory;
- (DBDisplayManager)init;
- (id)_createEnvironmentConfigurationForDisplayConfiguration:(id)a3 session:(id)a4;
- (id)_createRootSceneWithIdentifier:(id)a3 displayConfiguration:(id)a4;
- (id)focusWindowForDisplayIdentity:(id)a3;
- (id)iconLayoutDataProviderForVehicleIdentifier:(id)a3;
- (id)systemGestureWindowForDisplayIdentity:(id)a3;
- (id)widgetLayoutDataProviderForVehicleIdentifier:(id)a3;
- (void)_enableMapsProbabilisticGuardMalloc;
- (void)_handleConnectedDisplaysIfPossible;
- (void)_setCornerMaskImageIfNecessaryForPrimaryDisplayConfiguration:(id)a3;
- (void)_setNeedsNavigationStateProvider:(BOOL)a3 forDisplayIdentity:(id)a4;
- (void)_setNeedsTemplateProcessMonitor:(BOOL)a3 forDisplayIdentity:(id)a4;
- (void)_setupInstrumentClusterWithDisplayConfiguration:(id)a3 session:(id)a4 defaultSceneWorkspaceIdentifier:(id)a5;
- (void)_setupMainDisplayWithDisplayConfiguration:(id)a3 session:(id)a4 defaultSceneWorkspaceIdentifier:(id)a5;
- (void)_setupPassengerDisplayWithDisplayConfiguration:(id)a3 session:(id)a4 defaultSceneWorkspaceIdentifier:(id)a5;
- (void)_updateNavigationStateProvider;
- (void)_updateSessionAssertionsIfNecessary;
- (void)_updateTemplateProcessMonitor;
- (void)_updateVehicleViewAreasForSession:(id)a3 environmentConfiguration:(id)a4;
- (void)activate;
- (void)didChangeAppearanceMode:(int64_t)a3 forDisplayID:(id)a4;
- (void)didConnectDisplayID:(id)a3;
- (void)didDisconnectDisplayID:(id)a3;
- (void)didForegroundAssetForDisplayID:(id)a3;
- (void)displayMonitor:(id)a3 didConnectIdentity:(id)a4 withConfiguration:(id)a5;
- (void)displayMonitor:(id)a3 didUpdateIdentity:(id)a4 withConfiguration:(id)a5;
- (void)displayMonitor:(id)a3 willDisconnectIdentity:(id)a4;
- (void)sceneDidInvalidate:(id)a3;
- (void)sessionController:(id)a3 didConnectSession:(id)a4;
- (void)sessionServiceBecameActive:(id)a3;
- (void)sessionServiceBecameInactive:(id)a3;
- (void)workspace:(id)a3 didAddScene:(id)a4;
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

    v15 = [MEMORY[0x277CBEB38] dictionary];
    displayToScreenControllerMap = v2->_displayToScreenControllerMap;
    v2->_displayToScreenControllerMap = v15;

    v17 = [MEMORY[0x277CBEB38] dictionary];
    displayToPresentationBinderMap = v2->_displayToPresentationBinderMap;
    v2->_displayToPresentationBinderMap = v17;

    v19 = [MEMORY[0x277CBEB38] dictionary];
    displayToRootSceneMap = v2->_displayToRootSceneMap;
    v2->_displayToRootSceneMap = v19;

    v21 = [MEMORY[0x277CBEB38] dictionary];
    displayToEndpointInjector = v2->_displayToEndpointInjector;
    v2->_displayToEndpointInjector = v21;

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
    v3 = [MEMORY[0x277D0AA90] sharedInstance];
    [v3 addObserver:self];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [v3 connectedIdentities];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          v10 = [v3 configurationForIdentity:v9];
          if (v10)
          {
            [(DBDisplayManager *)self displayMonitor:v3 didConnectIdentity:v9 withConfiguration:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [(DBDisplayManager *)self setActivated:1];
  }
}

- (id)focusWindowForDisplayIdentity:(id)a3
{
  v4 = a3;
  v5 = [(DBDisplayManager *)self displayToScreenControllerMap];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 focusWindow];

  return v7;
}

- (id)systemGestureWindowForDisplayIdentity:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(DBDisplayManager *)self displayToScreenControllerMap];
    v6 = [v5 objectForKey:v4];

    v7 = [v6 systemGestureWindow];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (DBAppHistory)appHistory
{
  v2 = [(DBDisplayManager *)self mainScreenController];
  v3 = [v2 environmentConfiguration];
  v4 = [v3 appHistory];

  return v4;
}

- (id)iconLayoutDataProviderForVehicleIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(DBDisplayManager *)self mainScreenController];
    v6 = [v5 environmentConfiguration];
    v7 = [v6 vehicleID];
    v8 = [v4 isEqualToString:v7];

    if (v8)
    {
      v9 = [v5 iconLayoutDataProvider];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)widgetLayoutDataProviderForVehicleIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(DBDisplayManager *)self mainScreenController];
    v6 = [v5 environmentConfiguration];
    v7 = [v6 vehicleID];
    v8 = [v4 isEqualToString:v7];

    if (v8)
    {
      v9 = [v5 widgetLayoutDataProvider];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)displayMonitor:(id)a3 didConnectIdentity:(id)a4 withConfiguration:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v8 isCarDisplay];
  v10 = [v8 isCarInstrumentsDisplay];
  v11 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromBOOL();
    v13 = NSStringFromBOOL();
    v20 = 138543874;
    v21 = v7;
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = v13;
    _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "didConnectIdentity:%{public}@, is car display: %{public}@, is cluster display: %{public}@", &v20, 0x20u);
  }

  if (v10)
  {
    kdebug_trace();
    v14 = [MEMORY[0x277CBEAA8] date];
    clusterDisplayReadyDate = self->_clusterDisplayReadyDate;
    self->_clusterDisplayReadyDate = v14;

    v16 = [(DBDisplayManager *)self clusterDisplayReadyDate];
    [(DBAnalytics *)self->_analytics setClusterDisplayReadyTimestamp:v16];
LABEL_7:

    [(DBDisplayManager *)self _setNeedsNavigationStateProvider:1 forDisplayIdentity:v7];
    [(DBDisplayManager *)self _setNeedsTemplateProcessMonitor:1 forDisplayIdentity:v7];
    v19 = [(DBDisplayManager *)self pendingDisplays];
    [v19 addObject:v8];

    [(DBDisplayManager *)self _handleConnectedDisplaysIfPossible];
    [(DBDisplayManager *)self _updateSessionAssertionsIfNecessary];
    goto LABEL_8;
  }

  if (v9)
  {
    kdebug_trace();
    v17 = [MEMORY[0x277CBEAA8] date];
    mainDisplayReadyDate = self->_mainDisplayReadyDate;
    self->_mainDisplayReadyDate = v17;

    v16 = [(DBDisplayManager *)self mainDisplayReadyDate];
    [(DBAnalytics *)self->_analytics setMainDisplayReadyTimestamp:v16];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)displayMonitor:(id)a3 didUpdateIdentity:(id)a4 withConfiguration:(id)a5
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "didUpdateIdentity:%{public}@", &v7, 0xCu);
  }
}

- (void)displayMonitor:(id)a3 willDisconnectIdentity:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v5;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "willDisconnectIdentity:%{public}@", buf, 0xCu);
  }

  v7 = [(DBDisplayManager *)self pendingDisplays];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__DBDisplayManager_displayMonitor_willDisconnectIdentity___block_invoke;
  v22[3] = &unk_278F03BE0;
  v8 = v5;
  v23 = v8;
  v9 = [v7 bs_firstObjectPassingTest:v22];

  if (v9)
  {
    v10 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v9;
      _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Discarding pending display: %{public}@", buf, 0xCu);
    }

    v11 = [(DBDisplayManager *)self pendingDisplays];
    [v11 removeObject:v9];
  }

  [(DBDisplayManager *)self _setNeedsNavigationStateProvider:0 forDisplayIdentity:v8];
  [(DBDisplayManager *)self _setNeedsTemplateProcessMonitor:0 forDisplayIdentity:v8];
  v12 = [(DBDisplayManager *)self sessionController];
  [v12 setNeedsLayerMetadataService:0 forDisplayIdentity:v8];

  v13 = [(DBDisplayManager *)self displayToScreenControllerMap];
  v14 = [v13 objectForKey:v8];

  v15 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v14;
    _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_DEFAULT, "Invalidating screen controller: %{public}@", buf, 0xCu);
  }

  [v14 invalidate];
  v16 = [(DBDisplayManager *)self mainScreenController];

  if (v14 == v16)
  {
    [(DBDisplayManager *)self setMainScreenController:0];
    analytics = self->_analytics;
    self->_analytics = 0;
  }

  v18 = [(DBDisplayManager *)self displayToScreenControllerMap];
  [v18 removeObjectForKey:v8];

  v19 = [(DBDisplayManager *)self defaultSceneWorkspaceManager];
  [v19 relinquishWorkspaceIdentifierForDisplayIdentity:v8];

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

- (void)sceneDidInvalidate:(id)a3
{
  v20 = a3;
  v4 = [(DBDisplayManager *)self displayToPresentationBinderMap];
  v5 = [v20 settings];
  v6 = [v5 displayIdentity];
  v7 = [v4 objectForKey:v6];

  [v7 removeScene:v20];
  v8 = [v7 scenes];
  v9 = [v8 count];

  if (!v9)
  {
    [v7 invalidate];
    v10 = [(DBDisplayManager *)self displayToPresentationBinderMap];
    v11 = [v20 settings];
    v12 = [v11 displayIdentity];
    [v10 setObject:0 forKeyedSubscript:v12];
  }

  v13 = [(DBDisplayManager *)self displayToEndpointInjector];
  v14 = [v20 settings];
  v15 = [v14 displayIdentity];
  v16 = [v13 objectForKey:v15];

  v17 = [(DBDisplayManager *)self displayToEndpointInjector];
  v18 = [v20 settings];
  v19 = [v18 displayIdentity];
  [v17 removeObjectForKey:v19];

  [v16 invalidate];
}

- (void)workspace:(id)a3 didAddScene:(id)a4
{
  v5 = a4;
  v6 = [(DBDisplayManager *)self displayToPresentationBinderMap];
  v7 = [v5 settings];
  v8 = [v7 displayIdentity];
  v9 = [v6 objectForKey:v8];

  if (!v9)
  {
    v10 = objc_alloc(MEMORY[0x277D75928]);
    v11 = [v5 settings];
    v12 = [v11 displayConfiguration];
    v13 = [v10 initWithDisplayConfiguration:v12];

    [v13 setVisibilityIdentifier:@"com.apple.CarPlayApp"];
    v14 = [MEMORY[0x277CF32D0] bootstrapConfiguration];
    v15 = [MEMORY[0x277D0AD78] serviceName];
    v16 = [v14 domainsContainingServiceIdentifier:v15];
    v17 = [v16 anyObject];
    v18 = [v17 identifier];

    v19 = MEMORY[0x277CF3290];
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __42__DBDisplayManager_workspace_didAddScene___block_invoke;
    v37 = &unk_278F03C28;
    v38 = v13;
    v39 = v18;
    v20 = v18;
    v21 = v13;
    v22 = [v19 injectorWithConfigurator:&v34];
    v23 = [(DBDisplayManager *)self displayToEndpointInjector];
    v24 = [v5 settings];
    v25 = [v24 displayIdentity];
    [v23 setObject:v22 forKey:v25];

    v26 = MEMORY[0x277CCACA8];
    v27 = [v5 settings];
    v28 = [v27 displayConfiguration];
    v29 = [v28 identity];
    v30 = [v26 stringWithFormat:@"RootWindow-%@-%p", v29, self, v34, v35, v36, v37];

    v9 = [objc_alloc(MEMORY[0x277D75930]) initWithIdentifier:v30 priority:0 appearanceStyle:0 rootWindow:v21];
    v31 = [(DBDisplayManager *)self displayToPresentationBinderMap];
    v32 = [v5 settings];
    v33 = [v32 displayIdentity];
    [v31 setObject:v9 forKeyedSubscript:v33];
  }

  [v9 addScene:v5];
  [v5 addObserver:self];
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

- (void)sessionServiceBecameActive:(id)a3
{
  [(DBDisplayManager *)self setSessionServiceIsActive:1];

  [(DBDisplayManager *)self _updateSessionAssertionsIfNecessary];
}

- (void)sessionServiceBecameInactive:(id)a3
{
  [(DBDisplayManager *)self setSessionServiceIsActive:0];

  [(DBDisplayManager *)self _updateSessionAssertionsIfNecessary];
}

- (void)sessionController:(id)a3 didConnectSession:(id)a4
{
  v5 = a4;
  [(DBDisplayManager *)self _updateSessionAssertionsIfNecessary];
  v6 = +[_TtC9DashBoard14DBAssetLibrary shared];
  [v6 setSession:v5];

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

- (void)didConnectDisplayID:(id)a3
{
  v4 = a3;
  v5 = [(DBDisplayManager *)self mainScreenController];
  v6 = [v5 displayInfo];
  v7 = [v6 identifier];

  if (v7 == v4)
  {
    v8 = [(DBDisplayManager *)self mainScreenController];
    [v8 handleMainAssetForegrounded];
  }
}

- (void)didDisconnectDisplayID:(id)a3
{
  v4 = a3;
  v5 = [(DBDisplayManager *)self foregroundedAssetDisplayIDs];
  [v5 removeObject:v4];
}

- (void)didForegroundAssetForDisplayID:(id)a3
{
  v4 = a3;
  v5 = [(DBDisplayManager *)self foregroundedAssetDisplayIDs];
  [v5 addObject:v4];

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v6 = [(DBDisplayManager *)self displayToScreenControllerMap];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__DBDisplayManager_didForegroundAssetForDisplayID___block_invoke;
  v8[3] = &unk_278F03C50;
  v8[4] = self;
  v8[5] = &v9;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];

  if (*(v10 + 24) == 1)
  {
    v7 = [(DBDisplayManager *)self mainScreenController];
    [v7 handleAllAssetsForegrounded];
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

- (void)didChangeAppearanceMode:(int64_t)a3 forDisplayID:(id)a4
{
  v6 = a4;
  v7 = [(DBDisplayManager *)self displayToScreenControllerMap];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__DBDisplayManager_didChangeAppearanceMode_forDisplayID___block_invoke;
  v9[3] = &unk_278F03C78;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
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
    v4 = [(DBDisplayManager *)self displayToScreenControllerMap];
    if ([v4 count])
    {
      v3 = 1;
    }

    else
    {
      v5 = [(DBDisplayManager *)self sessionController];
      v6 = [v5 currentSession];
      v3 = v6 != 0;
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

  v9 = [(DBDisplayManager *)self idleExitTransaction];

  if (v3)
  {
    if (!v9)
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

    v12 = [(DBDisplayManager *)self watchdogMonitoringAssertion];

    if (!v12)
    {
      v13 = DBLogForCategory(0x1DuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Taking system shell watchdog monitoring assertion", &v27, 2u);
      }

      v14 = [MEMORY[0x277D0AB10] sharedInstance];
      v15 = [v14 assertWatchdogEnabledForLimitedDurationForReason:@"CarPlaySession"];
      [(DBDisplayManager *)self setWatchdogMonitoringAssertion:v15];
    }

    v16 = [(DBDisplayManager *)self modelPolicyAssertion];
    if (!v16)
    {
      v17 = [MEMORY[0x277CF89D0] enableModelPolicyAssertion];
      v18 = [v17 valueBool];

      if (!v18)
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

      v16 = [(DBDisplayManager *)self modelPolicyAssertion];
      [v16 acquireAssertionWithCompletionHandler:&__block_literal_global_252];
    }

    goto LABEL_35;
  }

  if (v9)
  {
    v21 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_248146000, v21, OS_LOG_TYPE_DEFAULT, "Releasing idle-exit transaction", &v27, 2u);
    }

    [(DBDisplayManager *)self setIdleExitTransaction:0];
  }

  v22 = [(DBDisplayManager *)self watchdogMonitoringAssertion];

  if (v22)
  {
    v23 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_248146000, v23, OS_LOG_TYPE_DEFAULT, "Releasing system shell watchding monitoring assertion", &v27, 2u);
    }

    v24 = [(DBDisplayManager *)self watchdogMonitoringAssertion];
    [v24 invalidate];

    [(DBDisplayManager *)self setWatchdogMonitoringAssertion:0];
  }

  v25 = [(DBDisplayManager *)self modelPolicyAssertion];

  if (v25)
  {
    v26 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_248146000, v26, OS_LOG_TYPE_DEFAULT, "Releasing CarPlay model policy assertion", &v27, 2u);
    }

    v16 = [(DBDisplayManager *)self modelPolicyAssertion];
    [(DBDisplayManager *)self setModelPolicyAssertion:0];
    [v16 invalidateWithCompletionHandler:&__block_literal_global_256];
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

- (void)_setCornerMaskImageIfNecessaryForPrimaryDisplayConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(DBDisplayManager *)self sessionController];
  v6 = [v5 currentSession];
  v7 = [v6 configuration];
  v8 = [v7 screens];
  v9 = [v8 bs_firstObjectPassingTest:&__block_literal_global_259];

  if ([v9 wantsCornerMasks])
  {
    v10 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Main screen is requesting corner masks.", v19, 2u);
    }

    v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v11 addObserver:self forKeyPath:@"CARCornerRadius" options:1 context:0];
    v12 = [v11 objectForKey:@"CARCornerRadius"];

    if (v12)
    {
      [v11 floatForKey:@"CARCornerRadius"];
      v14 = v13;
    }

    else
    {
      v14 = 22.0;
    }

    CRDisplayScaleAdjustedPointScale();
    v16 = DBAirPlayCornerMaskImageData(0, v14, v15);
    v17 = [(DBDisplayManager *)self sessionController];
    v18 = [v17 currentSession];
    [v18 setCornerMaskImageData:v16 forScreenInfo:v9];
  }
}

- (void)_handleConnectedDisplaysIfPossible
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(DBDisplayManager *)self pendingDisplays];
  v4 = [v3 copy];

  if ([v4 count])
  {
    v5 = [(DBDisplayManager *)self sessionController];
    v6 = [v5 currentSession];

    v7 = DBLogForCategory(0x1DuLL);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 138543618;
        v13 = v4;
        v14 = 2114;
        v15 = v6;
        _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Handling connected displays: %{public}@ with session: %{public}@", buf, 0x16u);
      }

      v9 = [(DBDisplayManager *)self pendingDisplays];
      [v9 removeAllObjects];

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __54__DBDisplayManager__handleConnectedDisplaysIfPossible__block_invoke;
      v10[3] = &unk_278F03CC8;
      v10[4] = self;
      v6 = v6;
      v11 = v6;
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
    v6 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "No pending displays", buf, 2u);
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

- (void)_setupPassengerDisplayWithDisplayConfiguration:(id)a3 session:(id)a4 defaultSceneWorkspaceIdentifier:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 identity];
  v12 = [(DBDisplayManager *)self displayToScreenControllerMap];
  v13 = [v12 objectForKey:v11];

  if (v13)
  {
    v14 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v27 = v11;
      _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_INFO, "Passenger display screen controller already set up for %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"DBPassengerDisplay-%@", v11];
    v16 = [(DBDisplayManager *)self _createRootSceneWithIdentifier:v15 displayConfiguration:v8];
    v17 = [(DBDisplayManager *)self displayToRootSceneMap];
    [v17 setObject:v16 forKey:v11];

    v18 = [(DBDisplayManager *)self _createEnvironmentConfigurationForDisplayConfiguration:v8 session:v9];
    v19 = [(DBDisplayManager *)self sessionController];
    v20 = [v19 uisyncChannel];
    [v18 setUisyncChannel:v20];

    v21 = [(DBDisplayManager *)self sessionController];
    v22 = [v21 layerMetadataService];
    [v18 setLayerMetadataService:v22];

    [v18 setUisyncSessionEventDelegate:self];
    v23 = [[DBPassengerDisplay alloc] initWithRootScene:v16 environmentConfiguration:v18 defaultSceneWorkspaceIdentifier:v10];
    v24 = [(DBDisplayManager *)self displayToScreenControllerMap];
    [v24 setObject:v23 forKey:v11];

    v25 = [(DBDisplayManager *)self sessionController];
    [v25 addSessionObserver:v18];
  }
}

- (BOOL)_isPassengerDisplay:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBDisplayManager *)self sessionController];
  v6 = [v5 currentSession];

  v7 = [v6 configuration];
  v8 = [v7 screens];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __40__DBDisplayManager__isPassengerDisplay___block_invoke;
  v16[3] = &unk_278F01870;
  v9 = v4;
  v17 = v9;
  v10 = [v8 bs_firstObjectPassingTest:v16];

  v11 = [v10 physicalDisplay];
  v12 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 hardwareIdentifier];
    *buf = 136446978;
    v19 = "[DBDisplayManager _isPassengerDisplay:]";
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = v13;
    v24 = 2114;
    v25 = v11;
    _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: session = %{public}@. hardwareID =  = %{public}@. passengerDisplayInfo = %{public}@", buf, 0x2Au);
  }

  v14 = [v11 supportsAdditionalContent];
  return v14;
}

uint64_t __40__DBDisplayManager__isPassengerDisplay___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) hardwareIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)_setupInstrumentClusterWithDisplayConfiguration:(id)a3 session:(id)a4 defaultSceneWorkspaceIdentifier:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 identity];
  v12 = [(DBDisplayManager *)self displayToScreenControllerMap];
  v13 = [v12 objectForKey:v11];

  if (v13)
  {
    v14 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v31 = v11;
      _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_INFO, "Instrument cluster screen controller already set up for %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"DBInstrumentCluster-%@", v11];
    v15 = [DBDisplayManager _createRootSceneWithIdentifier:"_createRootSceneWithIdentifier:displayConfiguration:" displayConfiguration:?];
    v16 = [(DBDisplayManager *)self displayToRootSceneMap];
    [v16 setObject:v15 forKey:v11];

    v17 = [(DBDisplayManager *)self _createEnvironmentConfigurationForDisplayConfiguration:v8 session:v9];
    v18 = [(DBDisplayManager *)self sessionController];
    v19 = [v18 uisyncChannel];
    [v17 setUisyncChannel:v19];

    v20 = [(DBDisplayManager *)self sessionController];
    v21 = [v20 layerMetadataService];
    [v17 setLayerMetadataService:v21];

    [v17 setUisyncSessionEventDelegate:self];
    v22 = [[DBInstrumentCluster alloc] initWithRootScene:v15 environmentConfiguration:v17 defaultSceneWorkspaceIdentifier:v10];
    [(DBInstrumentCluster *)v22 handleConnect];
    v23 = [(DBDisplayManager *)self displayToScreenControllerMap];
    [v23 setObject:v22 forKey:v11];

    v24 = [(DBDisplayManager *)self sessionController];
    [v24 addSessionObserver:v17];

    v25 = [(DBScreenController *)v22 displayInfo];
    v26 = [v25 identifier];

    if (([v26 isEqualToString:@"Cluster_Display"] & 1) != 0 || objc_msgSend(v26, "isEqualToString:", @"Secondary_Cluster_Display"))
    {
      v27 = [(DBDisplayManager *)self sessionController];
      v28 = [v27 clusterThemeService];
      [v28 registerThemeObserver:v22];
    }
  }
}

- (void)_setupMainDisplayWithDisplayConfiguration:(id)a3 session:(id)a4 defaultSceneWorkspaceIdentifier:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 identity];
  v12 = [(DBDisplayManager *)self displayToScreenControllerMap];
  v13 = [v12 objectForKey:v11];

  if (v13)
  {
    v14 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v41 = v11;
      _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_INFO, "Main screen controller already set up for %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v15 = [(DBDisplayManager *)self mainScreenController];

    if (v15)
    {
      v16 = [(DBDisplayManager *)self mainScreenController];
      v17 = [v16 environmentConfiguration];
      v18 = [v17 displayIdentity];

      v19 = DBLogForCategory(0x1DuLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [DBDisplayManager _setupMainDisplayWithDisplayConfiguration:v11 session:v18 defaultSceneWorkspaceIdentifier:v19];
      }

      v20 = [(DBDisplayManager *)self mainScreenController];
      [v20 invalidate];

      [(DBDisplayManager *)self setMainScreenController:0];
    }

    HTBeginNonResponsiveTaskWithNameAndExpiration();
    v21 = DBLogForCategory(0xDuLL);
    if (os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248146000, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CarPlayReceivedMainDisplay", "", buf, 2u);
    }

    [(DBDisplayManager *)self _setCornerMaskImageIfNecessaryForPrimaryDisplayConfiguration:v8];
    v22 = [(DBDisplayManager *)self dashboardDisplayLayoutPublisher];
    v14 = [v22 transitionAssertionWithReason:@"Display Connection"];

    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"DBDashboard-%@", v11];
    v23 = [DBDisplayManager _createRootSceneWithIdentifier:"_createRootSceneWithIdentifier:displayConfiguration:" displayConfiguration:?];
    v24 = [(DBDisplayManager *)self displayToRootSceneMap];
    [v24 setObject:v23 forKey:v11];

    v25 = [(DBDisplayManager *)self _createEnvironmentConfigurationForDisplayConfiguration:v8 session:v9];
    v26 = [(DBDisplayManager *)self iconImageCache];
    [v25 setIconImageCache:v26];

    v27 = [(DBDisplayManager *)self sessionController];
    v28 = [v27 uisyncChannel];
    [v25 setUisyncChannel:v28];

    [v25 setUisyncSessionEventDelegate:self];
    v29 = [[DBAnalytics alloc] initWithEnvironmentConfiguration:v25];
    analytics = self->_analytics;
    self->_analytics = v29;

    v31 = self->_analytics;
    v32 = [(DBDisplayManager *)self mainDisplayReadyDate];
    [(DBAnalytics *)v31 setMainDisplayReadyTimestamp:v32];

    v33 = self->_analytics;
    v34 = [(DBDisplayManager *)self clusterDisplayReadyDate];
    [(DBAnalytics *)v33 setClusterDisplayReadyTimestamp:v34];

    v35 = [[DBDashboard alloc] initWithRootScene:v23 environmentConfiguration:v25 defaultSceneWorkspaceIdentifier:v10];
    [(DBDisplayManager *)self _updateVehicleViewAreasForSession:v9 environmentConfiguration:v25];
    [(DBDashboard *)v35 handleConnect];
    v36 = [(DBDisplayManager *)self displayToScreenControllerMap];
    [v36 setObject:v35 forKey:v11];

    [(DBDisplayManager *)self setMainScreenController:v35];
    v37 = [(DBDisplayManager *)self sessionController];
    [v37 addSessionObserver:v25];

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

- (void)_updateVehicleViewAreasForSession:(id)a3 environmentConfiguration:(id)a4
{
  v4 = MEMORY[0x277CF8A68];
  v5 = a4;
  v10 = objc_alloc_init(v4);
  v6 = [v5 vehicle];
  v7 = [v5 statusBarInsetViewAreas];

  v8 = [v6 identifier];
  v9 = [v8 UUIDString];
  [v10 saveViewAreas:v7 forVehicleIdentifier:v9 completion:&__block_literal_global_283];
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

- (id)_createRootSceneWithIdentifier:(id)a3 displayConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  rootSceneWorkspace = self->_rootSceneWorkspace;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __72__DBDisplayManager__createRootSceneWithIdentifier_displayConfiguration___block_invoke;
  v16 = &unk_278F021D0;
  v17 = v6;
  v18 = v7;
  v9 = v7;
  v10 = v6;
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

- (id)_createEnvironmentConfigurationForDisplayConfiguration:(id)a3 session:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = a4;
  v22 = a3;
  if ([v22 isCarDisplay])
  {
    v24 = [(DBDisplayManager *)self dashboardDisplayLayoutPublisher];
  }

  else
  {
    v24 = 0;
  }

  v6 = [(DBDisplayManager *)self sessionController];
  v7 = [v6 themeController];

  v8 = DBLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "#wallpaperDebug Theme Controller found from session controller: %@", buf, 0xCu);
  }

  v9 = [DBEnvironmentConfiguration alloc];
  v10 = [(DBDisplayManager *)self iconBadgeController];
  v21 = [(DBDisplayManager *)self sessionController];
  v11 = v7;
  v20 = v7;
  v12 = [v21 currentSupportedFeatures];
  v13 = [(DBDisplayManager *)self processMonitor];
  v14 = [(DBDisplayManager *)self thermalMonitor];
  v15 = [(DBDisplayManager *)self sessionController];
  v16 = [v15 currentVehicle];
  v17 = [(DBDisplayManager *)self navigationStateProvider];
  v18 = [(DBEnvironmentConfiguration *)v9 initWithDisplayConfiguration:v22 layoutPublisher:v24 iconBadgeController:v10 session:v23 supportedFeatures:v12 processMonitor:v13 thermalMonitor:v14 vehicle:v16 themeController:v11 navigationStateProvider:v17 analyticsProvider:self];

  return v18;
}

- (void)_setNeedsNavigationStateProvider:(BOOL)a3 forDisplayIdentity:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(DBDisplayManager *)self navigationStateProviderRequesters];
  v8 = v7;
  if (v4)
  {

    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(DBDisplayManager *)self setNavigationStateProviderRequesters:v9];
    }

    v8 = [(DBDisplayManager *)self navigationStateProviderRequesters];
    [v8 addObject:v6];
  }

  else
  {
    [v7 removeObject:v6];
  }

  [(DBDisplayManager *)self _updateNavigationStateProvider];
}

- (void)_updateNavigationStateProvider
{
  v3 = [(DBDisplayManager *)self navigationStateProviderRequesters];
  v4 = [v3 count];

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
    v5 = [(DBDisplayManager *)self navigationStateProvider];
    [v5 invalidate];

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
  v4 = [v3 mapsApplication];

  v5 = MEMORY[0x277D46F60];
  v6 = [v4 info];
  v7 = [v6 applicationIdentity];
  v8 = [v5 identityForLSApplicationIdentity:v7];

  v9 = MEMORY[0x277D46F48];
  v10 = [MEMORY[0x277D46FA0] predicateMatchingIdentity:v8];
  v11 = [v9 handleForPredicate:v10 error:0];

  if (v11)
  {
    v12 = [MEMORY[0x277D0AAC0] sharedInstance];
    [v11 auditToken];
    v13 = [v12 registerProcessForAuditToken:buf];
  }

  v14 = [MEMORY[0x277D0AAC0] sharedInstance];
  v15 = [v14 processForIdentity:v8];
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
    v23 = v25;
  }

  else
  {
    if (v22)
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v21, OS_LOG_TYPE_DEFAULT, "[MapsPGM] Requesting process launch of Maps with PGM environment variables", buf, 2u);
    }

    v23 = [MEMORY[0x277D0AAC0] sharedInstance];
    [v23 launchProcessWithContext:v20];
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

- (BOOL)bundleIdentifierSupportsDashboard:(id)a3
{
  v3 = a3;
  v4 = +[DBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:v3];

  LOBYTE(v3) = [v5 supportsDashboardNavigation];
  return v3;
}

- (BOOL)bundleIdentifierSupportsInstrumentCluster:(id)a3
{
  v3 = a3;
  v4 = +[DBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:v3];

  LOBYTE(v3) = [v5 supportsInstrumentClusterNavigation];
  return v3;
}

- (BOOL)bundleIdentifierIsCertificationApp:(id)a3
{
  v3 = a3;
  v4 = +[DBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:v3];

  LOBYTE(v3) = [v5 isCertificationApp];
  return v3;
}

- (void)_setNeedsTemplateProcessMonitor:(BOOL)a3 forDisplayIdentity:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(DBDisplayManager *)self processMonitorRequesters];
  v8 = v7;
  if (v4)
  {

    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(DBDisplayManager *)self setProcessMonitorRequesters:v9];
    }

    v8 = [(DBDisplayManager *)self processMonitorRequesters];
    [v8 addObject:v6];
  }

  else
  {
    [v7 removeObject:v6];
  }

  [(DBDisplayManager *)self _updateTemplateProcessMonitor];
}

- (void)_updateTemplateProcessMonitor
{
  v3 = [(DBDisplayManager *)self processMonitorRequesters];
  v4 = [v3 count];

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