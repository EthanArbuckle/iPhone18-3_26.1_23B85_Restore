@interface FCContentContext
+ (void)initialize;
- (FCAVAssetFactoryType)avAssetFactory;
- (FCAVAssetPrewarming)avAssetPrewarmer;
- (FCArticleController)articleController;
- (FCAssetManager)assetManager;
- (FCBackgroundTaskable)backgroundTaskable;
- (FCContentContext)initWithConfiguration:(id)a3 configurationManager:(id)a4 contentDatabase:(id)a5 contentHostDirectory:(id)a6 networkBehaviorMonitor:(id)a7 networkReachability:(id)a8 setupCustomURLProtocols:(BOOL)a9 desiredHeadlineFieldOptions:(unint64_t)a10 feedUsage:(int64_t)a11 assetKeyManagerDelegate:(id)a12 appActivityMonitor:(id)a13 backgroundTaskable:(id)a14 pptContext:(id)a15;
- (FCContentContext)initWithConfiguration:(id)a3 configurationManager:(id)a4 contentHostDirectory:(id)a5 networkBehaviorMonitor:(id)a6 desiredHeadlineFieldOptions:(unint64_t)a7 feedUsage:(int64_t)a8 appActivityMonitor:(id)a9 backgroundTaskable:(id)a10 pptContext:(id)a11;
- (FCContentContext)initWithConfiguration:(id)a3 configurationManager:(id)a4 contentHostDirectory:(id)a5 networkBehaviorMonitor:(id)a6 networkReachability:(id)a7 desiredHeadlineFieldOptions:(unint64_t)a8 feedUsage:(int64_t)a9 assetKeyManagerDelegate:(id)a10 appActivityMonitor:(id)a11 backgroundTaskable:(id)a12 pptContext:(id)a13;
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
- (id)convertRecords:(id)a3;
- (id)interestTokenForContentManifest:(id)a3;
- (id)magazinesConfigurationManager;
- (id)news_core_ConfigurationManager;
- (id)recordSourceWithSchema:(id)a3;
- (id)recordTreeSourceWithRecordSources:(id)a3;
- (int64_t)storageSize;
- (void)_updateReachabilityGivenRequirements;
- (void)configurationManager:(id)a3 configurationDidChange:(id)a4;
- (void)configurationManagerScienceExperimentFieldsDidChange:(id)a3;
- (void)dealloc;
- (void)enableFlushingWithFlushingThreshold:(unint64_t)a3 exceptForFlusher:(id)a4;
- (void)ppt_overrideFeedEndpoint:(int64_t)a3;
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
  v3 = [v2 contentStoreFrontID];

  return v3;
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
  v3 = [(FCContentContext *)self supportedCountryNetworkReachabilityRequirement];
  [v4 setAccessRestrictedBecauseOfCountry:{objc_msgSend(v3, "isSatisfied") ^ 1}];
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
  v2 = [(FCContentContext *)self internalContentContext];
  v3 = [v2 feedDatabase];

  return v3;
}

- (FCContentContext)initWithConfiguration:(id)a3 configurationManager:(id)a4 contentHostDirectory:(id)a5 networkBehaviorMonitor:(id)a6 desiredHeadlineFieldOptions:(unint64_t)a7 feedUsage:(int64_t)a8 appActivityMonitor:(id)a9 backgroundTaskable:(id)a10 pptContext:(id)a11
{
  v17 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = +[FCNetworkReachability sharedNetworkReachability];
  v25 = [(FCContentContext *)self initWithConfiguration:v23 configurationManager:v22 contentHostDirectory:v21 networkBehaviorMonitor:v20 networkReachability:v24 desiredHeadlineFieldOptions:a7 feedUsage:a8 assetKeyManagerDelegate:0 appActivityMonitor:v19 backgroundTaskable:v18 pptContext:v17];

  return v25;
}

- (FCContentContext)initWithConfiguration:(id)a3 configurationManager:(id)a4 contentHostDirectory:(id)a5 networkBehaviorMonitor:(id)a6 networkReachability:(id)a7 desiredHeadlineFieldOptions:(unint64_t)a8 feedUsage:(int64_t)a9 assetKeyManagerDelegate:(id)a10 appActivityMonitor:(id)a11 backgroundTaskable:(id)a12 pptContext:(id)a13
{
  v45 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v33 = a10;
  v32 = a11;
  v22 = a12;
  v23 = a13;
  v31 = v19;
  if (!v19 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
  v25 = [v17 contentContainerIdentifier];
  v26 = -[FCCKContentDatabase initWithContainerIdentifier:productionEnvironment:networkBehaviorMonitor:networkReachability:configurationManager:](v24, "initWithContainerIdentifier:productionEnvironment:networkBehaviorMonitor:networkReachability:configurationManager:", v25, [v17 isProductionContentEnvironment], v20, v21, v18);

  LOBYTE(v30) = 1;
  v36 = [(FCContentContext *)self initWithConfiguration:v17 configurationManager:v18 contentDatabase:v26 contentHostDirectory:v31 networkBehaviorMonitor:v20 networkReachability:v21 setupCustomURLProtocols:v30 desiredHeadlineFieldOptions:a8 feedUsage:a9 assetKeyManagerDelegate:v33 appActivityMonitor:v32 backgroundTaskable:v22 pptContext:v23];

  v27 = *MEMORY[0x1E69E9840];
  return v36;
}

- (FCContentContext)initWithConfiguration:(id)a3 configurationManager:(id)a4 contentDatabase:(id)a5 contentHostDirectory:(id)a6 networkBehaviorMonitor:(id)a7 networkReachability:(id)a8 setupCustomURLProtocols:(BOOL)a9 desiredHeadlineFieldOptions:(unint64_t)a10 feedUsage:(int64_t)a11 assetKeyManagerDelegate:(id)a12 appActivityMonitor:(id)a13 backgroundTaskable:(id)a14 pptContext:(id)a15
{
  v239 = *MEMORY[0x1E69E9840];
  v226 = a3;
  obj = a4;
  v21 = a4;
  v227 = a5;
  v22 = a6;
  v225 = a7;
  v216 = a8;
  v224 = a8;
  v223 = a12;
  v229 = a13;
  v23 = a14;
  v219 = a15;
  if (!v21 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  v24 = v227;
  v25 = v22;
  if (!v22 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    v24 = v227;
  }

  v232.receiver = self;
  v232.super_class = FCContentContext;
  v26 = [(FCContentContext *)&v232 init];
  v27 = v26;
  v228 = v23;
  if (v26)
  {
    objc_storeStrong(&v26->_contextConfiguration, a3);
    v28 = [v21 configuration];
    [v24 setShouldUseSecureConnectionForCKAssetURLs:{objc_msgSend(v28, "useSecureConnectionForAssets")}];
    if (objc_opt_respondsToSelector())
    {
      [v24 setMaximumRetryAfterForCK:{objc_msgSend(v28, "maximumRetryAfterForCK")}];
    }

    v29 = [v226 contentContainerCombinationIdentifier];
    v30 = [v22 URLByAppendingPathComponent:v29 isDirectory:1];

    objc_storeStrong(&v27->_configurationManager, obj);
    [v21 addObserver:v27];
    objc_storeStrong(&v27->_pptContext, a15);
    objc_storeWeak(&v27->_backgroundTaskable, v23);
    objc_storeStrong(&v27->_contentHostDirectoryURL, a6);
    v31 = [v30 path];
    v32 = [v31 copy];
    contentDirectory = v27->_contentDirectory;
    v27->_contentDirectory = v32;

    v34 = [v30 URLByAppendingPathComponent:@"av-assets" isDirectory:1];
    v35 = [MEMORY[0x1E696AC08] defaultManager];
    [v35 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:0];

    v36 = [[FCAVAssetKeyService alloc] initWithConfigurationManager:v21];
    avAssetKeyService = v27->_avAssetKeyService;
    v27->_avAssetKeyService = v36;

    v38 = [FCAVPersistentAssetKeyCache alloc];
    v39 = [v34 path];
    v40 = [(FCAVPersistentAssetKeyCache *)v38 initWithCacheDirectory:v39];
    avAssetKeyCache = v27->_avAssetKeyCache;
    v27->_avAssetKeyCache = v40;

    v42 = [[FCAVAssetKeyManager alloc] initWithService:v27->_avAssetKeyCache cache:?];
    avAssetKeyManager = v27->_avAssetKeyManager;
    v27->_avAssetKeyManager = v42;

    v44 = [FCAVAssetCache alloc];
    v45 = [v34 path];
    v46 = [(FCAVAssetCache *)v44 initWithCacheDirectory:v45];
    avAssetCache = v27->_avAssetCache;
    v27->_avAssetCache = v46;

    v48 = [[FCAVAssetDownloadManager alloc] initWithAssetCache:v27->_avAssetKeyCache keyCache:v224 networkReachability:?];
    avAssetDownloadManager = v27->_avAssetDownloadManager;
    v27->_avAssetDownloadManager = v48;

    v50 = [FCAVAssetResourceLoader alloc];
    v205 = v34;
    v51 = [v34 path];
    v52 = [(FCAVAssetResourceLoader *)v50 initWithCacheDirectory:v51 networkReachability:v224];
    avAssetResourceLoader = v27->_avAssetResourceLoader;
    v27->_avAssetResourceLoader = v52;

    objc_storeStrong(&v27->_networkReachability, v216);
    v54 = [[FCAVAssetFactory alloc] initWithAssetCache:v27->_avAssetKeyCache assetKeyCache:v27->_avAssetKeyManager assetKeyManager:v27->_avAssetResourceLoader assetResourceLoader:?];
    avAssetFactory = v27->_avAssetFactory;
    v27->_avAssetFactory = v54;

    v56 = objc_alloc_init(FCAVAssetPrewarmer);
    avAssetPrewarmer = v27->_avAssetPrewarmer;
    v27->_avAssetPrewarmer = v56;

    v58 = [v30 URLByAppendingPathComponent:@"tabi-resources" isDirectory:1];
    v59 = [v58 path];
    tabiResourcesContentDirectory = v27->_tabiResourcesContentDirectory;
    v27->_tabiResourcesContentDirectory = v59;

    v204 = v58;
    v61 = [v58 path];
    tabiResourcesContentDirectoryLegacy = v27->_tabiResourcesContentDirectoryLegacy;
    v27->_tabiResourcesContentDirectoryLegacy = v61;

    v63 = [v30 URLByAppendingPathComponent:@"tabi-models" isDirectory:1];
    v64 = [v63 path];
    tabiModelsContentDirectory = v27->_tabiModelsContentDirectory;
    v27->_tabiModelsContentDirectory = v64;

    v203 = v63;
    v66 = [v63 path];
    tabiModelsContentDirectoryLegacy = v27->_tabiModelsContentDirectoryLegacy;
    v27->_tabiModelsContentDirectoryLegacy = v66;

    v221 = v30;
    v202 = [v30 URLByAppendingPathComponent:@"tabi-requests" isDirectory:1];
    v68 = [v202 path];
    tabiRequestsContentDirectory = v27->_tabiRequestsContentDirectory;
    v27->_tabiRequestsContentDirectory = v68;

    v70 = v25;
    v230[0] = MEMORY[0x1E69E9820];
    v230[1] = 3221225472;
    v230[2] = __278__FCContentContext_initWithConfiguration_configurationManager_contentDatabase_contentHostDirectory_networkBehaviorMonitor_networkReachability_setupCustomURLProtocols_desiredHeadlineFieldOptions_feedUsage_assetKeyManagerDelegate_appActivityMonitor_backgroundTaskable_pptContext___block_invoke;
    v230[3] = &unk_1E7C36EA0;
    v71 = v27;
    v231 = v71;
    [FCTaskScheduler scheduleLowPriorityBlock:v230];
    v72 = [[FCAssetKeyService alloc] initWithConfigurationManager:v21];
    assetKeyService = v71->_assetKeyService;
    v71->_assetKeyService = v72;

    v74 = [FCPersistentAssetKeyCache alloc];
    v75 = [v70 path];
    v76 = [(FCPersistentAssetKeyCache *)&v74->super.isa initWithCacheDirectory:v75 cacheName:@"shared-assets-lru" backgroundTaskable:v228];
    assetKeyCache = v71->_assetKeyCache;
    v71->_assetKeyCache = v76;

    v78 = [[FCAssetKeyManager alloc] initWithService:v71->_assetKeyCache cache:v223 delegate:?];
    assetKeyManager = v71->_assetKeyManager;
    v71->_assetKeyManager = v78;

    v80 = [FCAssetManager alloc];
    v81 = [v70 path];
    v82 = [(FCAssetManager *)v80 initWithName:@"shared-assets" directory:v81 keyManager:v71->_assetKeyManager avAssetFactory:v27->_avAssetFactory resourceURLGenerator:v24 networkBehaviorMonitor:v225 networkReachability:v224];

    v83 = [v28 useSecureConnectionForAssets];
    if (v82)
    {
      v82->_shouldUseSecureConnectionForCKAssetDownloads = v83;
    }

    v206 = v70;
    objc_storeStrong(&v71->_assetManager, v82);
    if ([(FCAssetKeyCacheType *)v71->_assetKeyCache conformsToProtocol:&unk_1F2E773E8])
    {
      [v229 addObserver:v71->_assetKeyCache];
    }

    v84 = objc_opt_new();
    [v84 setContentDatabase:v24];
    objc_storeStrong(&v71->_internalContentContext, v84);
    if (a9)
    {
      [FCExcerptURLProtocol setupWithArticleDatabase:v24];
      [FCRecordFieldURLProtocol setupWithArticleDatabase:v24];
      v85 = [v70 path];
      [FCPuzzleThumbnailURLProtocol setupWithArticleDatabase:v24 cacheDirectory:v85];
    }

    v86 = [v30 path];
    v217 = [v28 experimentalizableFieldPostfix];
    v87 = [v28 currentTreatment];
    v214 = [v87 stringValue];

    if ([v28 shouldShowAlternateHeadlines])
    {
      v88 = a10 | 0x10000000;
    }

    else
    {
      v88 = a10;
    }

    v201 = v82;
    if (objc_opt_respondsToSelector())
    {
      v89 = v228;
      if ([v28 articleEmbeddingsEnabled])
      {
        v90 = [v28 newsPersonalizationConfiguration];
        v91 = [v90 articleEmbeddingsConfiguration];

        v92 = [v91 titleEmbeddingConfiguration];
        v93 = v21;
        v94 = [v92 shouldFetch];

        v95 = v94 == 0;
        v21 = v93;
        if (v95)
        {
          v96 = v88;
        }

        else
        {
          v96 = v88 | 0x800000000;
        }

        v97 = [v91 bodyEmbeddingConfiguration];
        v98 = [v97 shouldFetch];

        if (v98)
        {
          v88 = v96 | 0x1000000000;
        }

        else
        {
          v88 = v96;
        }

        v89 = v228;

        v24 = v227;
      }
    }

    else
    {
      v89 = v228;
    }

    if (objc_opt_respondsToSelector())
    {
      obja = [v28 engagementCohortsExpField];
    }

    else
    {
      obja = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v211 = [v28 conversionCohortsExpField];
    }

    else
    {
      v211 = 0;
    }

    v99 = [FCArticleRecordSource alloc];
    v100 = objc_opt_respondsToSelector();
    v101 = 0.0;
    v102 = 0.0;
    if (v100)
    {
      [v28 defaultTTLForArticleRecords];
    }

    v103 = [(FCArticleRecordSource *)v99 initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v89 defaultTTL:v88 & 0xF | (16 * ((v88 >> 6) & 1)) | (v88 >> 7) & 0x240000 | (v88 >> 5) & 0x1FE0 | (v88 >> 7) & 0x371BE000 | (v88 >> 24) & 0x400 desiredArticleRecordFieldOptions:v217 experimentalizableFieldsPostfix:v102 engagementCohortsExpField:obja conversionCohortsExpField:v211 activeTreatmentID:v214];
    [v84 setArticleRecordSource:v103];

    v104 = [FCPurchaseLookupRecordSource alloc];
    if (objc_opt_respondsToSelector())
    {
      [v28 defaultTTLForPurchaseLookupRecords];
      v101 = v105;
    }

    v106 = [(FCRecordSource *)v104 initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v89 defaultTTL:v101];
    [v84 setPurchaseLookupRecordSource:v106];

    v107 = [FCTagRecordSource alloc];
    v108 = 0.0;
    v109 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [v28 defaultTTLForTagRecords];
      v109 = v110;
    }

    v210 = [(FCTagRecordSource *)v107 initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v89 defaultTTL:FCDesiredTagRecordFieldOptionsWithHeadlineFieldOptions(v88) desiredTagRecordFieldOptions:v109];
    [v84 setTagRecordSource:?];
    v111 = [FCSportsEventRecordSource alloc];
    if (objc_opt_respondsToSelector())
    {
      [v28 defaultTTLForSportsEventRecords];
      v108 = v112;
    }

    v209 = [(FCRecordSource *)v111 initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v89 defaultTTL:v108];
    [v84 setSportsEventRecordSource:?];
    v113 = [FCRecipeRecordSource alloc];
    v114 = objc_opt_respondsToSelector();
    v115 = 0.0;
    v116 = 0.0;
    if (v114)
    {
      [v28 defaultTTLForRecipeRecords];
    }

    v200 = [(FCRecordSource *)v113 initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v89 defaultTTL:v116];
    [v84 setRecipeRecordSource:?];
    v117 = [FCRecipeListRecordSource alloc];
    if (objc_opt_respondsToSelector())
    {
      [v28 defaultTTLForRecipeListRecords];
      v115 = v118;
    }

    v199 = [(FCRecordSource *)v117 initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v89 defaultTTL:v115];
    [v84 setRecipeListRecordSource:?];
    v119 = [(FCRecordSource *)[FCTagListRecordSource alloc] initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v89];
    [v84 setTagListRecordSource:v119];

    v120 = [(FCRecordSource *)[FCResourceRecordSource alloc] initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v89];
    [v84 setResourceRecordSource:v120];

    v121 = [FCArticleListRecordSource alloc];
    v122 = objc_opt_respondsToSelector();
    v123 = 0.0;
    v124 = 0.0;
    if (v122)
    {
      [v28 defaultTTLForArticleListRecords];
    }

    v125 = [(FCRecordSource *)v121 initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v89 defaultTTL:v124];
    [v84 setArticleListRecordSource:v125];

    v198 = [(FCRecordSource *)[FCChannelMembershipRecordSource alloc] initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v89];
    v126 = [[FCChannelMembershipController alloc] initWithChannelMembershipRecordSource:v198];
    [v84 setChannelMembershipController:v126];

    v127 = [(FCRecordSource *)[FCForYouConfigRecordSource alloc] initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v89];
    [v84 setForYouConfigRecordSource:v127];

    v128 = [(FCRecordSource *)[FCWidgetSectionConfigRecordSource alloc] initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v89];
    [v84 setWidgetSectionConfigRecordSource:v128];

    v129 = [FCIssueRecordSource alloc];
    if (objc_opt_respondsToSelector())
    {
      [v28 defaultTTLForIssueRecords];
      v123 = v130;
    }

    v131 = [(FCRecordSource *)v129 initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v89 defaultTTL:v123];
    [v84 setIssueRecordSource:v131];

    v132 = [FCIssueListRecordSource alloc];
    v133 = objc_opt_respondsToSelector();
    v134 = 0.0;
    v135 = 0.0;
    if (v133)
    {
      [v28 defaultTTLForIssueListRecords];
    }

    v136 = [(FCRecordSource *)v132 initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v89 defaultTTL:v135];
    [v84 setIssueListRecordSource:v136];

    v137 = [(FCRecordSource *)[FCAudioConfigRecordSource alloc] initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v89];
    [v84 setAudioConfigRecordSource:v137];

    v138 = [FCPuzzleRecordSource alloc];
    if (objc_opt_respondsToSelector())
    {
      [v28 defaultTTLForPuzzleRecords];
      v134 = v139;
    }

    v208 = [(FCRecordSource *)v138 initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v89 defaultTTL:v134];
    [v84 setPuzzleRecordSource:?];
    v140 = [FCPuzzleTypeRecordSource alloc];
    v141 = objc_opt_respondsToSelector();
    v142 = 0.0;
    if (v141)
    {
      [v28 defaultTTLForPuzzleTypeRecords];
    }

    v207 = [(FCRecordSource *)v140 initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v228 defaultTTL:v142];
    [v84 setPuzzleTypeRecordSource:?];
    v143 = [(FCRecordSource *)[FCNotificationItemRecordSource alloc] initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v228];
    [v84 setNotificationItemRecordSource:v143];

    v144 = [(FCRecordSource *)[FCNotificationItemListRecordSource alloc] initWithContentDatabase:v24 contentDirectory:v86 appActivityMonitor:v229 backgroundTaskable:v228];
    [v84 setNotificationItemListRecordSource:v144];

    v145 = [(FCContentContext *)v71 assetKeyCache];
    [v84 setAssetKeyCache:v145];

    v146 = [(FCContentContext *)v71 assetKeyManager];
    [v84 setAssetKeyManager:v146];

    v147 = [(FCContentContext *)v71 avAssetFactory];
    [v84 setAvAssetFactory:v147];

    v148 = [(FCContentContext *)v71 avAssetCache];
    [v84 setAvAssetCache:v148];

    v149 = [(FCContentContext *)v71 avAssetKeyCache];
    [v84 setAvAssetKeyCache:v149];

    v150 = [(FCContentContext *)v71 avAssetDownloadManager];
    [v84 setAvAssetDownloadManager:v150];

    if (a11 != 1)
    {
      v151 = v21;
      v152 = [v28 isOrderFeedEndpointEnabled];
      v153 = NewsCoreUserDefaults();
      v154 = [v153 stringForKey:@"feed_endpoint"];

      if ([v154 isEqualToString:@"multi_feed"])
      {
        v155 = 0;
      }

      else
      {
        v155 = ([v154 isEqualToString:@"order_feed"] | v152) & 1;
      }

      v156 = [[FCFeedDatabase alloc] initWithParentDirectoryURL:v221 usage:a11 endpoint:v155];
      [v84 setFeedDatabase:v156];
      v157 = [[FCFeedPrewarmer alloc] initWithContentContext:v71];
      [v84 setFeedPrewarmer:v157];

      v21 = v151;
    }

    v158 = [FCFeedItemFactory alloc];
    v159 = [v84 articleRecordSource];
    v160 = [(FCContentContext *)v71 contentStoreFrontID];
    v161 = [(FCFeedItemFactory *)v158 initWithArticleRecordSource:v159 storefrontID:v160];
    feedItemFactory = v71->_feedItemFactory;
    v71->_feedItemFactory = v161;

    v163 = [FCRecipeItemFactory alloc];
    v164 = [v84 recipeRecordSource];
    v165 = [(FCRecipeItemFactory *)v163 initWithRecipeRecordSource:v164];
    recipeItemFactory = v71->_recipeItemFactory;
    v71->_recipeItemFactory = v165;

    v24 = v227;
    v167 = [[FCTagController alloc] initWithContentDatabase:v227 assetManager:v201 tagRecordSource:v210 configurationManager:v21];
    tagController = v71->_tagController;
    v71->_tagController = v167;

    v169 = [[FCSportsEventController alloc] initWithContentDatabase:v227 context:v71 sportsEventRecordSource:v209 tagController:v71->_tagController];
    sportsEventController = v71->_sportsEventController;
    v71->_sportsEventController = v169;

    v171 = [[FCArticleController alloc] initWithContext:v71];
    articleController = v71->_articleController;
    v71->_articleController = v171;

    v173 = [[FCPuzzleTypeController alloc] initWithContentDatabase:v227 context:v71 assetManager:v201 puzzleTypeRecordSource:v207 configurationManager:v21];
    puzzleTypeController = v71->_puzzleTypeController;
    v71->_puzzleTypeController = v173;

    v175 = [FCPuzzleController alloc];
    v176 = [(FCContentContext *)v71 puzzleTypeController];
    v177 = [(FCPuzzleController *)v175 initWithContentDatabase:v227 assetManager:v201 puzzleTypeController:v176 puzzleRecordSource:v208 configurationManager:v21];
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
    v23 = v228;
  }

  v184 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_INFO))
  {
    v218 = v184;
    v215 = [(FCContentContext *)v27 contentStoreFrontID];
    v222 = +[FCAppleAccount sharedAccount];
    v185 = [v222 currentStoreFrontID];
    v186 = [(FCContentContext *)v27 internalContentContext];
    v187 = [v186 contentDatabase];
    v188 = [v187 containerIdentifier];
    [(FCContentContext *)v27 internalContentContext];
    v190 = v189 = v21;
    v191 = [v190 contentDatabase];
    v192 = [v191 isProductionEnvironment];
    v193 = @" not";
    *buf = 138544130;
    v234 = v215;
    v235 = 2114;
    if (v192)
    {
      v193 = &stru_1F2DC7DC0;
    }

    v236 = v185;
    v237 = 2114;
    *v238 = v188;
    *&v238[8] = 2114;
    *&v238[10] = v193;
    _os_log_impl(&dword_1B63EF000, v218, OS_LOG_TYPE_INFO, "Initialized content context with contentStoreFrontID: %{public}@, currentStoreFrontID: %{public}@, containerID: %{public}@%{public}@ in production environment.", buf, 0x2Au);

    v21 = v189;
    v24 = v227;

    v23 = v228;
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
  v3 = [v2 supportedContentStoreFrontID];

  return v3;
}

- (NSString)contentEnvironment
{
  v2 = [(FCContentContext *)self contextConfiguration];
  v3 = [v2 contentEnvironmentDescription];

  return v3;
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
  v2 = [(FCContentContext *)self contextConfiguration];
  v3 = [v2 contentContainerCombinationIdentifier];

  return v3;
}

- (id)recordSourceWithSchema:(id)a3
{
  v4 = a3;
  v5 = [(FCContentContext *)self configurationManager];
  v6 = [v5 configuration];

  v7 = [FCJSONRecordSource alloc];
  v8 = [(FCContentContext *)self internalContentContext];
  v9 = [v8 contentDatabase];
  v10 = [(FCContentContext *)self contentDirectory];
  v11 = [v6 experimentalizableFieldPostfix];
  v12 = [v6 currentTreatment];
  v13 = [v12 stringValue];
  v14 = [(FCJSONRecordSource *)v7 initWithSchema:v4 contentDatabase:v9 contentDirectory:v10 experimentationSuffix:v11 activeTreatmentID:v13];

  return v14;
}

- (id)recordTreeSourceWithRecordSources:(id)a3
{
  v4 = a3;
  v5 = [[FCJSONRecordTreeSource alloc] initWithContext:self jsonRecordSources:v4];

  return v5;
}

- (id)interestTokenForContentManifest:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = [(FCContentContext *)self assetManager];
  v6 = [v4 assetURLs];
  v35 = [v5 interestTokenForAssetURLs:v6];

  v7 = [(FCContentContext *)self assetKeyCache];
  v8 = [v4 assetWrappingKeyIDs];
  v34 = [v7 interestTokenForWrappingKeyIDs:v8];

  v9 = [(FCContentContext *)self avAssetCache];
  v10 = [v4 avAssetIDs];
  v33 = [v9 interestTokenForAssetIdentifiers:v10];

  v11 = [(FCContentContext *)self avAssetKeyCache];
  v37 = v4;
  v12 = [v4 avAssetKeyURIs];
  v32 = [v11 interestTokenForKeyURIs:v12];

  v13 = [MEMORY[0x1E695DF70] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v14 = [(FCContentContext *)self internalContentContext];
  v15 = [v14 recordSources];

  v16 = [v15 countByEnumeratingWithState:&v45 objects:v49 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v45 + 1) + 8 * i);
        v21 = [v37 recordIDs];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __52__FCContentContext_interestTokenForContentManifest___block_invoke;
        v44[3] = &unk_1E7C38B40;
        v44[4] = v20;
        v22 = [v21 fc_arrayOfObjectsPassingTest:v44];

        v23 = [v20 interestTokenForRecordIDs:v22];
        [v13 addObject:v23];
      }

      v17 = [v15 countByEnumeratingWithState:&v45 objects:v49 count:16];
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
  v43 = v13;
  v24 = v13;
  v25 = v32;
  v26 = v33;
  v27 = v34;
  v28 = v35;
  v29 = [FCInterestToken interestTokenWithRemoveInterestBlock:v38];

  objc_autoreleasePoolPop(context);
  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)convertRecords:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(FCHeldRecords);
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = [(FCContentContext *)self internalContentContext];
  v8 = [v7 recordSources];

  v9 = [v8 countByEnumeratingWithState:&v46 objects:v52 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v46 + 1) + 8 * i);
        v14 = [v13 recordType];
        [v6 setObject:v13 forKey:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v10);
  }

  v15 = [MEMORY[0x1E695DF90] dictionary];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v16 = v4;
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
        v22 = [v21 recordType];
        v23 = [v15 objectForKey:v22];

        if (!v23)
        {
          v23 = [MEMORY[0x1E695DF70] array];
          v24 = [v21 recordType];
          [v15 setObject:v23 forKey:v24];
        }

        [v23 addObject:v21];
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
  v25 = v15;
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
        v32 = [v6 objectForKey:v31];
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
  v3 = [(FCContentContext *)self assetManager];
  v4 = [v3 storageSize];

  v5 = [(FCContentContext *)self avAssetCache];
  v6 = [v5 storageSize] + v4;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(FCContentContext *)self internalContentContext];
  v8 = [v7 recordSources];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

        v6 += [*(*(&v15 + 1) + 8 * v12++) storageSize];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

  v4 = [MEMORY[0x1E695DF00] date];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(FCContentContext *)self internalContentContext];
  v6 = [v5 recordSources];

  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        [v11 save];
        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v13 = objc_autoreleasePoolPush();
  v14 = [(FCContentContext *)self assetManager];
  [v14 save];

  objc_autoreleasePoolPop(v13);
  v15 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v4 fc_millisecondTimeIntervalUntilNow];
    *buf = 134217984;
    v24 = v17;
    _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "Did force-save record sources and assets in %llums", buf, 0xCu);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)ppt_overrideFeedEndpoint:(int64_t)a3
{
  v5 = [(FCContentContext *)self internalContentContext];
  v10 = [v5 feedDatabase];

  if ([v10 endpoint] != a3)
  {
    [v10 teardown];
    v6 = [FCFeedDatabase alloc];
    v7 = [v10 parentDirectoryURL];
    v8 = -[FCFeedDatabase initWithParentDirectoryURL:usage:endpoint:](v6, "initWithParentDirectoryURL:usage:endpoint:", v7, [v10 usage], a3);
    v9 = [(FCContentContext *)self internalContentContext];
    [v9 setFeedDatabase:v8];
  }
}

- (void)ppt_prewarmFeedDatabase
{
  v3 = [(FCContentContext *)self internalContentContext];
  v2 = [v3 feedDatabase];
  [v2 prewarm];
}

- (void)enableFlushingWithFlushingThreshold:(unint64_t)a3 exceptForFlusher:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
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
        if (v12 != v6)
        {
          [v12 enableFlushingWithFlushingThreshold:a3];
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

- (void)configurationManager:(id)a3 configurationDidChange:(id)a4
{
  v5 = a4;
  v6 = [v5 useSecureConnectionForAssets];
  v7 = [(FCContentContext *)self assetManager];
  if (v7)
  {
    v7[8] = v6;
  }

  v8 = [v5 useSecureConnectionForAssets];
  v10 = [(FCContentContext *)self internalContentContext];
  v9 = [v10 contentDatabase];
  [v9 setShouldUseSecureConnectionForCKAssetURLs:v8];
}

- (void)configurationManagerScienceExperimentFieldsDidChange:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a3 configuration];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 engagementCohortsExpField];
  }

  else
  {
    v5 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 conversionCohortsExpField];
  }

  else
  {
    v6 = 0;
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
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "%@ engagementCohortsExpField: %{public}@ conversionCohortsExpField: %{public}@", v14, 0x20u);
  }

  v11 = [(FCContentContext *)self internalContentContext];
  v12 = [v11 articleRecordSource];
  [v12 updateEngagementCohortsExpField:v5 conversionCohortsExpField:v6];

  v13 = *MEMORY[0x1E69E9840];
}

- (FCBackgroundTaskable)backgroundTaskable
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundTaskable);

  return WeakRetained;
}

@end