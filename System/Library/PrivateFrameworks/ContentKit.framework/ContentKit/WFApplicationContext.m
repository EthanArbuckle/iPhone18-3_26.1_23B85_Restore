@interface WFApplicationContext
+ (WFApplicationContext)sharedContext;
- (BOOL)canLoadShortcutsDatabase;
- (BOOL)canOpenURL:(id)a3;
- (BOOL)isIdleTimerDisabled;
- (BOOL)shouldReverseLayoutDirection;
- (NSArray)applicationBundleURLSchemes;
- (NSBundle)applicationBundle;
- (NSBundle)bundle;
- (NSMutableDictionary)applicationStateObserversByEvent;
- (NSString)currentUserInterfaceType;
- (WFApplicationContext)init;
- (WFApplicationContextProvider)provider;
- (id)applicationOrNil;
- (id)keyWindow;
- (int64_t)applicationState;
- (int64_t)userInterfaceStyle;
- (void)_openURL:(id)a3 withBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)addApplicationStateObserver:(id)a3 forEvent:(int64_t)a4;
- (void)applicationDidBecomeActive;
- (void)dealloc;
- (void)handleApplicationStateEvent:(int64_t)a3;
- (void)openURL:(id)a3 withBundleIdentifier:(id)a4 userInterface:(id)a5 completionHandler:(id)a6;
- (void)removeApplicationStateObserver:(id)a3 forEvent:(int64_t)a4;
- (void)setIdleTimerDisabled:(BOOL)a3;
- (void)setProvider:(id)a3;
- (void)suspend;
@end

@implementation WFApplicationContext

+ (WFApplicationContext)sharedContext
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__WFApplicationContext_sharedContext__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedContext_onceToken != -1)
  {
    dispatch_once(&sharedContext_onceToken, block);
  }

  v2 = sharedContext_sharedContext;

  return v2;
}

uint64_t __37__WFApplicationContext_sharedContext__block_invoke(uint64_t a1)
{
  sharedContext_sharedContext = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (WFApplicationContext)init
{
  v7.receiver = self;
  v7.super_class = WFApplicationContext;
  v2 = [(WFApplicationContext *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    observersLock = v2->_observersLock;
    v2->_observersLock = v3;

    [(NSLock *)v2->_observersLock setName:@"WFApplicationContext observer lock"];
    v5 = v2;
  }

  return v2;
}

- (NSMutableDictionary)applicationStateObserversByEvent
{
  applicationStateObserversByEvent = self->_applicationStateObserversByEvent;
  if (!applicationStateObserversByEvent)
  {
    v4 = objc_opt_new();
    v5 = self->_applicationStateObserversByEvent;
    self->_applicationStateObserversByEvent = v4;

    applicationStateObserversByEvent = self->_applicationStateObserversByEvent;
  }

  return applicationStateObserversByEvent;
}

- (NSBundle)applicationBundle
{
  applicationBundle = self->_applicationBundle;
  if (!applicationBundle)
  {
    v4 = [MEMORY[0x277CC1E70] bundleRecordWithBundleIdentifier:*MEMORY[0x277D7A338] allowPlaceholder:0 error:0];
    v5 = v4;
    if (v4)
    {
      v6 = MEMORY[0x277CCA8D8];
      v7 = [v4 URL];
      v8 = [v6 bundleWithURL:v7];
      v9 = self->_applicationBundle;
      self->_applicationBundle = v8;
    }

    applicationBundle = self->_applicationBundle;
  }

  return applicationBundle;
}

- (BOOL)shouldReverseLayoutDirection
{
  v3 = [(WFApplicationContext *)self provider];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFApplicationContext *)self provider];
    v6 = [v5 shouldReverseLayoutDirection];

    return v6;
  }

  else
  {

    return MEMORY[0x2821E1980]();
  }
}

- (WFApplicationContextProvider)provider
{
  provider = self->_provider;
  if (!provider)
  {
    v4 = objc_opt_new();
    v5 = self->_provider;
    self->_provider = v4;

    provider = self->_provider;
  }

  return provider;
}

- (id)applicationOrNil
{
  v3 = [(WFApplicationContext *)self provider];
  v4 = [v3 applicationForWFApplicationContext:self];

  return v4;
}

- (void)applicationDidBecomeActive
{
  notify_post(WFApplicationActiveIdentifier);
  self->_inactive = 0;

  [(WFApplicationContext *)self handleApplicationStateEvent:0];
}

- (BOOL)canLoadShortcutsDatabase
{
  if (![(WFApplicationContext *)self canLoadShortcutsDatabaseEntitlementChecked])
  {
    v3 = SecTaskCreateFromSelf(0);
    if (v3)
    {
      v4 = v3;
      v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.rootless.storage.shortcuts", 0);
      if (v5)
      {
        v6 = v5;
        v7 = CFGetTypeID(v5);
        v8 = v7 == CFBooleanGetTypeID() && CFBooleanGetValue(v6) != 0;
        self->_canLoadShortcutsDatabase = v8;
        CFRelease(v6);
      }

      CFRelease(v4);
    }

    [(WFApplicationContext *)self setCanLoadShortcutsDatabaseEntitlementChecked:1];
  }

  return self->_canLoadShortcutsDatabase;
}

- (void)setIdleTimerDisabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(WFApplicationContext *)self provider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFApplicationContext *)self provider];
    [v7 setWfIdleTimerDisabled:v3];
  }
}

- (BOOL)isIdleTimerDisabled
{
  v3 = [(WFApplicationContext *)self provider];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(WFApplicationContext *)self provider];
  v6 = [v5 wfIdleTimerDisabled];

  return v6;
}

- (void)suspend
{
  v2 = [(WFApplicationContext *)self applicationOrNil];
  [v2 suspend];
}

- (int64_t)userInterfaceStyle
{
  v3 = [(WFApplicationContext *)self provider];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(WFApplicationContext *)self provider];
    v5 = [v4 userInterfaceStyle];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)keyWindow
{
  v3 = [(WFApplicationContext *)self provider];
  v4 = [v3 keyWindowForWFApplicationContext:self];

  return v4;
}

- (NSString)currentUserInterfaceType
{
  v3 = [(WFApplicationContext *)self provider];
  v4 = [v3 currentUserInterfaceTypeForWFApplicationContext:self];

  return v4;
}

- (NSBundle)bundle
{
  v3 = [(WFApplicationContext *)self provider];
  v4 = [v3 bundleForWFApplicationContext:self];

  return v4;
}

- (NSArray)applicationBundleURLSchemes
{
  v2 = [(WFApplicationContext *)self applicationBundle];
  v3 = WFURLSchemesInBundle(v2);

  return v3;
}

- (void)_openURL:(id)a3 withBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [WFAppLaunchRequest alloc];
  if (v8)
  {
    v11 = [(INCAppLaunchRequest *)v10 initWithBundleIdentifier:v8 options:0 URL:v7 userActivity:0];
    v12 = 0;
    if (v11)
    {
LABEL_3:
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __72__WFApplicationContext__openURL_withBundleIdentifier_completionHandler___block_invoke;
      v14[3] = &unk_278346AA0;
      v15 = v9;
      [(WFAppLaunchRequest *)v11 performWithCompletionHandler:v14];

      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
    v11 = [(INCAppLaunchRequest *)v10 initWithURL:v7 error:&v16];
    v12 = v16;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v13 = getWFApplicationContextLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[WFApplicationContext _openURL:withBundleIdentifier:completionHandler:]";
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&dword_21E1BD000, v13, OS_LOG_TYPE_ERROR, "%s Failed to create app launch request: %{public}@", buf, 0x16u);
  }

  if (v9)
  {
    (*(v9 + 2))(v9, 0, v12);
  }

LABEL_9:
}

void __72__WFApplicationContext__openURL_withBundleIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = getWFApplicationContextLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[WFApplicationContext _openURL:withBundleIdentifier:completionHandler:]_block_invoke";
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&dword_21E1BD000, v6, OS_LOG_TYPE_ERROR, "%s Error launching app: %{public}@", &v8, 0x16u);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)openURL:(id)a3 withBundleIdentifier:(id)a4 userInterface:(id)a5 completionHandler:(id)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10 | v11)
  {
    if (objc_opt_respondsToSelector())
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __85__WFApplicationContext_openURL_withBundleIdentifier_userInterface_completionHandler___block_invoke;
      v15[3] = &unk_278347620;
      v18 = v13;
      v15[4] = self;
      v16 = v10;
      v17 = v11;
      [v12 openURL:v16 withBundleIdentifier:v17 completionHandler:v15];
    }

    else
    {
      [(WFApplicationContext *)self _openURL:v10 withBundleIdentifier:v11 completionHandler:v13];
    }
  }

  else
  {
    v14 = getWFApplicationContextLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = "[WFApplicationContext openURL:withBundleIdentifier:userInterface:completionHandler:]";
      _os_log_impl(&dword_21E1BD000, v14, OS_LOG_TYPE_ERROR, "%s Asked to open nil URL with nil bundle identifier", buf, 0xCu);
    }

    if (v13)
    {
      (*(v13 + 2))(v13, 0, 0);
    }
  }
}

uint64_t __85__WFApplicationContext_openURL_withBundleIdentifier_userInterface_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))(v6, v5 == 0);
    }
  }

  else
  {
    [*(a1 + 32) _openURL:*(a1 + 40) withBundleIdentifier:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  return MEMORY[0x2821F9730]();
}

- (BOOL)canOpenURL:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = MEMORY[0x277CC1E80];
  v4 = a3;
  v5 = [v3 defaultWorkspace];
  v6 = [v5 applicationsAvailableForOpeningURL:v4];

  v7 = [v6 count] != 0;
  return v7;
}

- (int64_t)applicationState
{
  v3 = [(WFApplicationContext *)self provider];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFApplicationContext *)self provider];
    v6 = [v5 currentApplicationStateForWFApplicationContext:self];

    return v6;
  }

  else if ([(WFApplicationContext *)self inBackground])
  {
    return 2;
  }

  else
  {
    return [(WFApplicationContext *)self inactive];
  }
}

- (void)removeApplicationStateObserver:(id)a3 forEvent:(int64_t)a4
{
  v12 = a3;
  v6 = [(WFApplicationContext *)self observersLock];
  [v6 lock];

  v7 = [(WFApplicationContext *)self applicationStateObserversByEvent];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v9 = [v7 objectForKey:v8];

  if ([v9 count] == 1 && objc_msgSend(v9, "containsObject:", v12))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [v7 removeObjectForKey:v10];
  }

  else
  {
    [v9 removeObject:v12];
  }

  v11 = [(WFApplicationContext *)self observersLock];
  [v11 unlock];
}

- (void)addApplicationStateObserver:(id)a3 forEvent:(int64_t)a4
{
  v12 = a3;
  v6 = [(WFApplicationContext *)self observersLock];
  [v6 lock];

  v7 = [(WFApplicationContext *)self applicationStateObserversByEvent];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v9 = [v7 objectForKey:v8];

  if (!v9)
  {
    v9 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [v7 setObject:v9 forKey:v10];
  }

  [v9 addObject:v12];
  v11 = [(WFApplicationContext *)self observersLock];
  [v11 unlock];
}

- (void)handleApplicationStateEvent:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(WFApplicationContext *)self observersLock];
  [v5 lock];

  if (self->_applicationStateObserversByEvent)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_applicationStateObserversByEvent copyItems:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(WFApplicationContext *)self observersLock];
  [v7 unlock];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v9 = [v6 objectForKey:v8];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) applicationContext:self applicationStateDidChange:{a3, v15}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)dealloc
{
  [(WFApplicationContext *)self setProvider:0];
  v3.receiver = self;
  v3.super_class = WFApplicationContext;
  [(WFApplicationContext *)&v3 dealloc];
}

- (void)setProvider:(id)a3
{
  v20 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(WFApplicationContextProvider *)v20 extensionApplicationContextProviderDelegate];

    if (!v6)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"WFApplicationContext.m" lineNumber:69 description:@"extensionApplicationContextProviderDelegate must be set on the extension context."];
    }
  }

  p_provider = &self->_provider;
  v9 = v20;
  if (self->_provider != v20)
  {
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    if (*p_provider)
    {
      v11 = [(WFApplicationContextProvider *)*p_provider notificationNameForApplicationStateEvent:0 applicationContext:self];
      v12 = [(WFApplicationContextProvider *)self->_provider notificationNameForApplicationStateEvent:1 applicationContext:self];
      v13 = [(WFApplicationContextProvider *)self->_provider notificationNameForApplicationStateEvent:2 applicationContext:self];
      v14 = [(WFApplicationContextProvider *)self->_provider notificationNameForApplicationStateEvent:3 applicationContext:self];
      if (v11)
      {
        [v10 removeObserver:self name:v11 object:0];
      }

      if (v12)
      {
        [v10 removeObserver:self name:v12 object:0];
      }

      if (v13)
      {
        [v10 removeObserver:self name:v13 object:0];
      }

      if (v14)
      {
        [v10 removeObserver:self name:v14 object:0];
      }
    }

    if (v20)
    {
      v15 = [(WFApplicationContextProvider *)v20 notificationNameForApplicationStateEvent:0 applicationContext:self];
      v16 = [(WFApplicationContextProvider *)v20 notificationNameForApplicationStateEvent:1 applicationContext:self];
      v17 = [(WFApplicationContextProvider *)v20 notificationNameForApplicationStateEvent:2 applicationContext:self];
      v18 = [(WFApplicationContextProvider *)v20 notificationNameForApplicationStateEvent:3 applicationContext:self];
      if (v15)
      {
        [v10 addObserver:self selector:sel_applicationDidBecomeActive name:v15 object:0];
      }

      if (v16)
      {
        [v10 addObserver:self selector:sel_applicationWillResignActive name:v16 object:0];
      }

      if (v17)
      {
        [v10 addObserver:self selector:sel_applicationDidEnterBackground name:v17 object:0];
      }

      if (v18)
      {
        [v10 addObserver:self selector:sel_applicationWillEnterForeground name:v18 object:0];
      }

      if (objc_opt_respondsToSelector())
      {
        v19 = [(WFApplicationContextProvider *)v20 currentApplicationStateForWFApplicationContext:self];
      }

      else
      {
        v19 = 0;
      }

      [(WFApplicationContext *)self setInBackground:v19 == 2];
      [(WFApplicationContext *)self setInactive:v19 == 1];
    }

    objc_storeStrong(&self->_provider, a3);

    v9 = v20;
  }
}

@end