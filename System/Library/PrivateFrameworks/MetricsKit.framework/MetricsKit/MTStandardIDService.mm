@interface MTStandardIDService
+ (NSString)localCachePath;
+ (id)writeDebugData:(id)data toFileWithNameFormat:(id)format;
+ (void)registerInterprocessChangeNotifier:(id)notifier;
+ (void)setLocalCachePath:(id)path;
- (MTStandardIDService)initWithConfigDictPromise:(id)promise bag:(id)bag;
- (MTStandardIDService)initWithConfigDictionary:(id)dictionary;
- (NSNumber)defaultDSID;
- (NSNumber)dsId;
- (OS_dispatch_queue)serialQueue;
- (id)IDFieldsForTopic:(id)topic options:(id)options;
- (id)IDForTopic:(id)topic type:(int64_t)type options:(id)options;
- (id)IDInfoForNamespace:(id)namespace options:(id)options fromConfig:(id)config;
- (id)IDsForNamespaces:(id)namespaces options:(id)options fromConfig:(id)config;
- (id)_IDInfoForNamespace:(id)namespace options:(id)options fromConfig:(id)config;
- (id)configPromise;
- (id)filledOptions:(id)options;
- (id)generateIDInfo:(id)info secret:(id)secret dsId:(id)id correlationIDs:(id)ds;
- (id)resetIDForTopics:(id)topics options:(id)options;
- (id)secretValueForNamespace:(id)namespace options:(id)options;
- (id)sync:(id)sync;
- (void)IDFieldsForTopic:(id)topic options:(id)options completion:(id)completion;
- (void)_clearLocalData;
- (void)_getConfig;
- (void)_getIDs;
- (void)_getSecrets;
- (void)_resetIDs;
- (void)dealloc;
- (void)flushPerfKitEvents;
- (void)handleAccountNotification;
- (void)handleApplicationStateChange:(id)change;
- (void)handleRecordNotification;
- (void)handleResetNotification:(id)notification;
- (void)maybeSubscribeToDarwinNotifications;
- (void)performMaintenanceWithCompletion:(id)completion;
- (void)queryIDForTopic:(id)topic type:(int64_t)type options:(id)options completion:(id)completion;
- (void)resetIDForTopics:(id)topics options:(id)options completion:(id)completion;
- (void)setConfig:(id)config;
@end

@implementation MTStandardIDService

- (id)configPromise
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedConfig = [(MTStandardIDService *)selfCopy cachedConfig];
  objc_sync_exit(selfCopy);

  if (cachedConfig)
  {
    v4 = [MTPromise promiseWithResult:cachedConfig];
  }

  else
  {
    v5 = selfCopy;
    objc_sync_enter(v5);
    associatedObjects = [(MTStandardIDService *)v5 associatedObjects];
    v7 = [associatedObjects objectForKeyedSubscript:@"AMSBag"];

    objc_sync_exit(v5);
    if (v7)
    {
      v8 = objc_alloc_init(MTPromise);
      v9 = [v7 dictionaryForKey:@"metrics"];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __36__MTStandardIDService_configPromise__block_invoke;
      v15[3] = &unk_2798CD548;
      v15[4] = v5;
      v10 = v8;
      v16 = v10;
      [v9 valueWithCompletion:v15];

      v11 = v16;
      configDictPromise = v10;

      v4 = configDictPromise;
    }

    else
    {
      configDictPromise = [(MTStandardIDService *)v5 configDictPromise];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __36__MTStandardIDService_configPromise__block_invoke_42;
      v14[3] = &unk_2798CD570;
      v14[4] = v5;
      v4 = [(MTPromise *)configDictPromise thenWithBlock:v14];
    }
  }

  return v4;
}

- (NSNumber)defaultDSID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  defaultDSID = selfCopy->_defaultDSID;
  if (!defaultDSID)
  {
    ams_sharedAccountStore = [MEMORY[0x277CB8F50] ams_sharedAccountStore];
    ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
    ams_DSID = [ams_activeiTunesAccount ams_DSID];
    v7 = selfCopy->_defaultDSID;
    selfCopy->_defaultDSID = ams_DSID;

    defaultDSID = selfCopy->_defaultDSID;
  }

  v8 = defaultDSID;
  objc_sync_exit(selfCopy);

  return v8;
}

- (NSNumber)dsId
{
  dsId = self->_dsId;
  if (dsId)
  {
    defaultDSID = dsId;
  }

  else
  {
    defaultDSID = [(MTStandardIDService *)self defaultDSID];
  }

  return defaultDSID;
}

- (void)dealloc
{
  [(MTStandardIDService *)self flushPerfKitEvents];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = MTStandardIDService;
  [(MTStandardIDService *)&v4 dealloc];
}

- (void)flushPerfKitEvents
{
  associatedObjects = [(MTStandardIDService *)self associatedObjects];
  objc_sync_enter(associatedObjects);
  associatedObjects2 = [(MTStandardIDService *)self associatedObjects];
  v9 = [associatedObjects2 objectForKeyedSubscript:@"perfKit"];

  objc_sync_exit(associatedObjects);
  v5 = v9;
  if (v9)
  {
    system = [v9 system];
    eventRecorder = [system eventRecorder];
    flushUnreportedEvents = [eventRecorder flushUnreportedEvents];

    [flushUnreportedEvents addFinishBlock:&__block_literal_global_130];
    v5 = v9;
  }
}

- (void)maybeSubscribeToDarwinNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v4, self, _handleITunesAccountsChangedNotification, @"com.apple.itunesstored.accountschanged", 0, CFNotificationSuspensionBehaviorDrop);
  v5 = +[MTFrameworkEnvironment sharedEnvironment];
  isInternalBuild = [v5 isInternalBuild];

  if (isInternalBuild)
  {
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleDarwinNotification, @"MTIDServiceClearLocalDataNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleDarwinNotification, @"MTIDServiceResetIDsNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleDarwinNotification, @"MTIDServiceGetSecretsNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleDarwinNotification, @"MTIDServiceGetIDsNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleDarwinNotification, @"MTIDServiceGetConfigNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (OS_dispatch_queue)serialQueue
{
  if (serialQueue_onceToken != -1)
  {
    [MTStandardIDService serialQueue];
  }

  v3 = serialQueue_serialQueue;

  return v3;
}

- (MTStandardIDService)initWithConfigDictionary:(id)dictionary
{
  v4 = [MTPromise promiseWithResult:dictionary];
  v5 = [(MTStandardIDService *)self initWithConfigPromise:v4];

  return v5;
}

- (MTStandardIDService)initWithConfigDictPromise:(id)promise bag:(id)bag
{
  promiseCopy = promise;
  bagCopy = bag;
  v29.receiver = self;
  v29.super_class = MTStandardIDService;
  v8 = [(MTStandardIDService *)&v29 init];
  v9 = v8;
  if (v8)
  {
    if (promiseCopy)
    {
      [(MTStandardIDService *)v8 setConfigDictPromise:promiseCopy];
    }

    else
    {
      v10 = [MTPromise promiseWithResult:MEMORY[0x277CBEC10]];
      [(MTStandardIDService *)v9 setConfigDictPromise:v10];
    }

    v11 = +[MTFrameworkEnvironment sharedEnvironment];
    idCache = [v11 idCache];
    [(MTStandardIDService *)v9 setCache:idCache];

    v13 = +[MTFrameworkEnvironment sharedEnvironment];
    secretStore = [v13 secretStore];
    [(MTStandardIDService *)v9 setSecretStore:secretStore];

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(MTStandardIDService *)v9 setAssociatedObjects:v15];

    if (bagCopy)
    {
      associatedObjects = [(MTStandardIDService *)v9 associatedObjects];
      [associatedObjects setObject:bagCopy forKeyedSubscript:@"AMSBag"];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_handleResetNotification_ name:@"MTIDNamespacesDidResetNotification" object:0];
    if (NSClassFromString(&cfstr_Uiapplication.isa))
    {
      [defaultCenter addObserver:v9 selector:sel_handleApplicationStateChange_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    }

    objc_initWeak(&location, v9);
    v18 = [MTInterprocessChangeNotifier alloc];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __53__MTStandardIDService_initWithConfigDictPromise_bag___block_invoke;
    v26 = &unk_2798CD520;
    objc_copyWeak(&v27, &location);
    v19 = [(MTInterprocessChangeNotifier *)v18 initWithIdentifier:@"MTCloudKitAccountDidChangeNotification" onChange:&v23];
    [(MTStandardIDService *)v9 setAccountChanged:v19, v23, v24, v25, v26];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel_handleAccountNotification name:*MEMORY[0x277CB8908] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v9 selector:sel_handleAccountNotification name:*MEMORY[0x277CB8B70] object:0];

    [(MTStandardIDService *)v9 maybeSubscribeToDarwinNotifications];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __53__MTStandardIDService_initWithConfigDictPromise_bag___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleAccountNotification];
}

uint64_t __34__MTStandardIDService_serialQueue__block_invoke()
{
  serialQueue_serialQueue = dispatch_queue_create("MTStandardIDService.serialQueue", 0);

  return MEMORY[0x2821F96F8]();
}

void __36__MTStandardIDService_configPromise__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_258F4B000, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to retrieve metrics bag key value: %@", &v14, 0xCu);
    }
  }

  v9 = [v6 objectForKeyedSubscript:@"identifiers"];
  v10 = [MTIDConfig alloc];
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = [(MTIDConfig *)v10 initWithDictionary:v11];
  if (v9)
  {
    [*(a1 + 32) setConfig:v12];
  }

  [*(a1 + 40) finishWithResult:v12];

  v13 = *MEMORY[0x277D85DE8];
}

id __36__MTStandardIDService_configPromise__block_invoke_42(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MTIDConfig alloc] initWithDictionary:v3];

  [*(a1 + 32) setConfig:v4];
  v5 = [MTPromise promiseWithResult:v4];

  return v5;
}

- (void)setConfig:(id)config
{
  configCopy = config;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MTStandardIDService *)selfCopy setCachedConfig:configCopy];
  objc_sync_exit(selfCopy);
}

- (void)handleAccountNotification
{
  obj = self;
  objc_sync_enter(obj);
  cache = [(MTStandardIDService *)obj cache];
  [cache removeAllNamespaces];

  [(MTStandardIDService *)obj setDefaultDSID:0];
  objc_sync_exit(obj);
}

- (void)handleRecordNotification
{
  obj = self;
  objc_sync_enter(obj);
  cache = [(MTStandardIDService *)obj cache];
  [cache removeUnsyncedNamespaces];

  objc_sync_exit(obj);
}

- (void)handleResetNotification:(id)notification
{
  userInfo = [notification userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"namespaces"];

  cache = [(MTStandardIDService *)self cache];
  v6 = cache;
  if (v7)
  {
    [cache removeNamespaces:v7];
  }

  else
  {
    [cache removeAllNamespaces];
  }
}

- (void)handleApplicationStateChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cache = [(MTStandardIDService *)selfCopy cache];
  [cache removeAllNamespaces];

  objc_sync_exit(selfCopy);
}

+ (void)setLocalCachePath:(id)path
{
  pathCopy = path;
  v4 = +[MTFrameworkEnvironment sharedEnvironment];
  [v4 setLocalDataPath:pathCopy];
}

+ (NSString)localCachePath
{
  v2 = +[MTFrameworkEnvironment sharedEnvironment];
  localDataPath = [v2 localDataPath];

  return localDataPath;
}

- (void)IDFieldsForTopic:(id)topic options:(id)options completion:(id)completion
{
  completionCopy = completion;
  v8 = [(MTStandardIDService *)self IDFieldsForTopic:topic options:options];
  if (completionCopy)
  {
    [v8 addFinishBlock:completionCopy];
  }
}

- (void)resetIDForTopics:(id)topics options:(id)options completion:(id)completion
{
  completionCopy = completion;
  v9 = [(MTStandardIDService *)self resetIDForTopics:topics options:options];
  if (completionCopy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59__MTStandardIDService_resetIDForTopics_options_completion___block_invoke;
    v10[3] = &unk_2798CD598;
    v11 = completionCopy;
    [v9 addFinishBlock:v10];
  }
}

- (id)IDFieldsForTopic:(id)topic options:(id)options
{
  topicCopy = topic;
  v7 = [(MTStandardIDService *)self filledOptions:options];
  configPromise = [(MTStandardIDService *)self configPromise];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__MTStandardIDService_IDFieldsForTopic_options___block_invoke;
  v18[3] = &unk_2798CD600;
  v9 = topicCopy;
  v19 = v9;
  v10 = v7;
  v20 = v10;
  selfCopy = self;
  v11 = [configPromise thenWithBlock:v18];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__MTStandardIDService_IDFieldsForTopic_options___block_invoke_4;
  v15[3] = &unk_2798CD628;
  v16 = v9;
  v17 = v10;
  v12 = v10;
  v13 = v9;
  [v11 addFinishBlock:v15];

  return v11;
}

id __48__MTStandardIDService_IDFieldsForTopic_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 namespaceForTopic:*(a1 + 32) idType:2];
  v5 = [v3 namespaceForTopic:*(a1 + 32) idType:1];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v7 = [*(a1 + 40) objectForKeyedSubscript:@"idType"];
  v8 = v7;
  if (v7 && [v7 integerValue] != 2)
  {
    goto LABEL_7;
  }

  if (v4)
  {
    v9 = [*(a1 + 48) IDInfoForNamespace:v4 options:*(a1 + 40) fromConfig:v3];
    if (v9)
    {
      v10 = v9;
      [v6 addObject:v9];
    }
  }

  if (v8)
  {
LABEL_7:
    if ([v8 integerValue] != 1 || v5 == 0)
    {
      goto LABEL_16;
    }
  }

  else if (!v5)
  {
    goto LABEL_16;
  }

  v12 = [*(a1 + 48) IDInfoForNamespace:v5 options:*(a1 + 40) fromConfig:v3];
  if (v12)
  {
    v13 = v12;
    [v6 addObject:v12];
  }

LABEL_16:
  if ([v6 count])
  {
    v14 = [MTPromise promiseWithAll:v6];
    v15 = [v14 thenWithBlock:&__block_literal_global_69];
  }

  else
  {
    v15 = [MTPromise promiseWithResult:MEMORY[0x277CBEC10]];
  }

  return v15;
}

id __48__MTStandardIDService_IDFieldsForTopic_options___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 mt_map:&__block_literal_global_72];
  v3 = [MTReflectUtil mergeAndCleanDictionaries:v2];
  v4 = [MTPromise promiseWithResult:v3];

  return v4;
}

void __48__MTStandardIDService_IDFieldsForTopic_options___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_258F4B000, v7, OS_LOG_TYPE_DEBUG, "MetricsKit: Rendered ID fields: %@ for topic: %@ options: %@", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)resetIDForTopics:(id)topics options:(id)options
{
  topicsCopy = topics;
  v7 = [(MTStandardIDService *)self filledOptions:options];
  configPromise = [(MTStandardIDService *)self configPromise];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__MTStandardIDService_resetIDForTopics_options___block_invoke;
  v13[3] = &unk_2798CD600;
  v14 = topicsCopy;
  selfCopy = self;
  v16 = v7;
  v9 = v7;
  v10 = topicsCopy;
  v11 = [configPromise thenWithBlock:v13];

  return v11;
}

id __48__MTStandardIDService_resetIDForTopics_options___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:{2 * objc_msgSend(*(a1 + 32), "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v3 namespaceForTopic:v10 idType:2];
        if (v11)
        {
          v12 = [v3 schemeForNamespace:v11];
          [v4 addObject:v12];
        }

        v13 = [v3 namespaceForTopic:v10 idType:1];

        if (v13)
        {
          v14 = [v3 schemeForNamespace:v13];
          [v4 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v15 = [*(a1 + 40) secretStore];
  v16 = [v4 allObjects];
  v17 = [v15 resetSchemes:v16 options:*(a1 + 48)];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __48__MTStandardIDService_resetIDForTopics_options___block_invoke_2;
  v22[3] = &unk_2798CD650;
  v18 = *(a1 + 40);
  v23 = v4;
  v24 = v18;
  v19 = v4;
  [v17 addSuccessBlock:v22];

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

void __48__MTStandardIDService_resetIDForTopics_options___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 idNamespace];
        [MTStandardIDService triggerInterprocessChangeNotifier:v8];

        v9 = [*(a1 + 40) cache];
        v10 = [v7 idNamespace];
        [v9 removeNamespace:v10];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)queryIDForTopic:(id)topic type:(int64_t)type options:(id)options completion:(id)completion
{
  completionCopy = completion;
  v11 = [(MTStandardIDService *)self IDForTopic:topic type:type options:options];
  [v11 addFinishBlock:completionCopy];
}

- (void)performMaintenanceWithCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([objc_opt_class() isTinkerPaired])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [standardUserDefaults valueForKey:@"MTIDServiceLastMaintenanceDate"];
    v7 = +[MTFrameworkEnvironment sharedEnvironment];
    date = [v7 date];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [date timeIntervalSinceDate:v6];
      if (v9 < 86400.0)
      {
        v10 = MTMetricsKitOSLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v20 = v6;
          _os_log_impl(&dword_258F4B000, v10, OS_LOG_TYPE_INFO, "MetricsKit: Skipping ID service maintenance because the last performed maintenance was too recent at %@", buf, 0xCu);
        }

        completionCopy[2](completionCopy, 0);
        goto LABEL_13;
      }
    }

    [standardUserDefaults setValue:date forKey:@"MTIDServiceLastMaintenanceDate"];
  }

  standardUserDefaults = [(MTStandardIDService *)self filledOptions:0];
  secretStore = [(MTStandardIDService *)self secretStore];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    configPromise = [(MTStandardIDService *)self configPromise];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__MTStandardIDService_performMaintenanceWithCompletion___block_invoke;
    v17[3] = &unk_2798CD678;
    v17[4] = self;
    v18 = standardUserDefaults;
    v6 = [configPromise thenWithBlock:v17];

    if (!completionCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v6 = [MTPromise promiseWithResult:MEMORY[0x277CBEC38]];
  if (completionCopy)
  {
LABEL_12:
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__MTStandardIDService_performMaintenanceWithCompletion___block_invoke_2;
    v15[3] = &unk_2798CD598;
    v16 = completionCopy;
    [v6 addFinishBlock:v15];
    date = v16;
LABEL_13:
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
}

id __56__MTStandardIDService_performMaintenanceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 secretStore];
  v6 = [v4 allKnownSchemes];

  v7 = [v5 maintainSchemes:v6 options:*(a1 + 40)];

  return v7;
}

- (id)sync:(id)sync
{
  syncCopy = sync;
  v5 = [(MTStandardIDService *)self filledOptions:0];
  configPromise = [(MTStandardIDService *)self configPromise];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __28__MTStandardIDService_sync___block_invoke;
  v11[3] = &unk_2798CD600;
  v12 = syncCopy;
  selfCopy = self;
  v14 = v5;
  v7 = v5;
  v8 = syncCopy;
  v9 = [configPromise thenWithBlock:v11];

  return v9;
}

id __28__MTStandardIDService_sync___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = [a2 schemeForNamespace:?];
    v4 = [MEMORY[0x277CBEB18] arrayWithObjects:{v3, 0}];
  }

  else
  {
    v4 = [a2 allKnownSchemes];
  }

  v5 = [*(a1 + 40) secretStore];
  v6 = [v5 syncForSchemes:v4 options:*(a1 + 48)];

  return v6;
}

- (id)filledOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:@"date"];
  if (v5)
  {
    v6 = v5;
    v7 = [optionsCopy objectForKeyedSubscript:@"dsId"];
    if (v7)
    {
      v8 = v7;
      v9 = [optionsCopy objectForKeyedSubscript:@"appBundleID"];

      if (v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = dictionary;
  if (optionsCopy)
  {
    [dictionary addEntriesFromDictionary:optionsCopy];
  }

  v12 = [optionsCopy objectForKeyedSubscript:@"date"];

  if (!v12)
  {
    v13 = +[MTFrameworkEnvironment sharedEnvironment];
    date = [v13 date];
    [v11 setObject:date forKeyedSubscript:@"date"];
  }

  v15 = [optionsCopy objectForKeyedSubscript:@"dsId"];

  if (!v15)
  {
    dsId = [(MTStandardIDService *)self dsId];
    if (dsId)
    {
      [v11 setObject:dsId forKeyedSubscript:@"dsId"];
    }

    else
    {
      defaultDSID = [(MTStandardIDService *)self defaultDSID];
      [v11 setObject:defaultDSID forKeyedSubscript:@"dsId"];
    }
  }

  v18 = [optionsCopy objectForKeyedSubscript:@"appBundleID"];

  if (!v18)
  {
    applicationBundleIdentifierOverrideForNetworkAttribution = [(MTStandardIDService *)self applicationBundleIdentifierOverrideForNetworkAttribution];
    if (applicationBundleIdentifierOverrideForNetworkAttribution)
    {
      [v11 setObject:applicationBundleIdentifierOverrideForNetworkAttribution forKeyedSubscript:@"appBundleID"];
    }

    else
    {
      v20 = +[MTFrameworkEnvironment sharedEnvironment];
      hostProcessBundleIdentifier = [v20 hostProcessBundleIdentifier];
      [v11 setObject:hostProcessBundleIdentifier forKeyedSubscript:@"appBundleID"];
    }
  }

  v22 = [optionsCopy objectForKeyedSubscript:@"iTunesUserRequired"];

  if (!v22)
  {
    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"iTunesUserRequired"];
  }

  v23 = [v11 copy];

  optionsCopy = v23;
LABEL_23:

  return optionsCopy;
}

- (id)IDForTopic:(id)topic type:(int64_t)type options:(id)options
{
  topicCopy = topic;
  v9 = [(MTStandardIDService *)self filledOptions:options];
  configPromise = [(MTStandardIDService *)self configPromise];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__MTStandardIDService_IDForTopic_type_options___block_invoke;
  v20[3] = &unk_2798CD6A0;
  v11 = topicCopy;
  typeCopy = type;
  v21 = v11;
  selfCopy = self;
  v12 = v9;
  v23 = v12;
  v13 = [configPromise thenWithBlock:v20];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__MTStandardIDService_IDForTopic_type_options___block_invoke_2;
  v17[3] = &unk_2798CD6C8;
  v18 = v11;
  v19 = v12;
  v14 = v12;
  v15 = v11;
  [v13 addFinishBlock:v17];

  return v13;
}

id __47__MTStandardIDService_IDForTopic_type_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = a2;
  v6 = [v5 namespaceForTopic:v3 idType:v4];
  v7 = [*(a1 + 40) IDInfoForNamespace:v6 options:*(a1 + 48) fromConfig:v5];

  return v7;
}

void __47__MTStandardIDService_IDForTopic_type_options___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (v5)
    {
      v8 = [v5 metricsFields];
    }

    else
    {
      v8 = v6;
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_258F4B000, v7, OS_LOG_TYPE_DEBUG, "MetricsKit: Rendered ID fields: %@ for topic: %@ options: %@", &v12, 0x20u);
    if (v5)
    {
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)IDsForNamespaces:(id)namespaces options:(id)options fromConfig:(id)config
{
  namespacesCopy = namespaces;
  optionsCopy = options;
  configCopy = config;
  if ([namespacesCopy count])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__MTStandardIDService_IDsForNamespaces_options_fromConfig___block_invoke;
    v14[3] = &unk_2798CD6F0;
    v14[4] = self;
    v15 = optionsCopy;
    v16 = configCopy;
    v11 = [namespacesCopy mt_map:v14];
    v12 = [MTPromise promiseWithAll:v11];
  }

  else
  {
    v12 = [MTPromise promiseWithResult:MEMORY[0x277CBEBF8]];
  }

  return v12;
}

- (id)IDInfoForNamespace:(id)namespace options:(id)options fromConfig:(id)config
{
  namespaceCopy = namespace;
  optionsCopy = options;
  configCopy = config;
  v11 = objc_alloc_init(MTPromise);
  serialQueue = [(MTStandardIDService *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__MTStandardIDService_IDInfoForNamespace_options_fromConfig___block_invoke;
  block[3] = &unk_2798CD740;
  v21 = optionsCopy;
  selfCopy = self;
  v23 = namespaceCopy;
  v24 = configCopy;
  v13 = v11;
  v25 = v13;
  v14 = configCopy;
  v15 = namespaceCopy;
  v16 = optionsCopy;
  dispatch_async(serialQueue, block);

  v17 = v25;
  v18 = v13;

  return v13;
}

void __61__MTStandardIDService_IDInfoForNamespace_options_fromConfig___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"waitTime"];
  if (v2 && (v3 = v2, [*(a1 + 32) objectForKeyedSubscript:@"syncWaitTime"], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v6 = [*(a1 + 32) mutableCopy];
    v7 = [*(a1 + 32) objectForKeyedSubscript:@"waitTime"];
    [v6 setObject:v7 forKeyedSubscript:@"syncWaitTime"];

    v5 = [v6 copy];
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v8 = [*(a1 + 40) _IDInfoForNamespace:*(a1 + 48) options:v5 fromConfig:*(a1 + 56)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__MTStandardIDService_IDInfoForNamespace_options_fromConfig___block_invoke_2;
  v9[3] = &unk_2798CD718;
  v10 = *(a1 + 64);
  [v8 addFinishBlock:v9];
}

void __61__MTStandardIDService_IDInfoForNamespace_options_fromConfig___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v12 = v5;
  if (v16)
  {
    [*(a1 + 32) finishWithResult:v16];
  }

  else
  {
    v13 = *(a1 + 32);
    if (v5)
    {
      [v13 finishWithError:v5];
    }

    else
    {
      v14 = MTError(110, @"Promise completed with no result or error", v6, v7, v8, v9, v10, v11, v15);
      [v13 finishWithError:v14];
    }
  }
}

- (id)_IDInfoForNamespace:(id)namespace options:(id)options fromConfig:(id)config
{
  v97 = *MEMORY[0x277D85DE8];
  namespaceCopy = namespace;
  optionsCopy = options;
  configCopy = config;
  v81 = namespaceCopy;
  v10 = [configCopy schemeForNamespace:namespaceCopy];
  v83 = [optionsCopy objectForKeyedSubscript:@"date"];
  v84 = [optionsCopy objectForKeyedSubscript:@"dsId"];
  v11 = [optionsCopy objectForKeyedSubscript:@"existingOnly"];
  bOOLValue = [v11 BOOLValue];

  v13 = [optionsCopy objectForKeyedSubscript:@"iTunesUserRequired"];
  bOOLValue2 = [v13 BOOLValue];

  if (bOOLValue2)
  {
    ams_sharedAccountStore = [MEMORY[0x277CB8F50] ams_sharedAccountStore];
    ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
    ams_DSID = [ams_activeiTunesAccount ams_DSID];

    if (!v84 || ams_DSID && ![ams_DSID isEqualToNumber:v84])
    {
      v38 = [[MTIDSecret alloc] initWithValue:&stru_286A3A510 effectiveDate:0 expirationDate:0 isSynchronize:0];
      v39 = [MTIDInfo alloc];
      value = [(MTIDSecret *)v38 value];
      LOBYTE(v72) = 0;
      v41 = [(MTIDInfo *)v39 initWithScheme:v10 secret:v38 idString:value dsId:0 effectiveDate:0 expirationDate:0 shouldGenerateMetricsFields:v72];

      v31 = [MTPromise promiseWithResult:v41];

      goto LABEL_43;
    }
  }

  if ([v10 lifespan] < 1)
  {
    goto LABEL_10;
  }

  v18 = +[MTFrameworkEnvironment sharedEnvironment];
  date = [v18 date];
  [v83 timeIntervalSinceDate:date];
  v21 = v20;

  [v10 maxPastTimeInterval];
  if (v21 < -v28)
  {
    goto LABEL_9;
  }

  [v10 maxFutureTimeInterval];
  if (v21 <= v29)
  {
LABEL_10:
    v32 = [optionsCopy objectForKeyedSubscript:@"reset"];
    bOOLValue3 = [v32 BOOLValue];

    v34 = optionsCopy;
    v35 = v34;
    if (bOOLValue3)
    {
      v36 = [v34 mutableCopy];
      [v36 setObject:0 forKeyedSubscript:@"reset"];
      v79 = [v36 copy];

      v37 = 0;
    }

    else
    {
      v42 = [v34 objectForKeyedSubscript:@"cachePolicy"];
      v36 = v42;
      if (v42)
      {
        v37 = [v42 integerValue] == 0;
      }

      else
      {
        v37 = 1;
      }

      v79 = v35;
    }

    cache = [(MTStandardIDService *)self cache];
    v80 = [cache IDInfoForScheme:v10 options:v35];

    if (v80)
    {
      v44 = !v37;
    }

    else
    {
      v44 = 1;
    }

    v45 = MTMetricsKitOSLog();
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);
    if ((v44 | bOOLValue))
    {
      if (v80)
      {
        if (v46)
        {
          idNamespace = [v10 idNamespace];
          *buf = 138412290;
          v96 = idNamespace;
          _os_log_impl(&dword_258F4B000, v45, OS_LOG_TYPE_INFO, "MetricsKit: ID promise for scheme %@ is cached but not used", buf, 0xCu);
        }
      }

      else if (v46)
      {
        idNamespace2 = [v10 idNamespace];
        *buf = 138412290;
        v96 = idNamespace2;
        _os_log_impl(&dword_258F4B000, v45, OS_LOG_TYPE_INFO, "MetricsKit: ID promise for scheme %@ is not cached", buf, 0xCu);
      }

      v51 = MEMORY[0x277CBEB18];
      correlations = [v10 correlations];
      v53 = correlations;
      if (correlations)
      {
        v54 = correlations;
      }

      else
      {
        v54 = MEMORY[0x277CBEBF8];
      }

      v78 = [v51 arrayWithArray:v54];

      [v78 removeObject:v81];
      secretStore = [(MTStandardIDService *)self secretStore];
      v77 = [secretStore secretForScheme:v10 options:v35];

      v75 = dispatch_get_global_queue(0, 0);
      v56 = [[MTPromiseWithTimeout alloc] initWithTimeout:v75 queue:&__block_literal_global_102 timeoutBlock:55.0];
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __62__MTStandardIDService__IDInfoForNamespace_options_fromConfig___block_invoke_2;
      v92[3] = &unk_2798CD788;
      v74 = v56;
      v93 = v74;
      [v77 addFinishBlock:v92];
      v73 = [(MTStandardIDService *)self IDsForNamespaces:v78 options:v79 fromConfig:configCopy];
      performanceTopic = [configCopy performanceTopic];
      if (performanceTopic && [v10 idType] == 2)
      {
        associatedObjects = [(MTStandardIDService *)self associatedObjects];
        objc_sync_enter(associatedObjects);
        associatedObjects2 = [(MTStandardIDService *)self associatedObjects];
        v59 = [associatedObjects2 objectForKeyedSubscript:@"AMSBag"];

        if (v59)
        {
          associatedObjects3 = [(MTStandardIDService *)self associatedObjects];
          v61 = [associatedObjects3 objectForKeyedSubscript:@"perfKit"];

          if (!v61)
          {
            v61 = [(MTMetricsKitTemplate *)MTPerfKit kitWithTopic:performanceTopic amsBag:v59];
            associatedObjects4 = [(MTStandardIDService *)self associatedObjects];
            [associatedObjects4 setObject:v61 forKeyedSubscript:@"perfKit"];
          }
        }

        else
        {
          v61 = 0;
        }

        objc_sync_exit(associatedObjects);
        if (v61)
        {
          v63 = [v61 flexibleMeasurementWithEventType:@"idRequest"];
          [v63 mark:@"requestStartTime"];
          v89[0] = MEMORY[0x277D85DD0];
          v89[1] = 3221225472;
          v89[2] = __62__MTStandardIDService__IDInfoForNamespace_options_fromConfig___block_invoke_3;
          v89[3] = &unk_2798CD7B0;
          v90 = v10;
          v91 = v63;
          v64 = v63;
          [v77 addFinishBlock:v89];
        }
      }

      promise = [(MTPromiseWithTimeout *)v74 promise];
      v94[0] = promise;
      v94[1] = v73;
      v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
      v67 = [MTPromise promiseWithAll:v66];
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __62__MTStandardIDService__IDInfoForNamespace_options_fromConfig___block_invoke_115;
      v85[3] = &unk_2798CD458;
      v68 = v10;
      v86 = v68;
      v87 = v84;
      selfCopy = self;
      v31 = [v67 thenWithBlock:v85];

      cache2 = [(MTStandardIDService *)self cache];
      [cache2 addIdInfoPromise:v31 forScheme:v68 options:v35];

      v49 = v80;
    }

    else
    {
      if (v46)
      {
        idNamespace3 = [v10 idNamespace];
        *buf = 138412290;
        v96 = idNamespace3;
        _os_log_impl(&dword_258F4B000, v45, OS_LOG_TYPE_INFO, "MetricsKit: Returning cached ID promise for scheme %@", buf, 0xCu);
      }

      v49 = v80;
      v31 = v80;
    }
  }

  else
  {
LABEL_9:
    v30 = MTError(706, @"Date for the request ID is out of bounds", v22, v23, v24, v25, v26, v27, v72);
    v31 = [MTPromise promiseWithError:v30];
  }

LABEL_43:

  v70 = *MEMORY[0x277D85DE8];

  return v31;
}

void __62__MTStandardIDService__IDInfoForNamespace_options_fromConfig___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MTIDSecret alloc] initWithValue:&stru_286A3A510 effectiveDate:0 expirationDate:0 isSynchronize:0];
  [v2 finishWithResult:v3];
}

void __62__MTStandardIDService__IDInfoForNamespace_options_fromConfig___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v5;
  if (v7)
  {
    [*(a1 + 32) finishWithResult:?];
  }

  else if (v5)
  {
    [*(a1 + 32) finishWithError:v5];
  }
}

void __62__MTStandardIDService__IDInfoForNamespace_options_fromConfig___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 32) idNamespace];
    *buf = 138412290;
    v28 = v8;
    _os_log_impl(&dword_258F4B000, v7, OS_LOG_TYPE_INFO, "MetricsKit: Secret promise for scheme %@ completed", buf, 0xCu);
  }

  if (v5)
  {
    [*(a1 + 40) mark:@"requestEndTime"];
    v9 = *(a1 + 40);
    v25 = @"syncState";
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isSynchronized")}];
    v26 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [v9 addFields:{v11, 0}];

    v12 = [v5 syncStatusCode];

    if (v12)
    {
      v13 = *(a1 + 40);
      v23 = @"statusCode";
      v14 = [v5 syncStatusCode];
      v24 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      [v13 addFields:{v15, 0}];
LABEL_8:
    }
  }

  else if (v6)
  {
    v16 = *(a1 + 40);
    v21 = @"statusCode";
    v17 = MEMORY[0x277CCACA8];
    v14 = [v6 domain];
    v15 = [v17 stringWithFormat:@"%@-%ld", v14, objc_msgSend(v6, "code")];
    v22 = v15;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v16 addFields:{v18, 0}];

    goto LABEL_8;
  }

  v19 = [*(a1 + 40) record];

  v20 = *MEMORY[0x277D85DE8];
}

id __62__MTStandardIDService__IDInfoForNamespace_options_fromConfig___block_invoke_115(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count] != 2)
  {
    __62__MTStandardIDService__IDInfoForNamespace_options_fromConfig___block_invoke_115_cold_1();
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:1];
  v6 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) idNamespace];
    v17 = 138412290;
    v18 = v7;
    _os_log_impl(&dword_258F4B000, v6, OS_LOG_TYPE_INFO, "MetricsKit: Secret promise and correlations promise for scheme %@ completed", &v17, 0xCu);
  }

  v8 = [v4 value];
  v9 = [v8 isEqual:&stru_286A3A510];

  if (v9)
  {
    v10 = [MTIDInfo alloc];
    v11 = *(a1 + 32);
    v12 = [v4 value];
    v13 = [(MTIDInfo *)v10 initWithScheme:v11 secret:v4 idString:v12 dsId:*(a1 + 40) effectiveDate:0 expirationDate:0];
  }

  else
  {
    v13 = [*(a1 + 48) generateIDInfo:*(a1 + 32) secret:v4 dsId:*(a1 + 40) correlationIDs:v5];
  }

  v14 = [MTPromise promiseWithResult:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)generateIDInfo:(id)info secret:(id)secret dsId:(id)id correlationIDs:(id)ds
{
  v59 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  secretCopy = secret;
  idCopy = id;
  dsCopy = ds;
  v12 = MEMORY[0x277CBEB18];
  idNamespace = [infoCopy idNamespace];
  v51 = infoCopy;
  version = [infoCopy version];
  v15 = version;
  if (version)
  {
    v16 = version;
  }

  else
  {
    v16 = &stru_286A3A510;
  }

  value = [secretCopy value];
  v18 = value;
  if (value)
  {
    v19 = value;
  }

  else
  {
    v19 = &stru_286A3A510;
  }

  v52 = [v12 arrayWithObjects:{idNamespace, v16, v19, 0}];

  effectiveDate = [secretCopy effectiveDate];
  expirationDate = [secretCopy expirationDate];
  v50 = secretCopy;
  isSynchronized = [secretCopy isSynchronized];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = dsCopy;
  v23 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v55;
    v26 = v52;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v55 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v54 + 1) + 8 * i);
        idString = [v28 idString];
        [v26 addObject:idString];

        effectiveDate2 = [v28 effectiveDate];
        v31 = effectiveDate2;
        if (effectiveDate)
        {
          if (effectiveDate2)
          {
            effectiveDate3 = [v28 effectiveDate];
            if ([effectiveDate compare:effectiveDate3] == -1)
            {
              effectiveDate4 = [v28 effectiveDate];

              effectiveDate = effectiveDate4;
              v26 = v52;
            }
          }
        }

        else
        {
          effectiveDate = effectiveDate2;
        }

        expirationDate2 = [v28 expirationDate];
        v35 = expirationDate2;
        if (expirationDate)
        {
          if (expirationDate2)
          {
            expirationDate3 = [v28 expirationDate];
            if ([expirationDate compare:expirationDate3] != -1)
            {
              expirationDate4 = [v28 expirationDate];

              expirationDate = expirationDate4;
              v26 = v52;
            }
          }
        }

        else
        {
          expirationDate = expirationDate2;
        }

        isSynchronized = isSynchronized & [v28 isSynchronized];
      }

      v24 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v24);
  }

  string = [MEMORY[0x277CCAB68] string];
  version2 = [v51 version];
  v40 = [version2 length];

  if (v40)
  {
    version3 = [v51 version];
    [string appendString:version3];

    [string appendString:@"_"];
  }

  v42 = [v52 componentsJoinedByString:@"\n"];
  mt_SHA1Base62String = [v42 mt_SHA1Base62String];
  [string appendString:mt_SHA1Base62String];

  v44 = [[MTIDInfo alloc] initWithScheme:v51 secret:v50 idString:string dsId:idCopy effectiveDate:effectiveDate expirationDate:expirationDate];
  [(MTIDInfo *)v44 setIsSynchronized:isSynchronized];
  scheme = [(MTIDInfo *)v44 scheme];
  idNamespace2 = [scheme idNamespace];
  [MTStandardIDService registerInterprocessChangeNotifier:idNamespace2];

  v47 = *MEMORY[0x277D85DE8];

  return v44;
}

- (id)secretValueForNamespace:(id)namespace options:(id)options
{
  namespaceCopy = namespace;
  optionsCopy = options;
  configPromise = [(MTStandardIDService *)self configPromise];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__MTStandardIDService_secretValueForNamespace_options___block_invoke;
  v17[3] = &unk_2798CD7D8;
  v18 = namespaceCopy;
  v9 = namespaceCopy;
  v10 = [configPromise thenWithBlock:v17];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__MTStandardIDService_secretValueForNamespace_options___block_invoke_2;
  v15[3] = &unk_2798CD800;
  v15[4] = self;
  v16 = optionsCopy;
  v11 = optionsCopy;
  v12 = [v10 thenWithBlock:v15];
  v13 = [v12 thenWithBlock:&__block_literal_global_128];

  return v13;
}

id __55__MTStandardIDService_secretValueForNamespace_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 schemeForNamespace:*(a1 + 32)];
  v3 = [MTPromise promiseWithComposition:v2];

  return v3;
}

id __55__MTStandardIDService_secretValueForNamespace_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 secretStore];
  v6 = [v5 secretForScheme:v4 options:*(a1 + 40)];

  return v6;
}

id __55__MTStandardIDService_secretValueForNamespace_options___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [MTPromise promiseWithComposition:v2];

  return v3;
}

void __41__MTStandardIDService_flushPerfKitEvents__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MTMetricsKitOSLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      v6 = "MetricsKit: Failed to flush PerfKit events. Error %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 12;
LABEL_6:
      _os_log_impl(&dword_258F4B000, v7, v8, v6, &v11, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v11) = 0;
    v6 = "MetricsKit: Flushed PerfKit events";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEBUG;
    v9 = 2;
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)registerInterprocessChangeNotifier:(id)notifier
{
  notifierCopy = notifier;
  if (registerInterprocessChangeNotifier__onceToken != -1)
  {
    +[MTStandardIDService registerInterprocessChangeNotifier:];
  }

  v4 = registerInterprocessChangeNotifier__subscriptions;
  objc_sync_enter(v4);
  v5 = [registerInterprocessChangeNotifier__subscriptions objectForKeyedSubscript:notifierCopy];

  if (!v5)
  {
    v6 = [MTInterprocessChangeNotifier alloc];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__MTStandardIDService_registerInterprocessChangeNotifier___block_invoke_2;
    v9[3] = &unk_2798CD868;
    v7 = notifierCopy;
    v10 = v7;
    v8 = [(MTInterprocessChangeNotifier *)v6 initWithIdentifier:v7 onChange:v9];
    [registerInterprocessChangeNotifier__subscriptions setObject:v8 forKeyedSubscript:v7];
  }

  objc_sync_exit(v4);
}

uint64_t __58__MTStandardIDService_registerInterprocessChangeNotifier___block_invoke()
{
  registerInterprocessChangeNotifier__subscriptions = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

void __58__MTStandardIDService_registerInterprocessChangeNotifier___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *(a1 + 32);
  v7 = @"namespaces";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 postNotificationName:@"MTIDNamespacesDidResetNotification" object:0 userInfo:v4];

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)writeDebugData:(id)data toFileWithNameFormat:(id)format
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA968];
  formatCopy = format;
  dataCopy = data;
  v8 = objc_alloc_init(v5);
  [v8 setDateFormat:@"yyyyMMddHHmmss"];
  v9 = MEMORY[0x277CCACA8];
  v10 = +[MTFrameworkEnvironment sharedEnvironment];
  hostProcessBundleIdentifier = [v10 hostProcessBundleIdentifier];
  v12 = +[MTFrameworkEnvironment sharedEnvironment];
  date = [v12 date];
  v14 = [v8 stringFromDate:date];
  v15 = [v9 stringWithFormat:formatCopy, hostProcessBundleIdentifier, v14];

  v16 = NSTemporaryDirectory();
  v17 = +[MTFrameworkEnvironment sharedEnvironment];
  metricsKitBundleIdentifier = [v17 metricsKitBundleIdentifier];
  v19 = [v16 stringByAppendingPathComponent:metricsKitBundleIdentifier];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:0];

  v21 = [v19 stringByAppendingPathComponent:v15];

  v22 = [objc_alloc(MEMORY[0x277CBEB78]) initToFileAtPath:v21 append:0];
  [v22 open];
  v28 = 0;
  [MEMORY[0x277CCAAA0] writeJSONObject:dataCopy toStream:v22 options:0 error:&v28];

  v23 = v28;
  [v22 close];
  if (v23)
  {
    v24 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v30 = v21;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_258F4B000, v24, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to write to %@ error %@", buf, 0x16u);
    }

    v25 = 0;
  }

  else
  {
    v25 = v21;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)_clearLocalData
{
  secretStore = [(MTStandardIDService *)self secretStore];
  [secretStore clearLocalData];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MTIDNamespacesDidResetNotification" object:0 userInfo:0];

  v4 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_258F4B000, v4, OS_LOG_TYPE_INFO, "MetricsKit: ID service has cleared local cached data", v5, 2u);
  }
}

- (void)_resetIDs
{
  objc_initWeak(&location, self);
  v3 = [(MTStandardIDService *)self filledOptions:0];
  v4 = objc_loadWeakRetained(&location);
  configPromise = [v4 configPromise];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__MTStandardIDService__resetIDs__block_invoke;
  v7[3] = &unk_2798CD890;
  v7[4] = self;
  v6 = v3;
  v8 = v6;
  [configPromise addSuccessBlock:v7];

  objc_destroyWeak(&location);
}

void __32__MTStandardIDService__resetIDs__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 secretStore];
  v6 = [v4 allKnownSchemes];

  v7 = [v5 resetSchemes:v6 options:*(a1 + 40)];
  v8 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_258F4B000, v8, OS_LOG_TYPE_INFO, "MetricsKit: ID service has reset IDs in all namespaces", v9, 2u);
  }
}

- (void)_getSecrets
{
  v11 = *MEMORY[0x277D85DE8];
  secretStore = [(MTStandardIDService *)self secretStore];
  if (objc_opt_respondsToSelector())
  {
    secretStore2 = [(MTStandardIDService *)self secretStore];
    debugInfo = [secretStore2 debugInfo];
  }

  else
  {
    debugInfo = MEMORY[0x277CBEC10];
  }

  v6 = [MTStandardIDService writeDebugData:debugInfo toFileWithNameFormat:@"MTIDSecrets-%@-%@.json"];
  if (v6)
  {
    v7 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_258F4B000, v7, OS_LOG_TYPE_INFO, "MetricsKit: ID service has written current secrets to %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_getIDs
{
  objc_initWeak(&location, self);
  v3 = [(MTStandardIDService *)self filledOptions:0];
  v4 = objc_loadWeakRetained(&location);
  configPromise = [v4 configPromise];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__MTStandardIDService__getIDs__block_invoke;
  v7[3] = &unk_2798CD8D8;
  objc_copyWeak(&v9, &location);
  v6 = v3;
  v8 = v6;
  [configPromise addSuccessBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __30__MTStandardIDService__getIDs__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v3 = [v19 allKnownSchemes];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v10 = [MEMORY[0x277CBEB38] dictionary];
        v11 = [v9 dictionaryRepresentation];
        [v10 setObject:v11 forKeyedSubscript:@"scheme"];

        WeakRetained = objc_loadWeakRetained((a1 + 40));
        v13 = [v9 idNamespace];
        v14 = [WeakRetained IDInfoForNamespace:v13 options:*(a1 + 32) fromConfig:v19];
        v15 = [v14 thenWithBlock:&__block_literal_global_151];
        [v10 setObject:v15 forKeyedSubscript:@"current"];

        [v4 addObject:v10];
        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v16 = [MTPromise promiseWithComposition:v4];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __30__MTStandardIDService__getIDs__block_invoke_3;
  v20[3] = &unk_2798CD258;
  v21 = *(a1 + 32);
  [v16 addFinishBlock:v20];

  v17 = *MEMORY[0x277D85DE8];
}

id __30__MTStandardIDService__getIDs__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 debugInfo];
  v3 = [MTPromise promiseWithResult:v2];

  return v3;
}

void __30__MTStandardIDService__getIDs__block_invoke_3(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"date";
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objectForKeyedSubscript:@"date"];
  v5 = [v4 description];
  v12[1] = @"ids";
  v13[0] = v5;
  v13[1] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v7 = [MTStandardIDService writeDebugData:v6 toFileWithNameFormat:@"MTIDs-%@-%@.json"];

  if (v7)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_258F4B000, v8, OS_LOG_TYPE_INFO, "MetricsKit: ID service has written the current IDs to %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_getConfig
{
  v11 = *MEMORY[0x277D85DE8];
  configPromise = [(MTStandardIDService *)self configPromise];
  v3 = [configPromise resultWithError:0];

  dictionaryRepresentation = [v3 dictionaryRepresentation];

  if (dictionaryRepresentation)
  {
    dictionaryRepresentation2 = [v3 dictionaryRepresentation];
    v6 = [MTStandardIDService writeDebugData:dictionaryRepresentation2 toFileWithNameFormat:@"MTIDConfig-%@-%@.json"];
    if (v6)
    {
      v7 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_258F4B000, v7, OS_LOG_TYPE_INFO, "MetricsKit: ID service has written current config to %@", &v9, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end