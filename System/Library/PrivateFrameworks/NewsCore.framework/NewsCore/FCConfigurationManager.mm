@interface FCConfigurationManager
- (BOOL)_currentAppConfigurationIsExpired;
- (FCConfigurationManager)init;
- (FCConfigurationManager)initWithContextConfiguration:(id)configuration contentHostDirectoryFileURL:(id)l feldsparIDProvider:(id)provider;
- (FCConfigurationManager)initWithContextConfiguration:(id)configuration contentHostDirectoryFileURL:(id)l feldsparIDProvider:(id)provider appShortVersionString:(id)string buildNumberString:(id)numberString networkBehaviorMonitor:(id)monitor appActivityMonitor:(id)activityMonitor applicationState:(unint64_t)self0;
- (FCCoreConfiguration)configuration;
- (FCNewsAppConfiguration)appConfiguration;
- (FCNewsAppConfiguration)fetchedAppConfiguration;
- (FCNewsAppConfiguration)jsonEncodableAppConfiguration;
- (FCNewsAppConfiguration)possiblyUnfetchedAppConfiguration;
- (NSArray)segmentSetIDs;
- (NSArray)treatmentIDs;
- (NSData)audioFeedConfigData;
- (NSData)magazinesConfigurationData;
- (NSData)todayFeedConfigurationData;
- (NSString)feldsparID;
- (id)_changeTagsInRecords:(void *)records;
- (id)_changeTagsInWidgetConfigurationDict:(uint64_t)dict;
- (id)_configurationSettingsWithRequestInfos:(void *)infos feldsparID:(void *)d storefrontID:(unsigned int)iD contextConfiguration:(void *)configuration useBackgroundRefreshRate:requestMode:formatVersion:;
- (id)_deviceInfoWithFormatVersion:(uint64_t)version;
- (id)_loadConfigDataForRequestKey:(void *)key;
- (id)_mergeRecords:(void *)records withCachedRecords:(void *)cachedRecords;
- (id)_requestInfoForRequestKey:(void *)key storefrontID:(void *)d additionalChangeTags:(uint64_t)tags feedType:(void *)type cachePolicy:;
- (id)_requestInfoForRequestKey:(void *)key storefrontID:(void *)d additionalChangeTags:(void *)tags cachePolicy:;
- (id)_storefrontID;
- (id)currentAppConfiguration;
- (id)initForTesting;
- (id)lastModificationDate;
- (void)_configurationDidChangeSignificantConfigChange:(int)change paywallConfigDidChange:(char)didChange scienceExperimentFieldsDidChange:;
- (void)_fetchAppConfigurationIfNeededWithForceRefresh:(void *)refresh completion:;
- (void)_saveConfigData:(uint64_t)data forRequestKey:;
- (void)addAppConfigObserver:(id)observer;
- (void)addObserver:(id)observer;
- (void)fetchAppConfigurationIfNeededWithCompletionQueue:(id)queue completion:(id)completion;
- (void)fetchAppWidgetConfigurationWithTodayLiteConfig:(BOOL)config additionalFields:(id)fields completion:(id)completion;
- (void)fetchAudioFeedConfigIfNeededWithCompletionQueue:(id)queue formatVersion:(id)version completion:(id)completion;
- (void)fetchConfigurationIfNeededWithCompletionQueue:(id)queue completion:(id)completion;
- (void)fetchMagazinesConfigurationIfNeededWithCompletionQueue:(id)queue formatVersion:(id)version completion:(id)completion;
- (void)fetchTodayFeedConfigurationIfNeededWithCompletionQueue:(id)queue feedType:(unint64_t)type formatVersion:(id)version cachePolicy:(id)policy networkActivityBlock:(id)block completion:(id)completion;
- (void)refreshAppConfigurationIfNeededWithCompletionQueue:(id)queue refreshCompletion:(id)completion;
- (void)removeAppConfigObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation FCConfigurationManager

- (id)_storefrontID
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v1 = +[FCAppleAccount sharedAccount];
    contentStoreFrontID = [v1 contentStoreFrontID];

    v3 = +[FCAppleAccount sharedAccount];
    supportedContentStoreFrontID = [v3 supportedContentStoreFrontID];

    v5 = [MEMORY[0x1E69E58C0] nf_object:contentStoreFrontID isEqualToObject:supportedContentStoreFrontID];
    v6 = FCAppConfigurationLog;
    v7 = os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v13 = 138543362;
        v14 = contentStoreFrontID;
        v8 = "configuration manager will use the current storefrontID: %{public}@";
        v9 = v6;
        v10 = 12;
LABEL_7:
        _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      }
    }

    else if (v7)
    {
      v13 = 138543618;
      v14 = contentStoreFrontID;
      v15 = 2114;
      v16 = supportedContentStoreFrontID;
      v8 = "configuration manager will fall back from the current storefrontID: %{public}@ to the supported storefrontID: %{public}@";
      v9 = v6;
      v10 = 22;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  supportedContentStoreFrontID = 0;
LABEL_9:
  v11 = *MEMORY[0x1E69E9840];

  return supportedContentStoreFrontID;
}

uint64_t __59__FCConfigurationManager_possiblyUnfetchedAppConfiguration__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (FCCoreConfiguration)configuration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  if (self)
  {
    accessLock = self->_accessLock;
  }

  else
  {
    accessLock = 0;
  }

  v4 = accessLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__FCConfigurationManager_configuration__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(NFUnfairLock *)v4 performWithLockSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __39__FCConfigurationManager_configuration__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (FCNewsAppConfiguration)possiblyUnfetchedAppConfiguration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  if (self)
  {
    accessLock = self->_accessLock;
  }

  else
  {
    accessLock = 0;
  }

  v4 = accessLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__FCConfigurationManager_possiblyUnfetchedAppConfiguration__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(NFUnfairLock *)v4 performWithLockSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)_currentAppConfigurationIsExpired
{
  selfCopy = self;
  v28 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__19;
    v22 = __Block_byref_object_dispose__19;
    v23 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__19;
    v16 = __Block_byref_object_dispose__19;
    v17 = 0;
    v2 = *(self + 96);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__FCConfigurationManager__currentAppConfigurationIsExpired__block_invoke;
    v11[3] = &unk_1E7C39DB0;
    v11[4] = selfCopy;
    v11[5] = &v18;
    v11[6] = &v12;
    [v2 performWithLockSync:v11];

    [v13[5] fc_timeIntervalUntilNow];
    v4 = v3;
    appConfigRefreshRate = [v19[5] appConfigRefreshRate];
    selfCopy = v4 >= appConfigRefreshRate;
    if (v4 >= appConfigRefreshRate)
    {
      v6 = FCAppConfigurationLog;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v13[5];
        appConfigRefreshRate2 = [v19[5] appConfigRefreshRate];
        *buf = 138543618;
        v25 = v7;
        v26 = 2048;
        v27 = appConfigRefreshRate2;
        _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "App config needs to refresh lastModificationDate: %{public}@ refreshRate: %lld", buf, 0x16u);
      }
    }

    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v18, 8);
  }

  v9 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

void __45__FCConfigurationManager_overrideAppConfigID__block_invoke()
{
  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    if ([v4 BOOLForKey:@"enable_config_overrides"])
    {
      v0 = NewsCoreUserDefaults();
      v1 = [v0 stringForKey:@"override_appconfig_id"];
      v2 = _MergedGlobals_140;
      _MergedGlobals_140 = v1;
    }

    else
    {
      v0 = _MergedGlobals_140;
      _MergedGlobals_140 = 0;
    }

    v3 = v4;
  }

  else
  {
    v3 = _MergedGlobals_140;
    _MergedGlobals_140 = 0;
  }
}

- (id)currentAppConfiguration
{
  if (self)
  {
    selfCopy = self;
    [self[12] assertLocked];
    self = selfCopy[2];
    v1 = vars8;
  }

  return self;
}

- (id)lastModificationDate
{
  if (self)
  {
    selfCopy = self;
    [self[12] assertLocked];
    self = selfCopy[3];
    v1 = vars8;
  }

  return self;
}

- (FCNewsAppConfiguration)fetchedAppConfiguration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  if (self)
  {
    accessLock = self->_accessLock;
  }

  else
  {
    accessLock = 0;
  }

  v4 = accessLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__FCConfigurationManager_fetchedAppConfiguration__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(NFUnfairLock *)v4 performWithLockSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __49__FCConfigurationManager_fetchedAppConfiguration__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) isDefaultConfiguration])
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(a1 + 32) + 16);
  }

  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

uint64_t __59__FCConfigurationManager__currentAppConfigurationIsExpired__block_invoke(uint64_t a1)
{
  v2 = [(FCConfigurationManager *)*(a1 + 32) currentAppConfiguration];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [(FCConfigurationManager *)*(a1 + 32) lastModificationDate];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (FCNewsAppConfiguration)appConfiguration
{
  v30 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__19;
  v16 = __Block_byref_object_dispose__19;
  v17 = 0;
  if (self)
  {
    accessLock = self->_accessLock;
  }

  else
  {
    accessLock = 0;
  }

  v4 = accessLock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__FCConfigurationManager_appConfiguration__block_invoke;
  v11[3] = &unk_1E7C39DB0;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = &v18;
  [(NFUnfairLock *)v4 performWithLockSync:v11];

  if (!NSClassFromString(&cfstr_Xctest.isa) && (v19[3] & 1) == 0)
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shouldn't be calling -appConfiguration without first making an attempt to fetch the app config"];
      *buf = 136315906;
      v23 = "[FCConfigurationManager appConfiguration]";
      v24 = 2080;
      v25 = "FCConfigurationManager.m";
      v26 = 1024;
      v27 = 291;
      v28 = 2114;
      v29 = v10;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __42__FCConfigurationManager_appConfiguration__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(a1[6] + 8) + 24) = *(a1[4] + 9);
}

- (NSArray)segmentSetIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  if (self)
  {
    accessLock = self->_accessLock;
  }

  else
  {
    accessLock = 0;
  }

  v4 = accessLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__FCConfigurationManager_segmentSetIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(NFUnfairLock *)v4 performWithLockSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __39__FCConfigurationManager_segmentSetIDs__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 224) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (FCConfigurationManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCConfigurationManager init]";
    v10 = 2080;
    v11 = "FCConfigurationManager.m";
    v12 = 1024;
    v13 = 137;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCConfigurationManager init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)initForTesting
{
  v28.receiver = self;
  v28.super_class = FCConfigurationManager;
  v2 = [(FCConfigurationManager *)&v28 init];
  if (v2)
  {
    v3 = [FCNewsAppConfig defaultConfigurationForStoreFrontID:?];
    currentAppConfiguration = v2->_currentAppConfiguration;
    v2->_currentAppConfiguration = v3;

    v5 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    accessLock = v2->_accessLock;
    v2->_accessLock = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("FCAppConfig.workQueue", v8);
    workQueue = v2->_workQueue;
    v2->_workQueue = v9;

    v11 = [[FCAsyncSerialQueue alloc] initWithUnderlyingQueue:v2->_workQueue qualityOfService:25];
    remoteAppConfigSerialQueue = v2->_remoteAppConfigSerialQueue;
    v2->_remoteAppConfigSerialQueue = v11;

    v13 = [[FCAsyncSerialQueue alloc] initWithUnderlyingQueue:v2->_workQueue qualityOfService:25];
    remoteWidgetConfigSerialQueue = v2->_remoteWidgetConfigSerialQueue;
    v2->_remoteWidgetConfigSerialQueue = v13;

    v15 = [[FCAsyncSerialQueue alloc] initWithUnderlyingQueue:v2->_workQueue qualityOfService:25];
    remoteTodayConfigSerialQueue = v2->_remoteTodayConfigSerialQueue;
    v2->_remoteTodayConfigSerialQueue = v15;

    v17 = [[FCAsyncSerialQueue alloc] initWithUnderlyingQueue:v2->_workQueue qualityOfService:25];
    remoteMagazineConfigSerialQueue = v2->_remoteMagazineConfigSerialQueue;
    v2->_remoteMagazineConfigSerialQueue = v17;

    v19 = [[FCAsyncSerialQueue alloc] initWithUnderlyingQueue:v2->_workQueue qualityOfService:25];
    remoteAudioConfigSerialQueue = v2->_remoteAudioConfigSerialQueue;
    v2->_remoteAudioConfigSerialQueue = v19;

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v22 = [mainBundle objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    appShortVersionString = v2->_appShortVersionString;
    v2->_appShortVersionString = v22;

    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    v25 = [mainBundle2 objectForInfoDictionaryKey:@"CFBundleVersion"];
    buildNumberString = v2->_buildNumberString;
    v2->_buildNumberString = v25;

    v2->_applicationState = 0;
    v2->_runningUnitTests = 1;
  }

  return v2;
}

- (FCConfigurationManager)initWithContextConfiguration:(id)configuration contentHostDirectoryFileURL:(id)l feldsparIDProvider:(id)provider
{
  v8 = MEMORY[0x1E696AAE8];
  providerCopy = provider;
  lCopy = l;
  configurationCopy = configuration;
  mainBundle = [v8 mainBundle];
  v13 = [mainBundle objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
  v15 = [mainBundle2 objectForInfoDictionaryKey:@"CFBundleVersion"];
  v16 = [(FCConfigurationManager *)self initWithContextConfiguration:configurationCopy contentHostDirectoryFileURL:lCopy feldsparIDProvider:providerCopy appShortVersionString:v13 buildNumberString:v15 networkBehaviorMonitor:0 appActivityMonitor:0 applicationState:0];

  return v16;
}

- (FCConfigurationManager)initWithContextConfiguration:(id)configuration contentHostDirectoryFileURL:(id)l feldsparIDProvider:(id)provider appShortVersionString:(id)string buildNumberString:(id)numberString networkBehaviorMonitor:(id)monitor appActivityMonitor:(id)activityMonitor applicationState:(unint64_t)self0
{
  location[16] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  lCopy = l;
  providerCopy = provider;
  stringCopy = string;
  numberStringCopy = numberString;
  monitorCopy = monitor;
  activityMonitorCopy = activityMonitor;
  v114.receiver = self;
  v114.super_class = FCConfigurationManager;
  selfa = [(FCConfigurationManager *)&v114 init];
  if (!selfa)
  {
    goto LABEL_77;
  }

  objc_storeStrong(selfa + 5, configuration);
  objc_storeStrong(selfa + 6, provider);
  [*(selfa + 6) addObserver:?];
  v17 = [stringCopy copy];
  v18 = *(selfa + 7);
  *(selfa + 7) = v17;

  v19 = [numberStringCopy copy];
  v20 = *(selfa + 8);
  *(selfa + 8) = v19;

  *(selfa + 9) = state;
  objc_storeStrong(selfa + 10, activityMonitor);
  if (activityMonitorCopy)
  {
    [activityMonitorCopy addObserver:selfa];
  }

  objc_storeStrong(selfa + 11, monitor);
  contentContainerCombinationIdentifier = [configurationCopy contentContainerCombinationIdentifier];
  v107 = [lCopy URLByAppendingPathComponent:contentContainerCombinationIdentifier isDirectory:1];

  v22 = [objc_alloc(MEMORY[0x1E69C6D58]) initWithContentDirectoryURL:v107];
  v23 = *(selfa + 4);
  *(selfa + 4) = v22;

  v24 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
  v25 = *(selfa + 12);
  *(selfa + 12) = v24;

  v26 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
  v27 = *(selfa + 26);
  *(selfa + 26) = v26;

  v28 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
  v29 = *(selfa + 25);
  *(selfa + 25) = v28;

  v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v31 = dispatch_queue_attr_make_with_qos_class(v30, QOS_CLASS_USER_INITIATED, 0);
  v32 = dispatch_queue_create("FCAppConfig.workQueue", v31);
  v33 = *(selfa + 13);
  *(selfa + 13) = v32;

  v34 = [[FCAsyncSerialQueue alloc] initWithUnderlyingQueue:*(selfa + 13) qualityOfService:25];
  v35 = *(selfa + 14);
  *(selfa + 14) = v34;

  v36 = [[FCAsyncSerialQueue alloc] initWithUnderlyingQueue:*(selfa + 13) qualityOfService:25];
  v37 = *(selfa + 15);
  *(selfa + 15) = v36;

  v38 = [[FCAsyncSerialQueue alloc] initWithUnderlyingQueue:*(selfa + 13) qualityOfService:25];
  v39 = *(selfa + 16);
  *(selfa + 16) = v38;

  v40 = [[FCAsyncSerialQueue alloc] initWithUnderlyingQueue:*(selfa + 13) qualityOfService:25];
  v41 = *(selfa + 17);
  *(selfa + 17) = v40;

  v42 = [[FCAsyncSerialQueue alloc] initWithUnderlyingQueue:*(selfa + 13) qualityOfService:25];
  v43 = *(selfa + 18);
  *(selfa + 18) = v42;

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v45 = [standardUserDefaults stringForKey:@"FCAppConfigurationBundleShortVersionKey"];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v48 = [infoDictionary objectForKeyedSubscript:@"CFBundleShortVersionString"];

  if (([v48 isEqualToString:v45] & 1) == 0 || (NewsCoreUserDefaults(), v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "BOOLForKey:", @"force_refresh_user_segmentation"), v49, v50))
  {
    [standardUserDefaults setObject:v48 forKey:@"FCAppConfigurationBundleShortVersionKey"];
    v52 = NewsCoreUserDefaults();
    [v52 setBool:0 forKey:@"force_refresh_user_segmentation"];

    v51 = 1;
  }

  else
  {
    v51 = 0;
  }

  *(selfa + 8) = v51;
  v53 = [v107 URLByAppendingPathComponent:@"app-configs"];
  v54 = *(selfa + 19);
  *(selfa + 19) = v53;

  v55 = [FCKeyValueStore alloc];
  relativePath = [v107 relativePath];
  v57 = [(FCKeyValueStore *)v55 initWithName:@"app-config" directory:relativePath version:2 options:0 classRegistry:0];
  v58 = *(selfa + 20);
  *(selfa + 20) = v57;

  if (*(selfa + 8) == 1)
  {
    [*(selfa + 20) removeAllObjects];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:*(selfa + 19) error:0];
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager2 createDirectoryAtURL:*(selfa + 19) withIntermediateDirectories:1 attributes:0 error:0];

  v110 = *(selfa + 20);
  _storefrontID = [(FCConfigurationManager *)selfa _storefrontID];
  v121 = 0u;
  v122 = 0u;
  v120 = 0u;
  v119 = 0u;
  location[0] = @"appConfigRequest";
  location[1] = @"magazinesConfigRequest";
  location[2] = @"audioConfigRequest";
  location[3] = @"todayConfigRequest";
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:location count:4];
  v61 = 0;
  v62 = [obj countByEnumeratingWithState:&v119 objects:location count:16];
  if (v62)
  {
    v63 = *v120;
    do
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v120 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v65 = *(*(&v119 + 1) + 8 * i);
        v66 = objc_autoreleasePoolPush();
        if ([v65 isEqualToString:@"appConfigRequest"])
        {
          v67 = [(FCConfigurationManager *)*(selfa + 19) _loadConfigDataForRequestKey:v65];
          v68 = [(FCConfigurationManager *)*(selfa + 7) _deviceInfoWithFormatVersion:0];
          v69 = v68;
          if (v67)
          {
            preferredLanguages = [v68 preferredLanguages];
            v71 = [FCNewsAppConfig configurationWithData:v67 storefrontID:_storefrontID preferredLanguageTags:preferredLanguages];

            v61 = preferredLanguages;
          }

          else
          {
            v71 = 0;
          }
        }

        else
        {
          if ([v65 isEqualToString:@"magazinesConfigRequest"])
          {
            v67 = [(FCConfigurationManager *)*(selfa + 19) _loadConfigDataForRequestKey:v65];
            objc_setProperty_nonatomic_copy(selfa, v72, v67, 176);
          }

          else if ([v65 isEqualToString:@"todayConfigRequest"])
          {
            v67 = [(FCConfigurationManager *)*(selfa + 19) _loadConfigDataForRequestKey:v65];
            objc_setProperty_nonatomic_copy(selfa, v73, v67, 184);
          }

          else
          {
            if (![v65 isEqualToString:@"audioConfigRequest"])
            {
              goto LABEL_28;
            }

            v67 = [(FCConfigurationManager *)*(selfa + 19) _loadConfigDataForRequestKey:v65];
            objc_setProperty_nonatomic_copy(selfa, v74, v67, 192);
          }

          v71 = v61;
        }

        v61 = v71;
LABEL_28:
        objc_autoreleasePoolPop(v66);
      }

      v62 = [obj countByEnumeratingWithState:&v119 objects:location count:16];
    }

    while (v62);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  allKeys = [v110 allKeys];
  v76 = 0;
  v77 = [allKeys countByEnumeratingWithState:&v115 objects:v125 count:16];
  if (!v77)
  {
    goto LABEL_66;
  }

  v78 = *v116;
  do
  {
    for (j = 0; j != v77; ++j)
    {
      if (*v116 != v78)
      {
        objc_enumerationMutation(allKeys);
      }

      v80 = *(*(&v115 + 1) + 8 * j);
      if ([v80 isEqualToString:@"lastModificationDate"])
      {
        objc_opt_class();
        v81 = [v110 objectForKey:v80];
        if (v81)
        {
          if (objc_opt_isKindOfClass())
          {
            v82 = v81;
          }

          else
          {
            v82 = 0;
          }
        }

        else
        {
          v82 = 0;
        }

        v85 = v76;
        v76 = v82;
      }

      else if ([v80 isEqualToString:@"treatmentIDs"])
      {
        objc_opt_class();
        v81 = [v110 objectForKey:v80];
        if (v81)
        {
          if (objc_opt_isKindOfClass())
          {
            v83 = v81;
          }

          else
          {
            v83 = 0;
          }
        }

        else
        {
          v83 = 0;
        }

        v85 = v83;
        [selfa setTreatmentIDs:v85];
      }

      else if ([v80 isEqualToString:@"segmentSetIDs"])
      {
        objc_opt_class();
        v81 = [v110 objectForKey:v80];
        if (v81)
        {
          if (objc_opt_isKindOfClass())
          {
            v84 = v81;
          }

          else
          {
            v84 = 0;
          }
        }

        else
        {
          v84 = 0;
        }

        v85 = v84;
        [selfa setSegmentSetIDs:v85];
      }

      else
      {
        if (![v80 isEqualToString:@"widgetConfigurationDict"])
        {
          continue;
        }

        objc_opt_class();
        v81 = [v110 objectForKey:v80];
        if (v81)
        {
          if (objc_opt_isKindOfClass())
          {
            v86 = v81;
          }

          else
          {
            v86 = 0;
          }
        }

        else
        {
          v86 = 0;
        }

        v87 = v86;
        v85 = *(selfa + 21);
        *(selfa + 21) = v87;
      }
    }

    v77 = [allKeys countByEnumeratingWithState:&v115 objects:v125 count:16];
  }

  while (v77);
LABEL_66:

  v88 = *(selfa + 21);
  if (v88)
  {
    v89 = [v88 objectForKeyedSubscript:@"widgetAppConfiguration"];
    v90 = [v89 objectForKeyedSubscript:@"widgetLanguageConfiguration"];
    v91 = [[FCNewsAppConfig alloc] initWithConfigDictionary:v89 storefrontID:_storefrontID languageConfigDictionary:v90];

    v61 = v91;
  }

  if (v76)
  {
    objc_storeStrong(selfa + 3, v76);
  }

  else
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v93 = *(selfa + 3);
    *(selfa + 3) = distantPast;

    [v110 setObject:*(selfa + 3) forKey:@"lastModificationDate"];
  }

  v94 = FCAppConfigurationLog;
  if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_DEFAULT))
  {
    v95 = *(selfa + 3);
    *buf = 138543362;
    v124 = v95;
    _os_log_impl(&dword_1B63EF000, v94, OS_LOG_TYPE_DEFAULT, "App config initialized with lastModificationDate: %{public}@", buf, 0xCu);
  }

  if (v61)
  {
    v96 = v61;
  }

  else
  {
    v96 = [FCNewsAppConfig defaultConfigurationForStoreFrontID:_storefrontID];
  }

  v97 = *(selfa + 2);
  *(selfa + 2) = v96;

  objc_initWeak(location, selfa);
  v112[0] = MEMORY[0x1E69E9820];
  v112[1] = 3221225472;
  v112[2] = __201__FCConfigurationManager_initWithContextConfiguration_contentHostDirectoryFileURL_feldsparIDProvider_appShortVersionString_buildNumberString_networkBehaviorMonitor_appActivityMonitor_applicationState___block_invoke;
  v112[3] = &unk_1E7C3A8A0;
  objc_copyWeak(&v113, location);
  [*(selfa + 4) setNetworkEventHandler:v112];
  objc_destroyWeak(&v113);
  objc_destroyWeak(location);

LABEL_77:
  v98 = *MEMORY[0x1E69E9840];
  return selfa;
}

void __201__FCConfigurationManager_initWithContextConfiguration_contentHostDirectoryFileURL_feldsparIDProvider_appShortVersionString_buildNumberString_networkBehaviorMonitor_appActivityMonitor_applicationState___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a3;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = v8;
  v10 = v7;
  if (WeakRetained)
  {
    v11 = MEMORY[0x1E695DFD8];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __76__FCConfigurationManager__logNetworkEvent_configurationSettings_isFallback___block_invoke;
    v24[3] = &unk_1E7C371F8;
    v25 = v10;
    v12 = [v11 fc_set:v24];
    v13 = [MEMORY[0x1E695DFD8] setWithObject:@"appConfigRequest"];
    v14 = [v12 isEqualToSet:v13];

    if (v14)
    {
      if (a4)
      {
        v15 = 16;
      }

      else
      {
        v15 = 18;
      }
    }

    else
    {
      v16 = [MEMORY[0x1E695DFD8] setWithObject:@"todayConfigRequest"];
      v17 = [v12 isEqualToSet:v16];

      if (v17)
      {
        v15 = 20;
      }

      else
      {
        v18 = [MEMORY[0x1E695DFD8] setWithObject:@"widgetConfigRequest"];
        v19 = [v12 isEqualToSet:v18];

        if (v19)
        {
          v15 = 22;
        }

        else
        {
          v20 = [MEMORY[0x1E695DFD8] setWithObjects:{@"widgetConfigRequest", @"todayConfigRequest", 0}];
          v21 = [v12 isEqualToSet:v20];

          if (!v21)
          {
LABEL_13:

            goto LABEL_14;
          }

          v15 = 23;
        }
      }
    }

    v22 = [[FCNetworkEvent alloc] initWithType:v15 rcNetworkEvent:v9];
    [WeakRetained[11] logNetworkEvent:v22];

    goto LABEL_13;
  }

LABEL_14:
}

- (FCNewsAppConfiguration)jsonEncodableAppConfiguration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  if (self)
  {
    accessLock = self->_accessLock;
  }

  else
  {
    accessLock = 0;
  }

  v4 = accessLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__FCConfigurationManager_jsonEncodableAppConfiguration__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(NFUnfairLock *)v4 performWithLockSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __55__FCConfigurationManager_jsonEncodableAppConfiguration__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)fetchAppConfigurationIfNeededWithCompletionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__FCConfigurationManager_fetchAppConfigurationIfNeededWithCompletionQueue_completion___block_invoke;
  v10[3] = &unk_1E7C3A8C8;
  v11 = queueCopy;
  v12 = completionCopy;
  v8 = queueCopy;
  v9 = completionCopy;
  [(FCConfigurationManager *)self _fetchAppConfigurationIfNeededWithForceRefresh:v10 completion:?];
}

void __86__FCConfigurationManager_fetchAppConfigurationIfNeededWithCompletionQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__FCConfigurationManager_fetchAppConfigurationIfNeededWithCompletionQueue_completion___block_invoke_2;
    block[3] = &unk_1E7C3A060;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)_fetchAppConfigurationIfNeededWithForceRefresh:(void *)refresh completion:
{
  refreshCopy = refresh;
  v6 = refreshCopy;
  if (self)
  {
    v7 = *(self + 104);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__FCConfigurationManager__fetchAppConfigurationIfNeededWithForceRefresh_completion___block_invoke;
    block[3] = &unk_1E7C3AA30;
    block[4] = self;
    v9 = refreshCopy;
    v10 = a2;
    dispatch_async(v7, block);
  }
}

- (void)refreshAppConfigurationIfNeededWithCompletionQueue:(id)queue refreshCompletion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__FCConfigurationManager_refreshAppConfigurationIfNeededWithCompletionQueue_refreshCompletion___block_invoke;
  v10[3] = &unk_1E7C3A8C8;
  v11 = queueCopy;
  v12 = completionCopy;
  v8 = queueCopy;
  v9 = completionCopy;
  [(FCConfigurationManager *)self _fetchAppConfigurationIfNeededWithForceRefresh:v10 completion:?];
}

void __95__FCConfigurationManager_refreshAppConfigurationIfNeededWithCompletionQueue_refreshCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__FCConfigurationManager_refreshAppConfigurationIfNeededWithCompletionQueue_refreshCompletion___block_invoke_2;
    block[3] = &unk_1E7C3A060;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)fetchAppWidgetConfigurationWithTodayLiteConfig:(BOOL)config additionalFields:(id)fields completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  completionCopy = completion;
  if (!fieldsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "additionalFields != nil"];
    *buf = 136315906;
    *&buf[4] = "[FCConfigurationManager fetchAppWidgetConfigurationWithTodayLiteConfig:additionalFields:completion:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCConfigurationManager.m";
    *&buf[22] = 1024;
    LODWORD(v20) = 352;
    WORD2(v20) = 2114;
    *(&v20 + 6) = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10 = fieldsCopy;
  v11 = MEMORY[0x1E69E96A0];
  v12 = MEMORY[0x1E69E96A0];
  v13 = completionCopy;
  if (self)
  {
    if (!fieldsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "additionalFields != nil"];
      *buf = 136315906;
      *&buf[4] = "[FCConfigurationManager _fetchRemoteAppWidgetConfigurationIfNeededWithTodayLiteConfig:additionalFields:completionQueue:completion:]";
      *&buf[12] = 2080;
      *&buf[14] = "FCConfigurationManager.m";
      *&buf[22] = 1024;
      LODWORD(v20) = 873;
      WORD2(v20) = 2114;
      *(&v20 + 6) = v18;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    remoteWidgetConfigSerialQueue = self->_remoteWidgetConfigSerialQueue;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __132__FCConfigurationManager__fetchRemoteAppWidgetConfigurationIfNeededWithTodayLiteConfig_additionalFields_completionQueue_completion___block_invoke;
    *&v20 = &unk_1E7C3AB48;
    *(&v20 + 1) = self;
    v23 = v13;
    v21 = v10;
    configCopy = config;
    v25 = 0;
    v15 = v11;
    v22 = v11;
    [(FCAsyncSerialQueue *)remoteWidgetConfigSerialQueue enqueueBlock:buf];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)addAppConfigObserver:(id)observer
{
  v19 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    if (self)
    {
      accessLock = self->_accessLock;
    }

    else
    {
      accessLock = 0;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__FCConfigurationManager_addAppConfigObserver___block_invoke;
    v9[3] = &unk_1E7C36C58;
    v9[4] = self;
    v10 = observerCopy;
    [(NFUnfairLock *)accessLock performWithLockSync:v9];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v12 = "[FCConfigurationManager addAppConfigObserver:]";
    v13 = 2080;
    v14 = "FCConfigurationManager.m";
    v15 = 1024;
    v16 = 362;
    v17 = 2114;
    v18 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __47__FCConfigurationManager_addAppConfigObserver___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 200);
  }

  else
  {
    v3 = 0;
  }

  if ([v3 containsObject:*(a1 + 40)] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p is already an observer", *(a1 + 40)];
    *buf = 136315906;
    v10 = "[FCConfigurationManager addAppConfigObserver:]_block_invoke";
    v11 = 2080;
    v12 = "FCConfigurationManager.m";
    v13 = 1024;
    v14 = 367;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 200);
  }

  else
  {
    v5 = 0;
  }

  result = [v5 addObject:*(a1 + 40)];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)removeAppConfigObserver:(id)observer
{
  v19 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    if (self)
    {
      accessLock = self->_accessLock;
    }

    else
    {
      accessLock = 0;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__FCConfigurationManager_removeAppConfigObserver___block_invoke;
    v9[3] = &unk_1E7C36C58;
    v9[4] = self;
    v10 = observerCopy;
    [(NFUnfairLock *)accessLock performWithLockSync:v9];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v12 = "[FCConfigurationManager removeAppConfigObserver:]";
    v13 = 2080;
    v14 = "FCConfigurationManager.m";
    v15 = 1024;
    v16 = 375;
    v17 = 2114;
    v18 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __50__FCConfigurationManager_removeAppConfigObserver___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[25];
  }

  return [v1 removeObject:*(a1 + 40)];
}

- (NSString)feldsparID
{
  if (self)
  {
    self = self->_feldsparIDProvider;
  }

  feldsparID = [(FCConfigurationManager *)self feldsparID];
  v3 = [feldsparID copy];

  return v3;
}

- (void)fetchConfigurationIfNeededWithCompletionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__FCConfigurationManager_fetchConfigurationIfNeededWithCompletionQueue_completion___block_invoke;
  v10[3] = &unk_1E7C3A8C8;
  v11 = queueCopy;
  v12 = completionCopy;
  v8 = queueCopy;
  v9 = completionCopy;
  [(FCConfigurationManager *)self _fetchAppConfigurationIfNeededWithForceRefresh:v10 completion:?];
}

void __83__FCConfigurationManager_fetchConfigurationIfNeededWithCompletionQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__FCConfigurationManager_fetchConfigurationIfNeededWithCompletionQueue_completion___block_invoke_2;
    block[3] = &unk_1E7C3A060;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)addObserver:(id)observer
{
  v19 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    if (self)
    {
      accessLock = self->_accessLock;
    }

    else
    {
      accessLock = 0;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__FCConfigurationManager_addObserver___block_invoke;
    v9[3] = &unk_1E7C36C58;
    v9[4] = self;
    v10 = observerCopy;
    [(NFUnfairLock *)accessLock performWithLockSync:v9];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v12 = "[FCConfigurationManager addObserver:]";
    v13 = 2080;
    v14 = "FCConfigurationManager.m";
    v15 = 1024;
    v16 = 417;
    v17 = 2114;
    v18 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __38__FCConfigurationManager_addObserver___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 208);
  }

  else
  {
    v3 = 0;
  }

  if ([v3 containsObject:*(a1 + 40)] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p is already an observer", *(a1 + 40)];
    *buf = 136315906;
    v10 = "[FCConfigurationManager addObserver:]_block_invoke";
    v11 = 2080;
    v12 = "FCConfigurationManager.m";
    v13 = 1024;
    v14 = 422;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 208);
  }

  else
  {
    v5 = 0;
  }

  result = [v5 addObject:*(a1 + 40)];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)removeObserver:(id)observer
{
  v19 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    if (self)
    {
      accessLock = self->_accessLock;
    }

    else
    {
      accessLock = 0;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__FCConfigurationManager_removeObserver___block_invoke;
    v9[3] = &unk_1E7C36C58;
    v9[4] = self;
    v10 = observerCopy;
    [(NFUnfairLock *)accessLock performWithLockSync:v9];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v12 = "[FCConfigurationManager removeObserver:]";
    v13 = 2080;
    v14 = "FCConfigurationManager.m";
    v15 = 1024;
    v16 = 430;
    v17 = 2114;
    v18 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __41__FCConfigurationManager_removeObserver___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[26];
  }

  return [v1 removeObject:*(a1 + 40)];
}

- (NSArray)treatmentIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  if (self)
  {
    accessLock = self->_accessLock;
  }

  else
  {
    accessLock = 0;
  }

  v4 = accessLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__FCConfigurationManager_treatmentIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(NFUnfairLock *)v4 performWithLockSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __38__FCConfigurationManager_treatmentIDs__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 216) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (NSData)magazinesConfigurationData
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  if (self)
  {
    accessLock = self->_accessLock;
  }

  else
  {
    accessLock = 0;
  }

  v4 = accessLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__FCConfigurationManager_magazinesConfigurationData__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(NFUnfairLock *)v4 performWithLockSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __52__FCConfigurationManager_magazinesConfigurationData__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)fetchMagazinesConfigurationIfNeededWithCompletionQueue:(id)queue formatVersion:(id)version completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __106__FCConfigurationManager_fetchMagazinesConfigurationIfNeededWithCompletionQueue_formatVersion_completion___block_invoke;
  v20 = &unk_1E7C3A8F0;
  v21 = queueCopy;
  v22 = completionCopy;
  v10 = queueCopy;
  v11 = completionCopy;
  v12 = v10;
  versionCopy = version;
  v14 = &v17;
  v15 = v14;
  if (self)
  {
    remoteMagazineConfigSerialQueue = self->_remoteMagazineConfigSerialQueue;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __107__FCConfigurationManager__fetchMagazinesConfigurationIfNeededWithCompletionQueue_formatVersion_completion___block_invoke;
    v23[3] = &unk_1E7C3A940;
    v23[4] = self;
    v26 = v14;
    v24 = v12;
    v25 = versionCopy;
    [(FCAsyncSerialQueue *)remoteMagazineConfigSerialQueue enqueueBlock:v23, v17, v18, v19, v20, v21, v22];
  }
}

void __106__FCConfigurationManager_fetchMagazinesConfigurationIfNeededWithCompletionQueue_formatVersion_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __106__FCConfigurationManager_fetchMagazinesConfigurationIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_2;
    block[3] = &unk_1E7C3A060;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void __107__FCConfigurationManager__fetchMagazinesConfigurationIfNeededWithCompletionQueue_formatVersion_completion___block_invoke(uint64_t a1, void *a2)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 && *(v4 + 10) == 1)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = *(a1 + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __107__FCConfigurationManager__fetchMagazinesConfigurationIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_2;
      block[3] = &unk_1E7C37778;
      v7 = v5;
      block[4] = *(a1 + 32);
      v26 = v7;
      dispatch_async(v6, block);
    }

    v3[2](v3);
  }

  else
  {
    v8 = [(FCConfigurationManager *)v4 _storefrontID];
    v9 = *(a1 + 32);
    v10 = +[FCCachePolicy defaultCachePolicy];
    v11 = [(FCConfigurationManager *)v9 _requestInfoForRequestKey:v8 storefrontID:0 additionalChangeTags:v10 cachePolicy:?];

    v12 = *(a1 + 32);
    v27[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v14 = *(a1 + 32);
    if (v14)
    {
      v14 = v14[6];
    }

    v15 = v14;
    v16 = [v15 feldsparID];
    v17 = [FCConfigurationManager _configurationSettingsWithRequestInfos:v12 feldsparID:v13 storefrontID:v16 contextConfiguration:v8 useBackgroundRefreshRate:0 requestMode:*(a1 + 48) formatVersion:?];

    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(v18 + 32);
    }

    else
    {
      v19 = 0;
    }

    v20 = *(a1 + 40);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __107__FCConfigurationManager__fetchMagazinesConfigurationIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_3;
    v22[3] = &unk_1E7C3A990;
    v22[4] = v18;
    v23 = *(a1 + 56);
    v24 = v3;
    [v19 fetchSingleConfigurationWithSettings:v17 completionQueue:v20 completion:v22];
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __107__FCConfigurationManager__fetchMagazinesConfigurationIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 176);
  }

  else
  {
    v4 = 0;
  }

  return (*(v2 + 16))(v2, v4, 0);
}

- (id)_requestInfoForRequestKey:(void *)key storefrontID:(void *)d additionalChangeTags:(void *)tags cachePolicy:
{
  if (self)
  {
    self = [(FCConfigurationManager *)self _requestInfoForRequestKey:a2 storefrontID:key additionalChangeTags:d feedType:0 cachePolicy:tags];
    v5 = vars8;
  }

  return self;
}

- (id)_configurationSettingsWithRequestInfos:(void *)infos feldsparID:(void *)d storefrontID:(unsigned int)iD contextConfiguration:(void *)configuration useBackgroundRefreshRate:requestMode:formatVersion:
{
  if (self)
  {
    v11 = *(self + 40);
    configurationCopy = configuration;
    dCopy = d;
    infosCopy = infos;
    v14 = a2;
    v15 = [v11 environment] - 1;
    if (v15 > 5)
    {
      v46 = 0;
    }

    else
    {
      v46 = qword_1B681A5A8[v15];
    }

    if (NFInternalBuild())
    {
      v16 = NewsCoreUserDefaults();
      HIDWORD(v45) = [v16 BOOLForKey:@"disable_ab_testing_user_segmentation"];

      v17 = NewsCoreUserDefaults();
      LOBYTE(v45) = [v17 BOOLForKey:@"enable_extra_logs_user_segmentation"];
    }

    else
    {
      v45 = 0;
    }

    v44 = *(self + 8);
    *(self + 8) = 0;
    objc_opt_self();
    iDCopy = iD;
    if (NFInternalBuild() && (NewsCoreUserDefaults(), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 BOOLForKey:@"enable_overrides_user_segmentation"], v18, v19))
    {
      v20 = NewsCoreUserDefaults();
      v21 = [v20 stringForKey:@"override_segment_set_ids"];

      if ([v21 length])
      {
        v22 = [v21 componentsSeparatedByString:{@", "}];
      }

      else
      {
        v22 = 0;
      }

      v23 = [v22 fc_arrayByTransformingWithBlock:&__block_literal_global_181];
    }

    else
    {
      v23 = 0;
    }

    objc_opt_self();
    if (NFInternalBuild() && (NewsCoreUserDefaults(), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 BOOLForKey:@"enable_overrides_user_segmentation"], v24, v25))
    {
      v26 = NewsCoreUserDefaults();
      v27 = [v26 stringForKey:@"override_additional_segment_set_ids"];

      if ([v27 length])
      {
        v28 = [v27 componentsSeparatedByString:{@", "}];
      }

      else
      {
        v28 = 0;
      }

      v29 = [v28 fc_arrayByTransformingWithBlock:&__block_literal_global_184];
    }

    else
    {
      v29 = 0;
    }

    if ([v23 count])
    {

      v29 = 0;
    }

    v30 = NewsCoreUserDefaults();
    v31 = [v30 stringForKey:@"configuration_source"];
    if ([v31 isEqualToString:@"endpoint_source"])
    {
      v32 = 1;
    }

    else if ([v31 isEqualToString:@"cloudkit_source"])
    {
      v32 = 2;
    }

    else
    {
      v32 = 0;
    }

    LOBYTE(v43) = v45;
    v33 = [objc_alloc(MEMORY[0x1E69C6D68]) initWithDisableAbTesting:HIDWORD(v45) overrideSegmentSetIDs:v23 additionalSegmentSetIDs:v29 configurationSource:v32 debugEnvironment:v46 ignoreCache:v44 enableExtraLogs:v43];
    v34 = &stru_1F2DC7DC0;
    if (infosCopy)
    {
      v34 = infosCopy;
    }

    v35 = v34;
    v36 = [(FCConfigurationManager *)*(self + 56) _deviceInfoWithFormatVersion:configurationCopy];

    v37 = objc_alloc(MEMORY[0x1E69C6D60]);
    AppBundleID();
    v38 = v47 = v29;
    v39 = [v37 initWithRequestInfos:v14 userID:v35 storefrontID:dCopy bundleID:v38 deviceInfo:v36];

    [v39 setDebugOverrides:v33];
    [v39 setUseBackgroundRefreshRate:iDCopy];
    [v39 setRequestMode:1];
    [v39 setEndpointTimeoutDuration:15.0];
    v40 = *(self + 72);
    if (v40 == 2)
    {
      v41 = 2;
    }

    else
    {
      v41 = v40 == 1;
    }

    [v39 setApplicationState:v41];
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

void __107__FCConfigurationManager__fetchMagazinesConfigurationIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = v8;
  if (!v7 || v8)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __107__FCConfigurationManager__fetchMagazinesConfigurationIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_4;
    v23[3] = &unk_1E7C3A918;
    v20 = *(a1 + 40);
    v23[4] = *(a1 + 32);
    v12 = &v25;
    v25 = v20;
    v24 = v9;
    v26 = *(a1 + 48);
    __107__FCConfigurationManager__fetchMagazinesConfigurationIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_4(v23);
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 96);
    }

    else
    {
      v11 = 0;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __107__FCConfigurationManager__fetchMagazinesConfigurationIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_5;
    v21[3] = &unk_1E7C36C58;
    v21[4] = v10;
    v12 = &v22;
    v22 = v7;
    [v11 performWithLockSync:v21];
    v17 = *(a1 + 40);
    if (v17)
    {
      v18 = *(a1 + 32);
      if (v18)
      {
        v19 = *(v18 + 176);
      }

      else
      {
        v19 = 0;
      }

      (*(v17 + 16))(v17, v19, 0);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v13, v14, v15, v16);
  }
}

uint64_t __107__FCConfigurationManager__fetchMagazinesConfigurationIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[6];
    if (*(v2 + 176))
    {
      if (!v3)
      {
        goto LABEL_9;
      }

      v4 = *(v3 + 16);
      goto LABEL_8;
    }
  }

  else
  {
    v3 = a1[6];
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = a1[5];
  v4 = *(v3 + 16);
LABEL_8:
  v4();
LABEL_9:
  v6 = *(a1[7] + 16);

  return v6();
}

void __107__FCConfigurationManager__fetchMagazinesConfigurationIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_5(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, a2, *(a1 + 40), 176);
    v3 = *(a1 + 32);
  }

  v4 = *(a1 + 40);

  [(FCConfigurationManager *)v3 _saveConfigData:v4 forRequestKey:@"magazinesConfigRequest"];
}

- (void)_saveConfigData:(uint64_t)data forRequestKey:
{
  if (self)
  {
    v4 = *(self + 152);
    v5 = a2;
    v6 = [v4 URLByAppendingPathComponent:data];
    [v5 writeToURL:v6 atomically:1];
  }
}

- (NSData)todayFeedConfigurationData
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  if (self)
  {
    accessLock = self->_accessLock;
  }

  else
  {
    accessLock = 0;
  }

  v4 = accessLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__FCConfigurationManager_todayFeedConfigurationData__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(NFUnfairLock *)v4 performWithLockSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __52__FCConfigurationManager_todayFeedConfigurationData__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)fetchTodayFeedConfigurationIfNeededWithCompletionQueue:(id)queue feedType:(unint64_t)type formatVersion:(id)version cachePolicy:(id)policy networkActivityBlock:(id)block completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __148__FCConfigurationManager_fetchTodayFeedConfigurationIfNeededWithCompletionQueue_feedType_formatVersion_cachePolicy_networkActivityBlock_completion___block_invoke;
  v25[3] = &unk_1E7C3A8F0;
  v26 = queueCopy;
  v27 = completionCopy;
  v16 = queueCopy;
  v17 = completionCopy;
  v18 = v16;
  versionCopy = version;
  policyCopy = policy;
  blockCopy = block;
  v22 = v25;
  v23 = v22;
  if (self)
  {
    remoteTodayConfigSerialQueue = self->_remoteTodayConfigSerialQueue;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __149__FCConfigurationManager__fetchTodayFeedConfigurationIfNeededWithCompletionQueue_feedType_formatVersion_cachePolicy_networkActivityBlock_completion___block_invoke;
    v28[3] = &unk_1E7C3A9B8;
    v28[4] = self;
    v32 = v22;
    v29 = v18;
    typeCopy = type;
    v30 = policyCopy;
    v31 = versionCopy;
    v33 = blockCopy;
    [(FCAsyncSerialQueue *)remoteTodayConfigSerialQueue enqueueBlock:v28];
  }
}

void __148__FCConfigurationManager_fetchTodayFeedConfigurationIfNeededWithCompletionQueue_feedType_formatVersion_cachePolicy_networkActivityBlock_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __148__FCConfigurationManager_fetchTodayFeedConfigurationIfNeededWithCompletionQueue_feedType_formatVersion_cachePolicy_networkActivityBlock_completion___block_invoke_2;
    block[3] = &unk_1E7C3A060;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void __149__FCConfigurationManager__fetchTodayFeedConfigurationIfNeededWithCompletionQueue_feedType_formatVersion_cachePolicy_networkActivityBlock_completion___block_invoke(uint64_t a1, void *a2)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 && *(v4 + 10) == 1)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = *(a1 + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __149__FCConfigurationManager__fetchTodayFeedConfigurationIfNeededWithCompletionQueue_feedType_formatVersion_cachePolicy_networkActivityBlock_completion___block_invoke_2;
      block[3] = &unk_1E7C37778;
      v7 = v5;
      block[4] = *(a1 + 32);
      v27 = v7;
      dispatch_async(v6, block);
    }

    v3[2](v3);
  }

  else
  {
    v8 = [(FCConfigurationManager *)v4 _storefrontID];
    v9 = [(FCConfigurationManager *)*(a1 + 32) _requestInfoForRequestKey:v8 storefrontID:0 additionalChangeTags:*(a1 + 80) feedType:*(a1 + 48) cachePolicy:?];
    v10 = *(a1 + 32);
    v28[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v12 = *(a1 + 32);
    if (v12)
    {
      v12 = v12[6];
    }

    v13 = v12;
    v14 = [v13 feldsparID];
    v15 = [FCConfigurationManager _configurationSettingsWithRequestInfos:v10 feldsparID:v11 storefrontID:v14 contextConfiguration:v8 useBackgroundRefreshRate:0 requestMode:*(a1 + 56) formatVersion:?];

    v16 = *(a1 + 32);
    if (v16)
    {
      v17 = *(v16 + 32);
    }

    else
    {
      v17 = 0;
    }

    v18 = *(a1 + 40);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __149__FCConfigurationManager__fetchTodayFeedConfigurationIfNeededWithCompletionQueue_feedType_formatVersion_cachePolicy_networkActivityBlock_completion___block_invoke_3;
    v23[3] = &unk_1E7C3A990;
    v19 = *(a1 + 72);
    v24 = *(a1 + 64);
    v20 = v3;
    v21 = *(a1 + 32);
    v25 = v20;
    v23[4] = v21;
    [v17 fetchSingleConfigurationWithSettings:v15 networkActivityBlock:v19 completionQueue:v18 completion:v23];
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __149__FCConfigurationManager__fetchTodayFeedConfigurationIfNeededWithCompletionQueue_feedType_formatVersion_cachePolicy_networkActivityBlock_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 184);
  }

  else
  {
    v4 = 0;
  }

  return (*(v2 + 16))(v2, v4, 0);
}

- (id)_requestInfoForRequestKey:(void *)key storefrontID:(void *)d additionalChangeTags:(uint64_t)tags feedType:(void *)type cachePolicy:
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = a2;
  if (!self)
  {
    v28 = 0;
    goto LABEL_40;
  }

  typeCopy = type;
  dCopy = d;
  keyCopy = key;
  v14 = v11;
  if ([v14 isEqualToString:@"appConfigRequest"])
  {
    v15 = @"appConfigurationWrapper";
  }

  else if ([v14 isEqualToString:@"widgetConfigRequest"])
  {
    v15 = @"widgetConfigurationWrapper";
  }

  else if ([v14 isEqualToString:@"magazinesConfigRequest"])
  {
    v15 = @"magazinesConfigurationWrapper";
  }

  else if ([v14 isEqualToString:@"todayConfigRequest"])
  {
    v15 = @"todayConfigWrapper";
  }

  else if ([v14 isEqualToString:@"audioConfigRequest"])
  {
    v15 = @"audioConfigWrapper";
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case not implemented"];
      *buf = 136315906;
      v35 = "[FCConfigurationManager _responseKeyForRequestKey:]";
      v36 = 2080;
      v37 = "FCConfigurationManager.m";
      v38 = 1024;
      v39 = 1439;
      v40 = 2114;
      v41 = v31;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v15 = 0;
  }

  v16 = v15;
  v17 = v14;
  v18 = keyCopy;
  if ([v17 isEqualToString:@"appConfigRequest"])
  {
    objc_opt_self();
    v19 = v11;
    if (qword_1EDB27010 != -1)
    {
      dispatch_once(&qword_1EDB27010, &__block_literal_global_186);
    }

    possiblyUnfetchedAppConfiguration = _MergedGlobals_140;
    if ([possiblyUnfetchedAppConfiguration length])
    {
      v21 = possiblyUnfetchedAppConfiguration;
    }

    else
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"configuration-json", v18];
    }

    v23 = v21;
  }

  else
  {
    if (![v17 isEqualToString:@"magazinesConfigRequest"])
    {
      if (([v17 isEqualToString:@"widgetConfigRequest"] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", @"todayConfigRequest") & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", @"audioConfigRequest") & 1) != 0 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = v11;
      }

      else
      {
        v19 = v11;
        v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case not implemented"];
        *buf = 136315906;
        v35 = "[FCConfigurationManager _recordIDForRequestKey:storefrontID:]";
        v36 = 2080;
        v37 = "FCConfigurationManager.m";
        v38 = 1024;
        v39 = 1529;
        v40 = 2114;
        v41 = v32;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      v23 = 0;
      goto LABEL_31;
    }

    v19 = v11;
    possiblyUnfetchedAppConfiguration = [self possiblyUnfetchedAppConfiguration];
    magazinesConfigRecordID = [possiblyUnfetchedAppConfiguration magazinesConfigRecordID];
    v23 = [magazinesConfigRecordID copy];
  }

LABEL_31:
  if ([v23 length])
  {
    contentContainerIdentifier = [self[5] contentContainerIdentifier];
    v25 = FCPermanentURLForRecordID(v23, 3uLL, contentContainerIdentifier, 1);
  }

  else
  {
    v25 = 0;
  }

  v11 = v19;

  if (tags != 2)
  {
    tags = tags == 1;
  }

  cachePolicy = [typeCopy cachePolicy];

  if (cachePolicy == 1)
  {
    [MEMORY[0x1E69C6D48] ignoreCachePolicy];
  }

  else
  {
    [MEMORY[0x1E69C6D48] defaultCachePolicy];
  }
  v27 = ;
  v28 = [objc_alloc(MEMORY[0x1E69C6D80]) initWithRequestKey:v17 responseKey:v16 fallbackURL:v25 requestType:dCopy != 0 additionalChangeTags:dCopy requestFeedType:tags cachePolicy:v27];

LABEL_40:
  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

void __149__FCConfigurationManager__fetchTodayFeedConfigurationIfNeededWithCompletionQueue_feedType_formatVersion_cachePolicy_networkActivityBlock_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = v8;
  if (!v7 || v8)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __149__FCConfigurationManager__fetchTodayFeedConfigurationIfNeededWithCompletionQueue_feedType_formatVersion_cachePolicy_networkActivityBlock_completion___block_invoke_4;
    v24 = &unk_1E7C3A968;
    v16 = *(a1 + 40);
    v26 = v16;
    v17 = v9;
    v25 = v17;
    v18 = *(a1 + 48);
    v27 = v18;
    if (v16)
    {
      v16[2](v16, 0, v17);
      v18 = v27;
    }

    v18[2]();

    v15 = v26;
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 96);
    }

    else
    {
      v11 = 0;
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __149__FCConfigurationManager__fetchTodayFeedConfigurationIfNeededWithCompletionQueue_feedType_formatVersion_cachePolicy_networkActivityBlock_completion___block_invoke_5;
    v19[3] = &unk_1E7C36C58;
    v19[4] = v10;
    v20 = v7;
    [v11 performWithLockSync:v19];
    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        v14 = *(v13 + 184);
      }

      else
      {
        v14 = 0;
      }

      (*(v12 + 16))(v12, v14, 0);
    }

    (*(*(a1 + 48) + 16))();
    v15 = v20;
  }
}

uint64_t __149__FCConfigurationManager__fetchTodayFeedConfigurationIfNeededWithCompletionQueue_feedType_formatVersion_cachePolicy_networkActivityBlock_completion___block_invoke_4(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, 0, a1[4]);
  }

  v3 = *(a1[6] + 16);

  return v3();
}

void __149__FCConfigurationManager__fetchTodayFeedConfigurationIfNeededWithCompletionQueue_feedType_formatVersion_cachePolicy_networkActivityBlock_completion___block_invoke_5(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, a2, *(a1 + 40), 184);
    v3 = *(a1 + 32);
  }

  v4 = *(a1 + 40);

  [(FCConfigurationManager *)v3 _saveConfigData:v4 forRequestKey:@"todayConfigRequest"];
}

- (NSData)audioFeedConfigData
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  if (self)
  {
    accessLock = self->_accessLock;
  }

  else
  {
    accessLock = 0;
  }

  v4 = accessLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__FCConfigurationManager_audioFeedConfigData__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(NFUnfairLock *)v4 performWithLockSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __45__FCConfigurationManager_audioFeedConfigData__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 192) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)fetchAudioFeedConfigIfNeededWithCompletionQueue:(id)queue formatVersion:(id)version completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __99__FCConfigurationManager_fetchAudioFeedConfigIfNeededWithCompletionQueue_formatVersion_completion___block_invoke;
  v20 = &unk_1E7C3A8F0;
  v21 = queueCopy;
  v22 = completionCopy;
  v10 = queueCopy;
  v11 = completionCopy;
  v12 = v10;
  versionCopy = version;
  v14 = &v17;
  v15 = v14;
  if (self)
  {
    remoteAudioConfigSerialQueue = self->_remoteAudioConfigSerialQueue;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __100__FCConfigurationManager__fetchAudioFeedConfigIfNeededWithCompletionQueue_formatVersion_completion___block_invoke;
    v23[3] = &unk_1E7C3A940;
    v23[4] = self;
    v26 = v14;
    v24 = v12;
    v25 = versionCopy;
    [(FCAsyncSerialQueue *)remoteAudioConfigSerialQueue enqueueBlock:v23, v17, v18, v19, v20, v21, v22];
  }
}

void __99__FCConfigurationManager_fetchAudioFeedConfigIfNeededWithCompletionQueue_formatVersion_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__FCConfigurationManager_fetchAudioFeedConfigIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_2;
    block[3] = &unk_1E7C3A060;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void __100__FCConfigurationManager__fetchAudioFeedConfigIfNeededWithCompletionQueue_formatVersion_completion___block_invoke(uint64_t a1, void *a2)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 && *(v4 + 10) == 1)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = *(a1 + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __100__FCConfigurationManager__fetchAudioFeedConfigIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_2;
      block[3] = &unk_1E7C37778;
      v7 = v5;
      block[4] = *(a1 + 32);
      v26 = v7;
      dispatch_async(v6, block);
    }

    v3[2](v3);
  }

  else
  {
    v8 = [(FCConfigurationManager *)v4 _storefrontID];
    v9 = *(a1 + 32);
    v10 = +[FCCachePolicy defaultCachePolicy];
    v11 = [(FCConfigurationManager *)v9 _requestInfoForRequestKey:v8 storefrontID:0 additionalChangeTags:v10 cachePolicy:?];

    v12 = *(a1 + 32);
    v27[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v14 = *(a1 + 32);
    if (v14)
    {
      v14 = v14[6];
    }

    v15 = v14;
    v16 = [v15 feldsparID];
    v17 = [FCConfigurationManager _configurationSettingsWithRequestInfos:v12 feldsparID:v13 storefrontID:v16 contextConfiguration:v8 useBackgroundRefreshRate:0 requestMode:*(a1 + 48) formatVersion:?];

    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(v18 + 32);
    }

    else
    {
      v19 = 0;
    }

    v20 = *(a1 + 40);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __100__FCConfigurationManager__fetchAudioFeedConfigIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_3;
    v22[3] = &unk_1E7C3A990;
    v22[4] = v18;
    v23 = *(a1 + 56);
    v24 = v3;
    [v19 fetchSingleConfigurationWithSettings:v17 completionQueue:v20 completion:v22];
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __100__FCConfigurationManager__fetchAudioFeedConfigIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 192);
  }

  else
  {
    v4 = 0;
  }

  return (*(v2 + 16))(v2, v4, 0);
}

void __100__FCConfigurationManager__fetchAudioFeedConfigIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = v8;
  if (!v7 || v8)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __100__FCConfigurationManager__fetchAudioFeedConfigIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_4;
    v23[3] = &unk_1E7C3A918;
    v20 = *(a1 + 40);
    v23[4] = *(a1 + 32);
    v12 = &v25;
    v25 = v20;
    v24 = v9;
    v26 = *(a1 + 48);
    __100__FCConfigurationManager__fetchAudioFeedConfigIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_4(v23);
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 96);
    }

    else
    {
      v11 = 0;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __100__FCConfigurationManager__fetchAudioFeedConfigIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_5;
    v21[3] = &unk_1E7C36C58;
    v21[4] = v10;
    v12 = &v22;
    v22 = v7;
    [v11 performWithLockSync:v21];
    v17 = *(a1 + 40);
    if (v17)
    {
      v18 = *(a1 + 32);
      if (v18)
      {
        v19 = *(v18 + 192);
      }

      else
      {
        v19 = 0;
      }

      (*(v17 + 16))(v17, v19, 0);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v13, v14, v15, v16);
  }
}

uint64_t __100__FCConfigurationManager__fetchAudioFeedConfigIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 192);
    v4 = a1[6];
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = a1[6];
  if (v4)
  {
    v5 = 0;
LABEL_6:
    (*(v4 + 16))(v4, v5, a1[5]);
  }

LABEL_7:
  v6 = *(a1[7] + 16);

  return v6();
}

void __100__FCConfigurationManager__fetchAudioFeedConfigIfNeededWithCompletionQueue_formatVersion_completion___block_invoke_5(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, a2, *(a1 + 40), 192);
    v3 = *(a1 + 32);
  }

  v4 = *(a1 + 40);

  [(FCConfigurationManager *)v3 _saveConfigData:v4 forRequestKey:@"audioConfigRequest"];
}

void __84__FCConfigurationManager__fetchAppConfigurationIfNeededWithForceRefresh_completion___block_invoke(uint64_t a1)
{
  v43[1] = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__FCConfigurationManager__fetchAppConfigurationIfNeededWithForceRefresh_completion___block_invoke_2;
  aBlock[3] = &unk_1E7C3A9E0;
  v2 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v38 = v2;
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 32);
  if (v4 && v4[10] == 1)
  {
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __84__FCConfigurationManager__fetchAppConfigurationIfNeededWithForceRefresh_completion___block_invoke_4;
    v35 = &unk_1E7C379C8;
    v36 = v3;
    v36[2](v36, 1, 0);
    v5 = v36;
  }

  else
  {
    v6 = [v4 configuration];
    v5 = v6;
    if (v6)
    {
      v7 = [v6 isDefaultConfiguration];
      v8 = 1;
      if ((*(a1 + 48) & 1) == 0 && (v7 & 1) == 0)
      {
        (*(v3 + 2))(v3, 1, 0);
        if (![(FCConfigurationManager *)*(a1 + 32) _currentAppConfigurationIsExpired])
        {
          goto LABEL_15;
        }

        v8 = 0;
      }
    }

    else
    {
      v8 = 1;
    }

    v9 = [(FCConfigurationManager *)*(a1 + 32) _storefrontID];
    v10 = *(a1 + 32);
    v11 = +[FCCachePolicy defaultCachePolicy];
    v12 = [(FCConfigurationManager *)v10 _requestInfoForRequestKey:v9 storefrontID:0 additionalChangeTags:v11 cachePolicy:?];

    v13 = *(a1 + 32);
    v43[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
    v15 = *(a1 + 32);
    if (v15)
    {
      v15 = v15[6];
    }

    v16 = v15;
    v17 = [v16 feldsparID];
    v18 = [FCConfigurationManager _configurationSettingsWithRequestInfos:v13 feldsparID:v14 storefrontID:v17 contextConfiguration:v9 useBackgroundRefreshRate:0 requestMode:0 formatVersion:?];

    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __84__FCConfigurationManager__fetchAppConfigurationIfNeededWithForceRefresh_completion___block_invoke_6;
    v29 = &unk_1E7C3AA08;
    v30 = v3;
    LOBYTE(v31) = v8;
    v21 = v18;
    v22 = &v26;
    v23 = v22;
    if (v19)
    {
      v24 = *(v19 + 112);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __93__FCConfigurationManager__refreshAppConfigurationWithConfigurationSettings_force_completion___block_invoke;
      v39[3] = &unk_1E7C3AAA8;
      v39[4] = v19;
      v41 = v22;
      v42 = v20;
      v40 = v21;
      [v24 enqueueBlock:{v39, v26, v27, v28, v29, v30, v31}];
    }
  }

LABEL_15:

  v25 = *MEMORY[0x1E69E9840];
}

void __84__FCConfigurationManager__fetchAppConfigurationIfNeededWithForceRefresh_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__19;
  v14 = __Block_byref_object_dispose__19;
  v15 = 0;
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[12];
  }

  v7 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__FCConfigurationManager__fetchAppConfigurationIfNeededWithForceRefresh_completion___block_invoke_3;
  v9[3] = &unk_1E7C37160;
  v9[4] = *(a1 + 32);
  v9[5] = &v10;
  [v7 performWithLockSync:v9];

  if (a2)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v11[5], v5);
    }
  }

  _Block_object_dispose(&v10, 8);
}

void __93__FCConfigurationManager__refreshAppConfigurationWithConfigurationSettings_force_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__FCConfigurationManager__refreshAppConfigurationWithConfigurationSettings_force_completion___block_invoke_2;
  aBlock[3] = &unk_1E7C3AA58;
  aBlock[4] = *(a1 + 32);
  v4 = v3;
  v31 = v4;
  v32 = *(a1 + 48);
  v5 = _Block_copy(aBlock);
  v6 = [*(a1 + 32) configuration];
  v7 = [(FCConfigurationManager *)*(a1 + 32) _currentAppConfigurationIsExpired];
  if (*(a1 + 56) & 1) != 0 || !v6 || ((v7 | [v6 isDefaultConfiguration]))
  {
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = FCAppConfigurationLog;
    if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "will refresh app configuration", buf, 2u);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 32);
      v12 = *(v10 + 104);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v13 = *(a1 + 40);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __93__FCConfigurationManager__refreshAppConfigurationWithConfigurationSettings_force_completion___block_invoke_127;
    v19[3] = &unk_1E7C3AA80;
    v20 = v8;
    v23 = v5;
    v14 = v13;
    v15 = *(a1 + 32);
    v21 = v14;
    v22 = v15;
    v16 = v5;
    v17 = v8;
    [v11 fetchSingleConfigurationWithSettings:v14 completionQueue:v12 completion:v19];
  }

  else
  {
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __93__FCConfigurationManager__refreshAppConfigurationWithConfigurationSettings_force_completion___block_invoke_4;
    v28 = &unk_1E7C379C8;
    v29 = v5;
    v18 = v5;
    v17 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, 0);
      v16 = v29;
    }

    else
    {
      v16 = 0;
    }
  }
}

void __93__FCConfigurationManager__refreshAppConfigurationWithConfigurationSettings_force_completion___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  v4 = a1[4];
  if (v4)
  {
    v4 = v4[12];
  }

  v5 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__FCConfigurationManager__refreshAppConfigurationWithConfigurationSettings_force_completion___block_invoke_3;
  v7[3] = &unk_1E7C37160;
  v7[4] = a1[4];
  v7[5] = &v8;
  [v5 performWithLockSync:v7];

  (*(a1[5] + 16))();
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v9[5], v3);
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __93__FCConfigurationManager__refreshAppConfigurationWithConfigurationSettings_force_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __93__FCConfigurationManager__refreshAppConfigurationWithConfigurationSettings_force_completion___block_invoke_127(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v9 || v12)
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __93__FCConfigurationManager__refreshAppConfigurationWithConfigurationSettings_force_completion___block_invoke_2_128;
    v38[3] = &unk_1E7C38FF0;
    v39 = *(a1 + 32);
    v40 = v13;
    v41 = *(a1 + 56);
    __93__FCConfigurationManager__refreshAppConfigurationWithConfigurationSettings_force_completion___block_invoke_2_128(v38);

    v23 = v39;
  }

  else
  {
    v14 = FCAppConfigurationLog;
    if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = v14;
      *buf = 134217984;
      v43 = [v15 fc_millisecondTimeIntervalUntilNow];
      _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "did refresh app configuration, time=%llums", buf, 0xCu);
    }

    v17 = [*(a1 + 40) storefrontID];
    v18 = [*(a1 + 40) deviceInfo];
    v19 = [v18 preferredLanguages];
    v20 = [FCNewsAppConfig configurationWithData:v9 storefrontID:v17 preferredLanguageTags:v19];

    if (v20)
    {
      v21 = *(a1 + 48);
      if (v21)
      {
        v22 = *(v21 + 96);
      }

      else
      {
        v22 = 0;
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __93__FCConfigurationManager__refreshAppConfigurationWithConfigurationSettings_force_completion___block_invoke_2_130;
      v28[3] = &unk_1E7C376C8;
      v28[4] = v21;
      v29 = v10;
      v30 = v11;
      v23 = v20;
      v31 = v23;
      v32 = v9;
      [v22 performWithLockSync:v28];
      v24 = *(a1 + 56);
      if (v24)
      {
        (*(v24 + 16))(v24, 0);
      }
    }

    else
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __93__FCConfigurationManager__refreshAppConfigurationWithConfigurationSettings_force_completion___block_invoke_129;
      v36 = &unk_1E7C379C8;
      v25 = *(a1 + 56);
      v37 = v25;
      if (v25)
      {
        v25[2](v25, 0);
        v26 = v37;
      }

      else
      {
        v26 = 0;
      }

      v23 = 0;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t __93__FCConfigurationManager__refreshAppConfigurationWithConfigurationSettings_force_completion___block_invoke_2_128(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCAppConfigurationLog;
  if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v5 = [v3 fc_millisecondTimeIntervalUntilNow];
    v6 = a1[5];
    v9 = 134218242;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "failed to refresh app configuration, time=%llums, error=%{public}@", &v9, 0x16u);
  }

  result = a1[6];
  if (result)
  {
    result = (*(result + 16))(result, a1[5]);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __93__FCConfigurationManager__refreshAppConfigurationWithConfigurationSettings_force_completion___block_invoke_129(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __93__FCConfigurationManager__refreshAppConfigurationWithConfigurationSettings_force_completion___block_invoke_2_130(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFD8] setWithArray:*(*(a1 + 32) + 216)];
  v3 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 40)];
  if ([v2 isEqual:v3])
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:*(*(a1 + 32) + 224)];
    v5 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 48)];
    v6 = [v4 isEqual:v5] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 32);
  v8 = [(FCConfigurationManager *)v7 currentAppConfiguration];
  v9 = *(a1 + 56);
  v10 = v8;
  v11 = v9;
  v12 = v11;
  if (v7)
  {
    if ([v11 checkForPaywallConfigChangesEnabled])
    {
      v13 = [v10 paidBundleConfig];
      v14 = [v12 paidBundleConfig];
      LODWORD(v7) = [v13 arePaywallConfigsEqualToOtherPaidBundleConfig:v14] ^ 1;
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  v15 = *(a1 + 32);
  v16 = [(FCConfigurationManager *)v15 currentAppConfiguration];
  if (v15)
  {
    v15 = MEMORY[0x1E69E58C0];
    v17 = *(a1 + 56);
    v18 = v16;
    v19 = [v18 engagementCohortsExpField];
    v20 = [v17 engagementCohortsExpField];
    LOBYTE(v15) = [v15 nf_object:v19 isEqualToObject:v20];

    v21 = MEMORY[0x1E69E58C0];
    v22 = [v18 conversionCohortsExpField];

    v23 = [v17 conversionCohortsExpField];

    LOBYTE(v17) = [v21 nf_object:v22 isEqualToObject:v23];
    LOBYTE(v15) = v15 & v17 ^ 1;
  }

  v24 = [MEMORY[0x1E695DF00] date];
  [(FCAssetHandle *)*(a1 + 32) setRemoteURL:v24];

  v26 = *(a1 + 32);
  if (v26)
  {
    objc_setProperty_nonatomic_copy(v26, v25, *(a1 + 56), 16);
    v26 = *(a1 + 32);
  }

  [v26 setTreatmentIDs:*(a1 + 40)];
  [*(a1 + 32) setSegmentSetIDs:*(a1 + 48)];
  [(FCConfigurationManager *)*(a1 + 32) _saveConfigData:@"appConfigRequest" forRequestKey:?];
  v27 = *(a1 + 32);
  if (v27)
  {
    v28 = *(v27 + 160);
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  v30 = [(FCConfigurationManager *)v27 lastModificationDate];
  [v29 setObject:v30 forKey:@"lastModificationDate"];

  v31 = *(a1 + 32);
  if (v31)
  {
    v32 = *(v31 + 160);
  }

  else
  {
    v32 = 0;
  }

  [v32 setObject:*(a1 + 40) forKey:@"treatmentIDs"];
  v33 = *(a1 + 32);
  if (v33)
  {
    v34 = *(v33 + 160);
  }

  else
  {
    v34 = 0;
  }

  [v34 setObject:*(a1 + 48) forKey:@"segmentSetIDs"];
  v35 = *(a1 + 32);

  [(FCConfigurationManager *)v35 _configurationDidChangeSignificantConfigChange:v6 paywallConfigDidChange:v7 scienceExperimentFieldsDidChange:v15];
}

- (void)_configurationDidChangeSignificantConfigChange:(int)change paywallConfigDidChange:(char)didChange scienceExperimentFieldsDidChange:
{
  v31 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [self[12] assertLocked];
    v8 = FCAppConfigurationLog;
    if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v28 = a2;
      v29 = 1024;
      changeCopy = change;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "configuration manager notify observers with significantConfigChange: %d paywallConfigDidChange: %d", buf, 0xEu);
    }

    v9 = self[26];
    allObjects = [v9 allObjects];

    v11 = self[25];
    allObjects2 = [v11 allObjects];

    currentAppConfiguration = [(FCConfigurationManager *)self currentAppConfiguration];
    v14 = [currentAppConfiguration copy];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __129__FCConfigurationManager__configurationDidChangeSignificantConfigChange_paywallConfigDidChange_scienceExperimentFieldsDidChange___block_invoke;
    block[3] = &unk_1E7C3AB70;
    v20 = allObjects;
    selfCopy = self;
    didChangeCopy = didChange;
    v22 = v14;
    v23 = allObjects2;
    v25 = a2;
    changeCopy2 = change;
    v15 = allObjects2;
    v16 = v14;
    v17 = allObjects;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __132__FCConfigurationManager__fetchRemoteAppWidgetConfigurationIfNeededWithTodayLiteConfig_additionalFields_completionQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __132__FCConfigurationManager__fetchRemoteAppWidgetConfigurationIfNeededWithTodayLiteConfig_additionalFields_completionQueue_completion___block_invoke_2;
  aBlock[3] = &unk_1E7C3AAD0;
  aBlock[4] = *(a1 + 32);
  v42 = v3;
  v52 = v42;
  v53 = *(a1 + 56);
  v39 = _Block_copy(aBlock);
  v4 = [(FCConfigurationManager *)*(a1 + 32) _storefrontID];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 168);
  }

  else
  {
    v6 = 0;
  }

  v7 = [(FCConfigurationManager *)v5 _changeTagsInWidgetConfigurationDict:v6];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = FCAppConfigurationLog;
  if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v10 count];
    *buf = 134217984;
    v55 = v13;
    _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "configuration manager will include %lu cached changeTags in the widgetConfigRequest", buf, 0xCu);
  }

  v14 = [MEMORY[0x1E695DF70] array];
  v15 = *(a1 + 32);
  v16 = +[FCCachePolicy defaultCachePolicy];
  v17 = [(FCConfigurationManager *)v15 _requestInfoForRequestKey:v4 storefrontID:v10 additionalChangeTags:v16 cachePolicy:?];

  v18 = *(a1 + 40);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __132__FCConfigurationManager__fetchRemoteAppWidgetConfigurationIfNeededWithTodayLiteConfig_additionalFields_completionQueue_completion___block_invoke_134;
  v49[3] = &unk_1E7C3AAF8;
  v19 = v17;
  v50 = v19;
  [v18 enumerateKeysAndObjectsUsingBlock:v49];
  [v14 addObject:v19];
  if (*(a1 + 64) == 1)
  {
    v20 = *(a1 + 32);
    v21 = +[FCCachePolicy defaultCachePolicy];
    v22 = [(FCConfigurationManager *)v20 _requestInfoForRequestKey:v4 storefrontID:0 additionalChangeTags:2 feedType:v21 cachePolicy:?];

    [v14 addObject:v22];
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a1 + 32);
  if (v23)
  {
    v24 = *(v23 + 48);
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  v26 = [v25 feldsparID];
  v27 = *(a1 + 32);
  v41 = v10;
  if (v27)
  {
    v27 = v27[5];
  }

  v28 = *(a1 + 65);
  v29 = v27;
  v30 = [FCConfigurationManager _configurationSettingsWithRequestInfos:v23 feldsparID:v14 storefrontID:v26 contextConfiguration:v4 useBackgroundRefreshRate:v28 requestMode:0 formatVersion:?];

  v31 = *(a1 + 32);
  if (v31)
  {
    v32 = *(v31 + 32);
  }

  else
  {
    v32 = 0;
  }

  v33 = *(a1 + 48);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __132__FCConfigurationManager__fetchRemoteAppWidgetConfigurationIfNeededWithTodayLiteConfig_additionalFields_completionQueue_completion___block_invoke_2_136;
  v43[3] = &unk_1E7C3AB20;
  v44 = v19;
  v45 = v22;
  v47 = v30;
  v48 = v40;
  v46 = v31;
  v34 = v30;
  v35 = v40;
  v36 = v22;
  v37 = v19;
  [v32 fetchMultiConfigurationWithSettings:v34 completionQueue:v33 completion:v43];

  v38 = *MEMORY[0x1E69E9840];
}

void __132__FCConfigurationManager__fetchRemoteAppWidgetConfigurationIfNeededWithTodayLiteConfig_additionalFields_completionQueue_completion___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__19;
  v18 = __Block_byref_object_dispose__19;
  v19 = 0;
  v10 = a1[4];
  if (v10)
  {
    v10 = v10[12];
  }

  v11 = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __132__FCConfigurationManager__fetchRemoteAppWidgetConfigurationIfNeededWithTodayLiteConfig_additionalFields_completionQueue_completion___block_invoke_3;
  v13[3] = &unk_1E7C37160;
  v13[4] = a1[4];
  v13[5] = &v14;
  [v11 performWithLockSync:v13];

  (*(a1[5] + 16))();
  v12 = a1[6];
  if (v12)
  {
    (*(v12 + 16))(v12, v15[5], v7, v8, v9);
  }

  _Block_object_dispose(&v14, 8);
}

- (id)_changeTagsInWidgetConfigurationDict:(uint64_t)dict
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (dict && v3)
  {
    v6 = [v3 objectForKeyedSubscript:@"articles"];
    v7 = [FCConfigurationManager _changeTagsInRecords:v6];

    v8 = [v4 objectForKeyedSubscript:@"articleLists"];
    v9 = [FCConfigurationManager _changeTagsInRecords:v8];

    v10 = [v4 objectForKeyedSubscript:@"tags"];
    v11 = [FCConfigurationManager _changeTagsInRecords:v10];

    v12 = FCAppConfigurationLog;
    if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v17 = 134218496;
      v18 = [v7 count];
      v19 = 2048;
      v20 = [v9 count];
      v21 = 2048;
      v22 = [v11 count];
      _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "configuration manager received articleChangeTags: %lu articleListChangeTags: %lu tagChangeTags: %lu in the widgetConfigurationData", &v17, 0x20u);
    }

    v14 = [v7 arrayByAddingObjectsFromArray:v9];
    v5 = [v14 arrayByAddingObjectsFromArray:v11];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

void __132__FCConfigurationManager__fetchRemoteAppWidgetConfigurationIfNeededWithTodayLiteConfig_additionalFields_completionQueue_completion___block_invoke_2_136(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v86 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [*(a1 + 32) requestCacheKey];
  v14 = [v9 objectForKeyedSubscript:v13];

  v15 = *(a1 + 40);
  if (v15)
  {
    v16 = [v15 requestCacheKey];
    v17 = [v9 objectForKeyedSubscript:v16];

    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v17 = 0;
    if (v12)
    {
LABEL_8:
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __132__FCConfigurationManager__fetchRemoteAppWidgetConfigurationIfNeededWithTodayLiteConfig_additionalFields_completionQueue_completion___block_invoke_3_137;
      v75[3] = &unk_1E7C39F98;
      v76 = v12;
      v78 = *(a1 + 64);
      v77 = v17;
      __132__FCConfigurationManager__fetchRemoteAppWidgetConfigurationIfNeededWithTodayLiteConfig_additionalFields_completionQueue_completion___block_invoke_3_137(v75);

      v20 = v76;
      goto LABEL_27;
    }
  }

  if (!v14)
  {
    goto LABEL_8;
  }

  v66 = v17;
  v18 = *(a1 + 48);
  v19 = v14;
  v64 = v12;
  v65 = v14;
  if (v18)
  {
    v79 = 0;
    v62 = v19;
    v21 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v19 options:0 error:&v79];
    v61 = v79;
    if (v21)
    {
      v60 = v10;
      v20 = [MEMORY[0x1E695DF90] dictionary];
      v22 = [v21 objectForKeyedSubscript:@"widgetConfiguration"];
      [v20 setObject:v22 forKeyedSubscript:@"widgetConfiguration"];

      v23 = [v21 objectForKeyedSubscript:@"singleTagConfiguration"];
      [v20 setObject:v23 forKeyedSubscript:@"singleTagConfiguration"];

      v24 = [v21 objectForKeyedSubscript:@"widgetAppConfiguration"];
      [v20 setObject:v24 forKeyedSubscript:@"widgetAppConfiguration"];

      v25 = [v21 objectForKeyedSubscript:@"articles"];
      v26 = [*(v18 + 168) objectForKeyedSubscript:@"articles"];
      v27 = [FCConfigurationManager _mergeRecords:v25 withCachedRecords:v26];
      [v20 setObject:v27 forKeyedSubscript:@"articles"];

      v28 = [v21 objectForKeyedSubscript:@"articleLists"];
      v29 = [*(v18 + 168) objectForKeyedSubscript:@"articleLists"];
      v30 = [FCConfigurationManager _mergeRecords:v28 withCachedRecords:v29];
      [v20 setObject:v30 forKeyedSubscript:@"articleLists"];

      v31 = [v21 objectForKeyedSubscript:@"tags"];
      v32 = [*(v18 + 168) objectForKeyedSubscript:@"tags"];
      v33 = [FCConfigurationManager _mergeRecords:v31 withCachedRecords:v32];
      [v20 setObject:v33 forKeyedSubscript:@"tags"];

      v34 = FCAppConfigurationLog;
      if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_DEFAULT))
      {
        log = v34;
        v35 = [v20 objectForKeyedSubscript:@"articles"];
        v36 = [v35 count];
        v37 = [v20 objectForKeyedSubscript:@"articleLists"];
        v38 = [v37 count];
        v39 = [v20 objectForKeyedSubscript:@"tags"];
        v40 = [v39 count];
        *buf = 134218496;
        v81 = v36;
        v82 = 2048;
        v83 = v38;
        v84 = 2048;
        v85 = v40;
        _os_log_impl(&dword_1B63EF000, log, OS_LOG_TYPE_DEFAULT, "merged widget cached data articles: %lu articleLists: %lu tags: %lu", buf, 0x20u);
      }

      v10 = v60;
      v41 = v61;
      v12 = v64;
    }

    else
    {
      v42 = FCAppConfigurationLog;
      if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v41 = v61;
        v81 = v61;
        _os_log_impl(&dword_1B63EF000, v42, OS_LOG_TYPE_DEFAULT, "unable to parse the widget configuration data with error: %{public}@", buf, 0xCu);
        v20 = 0;
      }

      else
      {
        v20 = 0;
        v41 = v61;
      }
    }

    v19 = v62;
  }

  else
  {
    v20 = 0;
  }

  v43 = [v20 objectForKeyedSubscript:@"widgetAppConfiguration"];
  v44 = [v43 objectForKeyedSubscript:@"widgetLanguageConfiguration"];
  v45 = [FCNewsAppConfig alloc];
  v46 = [*(a1 + 56) storefrontID];
  v47 = [(FCNewsAppConfig *)v45 initWithConfigDictionary:v43 storefrontID:v46 languageConfigDictionary:v44];

  if (v47)
  {
    v63 = v9;
    v48 = v11;
    v49 = v10;
    v50 = [(FCConfigurationManager *)*(a1 + 48) _changeTagsInWidgetConfigurationDict:v20];
    v51 = FCAppConfigurationLog;
    if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_DEFAULT))
    {
      v52 = v51;
      v53 = [v50 count];
      *buf = 134217984;
      v81 = v53;
      _os_log_impl(&dword_1B63EF000, v52, OS_LOG_TYPE_DEFAULT, "configuration manager received and merged %lu total changeTags in the widgetConfigurationData", buf, 0xCu);
    }

    v54 = *(a1 + 48);
    if (v54)
    {
      v55 = *(v54 + 96);
    }

    else
    {
      v55 = 0;
    }

    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __132__FCConfigurationManager__fetchRemoteAppWidgetConfigurationIfNeededWithTodayLiteConfig_additionalFields_completionQueue_completion___block_invoke_142;
    v67[3] = &unk_1E7C376C8;
    v67[4] = v54;
    v68 = v49;
    v69 = v48;
    v70 = v47;
    v56 = v20;
    v71 = v56;
    [v55 performWithLockSync:v67];
    v57 = *(a1 + 64);
    if (v57)
    {
      (*(v57 + 16))(v57, v56, v66, 0);
    }

    v10 = v49;
    v11 = v48;
    v9 = v63;
    v12 = v64;
  }

  else
  {
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __132__FCConfigurationManager__fetchRemoteAppWidgetConfigurationIfNeededWithTodayLiteConfig_additionalFields_completionQueue_completion___block_invoke_141;
    v72[3] = &unk_1E7C37778;
    v74 = *(a1 + 64);
    v73 = v66;
    __132__FCConfigurationManager__fetchRemoteAppWidgetConfigurationIfNeededWithTodayLiteConfig_additionalFields_completionQueue_completion___block_invoke_141(v72);

    v50 = v74;
  }

  v14 = v65;
  v17 = v66;
LABEL_27:

  v58 = *MEMORY[0x1E69E9840];
}

uint64_t __132__FCConfigurationManager__fetchRemoteAppWidgetConfigurationIfNeededWithTodayLiteConfig_additionalFields_completionQueue_completion___block_invoke_3_137(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCAppConfigurationLog;
  if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = a1[4];
    v6 = 138412290;
    v7 = v5;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "configuration manager received error: %@, returning cached configuration", &v6, 0xCu);
  }

  result = a1[6];
  if (result)
  {
    result = (*(result + 16))(result, 0, a1[5], a1[4]);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __132__FCConfigurationManager__fetchRemoteAppWidgetConfigurationIfNeededWithTodayLiteConfig_additionalFields_completionQueue_completion___block_invoke_141(uint64_t a1)
{
  v2 = FCAppConfigurationLog;
  if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "configuration manager received invalid appConfiguration, returning cached configuration", v4, 2u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32), 0);
  }

  return result;
}

void __132__FCConfigurationManager__fetchRemoteAppWidgetConfigurationIfNeededWithTodayLiteConfig_additionalFields_completionQueue_completion___block_invoke_142(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFD8] setWithArray:*(*(a1 + 32) + 216)];
  v3 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 40)];
  if ([v2 isEqual:v3])
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:*(*(a1 + 32) + 224)];
    v5 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 48)];
    v6 = [v4 isEqual:v5] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v7, *(a1 + 56), 16);
  }

  v9 = [MEMORY[0x1E695DF00] date];
  [(FCAssetHandle *)*(a1 + 32) setRemoteURL:v9];

  [*(a1 + 32) setTreatmentIDs:*(a1 + 40)];
  [*(a1 + 32) setSegmentSetIDs:*(a1 + 48)];
  v10 = *(a1 + 32);
  if (v10)
  {
    objc_storeStrong(v10 + 21, *(a1 + 64));
    v11 = *(a1 + 32);
    if (v11)
    {
      v10 = *(v11 + 160);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v10;
  v13 = [(FCConfigurationManager *)v11 lastModificationDate];
  [v12 setObject:v13 forKey:@"lastModificationDate"];

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = *(v14 + 160);
  }

  else
  {
    v15 = 0;
  }

  [v15 setObject:*(a1 + 40) forKey:@"treatmentIDs"];
  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = *(v16 + 160);
  }

  else
  {
    v17 = 0;
  }

  [v17 setObject:*(a1 + 48) forKey:@"segmentSetIDs"];
  if (*(a1 + 64))
  {
    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(v18 + 160);
    }

    else
    {
      v19 = 0;
    }

    [v19 setObject:? forKey:?];
  }

  v20 = *(a1 + 32);

  [(FCConfigurationManager *)v20 _configurationDidChangeSignificantConfigChange:v6 paywallConfigDidChange:0 scienceExperimentFieldsDidChange:0];
}

void __129__FCConfigurationManager__configurationDidChangeSignificantConfigChange_paywallConfigDidChange_scienceExperimentFieldsDidChange___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 configurationManager:*(a1 + 40) configurationDidChange:*(a1 + 48)];
        }

        if (*(a1 + 64) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v7 configurationManagerScienceExperimentFieldsDidChange:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = *(a1 + 56);
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 configurationManager:*(a1 + 40) appConfigurationDidChange:{*(a1 + 48), v15}];
        }

        if (*(a1 + 65) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v13 configurationManagerSignificantAppConfigChange:*(a1 + 40)];
        }

        if (*(a1 + 66) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v13 configurationManagerPaywallConfigDidChange:*(a1 + 40)];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_loadConfigDataForRequestKey:(void *)key
{
  v2 = [key URLByAppendingPathComponent:a2];
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v2];

  return v3;
}

- (id)_deviceInfoWithFormatVersion:(uint64_t)version
{
  v5 = MEMORY[0x1E69C6D70];
  selfCopy = self;
  v7 = [v5 defaultDeviceInfoWithAppVersion:selfCopy formatVersion:version seedNumber:0 buildNumber:a2];

  return v7;
}

void __76__FCConfigurationManager__logNetworkEvent_configurationSettings_isFallback___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [*(a1 + 32) requestInfos];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) requestKey];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __55__FCConfigurationManager_internalOverrideSegmentSetIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 integerValue];

  return [v2 numberWithInteger:v3];
}

uint64_t __65__FCConfigurationManager_internalOverrideAdditionalSegmentSetIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 integerValue];

  return [v2 numberWithInteger:v3];
}

- (id)_mergeRecords:(void *)records withCachedRecords:(void *)cachedRecords
{
  v40 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  cachedRecordsCopy = cachedRecords;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = recordsCopy;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"id"];
        v10 = [cachedRecordsCopy objectForKeyedSubscript:v9];
        allKeys = [v8 allKeys];
        v12 = [allKeys count];

        if (v12 < 4)
        {
          if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"incomplete data in fetched record %@", v8];
            *buf = 136315906;
            v32 = "[FCConfigurationManager _mergeRecords:withCachedRecords:]";
            v33 = 2080;
            v34 = "FCConfigurationManager.m";
            v35 = 1024;
            v36 = 1647;
            v37 = 2114;
            v38 = v21;
            _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: IncompleteFetchedRecord) : %s %s:%d %{public}@", buf, 0x26u);
          }

          v13 = 0;
        }

        else
        {
          v13 = v8;
        }

        v14 = [v8 objectForKeyedSubscript:@"changeTag"];
        v15 = [v10 objectForKeyedSubscript:@"changeTag"];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          v17 = v10;

          allKeys2 = [v17 allKeys];
          v19 = [allKeys2 count];

          if (v19 <= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"incomplete data in cached record %@", v17];
            *buf = 136315906;
            v32 = "[FCConfigurationManager _mergeRecords:withCachedRecords:]";
            v33 = 2080;
            v34 = "FCConfigurationManager.m";
            v35 = 1024;
            v36 = 1654;
            v37 = 2114;
            v38 = v20;
            _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: IncompleteCachedRecord) : %s %s:%d %{public}@", buf, 0x26u);
          }
        }

        else
        {
          v17 = v13;
        }

        if (v17)
        {
          [dictionary setObject:v17 forKey:v9];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v5);
  }

  v22 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)_changeTagsInRecords:(void *)records
{
  recordsCopy = records;
  if (recordsCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__FCConfigurationManager__changeTagsInRecords___block_invoke_2;
    v5[3] = &unk_1E7C3A5F0;
    v3 = array;
    v6 = v3;
    [recordsCopy enumerateKeysAndObjectsUsingBlock:v5];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

void __47__FCConfigurationManager__changeTagsInRecords___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E69C6D50];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 objectForKeyedSubscript:@"id"];
  v8 = [v5 objectForKeyedSubscript:@"changeTag"];
  v9 = [v5 objectForKeyedSubscript:@"lastModified"];

  v11 = [v6 initWithIdentifier:v7 contentHash:v8 lastModifiedString:v9];
  v10 = v11;
  if (v11)
  {
    [*(a1 + 32) addObject:v11];
    v10 = v11;
  }
}

@end