@interface SUUIApplicationController
+ (SUUIConfigurationPreloader)configurationPreloader;
+ (id)_referrerAppForSourceApplication:(id)application launchURL:(id *)l;
+ (id)applicationOptionsWithLaunchOptions:(id)options;
+ (void)configurationPreloader;
+ (void)finishedWithConfigurationPreloader;
+ (void)prepareForLaunch;
- (BOOL)URLResolver:(id)resolver shouldPerformDefaultActionForURL:(id)l;
- (BOOL)_isDisplayingAccountViewController;
- (BOOL)_isStoreFront:(id)front equalToStoreFront:(id)storeFront;
- (BOOL)_playPreviewForPreviewTemplate:(id)template;
- (BOOL)_shouldUseLegacyURLHandlingForExternalURL:(id)l;
- (BOOL)_usesFloatingStatusOverlayForWidth:(double)width;
- (BOOL)tabBarController:(id)controller shouldFallbackToRootForController:(id)forController;
- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController;
- (CGSize)sizeForNavigationDocument:(id)document;
- (SUUIApplicationController)init;
- (SUUIApplicationController)initWithClientContextClass:(Class)class options:(id)options;
- (SUUIApplicationController)initWithClientContextClass:(Class)class tabBarControllerStyle:(int64_t)style;
- (SUUIApplicationDelegate)delegate;
- (SUUIClientContext)clientContext;
- (SUUINavigationDocumentController)_transientNavigationController;
- (UIViewController)rootViewController;
- (id)_activeNavigationController;
- (id)_documentControllerForNavigationController:(id)controller;
- (id)_existingTabBarController;
- (id)_launchOptionsWithURL:(id)l;
- (id)_navigationContainerViewController;
- (id)_newNavigationControllerWithTabBarItem:(id)item;
- (id)_operationQueue;
- (id)_overlayNavigationControllerForViewController:(id)controller;
- (id)_rootDocuments;
- (id)_statusOverlayProviderForViewController:(id)controller;
- (id)_tabBarController;
- (id)_transientNavigationDocument;
- (id)activeDocument;
- (id)deviceConfigForContext:(id)context;
- (id)jsNavigationDocumentForNavigationController:(id)controller inContext:(id)context;
- (id)jsNavigationDocumentForNavigationDocumentController:(id)controller inContext:(id)context;
- (id)localStorage;
- (id)navigationControllerForContext:(id)context;
- (id)presentationViewControllerForAppContext:(id)context;
- (id)selectTabWithIdentifier:(id)identifier;
- (id)vendorIdentifier;
- (id)vendorStorage;
- (int64_t)_applicationMode;
- (int64_t)_selectedTabBarIndex;
- (int64_t)modalDocumentController:(id)controller barStyleForStackItem:(id)item;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations;
- (unint64_t)tabBarControllerSupportedInterfaceOrientations:(id)orientations;
- (void)URLResolver:(id)resolver didFinishWithResult:(BOOL)result;
- (void)URLResolver:(id)resolver showURL:(id)l withTabIdentifier:(id)identifier;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_attemptAMSURLHandlingIfPossibleForExternalURL:(id)l fallback:(id)fallback;
- (void)_dispatchTabBarOnNeedsContentForTabAtIndex:(unint64_t)index;
- (void)_ensureStackConsistencyForNavigationController:(id)controller;
- (void)_failReloadWithError:(id)error;
- (void)_failWithError:(id)error;
- (void)_finishWillResignActiveWithDialogState:(BOOL)state;
- (void)_fireBlocksAfterLoad;
- (void)_handleScriptUnavailable;
- (void)_invalidateApplication;
- (void)_jsLaunchFinishedWithLaunchMetrics:(id)metrics;
- (void)_legacyResolveExternalURL:(id)l;
- (void)_loadApplicationScript;
- (void)_previewDocumentIsActiveChangeNotification:(id)notification;
- (void)_recordTabBarMetricsEventToSelectViewController:(id)controller;
- (void)_reloadAfterNetworkChange:(id)change;
- (void)_reloadApplication;
- (void)_reloadRootViewControllers;
- (void)_reloadTabBarWithClientContext:(id)context;
- (void)_removeObserversForReloadNotifications;
- (void)_removeStatusOverlayFromAllNavigationControllers;
- (void)_resetDocumentControllers;
- (void)_resetUserInterfaceAfterStoreFrontChange;
- (void)_retryAfterFailure;
- (void)_sendClientContextDidChange;
- (void)_sendDidDisplayFirstPageIfNecessary;
- (void)_setClientContextWithDictionary:(id)dictionary;
- (void)_setSelectedTabBarIndex:(int64_t)index;
- (void)_showFloatingStatusOverlayAnimated:(BOOL)animated;
- (void)_showStatusOverlayForNavigationController:(id)controller viewController:(id)viewController animated:(BOOL)animated;
- (void)_startScriptContextWithURL:(id)l;
- (void)_stopApplication;
- (void)_stopScriptContextForReload;
- (void)_storeFrontChangeNotification:(id)notification;
- (void)_tintTabBarWithViewController:(id)controller;
- (void)_updateOverlayNavigationController:(id)controller;
- (void)appContext:(id)context didCompletePurchase:(id)purchase;
- (void)appContext:(id)context didCompleteSoftwarePurchase:(id)purchase;
- (void)appContext:(id)context didExitWithOptions:(id)options;
- (void)appContext:(id)context didFailWithError:(id)error;
- (void)appContext:(id)context didStartWithOptions:(id)options;
- (void)appContext:(id)context didStopWithOptions:(id)options;
- (void)appContext:(id)context evaluateAppJavaScriptInContext:(id)inContext;
- (void)appContext:(id)context needsReloadWithUrgency:(unint64_t)urgency options:(id)options;
- (void)appContext:(id)context setPreviewOverlayDocument:(id)document withOptions:(id)options;
- (void)appContextNeedsRestart:(id)restart;
- (void)application:(id)application didReceiveURL:(id)l;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationWillResignActive:(id)active;
- (void)dealloc;
- (void)evaluateBlockWhenLoaded:(id)loaded;
- (void)getModalSourceViewForElementIdentifier:(id)identifier completionBlock:(id)block;
- (void)hideStatusOverlayForProvider:(id)provider animated:(BOOL)animated;
- (void)loadApplicationWithOptions:(id)options;
- (void)modalDocumentControllerDidFinish:(id)finish;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationDocumentController:(id)controller requestsAccessToAppContextUsingBlock:(id)block;
- (void)navigationDocumentStackDidChange:(id)change;
- (void)recordMetricsEvent:(id)event flushImmediately:(BOOL)immediately;
- (void)resumeApplicationWithOptions:(id)options;
- (void)setClientContext:(id)context;
- (void)setMescalPrimeEnabledForXHRRequests:(BOOL)requests;
- (void)setTabBarItems:(id)items;
- (void)setUserInterfaceOverrideOnTabBarController:(id)controller forViewController:(id)viewController;
- (void)showErrorViewForLaunchFailure;
- (void)showErrorViewWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle buttonAction:(id)action;
- (void)showExternalURL:(id)l;
- (void)showStatusOverlayUsingProvider:(id)provider animated:(BOOL)animated;
- (void)showTransientViewController:(id)controller;
- (void)tabBarController:(id)controller didEndCustomizingViewControllers:(id)controllers changed:(BOOL)changed;
- (void)tabBarController:(id)controller didReselectViewController:(id)viewController;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
- (void)tabBarController:(id)controller willDisplayViewController:(id)viewController;
- (void)tabBarController:(id)controller willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)updateTabBarWithItems:(id)items animated:(BOOL)animated completion:(id)completion;
@end

@implementation SUUIApplicationController

+ (void)prepareForLaunch
{
  v3 = objc_autoreleasePoolPush();
  +[SUUIMetricsAppLaunchEvent createPendingLaunchEvent];
  [SUUIMetricsAppLaunchEvent withPendingLaunchEvent:&__block_literal_global_60];
  configurationPreloader = [self configurationPreloader];
  [configurationPreloader preloadConfigurationForPurpose:0 withCompletionBlock:&__block_literal_global_41];

  objc_autoreleasePoolPop(v3);
}

void __45__SUUIApplicationController_prepareForLaunch__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 date];
  [v4 timeIntervalSince1970];
  [v3 setMainTime:?];
}

+ (SUUIConfigurationPreloader)configurationPreloader
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    +[SUUIApplicationController configurationPreloader];
  }

  v2 = _SUUIApplicationControllerConfigurationPreloader;
  if (!_SUUIApplicationControllerConfigurationPreloader)
  {
    v3 = objc_alloc_init(SUUIConfigurationPreloader);
    v4 = _SUUIApplicationControllerConfigurationPreloader;
    _SUUIApplicationControllerConfigurationPreloader = v3;

    v2 = _SUUIApplicationControllerConfigurationPreloader;
  }

  return v2;
}

void __45__SUUIApplicationController_prepareForLaunch__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (!v4)
  {
    v6 = [MEMORY[0x277D69B38] sharedConfig];
    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (v10)
    {
      v13 = 138412290;
      v14 = v5;
      LODWORD(v12) = 12;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_14:

        goto LABEL_15;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, &v13, v12}];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  if ([v4 count])
  {
    [SUUIMetricsAppLaunchEvent withPendingLaunchEvent:&__block_literal_global_49];
  }

LABEL_15:
}

- (UIViewController)rootViewController
{
  if (self->_hidesTabBar)
  {
    [(SUUIApplicationController *)self _navigationContainerViewController];
  }

  else
  {
    [(SUUIApplicationController *)self _tabBarController];
  }
  v2 = ;

  return v2;
}

- (id)_tabBarController
{
  tabBarControllerStyle = [(SUUIApplicationControllerOptions *)self->_options tabBarControllerStyle];
  if (tabBarControllerStyle == 1)
  {
    scrollingTabBarController = self->_scrollingTabBarController;
    if (!scrollingTabBarController)
    {
      p_scrollingTabBarController = &self->_scrollingTabBarController;
      _scrollingTabBarControllerClass = [(SUUIApplicationController *)self _scrollingTabBarControllerClass];
      goto LABEL_7;
    }

LABEL_8:
    v9 = scrollingTabBarController;
    goto LABEL_10;
  }

  if (!tabBarControllerStyle)
  {
    p_scrollingTabBarController = &self->_tabBarController;
    scrollingTabBarController = self->_tabBarController;
    if (!scrollingTabBarController)
    {
      _scrollingTabBarControllerClass = [(SUUIApplicationController *)self _tabBarControllerClass];
LABEL_7:
      v7 = objc_alloc_init(_scrollingTabBarControllerClass);
      v8 = *p_scrollingTabBarController;
      *p_scrollingTabBarController = v7;

      [*p_scrollingTabBarController setDelegate:self];
      scrollingTabBarController = *p_scrollingTabBarController;
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (SUUIClientContext)clientContext
{
  clientContext = self->_clientContext;
  if (!clientContext)
  {
    defaultContext = [(objc_class *)self->_clientContextClass defaultContext];
    [(SUUIApplicationController *)self setClientContext:defaultContext];

    clientContext = self->_clientContext;
  }

  return clientContext;
}

- (void)_reloadRootViewControllers
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_ReloadRootView.isa, v4, self->_clientContext);

  v48 = [(NSMutableArray *)self->_navigationDocumentControllers copy];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  navigationDocumentControllers = self->_navigationDocumentControllers;
  self->_navigationDocumentControllers = v5;

  clientContext = [(SUUIApplicationController *)self clientContext];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = self->_tabBarItems;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v57;
    v12 = &selRef_scrollViewShouldScrollToTop_;
    do
    {
      v13 = 0;
      v49 = v10;
      do
      {
        if (*v57 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v56 + 1) + 8 * v13);
        customRootViewController = [v14 customRootViewController];

        if (customRootViewController)
        {
          customRootViewController2 = [v14 customRootViewController];
          if ([customRootViewController2 conformsToProtocol:v12[379]])
          {
            appNavigationController = [customRootViewController2 appNavigationController];
            [appNavigationController setClientContext:clientContext];
            [appNavigationController setDelegate:self];
            v18 = self->_navigationDocumentControllers;
          }

          else
          {
            v21 = v11;
            v22 = v12;
            v23 = v8;
            v24 = clientContext;
            v25 = self->_navigationDocumentControllers;
            appNavigationController = [MEMORY[0x277CBEB68] null];
            v18 = v25;
            clientContext = v24;
            v8 = v23;
            v12 = v22;
            v11 = v21;
            v10 = v49;
          }

          [(NSMutableArray *)v18 addObject:appNavigationController];

          customRootViewController3 = [v14 customRootViewController];
          v20 = customRootViewController3;
        }

        else
        {
          customRootViewController3 = [(SUUIApplicationController *)self _newNavigationControllerWithTabBarItem:v14];
          v20 = [[SUUINavigationDocumentController alloc] initWithNavigationController:customRootViewController3];
          [(SUUINavigationDocumentController *)v20 setClientContext:clientContext];
          [(SUUINavigationDocumentController *)v20 setDelegate:self];
          [(NSMutableArray *)self->_navigationDocumentControllers addObject:v20];
          [(SUUIApplicationController *)self _ensureStackConsistencyForNavigationController:customRootViewController3];
          customRootViewController2 = customRootViewController3;
        }

        [v8 addObject:customRootViewController3];

        ++v13;
      }

      while (v10 != v13);
      v10 = [(NSArray *)obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v10);
  }

  if (self->_hidesTabBar)
  {
    _navigationContainerViewController = [(SUUIApplicationController *)self _navigationContainerViewController];
    firstObject = [v8 firstObject];
    [_navigationContainerViewController setContentViewController:firstObject];

    _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
    [_existingTabBarController setViewControllers:0 animated:0];
    v29 = v48;
  }

  else
  {
    _existingTabBarController = [(SUUIApplicationController *)self _tabBarController];
    [(SUUISimpleContainerViewController *)self->_navigationContainerViewController setContentViewController:0];
    [_existingTabBarController setViewControllers:v8 animated:0];
    v30 = SUUITabBarControllerGetMoreNavigationController(_existingTabBarController);
    [v30 setDelegate:self];
    v31 = [(NSDictionary *)self->_launchOptions objectForKey:@"url"];
    v29 = v48;
    if (v31)
    {
      v32 = [SUUIURL alloc];
      v33 = [MEMORY[0x277CBEBC0] URLWithString:v31];
      v34 = [(SUUIURL *)v32 initWithURL:v33];

      v35 = [SUUIURLResolver tabIdentifierForURL:v34];
      v36 = v35;
      if (v35)
      {
        v37 = clientContext;
        tabBarItems = self->_tabBarItems;
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __55__SUUIApplicationController__reloadRootViewControllers__block_invoke;
        v54[3] = &unk_2798FD688;
        v55 = v35;
        v39 = [(NSArray *)tabBarItems indexOfObjectPassingTest:v54];
        if (v39 < [v8 count])
        {
          v40 = [v8 objectAtIndex:v39];
          [_existingTabBarController setSelectedViewController:v40];
        }

        clientContext = v37;
      }
    }

    selectedViewController = [_existingTabBarController selectedViewController];
    [(SUUIApplicationController *)self _tintTabBarWithViewController:selectedViewController];
  }

  modalDocumentController = self->_modalDocumentController;
  rootViewController = [(SUUIApplicationController *)self rootViewController];
  [(SUUIModalDocumentController *)modalDocumentController setRootViewController:rootViewController];

  tabBarController = [(SUUIApplicationController *)self tabBarController];
  selectedViewController2 = [tabBarController selectedViewController];
  [(SUUIApplicationController *)self _updateOverlayNavigationController:selectedViewController2];

  scriptContext = self->_scriptContext;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __55__SUUIApplicationController__reloadRootViewControllers__block_invoke_3;
  v51[3] = &unk_2798FBB00;
  v52 = v29;
  selfCopy = self;
  v47 = v29;
  [(IKAppContext *)scriptContext evaluate:&__block_literal_global_375 completionBlock:v51];
}

- (id)_existingTabBarController
{
  tabBarControllerStyle = [(SUUIApplicationControllerOptions *)self->_options tabBarControllerStyle];
  if (!tabBarControllerStyle)
  {
    v4 = 248;
    goto LABEL_5;
  }

  if (tabBarControllerStyle == 1)
  {
    v4 = 304;
LABEL_5:
    v5 = *(&self->super.isa + v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (void)finishedWithConfigurationPreloader
{
  OUTLINED_FUNCTION_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __45__SUUIApplicationController_prepareForLaunch__block_invoke_47(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 date];
  [v4 timeIntervalSince1970];
  [v3 setClientConfigurationLoadTime:?];
}

- (SUUIApplicationController)init
{
  v3 = objc_opt_class();

  return [(SUUIApplicationController *)self initWithClientContextClass:v3];
}

- (SUUIApplicationController)initWithClientContextClass:(Class)class tabBarControllerStyle:(int64_t)style
{
  v7 = objc_alloc_init(SUUIMutableApplicationControllerOptions);
  [(SUUIMutableApplicationControllerOptions *)v7 setTabBarControllerStyle:style];
  v8 = [(SUUIApplicationController *)self initWithClientContextClass:class options:v7];

  return v8;
}

- (SUUIApplicationController)initWithClientContextClass:(Class)class options:(id)options
{
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = SUUIApplicationController;
  v7 = [(SUUIApplicationController *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v7->_clientContextClass = class;
    v9 = [optionsCopy copy];
    options = v8->_options;
    v8->_options = v9;

    if (!v8->_options)
    {
      v11 = objc_alloc_init(SUUIApplicationControllerOptions);
      v12 = v8->_options;
      v8->_options = v11;
    }

    v8->_indexOfLastTabNeedingContent = 0x7FFFFFFFFFFFFFFFLL;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__pageDidDisplayNotification_ name:@"SUUIApplicationPageDidDisplayNotification" object:0];
    [defaultCenter addObserver:v8 selector:sel__storeFrontChangeNotification_ name:*MEMORY[0x277D69E18] object:0];
    [defaultCenter addObserver:v8 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
    [defaultCenter addObserver:v8 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];
  }

  return v8;
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D7FCC0] object:0];
  [defaultCenter removeObserver:self name:@"SUUIApplicationPageDidDisplayNotification" object:0];
  [defaultCenter removeObserver:self name:0x286AECDA0 object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D69E18] object:0];
  [defaultCenter removeObserver:self name:@"SUAccountViewControllerDidDisappearNotification" object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76660] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76758] object:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_navigationDocumentControllers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        null = [MEMORY[0x277CBEB68] null];

        if (v9 != null)
        {
          [v9 setDelegate:0];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [(SUUIClientContext *)self->_clientContext _setApplicationController:0];
  [(SUUIClientContext *)self->_clientContext _setScriptAppContext:0];
  [(SUUIModalDocumentController *)self->_modalDocumentController setDelegate:0];
  [(SUUIModalDocumentController *)self->_modalDocumentController setModalSourceViewProvider:0];
  [(SUUIModalDocumentController *)self->_modalDocumentController setNavigationControllerDelegate:0];
  _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
  v12 = SUUITabBarControllerGetMoreNavigationController(_existingTabBarController);
  [v12 setDelegate:0];
  [_existingTabBarController setDelegate:0];
  [(SUUINavigationDocumentController *)self->_transientNavigationDocument setDelegate:0];
  [(SUUIURLResolver *)self->_urlResolver setDelegate:0];
  [(SUUIURLResolver *)self->_urlResolver setNavigationControllerDelegate:0];

  v13.receiver = self;
  v13.super_class = SUUIApplicationController;
  [(SUUIApplicationController *)&v13 dealloc];
}

+ (id)applicationOptionsWithLaunchOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy mutableCopy];
  v6 = *MEMORY[0x277D76698];
  v7 = [optionsCopy objectForKey:*MEMORY[0x277D76698]];
  v8 = *MEMORY[0x277D76690];
  v9 = [optionsCopy objectForKey:*MEMORY[0x277D76690]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v7;
    v10 = [self _referrerAppForSourceApplication:v9 launchURL:&v22];
    v11 = v22;

    [v5 setObject:v10 forKey:@"refApp"];
    v7 = v11;
  }

  [v5 removeObjectForKey:v8];
  if (v7)
  {
    v12 = [[SUUIURL alloc] initWithURL:v7];
    underlyingURL = [(SUUIURL *)v12 underlyingURL];
    absoluteString = [underlyingURL absoluteString];
    [v5 setObject:absoluteString forKey:@"url"];

    [v5 removeObjectForKey:v6];
  }

  v15 = *MEMORY[0x277D76678];
  v16 = [optionsCopy objectForKey:*MEMORY[0x277D76678]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = SUUIMobileCoreServicesFramework();
    v18 = *SUUIWeakLinkedSymbolForString("LSReferrerURLKey", v17);
    if (v18)
    {
      v19 = [v16 objectForKey:v18];
    }

    else
    {
      v19 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setObject:v19 forKey:@"refUrl"];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        absoluteString2 = [v19 absoluteString];
        [v5 setObject:absoluteString2 forKey:@"refUrl"];
      }
    }
  }

  [v5 removeObjectForKey:v15];
  if (![v5 count])
  {

    v5 = 0;
  }

  return v5;
}

+ (id)_referrerAppForSourceApplication:(id)application launchURL:(id *)l
{
  v25 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  if ([applicationCopy isEqualToString:@"com.apple.ios.StoreKitUIService"])
  {
    lCopy = l;
    v6 = [MEMORY[0x277CCACE0] componentsWithURL:*l resolvingAgainstBaseURL:0];
    array = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = v6;
    queryItems = [v6 queryItems];
    v9 = [queryItems countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(queryItems);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          name = [v13 name];
          v15 = [name isEqualToString:@"SUUIServiceRefApp"];

          if (v15)
          {
            value = [v13 value];

            applicationCopy = value;
          }

          else
          {
            [array addObject:v13];
          }
        }

        v10 = [queryItems countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    [v18 setQueryItems:array];
    *lCopy = [v18 URL];
  }

  return applicationCopy;
}

- (void)application:(id)application didReceiveURL:(id)l
{
  lCopy = l;
  v5 = [lCopy copy];
  activationURL = self->_activationURL;
  self->_activationURL = v5;

  self->_ignoreDidBecomeActive = 1;
  [(SUUIClientContext *)self->_clientContext setPurchaseReferrerURL:lCopy];
}

- (void)applicationDidBecomeActive:(id)active
{
  if (!self->_ignoreDidBecomeActive)
  {
    [(SUUIApplicationController *)self resumeApplicationWithOptions:0];
  }
}

- (void)applicationWillResignActive:(id)active
{
  activeCopy = active;
  v5 = activeCopy;
  v6 = *MEMORY[0x277D767B0];
  if (self->_resignActiveTaskID != *MEMORY[0x277D767B0])
  {
    [activeCopy endBackgroundTask:?];
    self->_resignActiveTaskID = v6;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__SUUIApplicationController_applicationWillResignActive___block_invoke;
  v11[3] = &unk_2798F5AF8;
  v12 = v5;
  selfCopy = self;
  v7 = v5;
  self->_resignActiveTaskID = [v7 beginBackgroundTaskWithName:@"SUUIApplicationController.resignActive" expirationHandler:v11];
  block[6] = MEMORY[0x277D85DD0];
  block[7] = 3221225472;
  block[8] = __57__SUUIApplicationController_applicationWillResignActive___block_invoke_2;
  block[9] = &unk_2798F5D30;
  block[10] = self;
  SSDialogGetDaemonDialogState();
  resignActiveTaskID = self->_resignActiveTaskID;
  v9 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SUUIApplicationController_applicationWillResignActive___block_invoke_4;
  block[3] = &unk_2798F6C18;
  block[4] = self;
  block[5] = resignActiveTaskID;
  dispatch_after(v9, MEMORY[0x277D85CD0], block);
}

uint64_t __57__SUUIApplicationController_applicationWillResignActive___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) endBackgroundTask:*(*(a1 + 40) + 192)];
  *(*(a1 + 40) + 192) = *MEMORY[0x277D767B0];
  return result;
}

void __57__SUUIApplicationController_applicationWillResignActive___block_invoke_2(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __57__SUUIApplicationController_applicationWillResignActive___block_invoke_3;
  v2[3] = &unk_2798F93A0;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void *__57__SUUIApplicationController_applicationWillResignActive___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[24] == *(a1 + 40))
  {
    return [result _finishWillResignActiveWithDialogState:0];
  }

  return result;
}

- (void)setClientContext:(id)context
{
  contextCopy = context;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  NSLog(&cfstr_SetClientConte.isa, v6, contextCopy);

  clientContext = self->_clientContext;
  self->_clientContext = contextCopy;
  v8 = contextCopy;

  SUUISetShouldReverseLayoutDirectionWithContext(self->_clientContext);
  [(SUUIClientContext *)self->_clientContext _setApplicationController:self];
  [(SUUIClientContext *)self->_clientContext setPurchaseReferrerURL:self->_activationURL];
}

- (void)evaluateBlockWhenLoaded:(id)loaded
{
  loadedCopy = loaded;
  v10 = loadedCopy;
  if ((self->_scriptLoadState - 3) > 1)
  {
    if (!self->_whenLoadedBlocks)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      whenLoadedBlocks = self->_whenLoadedBlocks;
      self->_whenLoadedBlocks = v5;

      loadedCopy = v10;
    }

    v7 = [loadedCopy copy];
    v8 = self->_whenLoadedBlocks;
    v9 = _Block_copy(v7);
    [(NSMutableArray *)v8 addObject:v9];
  }

  else
  {
    loadedCopy[2]();
  }
}

- (void)hideStatusOverlayForProvider:(id)provider animated:(BOOL)animated
{
  animatedCopy = animated;
  providerCopy = provider;
  if (providerCopy)
  {
    statusOverlayProvider = self->_statusOverlayProvider;
    if (statusOverlayProvider == providerCopy)
    {
      v10 = providerCopy;
      self->_statusOverlayProvider = 0;

      if (self->_floatingStatusOverlayViewController)
      {
        _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
        SUUITabBarControllerSetFloatingOverlayViewControllerAnimated(_existingTabBarController, 0, animatedCopy);

        floatingStatusOverlayViewController = self->_floatingStatusOverlayViewController;
        self->_floatingStatusOverlayViewController = 0;
      }

      else
      {
        [(SUUIApplicationController *)self _removeStatusOverlayFromAllNavigationControllers];
      }

      providerCopy = v10;
    }
  }
}

- (void)loadApplicationWithOptions:(id)options
{
  v41[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  NSLog(&cfstr_LoadApplicatio.isa, v6, optionsCopy);

  clientContext = [(SUUIApplicationController *)self clientContext];
  v8 = [optionsCopy mutableCopy];
  if (!v8)
  {
    v8 = objc_opt_new();
  }

  +[SUUIMetricsAppLaunchEvent processStartTime];
  v10 = v9;
  if (v9 < 2.22044605e-16)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v10 = v12;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:(v10 * 1000.0)];
  [v8 setObject:v13 forKey:@"launchTime"];

  v14 = MEMORY[0x277CBEAC0];
  rootViewController = [(SUUIApplicationController *)self rootViewController];
  view = [rootViewController view];
  [view bounds];
  v19 = [v14 su_dictionaryWithSize:{v17, v18}];
  [v8 setObject:v19 forKey:@"windowSize"];

  v20 = [v8 copy];
  launchOptions = self->_launchOptions;
  self->_launchOptions = v20;

  v22 = objc_alloc_init(SUUIModalDocumentController);
  modalDocumentController = self->_modalDocumentController;
  self->_modalDocumentController = v22;

  [(SUUIModalDocumentController *)self->_modalDocumentController setClientContext:clientContext];
  [(SUUIModalDocumentController *)self->_modalDocumentController setDelegate:self];
  [(SUUIModalDocumentController *)self->_modalDocumentController setModalSourceViewProvider:self];
  [(SUUIModalDocumentController *)self->_modalDocumentController setNavigationControllerDelegate:self];
  v24 = self->_modalDocumentController;
  rootViewController2 = [(SUUIApplicationController *)self rootViewController];
  [(SUUIModalDocumentController *)v24 setRootViewController:rootViewController2];

  v26 = +[SUUINearMeController sharedController];
  [v26 setClientContext:clientContext];

  v27 = +[SUUIFamilyCircleController sharedController];
  [v27 setClientContext:clientContext];

  mEMORY[0x277D69CA8] = [MEMORY[0x277D69CA8] sharedManager];
  v41[0] = objc_opt_class();
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  [mEMORY[0x277D69CA8] setCustomURLProtocols:v29];

  [MEMORY[0x277CBAB98] registerClass:objc_opt_class()];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  LODWORD(v29) = [mEMORY[0x277D75128] launchedToTest];

  if (v29)
  {
    [MEMORY[0x277CBAB98] registerClass:objc_opt_class()];
  }

  if (!clientContext)
  {
    objc_initWeak(&location, self);
    configurationPreloader = [objc_opt_class() configurationPreloader];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __56__SUUIApplicationController_loadApplicationWithOptions___block_invoke_4;
    v36[3] = &unk_2798FAA60;
    objc_copyWeak(&v37, &location);
    [configurationPreloader preloadConfigurationForPurpose:1 withCompletionBlock:v36];

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
    goto LABEL_14;
  }

  [(SUUIApplicationController *)self _loadApplicationScript];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_11;
  }

  v32 = objc_loadWeakRetained(&self->_delegate);
  shouldShowExplicitRestrictionAlertOnLaunch = [v32 shouldShowExplicitRestrictionAlertOnLaunch];

  if (shouldShowExplicitRestrictionAlertOnLaunch)
  {
    WeakRetained = [[SUUIExplicitRestrictionAlertController alloc] initWithClientContext:clientContext];
    [(SUUIExplicitRestrictionAlertController *)WeakRetained presentExplicitRestrictionAlertIfNeededOfType:0 completionBlock:0];
LABEL_11:
  }

  objc_initWeak(&location, self);
  v34 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUUIApplicationController_loadApplicationWithOptions___block_invoke;
  block[3] = &unk_2798F7CA0;
  block[4] = self;
  objc_copyWeak(&v39, &location);
  dispatch_after(v34, MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
LABEL_14:
}

void __56__SUUIApplicationController_loadApplicationWithOptions___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_opt_class() configurationPreloader];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SUUIApplicationController_loadApplicationWithOptions___block_invoke_2;
  v4[3] = &unk_2798FAA60;
  objc_copyWeak(&v5, (a1 + 40));
  [v3 preloadConfigurationForPurpose:2 withCompletionBlock:v4];
  objc_destroyWeak(&v5);

  objc_autoreleasePoolPop(v2);
}

void __56__SUUIApplicationController_loadApplicationWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__SUUIApplicationController_loadApplicationWithOptions___block_invoke_3;
    v5[3] = &unk_2798F7CA0;
    v6 = v3;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_async(MEMORY[0x277D85CD0], v5);
    objc_destroyWeak(&v7);
  }
}

void __56__SUUIApplicationController_loadApplicationWithOptions___block_invoke_3(uint64_t a1)
{
  v4 = [[SUUIClientContext alloc] initWithConfigurationDictionary:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _reloadTabBarWithClientContext:v4];

  v3 = objc_loadWeakRetained((a1 + 40));
  [objc_opt_class() finishedWithConfigurationPreloader];
}

void __56__SUUIApplicationController_loadApplicationWithOptions___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v5)
  {
    [WeakRetained _setClientContextWithDictionary:v5];

    [SUUIMetricsAppLaunchEvent withPendingLaunchEvent:&__block_literal_global_106];
  }

  else
  {
    [WeakRetained _failReloadWithError:v6];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUUIApplicationController_loadApplicationWithOptions___block_invoke_6;
  block[3] = &unk_2798F67A0;
  objc_copyWeak(&v10, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v10);
}

void __56__SUUIApplicationController_loadApplicationWithOptions___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setRequiredBlockingBagLoad:1];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSince1970];
  [v2 setClientConfigurationLoadTime:?];
}

void __56__SUUIApplicationController_loadApplicationWithOptions___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [objc_opt_class() finishedWithConfigurationPreloader];
}

- (void)recordMetricsEvent:(id)event flushImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  eventCopy = event;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v8 = mEMORY[0x277D75128];
  metricsController = self->_metricsController;
  if (metricsController)
  {
    v10 = SUUIMetricsWindowOrientationForInterfaceOrientation([mEMORY[0x277D75128] statusBarOrientation]);
    [(SUUIMetricsController *)metricsController setWindowOrientation:v10];

    if (immediatelyCopy)
    {
      [objc_opt_class() flushImmediately];
      [eventCopy originalTime];
      [eventCopy setOriginalTime:v11 + 1.0];
      [(SUUIMetricsController *)self->_metricsController recordEvent:eventCopy];
      [objc_opt_class() flushImmediately];
    }

    else
    {
      [(SUUIMetricsController *)self->_metricsController recordEvent:eventCopy];
    }
  }

  else if (self->_clientContext)
  {
    v12 = *MEMORY[0x277D767B0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__SUUIApplicationController_recordMetricsEvent_flushImmediately___block_invoke;
    v21[3] = &unk_2798F6C18;
    v13 = mEMORY[0x277D75128];
    v22 = v13;
    v23 = v12;
    v14 = [v13 beginBackgroundTaskWithName:@"SUUIApplicationController.recordMetricsEvent" expirationHandler:v21];
    clientContext = self->_clientContext;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__SUUIApplicationController_recordMetricsEvent_flushImmediately___block_invoke_2;
    v16[3] = &unk_2798FD5C0;
    v16[4] = self;
    v17 = v13;
    v20 = immediatelyCopy;
    v18 = eventCopy;
    v19 = v14;
    [(SUUIClientContext *)clientContext getDefaultMetricsControllerWithCompletionBlock:v16];
  }
}

void __65__SUUIApplicationController_recordMetricsEvent_flushImmediately___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v4 = *(a1 + 32);
  v7 = *(v4 + 136);
  v5 = (v4 + 136);
  v6 = v7;
  if (!v7)
  {
    objc_storeStrong(v5, a2);
    v6 = *(*(a1 + 32) + 136);
  }

  v8 = SUUIMetricsWindowOrientationForInterfaceOrientation([*(a1 + 40) statusBarOrientation]);
  [v6 setWindowOrientation:v8];

  if (*(a1 + 64) == 1)
  {
    [objc_opt_class() flushImmediately];
  }

  [*(*(a1 + 32) + 136) recordEvent:*(a1 + 48)];
  if (*(a1 + 64) == 1)
  {
    [objc_opt_class() flushImmediately];
  }

  [*(a1 + 40) endBackgroundTask:*(a1 + 56)];
}

- (void)resumeApplicationWithOptions:(id)options
{
  optionsCopy = options;
  rootViewController = [(SUUIApplicationController *)self rootViewController];
  presentedViewController = [rootViewController presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];

  if (transitionCoordinator)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__SUUIApplicationController_resumeApplicationWithOptions___block_invoke;
    v8[3] = &unk_2798FBAB0;
    v8[4] = self;
    v9 = optionsCopy;
    [transitionCoordinator animateAlongsideTransition:0 completion:v8];
  }

  else
  {
    [(IKAppContext *)self->_scriptContext resumeWithOptions:optionsCopy];
  }
}

- (id)selectTabWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__91;
  v26 = __Block_byref_object_dispose__91;
  v27 = 0;
  if (self->_hidesTabBar)
  {
    firstObject = [(NSMutableArray *)self->_navigationDocumentControllers firstObject];
    null = [MEMORY[0x277CBEB68] null];

    if (firstObject == null)
    {
      goto LABEL_8;
    }

    navigationController = [firstObject navigationController];
    v8 = v23[5];
    v23[5] = navigationController;
  }

  else
  {
    _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
    viewControllers = [_existingTabBarController viewControllers];
    tabBarItems = self->_tabBarItems;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__SUUIApplicationController_selectTabWithIdentifier___block_invoke;
    v16[3] = &unk_2798FD5E8;
    v17 = identifierCopy;
    v8 = viewControllers;
    v18 = v8;
    firstObject = _existingTabBarController;
    selfCopy = self;
    v21 = &v22;
    v19 = firstObject;
    [(NSArray *)tabBarItems enumerateObjectsUsingBlock:v16];
    if (!v23[5])
    {
      selectedViewController = [firstObject selectedViewController];
      v13 = v23[5];
      v23[5] = selectedViewController;
    }

    [(SUUIApplicationController *)self _dispatchTabBarOnSelect];
    [(SUUIApplicationController *)self _tintTabBarWithViewController:v23[5]];
    [(SUUIApplicationController *)self _updateOverlayNavigationController:v23[5]];
  }

LABEL_8:
  v14 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v14;
}

void __53__SUUIApplicationController_selectTabWithIdentifier___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = [a2 tabIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    if ([*(a1 + 40) count] > a3)
    {
      v9 = [*(a1 + 40) objectAtIndex:a3];
      v10 = [*(a1 + 48) selectedViewController];

      if (v9 != v10)
      {
        [*(a1 + 48) setSelectedViewController:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong((*(*(a1 + 64) + 8) + 40), v9);
        }

        [*(*(a1 + 56) + 128) popAllDocuments];
      }
    }

    *a4 = 1;
  }
}

- (void)setTabBarItems:(id)items
{
  if (self->_tabBarItems != items)
  {
    v5 = [items copy];
    tabBarItems = self->_tabBarItems;
    self->_tabBarItems = v5;

    [(SUUIApplicationController *)self _reloadRootViewControllers];
  }
}

- (void)showErrorViewWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle buttonAction:(id)action
{
  messageCopy = message;
  v11 = MEMORY[0x277D75E78];
  actionCopy = action;
  buttonTitleCopy = buttonTitle;
  titleCopy = title;
  v15 = [v11 alloc];
  v16 = [v15 initWithFrame:titleCopy title:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  if (buttonTitleCopy)
  {
    v17 = messageCopy == 0;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v18 = &stru_286AECDE0;
  }

  else
  {
    v18 = messageCopy;
  }

  v21 = v18;
  [v16 setMessage:?];
  [v16 setButtonTitle:buttonTitleCopy];

  [v16 setButtonAction:actionCopy];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [v16 setBackgroundColor:systemBackgroundColor];

  v20 = objc_alloc_init(SUUILaunchErrorViewController);
  [(SUUILaunchErrorViewController *)v20 setView:v16];
  [(SUUIApplicationController *)self showTransientViewController:v20];
}

- (void)showErrorViewForLaunchFailure
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__SUUIApplicationController_showErrorViewForLaunchFailure__block_invoke;
  v10[3] = &unk_2798F5BE8;
  v10[4] = self;
  [(SUUIApplicationController *)self evaluateBlockWhenLoaded:v10];
  objc_initWeak(&location, self);
  v3 = SUUIErrorDocumentTitle(self->_clientContext);
  v4 = self->_clientContext;
  v5 = v4;
  if (v4)
  {
    [(SUUIClientContext *)v4 localizedStringForKey:@"NETWORK_ERROR_BUTTON_RETRY"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"NETWORK_ERROR_BUTTON_RETRY" inBundles:0];
  }
  v6 = ;

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SUUIApplicationController_showErrorViewForLaunchFailure__block_invoke_2;
  v7[3] = &unk_2798F67A0;
  objc_copyWeak(&v8, &location);
  [(SUUIApplicationController *)self showErrorViewWithTitle:v3 message:0 buttonTitle:v6 buttonAction:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __58__SUUIApplicationController_showErrorViewForLaunchFailure__block_invoke(uint64_t a1)
{
  v2 = +[SUUIMetricsUtilities newErrorPageEvent];
  [v2 setPageType:@"SUUIApplicationController"];
  [*(a1 + 32) recordMetricsEvent:v2 flushImmediately:0];
}

void __58__SUUIApplicationController_showErrorViewForLaunchFailure__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _reloadApplication];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __58__SUUIApplicationController_showErrorViewForLaunchFailure__block_invoke_3;
    v3[3] = &unk_2798F5BE8;
    v3[4] = v2;
    [v2 evaluateBlockWhenLoaded:v3];
  }
}

void __58__SUUIApplicationController_showErrorViewForLaunchFailure__block_invoke_3(uint64_t a1)
{
  v2 = +[SUUIMetricsUtilities newErrorRetryClickEvent];
  [v2 setPageType:@"SUUIApplicationController"];
  [*(a1 + 32) recordMetricsEvent:v2 flushImmediately:0];
}

- (void)showExternalURL:(id)l
{
  lCopy = l;
  v5 = [lCopy valueForQueryParameter:@"referrer"];
  referrerApplicationName = [lCopy referrerApplicationName];
  if (referrerApplicationName || !v5)
  {
  }

  else if (![v5 caseInsensitiveCompare:@"siri"])
  {
    [lCopy setReferrerApplicationName:@"com.apple.Siri"];
  }

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SUUIApplicationController_showExternalURL___block_invoke;
  v8[3] = &unk_2798F6530;
  objc_copyWeak(&v11, &location);
  v7 = lCopy;
  v9 = v7;
  selfCopy = self;
  [(SUUIApplicationController *)self _attemptAMSURLHandlingIfPossibleForExternalURL:v7 fallback:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __45__SUUIApplicationController_showExternalURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _shouldUseLegacyURLHandlingForExternalURL:*(a1 + 32)];

  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4[14])
    {
      if ([*(a1 + 32) isEqual:?])
      {
        return;
      }

      v4 = *(a1 + 40);
    }

    v10 = *(a1 + 32);

    [v4 _legacyResolveExternalURL:v10];
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    v11 = [v5 _launchOptionsWithURL:*(a1 + 32)];

    v6 = *(*(a1 + 40) + 104);
    if (v6)
    {
      v7 = [v6 mutableCopy];
      [v7 addEntriesFromDictionary:v11];
      v8 = *(a1 + 40);
      v9 = *(v8 + 104);
      *(v8 + 104) = v7;
    }

    else
    {
      v9 = objc_loadWeakRetained((a1 + 48));
      [v9 resumeApplicationWithOptions:v11];
    }
  }
}

- (void)showStatusOverlayUsingProvider:(id)provider animated:(BOOL)animated
{
  animatedCopy = animated;
  providerCopy = provider;
  p_statusOverlayProvider = &self->_statusOverlayProvider;
  statusOverlayProvider = self->_statusOverlayProvider;
  if (providerCopy)
  {
    if (statusOverlayProvider == providerCopy)
    {
      goto LABEL_6;
    }

    v12 = providerCopy;
    objc_storeStrong(p_statusOverlayProvider, provider);
    _activeNavigationController = [(SUUIApplicationController *)self _activeNavigationController];
    topViewController = [_activeNavigationController topViewController];
    [(SUUIApplicationController *)self _showStatusOverlayForNavigationController:_activeNavigationController viewController:topViewController animated:animatedCopy];
  }

  else
  {
    v12 = 0;
    p_statusOverlayProvider = [(SUUIApplicationController *)self hideStatusOverlayForProvider:statusOverlayProvider animated:animatedCopy];
  }

  providerCopy = v12;
LABEL_6:

  MEMORY[0x2821F96F8](p_statusOverlayProvider, providerCopy);
}

- (void)showTransientViewController:(id)controller
{
  v9[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  _transientNavigationDocument = [(SUUIApplicationController *)self _transientNavigationDocument];
  navigationController = [_transientNavigationDocument navigationController];
  if (controllerCopy)
  {
    [_transientNavigationDocument ensureStackConsistencyForNavigationControllerOperation:3 operationDidComplete:0];
    v9[0] = controllerCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [navigationController setViewControllers:v7 animated:0];

    [_transientNavigationDocument ensureStackConsistencyForNavigationControllerOperation:3 operationDidComplete:1];
  }

  else
  {
    [_transientNavigationDocument setStackItems:MEMORY[0x277CBEBF8] animated:0];
  }

  _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
  [_existingTabBarController setTransientViewController:navigationController animated:0];

  [(SUUIApplicationController *)self _tintTabBarWithViewController:navigationController];
}

- (void)setMescalPrimeEnabledForXHRRequests:(BOOL)requests
{
  self->_mescalPrimeEnabledForXHRRequests = requests;
  scriptContext = self->_scriptContext;
  if (scriptContext)
  {
    [(IKAppContext *)scriptContext setMescalPrimeEnabledForXHRRequests:?];
  }
}

- (void)updateTabBarWithItems:(id)items animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v52 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  completionCopy = completion;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  NSLog(&cfstr_UpdateTabBarIt.isa, v9, self->_clientContext, itemsCopy);

  v10 = [(NSMutableArray *)self->_navigationDocumentControllers copy];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  navigationDocumentControllers = self->_navigationDocumentControllers;
  self->_navigationDocumentControllers = v12;

  clientContext = [(SUUIApplicationController *)self clientContext];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = itemsCopy;
  v14 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v48;
    v40 = v10;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v47 + 1) + 8 * i);
        customRootViewController = [v18 customRootViewController];

        if (customRootViewController)
        {
          customRootViewController2 = [v18 customRootViewController];
          if ([customRootViewController2 conformsToProtocol:&unk_286C969C0])
          {
            appNavigationController = [customRootViewController2 appNavigationController];
            [appNavigationController setClientContext:clientContext];
            [appNavigationController setDelegate:self];
            v22 = self->_navigationDocumentControllers;
          }

          else
          {
            v24 = self->_navigationDocumentControllers;
            appNavigationController = [MEMORY[0x277CBEB68] null];
            v22 = v24;
          }

          [(NSMutableArray *)v22 addObject:appNavigationController];

          customRootViewController3 = [v18 customRootViewController];
          [v11 addObject:customRootViewController3];
        }

        else
        {
          v23 = [(NSArray *)self->_tabBarItems indexOfObject:v18];
          if (v23 >= [v10 count])
          {
            customRootViewController2 = 0;
          }

          else
          {
            customRootViewController2 = [v10 objectAtIndex:v23];
          }

          customRootViewController3 = [customRootViewController2 navigationController];
          if (customRootViewController3)
          {
            clientContext2 = [customRootViewController2 clientContext];

            if (!clientContext2)
            {
              [customRootViewController2 setClientContext:clientContext];
            }

            v27 = [(NSArray *)self->_tabBarItems objectAtIndex:v23];
            underlyingTabBarItem = [v27 underlyingTabBarItem];
            [v18 setUnderlyingTabBarItem:underlyingTabBarItem];

            [(NSMutableArray *)self->_navigationDocumentControllers addObject:customRootViewController2];
            [v11 addObject:customRootViewController3];
            v10 = v40;
          }

          else
          {
            v29 = [(SUUIApplicationController *)self _newNavigationControllerWithTabBarItem:v18];
            if (v29)
            {
              v30 = [[SUUINavigationDocumentController alloc] initWithNavigationController:v29];
              [(SUUINavigationDocumentController *)v30 setClientContext:clientContext];
              [(SUUINavigationDocumentController *)v30 setDelegate:self];
              [(NSMutableArray *)self->_navigationDocumentControllers addObject:v30];
              [v11 addObject:v29];

              v10 = v40;
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v15);
  }

  v31 = [obj copy];
  tabBarItems = self->_tabBarItems;
  self->_tabBarItems = v31;

  _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
  [_existingTabBarController setViewControllers:v11 animated:animatedCopy];

  selectedViewController = [(SUUITabBarController *)self->_tabBarController selectedViewController];
  [(SUUIApplicationController *)self _tintTabBarWithViewController:selectedViewController];

  scriptContext = self->_scriptContext;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __71__SUUIApplicationController_updateTabBarWithItems_animated_completion___block_invoke;
  v45[3] = &unk_2798FD610;
  v46 = completionCopy;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __71__SUUIApplicationController_updateTabBarWithItems_animated_completion___block_invoke_2;
  v43[3] = &unk_2798F5D30;
  v44 = v10;
  v36 = v10;
  v37 = completionCopy;
  [(IKAppContext *)scriptContext evaluate:v45 completionBlock:v43];
}

void __71__SUUIApplicationController_updateTabBarWithItems_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"TabBar"];
  v4 = [v3 toObjectOfClass:objc_opt_class()];

  [v4 sendOnUpdateWithCompletion:*(a1 + 32)];
}

- (void)appContext:(id)context didCompletePurchase:(id)purchase
{
  purchaseCopy = purchase;
  delegate = [(SUUIApplicationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate application:self didCompletePurchase:purchaseCopy];
  }
}

- (void)appContext:(id)context didCompleteSoftwarePurchase:(id)purchase
{
  purchaseCopy = purchase;
  delegate = [(SUUIApplicationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate application:self didCompleteSoftwarePurchase:purchaseCopy];
  }
}

- (void)appContext:(id)context didExitWithOptions:(id)options
{
  optionsCopy = options;
  v6 = [optionsCopy objectForKey:@"url"];
  v7 = *MEMORY[0x277D767B0];
  if ([v6 length])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__SUUIApplicationController_appContext_didExitWithOptions___block_invoke;
    v12[3] = &__block_descriptor_40_e5_v8__0l;
    v12[4] = v7;
    v7 = [mEMORY[0x277D75128] beginBackgroundTaskWithName:@"com.apple.ios.StoreKitUIService.openURL" expirationHandler:v12];
  }

  delegate = [(SUUIApplicationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate application:self didStopWithOptions:optionsCopy];
  }

  if ([v6 length])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];
    SUUIMetricsOpenSensitiveURL(v10, 0);
    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128]2 endBackgroundTask:v7];
  }
}

void __59__SUUIApplicationController_appContext_didExitWithOptions___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 endBackgroundTask:*(a1 + 32)];
}

- (void)appContext:(id)context didFailWithError:(id)error
{
  scriptContext = self->_scriptContext;
  errorCopy = error;
  appScriptFallbackHandler = [(IKAppContext *)scriptContext appScriptFallbackHandler];
  [appScriptFallbackHandler invalidate];

  [(SUUIApplicationController *)self _failWithError:errorCopy];
}

- (void)appContext:(id)context didStartWithOptions:(id)options
{
  optionsCopy = options;
  contextCopy = context;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  NSLog(&cfstr_ContextDidStar.isa, v9, contextCopy, optionsCopy);

  self->_scriptLoadState = 3;
  [(SUUIApplicationController *)self _fireBlocksAfterLoad];
  launchOptions = self->_launchOptions;
  self->_launchOptions = 0;

  legacyLaunchURL = self->_legacyLaunchURL;
  self->_legacyLaunchURL = 0;

  if (self->_indexOfLastTabNeedingContent != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SUUIApplicationController *)self _dispatchTabBarOnNeedsContentForTabAtIndex:?];
  }

  [SUUIMetricsAppLaunchEvent withPendingLaunchEvent:&__block_literal_global_207];
}

void __60__SUUIApplicationController_appContext_didStartWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 date];
  [v4 timeIntervalSince1970];
  [v3 setBootstrapEndTime:?];
}

- (void)appContext:(id)context didStopWithOptions:(id)options
{
  optionsCopy = options;
  [(SUUIApplicationController *)self _removeObserversForReloadNotifications];
  scriptLoadState = self->_scriptLoadState;
  if (scriptLoadState == 5)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    if ([mEMORY[0x277D75128] applicationState] == 2)
    {
      self->_reloadApplicationOnForegroundNotification = 1;
      [(SUUIApplicationController *)self _invalidateApplication];
      rootViewController = [(SUUIApplicationController *)self rootViewController];

      if (rootViewController)
      {
        rootViewController2 = [(SUUIApplicationController *)self rootViewController];
        view = [rootViewController2 view];
        window = [view window];
        windowScene = [window windowScene];
        session = [windowScene session];

        if (session)
        {
          [mEMORY[0x277D75128] requestSceneSessionRefresh:session];
        }
      }
    }

    else
    {
      [(SUUIApplicationController *)self _reloadApplication];
    }

    [(_SUUIApplicationShutdownHelper *)self->_shutdownHelper stop];
    shutdownHelper = self->_shutdownHelper;
    self->_shutdownHelper = 0;
  }

  else if (scriptLoadState == 6)
  {
    [(SUUIApplicationController *)self _invalidateApplication];
    [(_SUUIApplicationShutdownHelper *)self->_shutdownHelper stop];
    mEMORY[0x277D75128] = self->_shutdownHelper;
    self->_shutdownHelper = 0;
  }

  else
  {
    mEMORY[0x277D75128] = [(SUUIApplicationController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [mEMORY[0x277D75128] application:self didStopWithOptions:optionsCopy];
    }

    else
    {
      [(SUUIApplicationController *)self _reloadApplication];
    }
  }
}

- (void)appContext:(id)context evaluateAppJavaScriptInContext:(id)inContext
{
  contextCopy = context;
  inContextCopy = inContext;
  v8 = [[SUUIJSApplication alloc] initWithAppContext:contextCopy applicationController:self];
  [inContextCopy setObject:v8 forKeyedSubscript:@"App"];

  v9 = [[SUUIJSTabBar alloc] initWithAppContext:contextCopy controller:self];
  [inContextCopy setObject:v9 forKeyedSubscript:@"TabBar"];

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__91;
  v34 = __Block_byref_object_dispose__91;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__91;
  v28 = __Block_byref_object_dispose__91;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__91;
  v22 = __Block_byref_object_dispose__91;
  v23 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__SUUIApplicationController_appContext_evaluateAppJavaScriptInContext___block_invoke;
  v17[3] = &unk_2798FD638;
  v17[4] = self;
  v17[5] = &v30;
  v17[6] = &v24;
  v17[7] = &v18;
  [contextCopy evaluateDelegateBlockSync:v17];
  v10 = objc_alloc([(SUUIApplicationController *)self _JSITunesStoreClass]);
  v11 = [v10 initWithAppContext:contextCopy clientContext:v31[5]];
  [inContextCopy setObject:v11 forKeyedSubscript:@"itms"];

  v12 = [SUUIJSModalDocumentController alloc];
  v13 = [(SUUIJSModalDocumentController *)v12 initWithAppContext:contextCopy modalDocumentController:v19[5]];
  [inContextCopy setObject:v13 forKeyedSubscript:@"modal"];

  v14 = [[SUUIJSTelephony alloc] initWithAppContext:contextCopy];
  [inContextCopy setObject:v14 forKeyedSubscript:@"Telephony"];

  v15 = [SUUIJSImageColorAnalyzer alloc];
  v16 = [(SUUIJSImageColorAnalyzer *)v15 initWithAppContext:contextCopy clientContext:v31[5]];
  [inContextCopy setObject:v16 forKeyedSubscript:@"ImageColorAnalyzer"];

  if (objc_opt_respondsToSelector())
  {
    [v25[5] application:self evaluateAppJavaScriptInContext:contextCopy JSContext:inContextCopy];
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
}

void __71__SUUIApplicationController_appContext_evaluateAppJavaScriptInContext___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 32));
  WeakRetained = objc_loadWeakRetained((a1[4] + 40));
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  v5 = *(a1[4] + 128);
  v6 = (*(a1[7] + 8) + 40);

  objc_storeStrong(v6, v5);
}

- (void)appContext:(id)context needsReloadWithUrgency:(unint64_t)urgency options:(id)options
{
  if (self->_scriptContext == context)
  {
    if ([(SUUIApplicationControllerOptions *)self->_options supportsFullApplicationReload])
    {
      if (urgency == 1)
      {
        self->_stopApplicationOnBackgroundNotification = 1;
      }

      else if (!urgency)
      {
        v7 = objc_opt_class();
        NSLog(&cfstr_ReloadingAppIm.isa, v7);

        [(SUUIApplicationController *)self _stopScriptContextForReload];
      }
    }

    else
    {
      NSLog(&cfstr_SkippingFullAp.isa);
    }
  }
}

- (void)appContextNeedsRestart:(id)restart
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v4 = *MEMORY[0x277D767B0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__SUUIApplicationController_appContextNeedsRestart___block_invoke;
  v12[3] = &unk_2798F6C18;
  v5 = mEMORY[0x277D75128];
  v13 = v5;
  v14 = v4;
  v6 = [v5 beginBackgroundTaskWithName:@"SUUIApplicationController.restartApp" expirationHandler:v12];
  [v5 suspend];
  v7 = objc_alloc_init(MEMORY[0x277D69A40]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__SUUIApplicationController_appContextNeedsRestart___block_invoke_2;
  v9[3] = &unk_2798F7328;
  v10 = v5;
  v11 = v6;
  v8 = v5;
  [v7 restartApplication:v9];
}

- (void)appContext:(id)context setPreviewOverlayDocument:(id)document withOptions:(id)options
{
  documentCopy = document;
  optionsCopy = options;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = documentCopy;
  if (documentCopy)
  {
    templateElement = [documentCopy templateElement];
    if ([templateElement elementType] == 91)
    {
      v9 = documentCopy;
    }

    else
    {
      NSLog(&cfstr_InvalidPreview.isa, templateElement);

      templateElement = 0;
      v9 = 0;
    }
  }

  else
  {
    templateElement = 0;
  }

  v31 = v9;
  previewDocumentController = self->_previewDocumentController;
  if (previewDocumentController)
  {
    [defaultCenter removeObserver:self name:0x286AECDA0 object:self->_previewDocumentController];
    v12 = self->_previewDocumentController;
    self->_previewDocumentController = 0;
  }

  _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
  if (v31)
  {
    v14 = previewDocumentController != 0;
    v15 = [[SUUIPreviewDocumentController alloc] initWithDocument:v31];
    v16 = self->_previewDocumentController;
    self->_previewDocumentController = v15;

    v17 = self->_previewDocumentController;
    clientContext = [(SUUIApplicationController *)self clientContext];
    [(SUUIPreviewDocumentController *)v17 setClientContext:clientContext];

    [defaultCenter addObserver:self selector:sel__previewDocumentIsActiveChangeNotification_ name:0x286AECDA0 object:self->_previewDocumentController];
    isPreviewActive = [(SUUIPreviewDocumentController *)self->_previewDocumentController isPreviewActive];
    v20 = isPreviewActive;
    if (self->_floatingStatusOverlayViewController)
    {
      if (isPreviewActive)
      {
        traitCollection = [_existingTabBarController traitCollection];
        v22 = -[SUUIPreviewDocumentController overlayViewControllerWithBackgroundStyle:](self->_previewDocumentController, "overlayViewControllerWithBackgroundStyle:", [traitCollection userInterfaceStyle] != 1);
      }

      else
      {
        v22 = 0;
      }

      floatingStatusOverlayViewController = self->_floatingStatusOverlayViewController;
      self->_floatingStatusOverlayViewController = v22;
      v25 = v22;

      SUUITabBarControllerSetFloatingOverlayViewControllerAnimated(_existingTabBarController, self->_floatingStatusOverlayViewController, 1);
    }

    v26 = v14 || v20;
    v27 = [optionsCopy objectForKey:@"playsImmediately"];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v27 BOOLValue] && -[SUUIApplicationController _playPreviewForPreviewTemplate:](self, "_playPreviewForPreviewTemplate:", templateElement))
    {
      _activeNavigationController = [(SUUIApplicationController *)self _activeNavigationController];
      topViewController = [_activeNavigationController topViewController];
      [(SUUIApplicationController *)self _showStatusOverlayForNavigationController:_activeNavigationController viewController:topViewController animated:1];
    }

    if (v26)
    {
LABEL_23:
      [defaultCenter postNotificationName:@"SUUIApplicationControllerPreviewOverlayDidChangeNotification" object:self userInfo:0];
    }
  }

  else
  {
    if (self->_floatingStatusOverlayViewController)
    {
      SUUITabBarControllerSetFloatingOverlayViewControllerAnimated(_existingTabBarController, 0, 1);
      v23 = self->_floatingStatusOverlayViewController;
      self->_floatingStatusOverlayViewController = 0;
    }

    if (previewDocumentController)
    {
      goto LABEL_23;
    }
  }
}

- (id)deviceConfigForContext:(id)context
{
  deviceConfig = self->_deviceConfig;
  if (!deviceConfig)
  {
    v5 = objc_alloc_init(SUUIAppDeviceConfig);
    v6 = self->_deviceConfig;
    self->_deviceConfig = v5;

    deviceConfig = self->_deviceConfig;
  }

  return deviceConfig;
}

- (id)navigationControllerForContext:(id)context
{
  if (self->_hidesTabBar)
  {
    firstObject = [(NSMutableArray *)self->_navigationDocumentControllers firstObject];
    null = [MEMORY[0x277CBEB68] null];

    if (firstObject != null)
    {
      goto LABEL_5;
    }
  }

  firstObject = 0;
LABEL_5:

  return firstObject;
}

- (id)presentationViewControllerForAppContext:(id)context
{
  rootViewController = [(SUUIApplicationController *)self rootViewController];
  presentedViewController = [rootViewController presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [rootViewController presentedViewController];

      v5PresentedViewController = [presentedViewController2 presentedViewController];

      rootViewController = presentedViewController2;
    }

    while (v5PresentedViewController);
  }

  else
  {
    presentedViewController2 = rootViewController;
  }

  return presentedViewController2;
}

- (id)activeDocument
{
  v26 = *MEMORY[0x277D85DE8];
  documents = [(SUUIModalDocumentController *)self->_modalDocumentController documents];
  if ([documents count])
  {
    lastObject = [documents lastObject];
    goto LABEL_27;
  }

  if (self->_hidesTabBar)
  {
    firstObject = [(NSMutableArray *)self->_navigationDocumentControllers firstObject];
    null = [MEMORY[0x277CBEB68] null];

    if (firstObject != null)
    {
      documents2 = [firstObject documents];
      lastObject = [(NSMutableArray *)documents2 lastObject];
LABEL_25:

      goto LABEL_26;
    }

    lastObject = 0;
  }

  else
  {
    _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
    transientViewController = [_existingTabBarController transientViewController];

    if (!transientViewController)
    {
      _existingTabBarController2 = [(SUUIApplicationController *)self _existingTabBarController];
      firstObject = [_existingTabBarController2 selectedViewController];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      documents2 = self->_navigationDocumentControllers;
      lastObject = [(NSMutableArray *)documents2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (lastObject)
      {
        v11 = *v22;
        while (2)
        {
          for (i = 0; i != lastObject; i = i + 1)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(documents2);
            }

            v13 = *(*(&v21 + 1) + 8 * i);
            null2 = [MEMORY[0x277CBEB68] null];
            v15 = null2;
            if (v13 == null2)
            {
            }

            else
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                navigationController = [v13 navigationController];

                if (navigationController == firstObject || [firstObject conformsToProtocol:&unk_286C969C0] && (objc_msgSend(firstObject, "appNavigationController"), v18 = objc_claimAutoreleasedReturnValue(), v18, v18 == v13))
                {
                  documents3 = [v13 documents];
                  lastObject = [documents3 lastObject];

                  goto LABEL_25;
                }
              }
            }
          }

          lastObject = [(NSMutableArray *)documents2 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (lastObject)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_25;
    }

    firstObject = [(SUUINavigationDocumentController *)self->_transientNavigationDocument documents];
    lastObject = [firstObject lastObject];
  }

LABEL_26:

LABEL_27:

  return lastObject;
}

- (id)localStorage
{
  v16[3] = *MEMORY[0x277D85DE8];
  if (!self->_localStorage)
  {
    if ([(SUUIApplicationControllerOptions *)self->_options useTransientStorageForTests])
    {
      v3 = objc_alloc_init(SUUITransientAppDataStorage);
      localStorage = self->_localStorage;
      self->_localStorage = v3;
    }

    else
    {
      v5 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
      firstObject = [v5 firstObject];

      if (firstObject)
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        v16[1] = bundleIdentifier;
        v16[2] = @"com.apple.iTunesStoreUI.localStorage";
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

        v10 = [MEMORY[0x277CCACA8] pathWithComponents:v9];
        v11 = [v10 stringByAppendingPathExtension:@"plist"];

        v12 = [objc_alloc(MEMORY[0x277D1B030]) initWithFilePath:v11 identifier:@"com.apple.iTunesStoreUI.localStorage"];
        v13 = self->_localStorage;
        self->_localStorage = v12;
      }
    }
  }

  v14 = self->_localStorage;

  return v14;
}

- (id)vendorIdentifier
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  identifierForVendor = [currentDevice identifierForVendor];
  uUIDString = [identifierForVendor UUIDString];

  return uUIDString;
}

- (id)vendorStorage
{
  v16[3] = *MEMORY[0x277D85DE8];
  if (!self->_vendorStorage)
  {
    if ([(SUUIApplicationControllerOptions *)self->_options useTransientStorageForTests])
    {
      v3 = objc_alloc_init(SUUITransientAppDataStorage);
      vendorStorage = self->_vendorStorage;
      self->_vendorStorage = v3;
    }

    else
    {
      v5 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
      firstObject = [v5 firstObject];

      if (firstObject)
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        v16[1] = bundleIdentifier;
        v16[2] = @"com.apple.iTunesStoreUI.vendorStorage";
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

        v10 = [MEMORY[0x277CCACA8] pathWithComponents:v9];
        v11 = [v10 stringByAppendingPathExtension:@"plist"];

        v12 = [objc_alloc(MEMORY[0x277D1B030]) initWithFilePath:v11 identifier:@"com.apple.iTunesStoreUI.vendorStorage"];
        v13 = self->_vendorStorage;
        self->_vendorStorage = v12;
      }
    }
  }

  v14 = self->_vendorStorage;

  return v14;
}

- (int64_t)modalDocumentController:(id)controller barStyleForStackItem:(id)item
{
  presentationType = [item presentationType];
  v6 = [presentationType isEqualToString:0x286B00C20];

  if (!v6)
  {
    return 0;
  }

  if (self->_hidesTabBar)
  {
    firstObject = [(NSMutableArray *)self->_navigationDocumentControllers firstObject];
    null = [MEMORY[0x277CBEB68] null];

    if (firstObject == null)
    {
      navigationController = 0;
    }

    else
    {
      navigationController = [firstObject navigationController];
    }
  }

  else
  {
    firstObject = [(SUUIApplicationController *)self _existingTabBarController];
    transientViewController = [firstObject transientViewController];
    if (!transientViewController)
    {
      transientViewController = [firstObject selectedViewController];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      navigationController2 = transientViewController;
    }

    else
    {
      navigationController2 = [transientViewController navigationController];
    }

    navigationController = navigationController2;
  }

  if (navigationController)
  {
    navigationBar = [navigationController navigationBar];
    barStyle = [navigationBar barStyle];
  }

  else
  {
    barStyle = 0;
  }

  return barStyle;
}

- (void)modalDocumentControllerDidFinish:(id)finish
{
  if ([(SUUIApplicationController *)self _needsStatusOverlay])
  {
    rootViewController = [(SUUIApplicationController *)self rootViewController];
    view = [rootViewController view];

    [view bounds];
    if ([(SUUIApplicationController *)self _usesFloatingStatusOverlayForWidth:v6])
    {
      [(SUUIApplicationController *)self _showFloatingStatusOverlayAnimated:1];
    }
  }

  _activeNavigationController = [(SUUIApplicationController *)self _activeNavigationController];
  topViewController = [_activeNavigationController topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [topViewController suui_viewWillAppear:1];
  }

  activeDocument = [(SUUIApplicationController *)self activeDocument];
  v9 = activeDocument;
  if (activeDocument)
  {
    [activeDocument onAppear];
  }
}

- (void)getModalSourceViewForElementIdentifier:(id)identifier completionBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  if (!self->_hidesTabBar)
  {
    _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
    transientViewController = [_existingTabBarController transientViewController];
    if (!transientViewController)
    {
      transientViewController = [_existingTabBarController selectedViewController];
    }

    topViewController = SUUIViewControllerGetTopMostViewController(transientViewController);
    goto LABEL_7;
  }

  _existingTabBarController = [(NSMutableArray *)self->_navigationDocumentControllers firstObject];
  null = [MEMORY[0x277CBEB68] null];

  if (_existingTabBarController != null)
  {
    transientViewController = [_existingTabBarController navigationController];
    topViewController = [transientViewController topViewController];
LABEL_7:
    v11 = topViewController;

    goto LABEL_8;
  }

  v11 = 0;
LABEL_8:

  if ([v11 conformsToProtocol:&unk_286C43A28])
  {
    [v11 getModalSourceViewForElementIdentifier:identifierCopy completionBlock:blockCopy];
  }

  else
  {
    blockCopy[2](blockCopy, 0);
  }
}

- (id)jsNavigationDocumentForNavigationController:(id)controller inContext:(id)context
{
  controllerCopy = controller;
  contextCopy = context;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [SUUIApplicationController jsNavigationDocumentForNavigationController:inContext:];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__91;
  v20 = __Block_byref_object_dispose__91;
  v21 = 0;
  _scriptAppContext = [(SUUIClientContext *)self->_clientContext _scriptAppContext];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__SUUIApplicationController_jsNavigationDocumentForNavigationController_inContext___block_invoke;
  v13[3] = &unk_2798FD660;
  v15 = &v16;
  v13[4] = self;
  v9 = controllerCopy;
  v14 = v9;
  [_scriptAppContext evaluateDelegateBlockSync:v13];

  v10 = v17[5];
  if (v10)
  {
    v11 = [(SUUIApplicationController *)self jsNavigationDocumentForNavigationDocumentController:v10 inContext:contextCopy];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v11;
}

uint64_t __83__SUUIApplicationController_jsNavigationDocumentForNavigationController_inContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _documentControllerForNavigationController:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)jsNavigationDocumentForNavigationDocumentController:(id)controller inContext:(id)context
{
  v32 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  contextCopy = context;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [SUUIApplicationController jsNavigationDocumentForNavigationDocumentController:inContext:];
  }

  v8 = [contextCopy objectForKeyedSubscript:@"TabBar"];
  v9 = [v8 toObjectOfClass:objc_opt_class()];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__91;
  v29 = __Block_byref_object_dispose__91;
  v30 = 0;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    _transientNavigationController = [(SUUIApplicationController *)self _transientNavigationController];
    v11 = v26[5];
    v26[5] = _transientNavigationController;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__SUUIApplicationController_jsNavigationDocumentForNavigationDocumentController_inContext___block_invoke;
    block[3] = &unk_2798F5B48;
    block[4] = self;
    block[5] = &v25;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  if (v26[5] == controllerCopy)
  {
    transientTab = [v9 transientTab];
    navigationDocument = [transientTab navigationDocument];
  }

  else
  {
    [v9 tabs];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    transientTab = v21 = 0u;
    v13 = [transientTab countByEnumeratingWithState:&v20 objects:v31 count:16];
    if (v13)
    {
      v14 = *v21;
LABEL_9:
      v15 = 0;
      while (1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(transientTab);
        }

        navigationDocument = [*(*(&v20 + 1) + 8 * v15) navigationDocument];
        navigationControllerDelegate = [navigationDocument navigationControllerDelegate];
        v18 = navigationControllerDelegate == controllerCopy;

        if (v18)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [transientTab countByEnumeratingWithState:&v20 objects:v31 count:16];
          if (v13)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      navigationDocument = 0;
    }
  }

  _Block_object_dispose(&v25, 8);

  return navigationDocument;
}

uint64_t __91__SUUIApplicationController_jsNavigationDocumentForNavigationDocumentController_inContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _transientNavigationController];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)navigationDocumentController:(id)controller requestsAccessToAppContextUsingBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __95__SUUIApplicationController_navigationDocumentController_requestsAccessToAppContextUsingBlock___block_invoke;
  v7[3] = &unk_2798F5D58;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(SUUIApplicationController *)self evaluateBlockWhenLoaded:v7];
}

void __95__SUUIApplicationController_navigationDocumentController_requestsAccessToAppContextUsingBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 32) _scriptAppContext];
  (*(v1 + 16))(v1, v2);
}

- (void)navigationDocumentStackDidChange:(id)change
{
  documents = [change documents];
  v5 = [documents count];

  if (v5)
  {

    [(SUUIApplicationController *)self _sendDidDisplayFirstPageIfNecessary];
  }
}

- (void)tabBarController:(id)controller willDisplayViewController:(id)viewController
{
  viewControllerCopy = viewController;
  viewControllers = [controller viewControllers];
  v8 = [viewControllers indexOfObject:viewControllerCopy];

  [(SUUIApplicationController *)self _dispatchTabBarOnNeedsContentForTabAtIndex:v8];
}

- (void)URLResolver:(id)resolver didFinishWithResult:(BOOL)result
{
  [(SUUIURLResolver *)self->_urlResolver setDelegate:0, result];
  [(SUUIURLResolver *)self->_urlResolver setNavigationControllerDelegate:0];
  urlResolver = self->_urlResolver;
  self->_urlResolver = 0;
}

- (BOOL)URLResolver:(id)resolver shouldPerformDefaultActionForURL:(id)l
{
  resolverCopy = resolver;
  lCopy = l;
  scriptContext = self->_scriptContext;
  if (scriptContext)
  {
    launchOptions = self->_launchOptions;
    if (launchOptions)
    {
      v10 = [(NSDictionary *)launchOptions mutableCopy];
      underlyingURL = [lCopy underlyingURL];
      absoluteString = [underlyingURL absoluteString];

      [(NSDictionary *)v10 setValue:absoluteString forKey:@"url"];
      v13 = self->_launchOptions;
      self->_launchOptions = v10;
    }

    else
    {
      absoluteString = [(SUUIApplicationController *)self _launchOptionsWithURL:lCopy];
      v13 = [SUUIURLResolver tabIdentifierForURL:lCopy];
      if (v13)
      {
        [absoluteString removeObjectForKey:@"url"];
        [absoluteString setObject:v13 forKeyedSubscript:@"selectedTabId"];
      }

      [(SUUIApplicationController *)self resumeApplicationWithOptions:absoluteString];
    }
  }

  return scriptContext == 0;
}

- (void)URLResolver:(id)resolver showURL:(id)l withTabIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
  [_existingTabBarController setTransientViewController:0 animated:0];

  v9 = [(SUUIApplicationController *)self selectTabWithIdentifier:identifierCopy];

  if (v9)
  {
    v10 = [v9 popToRootViewControllerAnimated:0];
    viewControllers = [v9 viewControllers];
    firstObject = [viewControllers firstObject];

    if (lCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [firstObject showExternalURL:lCopy];
    }
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  if ([(SUUIApplicationController *)self _sendNativeBackButtonMetricEvents]&& self->_lastNavigationControllerOperation == 2)
  {
    v7 = objc_alloc_init(MEMORY[0x277D69B68]);
    [v7 setActionType:*MEMORY[0x277D6A430]];
    [v7 setTargetType:*MEMORY[0x277D6A4D0]];
    [v7 setTargetIdentifier:@"back"];
    if (self->_lastPoppedViewController && ((objc_opt_respondsToSelector() & 1) == 0 ? (v8 = 0) : (-[UIViewController activeMetricsController](self->_lastPoppedViewController, "activeMetricsController"), v8 = objc_claimAutoreleasedReturnValue()), -[SUUIClientContext metricsPageContextForViewController:](self->_clientContext, "metricsPageContextForViewController:", self->_lastPoppedViewController), v9 = objc_claimAutoreleasedReturnValue(), [v7 setPageContext:v9], v9, v8))
    {
      [v8 recordEvent:v7];
    }

    else
    {
      [(SUUIApplicationController *)self recordMetricsEvent:v7 flushImmediately:0];
    }
  }

  v11 = [(SUUIApplicationController *)self _documentControllerForNavigationController:controllerCopy];
  [v11 ensureStackConsistencyForNavigationControllerOperation:self->_lastNavigationControllerOperation operationDidComplete:1];
  [(SUUIModalDocumentController *)self->_modalDocumentController ensureOverlayNavigationControllerStackConsistencyForNavigationController:controllerCopy];

  lastPoppedViewController = self->_lastPoppedViewController;
  self->_lastPoppedViewController = 0;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  [(SUUIApplicationController *)self _ensureStackConsistencyForNavigationController:controllerCopy];
  if ([(SUUIApplicationController *)self _needsStatusOverlay])
  {
    [(SUUIApplicationController *)self _showStatusOverlayForNavigationController:controllerCopy viewController:viewControllerCopy animated:animatedCopy];
  }

  v10 = [SUUINavigationControllerAssistant assistantForNavigationController:controllerCopy clientContext:self->_clientContext];
  [v10 willShowViewController:viewControllerCopy animated:animatedCopy];
  if (self->_lastNavigationControllerOperation == 2)
  {
    isInteractiveTransition = [controllerCopy isInteractiveTransition];
    scriptContext = self->_scriptContext;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __82__SUUIApplicationController_navigationController_willShowViewController_animated___block_invoke;
    v13[3] = &__block_descriptor_33_e19_v16__0__JSContext_8l;
    v14 = isInteractiveTransition;
    [(IKAppContext *)scriptContext evaluate:v13 completionBlock:0];
  }
}

void __82__SUUIApplicationController_navigationController_willShowViewController_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"itms"];
  v4 = [v3 toObjectOfClass:objc_opt_class()];

  [v4 sendOnNavigationStackWillPop:*(a1 + 32)];
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations
{
  topViewController = [orientations topViewController];
  v4 = topViewController;
  if (topViewController)
  {
    supportedInterfaceOrientations = [topViewController supportedInterfaceOrientations];
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      supportedInterfaceOrientations = 30;
    }

    else if (SUUIAllowsLandscapePhone())
    {
      supportedInterfaceOrientations = 26;
    }

    else
    {
      supportedInterfaceOrientations = 2;
    }
  }

  return supportedInterfaceOrientations;
}

- (void)tabBarController:(id)controller didEndCustomizingViewControllers:(id)controllers changed:(BOOL)changed
{
  changedCopy = changed;
  v38 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  if (changedCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = controllersCopy;
    obj = controllersCopy;
    v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      v27 = v31;
      do
      {
        v12 = 0;
        do
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v33 + 1) + 8 * v12);
          navigationDocumentControllers = self->_navigationDocumentControllers;
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __87__SUUIApplicationController_tabBarController_didEndCustomizingViewControllers_changed___block_invoke;
          v32[3] = &unk_2798FB268;
          v32[4] = v13;
          v15 = [(NSMutableArray *)navigationDocumentControllers indexOfObjectPassingTest:v32, v26, v27];
          if (v15 != 0x7FFFFFFFFFFFFFFFLL || (tabBarItems = self->_tabBarItems, v30[0] = MEMORY[0x277D85DD0], v30[1] = 3221225472, v31[0] = __87__SUUIApplicationController_tabBarController_didEndCustomizingViewControllers_changed___block_invoke_2, v31[1] = &unk_2798FD688, v31[2] = v13, v15 = [(NSArray *)tabBarItems indexOfObjectPassingTest:v30], v15 != 0x7FFFFFFFFFFFFFFFLL))
          {
            v17 = v15;
            v18 = [(NSMutableArray *)self->_navigationDocumentControllers objectAtIndex:v15];
            [(NSMutableArray *)v8 addObject:v18];

            v19 = [(NSArray *)self->_tabBarItems objectAtIndex:v17];
            [v29 addObject:v19];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v10);
    }

    v20 = self->_navigationDocumentControllers;
    self->_navigationDocumentControllers = v8;
    v21 = v8;

    v22 = [v29 copy];
    v23 = self->_tabBarItems;
    self->_tabBarItems = v22;

    [(IKAppContext *)self->_scriptContext evaluate:&__block_literal_global_291 completionBlock:0];
    delegate = [(SUUIApplicationController *)self delegate];
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      [delegate applicationDidCustomizeTabBarItems:self];
    }

    controllersCopy = v26;
  }
}

BOOL __87__SUUIApplicationController_tabBarController_didEndCustomizingViewControllers_changed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB68] null];
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v3 navigationController];
    v6 = v5 == *(a1 + 32);
  }

  return v6;
}

BOOL __87__SUUIApplicationController_tabBarController_didEndCustomizingViewControllers_changed___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 customRootViewController];
  v4 = v3 == *(a1 + 32);

  return v4;
}

void __87__SUUIApplicationController_tabBarController_didEndCustomizingViewControllers_changed___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"TabBar"];
  v3 = [v2 toObjectOfClass:objc_opt_class()];

  [v3 sendOnUpdate];
}

- (void)tabBarController:(id)controller didReselectViewController:(id)viewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  delegate = [(SUUIApplicationController *)self delegate];
  allViewControllers = [controllerCopy allViewControllers];

  v9 = [allViewControllers indexOfObjectIdenticalTo:viewControllerCopy];
  if (v9 < [(NSArray *)self->_tabBarItems count]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [(NSArray *)self->_tabBarItems objectAtIndex:v9];
    [delegate application:self didReselectTabBarItem:v10];
  }
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  allViewControllers = [controllerCopy allViewControllers];
  v8 = [allViewControllers indexOfObjectIdenticalTo:viewControllerCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_21;
  }

  v9 = v8;
  v10 = SUUITabBarControllerGetMoreNavigationController(controllerCopy);
  if (v10 && (v11 = [allViewControllers indexOfObjectIdenticalTo:v10], v9 >= v11))
  {
    if (v9 <= v11)
    {
      goto LABEL_8;
    }

    v12 = [(NSMutableArray *)self->_navigationDocumentControllers objectAtIndex:v9 - 1];
    null = [MEMORY[0x277CBEB68] null];

    if (v12 != null)
    {
      v14 = v12;
      v15 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = [(NSMutableArray *)self->_navigationDocumentControllers objectAtIndex:v9];
    null2 = [MEMORY[0x277CBEB68] null];

    if (v12 != null2)
    {
      v14 = v12;
      v15 = 0;
LABEL_6:
      [v14 setMoreNavigationController:v15];
    }
  }

LABEL_8:
  [(SUUIApplicationController *)self _dispatchTabBarOnSelect];
  [(SUUIApplicationController *)self _tintTabBarWithViewController:viewControllerCopy];
  navigationController = [(SUUIApplicationController *)self _overlayNavigationControllerForViewController:viewControllerCopy];
  if (!navigationController)
  {
    navigationController = [viewControllerCopy navigationController];
  }

  if ([(SUUIApplicationController *)self _needsStatusOverlay])
  {
    topViewController = [navigationController topViewController];
    [(SUUIApplicationController *)self _showStatusOverlayForNavigationController:navigationController viewController:topViewController animated:0];
  }

  if (SUUIUserInterfaceIdiom(self->_clientContext) == 1 && navigationController)
  {
    rootViewController = [(SUUIApplicationController *)self rootViewController];
    view = [rootViewController view];

    [view bounds];
    if (v20 > SUUICompactThreshold())
    {
      [(SUUIModalDocumentController *)self->_modalDocumentController presentOverlayViewControllersFromNavigationController:navigationController];

      navigationController = 0;
    }

    [(SUUIModalDocumentController *)self->_modalDocumentController setOverlayNavigationController:navigationController withTransitionCoordinator:0];
  }

  delegate = [(SUUIApplicationController *)self delegate];
  if (v9 < [(NSArray *)self->_tabBarItems count]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v22 = [(NSArray *)self->_tabBarItems objectAtIndex:v9];
    [delegate application:self didSelectTabBarItem:v22];
  }

LABEL_21:
}

- (BOOL)tabBarController:(id)controller shouldFallbackToRootForController:(id)forController
{
  forControllerCopy = forController;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [forControllerCopy topViewController];

    forControllerCopy = topViewController;
  }

  isEditing = [forControllerCopy isEditing];

  return isEditing ^ 1;
}

- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([controllerCopy containsTransientViewControllerOnly])
  {
    v8 = 0;
  }

  else
  {
    scriptLoadState = self->_scriptLoadState;
    if (scriptLoadState == 1)
    {
      [(SUUIApplicationController *)self _retryAfterFailure];
    }

    else if (scriptLoadState == 4)
    {
      [(SUUIApplicationController *)self _recordTabBarMetricsEventToSelectViewController:viewControllerCopy];
    }

    [(SUUIApplicationController *)self setUserInterfaceOverrideOnTabBarController:controllerCopy forViewController:viewControllerCopy];
    v8 = 1;
  }

  return v8;
}

- (void)setUserInterfaceOverrideOnTabBarController:(id)controller forViewController:(id)viewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  viewControllers = [controllerCopy viewControllers];
  v8 = [viewControllers indexOfObjectIdenticalTo:viewControllerCopy];

  if (v8 >= [(NSArray *)self->_tabBarItems count])
  {
    v10 = 0;
  }

  else
  {
    v9 = [(NSArray *)self->_tabBarItems objectAtIndex:v8];
    if ([v9 barTintStyle] == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = [v9 barTintStyle] == 0;
    }
  }

  [controllerCopy setForcedUserInterfaceStyle:v10];
  [controllerCopy setNeedsUserInterfaceAppearanceUpdate];
}

- (void)tabBarController:(id)controller willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  v11 = self->_floatingStatusOverlayViewController != 0;
  v12 = [(SUUIApplicationController *)self _usesFloatingStatusOverlayForWidth:width];
  if ([(SUUIApplicationController *)self _needsStatusOverlay]&& !v12)
  {
    SUUITabBarControllerSetFloatingOverlayViewControllerAnimated(controllerCopy, 0, [coordinatorCopy isAnimated]);
    floatingStatusOverlayViewController = self->_floatingStatusOverlayViewController;
    self->_floatingStatusOverlayViewController = 0;
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __93__SUUIApplicationController_tabBarController_willTransitionToSize_withTransitionCoordinator___block_invoke;
  v39[3] = &unk_2798FD6B0;
  v39[4] = self;
  v42 = width;
  v43 = height;
  v44 = v11;
  v45 = v12;
  v14 = controllerCopy;
  v40 = v14;
  v15 = coordinatorCopy;
  v41 = v15;
  [v15 animateAlongsideTransition:0 completion:v39];
  delegate = [(SUUIApplicationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate application:self willTransitionToSize:v15 withTransitionCoordinator:{width, height}];
  }

  selectedViewController = [v14 selectedViewController];
  clientContext = [(SUUIApplicationController *)self clientContext];
  rootViewController = [(SUUIApplicationController *)self rootViewController];
  view = [rootViewController view];
  [view bounds];
  v22 = [clientContext tabBarStyleForWidth:v21];

  clientContext2 = [(SUUIApplicationController *)self clientContext];
  v24 = [clientContext2 tabBarStyleForWidth:width];

  v25 = v24 == 0;
  v26 = v22 == 0;
  v38 = delegate;
  if ([selectedViewController conformsToProtocol:&unk_286C96900])
  {
    v25 = [selectedViewController documentViewControllerIsCompactForWidth:width];
    rootViewController2 = [(SUUIApplicationController *)self rootViewController];
    view2 = [rootViewController2 view];
    [view2 bounds];
    v26 = [selectedViewController documentViewControllerIsCompactForWidth:v29];
  }

  presentedViewController = [selectedViewController presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (((v22 == v24) & ((v26 ^ v25) ^ 1)) == 0 && (isKindOfClass & 1) == 0)
  {
    delegate2 = [(SUUIApplicationController *)self delegate];
    v33 = objc_opt_respondsToSelector();

    if ((v33 & 1) == 0 || (-[SUUIApplicationController delegate](self, "delegate"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 application:self shouldDismissPopoverOnTraitCollectionChange:presentedViewController], v34, v35))
    {
      if (presentedViewController && [presentedViewController modalPresentationStyle] == 7)
      {
        [presentedViewController dismissViewControllerAnimated:0 completion:0];
      }
    }
  }

  v36 = [(SUUIApplicationController *)self _overlayNavigationControllerForViewController:selectedViewController];
  if (SUUIUserInterfaceIdiom(self->_clientContext) == 1 && v36)
  {
    if (width <= SUUICompactThreshold())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    [(SUUIModalDocumentController *)self->_modalDocumentController setOverlayNavigationController:v37 withTransitionCoordinator:v15];
  }
}

uint64_t __93__SUUIApplicationController_tabBarController_willTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) sendApplicationWindowSizeDidUpdate:{*(a1 + 56), *(a1 + 64)}];
  result = [*(a1 + 32) _needsStatusOverlay];
  if (!result)
  {
    return result;
  }

  v3 = *(a1 + 73);
  if (*(a1 + 72) == v3)
  {
    return result;
  }

  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 _removeStatusOverlayFromAllNavigationControllers];
    v5 = [*(*(a1 + 32) + 264) navigationController];
    v18 = [SUUINavigationControllerAssistant existingAssistantForNavigationController:v5];

    [v18 setStatusOverlayProvider:0];
    v6 = [*(a1 + 40) allViewControllers];
    v7 = [v6 count];
    v8 = [*(a1 + 40) viewControllers];
    v9 = [v8 count];

    if (v7 > v9)
    {
      v10 = SUUITabBarControllerGetMoreNavigationController(*(a1 + 40));
      v11 = [SUUINavigationControllerAssistant existingAssistantForNavigationController:v10];
      [v11 setStatusOverlayProvider:0];
    }

    v12 = [*(a1 + 32) _showFloatingStatusOverlayAnimated:{objc_msgSend(*(a1 + 48), "isAnimated")}];
    goto LABEL_10;
  }

  v12 = [v4 _activeNavigationController];
  v13 = v12;
  if (v12)
  {
    v18 = v12;
    v14 = [SUUINavigationControllerAssistant assistantForNavigationController:v12 clientContext:*(*(a1 + 32) + 32)];
    v15 = *(a1 + 32);
    v16 = [v18 topViewController];
    v17 = [v15 _statusOverlayProviderForViewController:v16];
    [v14 setStatusOverlayProvider:v17];

LABEL_10:
    v13 = v18;
  }

  return MEMORY[0x2821F96F8](v12, v13);
}

- (unint64_t)tabBarControllerSupportedInterfaceOrientations:(id)orientations
{
  orientationsCopy = orientations;
  transientViewController = [orientationsCopy transientViewController];
  if (transientViewController || ([orientationsCopy selectedViewController], (transientViewController = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = transientViewController;
    supportedInterfaceOrientations = [transientViewController supportedInterfaceOrientations];
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      supportedInterfaceOrientations = 30;
    }

    else if (SUUIAllowsLandscapePhone())
    {
      supportedInterfaceOrientations = 26;
    }

    else
    {
      supportedInterfaceOrientations = 2;
    }
  }

  return supportedInterfaceOrientations;
}

- (void)_previewDocumentIsActiveChangeNotification:(id)notification
{
  notificationCopy = notification;
  if (self->_previewDocumentController)
  {
    v12 = notificationCopy;
    object = [notificationCopy object];
    previewDocumentController = self->_previewDocumentController;
    if (object == previewDocumentController)
    {
      isPreviewActive = [(SUUIPreviewDocumentController *)previewDocumentController isPreviewActive];

      notificationCopy = v12;
      if (isPreviewActive)
      {
        goto LABEL_8;
      }

      object = [MEMORY[0x277CCAB98] defaultCenter];
      name = [v12 name];
      [(SUUIPreviewDocumentController *)object removeObserver:self name:name object:self->_previewDocumentController];

      v9 = self->_previewDocumentController;
      self->_previewDocumentController = 0;

      if (self->_floatingStatusOverlayViewController)
      {
        _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
        SUUITabBarControllerSetFloatingOverlayViewControllerAnimated(_existingTabBarController, 0, 1);

        floatingStatusOverlayViewController = self->_floatingStatusOverlayViewController;
        self->_floatingStatusOverlayViewController = 0;
      }

      [(SUUIPreviewDocumentController *)object postNotificationName:@"SUUIApplicationControllerPreviewOverlayDidChangeNotification" object:self userInfo:0];
    }

    notificationCopy = v12;
  }

LABEL_8:
}

- (void)_reloadAfterNetworkChange:(id)change
{
  v4 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUUIApplicationController__reloadAfterNetworkChange___block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __55__SUUIApplicationController__reloadAfterNetworkChange___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 216) == 1)
  {
    v2 = [MEMORY[0x277D7FD00] sharedInstance];
    v3 = [v2 networkType];

    if (v3)
    {
      v4 = *(a1 + 32);

      [v4 _retryAfterFailure];
    }
  }
}

- (void)_removeStatusOverlayFromAllNavigationControllers
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_navigationDocumentControllers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        null = [MEMORY[0x277CBEB68] null];

        if (v7 != null)
        {
          navigationController = [v7 navigationController];
          v10 = [SUUINavigationControllerAssistant existingAssistantForNavigationController:navigationController];

          [v10 setStatusOverlayProvider:0];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)_storeFrontChangeNotification:(id)notification
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SUUIApplicationController__storeFrontChangeNotification___block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__SUUIApplicationController__storeFrontChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D69A80] currentDevice];
  v9 = [v2 storeFrontIdentifier];

  v3 = [*(*(a1 + 32) + 32) storeFrontIdentifier];
  v4 = *(a1 + 32);
  if (v4[4] && ([v4 _isStoreFront:v3 equalToStoreFront:v9] & 1) == 0)
  {
    v5 = [*(*(a1 + 32) + 208) appScriptFallbackHandler];
    [v5 invalidate];

    v6 = [MEMORY[0x277D7FD50] sharedCache];
    [v6 invalidateAllURLBags];

    v7 = [MEMORY[0x277D69A20] defaultStore];
    [v7 reloadAccounts];

    if ([*(a1 + 32) _isDisplayingAccountViewController])
    {
      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      [v8 removeObserver:*(a1 + 32) name:@"SUAccountViewControllerDidDisappearNotification" object:0];
      [v8 addObserver:*(a1 + 32) selector:sel__resetUserInteraceForAccountViewDisappear_ name:@"SUAccountViewControllerDidDisappearNotification" object:0];
    }

    else
    {
      [*(a1 + 32) _resetUserInterfaceAfterStoreFrontChange];
    }
  }
}

- (int64_t)_applicationMode
{
  scriptLoadState = self->_scriptLoadState;
  if (scriptLoadState == 4)
  {
    return 2;
  }

  else
  {
    return scriptLoadState == 3;
  }
}

- (void)_resetDocumentControllers
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_navigationDocumentControllers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        null = [MEMORY[0x277CBEB68] null];

        if (v8 != null)
        {
          [v8 popAllDocuments];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(SUUINavigationDocumentController *)self->_transientNavigationDocument popAllDocuments];
  if ([(SUUIApplicationController *)self _applicationMode]== 2)
  {
    [(SUUIApplicationController *)self _reloadRootViewControllers];
  }
}

- (int64_t)_selectedTabBarIndex
{
  if (self->_hidesTabBar)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
  v4 = _existingTabBarController;
  if (_existingTabBarController)
  {
    selectedIndex = [_existingTabBarController selectedIndex];
  }

  else
  {
    selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return selectedIndex;
}

- (void)_setSelectedTabBarIndex:(int64_t)index
{
  _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    _transientNavigationDocument = [(SUUIApplicationController *)self _transientNavigationDocument];
    navigationController = [_transientNavigationDocument navigationController];

    [_existingTabBarController setTransientViewController:navigationController animated:0];
    [(SUUIApplicationController *)self _tintTabBarWithViewController:navigationController];
  }

  else
  {
    [_existingTabBarController setSelectedIndex:index];
    selectedViewController = [_existingTabBarController selectedViewController];
    [(SUUIApplicationController *)self _tintTabBarWithViewController:selectedViewController];

    navigationController = [_existingTabBarController selectedViewController];
    [(SUUIApplicationController *)self _updateOverlayNavigationController:navigationController];
  }
}

- (void)_stopApplication
{
  if (self->_scriptContext && self->_scriptLoadState != 6)
  {
    v3 = [[_SUUIApplicationShutdownHelper alloc] initWithApplicationController:self];
    shutdownHelper = self->_shutdownHelper;
    self->_shutdownHelper = v3;

    [(_SUUIApplicationShutdownHelper *)self->_shutdownHelper start];
    self->_scriptLoadState = 6;
    scriptContext = self->_scriptContext;

    [(IKAppContext *)scriptContext stop];
  }
}

- (SUUINavigationDocumentController)_transientNavigationController
{
  if (self->_hidesTabBar)
  {
    [(NSMutableArray *)self->_navigationDocumentControllers firstObject];
  }

  else
  {
    [(SUUIApplicationController *)self _transientNavigationDocument];
  }
  v2 = ;

  return v2;
}

- (void)_updateOverlayNavigationController:(id)controller
{
  v12 = [(SUUIApplicationController *)self _overlayNavigationControllerForViewController:controller];
  v5 = SUUIUserInterfaceIdiom(self->_clientContext) == 1;
  v4 = v12;
  v5 = !v5 || v12 == 0;
  if (!v5)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    keyWindow = [mEMORY[0x277D75128] keyWindow];
    [keyWindow bounds];
    v9 = v8;
    v10 = SUUICompactThreshold();

    if (v9 <= v10)
    {
      v11 = v12;
    }

    else
    {
      v11 = 0;
    }

    [(SUUIModalDocumentController *)self->_modalDocumentController setOverlayNavigationController:v11 withTransitionCoordinator:0];
    v4 = v12;
  }
}

- (id)_activeNavigationController
{
  if (!self->_hidesTabBar)
  {
    _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
    navigationController = SUUITabBarControllerGetActiveNavigationController(_existingTabBarController);
    goto LABEL_5;
  }

  _existingTabBarController = [(NSMutableArray *)self->_navigationDocumentControllers firstObject];
  null = [MEMORY[0x277CBEB68] null];

  if (_existingTabBarController != null)
  {
    navigationController = [_existingTabBarController navigationController];
LABEL_5:
    v5 = navigationController;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (void)_applicationDidEnterBackground:(id)background
{
  [(SUUIClientContext *)self->_clientContext sendApplicationDidEnterBackground];
  if (self->_stopApplicationOnBackgroundNotification)
  {
    self->_stopApplicationOnBackgroundNotification = 0;
    [(SUUIApplicationController *)self _removeObserversForReloadNotifications];
    [(_SUUIApplicationShutdownHelper *)self->_shutdownHelper stop];
    v4 = [[_SUUIApplicationShutdownHelper alloc] initWithApplicationController:self];
    shutdownHelper = self->_shutdownHelper;
    self->_shutdownHelper = v4;

    [(_SUUIApplicationShutdownHelper *)self->_shutdownHelper start];
    v6 = objc_opt_class();
    NSLog(&cfstr_ReloadingAppOn.isa, v6);

    [(SUUIApplicationController *)self _stopScriptContextForReload];
  }
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  [(SUUIClientContext *)self->_clientContext sendApplicationWillEnterForeground];
  if (self->_reloadApplicationOnForegroundNotification)
  {
    self->_reloadApplicationOnForegroundNotification = 0;
    if (self->_scriptLoadState == 1)
    {

      [(SUUIApplicationController *)self _retryAfterFailure];
    }

    else
    {

      [(SUUIApplicationController *)self _reloadApplication];
    }
  }
}

- (void)_dispatchTabBarOnNeedsContentForTabAtIndex:(unint64_t)index
{
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v3;
    v16 = v4;
    if ([(NSArray *)self->_tabBarItems count]> index)
    {
      v7 = [(NSArray *)self->_tabBarItems objectAtIndex:index];
      v8 = [(NSMutableArray *)self->_navigationDocumentControllers objectAtIndex:index];
      null = [MEMORY[0x277CBEB68] null];

      if (v8 == null || ([v8 documentStackItems], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, !v11))
      {
        if (self->_scriptLoadState == 3)
        {
          scriptContext = self->_scriptContext;
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __72__SUUIApplicationController__dispatchTabBarOnNeedsContentForTabAtIndex___block_invoke;
          v13[3] = &unk_2798F7538;
          v14 = v7;
          [(IKAppContext *)scriptContext evaluate:v13 completionBlock:0];
          self->_indexOfLastTabNeedingContent = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          self->_indexOfLastTabNeedingContent = index;
        }
      }
    }
  }
}

void __72__SUUIApplicationController__dispatchTabBarOnNeedsContentForTabAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"TabBar"];
  v4 = [v3 toObjectOfClass:objc_opt_class()];

  [v4 sendOnNeedsContentForTabBarItem:*(a1 + 32)];
}

void __52__SUUIApplicationController__dispatchTabBarOnSelect__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"TabBar"];
  v4 = [v2 toObjectOfClass:objc_opt_class()];

  v3 = [v4 invokeMethod:@"onSelect" withArguments:0];
}

- (id)_documentControllerForNavigationController:(id)controller
{
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_navigationDocumentControllers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      null = [MEMORY[0x277CBEB68] null];

      if (v10 != null)
      {
        navigationController = [v10 navigationController];

        if (navigationController == controllerCopy)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v13 = v10;

    if (v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_10:
  }

  v14 = [(SUUIModalDocumentController *)self->_modalDocumentController navigationDocumentForNavigationController:controllerCopy, v17];
  if (v14)
  {
    goto LABEL_13;
  }

  navigationController2 = [(SUUINavigationDocumentController *)self->_transientNavigationDocument navigationController];

  if (navigationController2 == controllerCopy)
  {
    v14 = self->_transientNavigationDocument;
LABEL_13:
    v13 = v14;
    goto LABEL_16;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (void)_ensureStackConsistencyForNavigationController:(id)controller
{
  controllerCopy = controller;
  self->_lastNavigationControllerOperation = [controllerCopy lastOperation];
  v4 = [(SUUIApplicationController *)self _documentControllerForNavigationController:controllerCopy];
  [v4 ensureStackConsistencyForNavigationControllerOperation:self->_lastNavigationControllerOperation operationDidComplete:0];
  if (self->_lastNavigationControllerOperation == 2)
  {
    disappearingViewController = [controllerCopy disappearingViewController];
  }

  else
  {
    disappearingViewController = 0;
  }

  lastPoppedViewController = self->_lastPoppedViewController;
  self->_lastPoppedViewController = disappearingViewController;
}

- (void)_failReloadWithError:(id)error
{
  errorCopy = error;
  _fallbackConfigurationDictionary = [(objc_class *)self->_clientContextClass _fallbackConfigurationDictionary];
  if (_fallbackConfigurationDictionary)
  {
    v5 = objc_opt_class();
    NSLog(&cfstr_DidFailLoading.isa, v5, errorCopy);
    [(SUUIApplicationController *)self _setClientContextWithDictionary:_fallbackConfigurationDictionary];
  }

  else
  {
    [(SUUIApplicationController *)self _failWithError:errorCopy];
  }
}

- (void)_failWithError:(id)error
{
  errorCopy = error;
  v5 = objc_opt_class();
  NSLog(&cfstr_DidFailWithErr.isa, v5, errorCopy);
  self->_scriptLoadState = 1;
  if (([(IKAppContext *)self->_scriptContext isValid]& 1) == 0)
  {
    scriptContext = self->_scriptContext;
    self->_scriptContext = 0;
  }

  [SUUIMetricsAppLaunchEvent withPendingLaunchEvent:&__block_literal_global_330];
  if (ISErrorIsEqual())
  {
    mEMORY[0x277CBAB70] = [MEMORY[0x277CBAB70] sharedURLCache];
    [mEMORY[0x277CBAB70] removeAllCachedResponses];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 application:self didFailToLoadWithError:errorCopy];
  }

  if (!self->_clientContext)
  {
    v11 = [(NSMutableArray *)self->_navigationDocumentControllers count];
    tabBarItems = self->_tabBarItems;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __44__SUUIApplicationController__failWithError___block_invoke_2;
    v16[3] = &unk_2798FD6D8;
    v16[4] = self;
    v16[5] = v11;
    [(NSArray *)tabBarItems enumerateObjectsUsingBlock:v16];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = *MEMORY[0x277D7FCC0];
  mEMORY[0x277D7FD00] = [MEMORY[0x277D7FD00] sharedInstance];
  [defaultCenter addObserver:self selector:sel__reloadAfterNetworkChange_ name:v14 object:mEMORY[0x277D7FD00]];

  self->_reloadApplicationOnForegroundNotification = 1;
}

void __44__SUUIApplicationController__failWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 date];
  [v4 timeIntervalSince1970];
  [v3 setLaunchFailureTime:?];
}

void __44__SUUIApplicationController__failWithError___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (*(a1 + 40) > a3)
  {
    v16 = v5;
    v6 = SUUIErrorDocumentTitle(*(*(a1 + 32) + 32));
    v7 = [v16 barTintStyle] == 1;
    v8 = [*(*(a1 + 32) + 160) objectAtIndex:a3];
    v9 = [MEMORY[0x277CBEB68] null];

    if (v8 != v9)
    {
      v10 = [v8 navigationController];
      v11 = [v10 viewControllers];
      v12 = [v11 count];

      if (!v12)
      {
        if (![v16 alwaysCreatesRootViewController] || (v13 = objc_msgSend(objc_alloc(objc_msgSend(v16, "rootViewControllerClass")), "initWithTabBarItem:", v16)) == 0)
        {
          v14 = objc_alloc(MEMORY[0x277D75E78]);
          v15 = [v14 initWithFrame:v6 title:v7 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
          v13 = objc_alloc_init(MEMORY[0x277D75D28]);
          [v13 setView:v15];
        }

        [v10 pushViewController:v13 animated:0];
      }
    }

    v5 = v16;
  }
}

- (void)_finishWillResignActiveWithDialogState:(BOOL)state
{
  v3 = *MEMORY[0x277D767B0];
  if (self->_resignActiveTaskID != *MEMORY[0x277D767B0])
  {
    stateCopy = state;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    if ([mEMORY[0x277D75128] applicationState])
    {
      if (stateCopy)
      {
        self->_ignoreDidBecomeActive = 1;
      }

      else
      {
        activationURL = self->_activationURL;
        self->_activationURL = 0;

        self->_ignoreDidBecomeActive = 0;
        [(SUUIClientContext *)self->_clientContext setPurchaseReferrerURL:0];
        [(SUUIApplicationController *)self suspendApplicationWithOptions:0];
      }
    }

    [mEMORY[0x277D75128] endBackgroundTask:self->_resignActiveTaskID];
    self->_resignActiveTaskID = v3;
  }
}

- (void)_fireBlocksAfterLoad
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_whenLoadedBlocks copy];
  whenLoadedBlocks = self->_whenLoadedBlocks;
  self->_whenLoadedBlocks = 0;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        (*(v10 + 16))(v10);
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (CGSize)sizeForNavigationDocument:(id)document
{
  documentCopy = document;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    navigationControllerDelegate = [documentCopy navigationControllerDelegate];
    if (navigationControllerDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      navigationController = [navigationControllerDelegate navigationController];
LABEL_8:
      tabBarController = navigationController;
      goto LABEL_14;
    }

    tabBarController = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    modalDocumentController = [documentCopy modalDocumentController];
    navigationControllerDelegate = [modalDocumentController _overlayNavigationController];

    if (navigationControllerDelegate)
    {
      navigationController = navigationControllerDelegate;
      navigationControllerDelegate = navigationController;
      goto LABEL_8;
    }

    modalDocumentController2 = [documentCopy modalDocumentController];
    _overlayViewController = [modalDocumentController2 _overlayViewController];

    if (_overlayViewController)
    {
      tabBarController = [(SUUIApplicationController *)self tabBarController];
    }

    else
    {
      tabBarController = 0;
    }

LABEL_14:
    if (tabBarController)
    {
      goto LABEL_16;
    }
  }

  tabBarController = [(SUUIApplicationController *)self tabBarController];
LABEL_16:
  v22 = 0;
  v23 = &v22;
  v24 = 0x3010000000;
  v25 = "";
  v26 = *MEMORY[0x277CBF3A8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    view = [tabBarController view];
    [view bounds];
    v12 = v23;
    v23[4] = v13;
    v12[5] = v14;
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__SUUIApplicationController_sizeForNavigationDocument___block_invoke;
    v19[3] = &unk_2798F5B48;
    v21 = &v22;
    v20 = tabBarController;
    dispatch_sync(MEMORY[0x277D85CD0], v19);
    view = v20;
  }

  v15 = *(v23 + 4);
  v16 = *(v23 + 5);
  _Block_object_dispose(&v22, 8);

  v17 = v15;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

void __55__SUUIApplicationController_sizeForNavigationDocument___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) view];
  [v5 bounds];
  v2 = *(*(a1 + 40) + 8);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
}

- (void)_handleScriptUnavailable
{
  self->_scriptLoadState = 4;
  [(SUUIApplicationController *)self _reloadRootViewControllers];

  [(SUUIApplicationController *)self _fireBlocksAfterLoad];
}

- (void)_invalidateApplication
{
  v24 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:0x286AECDA0 object:0];
  [defaultCenter removeObserver:self name:@"SUAccountViewControllerDidDisappearNotification" object:0];
  [(SUUIClientContext *)self->_clientContext _setApplicationController:0];
  [(SUUIClientContext *)self->_clientContext _setScriptAppContext:0];
  clientContext = self->_clientContext;
  self->_clientContext = 0;

  self->_didDisplayFirstPage = 0;
  scriptContext = self->_scriptContext;
  self->_scriptContext = 0;

  self->_scriptLoadState = 0;
  _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
  SUUITabBarControllerSetFloatingOverlayViewControllerAnimated(_existingTabBarController, 0, 0);
  previewDocumentController = self->_previewDocumentController;
  self->_previewDocumentController = 0;

  floatingStatusOverlayViewController = self->_floatingStatusOverlayViewController;
  self->_floatingStatusOverlayViewController = 0;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_navigationDocumentControllers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        null = [MEMORY[0x277CBEB68] null];

        if (v14 != null)
        {
          [v14 setDelegate:0];
          [v14 popAllDocuments];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  navigationDocumentControllers = self->_navigationDocumentControllers;
  self->_navigationDocumentControllers = 0;

  [(SUUIModalDocumentController *)self->_modalDocumentController setModalSourceViewProvider:0];
  [(SUUIModalDocumentController *)self->_modalDocumentController setNavigationControllerDelegate:0];
  [(SUUIModalDocumentController *)self->_modalDocumentController popAllDocuments];
  [(SUUIModalDocumentController *)self->_modalDocumentController setDelegate:0];
  modalDocumentController = self->_modalDocumentController;
  self->_modalDocumentController = 0;

  [(SUUINavigationDocumentController *)self->_transientNavigationDocument setDelegate:0];
  transientNavigationDocument = self->_transientNavigationDocument;
  self->_transientNavigationDocument = 0;

  [(SUUISimpleContainerViewController *)self->_navigationContainerViewController setContentViewController:0];
  [_existingTabBarController setTransientViewController:0 animated:0];
  [_existingTabBarController setViewControllers:0];
}

- (BOOL)_isDisplayingAccountViewController
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  rootViewController = [(SUUIApplicationController *)self rootViewController];
  presentedViewController = [rootViewController presentedViewController];
  v6 = [v3 initWithObjects:{presentedViewController, 0}];

  v7 = [v6 count];
  v8 = v7 != 0;
  if (v7)
  {
    while (1)
    {
      v9 = [v6 objectAtIndex:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      childViewControllers = [v9 childViewControllers];
      if ([childViewControllers count])
      {
        [v6 addObjectsFromArray:childViewControllers];
      }

      presentedViewController2 = [v9 presentedViewController];
      if (presentedViewController2 && ([childViewControllers containsObject:presentedViewController2] & 1) == 0)
      {
        [v6 addObject:presentedViewController2];
      }

      [v6 removeObjectAtIndex:0];
      v12 = [v6 count];
      v8 = v12 != 0;
      if (!v12)
      {
        goto LABEL_11;
      }
    }

    [v6 removeObjectAtIndex:0];
  }

LABEL_11:

  return v8;
}

- (BOOL)_isStoreFront:(id)front equalToStoreFront:(id)storeFront
{
  frontCopy = front;
  storeFrontCopy = storeFront;
  v7 = [frontCopy rangeOfString:@" "];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [frontCopy substringToIndex:v7];

    frontCopy = v8;
  }

  v9 = [storeFrontCopy rangeOfString:@" "];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [storeFrontCopy substringToIndex:v9];

    storeFrontCopy = v10;
  }

  v11 = [frontCopy isEqualToString:storeFrontCopy];

  return v11;
}

- (id)_launchOptionsWithURL:(id)l
{
  lCopy = l;
  underlyingURL = [lCopy underlyingURL];
  absoluteString = [underlyingURL absoluteString];

  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{absoluteString, @"url", 0}];
  referrerApplicationName = [lCopy referrerApplicationName];
  if (referrerApplicationName)
  {
    v9 = [MEMORY[0x277CBEBC0] URLWithString:absoluteString];
    v21 = v9;
    v10 = [objc_opt_class() _referrerAppForSourceApplication:referrerApplicationName launchURL:&v21];
    v11 = v21;

    absoluteString2 = [v11 absoluteString];

    [v7 setObject:absoluteString2 forKey:@"url"];
    [v7 setObject:v10 forKey:@"refApp"];
  }

  referrerURLString = [lCopy referrerURLString];

  if (referrerURLString)
  {
    [v7 setObject:referrerURLString forKey:@"refUrl"];
  }

  v14 = MEMORY[0x277CBEAC0];
  rootViewController = [(SUUIApplicationController *)self rootViewController];
  view = [rootViewController view];
  [view bounds];
  v19 = [v14 su_dictionaryWithSize:{v17, v18}];
  [v7 setObject:v19 forKey:@"windowSize"];

  return v7;
}

- (void)_legacyResolveExternalURL:(id)l
{
  urlResolver = self->_urlResolver;
  lCopy = l;
  [(SUUIURLResolver *)urlResolver setDelegate:0];
  [(SUUIURLResolver *)self->_urlResolver setNavigationControllerDelegate:0];
  v5 = self->_urlResolver;
  self->_urlResolver = 0;

  v6 = [[SUUIURLResolver alloc] initWithClientContext:self->_clientContext];
  v7 = self->_urlResolver;
  self->_urlResolver = v6;

  [(SUUIURLResolver *)self->_urlResolver setDelegate:self];
  [(SUUIURLResolver *)self->_urlResolver setNavigationControllerDelegate:self];
  v8 = self->_urlResolver;
  _operationQueue = [(SUUIApplicationController *)self _operationQueue];
  [(SUUIURLResolver *)v8 setOperationQueue:_operationQueue];

  [(SUUIURLResolver *)self->_urlResolver resolveURL:lCopy];
}

- (void)_loadApplicationScript
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_LoadApplicatio_0.isa, v4);

  self->_scriptLoadState = 2;
  delegate = [(SUUIApplicationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate bootstrapScriptURLForApplication:self];
    if (v6)
    {
      v7 = v6;
      [(SUUIApplicationController *)self _startScriptContextWithURL:v6];
LABEL_10:

      goto LABEL_11;
    }
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults stringForKey:@"SUUIITMLURL"];

  if (v7)
  {
LABEL_7:
    if ([v7 length])
    {
      v10 = [MEMORY[0x277CBEBC0] URLWithString:v7];
      [(SUUIApplicationController *)self _startScriptContextWithURL:v10];
    }

    else
    {
      [(SUUIApplicationController *)self _handleScriptUnavailable];
    }

    goto LABEL_10;
  }

  v9 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"appjs.v2"];
  if (v9)
  {
    v7 = v9;
    goto LABEL_7;
  }

  objc_initWeak(&location, self);
  uRLBag = [(SUUIClientContext *)self->_clientContext URLBag];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __51__SUUIApplicationController__loadApplicationScript__block_invoke;
  v19[3] = &unk_2798F7588;
  objc_copyWeak(&v20, &location);
  [uRLBag loadValueForKey:@"itml-store" completionBlock:v19];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
LABEL_11:
  v11 = [(NSDictionary *)self->_launchOptions valueForKey:@"url"];
  if (v11)
  {
    v12 = [(NSDictionary *)self->_launchOptions mutableCopy];
    v13 = [SUUIURL alloc];
    v14 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v11];
    v15 = [(SUUIURL *)v13 initWithURL:v14];

    v16 = [SUUIURLResolver tabIdentifierForURL:v15];
    if (v16)
    {
      [(NSDictionary *)v12 removeObjectForKey:@"url"];
      [(NSDictionary *)v12 setObject:v16 forKeyedSubscript:@"selectedTabId"];
    }

    else if ([(SUUIApplicationController *)self _shouldUseLegacyURLHandlingForExternalURL:v15])
    {
      [(NSDictionary *)v12 removeObjectForKey:@"url"];
      objc_storeStrong(&self->_legacyLaunchURL, v15);
    }

    launchOptions = self->_launchOptions;
    self->_launchOptions = v12;
  }
}

void __51__SUUIApplicationController__loadApplicationScript__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUUIApplicationController__loadApplicationScript__block_invoke_2;
  block[3] = &unk_2798F6508;
  v10 = v5;
  v7 = v5;
  objc_copyWeak(&v12, (a1 + 32));
  v11 = v6;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __51__SUUIApplicationController__loadApplicationScript__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v2 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
    [WeakRetained _startScriptContextWithURL:v2];
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = objc_loadWeakRetained((a1 + 48));
    WeakRetained = v4;
    if (v3)
    {
      [v4 _failWithError:*(a1 + 40)];
    }

    else
    {
      [v4 _handleScriptUnavailable];
    }
  }
}

- (id)_navigationContainerViewController
{
  navigationContainerViewController = self->_navigationContainerViewController;
  if (!navigationContainerViewController)
  {
    v4 = objc_alloc_init(SUUISimpleContainerViewController);
    v5 = self->_navigationContainerViewController;
    self->_navigationContainerViewController = v4;

    navigationContainerViewController = self->_navigationContainerViewController;
  }

  return navigationContainerViewController;
}

- (id)_newNavigationControllerWithTabBarItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0 || (v7 = objc_loadWeakRetained(&self->_delegate), [v7 application:self navigationControllerWithTabBarItem:itemCopy], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v9 = 0x277D7FE28;
    if (self->_scriptLoadState != 4)
    {
      v9 = 0x277D757A0;
    }

    v8 = objc_alloc_init(*v9);
    if ([itemCopy barTintStyle] == 1)
    {
      navigationBar = [v8 navigationBar];
      [navigationBar setBarStyle:1];
    }
  }

  [v8 setDelegate:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    section = [v8 section];

    if (!section)
    {
      clientInterface = [(SUUIClientContext *)self->_clientContext clientInterface];
      [v8 setClientInterface:clientInterface];
      v13 = [objc_alloc(MEMORY[0x277D7FE78]) initWithClientInterface:clientInterface sectionType:0 defaultPNGStyle:0];
      if (SUUIUserInterfaceIdiom(self->_clientContext) == 1)
      {
        v14 = [MEMORY[0x277D7FE70] defaultConfigurationWithClientInterface:clientInterface];
        [v13 setSearchFieldConfiguration:v14];
      }

      [v8 setSection:v13];
    }
  }

  if (self->_clientContext && (self->_scriptLoadState == 4 || [itemCopy alwaysCreatesRootViewController]) && (v15 = objc_msgSend(objc_alloc(objc_msgSend(itemCopy, "rootViewControllerClass")), "initWithTabBarItem:", itemCopy)) != 0)
  {
    view = v15;
    if (objc_opt_respondsToSelector())
    {
      [view setClientContext:self->_clientContext];
    }

    [v8 pushViewController:view animated:0];
  }

  else
  {
    view = [v8 view];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [view setBackgroundColor:systemBackgroundColor];
  }

  underlyingTabBarItem = [itemCopy underlyingTabBarItem];
  [v8 setTabBarItem:underlyingTabBarItem];

  return v8;
}

- (id)_operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setName:@"com.apple.iTunesStoreUI.SUUIApplicationController"];
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (id)_overlayNavigationControllerForViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    overlayNavigationController = controllerCopy;
LABEL_5:
    v5 = overlayNavigationController;
    goto LABEL_7;
  }

  if ([controllerCopy conformsToProtocol:&unk_286C96900])
  {
    overlayNavigationController = [controllerCopy overlayNavigationController];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (BOOL)_playPreviewForPreviewTemplate:(id)template
{
  templateCopy = template;
  previewURLString = [templateCopy previewURLString];
  if (previewURLString)
  {
    sessionManager = [MEMORY[0x277D7FDA8] sessionManager];
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:previewURLString];
    v7 = [sessionManager audioPlayerForURL:v6];
    v8 = v7;
    if (v7)
    {
      [v7 play];
    }

    else
    {
      stopAllAudioPlayerSessions = [sessionManager stopAllAudioPlayerSessions];
      v10 = [sessionManager startSessionWithURL:v6];
      [v10 setStoreItemIdentifier:{objc_msgSend(templateCopy, "itemIdentifier")}];
      [v10 play];
    }
  }

  return previewURLString != 0;
}

- (void)_recordTabBarMetricsEventToSelectViewController:(id)controller
{
  controllerCopy = controller;
  _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
  selectedIndex = [_existingTabBarController selectedIndex];
  viewControllers = [_existingTabBarController viewControllers];
  if (selectedIndex >= [viewControllers count])
  {
    v7 = 0;
  }

  else
  {
    v7 = [viewControllers objectAtIndex:selectedIndex];
  }

  v8 = [viewControllers indexOfObjectIdenticalTo:controllerCopy];
  if (v8 < [(NSArray *)self->_tabBarItems count])
  {
    v9 = objc_alloc_init(MEMORY[0x277D69B68]);
    [v9 setTargetType:*MEMORY[0x277D6A4E8]];
    v10 = [(NSArray *)self->_tabBarItems objectAtIndex:v8];
    metricsIdentifier = [v10 metricsIdentifier];
    [v9 setTargetIdentifier:metricsIdentifier];

    if (!v7)
    {
      goto LABEL_16;
    }

    if (objc_opt_respondsToSelector())
    {
      activeMetricsController = [v7 activeMetricsController];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        topViewController = [v7 topViewController];
        if (objc_opt_respondsToSelector())
        {
          activeMetricsController = [topViewController activeMetricsController];
        }

        else
        {
          activeMetricsController = 0;
        }
      }

      else
      {
        activeMetricsController = 0;
      }
    }

    v14 = [(SUUIClientContext *)self->_clientContext metricsPageContextForViewController:v7];
    [v9 setPageContext:v14];

    if (activeMetricsController)
    {
      [activeMetricsController recordEvent:v9];
    }

    else
    {
LABEL_16:
      [(SUUIApplicationController *)self recordMetricsEvent:v9 flushImmediately:0];
    }
  }
}

- (void)_reloadApplication
{
  [(SUUIApplicationController *)self _removeObserversForReloadNotifications];
  [(SUUIApplicationController *)self _invalidateApplication];
  [(SUUIApplicationController *)self loadApplication];

  [(SUUIApplicationController *)self _sendClientContextDidChange];
}

uint64_t __55__SUUIApplicationController__reloadRootViewControllers__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tabIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __55__SUUIApplicationController__reloadRootViewControllers__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"TabBar"];
  v3 = [v2 toObjectOfClass:objc_opt_class()];

  [v3 sendOnUpdate];
}

uint64_t __55__SUUIApplicationController__reloadRootViewControllers__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) count];
  v2 = *(a1 + 40);

  return [v2 _dispatchTabBarOnSelect];
}

- (void)_reloadTabBarWithClientContext:(id)context
{
  if (context)
  {
    clientContext = self->_clientContext;
    if (clientContext)
    {
      contextCopy = context;
      v7 = [(SUUIClientContext *)clientContext valueForConfigurationKey:@"tabs"];
      v6 = [contextCopy valueForConfigurationKey:@"tabs"];

      if (v6 && ([v7 isEqual:v6] & 1) == 0)
      {
        [(SUUIClientContext *)self->_clientContext _setValue:v6 forConfigurationKey:@"tabs"];
        [(SUUIApplicationController *)self _sendClientContextDidChange];
      }
    }
  }
}

- (void)_removeObserversForReloadNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D7FCC0] object:0];
}

- (void)_resetUserInterfaceAfterStoreFrontChange
{
  if ([(SUUIApplicationControllerOptions *)self->_options supportsFullApplicationReload])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"SUAccountViewControllerDidDisappearNotification" object:0];
    scriptContext = self->_scriptContext;
    if (scriptContext)
    {
      [(IKAppContext *)scriptContext stop];
    }

    else
    {
      [(SUUIApplicationController *)self _reloadApplication];
    }
  }
}

- (void)_retryAfterFailure
{
  [(SUUIApplicationController *)self _removeObserversForReloadNotifications];
  if (self->_tabBarController)
  {
    _transientNavigationDocument = [(SUUIApplicationController *)self _transientNavigationDocument];
    navigationController = [_transientNavigationDocument navigationController];

    [navigationController setViewControllers:MEMORY[0x277CBEBF8] animated:0];
    view = [navigationController view];
    [view layoutSubviews];

    [(SUUITabBarController *)self->_tabBarController setTransientViewController:0 animated:0];
  }

  launchOptions = self->_launchOptions;

  [(SUUIApplicationController *)self loadApplicationWithOptions:launchOptions];
}

- (void)_sendClientContextDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained applicationDidChangeClientContext:self];
  }
}

- (void)_sendDidDisplayFirstPageIfNecessary
{
  if (!self->_didDisplayFirstPage)
  {
    clientContext = self->_clientContext;
    rootViewController = [(SUUIApplicationController *)self rootViewController];
    view = [rootViewController view];
    [view bounds];
    [(SUUIClientContext *)clientContext sendApplicationWindowSizeDidUpdate:v6, v7];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    LOBYTE(rootViewController) = objc_opt_respondsToSelector();

    if (rootViewController)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 applicationDidDisplayFirstPage:self];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"SUUIApplicationPageDidDisplayNotification" object:0];

    self->_didDisplayFirstPage = 1;
  }
}

- (void)_setClientContextWithDictionary:(id)dictionary
{
  clientContextClass = self->_clientContextClass;
  dictionaryCopy = dictionary;
  v6 = [[clientContextClass alloc] initWithConfigurationDictionary:dictionaryCopy];

  [(SUUIApplicationController *)self setClientContext:v6];
  [(SUUIModalDocumentController *)self->_modalDocumentController setClientContext:self->_clientContext];
  [(SUUINavigationDocumentController *)self->_transientNavigationDocument setClientContext:self->_clientContext];
  v7 = +[SUUINearMeController sharedController];
  [v7 setClientContext:self->_clientContext];

  v8 = +[SUUIFamilyCircleController sharedController];
  [v8 setClientContext:self->_clientContext];

  [(SUUIApplicationController *)self _reloadRootViewControllers];
  [(SUUIApplicationController *)self _sendClientContextDidChange];

  [(SUUIApplicationController *)self _loadApplicationScript];
}

- (BOOL)_shouldUseLegacyURLHandlingForExternalURL:(id)l
{
  lCopy = l;
  actionString = [lCopy actionString];
  v10 = ([actionString isEqualToString:@"account"] & 1) != 0 || (objc_msgSend(actionString, "isEqualToString:", @"donate") & 1) != 0 || (objc_msgSend(actionString, "isEqualToString:", @"gift") & 1) != 0 || (objc_msgSend(actionString, "isEqualToString:", @"redeem") & 1) != 0 || (objc_msgSend(lCopy, "underlyingURL"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "host"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, !v8) || (+[SUUIURLResolver tabIdentifierForURL:](SUUIURLResolver, "tabIdentifierForURL:", lCopy), v9 = objc_claimAutoreleasedReturnValue(), v9, v9) || self->_scriptLoadState == 4;

  return v10;
}

- (void)_attemptAMSURLHandlingIfPossibleForExternalURL:(id)l fallback:(id)fallback
{
  v37 = *MEMORY[0x277D85DE8];
  lCopy = l;
  fallbackCopy = fallback;
  v8 = +[SUUIClientContext amsBag];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v11 = shouldLog | 2;
  }

  else
  {
    v11 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 & 2;
  }

  if (v13)
  {
    underlyingURL = [lCopy underlyingURL];
    [underlyingURL absoluteString];
    *(&location + 4) = LODWORD(location) = 138412290;
    LODWORD(v24) = 12;
    v15 = _os_log_send_and_compose_impl();

    if (v15)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &location, v24}];
      free(v15);
      SSFileLog();
    }
  }

  else
  {
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v17 = getAMSURLParserClass_softClass;
  v32 = getAMSURLParserClass_softClass;
  if (!getAMSURLParserClass_softClass)
  {
    *&location = MEMORY[0x277D85DD0];
    *(&location + 1) = 3221225472;
    v34 = __getAMSURLParserClass_block_invoke;
    v35 = &unk_2798FB038;
    v36 = &v29;
    __getAMSURLParserClass_block_invoke(&location);
    v17 = v30[3];
  }

  v18 = v17;
  _Block_object_dispose(&v29, 8);
  v19 = [[v17 alloc] initWithBag:v8];
  underlyingURL2 = [lCopy underlyingURL];
  v21 = [v19 typeForURL:underlyingURL2];

  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __85__SUUIApplicationController__attemptAMSURLHandlingIfPossibleForExternalURL_fallback___block_invoke;
  v25[3] = &unk_2798FD728;
  v22 = fallbackCopy;
  v27 = v22;
  objc_copyWeak(&v28, &location);
  v23 = lCopy;
  v26 = v23;
  [v21 addFinishBlock:v25];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __85__SUUIApplicationController__attemptAMSURLHandlingIfPossibleForExternalURL_fallback___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__SUUIApplicationController__attemptAMSURLHandlingIfPossibleForExternalURL_fallback___block_invoke_2;
  block[3] = &unk_2798FD700;
  v10 = v6;
  v13 = a1[5];
  v11 = v5;
  v7 = v5;
  v8 = v6;
  objc_copyWeak(&v14, a1 + 6);
  v12 = a1[4];
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v14);
}

void __85__SUUIApplicationController__attemptAMSURLHandlingIfPossibleForExternalURL_fallback___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D69B38] sharedConfig];
  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (v2)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v21 = 138543362;
      v22 = v8;
      LODWORD(v20) = 12;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
LABEL_12:

        goto LABEL_19;
      }

      v6 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{4, &v21, v20}];
      free(v9);
      SSFileLog();
    }

    goto LABEL_12;
  }

  if (v7)
  {
    v10 = *(a1 + 40);
    v21 = 138543362;
    v22 = v10;
    LODWORD(v20) = 12;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_17;
    }

    v6 = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, &v21, v20}];
    free(v11);
    SSFileLog();
  }

LABEL_17:
  v12 = [*(a1 + 40) integerValue];
  if (v12 < 3)
  {
    v13 = v12;
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained[34] setDelegate:0];
    [WeakRetained[34] setNavigationControllerDelegate:0];
    v15 = WeakRetained[34];
    WeakRetained[34] = 0;

    v16 = [[SUUIURLResolver alloc] initWithClientContext:WeakRetained[4]];
    v17 = WeakRetained[34];
    WeakRetained[34] = v16;

    [WeakRetained[34] setDelegate:WeakRetained];
    [WeakRetained[34] setNavigationControllerDelegate:WeakRetained];
    v18 = WeakRetained[34];
    v19 = [WeakRetained _operationQueue];
    [v18 setOperationQueue:v19];

    [WeakRetained[34] amsResolveURL:*(a1 + 48) forURLType:v13];
    return;
  }

LABEL_19:
  (*(*(a1 + 56) + 16))();
}

- (void)_showFloatingStatusOverlayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (!self->_floatingStatusOverlayViewController)
  {
    previewDocumentController = self->_previewDocumentController;
    if (!previewDocumentController)
    {
      previewDocumentController = self->_statusOverlayProvider;
    }

    v6 = previewDocumentController;
    _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
    traitCollection = [_existingTabBarController traitCollection];

    v9 = [v6 overlayViewControllerWithBackgroundStyle:{objc_msgSend(traitCollection, "userInterfaceStyle") != 1}];
    floatingStatusOverlayViewController = self->_floatingStatusOverlayViewController;
    self->_floatingStatusOverlayViewController = v9;
  }

  _existingTabBarController2 = [(SUUIApplicationController *)self _existingTabBarController];
  SUUITabBarControllerSetFloatingOverlayViewControllerAnimated(_existingTabBarController2, self->_floatingStatusOverlayViewController, animatedCopy);
}

- (void)_showStatusOverlayForNavigationController:(id)controller viewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  rootViewController = [(SUUIApplicationController *)self rootViewController];
  view = [rootViewController view];

  [view bounds];
  if ([(SUUIApplicationController *)self _usesFloatingStatusOverlayForWidth:v12])
  {
    [(SUUIApplicationController *)self _showFloatingStatusOverlayAnimated:animatedCopy];
  }

  else if (controllerCopy)
  {
    v13 = [SUUINavigationControllerAssistant assistantForNavigationController:controllerCopy clientContext:self->_clientContext];
    statusOverlayProvider = [v13 statusOverlayProvider];
    transitionCoordinator = [viewControllerCopy transitionCoordinator];
    v16 = [(SUUIApplicationController *)self _statusOverlayProviderForViewController:viewControllerCopy];
    [v13 setStatusOverlayProvider:v16 animated:animatedCopy];

    [v13 willShowViewController:viewControllerCopy animated:animatedCopy];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __95__SUUIApplicationController__showStatusOverlayForNavigationController_viewController_animated___block_invoke;
    v19[3] = &unk_2798FBAB0;
    v20 = v13;
    v21 = statusOverlayProvider;
    v17 = statusOverlayProvider;
    v18 = v13;
    [transitionCoordinator notifyWhenInteractionEndsUsingBlock:v19];
  }
}

void __95__SUUIApplicationController__showStatusOverlayForNavigationController_viewController_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isCancelled])
  {
    [*(a1 + 32) setStatusOverlayProvider:*(a1 + 40) animated:{objc_msgSend(v3, "isAnimated")}];
  }
}

- (void)_startScriptContextWithURL:(id)l
{
  v33 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  NSLog(&cfstr_StartScriptWit.isa, v6, lCopy);

  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 2;
    }

    if (!v14)
    {
      goto LABEL_21;
    }

    LODWORD(v32) = 138412290;
    *(&v32 + 4) = lCopy;
    LODWORD(v31) = 12;
    goto LABEL_19;
  }

  if (self->_scriptContext)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    shouldLog2 = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v9 = shouldLog2 | 2;
    }

    else
    {
      v9 = shouldLog2;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (!v11)
    {
      goto LABEL_21;
    }

    LODWORD(v32) = 138412290;
    *(&v32 + 4) = lCopy;
    LODWORD(v31) = 12;
LABEL_19:
    v15 = _os_log_send_and_compose_impl();

    if (!v15)
    {
LABEL_22:

      goto LABEL_23;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &v32, v31, v32}];
    free(v15);
    SSFileLog();
LABEL_21:

    goto LABEL_22;
  }

  SUUIInitializeDOMFeatureFactory();
  SUUIInitializeViewElementFactory();
  SUUIInitializeViewElementStyleFactory();
  v16 = [lCopy copy];
  applicationScriptURL = self->_applicationScriptURL;
  self->_applicationScriptURL = v16;

  uRLBag = [(SUUIClientContext *)self->_clientContext URLBag];
  v19 = MEMORY[0x277D69C88];
  uRLBagContext = [uRLBag URLBagContext];
  [v19 setURLBag:uRLBag forContext:uRLBagContext];

  requiresLocalBootstrapScript = [(SUUIApplicationControllerOptions *)self->_options requiresLocalBootstrapScript];
  v22 = [objc_alloc(MEMORY[0x277D1B028]) initWithApplication:self mode:requiresLocalBootstrapScript delegate:self];
  scriptContext = self->_scriptContext;
  self->_scriptContext = v22;

  [(IKAppContext *)self->_scriptContext setRemoteInspectionEnabled:1];
  [(IKAppContext *)self->_scriptContext setMescalPrimeEnabledForXHRRequests:self->_mescalPrimeEnabledForXHRRequests];
  v24 = self->_scriptContext;
  [(SUUIApplicationControllerOptions *)self->_options bootstrapScriptTimeoutInterval];
  [(IKAppContext *)v24 setAppScriptTimeoutInterval:?];
  [(SUUIClientContext *)self->_clientContext _setScriptAppContext:self->_scriptContext];
  if ([(SUUIApplicationControllerOptions *)self->_options isBootstrapScriptFallbackEnabled])
  {
    storeFrontIdentifier = [(SUUIClientContext *)self->_clientContext storeFrontIdentifier];
    if (storeFrontIdentifier)
    {
      v26 = storeFrontIdentifier;
      isBootstrapScriptFallbackDisabled = [(SUUIClientContext *)self->_clientContext isBootstrapScriptFallbackDisabled];

      if (!isBootstrapScriptFallbackDisabled)
      {
        storeFrontIdentifier2 = [(SUUIClientContext *)self->_clientContext storeFrontIdentifier];
        v29 = [SUUIBootstrapScriptFallback cacheFilenameForStoreFrontIdentifier:storeFrontIdentifier2];

        v30 = [[SUUIBootstrapScriptFallback alloc] initWithFilename:v29];
        [(SUUIApplicationControllerOptions *)self->_options bootstrapScriptFallbackMaximumAge];
        [(SUUIBootstrapScriptFallback *)v30 setMaximumAge:?];
        [(IKAppContext *)self->_scriptContext setAppScriptFallbackHandler:v30];
      }
    }
  }

  [(IKAppContext *)self->_scriptContext start];
  [SUUIMetricsAppLaunchEvent withPendingLaunchEvent:&__block_literal_global_388];

LABEL_23:
}

void __56__SUUIApplicationController__startScriptContextWithURL___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 date];
  [v4 timeIntervalSince1970];
  [v3 setBootstrapStartTime:?];
}

- (void)_jsLaunchFinishedWithLaunchMetrics:(id)metrics
{
  metricsCopy = metrics;
  v5 = +[SUUIMetricsAppLaunchEvent consumePendingLaunchEvent];
  if (v5)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    [v5 setLaunchEndTime:?];

    v7 = [metricsCopy objectForKeyedSubscript:@"jsResourcesStartTime"];
    if (v7)
    {
      [SUUIMetricsUtilities timeIntervalFromJSTime:v7];
      [v5 setJsResourcesStartTime:?];
    }

    v8 = [metricsCopy objectForKeyedSubscript:@"jsResourcesEndTime"];
    if (v8)
    {
      [SUUIMetricsUtilities timeIntervalFromJSTime:v8];
      [v5 setJsResourcesEndTime:?];
    }

    v9 = [metricsCopy objectForKeyedSubscript:@"initialTabMetrics"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKeyedSubscript:@"requestStartTime"];
      if (v11)
      {
        [SUUIMetricsUtilities timeIntervalFromJSTime:v11];
        [v5 setInitialTabRequestStartTime:?];
      }

      v12 = [v10 objectForKeyedSubscript:@"responseStartTime"];
      if (v12)
      {
        [SUUIMetricsUtilities timeIntervalFromJSTime:v12];
        [v5 setInitialTabResponseStartTime:?];
      }

      v13 = [v10 objectForKeyedSubscript:@"responseEndTime"];
      if (v13)
      {
        [SUUIMetricsUtilities timeIntervalFromJSTime:v13];
        [v5 setInitialTabResponseEndTime:?];
      }
    }

    if (+[SUUIMetricsUtilities shouldLogTimingMetrics])
    {
      SSDebugLevel();
      SSDebugFileLevel();
      v16 = v5;
      SSDebugLog();
    }

    if (+[SUUIMetricsUtilities showEventNotifications])
    {
      v14 = +[SUUIStatusBarAlertCenter sharedCenter];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __64__SUUIApplicationController__jsLaunchFinishedWithLaunchMetrics___block_invoke;
      v17[3] = &unk_2798F5BE8;
      v18 = v5;
      [v14 showMessage:@"App Launched" withStyle:0 forDuration:v17 actionBlock:0.0];
    }

    [(SUUIApplicationController *)self recordMetricsEvent:v5 flushImmediately:0];
  }

  else
  {
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext getDefaultMetricsControllerWithCompletionBlock:&__block_literal_global_416];
    }
  }
}

- (id)_statusOverlayProviderForViewController:(id)controller
{
  controllerCopy = controller;
  previewDocumentController = self->_previewDocumentController;
  if (previewDocumentController)
  {
    goto LABEL_2;
  }

  if (self->_statusOverlayProvider)
  {
    v8 = objc_opt_respondsToSelector();
    previewDocumentController = self->_statusOverlayProvider;
    if ((v8 & 1) == 0)
    {
LABEL_2:
      v6 = previewDocumentController;
      goto LABEL_3;
    }

    if ([previewDocumentController shouldShowStatusOverlayForViewController:controllerCopy])
    {
      previewDocumentController = self->_statusOverlayProvider;
      goto LABEL_2;
    }
  }

  v6 = 0;
LABEL_3:

  return v6;
}

- (void)_stopScriptContextForReload
{
  [(SUUIMetricsController *)self->_metricsController flushImmediately];
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];
  v10 = SSVStoreFrontIdentifierForAccount();

  if (v10)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v6 = [SUUIClientContext _cachePathForStoreFrontIdentifier:v10];
    [v5 removeItemAtPath:v6 error:0];
  }

  if ([MEMORY[0x277D7FD60] sharedCFURLCache])
  {
    CFURLCacheRemoveAllCachedResponses();
  }

  mEMORY[0x277CBAB70] = [MEMORY[0x277CBAB70] sharedURLCache];
  [mEMORY[0x277CBAB70] removeAllCachedResponses];

  mEMORY[0x277D7FD50] = [MEMORY[0x277D7FD50] sharedCache];
  [mEMORY[0x277D7FD50] invalidateAllURLBags];

  appScriptFallbackHandler = [(IKAppContext *)self->_scriptContext appScriptFallbackHandler];
  [appScriptFallbackHandler invalidate];

  self->_scriptLoadState = 5;
  [(IKAppContext *)self->_scriptContext stop];
}

- (void)_tintTabBarWithViewController:(id)controller
{
  controllerCopy = controller;
  _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
  viewControllers = [_existingTabBarController viewControllers];
  v6 = [viewControllers indexOfObjectIdenticalTo:controllerCopy];

  if (v6 >= [(NSArray *)self->_tabBarItems count])
  {
    v9 = 0;
    userInterfaceTintColor = 0;
    v8 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_tabBarItems objectAtIndex:v6];
    if ([v7 barTintStyle] == 1)
    {
      v8 = 1;
      v9 = 2;
    }

    else
    {
      barTintStyle = [v7 barTintStyle];
      v9 = barTintStyle == 0;
      if (barTintStyle)
      {
        v8 = 0;
      }

      else
      {
        v8 = 3;
      }
    }

    userInterfaceTintColor = [v7 userInterfaceTintColor];
  }

  [_existingTabBarController setForcedUserInterfaceStyle:v9];
  [_existingTabBarController setNeedsUserInterfaceAppearanceUpdate];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setStatusBarStyle:v8];

  tabBar = [_existingTabBarController tabBar];
  [tabBar setTintColor:userInterfaceTintColor];
}

- (id)_transientNavigationDocument
{
  transientNavigationDocument = self->_transientNavigationDocument;
  if (!transientNavigationDocument)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0 || (v6 = objc_loadWeakRetained(&self->_delegate), [v6 application:self navigationControllerWithTabBarItem:0], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
    {
      v7 = objc_alloc_init(MEMORY[0x277D757A0]);
    }

    [v7 setDelegate:self];
    v8 = [[SUUINavigationDocumentController alloc] initWithNavigationController:v7];
    v9 = self->_transientNavigationDocument;
    self->_transientNavigationDocument = v8;

    v10 = self->_transientNavigationDocument;
    clientContext = [(SUUIApplicationController *)self clientContext];
    [(SUUINavigationDocumentController *)v10 setClientContext:clientContext];

    [(SUUINavigationDocumentController *)self->_transientNavigationDocument setDelegate:self];
    transientNavigationDocument = self->_transientNavigationDocument;
  }

  return transientNavigationDocument;
}

- (BOOL)_usesFloatingStatusOverlayForWidth:(double)width
{
  _existingTabBarController = [(SUUIApplicationController *)self _existingTabBarController];
  v5 = (!_existingTabBarController || (objc_opt_respondsToSelector() & 1) != 0) && 320.0 / width < 0.5;

  return v5;
}

- (id)_rootDocuments
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_navigationDocumentControllers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        null = [MEMORY[0x277CBEB68] null];

        if (v9 != null)
        {
          documents = [v9 documents];
          v12 = [documents count];

          if (v12)
          {
            documents2 = [v9 documents];
            firstObject = [documents2 firstObject];

            if (firstObject)
            {
              [v3 addObject:firstObject];
            }
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v3;
}

- (SUUIApplicationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)configurationPreloader
{
  OUTLINED_FUNCTION_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)jsNavigationDocumentForNavigationController:inContext:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)jsNavigationDocumentForNavigationDocumentController:inContext:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end