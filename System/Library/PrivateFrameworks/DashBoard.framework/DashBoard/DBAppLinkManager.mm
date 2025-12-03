@interface DBAppLinkManager
- (DBAppLinkManager)initWithSession:(id)session;
- (NSArray)appLinkIcons;
- (id)launchInfoForAppLink:(id)link;
- (void)addObserver:(id)observer;
- (void)connect;
- (void)dealloc;
- (void)presentAppLink:(id)link;
- (void)removeObserver:(id)observer;
- (void)update:(id)update;
@end

@implementation DBAppLinkManager

- (DBAppLinkManager)initWithSession:(id)session
{
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = DBAppLinkManager;
  v5 = [(DBAppLinkManager *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285B02EF8];
    observers = v5->_observers;
    v5->_observers = v6;

    if (sessionCopy)
    {
      v8 = [[_TtC9DashBoard29DBAppLinkPunchthroughLauncher alloc] initWithSession:sessionCopy];
      punchthroughLauncher = v5->_punchthroughLauncher;
      v5->_punchthroughLauncher = v8;
    }

    [(DBAppLinkManager *)v5 connect];
  }

  return v5;
}

- (void)dealloc
{
  [(CAFAppLinksManager *)self->_manager invalidate];
  v3.receiver = self;
  v3.super_class = DBAppLinkManager;
  [(DBAppLinkManager *)&v3 dealloc];
}

- (void)update:(id)update
{
  v64 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  appLinkIconsMap = [(DBAppLinkManager *)self appLinkIconsMap];

  if (!appLinkIconsMap)
  {
    v6 = objc_opt_new();
    [(DBAppLinkManager *)self setAppLinkIconsMap:v6];
  }

  v7 = MEMORY[0x277CBEB98];
  snapshot = [(DBAppLinkManager *)self snapshot];
  appLinks = [snapshot appLinks];
  v10 = [v7 setWithArray:appLinks];

  v11 = MEMORY[0x277CBEB98];
  v44 = updateCopy;
  appLinks2 = [updateCopy appLinks];
  v13 = [v11 setWithArray:appLinks2];

  v14 = [v13 mutableCopy];
  [v14 minusSet:v10];
  v43 = v10;
  v45 = [v10 mutableCopy];
  v42 = v13;
  [v45 minusSet:v13];
  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v14;
  v17 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v53;
    do
    {
      v20 = 0;
      do
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v52 + 1) + 8 * v20);
        v22 = [[DBAppLinkLeafIcon alloc] initWithAppLink:v21];
        [v15 addObject:v22];
        appLinkIconsMap2 = [(DBAppLinkManager *)self appLinkIconsMap];
        identifier = [v21 identifier];
        [appLinkIconsMap2 setObject:v22 forKeyedSubscript:identifier];

        ++v20;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v18);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = v45;
  v25 = [v46 countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v49;
    do
    {
      v28 = 0;
      do
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(v46);
        }

        v29 = *(*(&v48 + 1) + 8 * v28);
        appLinkIconsMap3 = [(DBAppLinkManager *)self appLinkIconsMap];
        identifier2 = [v29 identifier];
        v32 = [appLinkIconsMap3 objectForKeyedSubscript:identifier2];

        if (v32)
        {
          [v16 addObject:v32];
        }

        appLinkIconsMap4 = [(DBAppLinkManager *)self appLinkIconsMap];
        identifier3 = [v29 identifier];
        [appLinkIconsMap4 setObject:0 forKeyedSubscript:identifier3];

        ++v28;
      }

      while (v26 != v28);
      v26 = [v46 countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v26);
  }

  if ([v15 count] || objc_msgSend(v16, "count"))
  {
    v35 = DBLogForCategory(0x1CuLL);
    v36 = v44;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
      *buf = 136315650;
      v57 = "[DBAppLinkManager update:]";
      v58 = 2112;
      v59 = v37;
      v60 = 2112;
      v61 = v38;
      _os_log_impl(&dword_248146000, v35, OS_LOG_TYPE_DEFAULT, "%s: notifying observers. %@ applink(s) added, %@ applink(s) removed", buf, 0x20u);
    }

    observers = [(DBAppLinkManager *)self observers];
    v40 = [v15 copy];
    v41 = [v16 copy];
    [observers appLinkManager:self didAddAppLinks:v40 didRemoveAppLinks:v41];
  }

  else
  {
    observers = DBLogForCategory(0x1CuLL);
    v36 = v44;
    if (os_log_type_enabled(observers, OS_LOG_TYPE_DEBUG))
    {
      [DBAppLinkManager update:observers];
    }
  }

  [(DBAppLinkManager *)self setSnapshot:v36];
}

- (void)connect
{
  if (!self->_manager)
  {
    objc_initWeak(&location, self);
    v3 = objc_alloc(MEMORY[0x277CF82F8]);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __27__DBAppLinkManager_connect__block_invoke;
    v6[3] = &unk_278F02DE0;
    objc_copyWeak(&v7, &location);
    v4 = [v3 initWithChangeBlock:v6];
    manager = self->_manager;
    self->_manager = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __27__DBAppLinkManager_connect__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = DBLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "DBAppLinkManager received XPC message:  %@", &v6, 0xCu);
  }

  [WeakRetained update:v3];
}

- (NSArray)appLinkIcons
{
  appLinkIconsMap = [(DBAppLinkManager *)self appLinkIconsMap];
  allValues = [appLinkIconsMap allValues];

  return allValues;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBAppLinkManager *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBAppLinkManager *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)presentAppLink:(id)link
{
  linkCopy = link;
  punchthroughLauncher = [(DBAppLinkManager *)self punchthroughLauncher];

  if (punchthroughLauncher)
  {
    punchthroughLauncher2 = [(DBAppLinkManager *)self punchthroughLauncher];
    [punchthroughLauncher2 activatePunchthroughWithAppLink:linkCopy];
  }

  else
  {
    punchthroughLauncher2 = DBLogForCategory(0x1CuLL);
    if (os_log_type_enabled(punchthroughLauncher2, OS_LOG_TYPE_ERROR))
    {
      [DBAppLinkManager presentAppLink:punchthroughLauncher2];
    }
  }
}

- (id)launchInfoForAppLink:(id)link
{
  v3 = MEMORY[0x277CBEBC0];
  contentURLAction = [link contentURLAction];
  v5 = [v3 URLWithString:contentURLAction];

  if (v5)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v7 = [defaultWorkspace applicationsAvailableForOpeningURL:v5];
    firstObject = [v7 firstObject];

    bundleIdentifier = [firstObject bundleIdentifier];
    v10 = +[DBApplicationController sharedInstance];
    v11 = [v10 applicationWithBundleIdentifier:bundleIdentifier];

    if (v11)
    {
      v12 = DBLogForCategory(0x1CuLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(DBAppLinkManager *)v5 launchInfoForAppLink:bundleIdentifier, v12];
      }

      v13 = objc_alloc_init(DBActivationSettings);
      [(DBActivationSettings *)v13 setLaunchSource:3];
      [(DBActivationSettings *)v13 setUrl:v5];
      v14 = [DBApplicationLaunchInfo launchInfoForApplication:v11 withActivationSettings:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)update:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[DBAppLinkManager update:]";
  _os_log_debug_impl(&dword_248146000, log, OS_LOG_TYPE_DEBUG, "%s: notifying observers not needed", &v1, 0xCu);
}

- (void)presentAppLink:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[DBAppLinkManager presentAppLink:]";
  _os_log_error_impl(&dword_248146000, log, OS_LOG_TYPE_ERROR, "%s: missing punchthroughHelper", &v1, 0xCu);
}

- (void)launchInfoForAppLink:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[DBAppLinkManager launchInfoForAppLink:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_248146000, log, OS_LOG_TYPE_DEBUG, "%s: resolved contentURLAction %@ to application %@", &v3, 0x20u);
}

@end