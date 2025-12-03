@interface FCContentContext
+ (void)initialize;
- (FCAVAssetFactoryType)avAssetFactory;
- (FCAVAssetPrewarming)avAssetPrewarmer;
- (FCArticleController)articleController;
- (FCAssetManager)assetManager;
- (FCBackgroundTaskable)backgroundTaskable;
- (FCContentContext)initWithConfiguration:(id)configuration configurationManager:(id)manager contentDatabase:(id)database contentHostDirectory:(id)directory networkBehaviorMonitor:(id)monitor networkReachability:(id)reachability setupCustomURLProtocols:(BOOL)protocols desiredHeadlineFieldOptions:(unint64_t)self0 feedUsage:(int64_t)self1 assetKeyManagerDelegate:(id)self2 appActivityMonitor:(id)self3 backgroundTaskable:(id)self4 pptContext:(id)self5;
- (FCContentContext)initWithConfiguration:(id)configuration configurationManager:(id)manager contentHostDirectory:(id)directory networkBehaviorMonitor:(id)monitor desiredHeadlineFieldOptions:(unint64_t)options feedUsage:(int64_t)usage appActivityMonitor:(id)activityMonitor backgroundTaskable:(id)self0 pptContext:(id)self1;
- (FCContentContext)initWithConfiguration:(id)configuration configurationManager:(id)manager contentHostDirectory:(id)directory networkBehaviorMonitor:(id)monitor networkReachability:(id)reachability desiredHeadlineFieldOptions:(unint64_t)options feedUsage:(int64_t)usage assetKeyManagerDelegate:(id)self0 appActivityMonitor:(id)self1 backgroundTaskable:(id)self2 pptContext:(id)self3;
- (FCContentContextInternal)internalContentContext;
- (FCCoreConfigurationManager)configurationManager;
- (FCFeedDatabase)feedDatabase;
- (FCFlintResourceManager)flintResourceManager;
- (FCNewsAppConfigurationManager)appConfigurationManager;
- (FCTagController)tagController;
- (NSString)contentDirectory;
- (NSString)contentEnvironment;
- (NSString)contentEnvironmentToken;
- (NSString)contentStoreFrontID;
- (NSString)supportedContentStoreFrontID;
- (id)convertRecords:(id)records;
- (id)interestTokenForContentManifest:(id)manifest;
- (id)magazinesConfigurationManager;
- (id)news_core_ConfigurationManager;
- (id)recordSourceWithSchema:(id)schema;
- (id)recordTreeSourceWithRecordSources:(id)sources;
- (int64_t)storageSize;
- (void)_updateReachabilityGivenRequirements;
- (void)configurationManager:(id)manager configurationDidChange:(id)change;
- (void)configurationManagerScienceExperimentFieldsDidChange:(id)change;
- (void)dealloc;
- (void)enableFlushingWithFlushingThreshold:(unint64_t)threshold exceptForFlusher:(id)flusher;
- (void)ppt_overrideFeedEndpoint:(int64_t)endpoint;
- (void)ppt_prewarmFeedDatabase;
- (void)prewarmStores;
- (void)save;
@end

@implementation FCContentContext

+ (void)initialize
{
  if (FCSetupLogging_onceToken != -1)
  {
    dispatch_once(&FCSetupLogging_onceToken, &__block_literal_global_50);
  }
}

- (FCAVAssetFactoryType)avAssetFactory
{
  v15 = *MEMORY[0x1E69E9840];
  avAssetFactory = self->_avAssetFactory;
  if (!avAssetFactory)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_avAssetFactory"];
      *buf = 136315906;
      v8 = "[FCContentContext avAssetFactory]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 631;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      avAssetFactory = self->_avAssetFactory;
    }

    else
    {
      avAssetFactory = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return avAssetFactory;
}

- (NSString)contentStoreFrontID
{
  v2 = +[FCAppleAccount sharedAccount];
  contentStoreFrontID = [v2 contentStoreFrontID];

  return contentStoreFrontID;
}

- (id)news_core_ConfigurationManager
{
  v16 = *MEMORY[0x1E69E9840];
  configurationManager = self->_configurationManager;
  if (configurationManager)
  {
    goto LABEL_12;
  }

  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_6;
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_configurationManager"];
  *buf = 136315906;
  v9 = "[FCContentContext news_core_ConfigurationManager]";
  v10 = 2080;
  v11 = "FCContentContext.m";
  v12 = 1024;
  v13 = 605;
  v14 = 2114;
  v15 = v7;
  _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  configurationManager = self->_configurationManager;
  if (configurationManager)
  {
LABEL_12:
    if ([(FCCoreConfigurationManager *)configurationManager conformsToProtocol:&unk_1F2E7AD38])
    {
      v3 = configurationManager;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
LABEL_6:
    v3 = 0;
  }

  result = v3;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (FCContentContextInternal)internalContentContext
{
  v15 = *MEMORY[0x1E69E9840];
  internalContentContext = self->_internalContentContext;
  if (!internalContentContext)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_internalContentContext"];
      *buf = 136315906;
      v8 = "[FCContentContext internalContentContext]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 798;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      internalContentContext = self->_internalContentContext;
    }

    else
    {
      internalContentContext = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return internalContentContext;
}

- (FCNewsAppConfigurationManager)appConfigurationManager
{
  v16 = *MEMORY[0x1E69E9840];
  configurationManager = self->_configurationManager;
  if (configurationManager)
  {
    goto LABEL_12;
  }

  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_6;
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_configurationManager"];
  *buf = 136315906;
  v9 = "[FCContentContext appConfigurationManager]";
  v10 = 2080;
  v11 = "FCContentContext.m";
  v12 = 1024;
  v13 = 598;
  v14 = 2114;
  v15 = v7;
  _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  configurationManager = self->_configurationManager;
  if (configurationManager)
  {
LABEL_12:
    if ([(FCCoreConfigurationManager *)configurationManager conformsToProtocol:&unk_1F2E7AD38])
    {
      v3 = configurationManager;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
LABEL_6:
    v3 = 0;
  }

  result = v3;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (FCCoreConfigurationManager)configurationManager
{
  v15 = *MEMORY[0x1E69E9840];
  configurationManager = self->_configurationManager;
  if (!configurationManager)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_configurationManager"];
      *buf = 136315906;
      v8 = "[FCContentContext configurationManager]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 592;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      configurationManager = self->_configurationManager;
    }

    else
    {
      configurationManager = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return configurationManager;
}

- (void)_updateReachabilityGivenRequirements
{
  v4 = +[FCNetworkReachability sharedNetworkReachability];
  supportedCountryNetworkReachabilityRequirement = [(FCContentContext *)self supportedCountryNetworkReachabilityRequirement];
  [v4 setAccessRestrictedBecauseOfCountry:{objc_msgSend(supportedCountryNetworkReachabilityRequirement, "isSatisfied") ^ 1}];
}

- (NSString)contentDirectory
{
  v15 = *MEMORY[0x1E69E9840];
  contentDirectory = self->_contentDirectory;
  if (!contentDirectory)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_contentDirectory"];
      *buf = 136315906;
      v8 = "[FCContentContext contentDirectory]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 655;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      contentDirectory = self->_contentDirectory;
    }

    else
    {
      contentDirectory = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return contentDirectory;
}

- (FCTagController)tagController
{
  v15 = *MEMORY[0x1E69E9840];
  tagController = self->_tagController;
  if (!tagController)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_tagController"];
      *buf = 136315906;
      v8 = "[FCContentContext tagController]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 643;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      tagController = self->_tagController;
    }

    else
    {
      tagController = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return tagController;
}

- (FCAssetManager)assetManager
{
  v15 = *MEMORY[0x1E69E9840];
  assetManager = self->_assetManager;
  if (!assetManager)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_assetManager"];
      *buf = 136315906;
      v8 = "[FCContentContext assetManager]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 619;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      assetManager = self->_assetManager;
    }

    else
    {
      assetManager = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return assetManager;
}

- (FCAVAssetPrewarming)avAssetPrewarmer
{
  v15 = *MEMORY[0x1E69E9840];
  avAssetPrewarmer = self->_avAssetPrewarmer;
  if (!avAssetPrewarmer)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_avAssetPrewarmer"];
      *buf = 136315906;
      v8 = "[FCContentContext avAssetPrewarmer]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 625;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      avAssetPrewarmer = self->_avAssetPrewarmer;
    }

    else
    {
      avAssetPrewarmer = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return avAssetPrewarmer;
}

- (void)prewarmStores
{
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__FCContentContext_prewarmStores__block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __33__FCContentContext_prewarmStores__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetManager];
  [v2 prewarm];

  v3 = [*(a1 + 32) internalContentContext];
  v4 = [v3 articleRecordSource];
  [v4 prewarm];

  v6 = [*(a1 + 32) internalContentContext];
  v5 = [v6 tagRecordSource];
  [v5 prewarm];
}

- (FCFlintResourceManager)flintResourceManager
{
  v15 = *MEMORY[0x1E69E9840];
  flintResourceManager = self->_flintResourceManager;
  if (!flintResourceManager)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_flintResourceManager"];
      *buf = 136315906;
      v8 = "[FCContentContext flintResourceManager]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 649;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      flintResourceManager = self->_flintResourceManager;
    }

    else
    {
      flintResourceManager = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return flintResourceManager;
}

- (FCArticleController)articleController
{
  v15 = *MEMORY[0x1E69E9840];
  articleController = self->_articleController;
  if (!articleController)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_articleController"];
      *buf = 136315906;
      v8 = "[FCContentContext articleController]";
      v9 = 2080;
      v10 = "FCContentContext.m";
      v11 = 1024;
      v12 = 637;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      articleController = self->_articleController;
    }

    else
    {
      articleController = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return articleController;
}

- (FCFeedDatabase)feedDatabase
{
  internalContentContext = [(FCContentContext *)self internalContentContext];
  feedDatabase = [internalContentContext feedDatabase];

  return feedDatabase;
}

- (FCContentContext)initWithConfiguration:(id)configuration configurationManager:(id)manager contentHostDirectory:(id)directory networkBehaviorMonitor:(id)monitor desiredHeadlineFieldOptions:(unint64_t)options feedUsage:(int64_t)usage appActivityMonitor:(id)activityMonitor backgroundTaskable:(id)self0 pptContext:(id)self1
{
  contextCopy = context;
  taskableCopy = taskable;
  activityMonitorCopy = activityMonitor;
  monitorCopy = monitor;
  directoryCopy = directory;
  managerCopy = manager;
  configurationCopy = configuration;
  v24 = +[FCNetworkReachability sharedNetworkReachability];
  v25 = [(FCContentContext *)self initWithConfiguration:configurationCopy configurationManager:managerCopy contentHostDirectory:directoryCopy networkBehaviorMonitor:monitorCopy networkReachability:v24 desiredHeadlineFieldOptions:options feedUsage:usage assetKeyManagerDelegate:0 appActivityMonitor:activityMonitorCopy backgroundTaskable:taskableCopy pptContext:contextCopy];

  return v25;
}

- (FCContentContext)initWithConfiguration:(id)configuration configurationManager:(id)manager contentHostDirectory:(id)directory networkBehaviorMonitor:(id)monitor networkReachability:(id)reachability desiredHeadlineFieldOptions:(unint64_t)options feedUsage:(int64_t)usage assetKeyManagerDelegate:(id)self0 appActivityMonitor:(id)self1 backgroundTaskable:(id)self2 pptContext:(id)self3
{
  v45 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  managerCopy = manager;
  directoryCopy = directory;
  monitorCopy = monitor;
  reachabilityCopy = reachability;
  delegateCopy = delegate;
  activityMonitorCopy = activityMonitor;
  taskableCopy = taskable;
  contextCopy = context;
  v31 = directoryCopy;
  if (!directoryCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentHostDirectory != nil"];
    *buf = 136315906;
    v38 = "[FCContentContext initWithConfiguration:configurationManager:contentHostDirectory:networkBehaviorMonitor:networkReachability:desiredHeadlineFieldOptions:feedUsage:assetKeyManagerDelegate:appActivityMonitor:backgroundTaskable:pptContext:]";
    v39 = 2080;
    v40 = "FCContentContext.m";
    v41 = 1024;
    v42 = 207;
    v43 = 2114;
    v44 = v29;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v24 = [FCCKContentDatabase alloc];
  contentContainerIdentifier = [configurationCopy contentContainerIdentifier];
  v26 = -[FCCKContentDatabase initWithContainerIdentifier:productionEnvironment:networkBehaviorMonitor:networkReachability:configurationManager:](v24, "initWithContainerIdentifier:productionEnvironment:networkBehaviorMonitor:networkReachability:configurationManager:", contentContainerIdentifier, [configurationCopy isProductionContentEnvironment], monitorCopy, reachabilityCopy, managerCopy);

  LOBYTE(v30) = 1;
  v36 = [(FCContentContext *)self initWithConfiguration:configurationCopy configurationManager:managerCopy contentDatabase:v26 contentHostDirectory:v31 networkBehaviorMonitor:monitorCopy networkReachability:reachabilityCopy setupCustomURLProtocols:v30 desiredHeadlineFieldOptions:options feedUsage:usage assetKeyManagerDelegate:delegateCopy appActivityMonitor:activityMonitorCopy backgroundTaskable:taskableCopy pptContext:contextCopy];

  v27 = *MEMORY[0x1E69E9840];
  return v36;
}

- (FCContentContext)initWithConfiguration:(id)configuration configurationManager:(id)manager contentDatabase:(id)database contentHostDirectory:(id)directory networkBehaviorMonitor:(id)monitor networkReachability:(id)reachability setupCustomURLProtocols:(BOOL)protocols desiredHeadlineFieldOptions:(unint64_t)self0 feedUsage:(int64_t)self1 assetKeyManagerDelegate:(id)self2 appActivityMonitor:(id)self3 backgroundTaskable:(id)self4 pptContext:(id)self5
{
  v239 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  obj = manager;
  managerCopy = manager;
  databaseCopy = database;
  directoryCopy = directory;
  monitorCopy = monitor;
  reachabilityCopy = reachability;
  reachabilityCopy2 = reachability;
  delegateCopy = delegate;
  activityMonitorCopy = activityMonitor;
  taskableCopy = taskable;
  contextCopy = context;
  if (!managerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v196 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configurationManager != nil"];
    *buf = 136315906;
    v234 = "[FCContentContext initWithConfiguration:configurationManager:contentDatabase:contentHostDirectory:networkBehaviorMonitor:networkReachability:setupCustomURLProtocols:desiredHeadlineFieldOptions:feedUsage:assetKeyManagerDelegate:appActivityMonitor:backgroundTaskable:pptContext:]";
    v235 = 2080;
    v236 = "FCContentContext.m";
    v237 = 1024;
    *v238 = 244;
    *&v238[4] = 2114;
    *&v238[6] = v196;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v24 = databaseCopy;
  v25 = directoryCopy;
  if (!directoryCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v197 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentHostDirectory != nil"];
    *buf = 136315906;
    v234 = "[FCContentContext initWithConfiguration:configurationManager:contentDatabase:contentHostDirectory:networkBehaviorMonitor:networkReachability:setupCustomURLProtocols:desiredHeadlineFieldOptions:feedUsage:assetKeyManagerDelegate:appActivityMonitor:backgroundTaskable:pptContext:]";
    v235 = 2080;
    v236 = "FCContentContext.m";
    v237 = 1024;
    *v238 = 245;
    *&v238[4] = 2114;
    *&v238[6] = v197;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    v24 = databaseCopy;
  }

  v232.receiver = self;
  v232.super_class = FCContentContext;
  v26 = [(FCContentContext *)&v232 init];
  v27 = v26;
  v228 = taskableCopy;
  if (v26)
  {
    objc_storeStrong(&v26->_contextConfiguration, configuration);
    configuration = [managerCopy configuration];
    [v24 setShouldUseSecureConnectionForCKAssetURLs:{objc_msgSend(configuration, "useSecureConnectionForAssets")}];
    if (objc_opt_respondsToSelector())
    {
      [v24 setMaximumRetryAfterForCK:{objc_msgSend(configuration, "maximumRetryAfterForCK")}];
    }

    contentContainerCombinationIdentifier = [configurationCopy contentContainerCombinationIdentifier];
    v30 = [directoryCopy URLByAppendingPathComponent:contentContainerCombinationIdentifier isDirectory:1];

    objc_storeStrong(&v27->_configurationManager, obj);
    [managerCopy addObserver:v27];
    objc_storeStrong(&v27->_pptContext, context);
    objc_storeWeak(&v27->_backgroundTaskable, taskableCopy);
    objc_storeStrong(&v27->_contentHostDirectoryURL, directory);
    path = [v30 path];
    v32 = [path copy];
    contentDirectory = v27->_contentDirectory;
    v27->_contentDirectory = v32;

    v34 = [v30 URLByAppendingPathComponent:@"av-assets" isDirectory:1];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:0];

    v36 = [[FCAVAssetKeyService alloc] initWithConfigurationManager:managerCopy];
    avAssetKeyService = v27->_avAssetKeyService;
    v27->_avAssetKeyService = v36;

    v38 = [FCAVPersistentAssetKeyCache alloc];
    path2 = [v34 path];
    v40 = [(FCAVPersistentAssetKeyCache *)v38 initWithCacheDirectory:path2];
    avAssetKeyCache = v27->_avAssetKeyCache;
    v27->_avAssetKeyCache = v40;

    v42 = [[FCAVAssetKeyManager alloc] initWithService:v27->_avAssetKeyCache cache:?];
    avAssetKeyManager = v27->_avAssetKeyManager;
    v27->_avAssetKeyManager = v42;

    v44 = [FCAVAssetCache alloc];
    path3 = [v34 path];
    v46 = [(FCAVAssetCache *)v44 initWithCacheDirectory:path3];
    avAssetCache = v27->_avAssetCache;
    v27->_avAssetCache = v46;

    v48 = [[FCAVAssetDownloadManager alloc] initWithAssetCache:v27->_avAssetKeyCache keyCache:reachabilityCopy2 networkReachability:?];
    avAssetDownloadManager = v27->_avAssetDownloadManager;
    v27->_avAssetDownloadManager = v48;

    v50 = [FCAVAssetResourceLoader alloc];
    v205 = v34;
    path4 = [v34 path];
    v52 = [(FCAVAssetResourceLoader *)v50 initWithCacheDirectory:path4 networkReachability:reachabilityCopy2];
    avAssetResourceLoader = v27->_avAssetResourceLoader;
    v27->_avAssetResourceLoader = v52;

    objc_storeStrong(&v27->_networkReachability, reachabilityCopy);
    v54 = [[FCAVAssetFactory alloc] initWithAssetCache:v27->_avAssetKeyCache assetKeyCache:v27->_avAssetKeyManager assetKeyManager:v27->_avAssetResourceLoader assetResourceLoader:?];
    avAssetFactory = v27->_avAssetFactory;
    v27->_avAssetFactory = v54;

    v56 = objc_alloc_init(FCAVAssetPrewarmer);
    avAssetPrewarmer = v27->_avAssetPrewarmer;
    v27->_avAssetPrewarmer = v56;

    v58 = [v30 URLByAppendingPathComponent:@"tabi-resources" isDirectory:1];
    path5 = [v58 path];
    tabiResourcesContentDirectory = v27->_tabiResourcesContentDirectory;
    v27->_tabiResourcesContentDirectory = path5;

    v204 = v58;
    path6 = [v58 path];
    tabiResourcesContentDirectoryLegacy = v27->_tabiResourcesContentDirectoryLegacy;
    v27->_tabiResourcesContentDirectoryLegacy = path6;

    v63 = [v30 URLByAppendingPathComponent:@"tabi-models" isDirectory:1];
    path7 = [v63 path];
    tabiModelsContentDirectory = v27->_tabiModelsContentDirectory;
    v27->_tabiModelsContentDirectory = path7;

    v203 = v63;
    path8 = [v63 path];
    tabiModelsContentDirectoryLegacy = v27->_tabiModelsContentDirectoryLegacy;
    v27->_tabiModelsContentDirectoryLegacy = path8;

    v221 = v30;
    v202 = [v30 URLByAppendingPathComponent:@"tabi-requests" isDirectory:1];
    path9 = [v202 path];
    tabiRequestsContentDirectory = v27->_tabiRequestsContentDirectory;
    v27->_tabiRequestsContentDirectory = path9;

    v70 = v25;
    v230[0] = MEMORY[0x1E69E9820];
    v230[1] = 3221225472;
    v230[2] = __278__FCContentContext_initWithConfiguration_configurationManager_contentDatabase_contentHostDirectory_networkBehaviorMonitor_networkReachability_setupCustomURLProtocols_desiredHeadlineFieldOptions_feedUsage_assetKeyManagerDelegate_appActivityMonitor_backgroundTaskable_pptContext___block_invoke;
    v230[3] = &unk_1E7C36EA0;
    v71 = v27;
    v231 = v71;
    [FCTaskScheduler scheduleLowPriorityBlock:v230];
    v72 = [[FCAssetKeyService alloc] initWithConfigurationManager:managerCopy];
    assetKeyService = v71->_assetKeyService;
    v71->_assetKeyService = v72;

    v74 = [FCPersistentAssetKeyCache alloc];
    path10 = [v70 path];
    v76 = [(FCPersistentAssetKeyCache *)&v74->super.isa initWithCacheDirectory:path10 cacheName:@"shared-assets-lru" backgroundTaskable:v228];
    assetKeyCache = v71->_assetKeyCache;
    v71->_assetKeyCache = v76;

    v78 = [[FCAssetKeyManager alloc] initWithService:v71->_assetKeyCache cache:delegateCopy delegate:?];
    assetKeyManager = v71->_assetKeyManager;
    v71->_assetKeyManager = v78;

    v80 = [FCAssetManager alloc];
    path11 = [v70 path];
    v82 = [(FCAssetManager *)v80 initWithName:@"shared-assets" directory:path11 keyManager:v71->_assetKeyManager avAssetFactory:v27->_avAssetFactory resourceURLGenerator:v24 networkBehaviorMonitor:monitorCopy networkReachability:reachabilityCopy2];

    useSecureConnectionForAssets = [configuration useSecureConnectionForAssets];
    if (v82)
    {
      v82->_shouldUseSecureConnectionForCKAssetDownloads = useSecureConnectionForAssets;
    }

    v206 = v70;
    objc_storeStrong(&v71->_assetManager, v82);
    if ([(FCAssetKeyCacheType *)v71->_assetKeyCache conformsToProtocol:&unk_1F2E773E8])
    {
      [activityMonitorCopy addObserver:v71->_assetKeyCache];
    }

    v84 = objc_opt_new();
    [v84 setContentDatabase:v24];
    objc_storeStrong(&v71->_internalContentContext, v84);
    if (protocols)
    {
      [FCExcerptURLProtocol setupWithArticleDatabase:v24];
      [FCRecordFieldURLProtocol setupWithArticleDatabase:v24];
      path12 = [v70 path];
      [FCPuzzleThumbnailURLProtocol setupWithArticleDatabase:v24 cacheDirectory:path12];
    }

    path13 = [v30 path];
    experimentalizableFieldPostfix = [configuration experimentalizableFieldPostfix];
    currentTreatment = [configuration currentTreatment];
    stringValue = [currentTreatment stringValue];

    if ([configuration shouldShowAlternateHeadlines])
    {
      optionsCopy = options | 0x10000000;
    }

    else
    {
      optionsCopy = options;
    }

    v201 = v82;
    if (objc_opt_respondsToSelector())
    {
      v89 = v228;
      if ([configuration articleEmbeddingsEnabled])
      {
        newsPersonalizationConfiguration = [configuration newsPersonalizationConfiguration];
        articleEmbeddingsConfiguration = [newsPersonalizationConfiguration articleEmbeddingsConfiguration];

        titleEmbeddingConfiguration = [articleEmbeddingsConfiguration titleEmbeddingConfiguration];
        v93 = managerCopy;
        shouldFetch = [titleEmbeddingConfiguration shouldFetch];

        v95 = shouldFetch == 0;
        managerCopy = v93;
        if (v95)
        {
          v96 = optionsCopy;
        }

        else
        {
          v96 = optionsCopy | 0x800000000;
        }

        bodyEmbeddingConfiguration = [articleEmbeddingsConfiguration bodyEmbeddingConfiguration];
        shouldFetch2 = [bodyEmbeddingConfiguration shouldFetch];

        if (shouldFetch2)
        {
          optionsCopy = v96 | 0x1000000000;
        }

        else
        {
          optionsCopy = v96;
        }

        v89 = v228;

        v24 = databaseCopy;
      }
    }

    else
    {
      v89 = v228;
    }

    if (objc_opt_respondsToSelector())
    {
      obja = [configuration engagementCohortsExpField];
    }

    else
    {
      obja = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      conversionCohortsExpField = [configuration conversionCohortsExpField];
    }

    else
    {
      conversionCohortsExpField = 0;
    }

    v99 = [FCArticleRecordSource alloc];
    v100 = objc_opt_respondsToSelector();
    v101 = 0.0;
    v102 = 0.0;
    if (v100)
    {
      [configuration defaultTTLForArticleRecords];
    }

    v103 = [(FCArticleRecordSource *)v99 initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v89 defaultTTL:optionsCopy & 0xF | (16 * ((optionsCopy >> 6) & 1)) | (optionsCopy >> 7) & 0x240000 | (optionsCopy >> 5) & 0x1FE0 | (optionsCopy >> 7) & 0x371BE000 | (optionsCopy >> 24) & 0x400 desiredArticleRecordFieldOptions:experimentalizableFieldPostfix experimentalizableFieldsPostfix:v102 engagementCohortsExpField:obja conversionCohortsExpField:conversionCohortsExpField activeTreatmentID:stringValue];
    [v84 setArticleRecordSource:v103];

    v104 = [FCPurchaseLookupRecordSource alloc];
    if (objc_opt_respondsToSelector())
    {
      [configuration defaultTTLForPurchaseLookupRecords];
      v101 = v105;
    }

    v106 = [(FCRecordSource *)v104 initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v89 defaultTTL:v101];
    [v84 setPurchaseLookupRecordSource:v106];

    v107 = [FCTagRecordSource alloc];
    v108 = 0.0;
    v109 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [configuration defaultTTLForTagRecords];
      v109 = v110;
    }

    v210 = [(FCTagRecordSource *)v107 initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v89 defaultTTL:FCDesiredTagRecordFieldOptionsWithHeadlineFieldOptions(optionsCopy) desiredTagRecordFieldOptions:v109];
    [v84 setTagRecordSource:?];
    v111 = [FCSportsEventRecordSource alloc];
    if (objc_opt_respondsToSelector())
    {
      [configuration defaultTTLForSportsEventRecords];
      v108 = v112;
    }

    v209 = [(FCRecordSource *)v111 initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v89 defaultTTL:v108];
    [v84 setSportsEventRecordSource:?];
    v113 = [FCRecipeRecordSource alloc];
    v114 = objc_opt_respondsToSelector();
    v115 = 0.0;
    v116 = 0.0;
    if (v114)
    {
      [configuration defaultTTLForRecipeRecords];
    }

    v200 = [(FCRecordSource *)v113 initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v89 defaultTTL:v116];
    [v84 setRecipeRecordSource:?];
    v117 = [FCRecipeListRecordSource alloc];
    if (objc_opt_respondsToSelector())
    {
      [configuration defaultTTLForRecipeListRecords];
      v115 = v118;
    }

    v199 = [(FCRecordSource *)v117 initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v89 defaultTTL:v115];
    [v84 setRecipeListRecordSource:?];
    v119 = [(FCRecordSource *)[FCTagListRecordSource alloc] initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v89];
    [v84 setTagListRecordSource:v119];

    v120 = [(FCRecordSource *)[FCResourceRecordSource alloc] initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v89];
    [v84 setResourceRecordSource:v120];

    v121 = [FCArticleListRecordSource alloc];
    v122 = objc_opt_respondsToSelector();
    v123 = 0.0;
    v124 = 0.0;
    if (v122)
    {
      [configuration defaultTTLForArticleListRecords];
    }

    v125 = [(FCRecordSource *)v121 initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v89 defaultTTL:v124];
    [v84 setArticleListRecordSource:v125];

    v198 = [(FCRecordSource *)[FCChannelMembershipRecordSource alloc] initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v89];
    v126 = [[FCChannelMembershipController alloc] initWithChannelMembershipRecordSource:v198];
    [v84 setChannelMembershipController:v126];

    v127 = [(FCRecordSource *)[FCForYouConfigRecordSource alloc] initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v89];
    [v84 setForYouConfigRecordSource:v127];

    v128 = [(FCRecordSource *)[FCWidgetSectionConfigRecordSource alloc] initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v89];
    [v84 setWidgetSectionConfigRecordSource:v128];

    v129 = [FCIssueRecordSource alloc];
    if (objc_opt_respondsToSelector())
    {
      [configuration defaultTTLForIssueRecords];
      v123 = v130;
    }

    v131 = [(FCRecordSource *)v129 initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v89 defaultTTL:v123];
    [v84 setIssueRecordSource:v131];

    v132 = [FCIssueListRecordSource alloc];
    v133 = objc_opt_respondsToSelector();
    v134 = 0.0;
    v135 = 0.0;
    if (v133)
    {
      [configuration defaultTTLForIssueListRecords];
    }

    v136 = [(FCRecordSource *)v132 initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v89 defaultTTL:v135];
    [v84 setIssueListRecordSource:v136];

    v137 = [(FCRecordSource *)[FCAudioConfigRecordSource alloc] initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v89];
    [v84 setAudioConfigRecordSource:v137];

    v138 = [FCPuzzleRecordSource alloc];
    if (objc_opt_respondsToSelector())
    {
      [configuration defaultTTLForPuzzleRecords];
      v134 = v139;
    }

    v208 = [(FCRecordSource *)v138 initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v89 defaultTTL:v134];
    [v84 setPuzzleRecordSource:?];
    v140 = [FCPuzzleTypeRecordSource alloc];
    v141 = objc_opt_respondsToSelector();
    v142 = 0.0;
    if (v141)
    {
      [configuration defaultTTLForPuzzleTypeRecords];
    }

    v207 = [(FCRecordSource *)v140 initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v228 defaultTTL:v142];
    [v84 setPuzzleTypeRecordSource:?];
    v143 = [(FCRecordSource *)[FCNotificationItemRecordSource alloc] initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v228];
    [v84 setNotificationItemRecordSource:v143];

    v144 = [(FCRecordSource *)[FCNotificationItemListRecordSource alloc] initWithContentDatabase:v24 contentDirectory:path13 appActivityMonitor:activityMonitorCopy backgroundTaskable:v228];
    [v84 setNotificationItemListRecordSource:v144];

    assetKeyCache = [(FCContentContext *)v71 assetKeyCache];
    [v84 setAssetKeyCache:assetKeyCache];

    assetKeyManager = [(FCContentContext *)v71 assetKeyManager];
    [v84 setAssetKeyManager:assetKeyManager];

    avAssetFactory = [(FCContentContext *)v71 avAssetFactory];
    [v84 setAvAssetFactory:avAssetFactory];

    avAssetCache = [(FCContentContext *)v71 avAssetCache];
    [v84 setAvAssetCache:avAssetCache];

    avAssetKeyCache = [(FCContentContext *)v71 avAssetKeyCache];
    [v84 setAvAssetKeyCache:avAssetKeyCache];

    avAssetDownloadManager = [(FCContentContext *)v71 avAssetDownloadManager];
    [v84 setAvAssetDownloadManager:avAssetDownloadManager];

    if (usage != 1)
    {
      v151 = managerCopy;
      isOrderFeedEndpointEnabled = [configuration isOrderFeedEndpointEnabled];
      v153 = NewsCoreUserDefaults();
      v154 = [v153 stringForKey:@"feed_endpoint"];

      if ([v154 isEqualToString:@"multi_feed"])
      {
        v155 = 0;
      }

      else
      {
        v155 = ([v154 isEqualToString:@"order_feed"] | isOrderFeedEndpointEnabled) & 1;
      }

      v156 = [[FCFeedDatabase alloc] initWithParentDirectoryURL:v221 usage:usage endpoint:v155];
      [v84 setFeedDatabase:v156];
      v157 = [[FCFeedPrewarmer alloc] initWithContentContext:v71];
      [v84 setFeedPrewarmer:v157];

      managerCopy = v151;
    }

    v158 = [FCFeedItemFactory alloc];
    articleRecordSource = [v84 articleRecordSource];
    contentStoreFrontID = [(FCContentContext *)v71 contentStoreFrontID];
    v161 = [(FCFeedItemFactory *)v158 initWithArticleRecordSource:articleRecordSource storefrontID:contentStoreFrontID];
    feedItemFactory = v71->_feedItemFactory;
    v71->_feedItemFactory = v161;

    v163 = [FCRecipeItemFactory alloc];
    recipeRecordSource = [v84 recipeRecordSource];
    v165 = [(FCRecipeItemFactory *)v163 initWithRecipeRecordSource:recipeRecordSource];
    recipeItemFactory = v71->_recipeItemFactory;
    v71->_recipeItemFactory = v165;

    v24 = databaseCopy;
    v167 = [[FCTagController alloc] initWithContentDatabase:databaseCopy assetManager:v201 tagRecordSource:v210 configurationManager:managerCopy];
    tagController = v71->_tagController;
    v71->_tagController = v167;

    v169 = [[FCSportsEventController alloc] initWithContentDatabase:databaseCopy context:v71 sportsEventRecordSource:v209 tagController:v71->_tagController];
    sportsEventController = v71->_sportsEventController;
    v71->_sportsEventController = v169;

    v171 = [[FCArticleController alloc] initWithContext:v71];
    articleController = v71->_articleController;
    v71->_articleController = v171;

    v173 = [[FCPuzzleTypeController alloc] initWithContentDatabase:databaseCopy context:v71 assetManager:v201 puzzleTypeRecordSource:v207 configurationManager:managerCopy];
    puzzleTypeController = v71->_puzzleTypeController;
    v71->_puzzleTypeController = v173;

    v175 = [FCPuzzleController alloc];
    puzzleTypeController = [(FCContentContext *)v71 puzzleTypeController];
    v177 = [(FCPuzzleController *)v175 initWithContentDatabase:databaseCopy assetManager:v201 puzzleTypeController:puzzleTypeController puzzleRecordSource:v208 configurationManager:managerCopy];
    puzzleController = v71->_puzzleController;
    v71->_puzzleController = v177;

    v179 = [[FCFlintResourceManager alloc] initWithContext:v71];
    flintResourceManager = v71->_flintResourceManager;
    v71->_flintResourceManager = v179;

    if (v201)
    {
      directoryURLForCachedAssets = v201->_directoryURLForCachedAssets;
    }

    else
    {
      directoryURLForCachedAssets = 0;
    }

    objc_storeStrong(&v71->_assetCacheDirectoryURL, directoryURLForCachedAssets);
    v182 = objc_opt_new();
    [v182 setObserver:v71];
    supportedCountryNetworkReachabilityRequirement = v71->_supportedCountryNetworkReachabilityRequirement;
    v71->_supportedCountryNetworkReachabilityRequirement = v182;

    [(FCContentContext *)v71 _updateReachabilityGivenRequirements];
    v25 = v206;
    taskableCopy = v228;
  }

  v184 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_INFO))
  {
    v218 = v184;
    contentStoreFrontID2 = [(FCContentContext *)v27 contentStoreFrontID];
    v222 = +[FCAppleAccount sharedAccount];
    currentStoreFrontID = [v222 currentStoreFrontID];
    internalContentContext = [(FCContentContext *)v27 internalContentContext];
    contentDatabase = [internalContentContext contentDatabase];
    containerIdentifier = [contentDatabase containerIdentifier];
    [(FCContentContext *)v27 internalContentContext];
    v190 = v189 = managerCopy;
    contentDatabase2 = [v190 contentDatabase];
    isProductionEnvironment = [contentDatabase2 isProductionEnvironment];
    v193 = @" not";
    *buf = 138544130;
    v234 = contentStoreFrontID2;
    v235 = 2114;
    if (isProductionEnvironment)
    {
      v193 = &stru_1F2DC7DC0;
    }

    v236 = currentStoreFrontID;
    v237 = 2114;
    *v238 = containerIdentifier;
    *&v238[8] = 2114;
    *&v238[10] = v193;
    _os_log_impl(&dword_1B63EF000, v218, OS_LOG_TYPE_INFO, "Initialized content context with contentStoreFrontID: %{public}@, currentStoreFrontID: %{public}@, containerID: %{public}@%{public}@ in production environment.", buf, 0x2Au);

    managerCopy = v189;
    v24 = databaseCopy;

    taskableCopy = v228;
  }

  v194 = *MEMORY[0x1E69E9840];
  return v27;
}

void __278__FCContentContext_initWithConfiguration_configurationManager_contentDatabase_contentHostDirectory_networkBehaviorMonitor_networkReachability_setupCustomURLProtocols_desiredHeadlineFieldOptions_feedUsage_assetKeyManagerDelegate_appActivityMonitor_backgroundTaskable_pptContext___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) avAssetKeyManager];
  v2 = [*(a1 + 32) avAssetCache];
  v3 = [v2 contentKeyIdentifiersForAllAssets];
  [v4 refreshKeysIfNearExpiration:v3 completionHandler:0];
}

- (void)dealloc
{
  +[FCExcerptURLProtocol unregister];
  v3.receiver = self;
  v3.super_class = FCContentContext;
  [(FCContentContext *)&v3 dealloc];
}

- (NSString)supportedContentStoreFrontID
{
  v2 = +[FCAppleAccount sharedAccount];
  supportedContentStoreFrontID = [v2 supportedContentStoreFrontID];

  return supportedContentStoreFrontID;
}

- (NSString)contentEnvironment
{
  contextConfiguration = [(FCContentContext *)self contextConfiguration];
  contentEnvironmentDescription = [contextConfiguration contentEnvironmentDescription];

  return contentEnvironmentDescription;
}

- (id)magazinesConfigurationManager
{
  v16 = *MEMORY[0x1E69E9840];
  configurationManager = self->_configurationManager;
  if (configurationManager)
  {
    goto LABEL_12;
  }

  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_6;
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_configurationManager"];
  *buf = 136315906;
  v9 = "[FCContentContext magazinesConfigurationManager]";
  v10 = 2080;
  v11 = "FCContentContext.m";
  v12 = 1024;
  v13 = 612;
  v14 = 2114;
  v15 = v7;
  _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  configurationManager = self->_configurationManager;
  if (configurationManager)
  {
LABEL_12:
    if ([(FCCoreConfigurationManager *)configurationManager conformsToProtocol:&unk_1F2E8A090])
    {
      v3 = configurationManager;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
LABEL_6:
    v3 = 0;
  }

  result = v3;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)contentEnvironmentToken
{
  contextConfiguration = [(FCContentContext *)self contextConfiguration];
  contentContainerCombinationIdentifier = [contextConfiguration contentContainerCombinationIdentifier];

  return contentContainerCombinationIdentifier;
}

- (id)recordSourceWithSchema:(id)schema
{
  schemaCopy = schema;
  configurationManager = [(FCContentContext *)self configurationManager];
  configuration = [configurationManager configuration];

  v7 = [FCJSONRecordSource alloc];
  internalContentContext = [(FCContentContext *)self internalContentContext];
  contentDatabase = [internalContentContext contentDatabase];
  contentDirectory = [(FCContentContext *)self contentDirectory];
  experimentalizableFieldPostfix = [configuration experimentalizableFieldPostfix];
  currentTreatment = [configuration currentTreatment];
  stringValue = [currentTreatment stringValue];
  v14 = [(FCJSONRecordSource *)v7 initWithSchema:schemaCopy contentDatabase:contentDatabase contentDirectory:contentDirectory experimentationSuffix:experimentalizableFieldPostfix activeTreatmentID:stringValue];

  return v14;
}

- (id)recordTreeSourceWithRecordSources:(id)sources
{
  sourcesCopy = sources;
  v5 = [[FCJSONRecordTreeSource alloc] initWithContext:self jsonRecordSources:sourcesCopy];

  return v5;
}

- (id)interestTokenForContentManifest:(id)manifest
{
  v50 = *MEMORY[0x1E69E9840];
  manifestCopy = manifest;
  context = objc_autoreleasePoolPush();
  assetManager = [(FCContentContext *)self assetManager];
  assetURLs = [manifestCopy assetURLs];
  v35 = [assetManager interestTokenForAssetURLs:assetURLs];

  assetKeyCache = [(FCContentContext *)self assetKeyCache];
  assetWrappingKeyIDs = [manifestCopy assetWrappingKeyIDs];
  v34 = [assetKeyCache interestTokenForWrappingKeyIDs:assetWrappingKeyIDs];

  avAssetCache = [(FCContentContext *)self avAssetCache];
  avAssetIDs = [manifestCopy avAssetIDs];
  v33 = [avAssetCache interestTokenForAssetIdentifiers:avAssetIDs];

  avAssetKeyCache = [(FCContentContext *)self avAssetKeyCache];
  v37 = manifestCopy;
  avAssetKeyURIs = [manifestCopy avAssetKeyURIs];
  v32 = [avAssetKeyCache interestTokenForKeyURIs:avAssetKeyURIs];

  array = [MEMORY[0x1E695DF70] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  internalContentContext = [(FCContentContext *)self internalContentContext];
  recordSources = [internalContentContext recordSources];

  v16 = [recordSources countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v46;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(recordSources);
        }

        v20 = *(*(&v45 + 1) + 8 * i);
        recordIDs = [v37 recordIDs];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __52__FCContentContext_interestTokenForContentManifest___block_invoke;
        v44[3] = &unk_1E7C38B40;
        v44[4] = v20;
        v22 = [recordIDs fc_arrayOfObjectsPassingTest:v44];

        v23 = [v20 interestTokenForRecordIDs:v22];
        [array addObject:v23];
      }

      v17 = [recordSources countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v17);
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __52__FCContentContext_interestTokenForContentManifest___block_invoke_2;
  v38[3] = &unk_1E7C376C8;
  v39 = v35;
  v40 = v34;
  v41 = v33;
  v42 = v32;
  v43 = array;
  v24 = array;
  v25 = v32;
  v26 = v33;
  v27 = v34;
  v28 = v35;
  v29 = [FCInterestToken interestTokenWithRemoveInterestBlock:v38];

  objc_autoreleasePoolPop(context);
  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)convertRecords:(id)records
{
  v53 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v5 = objc_alloc_init(FCHeldRecords);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  internalContentContext = [(FCContentContext *)self internalContentContext];
  recordSources = [internalContentContext recordSources];

  v9 = [recordSources countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v47;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(recordSources);
        }

        v13 = *(*(&v46 + 1) + 8 * i);
        recordType = [v13 recordType];
        [dictionary setObject:v13 forKey:recordType];
      }

      v10 = [recordSources countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v10);
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v16 = recordsCopy;
  v17 = [v16 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v43;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v43 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v42 + 1) + 8 * j);
        recordType2 = [v21 recordType];
        array = [dictionary2 objectForKey:recordType2];

        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
          recordType3 = [v21 recordType];
          [dictionary2 setObject:array forKey:recordType3];
        }

        [array addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v18);
  }

  v37 = v16;

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = dictionary2;
  v26 = [v25 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v39;
    do
    {
      v29 = 0;
      v30 = v5;
      do
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v38 + 1) + 8 * v29);
        v32 = [dictionary objectForKey:v31];
        v33 = [v25 objectForKey:v31];
        v34 = [v32 convertRecords:v33];
        v5 = [FCHeldRecords heldRecordsByMerging:v34 with:v30];

        ++v29;
        v30 = v5;
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v27);
  }

  v35 = *MEMORY[0x1E69E9840];

  return v5;
}

- (int64_t)storageSize
{
  v20 = *MEMORY[0x1E69E9840];
  assetManager = [(FCContentContext *)self assetManager];
  storageSize = [assetManager storageSize];

  avAssetCache = [(FCContentContext *)self avAssetCache];
  v6 = [avAssetCache storageSize] + storageSize;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  internalContentContext = [(FCContentContext *)self internalContentContext];
  recordSources = [internalContentContext recordSources];

  v9 = [recordSources countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(recordSources);
        }

        v6 += [*(*(&v15 + 1) + 8 * v12++) storageSize];
      }

      while (v10 != v12);
      v10 = [recordSources countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)save
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "Will force-save records and assets", buf, 2u);
  }

  date = [MEMORY[0x1E695DF00] date];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  internalContentContext = [(FCContentContext *)self internalContentContext];
  recordSources = [internalContentContext recordSources];

  v7 = [recordSources countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(recordSources);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        [v11 save];
        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [recordSources countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v13 = objc_autoreleasePoolPush();
  assetManager = [(FCContentContext *)self assetManager];
  [assetManager save];

  objc_autoreleasePoolPop(v13);
  v15 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    fc_millisecondTimeIntervalUntilNow = [date fc_millisecondTimeIntervalUntilNow];
    *buf = 134217984;
    v24 = fc_millisecondTimeIntervalUntilNow;
    _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "Did force-save record sources and assets in %llums", buf, 0xCu);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)ppt_overrideFeedEndpoint:(int64_t)endpoint
{
  internalContentContext = [(FCContentContext *)self internalContentContext];
  feedDatabase = [internalContentContext feedDatabase];

  if ([feedDatabase endpoint] != endpoint)
  {
    [feedDatabase teardown];
    v6 = [FCFeedDatabase alloc];
    parentDirectoryURL = [feedDatabase parentDirectoryURL];
    v8 = -[FCFeedDatabase initWithParentDirectoryURL:usage:endpoint:](v6, "initWithParentDirectoryURL:usage:endpoint:", parentDirectoryURL, [feedDatabase usage], endpoint);
    internalContentContext2 = [(FCContentContext *)self internalContentContext];
    [internalContentContext2 setFeedDatabase:v8];
  }
}

- (void)ppt_prewarmFeedDatabase
{
  internalContentContext = [(FCContentContext *)self internalContentContext];
  feedDatabase = [internalContentContext feedDatabase];
  [feedDatabase prewarm];
}

- (void)enableFlushingWithFlushingThreshold:(unint64_t)threshold exceptForFlusher:(id)flusher
{
  v20 = *MEMORY[0x1E69E9840];
  flusherCopy = flusher;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__FCContentContext_enableFlushingWithFlushingThreshold_exceptForFlusher___block_invoke;
  v18[3] = &unk_1E7C36D40;
  v18[4] = self;
  v7 = [MEMORY[0x1E695DEC8] fc_array:v18];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (v12 != flusherCopy)
        {
          [v12 enableFlushingWithFlushingThreshold:threshold];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __73__FCContentContext_enableFlushingWithFlushingThreshold_exceptForFlusher___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) assetManager];
  [v11 addObject:v3];

  v4 = [*(a1 + 32) internalContentContext];
  [v11 addObject:v4];

  v5 = [*(a1 + 32) assetKeyCache];
  v6 = [v5 conformsToProtocol:&unk_1F2E76120];

  if (v6)
  {
    v7 = [*(a1 + 32) assetKeyCache];
    [v11 addObject:v7];
  }

  v8 = [*(a1 + 32) avAssetCache];
  v9 = [v8 conformsToProtocol:&unk_1F2E76120];

  if (v9)
  {
    v10 = [*(a1 + 32) avAssetCache];
    [v11 addObject:v10];
  }
}

- (void)configurationManager:(id)manager configurationDidChange:(id)change
{
  changeCopy = change;
  useSecureConnectionForAssets = [changeCopy useSecureConnectionForAssets];
  assetManager = [(FCContentContext *)self assetManager];
  if (assetManager)
  {
    assetManager[8] = useSecureConnectionForAssets;
  }

  useSecureConnectionForAssets2 = [changeCopy useSecureConnectionForAssets];
  internalContentContext = [(FCContentContext *)self internalContentContext];
  contentDatabase = [internalContentContext contentDatabase];
  [contentDatabase setShouldUseSecureConnectionForCKAssetURLs:useSecureConnectionForAssets2];
}

- (void)configurationManagerScienceExperimentFieldsDidChange:(id)change
{
  v19 = *MEMORY[0x1E69E9840];
  configuration = [change configuration];
  if (objc_opt_respondsToSelector())
  {
    engagementCohortsExpField = [configuration engagementCohortsExpField];
  }

  else
  {
    engagementCohortsExpField = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    conversionCohortsExpField = [configuration conversionCohortsExpField];
  }

  else
  {
    conversionCohortsExpField = 0;
  }

  v7 = NewsCoreUserDefaults();
  v8 = [v7 BOOLForKey:@"use_cached_exp_fields"];

  v9 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"Saving";
    *v14 = 138412802;
    if (v8)
    {
      v10 = @"Reading";
    }

    *&v14[4] = v10;
    v15 = 2114;
    v16 = engagementCohortsExpField;
    v17 = 2114;
    v18 = conversionCohortsExpField;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "%@ engagementCohortsExpField: %{public}@ conversionCohortsExpField: %{public}@", v14, 0x20u);
  }

  internalContentContext = [(FCContentContext *)self internalContentContext];
  articleRecordSource = [internalContentContext articleRecordSource];
  [articleRecordSource updateEngagementCohortsExpField:engagementCohortsExpField conversionCohortsExpField:conversionCohortsExpField];

  v13 = *MEMORY[0x1E69E9840];
}

- (FCBackgroundTaskable)backgroundTaskable
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundTaskable);

  return WeakRetained;
}

@end