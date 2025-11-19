@interface MTStandardIDService
+ (NSString)localCachePath;
+ (id)writeDebugData:(id)a3 toFileWithNameFormat:(id)a4;
+ (void)registerInterprocessChangeNotifier:(id)a3;
+ (void)setLocalCachePath:(id)a3;
- (MTStandardIDService)initWithConfigDictPromise:(id)a3 bag:(id)a4;
- (MTStandardIDService)initWithConfigDictionary:(id)a3;
- (NSNumber)defaultDSID;
- (NSNumber)dsId;
- (OS_dispatch_queue)serialQueue;
- (id)IDFieldsForTopic:(id)a3 options:(id)a4;
- (id)IDForTopic:(id)a3 type:(int64_t)a4 options:(id)a5;
- (id)IDInfoForNamespace:(id)a3 options:(id)a4 fromConfig:(id)a5;
- (id)IDsForNamespaces:(id)a3 options:(id)a4 fromConfig:(id)a5;
- (id)_IDInfoForNamespace:(id)a3 options:(id)a4 fromConfig:(id)a5;
- (id)configPromise;
- (id)filledOptions:(id)a3;
- (id)generateIDInfo:(id)a3 secret:(id)a4 dsId:(id)a5 correlationIDs:(id)a6;
- (id)resetIDForTopics:(id)a3 options:(id)a4;
- (id)secretValueForNamespace:(id)a3 options:(id)a4;
- (id)sync:(id)a3;
- (void)IDFieldsForTopic:(id)a3 options:(id)a4 completion:(id)a5;
- (void)_clearLocalData;
- (void)_getConfig;
- (void)_getIDs;
- (void)_getSecrets;
- (void)_resetIDs;
- (void)dealloc;
- (void)flushPerfKitEvents;
- (void)handleAccountNotification;
- (void)handleApplicationStateChange:(id)a3;
- (void)handleRecordNotification;
- (void)handleResetNotification:(id)a3;
- (void)maybeSubscribeToDarwinNotifications;
- (void)performMaintenanceWithCompletion:(id)a3;
- (void)queryIDForTopic:(id)a3 type:(int64_t)a4 options:(id)a5 completion:(id)a6;
- (void)resetIDForTopics:(id)a3 options:(id)a4 completion:(id)a5;
- (void)setConfig:(id)a3;
@end

@implementation MTStandardIDService

- (id)configPromise
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MTStandardIDService *)v2 cachedConfig];
  objc_sync_exit(v2);

  if (v3)
  {
    v4 = [MTPromise promiseWithResult:v3];
  }

  else
  {
    v5 = v2;
    objc_sync_enter(v5);
    v6 = [(MTStandardIDService *)v5 associatedObjects];
    v7 = [v6 objectForKeyedSubscript:@"AMSBag"];

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
      v12 = v10;

      v4 = v12;
    }

    else
    {
      v12 = [(MTStandardIDService *)v5 configDictPromise];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __36__MTStandardIDService_configPromise__block_invoke_42;
      v14[3] = &unk_2798CD570;
      v14[4] = v5;
      v4 = [(MTPromise *)v12 thenWithBlock:v14];
    }
  }

  return v4;
}

- (NSNumber)defaultDSID
{
  v2 = self;
  objc_sync_enter(v2);
  defaultDSID = v2->_defaultDSID;
  if (!defaultDSID)
  {
    v4 = [MEMORY[0x277CB8F50] ams_sharedAccountStore];
    v5 = [v4 ams_activeiTunesAccount];
    v6 = [v5 ams_DSID];
    v7 = v2->_defaultDSID;
    v2->_defaultDSID = v6;

    defaultDSID = v2->_defaultDSID;
  }

  v8 = defaultDSID;
  objc_sync_exit(v2);

  return v8;
}

- (NSNumber)dsId
{
  dsId = self->_dsId;
  if (dsId)
  {
    v3 = dsId;
  }

  else
  {
    v3 = [(MTStandardIDService *)self defaultDSID];
  }

  return v3;
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
  v3 = [(MTStandardIDService *)self associatedObjects];
  objc_sync_enter(v3);
  v4 = [(MTStandardIDService *)self associatedObjects];
  v9 = [v4 objectForKeyedSubscript:@"perfKit"];

  objc_sync_exit(v3);
  v5 = v9;
  if (v9)
  {
    v6 = [v9 system];
    v7 = [v6 eventRecorder];
    v8 = [v7 flushUnreportedEvents];

    [v8 addFinishBlock:&__block_literal_global_130];
    v5 = v9;
  }
}

- (void)maybeSubscribeToDarwinNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v4, self, _handleITunesAccountsChangedNotification, @"com.apple.itunesstored.accountschanged", 0, CFNotificationSuspensionBehaviorDrop);
  v5 = +[MTFrameworkEnvironment sharedEnvironment];
  v6 = [v5 isInternalBuild];

  if (v6)
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

- (MTStandardIDService)initWithConfigDictionary:(id)a3
{
  v4 = [MTPromise promiseWithResult:a3];
  v5 = [(MTStandardIDService *)self initWithConfigPromise:v4];

  return v5;
}

- (MTStandardIDService)initWithConfigDictPromise:(id)a3 bag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = MTStandardIDService;
  v8 = [(MTStandardIDService *)&v29 init];
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      [(MTStandardIDService *)v8 setConfigDictPromise:v6];
    }

    else
    {
      v10 = [MTPromise promiseWithResult:MEMORY[0x277CBEC10]];
      [(MTStandardIDService *)v9 setConfigDictPromise:v10];
    }

    v11 = +[MTFrameworkEnvironment sharedEnvironment];
    v12 = [v11 idCache];
    [(MTStandardIDService *)v9 setCache:v12];

    v13 = +[MTFrameworkEnvironment sharedEnvironment];
    v14 = [v13 secretStore];
    [(MTStandardIDService *)v9 setSecretStore:v14];

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(MTStandardIDService *)v9 setAssociatedObjects:v15];

    if (v7)
    {
      v16 = [(MTStandardIDService *)v9 associatedObjects];
      [v16 setObject:v7 forKeyedSubscript:@"AMSBag"];
    }

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v9 selector:sel_handleResetNotification_ name:@"MTIDNamespacesDidResetNotification" object:0];
    if (NSClassFromString(&cfstr_Uiapplication.isa))
    {
      [v17 addObserver:v9 selector:sel_handleApplicationStateChange_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
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

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 addObserver:v9 selector:sel_handleAccountNotification name:*MEMORY[0x277CB8908] object:0];

    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:v9 selector:sel_handleAccountNotification name:*MEMORY[0x277CB8B70] object:0];

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

- (void)setConfig:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(MTStandardIDService *)v4 setCachedConfig:v5];
  objc_sync_exit(v4);
}

- (void)handleAccountNotification
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(MTStandardIDService *)obj cache];
  [v2 removeAllNamespaces];

  [(MTStandardIDService *)obj setDefaultDSID:0];
  objc_sync_exit(obj);
}

- (void)handleRecordNotification
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(MTStandardIDService *)obj cache];
  [v2 removeUnsyncedNamespaces];

  objc_sync_exit(obj);
}

- (void)handleResetNotification:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 objectForKeyedSubscript:@"namespaces"];

  v5 = [(MTStandardIDService *)self cache];
  v6 = v5;
  if (v7)
  {
    [v5 removeNamespaces:v7];
  }

  else
  {
    [v5 removeAllNamespaces];
  }
}

- (void)handleApplicationStateChange:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MTStandardIDService *)v4 cache];
  [v5 removeAllNamespaces];

  objc_sync_exit(v4);
}

+ (void)setLocalCachePath:(id)a3
{
  v3 = a3;
  v4 = +[MTFrameworkEnvironment sharedEnvironment];
  [v4 setLocalDataPath:v3];
}

+ (NSString)localCachePath
{
  v2 = +[MTFrameworkEnvironment sharedEnvironment];
  v3 = [v2 localDataPath];

  return v3;
}

- (void)IDFieldsForTopic:(id)a3 options:(id)a4 completion:(id)a5
{
  v9 = a5;
  v8 = [(MTStandardIDService *)self IDFieldsForTopic:a3 options:a4];
  if (v9)
  {
    [v8 addFinishBlock:v9];
  }
}

- (void)resetIDForTopics:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(MTStandardIDService *)self resetIDForTopics:a3 options:a4];
  if (v8)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59__MTStandardIDService_resetIDForTopics_options_completion___block_invoke;
    v10[3] = &unk_2798CD598;
    v11 = v8;
    [v9 addFinishBlock:v10];
  }
}

- (id)IDFieldsForTopic:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = [(MTStandardIDService *)self filledOptions:a4];
  v8 = [(MTStandardIDService *)self configPromise];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__MTStandardIDService_IDFieldsForTopic_options___block_invoke;
  v18[3] = &unk_2798CD600;
  v9 = v6;
  v19 = v9;
  v10 = v7;
  v20 = v10;
  v21 = self;
  v11 = [v8 thenWithBlock:v18];

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

- (id)resetIDForTopics:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = [(MTStandardIDService *)self filledOptions:a4];
  v8 = [(MTStandardIDService *)self configPromise];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__MTStandardIDService_resetIDForTopics_options___block_invoke;
  v13[3] = &unk_2798CD600;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 thenWithBlock:v13];

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

- (void)queryIDForTopic:(id)a3 type:(int64_t)a4 options:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [(MTStandardIDService *)self IDForTopic:a3 type:a4 options:a5];
  [v11 addFinishBlock:v10];
}

- (void)performMaintenanceWithCompletion:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([objc_opt_class() isTinkerPaired])
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [v5 valueForKey:@"MTIDServiceLastMaintenanceDate"];
    v7 = +[MTFrameworkEnvironment sharedEnvironment];
    v8 = [v7 date];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 timeIntervalSinceDate:v6];
      if (v9 < 86400.0)
      {
        v10 = MTMetricsKitOSLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v20 = v6;
          _os_log_impl(&dword_258F4B000, v10, OS_LOG_TYPE_INFO, "MetricsKit: Skipping ID service maintenance because the last performed maintenance was too recent at %@", buf, 0xCu);
        }

        v4[2](v4, 0);
        goto LABEL_13;
      }
    }

    [v5 setValue:v8 forKey:@"MTIDServiceLastMaintenanceDate"];
  }

  v5 = [(MTStandardIDService *)self filledOptions:0];
  v11 = [(MTStandardIDService *)self secretStore];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(MTStandardIDService *)self configPromise];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__MTStandardIDService_performMaintenanceWithCompletion___block_invoke;
    v17[3] = &unk_2798CD678;
    v17[4] = self;
    v18 = v5;
    v6 = [v13 thenWithBlock:v17];

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v6 = [MTPromise promiseWithResult:MEMORY[0x277CBEC38]];
  if (v4)
  {
LABEL_12:
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__MTStandardIDService_performMaintenanceWithCompletion___block_invoke_2;
    v15[3] = &unk_2798CD598;
    v16 = v4;
    [v6 addFinishBlock:v15];
    v8 = v16;
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

- (id)sync:(id)a3
{
  v4 = a3;
  v5 = [(MTStandardIDService *)self filledOptions:0];
  v6 = [(MTStandardIDService *)self configPromise];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __28__MTStandardIDService_sync___block_invoke;
  v11[3] = &unk_2798CD600;
  v12 = v4;
  v13 = self;
  v14 = v5;
  v7 = v5;
  v8 = v4;
  v9 = [v6 thenWithBlock:v11];

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

- (id)filledOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"date"];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 objectForKeyedSubscript:@"dsId"];
    if (v7)
    {
      v8 = v7;
      v9 = [v4 objectForKeyedSubscript:@"appBundleID"];

      if (v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }
  }

  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = v10;
  if (v4)
  {
    [v10 addEntriesFromDictionary:v4];
  }

  v12 = [v4 objectForKeyedSubscript:@"date"];

  if (!v12)
  {
    v13 = +[MTFrameworkEnvironment sharedEnvironment];
    v14 = [v13 date];
    [v11 setObject:v14 forKeyedSubscript:@"date"];
  }

  v15 = [v4 objectForKeyedSubscript:@"dsId"];

  if (!v15)
  {
    v16 = [(MTStandardIDService *)self dsId];
    if (v16)
    {
      [v11 setObject:v16 forKeyedSubscript:@"dsId"];
    }

    else
    {
      v17 = [(MTStandardIDService *)self defaultDSID];
      [v11 setObject:v17 forKeyedSubscript:@"dsId"];
    }
  }

  v18 = [v4 objectForKeyedSubscript:@"appBundleID"];

  if (!v18)
  {
    v19 = [(MTStandardIDService *)self applicationBundleIdentifierOverrideForNetworkAttribution];
    if (v19)
    {
      [v11 setObject:v19 forKeyedSubscript:@"appBundleID"];
    }

    else
    {
      v20 = +[MTFrameworkEnvironment sharedEnvironment];
      v21 = [v20 hostProcessBundleIdentifier];
      [v11 setObject:v21 forKeyedSubscript:@"appBundleID"];
    }
  }

  v22 = [v4 objectForKeyedSubscript:@"iTunesUserRequired"];

  if (!v22)
  {
    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"iTunesUserRequired"];
  }

  v23 = [v11 copy];

  v4 = v23;
LABEL_23:

  return v4;
}

- (id)IDForTopic:(id)a3 type:(int64_t)a4 options:(id)a5
{
  v8 = a3;
  v9 = [(MTStandardIDService *)self filledOptions:a5];
  v10 = [(MTStandardIDService *)self configPromise];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__MTStandardIDService_IDForTopic_type_options___block_invoke;
  v20[3] = &unk_2798CD6A0;
  v11 = v8;
  v24 = a4;
  v21 = v11;
  v22 = self;
  v12 = v9;
  v23 = v12;
  v13 = [v10 thenWithBlock:v20];

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

- (id)IDsForNamespaces:(id)a3 options:(id)a4 fromConfig:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__MTStandardIDService_IDsForNamespaces_options_fromConfig___block_invoke;
    v14[3] = &unk_2798CD6F0;
    v14[4] = self;
    v15 = v9;
    v16 = v10;
    v11 = [v8 mt_map:v14];
    v12 = [MTPromise promiseWithAll:v11];
  }

  else
  {
    v12 = [MTPromise promiseWithResult:MEMORY[0x277CBEBF8]];
  }

  return v12;
}

- (id)IDInfoForNamespace:(id)a3 options:(id)a4 fromConfig:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MTPromise);
  v12 = [(MTStandardIDService *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__MTStandardIDService_IDInfoForNamespace_options_fromConfig___block_invoke;
  block[3] = &unk_2798CD740;
  v21 = v9;
  v22 = self;
  v23 = v8;
  v24 = v10;
  v13 = v11;
  v25 = v13;
  v14 = v10;
  v15 = v8;
  v16 = v9;
  dispatch_async(v12, block);

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

- (id)_IDInfoForNamespace:(id)a3 options:(id)a4 fromConfig:(id)a5
{
  v97 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v81 = v7;
  v10 = [v9 schemeForNamespace:v7];
  v83 = [v8 objectForKeyedSubscript:@"date"];
  v84 = [v8 objectForKeyedSubscript:@"dsId"];
  v11 = [v8 objectForKeyedSubscript:@"existingOnly"];
  v12 = [v11 BOOLValue];

  v13 = [v8 objectForKeyedSubscript:@"iTunesUserRequired"];
  v14 = [v13 BOOLValue];

  if (v14)
  {
    v15 = [MEMORY[0x277CB8F50] ams_sharedAccountStore];
    v16 = [v15 ams_activeiTunesAccount];
    v17 = [v16 ams_DSID];

    if (!v84 || v17 && ![v17 isEqualToNumber:v84])
    {
      v38 = [[MTIDSecret alloc] initWithValue:&stru_286A3A510 effectiveDate:0 expirationDate:0 isSynchronize:0];
      v39 = [MTIDInfo alloc];
      v40 = [(MTIDSecret *)v38 value];
      LOBYTE(v72) = 0;
      v41 = [(MTIDInfo *)v39 initWithScheme:v10 secret:v38 idString:v40 dsId:0 effectiveDate:0 expirationDate:0 shouldGenerateMetricsFields:v72];

      v31 = [MTPromise promiseWithResult:v41];

      goto LABEL_43;
    }
  }

  if ([v10 lifespan] < 1)
  {
    goto LABEL_10;
  }

  v18 = +[MTFrameworkEnvironment sharedEnvironment];
  v19 = [v18 date];
  [v83 timeIntervalSinceDate:v19];
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
    v32 = [v8 objectForKeyedSubscript:@"reset"];
    v33 = [v32 BOOLValue];

    v34 = v8;
    v35 = v34;
    if (v33)
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

    v43 = [(MTStandardIDService *)self cache];
    v80 = [v43 IDInfoForScheme:v10 options:v35];

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
    if ((v44 | v12))
    {
      if (v80)
      {
        if (v46)
        {
          v47 = [v10 idNamespace];
          *buf = 138412290;
          v96 = v47;
          _os_log_impl(&dword_258F4B000, v45, OS_LOG_TYPE_INFO, "MetricsKit: ID promise for scheme %@ is cached but not used", buf, 0xCu);
        }
      }

      else if (v46)
      {
        v50 = [v10 idNamespace];
        *buf = 138412290;
        v96 = v50;
        _os_log_impl(&dword_258F4B000, v45, OS_LOG_TYPE_INFO, "MetricsKit: ID promise for scheme %@ is not cached", buf, 0xCu);
      }

      v51 = MEMORY[0x277CBEB18];
      v52 = [v10 correlations];
      v53 = v52;
      if (v52)
      {
        v54 = v52;
      }

      else
      {
        v54 = MEMORY[0x277CBEBF8];
      }

      v78 = [v51 arrayWithArray:v54];

      [v78 removeObject:v81];
      v55 = [(MTStandardIDService *)self secretStore];
      v77 = [v55 secretForScheme:v10 options:v35];

      v75 = dispatch_get_global_queue(0, 0);
      v56 = [[MTPromiseWithTimeout alloc] initWithTimeout:v75 queue:&__block_literal_global_102 timeoutBlock:55.0];
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __62__MTStandardIDService__IDInfoForNamespace_options_fromConfig___block_invoke_2;
      v92[3] = &unk_2798CD788;
      v74 = v56;
      v93 = v74;
      [v77 addFinishBlock:v92];
      v73 = [(MTStandardIDService *)self IDsForNamespaces:v78 options:v79 fromConfig:v9];
      v76 = [v9 performanceTopic];
      if (v76 && [v10 idType] == 2)
      {
        v57 = [(MTStandardIDService *)self associatedObjects];
        objc_sync_enter(v57);
        v58 = [(MTStandardIDService *)self associatedObjects];
        v59 = [v58 objectForKeyedSubscript:@"AMSBag"];

        if (v59)
        {
          v60 = [(MTStandardIDService *)self associatedObjects];
          v61 = [v60 objectForKeyedSubscript:@"perfKit"];

          if (!v61)
          {
            v61 = [(MTMetricsKitTemplate *)MTPerfKit kitWithTopic:v76 amsBag:v59];
            v62 = [(MTStandardIDService *)self associatedObjects];
            [v62 setObject:v61 forKeyedSubscript:@"perfKit"];
          }
        }

        else
        {
          v61 = 0;
        }

        objc_sync_exit(v57);
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

      v65 = [(MTPromiseWithTimeout *)v74 promise];
      v94[0] = v65;
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
      v88 = self;
      v31 = [v67 thenWithBlock:v85];

      v69 = [(MTStandardIDService *)self cache];
      [v69 addIdInfoPromise:v31 forScheme:v68 options:v35];

      v49 = v80;
    }

    else
    {
      if (v46)
      {
        v48 = [v10 idNamespace];
        *buf = 138412290;
        v96 = v48;
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

- (id)generateIDInfo:(id)a3 secret:(id)a4 dsId:(id)a5 correlationIDs:(id)a6
{
  v59 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v49 = a5;
  v11 = a6;
  v12 = MEMORY[0x277CBEB18];
  v13 = [v9 idNamespace];
  v51 = v9;
  v14 = [v9 version];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_286A3A510;
  }

  v17 = [v10 value];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_286A3A510;
  }

  v52 = [v12 arrayWithObjects:{v13, v16, v19, 0}];

  v20 = [v10 effectiveDate];
  v21 = [v10 expirationDate];
  v50 = v10;
  v22 = [v10 isSynchronized];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v11;
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
        v29 = [v28 idString];
        [v26 addObject:v29];

        v30 = [v28 effectiveDate];
        v31 = v30;
        if (v20)
        {
          if (v30)
          {
            v32 = [v28 effectiveDate];
            if ([v20 compare:v32] == -1)
            {
              v33 = [v28 effectiveDate];

              v20 = v33;
              v26 = v52;
            }
          }
        }

        else
        {
          v20 = v30;
        }

        v34 = [v28 expirationDate];
        v35 = v34;
        if (v21)
        {
          if (v34)
          {
            v36 = [v28 expirationDate];
            if ([v21 compare:v36] != -1)
            {
              v37 = [v28 expirationDate];

              v21 = v37;
              v26 = v52;
            }
          }
        }

        else
        {
          v21 = v34;
        }

        v22 = v22 & [v28 isSynchronized];
      }

      v24 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v24);
  }

  v38 = [MEMORY[0x277CCAB68] string];
  v39 = [v51 version];
  v40 = [v39 length];

  if (v40)
  {
    v41 = [v51 version];
    [v38 appendString:v41];

    [v38 appendString:@"_"];
  }

  v42 = [v52 componentsJoinedByString:@"\n"];
  v43 = [v42 mt_SHA1Base62String];
  [v38 appendString:v43];

  v44 = [[MTIDInfo alloc] initWithScheme:v51 secret:v50 idString:v38 dsId:v49 effectiveDate:v20 expirationDate:v21];
  [(MTIDInfo *)v44 setIsSynchronized:v22];
  v45 = [(MTIDInfo *)v44 scheme];
  v46 = [v45 idNamespace];
  [MTStandardIDService registerInterprocessChangeNotifier:v46];

  v47 = *MEMORY[0x277D85DE8];

  return v44;
}

- (id)secretValueForNamespace:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTStandardIDService *)self configPromise];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__MTStandardIDService_secretValueForNamespace_options___block_invoke;
  v17[3] = &unk_2798CD7D8;
  v18 = v6;
  v9 = v6;
  v10 = [v8 thenWithBlock:v17];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__MTStandardIDService_secretValueForNamespace_options___block_invoke_2;
  v15[3] = &unk_2798CD800;
  v15[4] = self;
  v16 = v7;
  v11 = v7;
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

+ (void)registerInterprocessChangeNotifier:(id)a3
{
  v3 = a3;
  if (registerInterprocessChangeNotifier__onceToken != -1)
  {
    +[MTStandardIDService registerInterprocessChangeNotifier:];
  }

  v4 = registerInterprocessChangeNotifier__subscriptions;
  objc_sync_enter(v4);
  v5 = [registerInterprocessChangeNotifier__subscriptions objectForKeyedSubscript:v3];

  if (!v5)
  {
    v6 = [MTInterprocessChangeNotifier alloc];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__MTStandardIDService_registerInterprocessChangeNotifier___block_invoke_2;
    v9[3] = &unk_2798CD868;
    v7 = v3;
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

+ (id)writeDebugData:(id)a3 toFileWithNameFormat:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA968];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setDateFormat:@"yyyyMMddHHmmss"];
  v9 = MEMORY[0x277CCACA8];
  v10 = +[MTFrameworkEnvironment sharedEnvironment];
  v11 = [v10 hostProcessBundleIdentifier];
  v12 = +[MTFrameworkEnvironment sharedEnvironment];
  v13 = [v12 date];
  v14 = [v8 stringFromDate:v13];
  v15 = [v9 stringWithFormat:v6, v11, v14];

  v16 = NSTemporaryDirectory();
  v17 = +[MTFrameworkEnvironment sharedEnvironment];
  v18 = [v17 metricsKitBundleIdentifier];
  v19 = [v16 stringByAppendingPathComponent:v18];

  v20 = [MEMORY[0x277CCAA00] defaultManager];
  [v20 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:0];

  v21 = [v19 stringByAppendingPathComponent:v15];

  v22 = [objc_alloc(MEMORY[0x277CBEB78]) initToFileAtPath:v21 append:0];
  [v22 open];
  v28 = 0;
  [MEMORY[0x277CCAAA0] writeJSONObject:v7 toStream:v22 options:0 error:&v28];

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
  v2 = [(MTStandardIDService *)self secretStore];
  [v2 clearLocalData];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"MTIDNamespacesDidResetNotification" object:0 userInfo:0];

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
  v5 = [v4 configPromise];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__MTStandardIDService__resetIDs__block_invoke;
  v7[3] = &unk_2798CD890;
  v7[4] = self;
  v6 = v3;
  v8 = v6;
  [v5 addSuccessBlock:v7];

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
  v3 = [(MTStandardIDService *)self secretStore];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(MTStandardIDService *)self secretStore];
    v5 = [v4 debugInfo];
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  v6 = [MTStandardIDService writeDebugData:v5 toFileWithNameFormat:@"MTIDSecrets-%@-%@.json"];
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
  v5 = [v4 configPromise];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__MTStandardIDService__getIDs__block_invoke;
  v7[3] = &unk_2798CD8D8;
  objc_copyWeak(&v9, &location);
  v6 = v3;
  v8 = v6;
  [v5 addSuccessBlock:v7];

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
  v2 = [(MTStandardIDService *)self configPromise];
  v3 = [v2 resultWithError:0];

  v4 = [v3 dictionaryRepresentation];

  if (v4)
  {
    v5 = [v3 dictionaryRepresentation];
    v6 = [MTStandardIDService writeDebugData:v5 toFileWithNameFormat:@"MTIDConfig-%@-%@.json"];
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