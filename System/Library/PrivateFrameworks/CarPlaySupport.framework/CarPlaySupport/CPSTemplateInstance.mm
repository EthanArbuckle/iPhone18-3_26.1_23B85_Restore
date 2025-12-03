@interface CPSTemplateInstance
- (BOOL)_handleAppViewConnection:(id)connection;
- (BOOL)_handleDashboardConnection:(id)connection;
- (BOOL)_handleInstrumentClusterConnection:(id)connection;
- (BOOL)_templateIsValidForCurrentEntitlement:(id)entitlement presentationStyle:(unint64_t)style;
- (BOOL)clientApplicationSceneIsConnected;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)requiresApplicationScenePresenter;
- (CPSClusterTemplateSetupDelegate)clusterSetupDelegate;
- (CPSNavigator)navigator;
- (CPSTemplateInstance)initWithBundleIdentifier:(id)identifier;
- (CPSTemplateInstanceDelegate)delegate;
- (FBScene)instrumentClusterScene;
- (FBScene)mapWidgetScene;
- (FBScene)scene;
- (UIEdgeInsets)currentSafeAreaInsets;
- (UIEdgeInsets)safeAreaInsetsForScene:(id)scene;
- (UIWindowScene)windowSceneForGuidanceWidgetScene;
- (UIWindowScene)windowSceneForInstrumentClusterMapWidgetScene;
- (UIWindowScene)windowSceneForMapWidgetScene;
- (UIWindowScene)windowSceneForTemplateApplicationScene;
- (id)dashboardEndpoint;
- (id)endpoint;
- (id)instrumentClusterEndpoint;
- (id)instrumentClusterViewControllerForDisplayIdentifier:(id)identifier;
- (id)visibilityEnvironmentIdentifier;
- (void)_appViewConnectionInvalidationHandler;
- (void)_applicationDidThrottleAudioUpdates:(id)updates;
- (void)_dashboardConnectionInvalidationHandler;
- (void)_instrumentClusterConnectionInvalidationHandler;
- (void)_pushNowPlayingIfNeeded;
- (void)addLaneGuidances:(id)guidances;
- (void)addManeuvers:(id)maneuvers;
- (void)allowlistClassesForBaseTemplateProvider:(id)provider;
- (void)bannerDidAppearWithIdentifier:(id)identifier;
- (void)bannerDidDisappearWithIdentifier:(id)identifier;
- (void)bannerTappedWithIdentifier:(id)identifier;
- (void)cancelTrip;
- (void)clientRequestNowPlayingTemplateAnimated:(BOOL)animated;
- (void)containsTemplate:(id)template reply:(id)reply;
- (void)dealloc;
- (void)didCreateNavigator:(id)navigator;
- (void)dismissTemplateAnimated:(id)animated reply:(id)reply;
- (void)finishTrip;
- (void)getPresentedTemplateWithReply:(id)reply;
- (void)getTemplatesWithReply:(id)reply;
- (void)getTopTemplateWithReply:(id)reply;
- (void)hostConnectToClient;
- (void)hostSetAttributedInactiveVariants:(id)variants;
- (void)hostSetInactiveVariants:(id)variants;
- (void)hostSetShortcutButtons:(id)buttons completion:(id)completion;
- (void)invalidate;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationOwnershipChangedToOwner:(unint64_t)owner;
- (void)pauseTripForReason:(unint64_t)reason;
- (void)popTemplateAnimated:(id)animated reply:(id)reply;
- (void)popToRootTemplateAnimated:(id)animated reply:(id)reply;
- (void)popToTemplate:(id)template animated:(id)animated reply:(id)reply;
- (void)preferredGridMaximumGridButtonImageSizeWithReply:(id)reply;
- (void)preferredImageRowMaximumImageSizeWithReply:(id)reply;
- (void)preferredListMaximumGridButtonImageSizeWithReply:(id)reply;
- (void)preferredListMaximumImageSizeWithReply:(id)reply;
- (void)presentActionSheetTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated reply:(id)reply;
- (void)presentAlertTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated reply:(id)reply;
- (void)presentVoiceTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated reply:(id)reply;
- (void)pushEntityTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated presentationStyle:(unint64_t)style reply:(id)reply;
- (void)pushGridTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated presentationStyle:(unint64_t)style reply:(id)reply;
- (void)pushInformationTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated presentationStyle:(unint64_t)style reply:(id)reply;
- (void)pushListTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated presentationStyle:(unint64_t)style reply:(id)reply;
- (void)pushMapTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated presentationStyle:(unint64_t)style reply:(id)reply;
- (void)pushNowPlayingTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated presentationStyle:(unint64_t)style reply:(id)reply;
- (void)pushSearchTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated presentationStyle:(unint64_t)style reply:(id)reply;
- (void)requestBannerProviderWithReply:(id)reply;
- (void)requestNavigationProviderForMapTemplate:(id)template withReply:(id)reply;
- (void)routeChangedWithReason:(unsigned __int8)reason routeInfo:(id)info;
- (void)selectTabBarTemplateAtIndex:(int64_t)index;
- (void)sendSuggestUI:(id)i;
- (void)setActiveManeuvers:(id)maneuvers;
- (void)setCurrentLaneGuidance:(id)guidance;
- (void)setCurrentRoadNameVariants:(id)variants;
- (void)setDestinationNameVariants:(id)variants;
- (void)setDestinationTimeZoneOffsetMinutes:(signed __int16)minutes;
- (void)setHostPrefersDarkUserInterfaceStyle:(BOOL)style;
- (void)setInstrumentClusterScene:(id)scene;
- (void)setManeuverState:(int64_t)state;
- (void)setMapWidgetScene:(id)scene;
- (void)setScene:(id)scene;
- (void)setSendsNavigationMetadata:(BOOL)metadata;
- (void)setTabBarTemplate:(id)template withProxyDelegate:(id)delegate reply:(id)reply animated:(id)animated;
- (void)setWindowSceneForGuidanceWidgetScene:(id)scene;
- (void)setWindowSceneForMapWidgetScene:(id)scene;
- (void)setWindowSceneForTemplateApplicationScene:(id)scene;
- (void)startRerouting;
- (void)templateViewController:(id)controller shouldActivateSiriWithDirectActionContext:(id)context;
- (void)templateViewControllerDidDismiss:(id)dismiss;
- (void)templateViewControllerDidPop:(id)pop;
- (void)updateInterestingInsets:(UIEdgeInsets)insets;
- (void)updateTabBarTemplate:(id)template;
- (void)updateTravelEstimates:(id)estimates forManeuver:(id)maneuver;
- (void)updateTripTravelEstimates:(id)estimates;
- (void)viewController:(id)controller didUpdateSafeAreaInsets:(UIEdgeInsets)insets;
- (void)willInvalidateNavigator:(id)navigator;
@end

@implementation CPSTemplateInstance

- (CPSTemplateInstance)initWithBundleIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v3 = selfCopy;
  selfCopy = 0;
  v37.receiver = v3;
  v37.super_class = CPSTemplateInstance;
  selfCopy = [(CPSTemplateInstance *)&v37 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = objc_alloc_init(CPSApplicationStateMonitor);
    applicationStateMonitor = selfCopy->_applicationStateMonitor;
    selfCopy->_applicationStateMonitor = v4;
    MEMORY[0x277D82BD8](applicationStateMonitor);
    v6 = [CPSBannerSource alloc];
    v7 = [(CPSBannerSource *)v6 initWithBundleIdentifier:location[0] delegate:selfCopy applicationStateMonitor:selfCopy->_applicationStateMonitor];
    bannerSource = selfCopy->_bannerSource;
    selfCopy->_bannerSource = v7;
    MEMORY[0x277D82BD8](bannerSource);
    v9 = [[CPSOverlayViewController alloc] initWithNavigationBarClass:objc_opt_class() toolbarClass:?];
    overlayViewController = selfCopy->_overlayViewController;
    selfCopy->_overlayViewController = v9;
    *&v11 = MEMORY[0x277D82BD8](overlayViewController).n128_u64[0];
    view = [(CPSOverlayViewController *)selfCopy->_overlayViewController view];
    [view setHidden:1];
    *&v12 = MEMORY[0x277D82BD8](view).n128_u64[0];
    [(CPSOverlayViewController *)selfCopy->_overlayViewController setDelegate:selfCopy, v12];
    [(CPSOverlayViewController *)selfCopy->_overlayViewController setEnvironmentProvider:selfCopy];
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    identifierToViewControllerDictionary = selfCopy->_identifierToViewControllerDictionary;
    selfCopy->_identifierToViewControllerDictionary = v13;
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    interfaceControllerListener = selfCopy->_interfaceControllerListener;
    selfCopy->_interfaceControllerListener = anonymousListener;
    *&v17 = MEMORY[0x277D82BD8](interfaceControllerListener).n128_u64[0];
    [(NSXPCListener *)selfCopy->_interfaceControllerListener setDelegate:selfCopy, v17];
    [(NSXPCListener *)selfCopy->_interfaceControllerListener resume];
    v18 = objc_alloc_init(CPSDashboardGuidanceViewController);
    dashboardGuidanceViewController = selfCopy->_dashboardGuidanceViewController;
    selfCopy->_dashboardGuidanceViewController = v18;
    MEMORY[0x277D82BD8](dashboardGuidanceViewController);
    v20 = objc_alloc_init(CPSDashboardEstimatesViewController);
    dashboardEstimatesViewController = selfCopy->_dashboardEstimatesViewController;
    selfCopy->_dashboardEstimatesViewController = v20;
    MEMORY[0x277D82BD8](dashboardEstimatesViewController);
    v22 = [objc_alloc(MEMORY[0x277D551E8]) initWithDelegate:0];
    siriActivationSource = selfCopy->_siriActivationSource;
    selfCopy->_siriActivationSource = v22;
    MEMORY[0x277D82BD8](siriActivationSource);
    v24 = objc_alloc(MEMORY[0x277CBB108]);
    v25 = [v24 initWithIdentifier:location[0] delegate:selfCopy];
    navigationManager = selfCopy->_navigationManager;
    selfCopy->_navigationManager = v25;
    anonymousListener2 = [MEMORY[0x277CCAE98] anonymousListener];
    dashboardControllerListener = selfCopy->_dashboardControllerListener;
    selfCopy->_dashboardControllerListener = anonymousListener2;
    *&v29 = MEMORY[0x277D82BD8](dashboardControllerListener).n128_u64[0];
    [(NSXPCListener *)selfCopy->_dashboardControllerListener setDelegate:selfCopy, v29];
    [(NSXPCListener *)selfCopy->_dashboardControllerListener resume];
    anonymousListener3 = [MEMORY[0x277CCAE98] anonymousListener];
    instrumentClusterControllerListener = selfCopy->_instrumentClusterControllerListener;
    selfCopy->_instrumentClusterControllerListener = anonymousListener3;
    *&v32 = MEMORY[0x277D82BD8](instrumentClusterControllerListener).n128_u64[0];
    [(NSXPCListener *)selfCopy->_instrumentClusterControllerListener setDelegate:selfCopy, v32];
    [(NSXPCListener *)selfCopy->_instrumentClusterControllerListener resume];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:selfCopy selector:sel__applicationDidThrottleAudioUpdates_ name:@"CPSAudioManagerDidThrottleUpdateNotification" object:0];
    MEMORY[0x277D82BD8](defaultCenter);
  }

  v34 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v34;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(CPSTemplateInstance *)self invalidate];
  v2.receiver = selfCopy;
  v2.super_class = CPSTemplateInstance;
  [(CPSTemplateInstance *)&v2 dealloc];
}

- (id)endpoint
{
  interfaceControllerListener = [(CPSTemplateInstance *)self interfaceControllerListener];
  endpoint = [(NSXPCListener *)interfaceControllerListener endpoint];
  _endpoint = [(NSXPCListenerEndpoint *)endpoint _endpoint];
  MEMORY[0x277D82BD8](endpoint);
  MEMORY[0x277D82BD8](interfaceControllerListener);

  return _endpoint;
}

- (id)dashboardEndpoint
{
  dashboardControllerListener = [(CPSTemplateInstance *)self dashboardControllerListener];
  endpoint = [(NSXPCListener *)dashboardControllerListener endpoint];
  _endpoint = [(NSXPCListenerEndpoint *)endpoint _endpoint];
  MEMORY[0x277D82BD8](endpoint);
  MEMORY[0x277D82BD8](dashboardControllerListener);

  return _endpoint;
}

- (id)instrumentClusterEndpoint
{
  instrumentClusterControllerListener = [(CPSTemplateInstance *)self instrumentClusterControllerListener];
  endpoint = [(NSXPCListener *)instrumentClusterControllerListener endpoint];
  _endpoint = [(NSXPCListenerEndpoint *)endpoint _endpoint];
  MEMORY[0x277D82BD8](endpoint);
  MEMORY[0x277D82BD8](instrumentClusterControllerListener);

  return _endpoint;
}

- (void)setScene:(id)scene
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scene);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_scene);
  v6 = location[0];
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained != v6)
  {
    objc_storeWeak(&selfCopy->_scene, location[0]);
    v4 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v4;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __32__CPSTemplateInstance_setScene___block_invoke;
    v12 = &unk_278D913E8;
    v13 = MEMORY[0x277D82BE0](selfCopy);
    dispatch_async(queue, &v8);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(location, 0);
}

uint64_t __32__CPSTemplateInstance_setScene___block_invoke(uint64_t a1)
{
  v6 = *(a1 + 32);
  [v6 currentSafeAreaInsets];
  return [v6 viewController:0 didUpdateSafeAreaInsets:{v1, v2, v3, v4}];
}

- (void)setMapWidgetScene:(id)scene
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scene);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_mapWidgetScene);
  v6 = location[0];
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained != v6)
  {
    objc_storeWeak(&selfCopy->_mapWidgetScene, location[0]);
    v4 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v4;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __41__CPSTemplateInstance_setMapWidgetScene___block_invoke;
    v12 = &unk_278D913E8;
    v13 = MEMORY[0x277D82BE0](selfCopy);
    dispatch_async(queue, &v8);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(location, 0);
}

double __41__CPSTemplateInstance_setMapWidgetScene___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) dashboardEstimatesViewController];
  [v3 setSafeAreaDelegate:*(a1 + 32)];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)setInstrumentClusterScene:(id)scene
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scene);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_instrumentClusterScene);
  v6 = location[0];
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained != v6)
  {
    objc_storeWeak(&selfCopy->_instrumentClusterScene, location[0]);
    v4 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v4;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __49__CPSTemplateInstance_setInstrumentClusterScene___block_invoke;
    v12 = &unk_278D913E8;
    v13 = MEMORY[0x277D82BE0](selfCopy);
    dispatch_async(queue, &v8);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(location, 0);
}

void __49__CPSTemplateInstance_setInstrumentClusterScene___block_invoke(id *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v2 = [a1[4] instrumentClusterScene];
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __49__CPSTemplateInstance_setInstrumentClusterScene___block_invoke_2;
  v7 = &unk_278D91C80;
  v8[0] = MEMORY[0x277D82BE0](a1[4]);
  [v2 updateUISettingsWithBlock:?];
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(v8, 0);
}

void __49__CPSTemplateInstance_setInstrumentClusterScene___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = location[0];
  v7 = a1[4];
  v9 = [v7 instrumentClusterScene];
  [v7 safeAreaInsetsForScene:?];
  [v8 setSafeAreaInsetsPortrait:{v2, v3, v4, v5}];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(location, 0);
}

- (BOOL)clientApplicationSceneIsConnected
{
  interfaceControllerConnection = [(CPSTemplateInstance *)self interfaceControllerConnection];
  v4 = interfaceControllerConnection != 0;
  MEMORY[0x277D82BD8](interfaceControllerConnection);
  return v4;
}

- (BOOL)requiresApplicationScenePresenter
{
  templateEnvironment = [(CPSTemplateInstance *)self templateEnvironment];
  hasNavigationEntitlement = [(CPSTemplateEnvironment *)templateEnvironment hasNavigationEntitlement];
  MEMORY[0x277D82BD8](templateEnvironment);
  return hasNavigationEntitlement;
}

- (BOOL)_templateIsValidForCurrentEntitlement:(id)entitlement presentationStyle:(unint64_t)style
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entitlement);
  styleCopy = style;
  Class = object_getClass(location[0]);
  v18 = 1;
  templateEnvironment = [(CPSTemplateInstance *)selfCopy templateEnvironment];
  allowedTemplateClasses = [(CPSTemplateEnvironment *)templateEnvironment allowedTemplateClasses];
  v14 = [(NSSet *)allowedTemplateClasses containsObject:Class];
  MEMORY[0x277D82BD8](allowedTemplateClasses);
  *&v4 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  if (v14)
  {
    overlayViewController = [(CPSTemplateInstance *)selfCopy overlayViewController];
    topViewController = [(CPSOverlayViewController *)overlayViewController topViewController];
    objc_opt_class();
    v10 = 0;
    if (objc_opt_isKindOfClass())
    {
      v10 = styleCopy == 0;
    }

    MEMORY[0x277D82BD8](topViewController);
    MEMORY[0x277D82BD8](overlayViewController);
    if (v10)
    {
      v15 = CarPlaySupportGeneralLogging();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_66(v24, location[0]);
        _os_log_error_impl(&dword_242FE8000, v15, OS_LOG_TYPE_ERROR, "Template may not be pushed on top of now playing: %{public}@", v24, 0xCu);
      }

      objc_storeStrong(&v15, 0);
      v18 = [(objc_class *)Class isEqual:objc_opt_class()];
    }
  }

  else
  {
    v17 = CarPlaySupportGeneralLogging();
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v25, location[0]);
      _os_log_error_impl(&dword_242FE8000, v17, v16, "Template is disallowed for this app category: %{public}@", v25, 0xCu);
    }

    objc_storeStrong(&v17, 0);
    v18 = 0;
  }

  if (v18)
  {
    v23 = 1;
  }

  else
  {
    interfaceControllerRemoteObjectProxy = selfCopy->_interfaceControllerRemoteObjectProxy;
    v7 = NSStringFromClass(Class);
    [(CPTemplateServiceClientInterface *)interfaceControllerRemoteObjectProxy clientPushedIllegalTemplateOfClass:?];
    MEMORY[0x277D82BD8](v7);
    v23 = 0;
  }

  objc_storeStrong(location, 0);
  return v23 & 1;
}

- (void)_applicationDidThrottleAudioUpdates:(id)updates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, updates);
  [(CPTemplateServiceClientInterface *)selfCopy->_interfaceControllerRemoteObjectProxy clientExceededAudioMetadataThrottleLimit];
  objc_storeStrong(location, 0);
}

- (void)bannerTappedWithIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  interfaceControllerRemoteObjectProxy = [(CPSTemplateInstance *)selfCopy interfaceControllerRemoteObjectProxy];
  [(CPTemplateServiceClientInterface *)interfaceControllerRemoteObjectProxy bannerTappedWithIdentifier:location[0]];
  MEMORY[0x277D82BD8](interfaceControllerRemoteObjectProxy);
  objc_storeStrong(location, 0);
}

- (void)bannerDidAppearWithIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  interfaceControllerRemoteObjectProxy = [(CPSTemplateInstance *)selfCopy interfaceControllerRemoteObjectProxy];
  [(CPTemplateServiceClientInterface *)interfaceControllerRemoteObjectProxy bannerDidAppearWithIdentifier:location[0]];
  MEMORY[0x277D82BD8](interfaceControllerRemoteObjectProxy);
  objc_storeStrong(location, 0);
}

- (void)bannerDidDisappearWithIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  interfaceControllerRemoteObjectProxy = [(CPSTemplateInstance *)selfCopy interfaceControllerRemoteObjectProxy];
  [(CPTemplateServiceClientInterface *)interfaceControllerRemoteObjectProxy bannerDidDisappearWithIdentifier:location[0]];
  MEMORY[0x277D82BD8](interfaceControllerRemoteObjectProxy);
  objc_storeStrong(location, 0);
}

- (void)sendSuggestUI:(id)i
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, i);
  templateEnvironment = [(CPSTemplateInstance *)selfCopy templateEnvironment];
  supportsInstrumentCluster = [(CPSTemplateEnvironment *)templateEnvironment supportsInstrumentCluster];
  *&v3 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  if (supportsInstrumentCluster)
  {
    templateEnvironment2 = [(CPSTemplateInstance *)selfCopy templateEnvironment];
    sessionStatus = [(CPSTemplateEnvironment *)templateEnvironment2 sessionStatus];
    currentSession = [(CARSessionStatus *)sessionStatus currentSession];
    [currentSession suggestUI:location[0]];
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](sessionStatus);
    MEMORY[0x277D82BD8](templateEnvironment2);
  }

  objc_storeStrong(location, 0);
}

- (void)setHostPrefersDarkUserInterfaceStyle:(BOOL)style
{
  selfCopy = self;
  v15 = a2;
  styleCopy = style;
  v13 = 0;
  if (style)
  {
    v13 = 2;
  }

  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __60__CPSTemplateInstance_setHostPrefersDarkUserInterfaceStyle___block_invoke;
  v10 = &unk_278D91CA8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = styleCopy;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
}

double __60__CPSTemplateInstance_setHostPrefersDarkUserInterfaceStyle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPrefersOpaqueBackground:*(a1 + 40) & 1];
  v2 = [*(a1 + 32) overlayViewController];
  [v2 setOverrideUserInterfaceStyle:2];
  v4 = [*(a1 + 32) overlayViewController];
  [v4 setNeedsUserInterfaceAppearanceUpdate];
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

- (void)preferredListMaximumImageSizeWithReply:(id)reply
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reply);
  v3 = location[0];
  v4 = [MEMORY[0x277CCAE60] valueWithCGSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v3[2]();
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)preferredImageRowMaximumImageSizeWithReply:(id)reply
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reply);
  v3 = location[0];
  v4 = [MEMORY[0x277CCAE60] valueWithCGSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v3[2]();
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)preferredListMaximumGridButtonImageSizeWithReply:(id)reply
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reply);
  v3 = location[0];
  v4 = [MEMORY[0x277CCAE60] valueWithCGSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v3[2]();
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)preferredGridMaximumGridButtonImageSizeWithReply:(id)reply
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reply);
  v3 = location[0];
  v4 = [MEMORY[0x277CCAE60] valueWithCGSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v3[2]();
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)presentActionSheetTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated reply:(id)reply
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v26 = 0;
  objc_storeStrong(&v26, delegate);
  v25 = 0;
  objc_storeStrong(&v25, animated);
  v24 = 0;
  objc_storeStrong(&v24, reply);
  identifier = [location[0] identifier];
  actionSheetIdentifier = selfCopy->_actionSheetIdentifier;
  selfCopy->_actionSheetIdentifier = identifier;
  *&v8 = MEMORY[0x277D82BD8](actionSheetIdentifier).n128_u64[0];
  [location[0] setAlertDelegate:{v26, v8}];
  v13 = MEMORY[0x277D85CD0];
  v9 = MEMORY[0x277D85CD0];
  queue = v13;
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __83__CPSTemplateInstance_presentActionSheetTemplate_withProxyDelegate_animated_reply___block_invoke;
  v19 = &unk_278D91CD0;
  v20 = MEMORY[0x277D82BE0](selfCopy);
  v21 = MEMORY[0x277D82BE0](location[0]);
  v22 = MEMORY[0x277D82BE0](v25);
  v23 = MEMORY[0x277D82BE0](v24);
  dispatch_async(queue, &v15);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

double __83__CPSTemplateInstance_presentActionSheetTemplate_withProxyDelegate_animated_reply___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) overlayViewController];
  [v3 presentActionSheetTemplate:*(a1 + 40) animated:objc_msgSend(*(a1 + 48) completion:{"BOOLValue"), *(a1 + 56)}];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)presentAlertTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated reply:(id)reply
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v24 = 0;
  objc_storeStrong(&v24, delegate);
  v23 = 0;
  objc_storeStrong(&v23, animated);
  v22 = 0;
  objc_storeStrong(&v22, reply);
  v10 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  queue = v10;
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __77__CPSTemplateInstance_presentAlertTemplate_withProxyDelegate_animated_reply___block_invoke;
  v16 = &unk_278D91CF8;
  v17 = MEMORY[0x277D82BE0](location[0]);
  v18 = MEMORY[0x277D82BE0](v24);
  v19 = MEMORY[0x277D82BE0](selfCopy);
  v20 = MEMORY[0x277D82BE0](v23);
  v21 = MEMORY[0x277D82BE0](v22);
  dispatch_async(queue, &v12);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

void __77__CPSTemplateInstance_presentAlertTemplate_withProxyDelegate_animated_reply___block_invoke(uint64_t a1)
{
  v11[2] = a1;
  v11[1] = a1;
  [*(a1 + 32) setTemplateDelegate:*(a1 + 40)];
  v4 = [CPSFullScreenAlertViewController alloc];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [*(a1 + 48) templateEnvironment];
  v11[0] = [(CPSFullScreenAlertViewController *)v4 initWithAlert:v2 alertDelegate:v3 templateEnvironment:?];
  *&v1 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  [v11[0] setViewControllerDelegate:{*(a1 + 48), v1}];
  v8 = [*(a1 + 48) identifierToViewControllerDictionary];
  v6 = v11[0];
  v7 = [*(a1 + 32) identifier];
  [v8 setObject:v6 forKey:?];
  MEMORY[0x277D82BD8](v7);
  v10 = [*(a1 + 48) overlayViewController];
  [v10 presentTemplateViewController:v11[0] animated:objc_msgSend(*(a1 + 56) completion:{"BOOLValue"), *(a1 + 64)}];
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(v11, 0);
}

- (void)requestBannerProviderWithReply:(id)reply
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reply);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __54__CPSTemplateInstance_requestBannerProviderWithReply___block_invoke;
  v10 = &unk_278D91D20;
  v12 = MEMORY[0x277D82BE0](location[0]);
  v11 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

double __54__CPSTemplateInstance_requestBannerProviderWithReply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) bannerSource];
  (*(v2 + 16))();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)pushGridTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated presentationStyle:(unint64_t)style reply:(id)reply
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v33 = 0;
  objc_storeStrong(&v33, delegate);
  v32 = 0;
  objc_storeStrong(&v32, animated);
  styleCopy = style;
  v30 = 0;
  objc_storeStrong(&v30, reply);
  v29 = CarPlaySupportGeneralLogging();
  v28 = 2;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    log = v29;
    type = v28;
    __os_log_helper_16_0_0(v27);
    _os_log_debug_impl(&dword_242FE8000, log, type, "Grid Template requested", v27, 2u);
  }

  objc_storeStrong(&v29, 0);
  if ([(CPSTemplateInstance *)selfCopy _templateIsValidForCurrentEntitlement:location[0] presentationStyle:styleCopy])
  {
    v8 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    queue = v8;
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __91__CPSTemplateInstance_pushGridTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke;
    v20 = &unk_278D91D70;
    v21 = MEMORY[0x277D82BE0](selfCopy);
    v22 = MEMORY[0x277D82BE0](location[0]);
    v23 = MEMORY[0x277D82BE0](v33);
    v24 = MEMORY[0x277D82BE0](v32);
    v25[1] = styleCopy;
    v25[0] = MEMORY[0x277D82BE0](v30);
    dispatch_async(queue, &v16);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

void __91__CPSTemplateInstance_pushGridTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v17 = [*(a1 + 32) identifierToViewControllerDictionary];
  v16 = [*(a1 + 40) identifier];
  v18 = [v17 objectForKey:?];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  if (v18)
  {
    location[0] = CarPlaySupportGeneralLogging();
    v32 = 2;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      log = location[0];
      type = v32;
      __os_log_helper_16_0_0(v31);
      _os_log_debug_impl(&dword_242FE8000, log, type, "already have a grid view controller for this template", v31, 2u);
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    v9 = [CPSGridTemplateViewController alloc];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = [*(a1 + 32) templateEnvironment];
    v30 = [(CPSGridTemplateViewController *)v9 initWithGridTemplate:v7 interfaceDelegate:v8 templateEnvironment:?];
    [(CPSBaseTemplateViewController *)v30 setViewControllerDelegate:*(a1 + 32), MEMORY[0x277D82BD8](v10).n128_f64[0]];
    v12 = [*(a1 + 32) identifierToViewControllerDictionary];
    v11 = [*(a1 + 40) identifier];
    [v12 setObject:v30 forKey:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    v29 = CarPlaySupportGeneralLogging();
    v28 = 2;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v5 = v29;
      v6 = v28;
      __os_log_helper_16_0_0(v27);
      _os_log_debug_impl(&dword_242FE8000, v5, v6, "Pushing grid template", v27, 2u);
    }

    objc_storeStrong(&v29, 0);
    v4 = [*(a1 + 32) overlayViewController];
    v1 = v30;
    v2 = [*(a1 + 56) BOOLValue];
    v3 = *(a1 + 72);
    v19 = MEMORY[0x277D85DD0];
    v20 = -1073741824;
    v21 = 0;
    v22 = __91__CPSTemplateInstance_pushGridTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke_109;
    v23 = &unk_278D91D48;
    v24 = MEMORY[0x277D82BE0](v30);
    v26 = MEMORY[0x277D82BE0](*(a1 + 64));
    v25 = MEMORY[0x277D82BE0](*(a1 + 32));
    [v4 pushTemplateViewController:v1 animated:v2 presentationStyle:v3 completion:&v19];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v30, 0);
  }
}

uint64_t __91__CPSTemplateInstance_pushGridTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke_109(uint64_t a1)
{
  v3 = [*(a1 + 32) templateProviderFuture];
  v1 = [v3 addSuccessBlock:*(a1 + 48)];
  return [*(a1 + 40) _pushNowPlayingIfNeeded];
}

- (void)pushInformationTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated presentationStyle:(unint64_t)style reply:(id)reply
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v33 = 0;
  objc_storeStrong(&v33, delegate);
  v32 = 0;
  objc_storeStrong(&v32, animated);
  styleCopy = style;
  v30 = 0;
  objc_storeStrong(&v30, reply);
  v29 = CarPlaySupportGeneralLogging();
  v28 = 2;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    log = v29;
    type = v28;
    __os_log_helper_16_0_0(v27);
    _os_log_debug_impl(&dword_242FE8000, log, type, "Information Template requested", v27, 2u);
  }

  objc_storeStrong(&v29, 0);
  if ([(CPSTemplateInstance *)selfCopy _templateIsValidForCurrentEntitlement:location[0] presentationStyle:styleCopy])
  {
    v8 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    queue = v8;
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __98__CPSTemplateInstance_pushInformationTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke;
    v20 = &unk_278D91D70;
    v21 = MEMORY[0x277D82BE0](selfCopy);
    v22 = MEMORY[0x277D82BE0](location[0]);
    v23 = MEMORY[0x277D82BE0](v33);
    v24 = MEMORY[0x277D82BE0](v32);
    v25[1] = styleCopy;
    v25[0] = MEMORY[0x277D82BE0](v30);
    dispatch_async(queue, &v16);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

void __98__CPSTemplateInstance_pushInformationTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v17 = [*(a1 + 32) identifierToViewControllerDictionary];
  v16 = [*(a1 + 40) identifier];
  v18 = [v17 objectForKey:?];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  if (v18)
  {
    location[0] = CarPlaySupportGeneralLogging();
    v31 = 2;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      log = location[0];
      type = v31;
      __os_log_helper_16_0_0(v30);
      _os_log_debug_impl(&dword_242FE8000, log, type, "already have a information view controller for this template", v30, 2u);
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    v9 = [CPSInformationEntityViewController alloc];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = [*(a1 + 32) templateEnvironment];
    v29 = [(CPSBaseTemplateViewController *)v9 initWithTemplate:v7 templateDelegate:v8 templateEnvironment:?];
    [(CPSBaseTemplateViewController *)v29 setViewControllerDelegate:*(a1 + 32), MEMORY[0x277D82BD8](v10).n128_f64[0]];
    v12 = [*(a1 + 32) identifierToViewControllerDictionary];
    v11 = [*(a1 + 40) identifier];
    [v12 setObject:v29 forKey:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    v28 = CarPlaySupportGeneralLogging();
    v27 = 2;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v5 = v28;
      v6 = v27;
      __os_log_helper_16_0_0(v26);
      _os_log_debug_impl(&dword_242FE8000, v5, v6, "Pushing information template", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    v4 = [*(a1 + 32) overlayViewController];
    v1 = v29;
    v2 = [*(a1 + 56) BOOLValue];
    v3 = *(a1 + 72);
    v19 = MEMORY[0x277D85DD0];
    v20 = -1073741824;
    v21 = 0;
    v22 = __98__CPSTemplateInstance_pushInformationTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke_111;
    v23 = &unk_278D91D98;
    v24 = MEMORY[0x277D82BE0](v29);
    v25 = MEMORY[0x277D82BE0](*(a1 + 64));
    [v4 pushTemplateViewController:v1 animated:v2 presentationStyle:v3 completion:&v19];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v29, 0);
  }
}

double __98__CPSTemplateInstance_pushInformationTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke_111(uint64_t a1)
{
  v4 = [*(a1 + 32) templateProviderFuture];
  v1 = [v4 addSuccessBlock:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

- (void)pushMapTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated presentationStyle:(unint64_t)style reply:(id)reply
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v33 = 0;
  objc_storeStrong(&v33, delegate);
  v32 = 0;
  objc_storeStrong(&v32, animated);
  styleCopy = style;
  v30 = 0;
  objc_storeStrong(&v30, reply);
  v29 = CarPlaySupportGeneralLogging();
  v28 = 2;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    log = v29;
    type = v28;
    __os_log_helper_16_0_0(v27);
    _os_log_debug_impl(&dword_242FE8000, log, type, "Map template requested", v27, 2u);
  }

  objc_storeStrong(&v29, 0);
  if ([(CPSTemplateInstance *)selfCopy _templateIsValidForCurrentEntitlement:location[0] presentationStyle:styleCopy])
  {
    v8 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    queue = v8;
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __90__CPSTemplateInstance_pushMapTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke;
    v20 = &unk_278D91D70;
    v21 = MEMORY[0x277D82BE0](location[0]);
    v22 = MEMORY[0x277D82BE0](v33);
    v23 = MEMORY[0x277D82BE0](selfCopy);
    v24 = MEMORY[0x277D82BE0](v32);
    v25[1] = styleCopy;
    v25[0] = MEMORY[0x277D82BE0](v30);
    dispatch_async(queue, &v16);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

void __90__CPSTemplateInstance_pushMapTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke(uint64_t a1)
{
  v27[2] = a1;
  v27[1] = a1;
  v11 = [CPSMapTemplateViewController alloc];
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13 = [v10 applicationStateMonitor];
  v12 = [*(a1 + 48) templateEnvironment];
  v27[0] = [(CPSMapTemplateViewController *)v11 initWithMapTemplate:v8 templateDelegate:v9 safeAreaDelegate:v10 applicationStateMonitor:v13 templateEnvironment:?];
  MEMORY[0x277D82BD8](v12);
  [v27[0] setViewControllerDelegate:{*(a1 + 48), MEMORY[0x277D82BD8](v13).n128_f64[0]}];
  [v27[0] setNavigatorObserver:*(a1 + 48)];
  v16 = [*(a1 + 48) identifierToViewControllerDictionary];
  v15 = [*(a1 + 32) identifier];
  [v16 setObject:v27[0] forKey:?];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  location = CarPlaySupportGeneralLogging();
  v25 = 2;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    log = location;
    type = v25;
    __os_log_helper_16_0_0(v24);
    _os_log_debug_impl(&dword_242FE8000, log, type, "Pushing map template", v24, 2u);
  }

  objc_storeStrong(&location, 0);
  v5 = [*(a1 + 48) overlayViewController];
  v2 = v27[0];
  v3 = [*(a1 + 56) BOOLValue];
  v4 = *(a1 + 72);
  v17 = MEMORY[0x277D85DD0];
  v18 = -1073741824;
  v19 = 0;
  v20 = __90__CPSTemplateInstance_pushMapTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke_113;
  v21 = &unk_278D91D98;
  v22 = MEMORY[0x277D82BE0](v27[0]);
  v23 = MEMORY[0x277D82BE0](*(a1 + 64));
  [v5 pushTemplateViewController:v2 animated:v3 presentationStyle:v4 completion:&v17];
  *&v1 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  [*(a1 + 48) setRootViewController:{v27[0], v1}];
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(v27, 0);
}

double __90__CPSTemplateInstance_pushMapTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke_113(uint64_t a1)
{
  v4 = [*(a1 + 32) templateProviderFuture];
  v1 = [v4 addSuccessBlock:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

- (void)requestNavigationProviderForMapTemplate:(id)template withReply:(id)reply
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v16 = 0;
  objc_storeStrong(&v16, reply);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __73__CPSTemplateInstance_requestNavigationProviderForMapTemplate_withReply___block_invoke;
  v12 = &unk_278D91DC0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __73__CPSTemplateInstance_requestNavigationProviderForMapTemplate_withReply___block_invoke(uint64_t a1)
{
  v5[2] = a1;
  v5[1] = a1;
  v3 = [*(a1 + 32) identifierToViewControllerDictionary];
  v2 = [*(a1 + 40) identifier];
  v5[0] = [v3 objectForKey:?];
  MEMORY[0x277D82BD8](v2);
  v1 = MEMORY[0x277D82BD8](v3);
  (*(*(a1 + 48) + 16))(v1);
  objc_storeStrong(v5, 0);
}

- (void)pushListTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated presentationStyle:(unint64_t)style reply:(id)reply
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v33 = 0;
  objc_storeStrong(&v33, delegate);
  v32 = 0;
  objc_storeStrong(&v32, animated);
  styleCopy = style;
  v30 = 0;
  objc_storeStrong(&v30, reply);
  v29 = CarPlaySupportGeneralLogging();
  v28 = 2;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    log = v29;
    type = v28;
    __os_log_helper_16_0_0(v27);
    _os_log_debug_impl(&dword_242FE8000, log, type, "List template requested", v27, 2u);
  }

  objc_storeStrong(&v29, 0);
  if ([(CPSTemplateInstance *)selfCopy _templateIsValidForCurrentEntitlement:location[0] presentationStyle:styleCopy])
  {
    v8 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    queue = v8;
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __91__CPSTemplateInstance_pushListTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke;
    v20 = &unk_278D91D70;
    v21 = MEMORY[0x277D82BE0](selfCopy);
    v22 = MEMORY[0x277D82BE0](location[0]);
    v23 = MEMORY[0x277D82BE0](v33);
    v24 = MEMORY[0x277D82BE0](v32);
    v25[1] = styleCopy;
    v25[0] = MEMORY[0x277D82BE0](v30);
    dispatch_async(queue, &v16);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

void __91__CPSTemplateInstance_pushListTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v21 = [*(a1 + 32) identifierToViewControllerDictionary];
  v20 = [*(a1 + 40) identifier];
  v22 = [v21 objectForKey:?];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  if (v22)
  {
    location[0] = CarPlaySupportGeneralLogging();
    v42 = 2;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      log = location[0];
      type = v42;
      __os_log_helper_16_0_0(v41);
      _os_log_debug_impl(&dword_242FE8000, log, type, "already have a list view controller for this template", v41, 2u);
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    v12 = [CPSListTemplateViewController alloc];
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = [*(a1 + 32) templateEnvironment];
    v40 = [(CPSListTemplateViewController *)v12 initWithListTemplate:v10 templateDelegate:v11 templateEnvironment:?];
    [(CPSBaseTemplateViewController *)v40 setViewControllerDelegate:*(a1 + 32), MEMORY[0x277D82BD8](v13).n128_f64[0]];
    v15 = [*(a1 + 32) identifierToViewControllerDictionary];
    v14 = [*(a1 + 40) identifier];
    [v15 setObject:v40 forKey:?];
    MEMORY[0x277D82BD8](v14);
    v16 = [*(a1 + 40) assistantCellConfiguration];
    *&v1 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    if (v16)
    {
      v8 = v40;
      v9 = [*(a1 + 40) assistantCellConfiguration];
      v34 = MEMORY[0x277D85DD0];
      v35 = -1073741824;
      v36 = 0;
      v37 = __91__CPSTemplateInstance_pushListTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke_115;
      v38 = &unk_278D91DE8;
      v39 = MEMORY[0x277D82BE0](*(a1 + 32));
      [(CPSListTemplateViewController *)v8 updateAssistantCellConfiguration:v9 withCompletion:&v34];
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v39, 0);
    }

    v33 = CarPlaySupportGeneralLogging();
    v32 = 2;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v6 = v33;
      v7 = v32;
      __os_log_helper_16_0_0(v31);
      _os_log_debug_impl(&dword_242FE8000, v6, v7, "Pushing list template", v31, 2u);
    }

    objc_storeStrong(&v33, 0);
    v5 = [*(a1 + 32) overlayViewController];
    v2 = v40;
    v3 = [*(a1 + 56) BOOLValue];
    v4 = *(a1 + 72);
    v23 = MEMORY[0x277D85DD0];
    v24 = -1073741824;
    v25 = 0;
    v26 = __91__CPSTemplateInstance_pushListTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke_117;
    v27 = &unk_278D91D48;
    v28 = MEMORY[0x277D82BE0](v40);
    v30 = MEMORY[0x277D82BE0](*(a1 + 64));
    v29 = MEMORY[0x277D82BE0](*(a1 + 32));
    [v5 pushTemplateViewController:v2 animated:v3 presentationStyle:v4 completion:&v23];
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v40, 0);
  }
}

void __91__CPSTemplateInstance_pushListTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke_115(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if ((v6 & 1) == 0)
  {
    v3 = [*(a1 + 32) interfaceControllerRemoteObjectProxy];
    [v3 clientAssistantCellUnavailableWithError:location];
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(&location, 0);
}

uint64_t __91__CPSTemplateInstance_pushListTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke_117(uint64_t a1)
{
  v3 = [*(a1 + 32) templateProviderFuture];
  v1 = [v3 addSuccessBlock:*(a1 + 48)];
  return [*(a1 + 40) _pushNowPlayingIfNeeded];
}

- (void)pushNowPlayingTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated presentationStyle:(unint64_t)style reply:(id)reply
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v33 = 0;
  objc_storeStrong(&v33, delegate);
  v32 = 0;
  objc_storeStrong(&v32, animated);
  styleCopy = style;
  v30 = 0;
  objc_storeStrong(&v30, reply);
  v29 = CarPlaySupportGeneralLogging();
  v28 = 2;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    log = v29;
    type = v28;
    __os_log_helper_16_0_0(v27);
    _os_log_debug_impl(&dword_242FE8000, log, type, "Now Playing template requested", v27, 2u);
  }

  objc_storeStrong(&v29, 0);
  if ([(CPSTemplateInstance *)selfCopy _templateIsValidForCurrentEntitlement:location[0] presentationStyle:styleCopy])
  {
    v8 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    queue = v8;
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __97__CPSTemplateInstance_pushNowPlayingTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke;
    v20 = &unk_278D91D70;
    v21 = MEMORY[0x277D82BE0](location[0]);
    v22 = MEMORY[0x277D82BE0](v33);
    v23 = MEMORY[0x277D82BE0](selfCopy);
    v24 = MEMORY[0x277D82BE0](v32);
    v25[1] = styleCopy;
    v25[0] = MEMORY[0x277D82BE0](v30);
    dispatch_async(queue, &v16);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

void __97__CPSTemplateInstance_pushNowPlayingTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke(uint64_t a1)
{
  v24[2] = a1;
  v24[1] = a1;
  v9 = [CPSNowPlayingViewController alloc];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = [*(a1 + 48) templateEnvironment];
  v24[0] = [(CPSNowPlayingViewController *)v9 initWithNowPlayingTemplate:v7 templateDelegate:v8 environment:?];
  [v24[0] setViewControllerDelegate:{*(a1 + 48), MEMORY[0x277D82BD8](v10).n128_f64[0]}];
  v13 = [*(a1 + 48) identifierToViewControllerDictionary];
  v12 = [*(a1 + 32) identifier];
  [v13 setObject:v24[0] forKey:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  location = CarPlaySupportGeneralLogging();
  v22 = 2;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    log = location;
    type = v22;
    __os_log_helper_16_0_0(v21);
    _os_log_debug_impl(&dword_242FE8000, log, type, "Pushing Now Playing View Controller", v21, 2u);
  }

  objc_storeStrong(&location, 0);
  v4 = [*(a1 + 48) overlayViewController];
  v1 = v24[0];
  v2 = [*(a1 + 56) BOOLValue];
  v3 = *(a1 + 72);
  v14 = MEMORY[0x277D85DD0];
  v15 = -1073741824;
  v16 = 0;
  v17 = __97__CPSTemplateInstance_pushNowPlayingTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke_118;
  v18 = &unk_278D91D98;
  v19 = MEMORY[0x277D82BE0](v24[0]);
  v20 = MEMORY[0x277D82BE0](*(a1 + 64));
  [v4 pushTemplateViewController:v1 animated:v2 presentationStyle:v3 completion:&v14];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v24, 0);
}

double __97__CPSTemplateInstance_pushNowPlayingTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke_118(uint64_t a1)
{
  v4 = [*(a1 + 32) templateProviderFuture];
  v1 = [v4 addSuccessBlock:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

- (void)pushSearchTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated presentationStyle:(unint64_t)style reply:(id)reply
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v33 = 0;
  objc_storeStrong(&v33, delegate);
  v32 = 0;
  objc_storeStrong(&v32, animated);
  styleCopy = style;
  v30 = 0;
  objc_storeStrong(&v30, reply);
  v29 = CarPlaySupportGeneralLogging();
  v28 = 2;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    log = v29;
    type = v28;
    __os_log_helper_16_0_0(v27);
    _os_log_debug_impl(&dword_242FE8000, log, type, "Search template requested", v27, 2u);
  }

  objc_storeStrong(&v29, 0);
  if ([(CPSTemplateInstance *)selfCopy _templateIsValidForCurrentEntitlement:location[0] presentationStyle:styleCopy])
  {
    v8 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    queue = v8;
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __93__CPSTemplateInstance_pushSearchTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke;
    v20 = &unk_278D91D70;
    v21 = MEMORY[0x277D82BE0](location[0]);
    v22 = MEMORY[0x277D82BE0](v33);
    v23 = MEMORY[0x277D82BE0](selfCopy);
    v24 = MEMORY[0x277D82BE0](v32);
    v25[1] = styleCopy;
    v25[0] = MEMORY[0x277D82BE0](v30);
    dispatch_async(queue, &v16);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

void __93__CPSTemplateInstance_pushSearchTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v31 = a1;
  v30 = a1;
  v14 = [MEMORY[0x277CF91B0] sharedInstance];
  v15 = [v14 lastButtonPressInteractionModel];
  MEMORY[0x277D82BD8](v14);
  v29 = v15;
  location = CarPlaySupportGeneralLogging();
  v27 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_8_0(v32, v29);
    _os_log_debug_impl(&dword_242FE8000, location, v27, "Requested search template with interaction model: %lu", v32, 0xCu);
  }

  objc_storeStrong(&location, 0);
  v9 = [CPSSearchTemplateViewController alloc];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = [*(a1 + 48) templateEnvironment];
  v26 = [CPSSearchTemplateViewController initWithSearchTemplate:v9 templateDelegate:"initWithSearchTemplate:templateDelegate:templateEnvironment:interactionModel:" templateEnvironment:v7 interactionModel:v8];
  [(CPSSearchTemplateViewController *)v26 setViewControllerDelegate:*(a1 + 48), MEMORY[0x277D82BD8](v10).n128_f64[0]];
  v12 = [*(a1 + 48) identifierToViewControllerDictionary];
  v11 = [*(a1 + 32) identifier];
  [v12 setObject:v26 forKey:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v25 = CarPlaySupportGeneralLogging();
  v24 = 2;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v5 = v25;
    v6 = v24;
    __os_log_helper_16_0_0(v23);
    _os_log_debug_impl(&dword_242FE8000, v5, v6, "Pushing search template", v23, 2u);
  }

  objc_storeStrong(&v25, 0);
  v4 = [*(a1 + 48) overlayViewController];
  v1 = v26;
  v2 = [*(a1 + 56) BOOLValue];
  v3 = *(a1 + 72);
  v16 = MEMORY[0x277D85DD0];
  v17 = -1073741824;
  v18 = 0;
  v19 = __93__CPSTemplateInstance_pushSearchTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke_121;
  v20 = &unk_278D91D98;
  v21 = MEMORY[0x277D82BE0](v26);
  v22 = MEMORY[0x277D82BE0](*(a1 + 64));
  [v4 pushTemplateViewController:v1 animated:v2 presentationStyle:v3 completion:&v16];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v26, 0);
}

double __93__CPSTemplateInstance_pushSearchTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke_121(uint64_t a1)
{
  v4 = [*(a1 + 32) templateProviderFuture];
  v1 = [v4 addSuccessBlock:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

- (void)presentVoiceTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated reply:(id)reply
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v30 = 0;
  objc_storeStrong(&v30, delegate);
  v29 = 0;
  objc_storeStrong(&v29, animated);
  v28 = 0;
  objc_storeStrong(&v28, reply);
  v27 = CarPlaySupportGeneralLogging();
  v26 = 2;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    log = v27;
    type = v26;
    __os_log_helper_16_0_0(v25);
    _os_log_debug_impl(&dword_242FE8000, log, type, "Voice template requested", v25, 2u);
  }

  objc_storeStrong(&v27, 0);
  if ([(CPSTemplateInstance *)selfCopy _templateIsValidForCurrentEntitlement:location[0] presentationStyle:2])
  {
    v7 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    queue = v7;
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __77__CPSTemplateInstance_presentVoiceTemplate_withProxyDelegate_animated_reply___block_invoke;
    v18 = &unk_278D91CF8;
    v19 = MEMORY[0x277D82BE0](location[0]);
    v20 = MEMORY[0x277D82BE0](v30);
    v21 = MEMORY[0x277D82BE0](selfCopy);
    v22 = MEMORY[0x277D82BE0](v29);
    v23 = MEMORY[0x277D82BE0](v28);
    dispatch_async(queue, &v14);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

void __77__CPSTemplateInstance_presentVoiceTemplate_withProxyDelegate_animated_reply___block_invoke(uint64_t a1)
{
  v23[2] = a1;
  v23[1] = a1;
  v8 = [CPSVoiceTemplateViewController alloc];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = [*(a1 + 48) templateEnvironment];
  v23[0] = [(CPSVoiceTemplateViewController *)v8 initWithVoiceTemplate:v6 templateDelegate:v7 templateEnvironment:?];
  [v23[0] setViewControllerDelegate:{*(a1 + 48), MEMORY[0x277D82BD8](v9).n128_f64[0]}];
  v12 = [*(a1 + 48) identifierToViewControllerDictionary];
  v11 = [*(a1 + 32) identifier];
  [v12 setObject:v23[0] forKey:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  location = CarPlaySupportGeneralLogging();
  v21 = 2;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    log = location;
    type = v21;
    __os_log_helper_16_0_0(v20);
    _os_log_debug_impl(&dword_242FE8000, log, type, "Presenting voice template modally", v20, 2u);
  }

  objc_storeStrong(&location, 0);
  v3 = [*(a1 + 48) overlayViewController];
  v1 = v23[0];
  v2 = [*(a1 + 56) BOOLValue];
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __77__CPSTemplateInstance_presentVoiceTemplate_withProxyDelegate_animated_reply___block_invoke_123;
  v17 = &unk_278D91D98;
  v18 = MEMORY[0x277D82BE0](v23[0]);
  v19 = MEMORY[0x277D82BE0](*(a1 + 64));
  [v3 presentTemplateViewController:v1 animated:v2 completion:&v13];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(v23, 0);
}

double __77__CPSTemplateInstance_presentVoiceTemplate_withProxyDelegate_animated_reply___block_invoke_123(uint64_t a1)
{
  v4 = [*(a1 + 32) templateProviderFuture];
  v1 = [v4 addSuccessBlock:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

- (void)setTabBarTemplate:(id)template withProxyDelegate:(id)delegate reply:(id)reply animated:(id)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v37 = 0;
  objc_storeStrong(&v37, delegate);
  v36 = 0;
  objc_storeStrong(&v36, reply);
  v35 = 0;
  objc_storeStrong(&v35, animated);
  templates = [location[0] templates];
  v21 = [templates count];
  templateEnvironment = [(CPSTemplateInstance *)selfCopy templateEnvironment];
  maximumTabs = [(CPSTemplateEnvironment *)templateEnvironment maximumTabs];
  MEMORY[0x277D82BD8](templateEnvironment);
  *&v6 = MEMORY[0x277D82BD8](templates).n128_u64[0];
  if (v21 <= maximumTabs)
  {
    v33 = CarPlaySupportGeneralLogging();
    v32 = 2;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      log = v33;
      type = v32;
      __os_log_helper_16_0_0(v31);
      _os_log_debug_impl(&dword_242FE8000, log, type, "Presenting tab bar template, replacing root", v31, 2u);
    }

    objc_storeStrong(&v33, 0);
    v10 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    queue = v10;
    v22 = MEMORY[0x277D85DD0];
    v23 = -1073741824;
    v24 = 0;
    v25 = __74__CPSTemplateInstance_setTabBarTemplate_withProxyDelegate_reply_animated___block_invoke;
    v26 = &unk_278D91E10;
    v27 = MEMORY[0x277D82BE0](selfCopy);
    v28 = MEMORY[0x277D82BE0](location[0]);
    v29 = MEMORY[0x277D82BE0](v37);
    v30 = MEMORY[0x277D82BE0](v35);
    dispatch_sync(queue, &v22);
    *&v8 = MEMORY[0x277D82BD8](queue).n128_u64[0];
    templateProviderFuture = [(CPSTabBarViewController *)selfCopy->_tabBarViewController templateProviderFuture];
    v9 = [(NAFuture *)templateProviderFuture addSuccessBlock:v36];
    MEMORY[0x277D82BD8](templateProviderFuture);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v27, 0);
    v34 = 0;
  }

  else
  {
    [(CPTemplateServiceClientInterface *)selfCopy->_interfaceControllerRemoteObjectProxy clientExceededTabBarTabLimit];
    v34 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
}

double __74__CPSTemplateInstance_setTabBarTemplate_withProxyDelegate_reply_animated___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = [CPSTabBarViewController alloc];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = [*(a1 + 32) templateEnvironment];
  v1 = [(CPSTabBarViewController *)v7 initWithTabBarTemplate:v5 templateDelegate:v6 templateEnvironment:?];
  v2 = *(a1 + 32);
  v3 = *(v2 + 240);
  *(v2 + 240) = v1;
  MEMORY[0x277D82BD8](v3);
  [*(*(a1 + 32) + 240) setViewControllerDelegate:{*(a1 + 32), MEMORY[0x277D82BD8](v8).n128_f64[0]}];
  v11 = [*(a1 + 32) identifierToViewControllerDictionary];
  v9 = *(*(a1 + 32) + 240);
  v10 = [*(a1 + 40) identifier];
  [v11 setObject:v9 forKey:?];
  MEMORY[0x277D82BD8](v10);
  [*(a1 + 32) updateTabBarTemplate:{*(a1 + 40), MEMORY[0x277D82BD8](v11).n128_f64[0]}];
  v13 = [*(a1 + 32) overlayViewController];
  v17[0] = *(*(a1 + 32) + 240);
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v13 setViewControllers:v12 animated:{objc_msgSend(*(a1 + 56), "BOOLValue")}];
  MEMORY[0x277D82BD8](v12);
  v14 = [*(a1 + 32) overlayViewController];
  [v14 setNavigationBarHidden:1 animated:{objc_msgSend(*(a1 + 56), "BOOLValue")}];
  [*(a1 + 32) setRootViewController:{*(*(a1 + 32) + 240), MEMORY[0x277D82BD8](v14).n128_f64[0]}];
  [*(a1 + 32) _pushNowPlayingIfNeeded];
  v16 = [*(*(a1 + 32) + 240) templateProviderFuture];
  [v16 finishWithNoResult];
  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

- (void)updateTabBarTemplate:(id)template
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  templates = [location[0] templates];
  v12 = [templates count];
  templateEnvironment = [(CPSTemplateInstance *)selfCopy templateEnvironment];
  maximumTabs = [(CPSTemplateEnvironment *)templateEnvironment maximumTabs];
  MEMORY[0x277D82BD8](templateEnvironment);
  *&v3 = MEMORY[0x277D82BD8](templates).n128_u64[0];
  if (v12 <= maximumTabs)
  {
    v22 = CarPlaySupportGeneralLogging();
    v21 = 2;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      log = v22;
      type = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_debug_impl(&dword_242FE8000, log, type, "Updating tab bar template", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    v5 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    queue = v5;
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __44__CPSTemplateInstance_updateTabBarTemplate___block_invoke;
    v17 = &unk_278D910D8;
    v18 = MEMORY[0x277D82BE0](selfCopy);
    v19 = MEMORY[0x277D82BE0](location[0]);
    dispatch_async(queue, &v13);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    v23 = 0;
  }

  else
  {
    [(CPTemplateServiceClientInterface *)selfCopy->_interfaceControllerRemoteObjectProxy clientExceededTabBarTabLimit];
    v23 = 1;
  }

  objc_storeStrong(location, 0);
}

void __44__CPSTemplateInstance_updateTabBarTemplate___block_invoke(id *a1)
{
  v78 = *MEMORY[0x277D85DE8];
  v74[2] = a1;
  v74[1] = a1;
  v45 = [a1[4] tabBarViewController];
  v74[0] = [v45 viewControllers];
  v73 = [MEMORY[0x277CBEB18] array];
  memset(__b, 0, sizeof(__b));
  obj = [a1[5] templates];
  v48 = [obj countByEnumeratingWithState:__b objects:v77 count:16];
  if (v48)
  {
    v42 = *__b[2];
    v43 = 0;
    v44 = v48;
    while (1)
    {
      v41 = v43;
      if (*__b[2] != v42)
      {
        objc_enumerationMutation(obj);
      }

      v72 = *(__b[1] + 8 * v43);
      v37 = objc_opt_class();
      v40 = [a1[4] identifierToViewControllerDictionary];
      v39 = [v72 identifier];
      v38 = [v40 objectForKey:?];
      location = CPSSafeCast_4(v37, v38);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v39);
      *&v1 = MEMORY[0x277D82BD8](v40).n128_u64[0];
      if (location)
      {
        [location _updateTemplate:{v72, v1}];
        [v73 addObject:location];
      }

      else
      {
        oslog = CarPlaySupportGeneralLogging();
        type = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          log = oslog;
          __os_log_helper_16_2_1_8_64(v76, v72);
          _os_log_debug_impl(&dword_242FE8000, log, type, "No view controller available for %@", v76, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }

      objc_storeStrong(&location, 0);
      ++v43;
      if (v41 + 1 >= v44)
      {
        v43 = 0;
        v44 = [obj countByEnumeratingWithState:__b objects:v77 count:16];
        if (!v44)
        {
          break;
        }
      }
    }
  }

  v34 = [a1[4] tabBarViewController];
  v35 = [v34 selectedIndex];
  *&v2 = MEMORY[0x277D82BD8](v34).n128_u64[0];
  v67 = v35;
  v66 = 0;
  if (v35 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v65 = [v74[0] objectAtIndexedSubscript:{v67, v2}];
    v66 = ([v73 containsObject:v65] ^ 1) & 1;
    objc_storeStrong(&v65, 0);
  }

  if (v66)
  {
    v64 = CarPlaySupportGeneralLogging();
    v63 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v64;
      v33 = v63;
      __os_log_helper_16_0_0(v62);
      _os_log_impl(&dword_242FE8000, v32, v33, "Returning to root tab bar template for tab change.", v62, 2u);
    }

    objc_storeStrong(&v64, 0);
    v31 = [a1[4] overlayViewController];
    [v31 popToRootTemplateAnimated:0 completion:0];
    *&v3 = MEMORY[0x277D82BD8](v31).n128_u64[0];
  }

  else
  {
    v61 = CarPlaySupportGeneralLogging();
    v60 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v61;
      v30 = v60;
      __os_log_helper_16_0_0(v59);
      _os_log_impl(&dword_242FE8000, v29, v30, "Processing tab bar update without pop to root.", v59, 2u);
    }

    objc_storeStrong(&v61, 0);
  }

  v25 = [a1[4] tabBarViewController];
  [v25 setViewControllers:v73 animated:0];
  v27 = [a1[4] overlayViewController];
  v26 = [v27 viewControllers];
  v28 = [v26 count];
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  if (v28 > 1)
  {
    v55 = CarPlaySupportGeneralLogging();
    v54 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v55;
      v21 = v54;
      __os_log_helper_16_0_0(v53);
      _os_log_impl(&dword_242FE8000, v20, v21, "No navigation bar hide necessary.", v53, 2u);
    }

    objc_storeStrong(&v55, 0);
  }

  else
  {
    v58 = CarPlaySupportGeneralLogging();
    v57 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v58;
      v24 = v57;
      __os_log_helper_16_0_0(v56);
      _os_log_impl(&dword_242FE8000, v23, v24, "Hiding navigation bar for tab bar.", v56, 2u);
    }

    objc_storeStrong(&v58, 0);
    v22 = [a1[4] overlayViewController];
    [v22 setNavigationBarHidden:1 animated:0];
    *&v4 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  }

  v19 = [a1[4] tabBarViewController];
  v52 = [v19 selectedViewController];
  *&v5 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  if (v52)
  {
    v18 = [a1[4] tabBarViewController];
    v17 = [v18 templateDelegate];
    v16 = [v52 associatedTemplate];
    v15 = [v16 identifier];
    [v17 handleActionForControlIdentifier:?];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
  }

  memset(v50, 0, sizeof(v50));
  v13 = MEMORY[0x277D82BE0](v74[0]);
  v14 = [v13 countByEnumeratingWithState:v50 objects:v75 count:16];
  if (v14)
  {
    v10 = *v50[2];
    v11 = 0;
    v12 = v14;
    while (1)
    {
      v9 = v11;
      if (*v50[2] != v10)
      {
        objc_enumerationMutation(v13);
      }

      v51 = *(v50[1] + 8 * v11);
      v8 = [v51 associatedTemplate];
      v49 = [v8 identifier];
      *&v6 = MEMORY[0x277D82BD8](v8).n128_u64[0];
      if (v49 && ([v73 containsObject:{v51, v6}] & 1) == 0)
      {
        v7 = [a1[4] identifierToViewControllerDictionary];
        [v7 removeObjectForKey:v49];
        MEMORY[0x277D82BD8](v7);
      }

      objc_storeStrong(&v49, 0);
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [v13 countByEnumeratingWithState:v50 objects:v75 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v13);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v73, 0);
  objc_storeStrong(v74, 0);
}

- (void)selectTabBarTemplateAtIndex:(int64_t)index
{
  selfCopy = self;
  v13 = a2;
  indexCopy = index;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __51__CPSTemplateInstance_selectTabBarTemplateAtIndex___block_invoke;
  v10 = &unk_278D91E38;
  v11[0] = MEMORY[0x277D82BE0](selfCopy);
  v11[1] = indexCopy;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
}

void __51__CPSTemplateInstance_selectTabBarTemplateAtIndex___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  v18 = [*(a1 + 32) tabBarViewController];
  *&v1 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  if (v18)
  {
    v2 = *(a1 + 40);
    v25 = 0;
    v23 = 0;
    v14 = 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v13 = *(a1 + 40);
      v26 = [*(a1 + 32) tabBarViewController];
      v25 = 1;
      v24 = [v26 viewControllers];
      v23 = 1;
      v14 = v13 < [v24 count];
    }

    if (v23)
    {
      MEMORY[0x277D82BD8](v24);
    }

    if (v25)
    {
      MEMORY[0x277D82BD8](v26);
    }

    if (v14)
    {
      v22 = CarPlaySupportGeneralLogging();
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
        __os_log_helper_16_2_1_8_64(v31, v12);
        _os_log_impl(&dword_242FE8000, v22, v21, "Selecting tab bar template at index %@", v31, 0xCu);
        MEMORY[0x277D82BD8](v12);
      }

      objc_storeStrong(&v22, 0);
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) tabBarViewController];
      [v10 setSelectedIndex:v9];
      v11 = [*(a1 + 32) tabBarViewController];
      v20 = [v11 selectedViewController];
      *&v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
      if (v20)
      {
        v8 = [*(a1 + 32) tabBarViewController];
        v7 = [v8 templateDelegate];
        v6 = [v20 associatedTemplate];
        v5 = [v6 identifier];
        [v7 handleActionForControlIdentifier:?];
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](v8);
      }

      objc_storeStrong(&v20, 0);
    }

    else
    {
      v19 = CarPlaySupportGeneralLogging();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
        __os_log_helper_16_2_1_8_64(v30, v4);
        _os_log_impl(&dword_242FE8000, v19, OS_LOG_TYPE_DEFAULT, "Requested tab bar template index change, but no tab available at index %@", v30, 0xCu);
        MEMORY[0x277D82BD8](v4);
      }

      objc_storeStrong(&v19, 0);
    }
  }

  else
  {
    location[0] = CarPlaySupportGeneralLogging();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v28;
      __os_log_helper_16_0_0(v27);
      _os_log_impl(&dword_242FE8000, log, type, "Requested tab bar template index change, but no tab bar template has been set.", v27, 2u);
    }

    objc_storeStrong(location, 0);
  }
}

- (void)pushEntityTemplate:(id)template withProxyDelegate:(id)delegate animated:(id)animated presentationStyle:(unint64_t)style reply:(id)reply
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v33 = 0;
  objc_storeStrong(&v33, delegate);
  v32 = 0;
  objc_storeStrong(&v32, animated);
  styleCopy = style;
  v30 = 0;
  objc_storeStrong(&v30, reply);
  v29 = CarPlaySupportGeneralLogging();
  v28 = 2;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    log = v29;
    type = v28;
    __os_log_helper_16_0_0(v27);
    _os_log_debug_impl(&dword_242FE8000, log, type, "Entity template requested", v27, 2u);
  }

  objc_storeStrong(&v29, 0);
  if ([(CPSTemplateInstance *)selfCopy _templateIsValidForCurrentEntitlement:location[0] presentationStyle:styleCopy])
  {
    v8 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    queue = v8;
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __93__CPSTemplateInstance_pushEntityTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke;
    v20 = &unk_278D91D70;
    v21 = MEMORY[0x277D82BE0](selfCopy);
    v22 = MEMORY[0x277D82BE0](location[0]);
    v23 = MEMORY[0x277D82BE0](v33);
    v24 = MEMORY[0x277D82BE0](v32);
    v25[1] = styleCopy;
    v25[0] = MEMORY[0x277D82BE0](v30);
    dispatch_async(queue, &v16);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

void __93__CPSTemplateInstance_pushEntityTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  v16 = [*(a1 + 32) identifierToViewControllerDictionary];
  v15 = [*(a1 + 40) identifier];
  v17 = [v16 objectForKey:?];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  if (v17)
  {
    location[0] = CarPlaySupportGeneralLogging();
    v29 = 2;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      log = location[0];
      type = v29;
      __os_log_helper_16_0_0(v28);
      _os_log_debug_impl(&dword_242FE8000, log, type, "already have an entity view controller for this template", v28, 2u);
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    v8 = [CPSEntityViewController alloc];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = [*(a1 + 32) templateEnvironment];
    v27 = [(CPSEntityViewController *)v8 initWithEntityTemplate:v6 templateDelegate:v7 templateEnvironment:?];
    [(CPSBaseTemplateViewController *)v27 setViewControllerDelegate:*(a1 + 32), MEMORY[0x277D82BD8](v9).n128_f64[0]];
    v11 = [*(a1 + 32) identifierToViewControllerDictionary];
    v10 = [*(a1 + 40) identifier];
    [v11 setObject:v27 forKey:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    v26 = CarPlaySupportGeneralLogging();
    v25 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(a1 + 40) entity];
      __os_log_helper_16_2_1_8_64(v31, v5);
      _os_log_debug_impl(&dword_242FE8000, v26, v25, "Pushing Entity View Controller: %@", v31, 0xCu);
      MEMORY[0x277D82BD8](v5);
    }

    objc_storeStrong(&v26, 0);
    v4 = [*(a1 + 32) overlayViewController];
    v1 = v27;
    v2 = [*(a1 + 56) BOOLValue];
    v3 = *(a1 + 72);
    v18 = MEMORY[0x277D85DD0];
    v19 = -1073741824;
    v20 = 0;
    v21 = __93__CPSTemplateInstance_pushEntityTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke_130;
    v22 = &unk_278D91D98;
    v23 = MEMORY[0x277D82BE0](v27);
    v24 = MEMORY[0x277D82BE0](*(a1 + 64));
    [v4 pushTemplateViewController:v1 animated:v2 presentationStyle:v3 completion:&v18];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v27, 0);
  }
}

double __93__CPSTemplateInstance_pushEntityTemplate_withProxyDelegate_animated_presentationStyle_reply___block_invoke_130(uint64_t a1)
{
  v4 = [*(a1 + 32) templateProviderFuture];
  v1 = [v4 addSuccessBlock:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

- (void)containsTemplate:(id)template reply:(id)reply
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v21 = 0;
  objc_storeStrong(&v21, reply);
  v16 = 0;
  v17 = &v16;
  v18 = 0x20000000;
  v19 = 32;
  v20 = 0;
  v7 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v7;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __46__CPSTemplateInstance_containsTemplate_reply___block_invoke;
  v13 = &unk_278D91E60;
  v15[1] = &v16;
  v14 = MEMORY[0x277D82BE0](selfCopy);
  v15[0] = MEMORY[0x277D82BE0](location[0]);
  dispatch_sync(queue, &v9);
  v5 = MEMORY[0x277D82BD8](queue);
  (*(v21 + 2))(v21, v17[3] & 1, v5);
  objc_storeStrong(v15, 0);
  objc_storeStrong(&v14, 0);
  _Block_object_dispose(&v16, 8);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

double __46__CPSTemplateInstance_containsTemplate_reply___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) overlayViewController];
  *(*(*(a1 + 48) + 8) + 24) = [v3 indexOfTemplate:*(a1 + 40)] != 0x7FFFFFFFFFFFFFFFLL;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)popToTemplate:(id)template animated:(id)animated reply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v22 = 0;
  objc_storeStrong(&v22, animated);
  v21 = 0;
  objc_storeStrong(&v21, reply);
  v20 = CarPlaySupportGeneralLogging();
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v25, location[0], v22);
    _os_log_impl(&dword_242FE8000, v20, v19, "Popping to template: %@ animated: %@", v25, 0x16u);
  }

  objc_storeStrong(&v20, 0);
  v6 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  queue = v6;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __52__CPSTemplateInstance_popToTemplate_animated_reply___block_invoke;
  v14 = &unk_278D91CD0;
  v15 = MEMORY[0x277D82BE0](selfCopy);
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17 = MEMORY[0x277D82BE0](v22);
  v18 = MEMORY[0x277D82BE0](v21);
  dispatch_async(queue, &v10);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

double __52__CPSTemplateInstance_popToTemplate_animated_reply___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) overlayViewController];
  [v3 popToTemplate:*(a1 + 40) animated:objc_msgSend(*(a1 + 48) completion:{"BOOLValue"), *(a1 + 56)}];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)popToRootTemplateAnimated:(id)animated reply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, animated);
  v18 = 0;
  objc_storeStrong(&v18, reply);
  v17 = CarPlaySupportGeneralLogging();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v21, location[0]);
    _os_log_impl(&dword_242FE8000, v17, v16, "Popping to root template animated: %@", v21, 0xCu);
  }

  objc_storeStrong(&v17, 0);
  v5 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __55__CPSTemplateInstance_popToRootTemplateAnimated_reply___block_invoke;
  v12 = &unk_278D91DC0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v18);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

double __55__CPSTemplateInstance_popToRootTemplateAnimated_reply___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) overlayViewController];
  [v3 popToRootTemplateAnimated:objc_msgSend(*(a1 + 40) completion:{"BOOLValue"), *(a1 + 48)}];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)popTemplateAnimated:(id)animated reply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, animated);
  v18 = 0;
  objc_storeStrong(&v18, reply);
  v17 = CarPlaySupportGeneralLogging();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v21, location[0]);
    _os_log_impl(&dword_242FE8000, v17, v16, "Popping a template animated: %@", v21, 0xCu);
  }

  objc_storeStrong(&v17, 0);
  v5 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __49__CPSTemplateInstance_popTemplateAnimated_reply___block_invoke;
  v12 = &unk_278D91DC0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v18);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

double __49__CPSTemplateInstance_popTemplateAnimated_reply___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) overlayViewController];
  [v3 popTemplateAnimated:objc_msgSend(*(a1 + 40) completion:{"BOOLValue"), *(a1 + 48)}];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)clientRequestNowPlayingTemplateAnimated:(BOOL)animated
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v19 = a2;
  animatedCopy = animated;
  templateEnvironment = [(CPSTemplateInstance *)self templateEnvironment];
  if (templateEnvironment)
  {
    if ([templateEnvironment canBecomeNowPlayingApp])
    {
      if ([templateEnvironment isNowPlayingApp])
      {
        v11 = CarPlaySupportGeneralLogging();
        v10 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [templateEnvironment bundleIdentifier];
          __os_log_helper_16_2_1_8_66(v22, bundleIdentifier);
          _os_log_impl(&dword_242FE8000, v11, v10, "Requesting now playing template from client app %{public}@", v22, 0xCu);
          MEMORY[0x277D82BD8](bundleIdentifier);
        }

        objc_storeStrong(&v11, 0);
        interfaceControllerRemoteObjectProxy = [(CPSTemplateInstance *)selfCopy interfaceControllerRemoteObjectProxy];
        [(CPTemplateServiceClientInterface *)interfaceControllerRemoteObjectProxy clientPushNowPlayingTemplateAnimated:animatedCopy];
        MEMORY[0x277D82BD8](interfaceControllerRemoteObjectProxy);
      }

      else
      {
        oslog = CarPlaySupportGeneralLogging();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier2 = [templateEnvironment bundleIdentifier];
          __os_log_helper_16_2_1_8_66(v21, bundleIdentifier2);
          _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "Client app %{public}@ is not now playing; not requesting now playing", v21, 0xCu);
          MEMORY[0x277D82BD8](bundleIdentifier2);
        }

        objc_storeStrong(&oslog, 0);
      }
    }

    else
    {
      v13 = CarPlaySupportGeneralLogging();
      v12 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier3 = [templateEnvironment bundleIdentifier];
        __os_log_helper_16_2_1_8_66(v23, bundleIdentifier3);
        _os_log_impl(&dword_242FE8000, v13, v12, "Client app %{public}@ cannot become now playing; not requesting now playing", v23, 0xCu);
        MEMORY[0x277D82BD8](bundleIdentifier3);
      }

      objc_storeStrong(&v13, 0);
    }
  }

  else
  {
    selfCopy->_pendingLaunchToNowPlaying = 1;
    location = CarPlaySupportGeneralLogging();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_impl(&dword_242FE8000, log, type, "Pending launch to now playing template.", v14, 2u);
    }

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&templateEnvironment, 0);
}

- (void)dismissTemplateAnimated:(id)animated reply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, animated);
  v18 = 0;
  objc_storeStrong(&v18, reply);
  v17 = CarPlaySupportGeneralLogging();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v21, location[0]);
    _os_log_impl(&dword_242FE8000, v17, v16, "Dismissing template animated: %@", v21, 0xCu);
  }

  objc_storeStrong(&v17, 0);
  v5 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __53__CPSTemplateInstance_dismissTemplateAnimated_reply___block_invoke;
  v12 = &unk_278D91DC0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v18);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void __53__CPSTemplateInstance_dismissTemplateAnimated_reply___block_invoke(uint64_t a1)
{
  v23[2] = a1;
  v23[1] = a1;
  v23[0] = 0;
  v13 = [*(a1 + 32) overlayViewController];
  v14 = [v13 presentedTemplateViewController];
  MEMORY[0x277D82BD8](v14);
  *&v1 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  if (v14)
  {
    v11 = [*(a1 + 32) overlayViewController];
    v10 = [v11 presentedTemplateViewController];
    v9 = [v10 associatedTemplate];
    v2 = [v9 identifier];
    v3 = v23[0];
    v23[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  }

  else
  {
    v5 = [*(a1 + 32) actionSheetIdentifier];
    v6 = v23[0];
    v23[0] = v5;
    v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  v8 = [*(a1 + 32) overlayViewController];
  v7 = [*(a1 + 40) BOOLValue];
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __53__CPSTemplateInstance_dismissTemplateAnimated_reply___block_invoke_2;
  v19 = &unk_278D91DC0;
  v20 = MEMORY[0x277D82BE0](*(a1 + 32));
  v21 = MEMORY[0x277D82BE0](v23[0]);
  v22 = MEMORY[0x277D82BE0](*(a1 + 48));
  [v8 dismissViewControllerAnimated:v7 completion:&v15];
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v23, 0);
}

uint64_t __53__CPSTemplateInstance_dismissTemplateAnimated_reply___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaceControllerRemoteObjectProxy];
  [v2 templateIdentifierDidDismiss:*(a1 + 40)];
  [*(a1 + 32) setActionSheetIdentifier:{0, MEMORY[0x277D82BD8](v2).n128_f64[0]}];
  return (*(*(a1 + 48) + 16))();
}

- (void)getTopTemplateWithReply:(id)reply
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reply);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __47__CPSTemplateInstance_getTopTemplateWithReply___block_invoke;
  v10 = &unk_278D91D98;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __47__CPSTemplateInstance_getTopTemplateWithReply___block_invoke(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  v2 = [*(a1 + 32) overlayViewController];
  v6[0] = [v2 topTemplate];
  *&v1 = MEMORY[0x277D82BD8](v2).n128_u64[0];
  v4 = *(a1 + 40);
  v5 = [v6[0] identifier];
  (*(v4 + 16))();
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(v6, 0);
}

- (void)getTemplatesWithReply:(id)reply
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reply);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __45__CPSTemplateInstance_getTemplatesWithReply___block_invoke;
  v10 = &unk_278D91D98;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __45__CPSTemplateInstance_getTemplatesWithReply___block_invoke(uint64_t a1)
{
  v5[2] = a1;
  v5[1] = a1;
  v2 = [*(a1 + 32) overlayViewController];
  v5[0] = [v2 templates];
  *&v1 = MEMORY[0x277D82BD8](v2).n128_u64[0];
  v4 = [v5[0] cps_map:{&__block_literal_global_3, v1}];
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&v4, 0);
  objc_storeStrong(v5, 0);
}

id __45__CPSTemplateInstance_getTemplatesWithReply___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] identifier];
  objc_storeStrong(location, 0);

  return v3;
}

- (void)getPresentedTemplateWithReply:(id)reply
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reply);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __53__CPSTemplateInstance_getPresentedTemplateWithReply___block_invoke;
  v10 = &unk_278D91D98;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __53__CPSTemplateInstance_getPresentedTemplateWithReply___block_invoke(uint64_t a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v3 = objc_opt_class();
  v5 = [*(a1 + 32) overlayViewController];
  v4 = [v5 presentedTemplateViewController];
  v9[0] = CPSSafeCast_4(v3, v4);
  MEMORY[0x277D82BD8](v4);
  *&v1 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v6 = [v9[0] associatedTemplate];
  v8 = [v6 identifier];
  v2 = MEMORY[0x277D82BD8](v6);
  (*(*(a1 + 40) + 16))(v2);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v9, 0);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, listener);
  v28 = 0;
  objc_storeStrong(&v28, connection);
  v27 = CarPlaySupportGeneralLogging();
  v26 = 2;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    log = v27;
    type = v26;
    __os_log_helper_16_0_0(v25);
    _os_log_debug_impl(&dword_242FE8000, log, type, "Template Instance new connection", v25, 2u);
  }

  objc_storeStrong(&v27, 0);
  templateEnvironment = [(CPSTemplateInstance *)selfCopy templateEnvironment];
  v4 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  if (!templateEnvironment)
  {
    v5 = [CPSTemplateEnvironment alloc];
    v11 = [(CPSTemplateEnvironment *)v5 initWithConnection:v28 templateProvider:selfCopy];
    [(CPSTemplateInstance *)selfCopy setTemplateEnvironment:?];
    v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  }

  if (location[0] == selfCopy->_interfaceControllerListener)
  {
    v31 = [(CPSTemplateInstance *)selfCopy _handleAppViewConnection:v28, *&v4];
    v24 = 1;
  }

  else if (location[0] == selfCopy->_dashboardControllerListener)
  {
    v31 = [(CPSTemplateInstance *)selfCopy _handleDashboardConnection:v28, *&v4];
    v24 = 1;
  }

  else if (location[0] == selfCopy->_instrumentClusterControllerListener)
  {
    objc_initWeak(&v23, selfCopy);
    v9 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    queue = v9;
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __58__CPSTemplateInstance_listener_shouldAcceptNewConnection___block_invoke;
    v20 = &unk_278D91EA8;
    v21 = MEMORY[0x277D82BE0](selfCopy);
    objc_copyWeak(&v22, &v23);
    dispatch_async(queue, &v16);
    *&v7 = MEMORY[0x277D82BD8](queue).n128_u64[0];
    v31 = [(CPSTemplateInstance *)selfCopy _handleInstrumentClusterConnection:v28, v7];
    v24 = 1;
    objc_destroyWeak(&v22);
    objc_storeStrong(&v21, 0);
    objc_destroyWeak(&v23);
  }

  else
  {
    v31 = 0;
    v24 = 1;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  return v31 & 1;
}

void __58__CPSTemplateInstance_listener_shouldAcceptNewConnection___block_invoke(id *a1)
{
  v61 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  v48 = [a1[4] instrumentClusterCardViewController];
  v1 = MEMORY[0x277D82BD8](v48).n128_u64[0];
  if (!v48)
  {
    location[0] = CarPlaySupportGeneralLogging();
    v56 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      v46 = [a1[4] templateEnvironment];
      v45 = [v46 bundleIdentifier];
      __os_log_helper_16_2_1_8_64(v60, v45);
      _os_log_debug_impl(&dword_242FE8000, location[0], v56, "Creating _instrumentClusterCardViewController for %@", v60, 0xCu);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v46);
    }

    objc_storeStrong(location, 0);
    v41 = objc_alloc_init(CPSInstrumentClusterCardViewController);
    [a1[4] setInstrumentClusterCardViewController:?];
    v42 = [a1[4] instrumentClusterCardViewController];
    [v42 setSafeAreaDelegate:a1[4]];
    v44 = [a1[4] navigator];
    v43 = [a1[4] instrumentClusterCardViewController];
    [v44 addDisplayDelegate:?];
    MEMORY[0x277D82BD8](v43);
    v1 = MEMORY[0x277D82BD8](v44).n128_u64[0];
  }

  v40 = [a1[4] instrumentClusterMapETAViewController];
  MEMORY[0x277D82BD8](v40);
  if (!v40)
  {
    v55 = CarPlaySupportGeneralLogging();
    v54 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      v39 = [a1[4] templateEnvironment];
      v38 = [v39 bundleIdentifier];
      __os_log_helper_16_2_1_8_64(v59, v38);
      _os_log_debug_impl(&dword_242FE8000, v55, v54, "Creating _instrumentClusterMapETAViewController for %@", v59, 0xCu);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v39);
    }

    objc_storeStrong(&v55, 0);
    v34 = [[CPSInstrumentClusterCardViewController alloc] initForMapContent];
    [a1[4] setInstrumentClusterMapETAViewController:?];
    v35 = [a1[4] instrumentClusterMapETAViewController];
    [v35 setSafeAreaDelegate:a1[4]];
    v37 = [a1[4] navigator];
    v36 = [a1[4] instrumentClusterMapETAViewController];
    [v37 addDisplayDelegate:?];
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v21 = [WeakRetained templateEnvironment];
  v20 = [v21 sessionStatus];
  v19 = [v20 currentSession];
  v18 = [v19 configuration];
  v22 = [v18 rightHandDrive];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  v52 = v22;
  v26 = [WeakRetained templateEnvironment];
  v25 = [v26 sessionStatus];
  v24 = [v25 currentSession];
  v23 = [v24 configuration];
  v27 = [v23 supportsVehicleData];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  v51 = v27;
  memset(__b, 0, sizeof(__b));
  v31 = [WeakRetained templateEnvironment];
  v30 = [v31 sessionStatus];
  v29 = [v30 currentSession];
  v28 = [v29 configuration];
  obj = [v28 screens];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  v33 = [obj countByEnumeratingWithState:__b objects:v58 count:{16, MEMORY[0x277D82BD8](v31).n128_f64[0]}];
  if (v33)
  {
    v15 = *__b[2];
    v16 = 0;
    v17 = v33;
    while (1)
    {
      v14 = v16;
      if (*__b[2] != v15)
      {
        objc_enumerationMutation(obj);
      }

      v50 = *(__b[1] + 8 * v16);
      v12 = [v50 identifier];
      v11 = [WeakRetained instrumentClusterScene];
      v10 = [v11 settings];
      v9 = [v10 displayConfiguration];
      v8 = [v9 hardwareIdentifier];
      v13 = [v12 isEqualToString:?];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      v2 = MEMORY[0x277D82BD8](v12).n128_u64[0];
      if (v13)
      {
        v6 = [WeakRetained instrumentClusterCardViewController];
        [v6 setCARScreenInfo:v50 isRightHandDrive:v52 & 1 supportsVehicleData:v51 & 1];
        *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
        v7 = [WeakRetained instrumentClusterMapETAViewController];
        [v7 setCARScreenInfo:v50 isRightHandDrive:v52 & 1 supportsVehicleData:v51 & 1];
        v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
      }

      ++v16;
      if (v14 + 1 >= v17)
      {
        v16 = 0;
        v17 = [obj countByEnumeratingWithState:__b objects:v58 count:{16, *&v2}];
        if (!v17)
        {
          break;
        }
      }
    }
  }

  *&v4 = MEMORY[0x277D82BD8](obj).n128_u64[0];
  v5 = [WeakRetained clusterSetupDelegate];
  [v5 templateInstanceDidFinishClusterSetup:WeakRetained];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&WeakRetained, 0);
}

- (BOOL)_handleAppViewConnection:(id)connection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connection);
  templateEnvironment = [(CPSTemplateInstance *)selfCopy templateEnvironment];
  hasAnyTemplateEntitlement = [(CPSTemplateEnvironment *)templateEnvironment hasAnyTemplateEntitlement];
  *&v3 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  if (hasAnyTemplateEntitlement)
  {
    templateEnvironment2 = [(CPSTemplateInstance *)selfCopy templateEnvironment];
    bundleIdentifier = [(CPSTemplateEnvironment *)templateEnvironment2 bundleIdentifier];
    MEMORY[0x277D82BD8](bundleIdentifier);
    MEMORY[0x277D82BD8](templateEnvironment2);
    if (bundleIdentifier)
    {
      v45 = CarPlaySupportGeneralLogging();
      v44 = 2;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        log = v45;
        type = v44;
        __os_log_helper_16_0_0(v43);
        _os_log_debug_impl(&dword_242FE8000, log, type, "Process has Maps/Audio/Communications entitlement, accepting connection", v43, 2u);
      }

      objc_storeStrong(&v45, 0);
      _templateProvidingInterface = [MEMORY[0x277CBB0A8] _templateProvidingInterface];
      [location[0] setExportedInterface:_templateProvidingInterface];
      [location[0] setExportedObject:selfCopy];
      _templateClientInterface = [MEMORY[0x277CBB0A8] _templateClientInterface];
      [location[0] setRemoteObjectInterface:_templateClientInterface];
      remoteObjectProxy = [location[0] remoteObjectProxy];
      [(CPSTemplateInstance *)selfCopy setInterfaceControllerRemoteObjectProxy:?];
      MEMORY[0x277D82BD8](remoteObjectProxy);
      objc_initWeak(&v40, selfCopy);
      v33 = MEMORY[0x277D85DD0];
      v34 = -1073741824;
      v35 = 0;
      v36 = __48__CPSTemplateInstance__handleAppViewConnection___block_invoke;
      v37 = &unk_278D918D8;
      objc_copyWeak(&v38, &v40);
      v39 = MEMORY[0x245D2A460](&v33);
      [location[0] setInvalidationHandler:v39];
      [location[0] setInterruptionHandler:v39];
      [location[0] resume];
      [(CPSTemplateInstance *)selfCopy setInterfaceControllerConnection:location[0]];
      objc_initWeak(&v32, selfCopy);
      v10 = MEMORY[0x277D85CD0];
      v4 = MEMORY[0x277D85CD0];
      queue = v10;
      v26 = MEMORY[0x277D85DD0];
      v27 = -1073741824;
      v28 = 0;
      v29 = __48__CPSTemplateInstance__handleAppViewConnection___block_invoke_2;
      v30 = &unk_278D918D8;
      objc_copyWeak(&v31, &v32);
      dispatch_async(queue, &v26);
      MEMORY[0x277D82BD8](queue);
      v48 = 1;
      v25 = 1;
      objc_destroyWeak(&v31);
      objc_destroyWeak(&v32);
      objc_storeStrong(&v39, 0);
      objc_destroyWeak(&v38);
      objc_destroyWeak(&v40);
      objc_storeStrong(&_templateClientInterface, 0);
      objc_storeStrong(&_templateProvidingInterface, 0);
    }

    else
    {
      v24 = CarPlaySupportGeneralLogging();
      v23 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v24;
        v9 = v23;
        __os_log_helper_16_0_0(v22);
        _os_log_impl(&dword_242FE8000, v8, v9, "Unable to get bundle identifier for connection", v22, 2u);
      }

      objc_storeStrong(&v24, 0);
      v48 = 0;
      v25 = 1;
    }
  }

  else
  {
    oslog = CarPlaySupportGeneralLogging();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = oslog;
      v7 = v20;
      __os_log_helper_16_0_0(v19);
      _os_log_impl(&dword_242FE8000, v6, v7, "Process does not have any valid template entitlement, not accepting connection", v19, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v48 = 0;
    v25 = 1;
  }

  objc_storeStrong(location, 0);
  return v48 & 1;
}

double __48__CPSTemplateInstance__handleAppViewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _appViewConnectionInvalidationHandler];
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

void __48__CPSTemplateInstance__handleAppViewConnection___block_invoke_2(id *a1)
{
  v7[2] = a1;
  v7[1] = a1;
  v7[0] = objc_loadWeakRetained(a1 + 4);
  v3 = [v7[0] interfaceControllerConnection];
  v4 = [v3 processIdentifier];
  *&v1 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  v5 = [v7[0] overlayViewController];
  [v5 updateVisibilityForPid:v4];
  *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v6 = [v7[0] delegate];
  [v6 templateInstanceClientDidConnectApplicationScene:v7[0]];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(v7, 0);
}

- (void)_appViewConnectionInvalidationHandler
{
  selfCopy = self;
  v10[1] = a2;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __60__CPSTemplateInstance__appViewConnectionInvalidationHandler__block_invoke;
  v9 = &unk_278D913E8;
  v10[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v10, 0);
}

double __60__CPSTemplateInstance__appViewConnectionInvalidationHandler__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) overlayViewController];
  v2 = [v3 view];
  [v2 removeFromSuperview];
  MEMORY[0x277D82BD8](v2);
  v4 = [*(a1 + 32) overlayViewController];
  [v4 removeFromParentViewController];
  [*(a1 + 32) setTabBarViewController:MEMORY[0x277D82BD8](v4).n128_f64[0]];
  [*(a1 + 32) setTemplateEnvironment:0];
  [*(a1 + 32) setInterfaceControllerRemoteObjectProxy:0];
  [*(a1 + 32) setInterfaceControllerConnection:0];
  v6 = [*(a1 + 32) delegate];
  [v6 templateInstanceClientDidDisconnectApplicationScene:*(a1 + 32)];
  *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  return result;
}

- (void)invalidate
{
  bannerSource = [(CPSTemplateInstance *)self bannerSource];
  [(CPSBannerSource *)bannerSource invalidate];
  dashboardControllerConnection = [(CPSTemplateInstance *)self dashboardControllerConnection];
  [(NSXPCConnection *)dashboardControllerConnection invalidate];
  interfaceControllerConnection = [(CPSTemplateInstance *)self interfaceControllerConnection];
  [(NSXPCConnection *)interfaceControllerConnection invalidate];
  overlayViewController = [(CPSTemplateInstance *)self overlayViewController];
  [(CPSOverlayViewController *)overlayViewController invalidate];
  MEMORY[0x277D82BD8](overlayViewController);
}

- (BOOL)_handleDashboardConnection:(id)connection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connection);
  templateEnvironment = [(CPSTemplateInstance *)selfCopy templateEnvironment];
  hasNavigationEntitlement = [(CPSTemplateEnvironment *)templateEnvironment hasNavigationEntitlement];
  *&v3 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  v23 = hasNavigationEntitlement;
  templateEnvironment2 = [(CPSTemplateInstance *)selfCopy templateEnvironment];
  bundleIdentifier = [(CPSTemplateEnvironment *)templateEnvironment2 bundleIdentifier];
  *&v4 = MEMORY[0x277D82BD8](templateEnvironment2).n128_u64[0];
  if (hasNavigationEntitlement && bundleIdentifier)
  {
    _dashboardProvidingInterface = [MEMORY[0x277CBB080] _dashboardProvidingInterface];
    [location[0] setExportedInterface:_dashboardProvidingInterface];
    [location[0] setExportedObject:selfCopy];
    _dashboardClientInterface = [MEMORY[0x277CBB080] _dashboardClientInterface];
    [location[0] setRemoteObjectInterface:_dashboardClientInterface];
    remoteObjectProxy = [location[0] remoteObjectProxy];
    [(CPSTemplateInstance *)selfCopy setDashboardControllerRemoteObjectProxy:?];
    MEMORY[0x277D82BD8](remoteObjectProxy);
    objc_initWeak(&v19, selfCopy);
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __50__CPSTemplateInstance__handleDashboardConnection___block_invoke;
    v16 = &unk_278D918D8;
    objc_copyWeak(&v17, &v19);
    v18 = MEMORY[0x245D2A460](&v12);
    [location[0] setInvalidationHandler:v18];
    [location[0] setInterruptionHandler:v18];
    [location[0] resume];
    [(CPSTemplateInstance *)selfCopy setDashboardControllerConnection:location[0]];
    dashboardGuidanceViewController = [(CPSTemplateInstance *)selfCopy dashboardGuidanceViewController];
    remoteObjectProxy2 = [location[0] remoteObjectProxy];
    [(CPSDashboardGuidanceViewController *)dashboardGuidanceViewController setDashboardClient:?];
    MEMORY[0x277D82BD8](remoteObjectProxy2);
    MEMORY[0x277D82BD8](dashboardGuidanceViewController);
    v26 = 1;
    objc_storeStrong(&v18, 0);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_storeStrong(&_dashboardClientInterface, 0);
    objc_storeStrong(&_dashboardProvidingInterface, 0);
  }

  else
  {
    v26 = 0;
  }

  objc_storeStrong(&bundleIdentifier, 0);
  objc_storeStrong(location, 0);
  return v26 & 1;
}

double __50__CPSTemplateInstance__handleDashboardConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dashboardConnectionInvalidationHandler];
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

- (void)_dashboardConnectionInvalidationHandler
{
  selfCopy = self;
  v10[1] = a2;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __62__CPSTemplateInstance__dashboardConnectionInvalidationHandler__block_invoke;
  v9 = &unk_278D913E8;
  v10[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v10, 0);
}

uint64_t __62__CPSTemplateInstance__dashboardConnectionInvalidationHandler__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) dashboardGuidanceViewController];
  v2 = [v3 view];
  [v2 removeFromSuperview];
  MEMORY[0x277D82BD8](v2);
  v4 = [*(a1 + 32) dashboardGuidanceViewController];
  [v4 removeFromParentViewController];
  v6 = [*(a1 + 32) dashboardEstimatesViewController];
  v5 = [v6 view];
  [v5 removeFromSuperview];
  MEMORY[0x277D82BD8](v5);
  v7 = [*(a1 + 32) dashboardEstimatesViewController];
  [v7 removeFromParentViewController];
  return [*(a1 + 32) setDashboardControllerRemoteObjectProxy:{0, MEMORY[0x277D82BD8](v7).n128_f64[0]}];
}

- (BOOL)_handleInstrumentClusterConnection:(id)connection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connection);
  templateEnvironment = [(CPSTemplateInstance *)selfCopy templateEnvironment];
  hasNavigationEntitlement = [(CPSTemplateEnvironment *)templateEnvironment hasNavigationEntitlement];
  *&v3 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  v19 = hasNavigationEntitlement;
  templateEnvironment2 = [(CPSTemplateInstance *)selfCopy templateEnvironment];
  bundleIdentifier = [(CPSTemplateEnvironment *)templateEnvironment2 bundleIdentifier];
  *&v4 = MEMORY[0x277D82BD8](templateEnvironment2).n128_u64[0];
  if (hasNavigationEntitlement && bundleIdentifier)
  {
    _clusterProvidingInterface = [MEMORY[0x277CBB0A0] _clusterProvidingInterface];
    [location[0] setExportedInterface:_clusterProvidingInterface];
    [location[0] setExportedObject:selfCopy];
    objc_initWeak(&v16, selfCopy);
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __58__CPSTemplateInstance__handleInstrumentClusterConnection___block_invoke;
    v13 = &unk_278D918D8;
    objc_copyWeak(&v14, &v16);
    v15 = MEMORY[0x245D2A460](&v9);
    [location[0] setInvalidationHandler:v15];
    [location[0] setInterruptionHandler:v15];
    [location[0] resume];
    [(CPSTemplateInstance *)selfCopy setInstrumentClusterControllerConnection:location[0]];
    v22 = 1;
    objc_storeStrong(&v15, 0);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_storeStrong(&_clusterProvidingInterface, 0);
  }

  else
  {
    v22 = 0;
  }

  objc_storeStrong(&bundleIdentifier, 0);
  objc_storeStrong(location, 0);
  return v22 & 1;
}

double __58__CPSTemplateInstance__handleInstrumentClusterConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _instrumentClusterConnectionInvalidationHandler];
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

- (void)_instrumentClusterConnectionInvalidationHandler
{
  selfCopy = self;
  v10[1] = a2;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __70__CPSTemplateInstance__instrumentClusterConnectionInvalidationHandler__block_invoke;
  v9 = &unk_278D913E8;
  v10[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v10, 0);
}

double __70__CPSTemplateInstance__instrumentClusterConnectionInvalidationHandler__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) instrumentClusterViewControllerMapTable];
  v3 = [v4 objectEnumerator];
  v2 = [v3 allObjects];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_139];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  v6 = [*(a1 + 32) instrumentClusterViewControllerMapTable];
  [v6 removeAllObjects];
  *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  return result;
}

void __70__CPSTemplateInstance__instrumentClusterConnectionInvalidationHandler__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] view];
  [v3 removeFromSuperview];
  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  [location[0] removeFromParentViewController];
  objc_storeStrong(location, 0);
}

- (void)allowlistClassesForBaseTemplateProvider:(id)provider
{
  location[2] = self;
  location[1] = a2;
  v22 = location;
  v23 = 0;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v6 = location[0];
  v17 = 0x277CBE000uLL;
  v5 = MEMORY[0x277CBEB98];
  v8 = 0x277CBE000uLL;
  v4 = objc_opt_class();
  v9 = 0x277CBB000uLL;
  v3 = objc_opt_class();
  v10 = 0x277CBB000uLL;
  v7 = [v5 setWithObjects:{v4, v3, objc_opt_class(), 0}];
  v14 = 0;
  v19 = 0;
  [v6 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  MEMORY[0x277D82BD8](v7);
  v15 = location[0];
  v13 = *(v17 + 2968);
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v16 = [v13 setWithObjects:{v12, v11, objc_opt_class(), 0}];
  [v15 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  MEMORY[0x277D82BD8](v16);
  v20 = location[0];
  v18 = *(v17 + 2968);
  v21 = [v18 setWithObject:objc_opt_class()];
  [v20 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  MEMORY[0x277D82BD8](v21);
  objc_storeStrong(v22, v23);
}

- (void)_pushNowPlayingIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  if (self->_pendingLaunchToNowPlaying)
  {
    selfCopy->_pendingLaunchToNowPlaying = 0;
    templateEnvironment = [(CPSTemplateInstance *)selfCopy templateEnvironment];
    canBecomeNowPlayingApp = [(CPSTemplateEnvironment *)templateEnvironment canBecomeNowPlayingApp];
    *&v2 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
    if (canBecomeNowPlayingApp)
    {
      interfaceControllerRemoteObjectProxy = [(CPSTemplateInstance *)selfCopy interfaceControllerRemoteObjectProxy];
      [(CPTemplateServiceClientInterface *)interfaceControllerRemoteObjectProxy clientPushNowPlayingTemplateAnimated:0];
      MEMORY[0x277D82BD8](interfaceControllerRemoteObjectProxy);
    }

    else
    {
      location[0] = CarPlaySupportGeneralLogging();
      if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
      {
        templateEnvironment2 = [(CPSTemplateInstance *)selfCopy templateEnvironment];
        bundleIdentifier = [(CPSTemplateEnvironment *)templateEnvironment2 bundleIdentifier];
        __os_log_helper_16_2_1_8_66(v10, bundleIdentifier);
        _os_log_impl(&dword_242FE8000, location[0], OS_LOG_TYPE_DEFAULT, "Client app %{public}@ cannot become now playing; not requesting now playing", v10, 0xCu);
        MEMORY[0x277D82BD8](bundleIdentifier);
        MEMORY[0x277D82BD8](templateEnvironment2);
      }

      objc_storeStrong(location, 0);
    }
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  v39 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v35 = 0;
  objc_storeStrong(&v35, viewController);
  animatedCopy = animated;
  v33 = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v35;
    v30 = [MEMORY[0x277CCABB0] numberWithBool:animatedCopy];
    __os_log_helper_16_2_2_8_64_8_64(v38, v29, v30);
    _os_log_impl(&dword_242FE8000, v33, OS_LOG_TYPE_DEFAULT, "Will show navigation item %@ animated %@", v38, 0x16u);
    MEMORY[0x277D82BD8](v30);
  }

  objc_storeStrong(&v33, 0);
  overlayViewController = [(CPSTemplateInstance *)selfCopy overlayViewController];
  v28 = [(CPSOverlayViewController *)overlayViewController shouldHideNavigationBarForViewController:v35];
  *&v5 = MEMORY[0x277D82BD8](overlayViewController).n128_u64[0];
  if (v28)
  {
    [location[0] setNavigationBarHidden:1 animated:{1, v5}];
  }

  else if ([location[0] isNavigationBarHidden])
  {
    [location[0] setNavigationBarHidden:0 animated:1];
  }

  viewControllers = [location[0] viewControllers];
  v24 = [viewControllers count];
  *&v6 = MEMORY[0x277D82BD8](viewControllers).n128_u64[0];
  templateEnvironment = [(CPSTemplateInstance *)selfCopy templateEnvironment];
  maximumClientHierarchyDepth = [(CPSTemplateEnvironment *)templateEnvironment maximumClientHierarchyDepth];
  *&v7 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  if (v24 > maximumClientHierarchyDepth)
  {
    interfaceControllerRemoteObjectProxy = [(CPSTemplateInstance *)selfCopy interfaceControllerRemoteObjectProxy];
    [(CPTemplateServiceClientInterface *)interfaceControllerRemoteObjectProxy clientExceededHierarchyDepthLimit];
    MEMORY[0x277D82BD8](interfaceControllerRemoteObjectProxy);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v20 = [MEMORY[0x277CCABB0] numberWithBool:animatedCopy];
    [defaultCenter postNotificationName:@"CPMapTemplateWillShowNotification" object:?];
    MEMORY[0x277D82BD8](v20);
    *&v8 = MEMORY[0x277D82BD8](defaultCenter).n128_u64[0];
    if ([(CPSTemplateInstance *)selfCopy prefersOpaqueBackground])
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      overlayViewController2 = [(CPSTemplateInstance *)selfCopy overlayViewController];
      view = [(CPSOverlayViewController *)overlayViewController2 view];
      [view setBackgroundColor:clearColor];
      MEMORY[0x277D82BD8](view);
      MEMORY[0x277D82BD8](overlayViewController2);
      MEMORY[0x277D82BD8](clearColor);
    }
  }

  else
  {
    if ([(CPSTemplateInstance *)selfCopy prefersOpaqueBackground])
    {
      tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
      overlayViewController3 = [(CPSTemplateInstance *)selfCopy overlayViewController];
      view2 = [(CPSOverlayViewController *)overlayViewController3 view];
      [view2 setBackgroundColor:tableBackgroundColor];
      MEMORY[0x277D82BD8](view2);
      MEMORY[0x277D82BD8](overlayViewController3);
      MEMORY[0x277D82BD8](tableBackgroundColor);
    }

    templateEnvironment2 = [(CPSTemplateInstance *)selfCopy templateEnvironment];
    hasNavigationEntitlement = [(CPSTemplateEnvironment *)templateEnvironment2 hasNavigationEntitlement];
    *&v9 = MEMORY[0x277D82BD8](templateEnvironment2).n128_u64[0];
    if (hasNavigationEntitlement)
    {
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = [MEMORY[0x277CCABB0] numberWithBool:animatedCopy];
      [defaultCenter2 postNotificationName:@"CPMapTemplateWillHideNotification" object:?];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](defaultCenter2);
    }
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  v16 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v13 = 0;
  objc_storeStrong(&v13, viewController);
  animatedCopy = animated;
  v11 = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v13;
    v8 = [MEMORY[0x277CCABB0] numberWithBool:animatedCopy];
    __os_log_helper_16_2_2_8_64_8_64(v15, v7, v8);
    _os_log_impl(&dword_242FE8000, v11, OS_LOG_TYPE_DEFAULT, "Did show navigation item %@ animated %@", v15, 0x16u);
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&v11, 0);
  if (_UISolariumEnabled())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v5 = [MEMORY[0x277CCABB0] numberWithBool:animatedCopy];
      [defaultCenter postNotificationName:@"CPMapTemplateWillShowNotification" object:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](defaultCenter);
    }
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)templateViewControllerDidPop:(id)pop
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pop);
  associatedTemplate = [location[0] associatedTemplate];
  identifier = [associatedTemplate identifier];
  *&v3 = MEMORY[0x277D82BD8](associatedTemplate).n128_u64[0];
  interfaceControllerRemoteObjectProxy = [(CPSTemplateInstance *)selfCopy interfaceControllerRemoteObjectProxy];
  [(CPTemplateServiceClientInterface *)interfaceControllerRemoteObjectProxy templateIdentifierDidPop:identifier];
  MEMORY[0x277D82BD8](interfaceControllerRemoteObjectProxy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x277D82BE0](location[0]);
    [v10 setTemplateDelegate:?];
    [v10 setAssociatedTemplate:0];
    objc_storeStrong(&v10, 0);
  }

  else
  {
    [location[0] setTemplateDelegate:?];
    [location[0] setAssociatedTemplate:0];
  }

  identifierToViewControllerDictionary = [(CPSTemplateInstance *)selfCopy identifierToViewControllerDictionary];
  [(NSMutableDictionary *)identifierToViewControllerDictionary removeObjectForKey:identifier];
  *&v4 = MEMORY[0x277D82BD8](identifierToViewControllerDictionary).n128_u64[0];
  if ([location[0] conformsToProtocol:{&unk_285607C30, v4}])
  {
    applicationStateMonitor = [(CPSTemplateInstance *)selfCopy applicationStateMonitor];
    v5 = CPSSafeProtocolCast_0(&unk_285607C30, location[0]);
    [(CPSApplicationStateMonitor *)applicationStateMonitor removeApplicationStateObserver:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](applicationStateMonitor);
  }

  objc_storeStrong(&identifier, 0);
  objc_storeStrong(location, 0);
}

- (void)templateViewControllerDidDismiss:(id)dismiss
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dismiss);
  associatedTemplate = [location[0] associatedTemplate];
  identifier = [associatedTemplate identifier];
  *&v3 = MEMORY[0x277D82BD8](associatedTemplate).n128_u64[0];
  if (identifier)
  {
    interfaceControllerRemoteObjectProxy = [(CPSTemplateInstance *)selfCopy interfaceControllerRemoteObjectProxy];
    [(CPTemplateServiceClientInterface *)interfaceControllerRemoteObjectProxy templateIdentifierDidDismiss:identifier];
    *&v4 = MEMORY[0x277D82BD8](interfaceControllerRemoteObjectProxy).n128_u64[0];
    identifierToViewControllerDictionary = [(CPSTemplateInstance *)selfCopy identifierToViewControllerDictionary];
    v12 = [(NSMutableDictionary *)identifierToViewControllerDictionary objectForKey:identifier];
    *&v5 = MEMORY[0x277D82BD8](identifierToViewControllerDictionary).n128_u64[0];
    [v12 setTemplateDelegate:v5];
    [v12 setAssociatedTemplate:0];
    identifierToViewControllerDictionary2 = [(CPSTemplateInstance *)selfCopy identifierToViewControllerDictionary];
    [(NSMutableDictionary *)identifierToViewControllerDictionary2 removeObjectForKey:identifier];
    MEMORY[0x277D82BD8](identifierToViewControllerDictionary2);
    objc_storeStrong(&v12, 0);
  }

  if ([location[0] conformsToProtocol:{&unk_285607C30, v3}])
  {
    applicationStateMonitor = [(CPSTemplateInstance *)selfCopy applicationStateMonitor];
    v6 = CPSSafeProtocolCast_0(&unk_285607C30, location[0]);
    [(CPSApplicationStateMonitor *)applicationStateMonitor removeApplicationStateObserver:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](applicationStateMonitor);
  }

  objc_storeStrong(&identifier, 0);
  objc_storeStrong(location, 0);
}

- (void)templateViewController:(id)controller shouldActivateSiriWithDirectActionContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v15 = 0;
  objc_storeStrong(&v15, context);
  v14 = CarPlaySupportGeneralLogging();
  v13 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v18, v15);
    _os_log_impl(&dword_242FE8000, v14, v13, "Preparing to activate Siri for direct action %@", v18, 0xCu);
  }

  objc_storeStrong(&v14, 0);
  siriActivationSource = [(CPSTemplateInstance *)selfCopy siriActivationSource];
  v4 = v15;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __88__CPSTemplateInstance_templateViewController_shouldActivateSiriWithDirectActionContext___block_invoke;
  v11 = &unk_278D91398;
  v12 = MEMORY[0x277D82BE0](v15);
  [(SiriDirectActionSource *)siriActivationSource activateWithContext:v4 completion:&v7];
  MEMORY[0x277D82BD8](siriActivationSource);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __88__CPSTemplateInstance_templateViewController_shouldActivateSiriWithDirectActionContext___block_invoke(NSObject *a1, char a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v6 = a2;
  oslog[1] = a1;
  oslog[0] = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_INFO))
  {
    isa = a1[4].isa;
    v3 = [MEMORY[0x277CCABB0] numberWithBool:v6 & 1];
    __os_log_helper_16_2_2_8_64_8_64(v8, isa, v3);
    _os_log_impl(&dword_242FE8000, oslog[0], OS_LOG_TYPE_INFO, "Performed Siri activation for %@ with result %@", v8, 0x16u);
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(oslog, 0);
}

- (UIEdgeInsets)safeAreaInsetsForScene:(id)scene
{
  v74 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scene);
  v58 = location[0];
  mapWidgetScene = [(CPSTemplateInstance *)selfCopy mapWidgetScene];
  *&v3 = MEMORY[0x277D82BD8](mapWidgetScene).n128_u64[0];
  if (v58 == mapWidgetScene)
  {
    dashboardEstimatesViewController = [(CPSTemplateInstance *)selfCopy dashboardEstimatesViewController];
    view = [(CPSDashboardEstimatesViewController *)dashboardEstimatesViewController view];
    [view safeAreaInsets];
    v65 = v4;
    v66 = v5;
    v67 = v6;
    v68 = v7;
    MEMORY[0x277D82BD8](view);
    MEMORY[0x277D82BD8](dashboardEstimatesViewController);
    dashboardEstimatesViewController2 = [(CPSTemplateInstance *)selfCopy dashboardEstimatesViewController];
    [(CPSDashboardEstimatesViewController *)dashboardEstimatesViewController2 safeAreaInsets];
    v61 = v8;
    v62 = v9;
    v63 = v10;
    v64 = v11;
    MEMORY[0x277D82BD8](dashboardEstimatesViewController2);
    v71 = 0u;
    v72 = 0u;
    UIEdgeInsetsAdd();
    *&v71 = v12;
    *(&v71 + 1) = v13;
    *&v72 = v14;
    *(&v72 + 1) = v15;
    v60 = 1;
  }

  else
  {
    v53 = location[0];
    scene = [(CPSTemplateInstance *)selfCopy scene];
    *&v16 = MEMORY[0x277D82BD8](scene).n128_u64[0];
    if (v53 == scene)
    {
      [(CPSTemplateInstance *)selfCopy currentSafeAreaInsets];
      *&v71 = v17;
      *(&v71 + 1) = v18;
      *&v72 = v19;
      *(&v72 + 1) = v20;
      v60 = 1;
    }

    else
    {
      settings = [location[0] settings];
      displayConfiguration = [settings displayConfiguration];
      instrumentClusterMapETAViewController = [(CPSTemplateInstance *)selfCopy instrumentClusterMapETAViewController];
      view2 = [(CPSInstrumentClusterCardViewController *)instrumentClusterMapETAViewController view];
      window = [view2 window];
      screen = [window screen];
      displayConfiguration2 = [screen displayConfiguration];
      v51 = [displayConfiguration isEqual:?];
      MEMORY[0x277D82BD8](displayConfiguration2);
      MEMORY[0x277D82BD8](screen);
      MEMORY[0x277D82BD8](window);
      MEMORY[0x277D82BD8](view2);
      MEMORY[0x277D82BD8](instrumentClusterMapETAViewController);
      MEMORY[0x277D82BD8](displayConfiguration);
      *&v21 = MEMORY[0x277D82BD8](settings).n128_u64[0];
      if (v51)
      {
        v71 = 0u;
        v72 = 0u;
        instrumentClusterMapETAViewController2 = [(CPSTemplateInstance *)selfCopy instrumentClusterMapETAViewController];
        [(CPSInstrumentClusterCardViewController *)instrumentClusterMapETAViewController2 currentClientInsets];
        *&v71 = v22;
        *(&v71 + 1) = v23;
        *&v72 = v24;
        *(&v72 + 1) = v25;
        MEMORY[0x277D82BD8](instrumentClusterMapETAViewController2);
        v60 = 1;
      }

      else
      {
        settings2 = [location[0] settings];
        displayConfiguration3 = [settings2 displayConfiguration];
        instrumentClusterCardViewController = [(CPSTemplateInstance *)selfCopy instrumentClusterCardViewController];
        view3 = [(CPSInstrumentClusterCardViewController *)instrumentClusterCardViewController view];
        window2 = [view3 window];
        screen2 = [window2 screen];
        displayConfiguration4 = [screen2 displayConfiguration];
        v42 = [displayConfiguration3 isEqual:?];
        MEMORY[0x277D82BD8](displayConfiguration4);
        MEMORY[0x277D82BD8](screen2);
        MEMORY[0x277D82BD8](window2);
        MEMORY[0x277D82BD8](view3);
        MEMORY[0x277D82BD8](instrumentClusterCardViewController);
        MEMORY[0x277D82BD8](displayConfiguration3);
        MEMORY[0x277D82BD8](settings2);
        if (v42)
        {
          v71 = 0u;
          v72 = 0u;
          instrumentClusterCardViewController2 = [(CPSTemplateInstance *)selfCopy instrumentClusterCardViewController];
          [(CPSInstrumentClusterCardViewController *)instrumentClusterCardViewController2 currentClientInsets];
          *&v71 = v26;
          *(&v71 + 1) = v27;
          *&v72 = v28;
          *(&v72 + 1) = v29;
          MEMORY[0x277D82BD8](instrumentClusterCardViewController2);
          v60 = 1;
        }

        else
        {
          v59 = CarPlaySupportGeneralLogging();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_66(v73, location[0]);
            _os_log_error_impl(&dword_242FE8000, v59, OS_LOG_TYPE_ERROR, "Requesting safe area for scene not owned by this instance: %{public}@", v73, 0xCu);
          }

          objc_storeStrong(&v59, 0);
          v71 = *MEMORY[0x277D768C8];
          v72 = *(MEMORY[0x277D768C8] + 16);
          v60 = 1;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
  v30 = *(&v72 + 1);
  v31 = *&v72;
  v32 = *(&v71 + 1);
  v33 = *&v71;
  result.right = v30;
  result.bottom = v31;
  result.left = v32;
  result.top = v33;
  return result;
}

- (void)viewController:(id)controller didUpdateSafeAreaInsets:(UIEdgeInsets)insets
{
  v59 = *MEMORY[0x277D85DE8];
  insetsCopy = insets;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v28 = location[0];
  instrumentClusterCardViewController = [(CPSTemplateInstance *)selfCopy instrumentClusterCardViewController];
  v52 = 0;
  v50 = 0;
  v48 = 0;
  if (v28 != instrumentClusterCardViewController || (v53 = [(CPSTemplateInstance *)selfCopy instrumentClusterCardViewController], v52 = 1, v27 = 1, ![(CPSInstrumentClusterCardViewController *)v53 shouldUpdateContent]))
  {
    v25 = location[0];
    instrumentClusterMapETAViewController = [(CPSTemplateInstance *)selfCopy instrumentClusterMapETAViewController];
    v50 = 1;
    shouldUpdateContent = 0;
    if (v25 == instrumentClusterMapETAViewController)
    {
      instrumentClusterMapETAViewController2 = [(CPSTemplateInstance *)selfCopy instrumentClusterMapETAViewController];
      v48 = 1;
      shouldUpdateContent = [(CPSInstrumentClusterCardViewController *)instrumentClusterMapETAViewController2 shouldUpdateContent];
    }

    v27 = shouldUpdateContent;
  }

  if (v48)
  {
    MEMORY[0x277D82BD8](instrumentClusterMapETAViewController2);
  }

  if (v50)
  {
    MEMORY[0x277D82BD8](instrumentClusterMapETAViewController);
  }

  if (v52)
  {
    MEMORY[0x277D82BD8](v53);
  }

  *&v4 = MEMORY[0x277D82BD8](instrumentClusterCardViewController).n128_u64[0];
  if (v27)
  {
    instrumentClusterScene = [(CPSTemplateInstance *)selfCopy instrumentClusterScene];
    isValid = [(FBScene *)instrumentClusterScene isValid];
    *&v5 = MEMORY[0x277D82BD8](instrumentClusterScene).n128_u64[0];
    if (isValid)
    {
      instrumentClusterScene2 = [(CPSTemplateInstance *)selfCopy instrumentClusterScene];
      v42 = MEMORY[0x277D85DD0];
      v43 = -1073741824;
      v44 = 0;
      v45 = __62__CPSTemplateInstance_viewController_didUpdateSafeAreaInsets___block_invoke;
      v46 = &unk_278D91C80;
      v47 = MEMORY[0x277D82BE0](selfCopy);
      [(FBScene *)instrumentClusterScene2 updateUISettingsWithBlock:&v42];
      MEMORY[0x277D82BD8](instrumentClusterScene2);
      objc_storeStrong(&v47, 0);
    }
  }

  else
  {
    v21 = location[0];
    dashboardEstimatesViewController = [(CPSTemplateInstance *)selfCopy dashboardEstimatesViewController];
    MEMORY[0x277D82BD8](dashboardEstimatesViewController);
    if (v21 == dashboardEstimatesViewController)
    {
      v41 = CarPlaySupportGeneralLogging();
      v40 = 1;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        log = v41;
        type = v40;
        v19 = NSStringFromUIEdgeInsets(insetsCopy);
        v39 = MEMORY[0x277D82BE0](v19);
        __os_log_helper_16_2_1_8_64(v58, v39);
        _os_log_impl(&dword_242FE8000, log, type, "Updating safe area for map template to %@", v58, 0xCu);
        MEMORY[0x277D82BD8](v19);
        objc_storeStrong(&v39, 0);
      }

      objc_storeStrong(&v41, 0);
      mapWidgetScene = [(CPSTemplateInstance *)selfCopy mapWidgetScene];
      isValid2 = [(FBScene *)mapWidgetScene isValid];
      *&v6 = MEMORY[0x277D82BD8](mapWidgetScene).n128_u64[0];
      if (isValid2)
      {
        mapWidgetScene2 = [(CPSTemplateInstance *)selfCopy mapWidgetScene];
        v33 = MEMORY[0x277D85DD0];
        v34 = -1073741824;
        v35 = 0;
        v36 = __62__CPSTemplateInstance_viewController_didUpdateSafeAreaInsets___block_invoke_202;
        v37 = &unk_278D91C80;
        v38 = MEMORY[0x277D82BE0](selfCopy);
        [(FBScene *)mapWidgetScene2 updateUISettingsWithBlock:&v33];
        MEMORY[0x277D82BD8](mapWidgetScene2);
        objc_storeStrong(&v38, 0);
      }
    }

    else
    {
      oslog = CarPlaySupportGeneralLogging();
      v31 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        v11 = oslog;
        v12 = v31;
        v13 = NSStringFromUIEdgeInsets(insetsCopy);
        v30 = MEMORY[0x277D82BE0](v13);
        __os_log_helper_16_2_1_8_64(v57, v30);
        _os_log_impl(&dword_242FE8000, v11, v12, "Updating safe area for map template to %@", v57, 0xCu);
        MEMORY[0x277D82BD8](v13);
        objc_storeStrong(&v30, 0);
      }

      objc_storeStrong(&oslog, 0);
      selfCopy->_currentSafeAreaInsets = insetsCopy;
      scene = [(CPSTemplateInstance *)selfCopy scene];
      isValid3 = [(FBScene *)scene isValid];
      *&v7 = MEMORY[0x277D82BD8](scene).n128_u64[0];
      if (isValid3)
      {
        scene2 = [(CPSTemplateInstance *)selfCopy scene];
        [(FBScene *)scene2 updateUISettingsWithBlock:?];
        MEMORY[0x277D82BD8](scene2);
      }
    }
  }

  objc_storeStrong(location, 0);
}

void __62__CPSTemplateInstance_viewController_didUpdateSafeAreaInsets___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = location[0];
  v7 = a1[4];
  v9 = [v7 instrumentClusterScene];
  [v7 safeAreaInsetsForScene:?];
  [v8 setSafeAreaInsetsPortrait:{v2, v3, v4, v5}];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(location, 0);
}

void __62__CPSTemplateInstance_viewController_didUpdateSafeAreaInsets___block_invoke_202(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = location[0];
  v7 = a1[4];
  v9 = [v7 mapWidgetScene];
  [v7 safeAreaInsetsForScene:?];
  [v8 setSafeAreaInsetsPortrait:{v2, v3, v4, v5}];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(location, 0);
}

void __62__CPSTemplateInstance_viewController_didUpdateSafeAreaInsets___block_invoke_203(double *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setSafeAreaInsetsPortrait:{a1[4], a1[5], a1[6], a1[7]}];
  objc_storeStrong(location, 0);
}

- (void)updateInterestingInsets:(UIEdgeInsets)insets
{
  interfaceControllerRemoteObjectProxy = [(CPSTemplateInstance *)self interfaceControllerRemoteObjectProxy];
  [(CPTemplateServiceClientInterface *)interfaceControllerRemoteObjectProxy updateInterestingLayoutGuideWithInsets:insets.top, insets.left, insets.bottom, insets.right];
  MEMORY[0x277D82BD8](interfaceControllerRemoteObjectProxy);
}

- (void)hostSetShortcutButtons:(id)buttons completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __57__CPSTemplateInstance_hostSetShortcutButtons_completion___block_invoke;
  v12 = &unk_278D91DC0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

uint64_t __57__CPSTemplateInstance_hostSetShortcutButtons_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) dashboardGuidanceViewController];
  [v3 setShortCutButtons:*(a1 + 40)];
  v1 = MEMORY[0x277D82BD8](v3);
  return (*(*(a1 + 48) + 16))(v1);
}

- (id)instrumentClusterViewControllerForDisplayIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  if (!selfCopy->_instrumentClusterViewControllerMapTable)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    instrumentClusterViewControllerMapTable = selfCopy->_instrumentClusterViewControllerMapTable;
    selfCopy->_instrumentClusterViewControllerMapTable = strongToWeakObjectsMapTable;
    MEMORY[0x277D82BD8](instrumentClusterViewControllerMapTable);
  }

  instrumentClusterViewControllerMapTable = [(CPSTemplateInstance *)selfCopy instrumentClusterViewControllerMapTable];
  v13 = [(NSMapTable *)instrumentClusterViewControllerMapTable objectForKey:location[0]];
  MEMORY[0x277D82BD8](instrumentClusterViewControllerMapTable);
  if (!v13)
  {
    v13 = objc_alloc_init(CPSInstrumentClusterViewController);
    clusterInactiveVariants = [(CPSTemplateInstance *)selfCopy clusterInactiveVariants];
    [(CPSInstrumentClusterViewController *)v13 setInactiveVariants:?];
    *&v5 = MEMORY[0x277D82BD8](clusterInactiveVariants).n128_u64[0];
    clusterAttributedInactiveVariants = [(CPSTemplateInstance *)selfCopy clusterAttributedInactiveVariants];
    [(CPSInstrumentClusterViewController *)v13 setAttributedInactiveVariants:?];
    *&v6 = MEMORY[0x277D82BD8](clusterAttributedInactiveVariants).n128_u64[0];
    instrumentClusterViewControllerMapTable2 = [(CPSTemplateInstance *)selfCopy instrumentClusterViewControllerMapTable];
    [(NSMapTable *)instrumentClusterViewControllerMapTable2 setObject:v13 forKey:location[0]];
    MEMORY[0x277D82BD8](instrumentClusterViewControllerMapTable2);
  }

  v8 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (void)setCurrentLaneGuidance:(id)guidance
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, guidance);
  navigationManager = [(CPSTemplateInstance *)selfCopy navigationManager];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __46__CPSTemplateInstance_setCurrentLaneGuidance___block_invoke;
  v8 = &unk_278D91F10;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [(CPNavigationManager *)navigationManager modifyRouteGuidance:?];
  MEMORY[0x277D82BD8](navigationManager);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __46__CPSTemplateInstance_setCurrentLaneGuidance___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setCurrentLaneGuidance:a1[4]];
  [location[0] setLaneGuidanceShowing:a1[4] != 0];
  objc_storeStrong(location, 0);
}

- (void)startRerouting
{
  navigationManager = [(CPSTemplateInstance *)self navigationManager];
  [(CPNavigationManager *)navigationManager startRerouting];
  MEMORY[0x277D82BD8](navigationManager);
}

- (void)routeChangedWithReason:(unsigned __int8)reason routeInfo:(id)info
{
  selfCopy = self;
  v7 = a2;
  reasonCopy = reason;
  location = 0;
  objc_storeStrong(&location, info);
  navigationManager = [(CPSTemplateInstance *)selfCopy navigationManager];
  [(CPNavigationManager *)navigationManager routeChangedWithReason:reasonCopy routeInfo:location];
  MEMORY[0x277D82BD8](navigationManager);
  objc_storeStrong(&location, 0);
}

- (void)finishTrip
{
  navigationManager = [(CPSTemplateInstance *)self navigationManager];
  [(CPNavigationManager *)navigationManager resetRouteGuidance];
  navigationManager2 = [(CPSTemplateInstance *)self navigationManager];
  [(CPNavigationManager *)navigationManager2 releaseNavigationOwnership];
  MEMORY[0x277D82BD8](navigationManager2);
}

- (void)setCurrentRoadNameVariants:(id)variants
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, variants);
  navigationManager = [(CPSTemplateInstance *)selfCopy navigationManager];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __50__CPSTemplateInstance_setCurrentRoadNameVariants___block_invoke;
  v8 = &unk_278D91F10;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [(CPNavigationManager *)navigationManager modifyRouteGuidance:?];
  MEMORY[0x277D82BD8](navigationManager);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __50__CPSTemplateInstance_setCurrentRoadNameVariants___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setCurrentRoadNameVariants:a1[4]];
  objc_storeStrong(location, 0);
}

- (void)setManeuverState:(int64_t)state
{
  selfCopy = self;
  v11 = a2;
  stateCopy = state;
  navigationManager = [(CPSTemplateInstance *)self navigationManager];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __40__CPSTemplateInstance_setManeuverState___block_invoke;
  v8 = &__block_descriptor_40_e25_v16__0__CPRouteGuidance_8l;
  v9 = stateCopy;
  [(CPNavigationManager *)navigationManager modifyRouteGuidance:?];
  MEMORY[0x277D82BD8](navigationManager);
}

void __40__CPSTemplateInstance_setManeuverState___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setManeuverState:a1[4]];
  objc_storeStrong(location, 0);
}

- (void)pauseTripForReason:(unint64_t)reason
{
  selfCopy = self;
  v11 = a2;
  reasonCopy = reason;
  navigationManager = [(CPSTemplateInstance *)self navigationManager];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __42__CPSTemplateInstance_pauseTripForReason___block_invoke;
  v8 = &__block_descriptor_40_e25_v16__0__CPRouteGuidance_8l;
  v9 = reasonCopy;
  [(CPNavigationManager *)navigationManager modifyRouteGuidance:?];
  MEMORY[0x277D82BD8](navigationManager);
}

void __42__CPSTemplateInstance_pauseTripForReason___block_invoke(uint64_t *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = CPGuidanceStateFromCPTripPauseReason(a1[4]);
  [location[0] setGuidanceState:v2];
  objc_storeStrong(location, 0);
}

- (void)setSendsNavigationMetadata:(BOOL)metadata
{
  navigationManager = [(CPSTemplateInstance *)self navigationManager];
  [(CPNavigationManager *)navigationManager setSupportsAccNav:metadata];
  navigationManager2 = [(CPSTemplateInstance *)self navigationManager];
  [(CPNavigationManager *)navigationManager2 modifyRouteGuidance:?];
  MEMORY[0x277D82BD8](navigationManager2);
}

void __50__CPSTemplateInstance_setSendsNavigationMetadata___block_invoke(_BYTE *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setSourceSupportsRouteGuidance:a1[32] & 1];
  objc_storeStrong(location, 0);
}

- (void)setDestinationTimeZoneOffsetMinutes:(signed __int16)minutes
{
  minutesCopy = minutes;
  navigationManager = [(CPSTemplateInstance *)self navigationManager];
  [(CPNavigationManager *)navigationManager setDestinationTimeZoneOffsetMinutes:minutesCopy];
  MEMORY[0x277D82BD8](navigationManager);
}

- (void)setDestinationNameVariants:(id)variants
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, variants);
  navigationManager = [(CPSTemplateInstance *)selfCopy navigationManager];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __50__CPSTemplateInstance_setDestinationNameVariants___block_invoke;
  v8 = &unk_278D91F10;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [(CPNavigationManager *)navigationManager modifyRouteGuidance:?];
  MEMORY[0x277D82BD8](navigationManager);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __50__CPSTemplateInstance_setDestinationNameVariants___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setDestinationNameVariants:a1[4]];
  objc_storeStrong(location, 0);
}

- (void)updateTripTravelEstimates:(id)estimates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  navigationManager = [(CPSTemplateInstance *)selfCopy navigationManager];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __49__CPSTemplateInstance_updateTripTravelEstimates___block_invoke;
  v8 = &unk_278D91F10;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [(CPNavigationManager *)navigationManager modifyRouteGuidance:?];
  MEMORY[0x277D82BD8](navigationManager);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __49__CPSTemplateInstance_updateTripTravelEstimates___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [a1[4] distanceRemaining];
  [location[0] setDistanceRemaining:?];
  v3 = [a1[4] distanceRemainingToDisplay];
  [location[0] setDistanceRemainingDisplay:?];
  [a1[4] timeRemaining];
  [location[0] setTimeRemaining:?];
  v5 = MEMORY[0x277CBEAA8];
  [a1[4] timeRemaining];
  v6 = [v5 dateWithTimeIntervalSinceNow:?];
  [location[0] setEstimatedTimeOfArrival:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
}

- (void)updateTravelEstimates:(id)estimates forManeuver:(id)maneuver
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  v13 = 0;
  objc_storeStrong(&v13, maneuver);
  navigationManager = [(CPSTemplateInstance *)selfCopy navigationManager];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __57__CPSTemplateInstance_updateTravelEstimates_forManeuver___block_invoke;
  v10 = &unk_278D91F78;
  v11 = MEMORY[0x277D82BE0](v13);
  v12 = MEMORY[0x277D82BE0](location[0]);
  [(CPNavigationManager *)navigationManager modifyRouteGuidance:?];
  MEMORY[0x277D82BD8](navigationManager);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __57__CPSTemplateInstance_updateTravelEstimates_forManeuver___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = [location[0] currentManeuverIndexes];
  v6 = [v7 firstObject];
  v9 = [v6 unsignedIntValue];
  v8 = [a1[4] index];
  MEMORY[0x277D82BD8](v6);
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v9 == v8)
  {
    v3 = [a1[5] distanceRemaining];
    [location[0] setDistanceRemainingToNextManeuver:?];
    v4 = [a1[5] distanceRemainingToDisplay];
    [location[0] setDistanceRemainingToNextManeuverDisplay:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)cancelTrip
{
  navigationManager = [(CPSTemplateInstance *)self navigationManager];
  [(CPNavigationManager *)navigationManager resetRouteGuidance];
  navigationManager2 = [(CPSTemplateInstance *)self navigationManager];
  [(CPNavigationManager *)navigationManager2 releaseNavigationOwnership];
  MEMORY[0x277D82BD8](navigationManager2);
}

- (void)addManeuvers:(id)maneuvers
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuvers);
  navigationManager = [(CPSTemplateInstance *)selfCopy navigationManager];
  [(CPNavigationManager *)navigationManager addManeuvers:location[0]];
  MEMORY[0x277D82BD8](navigationManager);
  objc_storeStrong(location, 0);
}

- (void)addLaneGuidances:(id)guidances
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, guidances);
  navigationManager = [(CPSTemplateInstance *)selfCopy navigationManager];
  [(CPNavigationManager *)navigationManager addLaneGuidances:location[0]];
  MEMORY[0x277D82BD8](navigationManager);
  objc_storeStrong(location, 0);
}

- (void)setActiveManeuvers:(id)maneuvers
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuvers);
  navigationManager = [(CPSTemplateInstance *)selfCopy navigationManager];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __42__CPSTemplateInstance_setActiveManeuvers___block_invoke;
  v8 = &unk_278D91F10;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [(CPNavigationManager *)navigationManager modifyRouteGuidance:?];
  MEMORY[0x277D82BD8](navigationManager);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __42__CPSTemplateInstance_setActiveManeuvers___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setGuidanceState:1];
  [location[0] setCurrentManeuvers:a1[4]];
  objc_storeStrong(location, 0);
}

- (void)navigationOwnershipChangedToOwner:(unint64_t)owner
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v13 = a2;
  ownerCopy = owner;
  v11 = CarPlaySupportGeneralLogging();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    log = v11;
    type = v10;
    navigator = [(CPSTemplateInstance *)selfCopy navigator];
    v7 = NSStringFromNavigationOwner(ownerCopy);
    v9 = MEMORY[0x277D82BE0](v7);
    __os_log_helper_16_2_3_8_64_8_64_8_64(v15, selfCopy, navigator, v9);
    _os_log_impl(&dword_242FE8000, log, type, "%@: Informing %@ navigation ownership changed to %@", v15, 0x20u);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](navigator);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v11, 0);
  navigator2 = [(CPSTemplateInstance *)selfCopy navigator];
  [(CPSNavigator *)navigator2 navigationOwnershipChangedToOwner:ownerCopy];
  *&v3 = MEMORY[0x277D82BD8](navigator2).n128_u64[0];
  if (ownerCopy != 1)
  {
    [(CPSTemplateInstance *)selfCopy cancelTrip];
  }
}

- (void)didCreateNavigator:(id)navigator
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, navigator);
  v26 = CarPlaySupportGeneralLogging();
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v29, selfCopy, location[0]);
    _os_log_impl(&dword_242FE8000, v26, v25, "%@: did create navigator %@", v29, 0x16u);
  }

  objc_storeStrong(&v26, 0);
  [(CPSTemplateInstance *)selfCopy setNavigator:location[0]];
  trip = [location[0] trip];
  sendsNavigationMetadata = [trip sendsNavigationMetadata];
  navigationManager = [(CPSTemplateInstance *)selfCopy navigationManager];
  [(CPNavigationManager *)navigationManager setSupportsAccNav:sendsNavigationMetadata];
  MEMORY[0x277D82BD8](navigationManager);
  *&v3 = MEMORY[0x277D82BD8](trip).n128_u64[0];
  if (selfCopy->_dashboardGuidanceViewController)
  {
    [location[0] addDisplayDelegate:{selfCopy->_dashboardGuidanceViewController, v3}];
    [location[0] addDisplayDelegate:selfCopy->_dashboardEstimatesViewController];
  }

  if (selfCopy->_instrumentClusterCardViewController)
  {
    [location[0] addDisplayDelegate:{selfCopy->_instrumentClusterCardViewController, v3}];
  }

  if (selfCopy->_instrumentClusterMapETAViewController)
  {
    [location[0] addDisplayDelegate:{selfCopy->_instrumentClusterMapETAViewController, v3}];
  }

  templateEnvironment = [(CPSTemplateInstance *)selfCopy templateEnvironment];
  supportsInstrumentCluster = [(CPSTemplateEnvironment *)templateEnvironment supportsInstrumentCluster];
  *&v4 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  if (supportsInstrumentCluster)
  {
    [location[0] setAppSupportsInstrumentCluster:{1, v4}];
  }

  navigationManager2 = [(CPSTemplateInstance *)selfCopy navigationManager];
  [(CPNavigationManager *)navigationManager2 requestNavigationOwnership];
  *&v5 = MEMORY[0x277D82BD8](navigationManager2).n128_u64[0];
  [location[0] setMetadataDelegate:{selfCopy, v5}];
  trip2 = [location[0] trip];
  destinationTimeZoneOffsetFromGMT = [trip2 destinationTimeZoneOffsetFromGMT];
  metadataDelegate = [location[0] metadataDelegate];
  [metadataDelegate setDestinationTimeZoneOffsetMinutes:destinationTimeZoneOffsetFromGMT];
  MEMORY[0x277D82BD8](metadataDelegate);
  *&v6 = MEMORY[0x277D82BD8](trip2).n128_u64[0];
  instrumentClusterViewControllerMapTable = [(CPSTemplateInstance *)selfCopy instrumentClusterViewControllerMapTable];
  objectEnumerator = [(NSMapTable *)instrumentClusterViewControllerMapTable objectEnumerator];
  allObjects = [(NSEnumerator *)objectEnumerator allObjects];
  v19 = MEMORY[0x277D85DD0];
  v20 = -1073741824;
  v21 = 0;
  v22 = __42__CPSTemplateInstance_didCreateNavigator___block_invoke;
  v23 = &unk_278D91FA0;
  v24 = MEMORY[0x277D82BE0](location[0]);
  [(NSArray *)allObjects enumerateObjectsUsingBlock:&v19];
  MEMORY[0x277D82BD8](allObjects);
  MEMORY[0x277D82BD8](objectEnumerator);
  MEMORY[0x277D82BD8](instrumentClusterViewControllerMapTable);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

void __42__CPSTemplateInstance_didCreateNavigator___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] addDisplayDelegate:location[0]];
  objc_storeStrong(location, 0);
}

- (void)willInvalidateNavigator:(id)navigator
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, navigator);
  navigationManager = [(CPSTemplateInstance *)selfCopy navigationManager];
  [(CPNavigationManager *)navigationManager releaseNavigationOwnership];
  MEMORY[0x277D82BD8](navigationManager);
  objc_storeStrong(location, 0);
}

- (void)setWindowSceneForMapWidgetScene:(id)scene
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scene);
  objc_storeWeak(&selfCopy->_windowSceneForMapWidgetScene, location[0]);
  applicationStateMonitor = [(CPSTemplateInstance *)selfCopy applicationStateMonitor];
  [(CPSApplicationStateMonitor *)applicationStateMonitor setWindowSceneForMapWidgetScene:location[0]];
  MEMORY[0x277D82BD8](applicationStateMonitor);
  objc_storeStrong(location, 0);
}

- (void)setWindowSceneForGuidanceWidgetScene:(id)scene
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scene);
  objc_storeWeak(&selfCopy->_windowSceneForGuidanceWidgetScene, location[0]);
  applicationStateMonitor = [(CPSTemplateInstance *)selfCopy applicationStateMonitor];
  [(CPSApplicationStateMonitor *)applicationStateMonitor setWindowSceneForGuidanceWidgetScene:location[0]];
  MEMORY[0x277D82BD8](applicationStateMonitor);
  objc_storeStrong(location, 0);
}

- (void)setWindowSceneForTemplateApplicationScene:(id)scene
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scene);
  objc_storeWeak(&selfCopy->_windowSceneForTemplateApplicationScene, location[0]);
  applicationStateMonitor = [(CPSTemplateInstance *)selfCopy applicationStateMonitor];
  [(CPSApplicationStateMonitor *)applicationStateMonitor setWindowSceneForTemplateApplicationScene:location[0]];
  MEMORY[0x277D82BD8](applicationStateMonitor);
  objc_storeStrong(location, 0);
}

- (void)hostConnectToClient
{
  location[2] = self;
  location[1] = a2;
  location[0] = CarPlaySupportGeneralLogging();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_impl(&dword_242FE8000, log, type, "Cluster connection established", v4, 2u);
  }

  objc_storeStrong(location, 0);
}

- (void)hostSetInactiveVariants:(id)variants
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, variants);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __47__CPSTemplateInstance_hostSetInactiveVariants___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __47__CPSTemplateInstance_hostSetInactiveVariants___block_invoke(uint64_t a1)
{
  v10[2] = a1;
  v10[1] = a1;
  [*(a1 + 32) setClusterInactiveVariants:*(a1 + 40)];
  v4 = [*(a1 + 32) instrumentClusterViewControllerMapTable];
  v3 = [v4 objectEnumerator];
  v2 = [v3 allObjects];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __47__CPSTemplateInstance_hostSetInactiveVariants___block_invoke_2;
  v9 = &unk_278D91FA0;
  v10[0] = MEMORY[0x277D82BE0](*(a1 + 40));
  [v2 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(v10, 0);
}

void __47__CPSTemplateInstance_hostSetInactiveVariants___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setInactiveVariants:a1[4]];
  objc_storeStrong(location, 0);
}

- (void)hostSetAttributedInactiveVariants:(id)variants
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, variants);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __57__CPSTemplateInstance_hostSetAttributedInactiveVariants___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __57__CPSTemplateInstance_hostSetAttributedInactiveVariants___block_invoke(uint64_t a1)
{
  v10[2] = a1;
  v10[1] = a1;
  [*(a1 + 32) setClusterAttributedInactiveVariants:*(a1 + 40)];
  v4 = [*(a1 + 32) instrumentClusterViewControllerMapTable];
  v3 = [v4 objectEnumerator];
  v2 = [v3 allObjects];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __57__CPSTemplateInstance_hostSetAttributedInactiveVariants___block_invoke_2;
  v9 = &unk_278D91FA0;
  v10[0] = MEMORY[0x277D82BE0](*(a1 + 40));
  [v2 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(v10, 0);
}

void __57__CPSTemplateInstance_hostSetAttributedInactiveVariants___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setAttributedInactiveVariants:a1[4]];
  objc_storeStrong(location, 0);
}

- (id)visibilityEnvironmentIdentifier
{
  scene = [(CPSTemplateInstance *)self scene];
  *&v2 = MEMORY[0x277D82BD8](scene).n128_u64[0];
  if (scene)
  {
    scene2 = [(CPSTemplateInstance *)self scene];
    identityToken = [(FBScene *)scene2 identityToken];
    v8 = _UIVisibilityEnvironmentForSceneIdentityToken();
    MEMORY[0x277D82BD8](identityToken);
    MEMORY[0x277D82BD8](scene2);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CPSTemplateInstanceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (FBScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (UIWindowScene)windowSceneForTemplateApplicationScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowSceneForTemplateApplicationScene);

  return WeakRetained;
}

- (UIWindowScene)windowSceneForMapWidgetScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowSceneForMapWidgetScene);

  return WeakRetained;
}

- (UIWindowScene)windowSceneForGuidanceWidgetScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowSceneForGuidanceWidgetScene);

  return WeakRetained;
}

- (UIWindowScene)windowSceneForInstrumentClusterMapWidgetScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowSceneForInstrumentClusterMapWidgetScene);

  return WeakRetained;
}

- (FBScene)mapWidgetScene
{
  WeakRetained = objc_loadWeakRetained(&self->_mapWidgetScene);

  return WeakRetained;
}

- (FBScene)instrumentClusterScene
{
  WeakRetained = objc_loadWeakRetained(&self->_instrumentClusterScene);

  return WeakRetained;
}

- (CPSClusterTemplateSetupDelegate)clusterSetupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_clusterSetupDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)currentSafeAreaInsets
{
  left = self->_currentSafeAreaInsets.left;
  top = self->_currentSafeAreaInsets.top;
  right = self->_currentSafeAreaInsets.right;
  bottom = self->_currentSafeAreaInsets.bottom;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CPSNavigator)navigator
{
  WeakRetained = objc_loadWeakRetained(&self->_navigator);

  return WeakRetained;
}

@end