@interface FCCloudContext
+ (id)testingContext;
+ (id)testingContextWithDesiredHeadlineFieldOptions:(unint64_t)options;
+ (void)initialize;
- (BOOL)isPrivateDataEncryptionEnabled;
- (BOOL)isPrivateDataSyncingEnabled;
- (BOOL)isPrivateDatabaseOnline;
- (BOOL)isPrivateDatabaseStartingUp;
- (BOOL)isPrivateDatabaseTemporarilySuspended;
- (BOOL)shouldAssetKeyManagerSimulateUnauthorizedAssetKeys:(id)keys;
- (FCAVAssetFactoryType)avAssetFactory;
- (FCAVAssetPrewarming)avAssetPrewarmer;
- (FCAppActivityMonitor)appActivityMonitor;
- (FCArticleController)articleController;
- (FCAssetManager)assetManager;
- (FCAudioPlaylist)audioPlaylist;
- (FCBackgroundTaskable)backgroundTaskable;
- (FCClientEndpointConnection)endpointConnection;
- (FCCloudContext)init;
- (FCCloudContext)initWithConfiguration:(id)configuration configurationManager:(id)manager contentHostDirectory:(id)directory privateDataHostDirectory:(id)hostDirectory privateDataActionProvider:(id)provider networkBehaviorMonitor:(id)monitor appActivityMonitor:(id)activityMonitor desiredHeadlineFieldOptions:(unint64_t)self0 feedUsage:(int64_t)self1 lockStoreFrontIfNeeded:(BOOL)self2 deviceIsiPad:(BOOL)self3 backgroundTaskable:(id)self4 privateDataSyncAvailability:(id)self5 pptContext:(id)self6;
- (FCCloudContext)initWithConfiguration:(id)configuration configurationManager:(id)manager contentHostDirectory:(id)directory privateDataHostDirectory:(id)hostDirectory privateDataActionProvider:(id)provider networkBehaviorMonitor:(id)monitor networkReachability:(id)reachability appActivityMonitor:(id)self0 desiredHeadlineFieldOptions:(unint64_t)self1 feedUsage:(int64_t)self2 deviceIsiPad:(BOOL)self3 backgroundTaskable:(id)self4 privateDataSyncAvailability:(id)self5 pptContext:(id)self6 options:(int64_t)self7;
- (FCCloudContext)initWithContentContext:(id)context privateDataContext:(id)dataContext networkBehaviorMonitor:(id)monitor networkReachability:(id)reachability options:(int64_t)options;
- (FCCommandQueue)endpointCommandQueue;
- (FCCommandQueue)notificationsEndpointCommandQueue;
- (FCContentContext)contentContext;
- (FCContentContextInternal)internalContentContext;
- (FCCoreConfigurationManager)configurationManager;
- (FCFeedDatabase)feedDatabase;
- (FCFeedItemFactoryType)feedItemFactory;
- (FCFeedPersonalizing)feedPersonalizer;
- (FCFlintResourceManager)flintResourceManager;
- (FCIssueReadingHistory)issueReadingHistory;
- (FCNetworkBehaviorMonitor)networkBehaviorMonitor;
- (FCNetworkReachabilityType)networkReachability;
- (FCNewsAppConfigurationManager)appConfigurationManager;
- (FCNotificationsEndpointConnection)notificationsEndpointConnection;
- (FCOfflineArticleManagerType)offlineArticleManager;
- (FCPersonalizationData)personalizationData;
- (FCPrivateChannelMembershipController)privateChannelMembershipController;
- (FCPrivateDataContext)privateDataContext;
- (FCPrivateDataContextInternal)internalPrivateDataContext;
- (FCPushNotificationHandling)privatePushNotificationHandler;
- (FCPuzzleController)puzzleController;
- (FCPuzzleHistory)puzzleHistory;
- (FCPuzzleTypeController)puzzleTypeController;
- (FCPuzzleTypeSettings)puzzleTypeSettings;
- (FCReadingHistory)readingHistory;
- (FCReadingList)readingList;
- (FCRecipeItemFactoryType)recipeItemFactory;
- (FCRecipeUserEventHistory)recipeUserEventHistory;
- (FCShortcutCategoryList)shortcutCategoryList;
- (FCShortcutList)shortcutList;
- (FCSportsEventController)sportsEventController;
- (FCSubscriptionController)subscriptionController;
- (FCSubscriptionList)subscriptionList;
- (FCTagController)tagController;
- (FCTagSettings)tagSettings;
- (FCUserEventHistory)userEventHistory;
- (FCUserInfo)userInfo;
- (NSArray)filePathsForDebugAttachments;
- (NSString)contentDirectory;
- (NSString)contentEnvironment;
- (NSString)contentEnvironmentToken;
- (NSString)contentStoreFrontID;
- (NSString)privateDataDirectory;
- (NSString)supportedContentStoreFrontID;
- (NSString)tabiModelsContentDirectory;
- (NSString)tabiModelsContentDirectoryLegacy;
- (NSString)tabiRequestsContentDirectory;
- (NSString)tabiResourcesContentDirectory;
- (NSString)tabiResourcesContentDirectoryLegacy;
- (NSURL)assetCacheDirectoryURL;
- (NSURL)contentHostDirectoryURL;
- (id)convertRecords:(id)records;
- (id)initForTestingWithDesiredHeadlineFieldOptions:(unint64_t)options;
- (id)insertTestArticle;
- (id)insertTestArticlesWithCount:(unint64_t)count;
- (id)interestTokenForContentManifest:(id)manifest;
- (id)magazinesConfigurationManager;
- (id)news_core_ConfigurationManager;
- (id)notificationsController;
- (id)privateStoreWithName:(id)name version:(unint64_t)version options:(unint64_t)options;
- (id)recordSourceWithSchema:(id)schema;
- (id)recordTreeSourceWithRecordSources:(id)sources;
- (int64_t)preferredContentVariant;
- (int64_t)storageSize;
- (void)_purchaseControllerDidAddALaCarteSubscription;
- (void)bundleSubscriptionDidSubscribe:(id)subscribe;
- (void)enableFlushingWithFlushingThreshold:(unint64_t)threshold;
- (void)enableFlushingWithFlushingThreshold:(unint64_t)threshold exceptForFlusher:(id)flusher;
- (void)fetchCleanupToVersionForDatabase:(id)database completion:(id)completion;
- (void)fetchDesiredVersionForDatabase:(id)database completion:(id)completion;
- (void)ppt_overrideFeedEndpoint:(int64_t)endpoint;
- (void)ppt_prewarmFeedDatabase;
- (void)prewarmStores;
- (void)save;
- (void)setLocalChannelsProvider:(id)provider;
@end

@implementation FCCloudContext

+ (void)initialize
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    v3 = NewsCoreUserDefaults();
    v6[0] = @"content_environment";
    v6[1] = @"news.modules.today_feed.debug_feed_config.url";
    v7[0] = @"production";
    v7[1] = @"http://127.0.0.1:8080/configs/today-config.jinja.yaml";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
    [v3 registerDefaults:v4];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (FCContentContext)contentContext
{
  v15 = *MEMORY[0x1E69E9840];
  contentContext = self->_contentContext;
  if (!contentContext)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_contentContext"];
      *buf = 136315906;
      v8 = "[FCCloudContext contentContext]";
      v9 = 2080;
      v10 = "FCCloudContext.m";
      v11 = 1024;
      v12 = 492;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      contentContext = self->_contentContext;
    }

    else
    {
      contentContext = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return contentContext;
}

- (FCNewsAppConfigurationManager)appConfigurationManager
{
  contentContext = [(FCCloudContext *)self contentContext];
  appConfigurationManager = [contentContext appConfigurationManager];

  return appConfigurationManager;
}

- (FCBackgroundTaskable)backgroundTaskable
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundTaskable);

  return WeakRetained;
}

- (FCCoreConfigurationManager)configurationManager
{
  contentContext = [(FCCloudContext *)self contentContext];
  configurationManager = [contentContext configurationManager];

  return configurationManager;
}

- (FCAppActivityMonitor)appActivityMonitor
{
  v15 = *MEMORY[0x1E69E9840];
  appActivityMonitor = self->_appActivityMonitor;
  if (!appActivityMonitor)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_appActivityMonitor"];
      *buf = 136315906;
      v8 = "[FCCloudContext appActivityMonitor]";
      v9 = 2080;
      v10 = "FCCloudContext.m";
      v11 = 1024;
      v12 = 486;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      appActivityMonitor = self->_appActivityMonitor;
    }

    else
    {
      appActivityMonitor = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return appActivityMonitor;
}

- (FCNetworkReachabilityType)networkReachability
{
  contentContext = [(FCCloudContext *)self contentContext];
  networkReachability = [contentContext networkReachability];

  return networkReachability;
}

- (FCContentContextInternal)internalContentContext
{
  contentContext = [(FCCloudContext *)self contentContext];
  internalContentContext = [contentContext internalContentContext];

  return internalContentContext;
}

- (FCSubscriptionController)subscriptionController
{
  v15 = *MEMORY[0x1E69E9840];
  subscriptionController = self->_subscriptionController;
  if (!subscriptionController)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_subscriptionController"];
      *buf = 136315906;
      v8 = "[FCCloudContext subscriptionController]";
      v9 = 2080;
      v10 = "FCCloudContext.m";
      v11 = 1024;
      v12 = 468;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      subscriptionController = self->_subscriptionController;
    }

    else
    {
      subscriptionController = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return subscriptionController;
}

- (FCPuzzleHistory)puzzleHistory
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  puzzleHistory = [privateDataContext puzzleHistory];

  return puzzleHistory;
}

- (FCUserInfo)userInfo
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  userInfo = [privateDataContext userInfo];

  return userInfo;
}

- (FCPrivateDataContext)privateDataContext
{
  v15 = *MEMORY[0x1E69E9840];
  privateDataContext = self->_privateDataContext;
  if (!privateDataContext)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_privateDataContext"];
      *buf = 136315906;
      v8 = "[FCCloudContext privateDataContext]";
      v9 = 2080;
      v10 = "FCCloudContext.m";
      v11 = 1024;
      v12 = 503;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      privateDataContext = self->_privateDataContext;
    }

    else
    {
      privateDataContext = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return privateDataContext;
}

- (NSString)privateDataDirectory
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  privateDataDirectory = [privateDataContext privateDataDirectory];

  return privateDataDirectory;
}

- (FCTagController)tagController
{
  contentContext = [(FCCloudContext *)self contentContext];
  tagController = [contentContext tagController];

  return tagController;
}

- (FCPuzzleController)puzzleController
{
  contentContext = [(FCCloudContext *)self contentContext];
  puzzleController = [contentContext puzzleController];

  return puzzleController;
}

- (FCSportsEventController)sportsEventController
{
  contentContext = [(FCCloudContext *)self contentContext];
  sportsEventController = [contentContext sportsEventController];

  return sportsEventController;
}

- (FCNetworkBehaviorMonitor)networkBehaviorMonitor
{
  v15 = *MEMORY[0x1E69E9840];
  networkBehaviorMonitor = self->_networkBehaviorMonitor;
  if (!networkBehaviorMonitor)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_networkBehaviorMonitor"];
      *buf = 136315906;
      v8 = "[FCCloudContext networkBehaviorMonitor]";
      v9 = 2080;
      v10 = "FCCloudContext.m";
      v11 = 1024;
      v12 = 480;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      networkBehaviorMonitor = self->_networkBehaviorMonitor;
    }

    else
    {
      networkBehaviorMonitor = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return networkBehaviorMonitor;
}

- (FCIssueReadingHistory)issueReadingHistory
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  issueReadingHistory = [privateDataContext issueReadingHistory];

  return issueReadingHistory;
}

- (FCUserEventHistory)userEventHistory
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  userEventHistory = [privateDataContext userEventHistory];

  return userEventHistory;
}

- (id)news_core_ConfigurationManager
{
  contentContext = [(FCCloudContext *)self contentContext];
  news_core_ConfigurationManager = [contentContext news_core_ConfigurationManager];

  return news_core_ConfigurationManager;
}

- (FCReadingHistory)readingHistory
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  readingHistory = [privateDataContext readingHistory];

  return readingHistory;
}

- (FCShortcutList)shortcutList
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  shortcutList = [privateDataContext shortcutList];

  return shortcutList;
}

- (FCSubscriptionList)subscriptionList
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  subscriptionList = [privateDataContext subscriptionList];

  return subscriptionList;
}

- (FCReadingList)readingList
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  readingList = [privateDataContext readingList];

  return readingList;
}

- (FCPersonalizationData)personalizationData
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  personalizationData = [privateDataContext personalizationData];

  return personalizationData;
}

- (FCAssetManager)assetManager
{
  contentContext = [(FCCloudContext *)self contentContext];
  assetManager = [contentContext assetManager];

  return assetManager;
}

- (FCPuzzleTypeController)puzzleTypeController
{
  contentContext = [(FCCloudContext *)self contentContext];
  puzzleTypeController = [contentContext puzzleTypeController];

  return puzzleTypeController;
}

- (FCTagSettings)tagSettings
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  tagSettings = [privateDataContext tagSettings];

  return tagSettings;
}

- (FCAudioPlaylist)audioPlaylist
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  audioPlaylist = [privateDataContext audioPlaylist];

  return audioPlaylist;
}

- (FCAVAssetPrewarming)avAssetPrewarmer
{
  contentContext = [(FCCloudContext *)self contentContext];
  avAssetPrewarmer = [contentContext avAssetPrewarmer];

  return avAssetPrewarmer;
}

- (void)prewarmStores
{
  contentContext = [(FCCloudContext *)self contentContext];
  [contentContext prewarmStores];
}

- (FCPrivateChannelMembershipController)privateChannelMembershipController
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  privateChannelMembershipController = [privateDataContext privateChannelMembershipController];

  return privateChannelMembershipController;
}

- (FCShortcutCategoryList)shortcutCategoryList
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  shortcutCategoryList = [privateDataContext shortcutCategoryList];

  return shortcutCategoryList;
}

- (FCFlintResourceManager)flintResourceManager
{
  contentContext = [(FCCloudContext *)self contentContext];
  flintResourceManager = [contentContext flintResourceManager];

  return flintResourceManager;
}

- (FCArticleController)articleController
{
  contentContext = [(FCCloudContext *)self contentContext];
  articleController = [contentContext articleController];

  return articleController;
}

- (NSString)tabiResourcesContentDirectoryLegacy
{
  contentContext = [(FCCloudContext *)self contentContext];
  tabiResourcesContentDirectoryLegacy = [contentContext tabiResourcesContentDirectoryLegacy];

  return tabiResourcesContentDirectoryLegacy;
}

- (NSString)tabiModelsContentDirectoryLegacy
{
  contentContext = [(FCCloudContext *)self contentContext];
  tabiModelsContentDirectoryLegacy = [contentContext tabiModelsContentDirectoryLegacy];

  return tabiModelsContentDirectoryLegacy;
}

- (NSString)contentDirectory
{
  contentContext = [(FCCloudContext *)self contentContext];
  contentDirectory = [contentContext contentDirectory];

  return contentDirectory;
}

- (FCRecipeUserEventHistory)recipeUserEventHistory
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  recipeUserEventHistory = [privateDataContext recipeUserEventHistory];

  return recipeUserEventHistory;
}

- (FCAVAssetFactoryType)avAssetFactory
{
  contentContext = [(FCCloudContext *)self contentContext];
  avAssetFactory = [contentContext avAssetFactory];

  return avAssetFactory;
}

- (FCPuzzleTypeSettings)puzzleTypeSettings
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  puzzleTypeSettings = [privateDataContext puzzleTypeSettings];

  return puzzleTypeSettings;
}

- (FCFeedItemFactoryType)feedItemFactory
{
  contentContext = [(FCCloudContext *)self contentContext];
  feedItemFactory = [contentContext feedItemFactory];

  return feedItemFactory;
}

- (FCRecipeItemFactoryType)recipeItemFactory
{
  contentContext = [(FCCloudContext *)self contentContext];
  recipeItemFactory = [contentContext recipeItemFactory];

  return recipeItemFactory;
}

- (FCFeedDatabase)feedDatabase
{
  contentContext = [(FCCloudContext *)self contentContext];
  feedDatabase = [contentContext feedDatabase];

  return feedDatabase;
}

- (FCCloudContext)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCCloudContext init]";
    v10 = 2080;
    v11 = "FCCloudContext.m";
    v12 = 1024;
    v13 = 137;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCCloudContext init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCCloudContext)initWithConfiguration:(id)configuration configurationManager:(id)manager contentHostDirectory:(id)directory privateDataHostDirectory:(id)hostDirectory privateDataActionProvider:(id)provider networkBehaviorMonitor:(id)monitor appActivityMonitor:(id)activityMonitor desiredHeadlineFieldOptions:(unint64_t)self0 feedUsage:(int64_t)self1 lockStoreFrontIfNeeded:(BOOL)self2 deviceIsiPad:(BOOL)self3 backgroundTaskable:(id)self4 privateDataSyncAvailability:(id)self5 pptContext:(id)self6
{
  v20 = 8;
  if (!needed)
  {
    v20 = 0;
  }

  v34 = v20;
  contextCopy = context;
  availabilityCopy = availability;
  taskableCopy = taskable;
  activityMonitorCopy = activityMonitor;
  monitorCopy = monitor;
  providerCopy = provider;
  hostDirectoryCopy = hostDirectory;
  directoryCopy = directory;
  managerCopy = manager;
  configurationCopy = configuration;
  v27 = +[FCNetworkReachability sharedNetworkReachability];
  LOBYTE(v29) = pad;
  v38 = [(FCCloudContext *)self initWithConfiguration:configurationCopy configurationManager:managerCopy contentHostDirectory:directoryCopy privateDataHostDirectory:hostDirectoryCopy privateDataActionProvider:providerCopy networkBehaviorMonitor:monitorCopy networkReachability:v27 appActivityMonitor:activityMonitorCopy desiredHeadlineFieldOptions:options feedUsage:usage deviceIsiPad:v29 backgroundTaskable:taskableCopy privateDataSyncAvailability:availabilityCopy pptContext:contextCopy options:v34];

  return v38;
}

- (FCCloudContext)initWithConfiguration:(id)configuration configurationManager:(id)manager contentHostDirectory:(id)directory privateDataHostDirectory:(id)hostDirectory privateDataActionProvider:(id)provider networkBehaviorMonitor:(id)monitor networkReachability:(id)reachability appActivityMonitor:(id)self0 desiredHeadlineFieldOptions:(unint64_t)self1 feedUsage:(int64_t)self2 deviceIsiPad:(BOOL)self3 backgroundTaskable:(id)self4 privateDataSyncAvailability:(id)self5 pptContext:(id)self6 options:(int64_t)self7
{
  v54 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  managerCopy = manager;
  directoryCopy = directory;
  hostDirectoryCopy = hostDirectory;
  providerCopy = provider;
  monitorCopy = monitor;
  reachabilityCopy = reachability;
  activityMonitorCopy = activityMonitor;
  taskableCopy = taskable;
  availabilityCopy = availability;
  contextCopy = context;
  v45 = directoryCopy;
  if (!directoryCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentHostDirectory != nil"];
    *buf = 136315906;
    v47 = "[FCCloudContext initWithConfiguration:configurationManager:contentHostDirectory:privateDataHostDirectory:privateDataActionProvider:networkBehaviorMonitor:networkReachability:appActivityMonitor:desiredHeadlineFieldOptions:feedUsage:deviceIsiPad:backgroundTaskable:privateDataSyncAvailability:pptContext:options:]";
    v48 = 2080;
    v49 = "FCCloudContext.m";
    v50 = 1024;
    v51 = 191;
    v52 = 2114;
    v53 = v34;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!hostDirectoryCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateDataHostDirectory != nil"];
    *buf = 136315906;
    v47 = "[FCCloudContext initWithConfiguration:configurationManager:contentHostDirectory:privateDataHostDirectory:privateDataActionProvider:networkBehaviorMonitor:networkReachability:appActivityMonitor:desiredHeadlineFieldOptions:feedUsage:deviceIsiPad:backgroundTaskable:privateDataSyncAvailability:pptContext:options:]";
    v48 = 2080;
    v49 = "FCCloudContext.m";
    v50 = 1024;
    v51 = 192;
    v52 = 2114;
    v53 = v35;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!activityMonitorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "appActivityMonitor != nil"];
    *buf = 136315906;
    v47 = "[FCCloudContext initWithConfiguration:configurationManager:contentHostDirectory:privateDataHostDirectory:privateDataActionProvider:networkBehaviorMonitor:networkReachability:appActivityMonitor:desiredHeadlineFieldOptions:feedUsage:deviceIsiPad:backgroundTaskable:privateDataSyncAvailability:pptContext:options:]";
    v48 = 2080;
    v49 = "FCCloudContext.m";
    v50 = 1024;
    v51 = 193;
    v52 = 2114;
    v53 = v36;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if ((a17 & 8) != 0)
  {
    +[FCAppleAccount enableStoreFrontLocking];
  }

  v27 = [[FCContentContext alloc] initWithConfiguration:configurationCopy configurationManager:managerCopy contentHostDirectory:directoryCopy networkBehaviorMonitor:monitorCopy networkReachability:reachabilityCopy desiredHeadlineFieldOptions:options feedUsage:usage assetKeyManagerDelegate:self appActivityMonitor:activityMonitorCopy backgroundTaskable:taskableCopy pptContext:contextCopy];
  [(FCCloudContext *)self setContentContext:v27];
  [(FCCloudContext *)self setAppActivityMonitor:activityMonitorCopy];
  v28 = [FCPrivateDataContext alloc];
  LOBYTE(v37) = [availabilityCopy isPrivateDataSyncingAllowed];
  v29 = [(FCPrivateDataContext *)v28 initWithConfiguration:configurationCopy context:self privateDataHostDirectory:hostDirectoryCopy privateDataActionProvider:providerCopy encryptionDelegate:self networkBehaviorMonitor:monitorCopy privateDataSyncingEnabled:v37];
  v30 = [(FCCloudContext *)self initWithContentContext:v27 privateDataContext:v29 networkBehaviorMonitor:monitorCopy networkReachability:reachabilityCopy options:a17];
  v31 = v30;
  if (v30)
  {
    v30->_deviceIsiPad = pad;
    objc_storeStrong(&v30->_pptContext, context);
    objc_storeWeak(&v31->_backgroundTaskable, taskableCopy);
  }

  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

+ (id)testingContext
{
  initForTesting = [[FCCloudContext alloc] initForTesting];

  return initForTesting;
}

+ (id)testingContextWithDesiredHeadlineFieldOptions:(unint64_t)options
{
  v3 = [[FCCloudContext alloc] initForTestingWithDesiredHeadlineFieldOptions:options];

  return v3;
}

- (id)initForTestingWithDesiredHeadlineFieldOptions:(unint64_t)options
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v6 = NSTemporaryDirectory();
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"news-testing-cache-%@", uUIDString];
  v8 = [v6 stringByAppendingPathComponent:v7];

  v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
  v10 = +[FCContextConfiguration defaultConfiguration];
  v11 = [FCNetworkBehaviorMonitor alloc];
  path = [v9 path];
  v13 = [(FCNetworkBehaviorMonitor *)v11 initWithCacheDirectory:path];

  v14 = +[FCNetworkReachability sharedNetworkReachability];
  initForTesting = [[FCConfigurationManager alloc] initForTesting];
  v16 = [FCContentContext alloc];
  v17 = +[FCCKTestContentDatabase testingDatabase];
  LOBYTE(v25) = 0;
  v18 = [(FCContentContext *)v16 initWithConfiguration:v10 configurationManager:initForTesting contentDatabase:v17 contentHostDirectory:v9 networkBehaviorMonitor:v13 networkReachability:v14 setupCustomURLProtocols:v25 desiredHeadlineFieldOptions:options feedUsage:2 assetKeyManagerDelegate:self appActivityMonitor:0 backgroundTaskable:0 pptContext:0];

  [(FCCloudContext *)self setContentContext:v18];
  v19 = objc_opt_new();
  [(FCCloudContext *)self setAppActivityMonitor:v19];

  v20 = [FCPrivateDataContext alloc];
  v21 = +[FCCKPrivateDatabase testingDatabase];
  LOBYTE(v26) = 0;
  v22 = [(FCPrivateDataContext *)v20 initWithConfiguration:v10 context:self privateDatabase:v21 privateDataDirectory:v9 privateDataActionProvider:0 encryptionDelegate:self networkBehaviorMonitor:v13 privateDataSyncingEnabled:v26];

  v23 = [(FCCloudContext *)self initWithContentContext:v18 privateDataContext:v22 networkBehaviorMonitor:v13 networkReachability:v14 options:0];
  return v23;
}

- (FCCloudContext)initWithContentContext:(id)context privateDataContext:(id)dataContext networkBehaviorMonitor:(id)monitor networkReachability:(id)reachability options:(int64_t)options
{
  v155 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dataContextCopy = dataContext;
  monitorCopy = monitor;
  reachabilityCopy = reachability;
  if (!contextCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v135 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
    *buf = 136315906;
    v148 = "[FCCloudContext initWithContentContext:privateDataContext:networkBehaviorMonitor:networkReachability:options:]";
    v149 = 2080;
    v150 = "FCCloudContext.m";
    v151 = 1024;
    v152 = 307;
    v153 = 2114;
    v154 = v135;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (dataContextCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dataContextCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateDataContext"];
    *buf = 136315906;
    v148 = "[FCCloudContext initWithContentContext:privateDataContext:networkBehaviorMonitor:networkReachability:options:]";
    v149 = 2080;
    v150 = "FCCloudContext.m";
    v151 = 1024;
    v152 = 308;
    v153 = 2114;
    v154 = v136;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v146.receiver = self;
  v146.super_class = FCCloudContext;
  v17 = [(FCCloudContext *)&v146 init];
  v18 = v17;
  if (v17)
  {
    obj = monitor;
    v143 = monitorCopy;
    objc_storeStrong(&v17->_contentContext, context);
    objc_storeStrong(&v18->_privateDataContext, dataContext);
    [dataContextCopy preparePrivateDataControllersForUse];
    configurationManager = [contextCopy configurationManager];
    v141 = [[FCClientEndpointConnection alloc] initWithConfigurationManager:configurationManager];
    objc_storeStrong(&v18->_endpointConnection, v141);
    v20 = MEMORY[0x1E695DFF8];
    contentDirectory = [contextCopy contentDirectory];
    v22 = [v20 fileURLWithPath:contentDirectory];

    v140 = v22;
    v142 = reachabilityCopy;
    v23 = [[FCWebURLResolutionEndpointConnection alloc] initWithConfigurationManager:configurationManager cachesDirectoryURL:v22 networkReachability:reachabilityCopy];
    webURLResolutionEndpointConnection = v18->_webURLResolutionEndpointConnection;
    v18->_webURLResolutionEndpointConnection = v23;

    internalPrivateDataContext = [dataContextCopy internalPrivateDataContext];
    appActivityMonitor = [internalPrivateDataContext appActivityMonitor];

    v144 = appActivityMonitor;
    objc_storeStrong(&v18->_appActivityMonitor, appActivityMonitor);
    v18->_options = options;
    v27 = [FCCommandQueue alloc];
    privateDataDirectory = [dataContextCopy privateDataDirectory];
    v29 = [(FCCommandQueue *)v27 initWithContext:v18 storeDirectory:privateDataDirectory storeFilename:@"endPoint_v1.commandqueue" urgency:2 suspended:0 delegate:0];
    endpointCommandQueue = v18->_endpointCommandQueue;
    v18->_endpointCommandQueue = v29;

    v31 = [FCCommandQueue alloc];
    privateDataDirectory2 = [dataContextCopy privateDataDirectory];
    v33 = [(FCCommandQueue *)v31 initWithContext:v18 storeDirectory:privateDataDirectory2 storeFilename:@"notificationsEndpoint_v1.commandqueue" urgency:1 suspended:0 delegate:0];
    notificationsEndpointCommandQueue = v18->_notificationsEndpointCommandQueue;
    v18->_notificationsEndpointCommandQueue = v33;

    v35 = [FCCommandQueue alloc];
    privateDataDirectory3 = [dataContextCopy privateDataDirectory];
    v37 = [(FCCommandQueue *)v35 initWithContext:v18 storeDirectory:privateDataDirectory3 storeFilename:@"newsletterEndpoint_v1.commandqueue" urgency:2 suspended:0 delegate:0];
    newsletterEndpointCommandQueue = v18->_newsletterEndpointCommandQueue;
    v18->_newsletterEndpointCommandQueue = v37;

    v39 = [FCEntitlementService alloc];
    configurationManager2 = [contextCopy configurationManager];
    v41 = [(FCEntitlementService *)v39 initWithConfigurationManager:configurationManager2];
    entitlementService = v18->_entitlementService;
    v18->_entitlementService = v41;

    v43 = [[FCPurchaseController alloc] initWithCloudContext:v18 entitlementService:v18->_entitlementService];
    purchaseController = v18->_purchaseController;
    v18->_purchaseController = v43;

    v45 = [FCPurchaseProvider alloc];
    v46 = v18->_purchaseController;
    privateChannelMembershipController = [dataContextCopy privateChannelMembershipController];
    v48 = [(FCPurchaseProvider *)&v45->super.isa initWithPurchaseController:v46 privateChannelMembershipController:privateChannelMembershipController];
    purchaseProvider = v18->_purchaseProvider;
    v18->_purchaseProvider = v48;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v18 selector:sel__purchaseControllerDidAddALaCarteSubscription name:FCPurchaseAddedNotificationName object:0];

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    if ([bundleIdentifier isEqualToString:@"com.apple.news"])
    {
    }

    else
    {
      mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
      [mainBundle2 bundleIdentifier];
      v55 = v54 = dataContextCopy;
      v56 = [v55 isEqualToString:@"com.apple.stocks"];

      dataContextCopy = v54;
      if (!v56)
      {
        v65 = objc_alloc_init(FCNoOpBundleSubscriptionManager);
        bundleSubscriptionManager = v18->_bundleSubscriptionManager;
        v18->_bundleSubscriptionManager = v65;
        goto LABEL_12;
      }
    }

    v57 = [FCBundleEntitlementsProvider alloc];
    configurationManager3 = [contextCopy configurationManager];
    bundleSubscriptionManager = [(FCBundleEntitlementsProvider *)v57 initWithConfigurationManager:configurationManager3 entitlementService:v18->_entitlementService];

    v60 = [FCBundleSubscriptionManager alloc];
    privateDataDirectory4 = [dataContextCopy privateDataDirectory];
    [contextCopy configurationManager];
    v62 = v54 = dataContextCopy;
    v63 = [(FCBundleSubscriptionManager *)v60 initWithPrivateDataDirectory:privateDataDirectory4 configurationManager:v62 cloudContext:v18 contentContext:contextCopy appActivityMonitor:v144 entitlementsProvider:bundleSubscriptionManager];
    v64 = v18->_bundleSubscriptionManager;
    v18->_bundleSubscriptionManager = v63;

LABEL_12:
    v137 = v54;

    [(FCBundleSubscriptionManagerType *)v18->_bundleSubscriptionManager addObserver:v18];
    v66 = [FCPurchaseManager alloc];
    v67 = objc_alloc_init(FCPurchaseIntegrityChecker);
    v68 = objc_alloc_init(FCPurchaseReceiptProvider);
    v69 = objc_alloc_init(FCPaymentTransactionManager);
    v70 = [(FCPurchaseManager *)v66 initWithCloudContext:v18 purchaseIntegrityChecker:v67 purchaseReceiptProvider:v68 paymentTransactionManager:v69 bundleSubscriptionManager:v18->_bundleSubscriptionManager keyValueStoreOption:0];
    purchaseManager = v18->_purchaseManager;
    v18->_purchaseManager = v70;

    v72 = [FCNotificationController alloc];
    userInfo = [v54 userInfo];
    v74 = v18->_notificationsEndpointCommandQueue;
    configurationManager4 = [contextCopy configurationManager];
    v76 = [(FCNotificationController *)v72 initWithUserInfo:userInfo commandQueue:v74 configurationManager:configurationManager4 publisherNotificationsAllowed:(options >> 1) & 1 appleNewsNotificationsAllowed:(options >> 2) & 1];
    notificationController = v18->_notificationController;
    v18->_notificationController = v76;

    v78 = [[FCNotificationsEndpointConnection alloc] initWithConfigurationManager:configurationManager bundleSubscriptionManager:v18->_bundleSubscriptionManager];
    notificationsEndpointConnection = v18->_notificationsEndpointConnection;
    v18->_notificationsEndpointConnection = v78;

    v80 = [[FCNewsletterEndpointConnection alloc] initWithConfigurationManager:configurationManager];
    newsletterEndpointConnection = v18->_newsletterEndpointConnection;
    v18->_newsletterEndpointConnection = v80;

    v82 = [FCNewsletterManager alloc];
    v83 = v18->_newsletterEndpointConnection;
    v84 = v18->_newsletterEndpointCommandQueue;
    v85 = +[FCAppleAccount sharedAccount];
    appConfigurationManager = [(FCCloudContext *)v18 appConfigurationManager];
    userInfo2 = [(FCCloudContext *)v18 userInfo];
    [(FCCloudContext *)v18 bundleSubscriptionManager];
    v88 = v138 = configurationManager;
    [(FCCloudContext *)v18 privateDataContext];
    v89 = v145 = contextCopy;
    v90 = [(FCNewsletterManager *)v82 initWithEndpointConnection:v83 endpointCommandQueue:v84 appleAccount:v85 appConfig:appConfigurationManager userInfo:userInfo2 bundleSubscriptionManager:v88 privateDataContext:v89];
    newsletterManager = v18->_newsletterManager;
    v18->_newsletterManager = v90;

    v92 = [FCSubscriptionController alloc];
    subscriptionList = [v54 subscriptionList];
    tagController = [v145 tagController];
    puzzleTypeController = [v145 puzzleTypeController];
    v96 = v18->_notificationController;
    v97 = v18->_purchaseProvider;
    configurationManager5 = [v145 configurationManager];
    appConfigurationManager2 = [v145 appConfigurationManager];
    userInfo3 = [(FCCloudContext *)v18 userInfo];
    v101 = [(FCSubscriptionController *)v92 initWithSubscriptionList:subscriptionList tagController:tagController puzzleTypeController:puzzleTypeController notificationController:v96 purchaseProvider:v97 configurationManager:configurationManager5 appConfigurationManager:appConfigurationManager2 appActivityMonitor:v144 userInfo:userInfo3];
    subscriptionController = v18->_subscriptionController;
    v18->_subscriptionController = v101;

    objc_storeStrong(&v18->_networkBehaviorMonitor, obj);
    v103 = [[FCTranslationManager alloc] initWithContentContext:v145];
    translationManager = v18->_translationManager;
    v18->_translationManager = v103;

    v105 = [[FCLocalAreasManager alloc] initWithContentContext:v145];
    localAreasManager = v18->_localAreasManager;
    v18->_localAreasManager = v105;

    v107 = [[FCUserVectorManager alloc] initWithContext:v18];
    userVectorManager = v18->_userVectorManager;
    v18->_userVectorManager = v107;

    v109 = [FCCurrentIssuesChecker alloc];
    v110 = v18->_subscriptionController;
    dataContextCopy = v137;
    issueReadingHistory = [v137 issueReadingHistory];
    v112 = [(FCCurrentIssuesChecker *)v109 initWithContext:v145 subscriptionController:v110 issueReadingHistory:issueReadingHistory bundleSubscriptionProvider:v18->_bundleSubscriptionManager];
    currentIssuesChecker = v18->_currentIssuesChecker;
    v18->_currentIssuesChecker = v112;

    v114 = [FCPaidAccessChecker alloc];
    purchaseProvider = [(FCCloudContext *)v18 purchaseProvider];
    bundleSubscriptionManager = [(FCCloudContext *)v18 bundleSubscriptionManager];
    configurationManager6 = [(FCCloudContext *)v18 configurationManager];
    v118 = [(FCPaidAccessChecker *)v114 initWithPurchaseProvider:purchaseProvider bundleSubscriptionProvider:bundleSubscriptionManager configurationManager:configurationManager6];

    paidAccessChecker = v18->_paidAccessChecker;
    v18->_paidAccessChecker = v118;
    v120 = v118;

    v121 = [FCIssueAccessChecker alloc];
    privateChannelMembershipController2 = [v137 privateChannelMembershipController];
    v123 = [(FCIssueAccessChecker *)v121 initWithPaidAccessChecker:v120 privateChannelMembershipController:privateChannelMembershipController2];
    issueAccessChecker = v18->_issueAccessChecker;
    v18->_issueAccessChecker = v123;

    v125 = [FCArticleAccessChecker alloc];
    privateChannelMembershipController3 = [v137 privateChannelMembershipController];
    v127 = [(FCArticleAccessChecker *)v125 initWithPaidAccessChecker:v120 privateChannelMembershipController:privateChannelMembershipController3];
    articleAccessChecker = v18->_articleAccessChecker;
    v18->_articleAccessChecker = v127;

    v129 = [FCRecipeAccessChecker alloc];
    privateChannelMembershipController4 = [v137 privateChannelMembershipController];
    v131 = [(FCRecipeAccessChecker *)v129 initWithPrivateChannelMembershipController:privateChannelMembershipController4];
    recipeAccessChecker = v18->_recipeAccessChecker;
    v18->_recipeAccessChecker = v131;

    contextCopy = v145;
    reachabilityCopy = v142;
    monitorCopy = v143;
  }

  v133 = *MEMORY[0x1E69E9840];
  return v18;
}

- (FCOfflineArticleManagerType)offlineArticleManager
{
  if (!self->_offlineArticleManager)
  {
    offlineArticleManagerProvider = [(FCCloudContext *)self offlineArticleManagerProvider];

    if (offlineArticleManagerProvider)
    {
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        offlineArticleManagerProvider2 = [(FCCloudContext *)self offlineArticleManagerProvider];
        v7 = offlineArticleManagerProvider2[2]();
        offlineArticleManager = self->_offlineArticleManager;
        self->_offlineArticleManager = v7;
      }

      else
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __39__FCCloudContext_offlineArticleManager__block_invoke;
        block[3] = &unk_1E7C36EA0;
        block[4] = self;
        dispatch_sync(MEMORY[0x1E69E96A0], block);
      }
    }
  }

  v3 = self->_offlineArticleManager;

  return v3;
}

void __39__FCCloudContext_offlineArticleManager__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) offlineArticleManagerProvider];
  v2 = v5[2]();
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;
}

- (id)notificationsController
{
  v15 = *MEMORY[0x1E69E9840];
  notificationController = self->_notificationController;
  if (!notificationController)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_notificationController"];
      *buf = 136315906;
      v8 = "[FCCloudContext notificationsController]";
      v9 = 2080;
      v10 = "FCCloudContext.m";
      v11 = 1024;
      v12 = 474;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      notificationController = self->_notificationController;
    }

    else
    {
      notificationController = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return notificationController;
}

- (FCClientEndpointConnection)endpointConnection
{
  v15 = *MEMORY[0x1E69E9840];
  endpointConnection = self->_endpointConnection;
  if (!endpointConnection)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_endpointConnection"];
      *buf = 136315906;
      v8 = "[FCCloudContext endpointConnection]";
      v9 = 2080;
      v10 = "FCCloudContext.m";
      v11 = 1024;
      v12 = 509;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      endpointConnection = self->_endpointConnection;
    }

    else
    {
      endpointConnection = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return endpointConnection;
}

- (FCCommandQueue)endpointCommandQueue
{
  v15 = *MEMORY[0x1E69E9840];
  endpointCommandQueue = self->_endpointCommandQueue;
  if (!endpointCommandQueue)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_endpointCommandQueue"];
      *buf = 136315906;
      v8 = "[FCCloudContext endpointCommandQueue]";
      v9 = 2080;
      v10 = "FCCloudContext.m";
      v11 = 1024;
      v12 = 515;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      endpointCommandQueue = self->_endpointCommandQueue;
    }

    else
    {
      endpointCommandQueue = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return endpointCommandQueue;
}

- (FCNotificationsEndpointConnection)notificationsEndpointConnection
{
  v15 = *MEMORY[0x1E69E9840];
  notificationsEndpointConnection = self->_notificationsEndpointConnection;
  if (!notificationsEndpointConnection)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_notificationsEndpointConnection"];
      *buf = 136315906;
      v8 = "[FCCloudContext notificationsEndpointConnection]";
      v9 = 2080;
      v10 = "FCCloudContext.m";
      v11 = 1024;
      v12 = 521;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      notificationsEndpointConnection = self->_notificationsEndpointConnection;
    }

    else
    {
      notificationsEndpointConnection = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return notificationsEndpointConnection;
}

- (FCCommandQueue)notificationsEndpointCommandQueue
{
  v15 = *MEMORY[0x1E69E9840];
  notificationsEndpointCommandQueue = self->_notificationsEndpointCommandQueue;
  if (!notificationsEndpointCommandQueue)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_notificationsEndpointCommandQueue"];
      *buf = 136315906;
      v8 = "[FCCloudContext notificationsEndpointCommandQueue]";
      v9 = 2080;
      v10 = "FCCloudContext.m";
      v11 = 1024;
      v12 = 527;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      notificationsEndpointCommandQueue = self->_notificationsEndpointCommandQueue;
    }

    else
    {
      notificationsEndpointCommandQueue = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return notificationsEndpointCommandQueue;
}

- (void)setLocalChannelsProvider:(id)provider
{
  objc_storeStrong(&self->_localChannelsProvider, provider);
  providerCopy = provider;
  subscriptionController = [(FCCloudContext *)self subscriptionController];
  [subscriptionController setLocalChannelsProvider:providerCopy];
}

- (BOOL)isPrivateDataEncryptionEnabled
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  internalPrivateDataContext = [privateDataContext internalPrivateDataContext];
  privateDatabase = [internalPrivateDataContext privateDatabase];
  if (privateDatabase)
  {
    v5 = privateDatabase[5] > 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isPrivateDatabaseStartingUp
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  internalPrivateDataContext = [privateDataContext internalPrivateDataContext];
  privateDatabase = [internalPrivateDataContext privateDatabase];
  if (privateDatabase)
  {
    v5 = privateDatabase[10] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)isPrivateDatabaseOnline
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  internalPrivateDataContext = [privateDataContext internalPrivateDataContext];
  privateDatabase = [internalPrivateDataContext privateDatabase];
  if (privateDatabase)
  {
    v5 = privateDatabase[20] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isPrivateDatabaseTemporarilySuspended
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  internalPrivateDataContext = [privateDataContext internalPrivateDataContext];
  privateDatabase = [internalPrivateDataContext privateDatabase];
  if (privateDatabase)
  {
    v5 = privateDatabase[20] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)ppt_overrideFeedEndpoint:(int64_t)endpoint
{
  contentContext = [(FCCloudContext *)self contentContext];
  [contentContext ppt_overrideFeedEndpoint:endpoint];
}

- (void)ppt_prewarmFeedDatabase
{
  contentContext = [(FCCloudContext *)self contentContext];
  [contentContext ppt_prewarmFeedDatabase];
}

- (NSString)contentEnvironmentToken
{
  contentContext = [(FCCloudContext *)self contentContext];
  contentEnvironmentToken = [contentContext contentEnvironmentToken];

  return contentEnvironmentToken;
}

- (NSArray)filePathsForDebugAttachments
{
  v22[10] = *MEMORY[0x1E69E9840];
  if (NFInternalBuild())
  {
    privateDataDirectory = [(FCCloudContext *)self privateDataDirectory];
    readingHistory = [(FCCloudContext *)self readingHistory];
    articleExposureRegistry = [readingHistory articleExposureRegistry];
    toJSON = [articleExposureRegistry toJSON];

    v6 = NSTemporaryDirectory();
    v20 = [v6 stringByAppendingPathComponent:@"article_exposures.json"];

    [toJSON writeToFile:v20 atomically:1];
    v19 = [privateDataDirectory stringByAppendingPathComponent:@"bundle.json"];
    v22[0] = v19;
    v18 = [privateDataDirectory stringByAppendingPathComponent:@"personalization-aggregates.json"];
    v22[1] = v18;
    v7 = [privateDataDirectory stringByAppendingPathComponent:@"personalization-sessions"];
    v22[2] = v7;
    v8 = [privateDataDirectory stringByAppendingPathComponent:@"user_embedding_transformer.pkg"];
    v22[3] = v8;
    v9 = [privateDataDirectory stringByAppendingPathComponent:@"subscriptions.json"];
    v22[4] = v9;
    v10 = [privateDataDirectory stringByAppendingPathComponent:@"allowlist.json"];
    v22[5] = v10;
    v11 = [privateDataDirectory stringByAppendingPathComponent:@"aggregate_store_human_readable.json"];
    v22[6] = v11;
    v12 = [privateDataDirectory stringByAppendingPathComponent:@"aggregate_store_human_readable_previous.json"];
    v22[7] = v12;
    v13 = [privateDataDirectory stringByAppendingPathComponent:@"human_readable_user_embedding_parameters.json"];
    v22[8] = v13;
    v14 = [privateDataDirectory stringByAppendingPathComponent:@"human_readable_embedding_training_history.json"];
    v22[9] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:10];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)enableFlushingWithFlushingThreshold:(unint64_t)threshold exceptForFlusher:(id)flusher
{
  flusherCopy = flusher;
  contentContext = [(FCCloudContext *)self contentContext];
  [contentContext enableFlushingWithFlushingThreshold:threshold exceptForFlusher:flusherCopy];
}

- (void)enableFlushingWithFlushingThreshold:(unint64_t)threshold
{
  contentContext = [(FCCloudContext *)self contentContext];
  [contentContext enableFlushingWithFlushingThreshold:threshold];
}

- (FCFeedPersonalizing)feedPersonalizer
{
  v15 = *MEMORY[0x1E69E9840];
  feedPersonalizer = self->_feedPersonalizer;
  if (!feedPersonalizer)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_feedPersonalizer"];
      *buf = 136315906;
      v8 = "[FCCloudContext feedPersonalizer]";
      v9 = 2080;
      v10 = "FCCloudContext.m";
      v11 = 1024;
      v12 = 621;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      feedPersonalizer = self->_feedPersonalizer;
    }

    else
    {
      feedPersonalizer = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return feedPersonalizer;
}

- (id)magazinesConfigurationManager
{
  contentContext = [(FCCloudContext *)self contentContext];
  magazinesConfigurationManager = [contentContext magazinesConfigurationManager];

  return magazinesConfigurationManager;
}

- (NSString)contentStoreFrontID
{
  v2 = +[FCAppleAccount sharedAccount];
  contentStoreFrontID = [v2 contentStoreFrontID];

  return contentStoreFrontID;
}

- (NSString)supportedContentStoreFrontID
{
  v2 = +[FCAppleAccount sharedAccount];
  supportedContentStoreFrontID = [v2 supportedContentStoreFrontID];

  return supportedContentStoreFrontID;
}

- (NSString)contentEnvironment
{
  contentContext = [(FCCloudContext *)self contentContext];
  contentEnvironment = [contentContext contentEnvironment];

  return contentEnvironment;
}

- (NSURL)contentHostDirectoryURL
{
  contentContext = [(FCCloudContext *)self contentContext];
  contentHostDirectoryURL = [contentContext contentHostDirectoryURL];

  return contentHostDirectoryURL;
}

- (NSString)tabiResourcesContentDirectory
{
  contentContext = [(FCCloudContext *)self contentContext];
  tabiResourcesContentDirectory = [contentContext tabiResourcesContentDirectory];

  return tabiResourcesContentDirectory;
}

- (NSString)tabiModelsContentDirectory
{
  contentContext = [(FCCloudContext *)self contentContext];
  tabiModelsContentDirectory = [contentContext tabiModelsContentDirectory];

  return tabiModelsContentDirectory;
}

- (NSString)tabiRequestsContentDirectory
{
  contentContext = [(FCCloudContext *)self contentContext];
  tabiRequestsContentDirectory = [contentContext tabiRequestsContentDirectory];

  return tabiRequestsContentDirectory;
}

- (NSURL)assetCacheDirectoryURL
{
  contentContext = [(FCCloudContext *)self contentContext];
  assetCacheDirectoryURL = [contentContext assetCacheDirectoryURL];

  return assetCacheDirectoryURL;
}

- (id)recordSourceWithSchema:(id)schema
{
  schemaCopy = schema;
  contentContext = [(FCCloudContext *)self contentContext];
  v6 = [contentContext recordSourceWithSchema:schemaCopy];

  return v6;
}

- (id)recordTreeSourceWithRecordSources:(id)sources
{
  sourcesCopy = sources;
  contentContext = [(FCCloudContext *)self contentContext];
  v6 = [contentContext recordTreeSourceWithRecordSources:sourcesCopy];

  return v6;
}

- (id)interestTokenForContentManifest:(id)manifest
{
  manifestCopy = manifest;
  contentContext = [(FCCloudContext *)self contentContext];
  v6 = [contentContext interestTokenForContentManifest:manifestCopy];

  return v6;
}

- (id)convertRecords:(id)records
{
  recordsCopy = records;
  contentContext = [(FCCloudContext *)self contentContext];
  v6 = [contentContext convertRecords:recordsCopy];

  return v6;
}

- (int64_t)storageSize
{
  contentContext = [(FCCloudContext *)self contentContext];
  storageSize = [contentContext storageSize];

  return storageSize;
}

- (void)save
{
  contentContext = [(FCCloudContext *)self contentContext];
  [contentContext save];
}

- (BOOL)isPrivateDataSyncingEnabled
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  isPrivateDataSyncingEnabled = [privateDataContext isPrivateDataSyncingEnabled];

  return isPrivateDataSyncingEnabled;
}

- (id)privateStoreWithName:(id)name version:(unint64_t)version options:(unint64_t)options
{
  nameCopy = name;
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  v10 = [privateDataContext privateStoreWithName:nameCopy version:version options:options];

  return v10;
}

- (FCPrivateDataContextInternal)internalPrivateDataContext
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  internalPrivateDataContext = [privateDataContext internalPrivateDataContext];

  return internalPrivateDataContext;
}

- (FCPushNotificationHandling)privatePushNotificationHandler
{
  privateDataContext = [(FCCloudContext *)self privateDataContext];
  privatePushNotificationHandler = [privateDataContext privatePushNotificationHandler];

  return privatePushNotificationHandler;
}

- (id)insertTestArticle
{
  v3 = objc_opt_class();
  contentContext = [(FCCloudContext *)self contentContext];
  internalContentContext = [contentContext internalContentContext];
  contentDatabase = [internalContentContext contentDatabase];
  v7 = FCCheckedDynamicCast(v3, contentDatabase);

  insertTestArticle = [v7 insertTestArticle];

  return insertTestArticle;
}

- (id)insertTestArticlesWithCount:(unint64_t)count
{
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:?];
  while (count)
  {
    --count;
    insertTestArticle = [(FCCloudContext *)self insertTestArticle];
    [v5 addObject:insertTestArticle];
  }

  return v5;
}

- (void)fetchDesiredVersionForDatabase:(id)database completion:(id)completion
{
  databaseCopy = database;
  completionCopy = completion;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v10 = [bundleIdentifier isEqualToString:@"com.apple.news"];

  if ((v10 & 1) == 0)
  {
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke;
    v54[3] = &unk_1E7C379C8;
    v55 = completionCopy;
    __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke(v54);
    v13 = v55;
LABEL_7:

    goto LABEL_14;
  }

  v11 = NewsCoreUserDefaults();
  v12 = [v11 integerForKey:@"encryption_desired_version_override"];

  if (v12 > 2)
  {
    if (v12 == 3)
    {
      (*(completionCopy + 2))(completionCopy, 2, 0);
      goto LABEL_14;
    }

    if (v12 == 4)
    {
      (*(completionCopy + 2))(completionCopy, 3, 0);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v12 == 1)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_14;
  }

  if (v12 != 2)
  {
LABEL_11:
    v14 = objc_alloc(MEMORY[0x1E69B68F8]);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_213;
    v52[3] = &unk_1E7C39ED0;
    v53 = databaseCopy;
    v15 = [v14 initWithResolver:v52];
    v16 = objc_alloc(MEMORY[0x1E69B68F8]);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_223;
    v51[3] = &unk_1E7C39ED0;
    v51[4] = self;
    v17 = [v16 initWithResolver:v51];
    v18 = [objc_alloc(MEMORY[0x1E69B68F8]) initWithResolver:&__block_literal_global_238];
    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x2020000000;
    v50[3] = 0;
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x2020000000;
    v49[3] = 0;
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x2020000000;
    v48[3] = 0;
    v19 = MEMORY[0x1E69B68F8];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_242;
    v46[3] = &unk_1E7C396C0;
    v31 = v15;
    v47 = v31;
    v34 = [v19 firstly:v46];
    v33 = zalgo();
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_2_244;
    v43[3] = &unk_1E7C3C6B0;
    v45 = v50;
    v30 = v17;
    v44 = v30;
    v32 = [v34 thenOn:v33 then:v43];
    v20 = zalgo();
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_3_246;
    v40[3] = &unk_1E7C3C6B0;
    v42 = v49;
    v29 = v18;
    v41 = v29;
    v21 = [v32 thenOn:v20 then:v40];
    v22 = zalgo();
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_4;
    v39[3] = &unk_1E7C3C6D8;
    v39[4] = v48;
    v39[5] = v50;
    v39[6] = v49;
    v23 = [v21 thenOn:v22 then:v39];
    v24 = zalgo();
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_5;
    v37[3] = &unk_1E7C3C700;
    v25 = completionCopy;
    v38 = v25;
    v26 = [v23 thenOn:v24 then:v37];
    v27 = zalgo();
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_6;
    v35[3] = &unk_1E7C39F48;
    v36 = v25;
    v28 = [v26 errorOn:v27 error:v35];

    _Block_object_dispose(v48, 8);
    _Block_object_dispose(v49, 8);
    _Block_object_dispose(v50, 8);

    v13 = v53;
    goto LABEL_7;
  }

  (*(completionCopy + 2))(completionCopy, 1, 0);
LABEL_14:
}

uint64_t __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke(uint64_t a1)
{
  v2 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "targeting base version because we're running outside the News app", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_213(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_2;
  v10[3] = &unk_1E7C3C640;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [(FCCKPrivateDatabase *)v7 fetchSecureDatabaseSupportedWithCompletionHandler:v10];
}

void __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_3;
    v13[3] = &unk_1E7C37BC0;
    v14 = v5;
    v15 = *(a1 + 32);
    __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_3(v13);

    v7 = v14;
  }

  else
  {
    v8 = FCPrivateDataEncryptionLog;
    if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"not supported";
      if (a2)
      {
        v9 = @"supported";
      }

      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "secure database is %{public}@", buf, 0xCu);
    }

    v10 = *(a1 + 40);
    if (a2)
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    (*(v10 + 16))(v10, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "encountered error checking whether secure database is supported: %{public}@", &v7, 0xCu);
  }

  v3 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_223(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) configurationManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_2_224;
  v6[3] = &unk_1E7C39EA8;
  v7 = v3;
  v5 = v3;
  [v4 fetchConfigurationIfNeededWithCompletion:v6];
}

void __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_2_224(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_3_225;
    v14[3] = &unk_1E7C37BC0;
    v15 = v6;
    v16 = *(a1 + 32);
    __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_3_225(v14);
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 privateDataShouldMigrateToV4])
    {
      v8 = FCPrivateDataEncryptionLog;
      if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "app config allows database v4 (ubiquitous encryption", v13, 2u);
      }

      v9 = *(*(a1 + 32) + 16);
    }

    else if ([v5 privateDataShouldSecureSubscriptions])
    {
      v10 = FCPrivateDataEncryptionLog;
      if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "app config allows database v3 (secure subscriptions)", v13, 2u);
      }

      v9 = *(*(a1 + 32) + 16);
    }

    else if ([v5 isPrivateDataEncryptionAllowed] && objc_msgSend(v5, "isPrivateDataEncryptionMigrationDesired"))
    {
      v11 = FCPrivateDataEncryptionLog;
      if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "app config allows database v2 (selective encryption)", v13, 2u);
      }

      v9 = *(*(a1 + 32) + 16);
    }

    else
    {
      v12 = FCPrivateDataEncryptionLog;
      if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "app config does not allow encryption", v13, 2u);
      }

      v9 = *(*(a1 + 32) + 16);
    }

    v9();
  }
}

uint64_t __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_3_225(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543362;
    v7 = v5;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "encountered error fetching app config for encryption settings: %{public}@", &v6, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_236(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[FCAppleAccount sharedAccount];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_2_239;
  v5[3] = &unk_1E7C3C688;
  v6 = v2;
  v4 = v2;
  [v3 fetchMinimumDeviceVersionsActiveSinceInterval:v5 completionHandler:7776000.0];
}

void __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_2_239(uint64_t a1, _OWORD *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_3_240;
    v17[3] = &unk_1E7C37BC0;
    v18 = v5;
    v19 = *(a1 + 32);
    __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_3_240(v17);

    v7 = v18;
  }

  else
  {
    v8 = FCPrivateDataEncryptionLog;
    if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a2[1];
      *buf = *a2;
      v21 = v9;
      v10 = a2[3];
      v22 = a2[2];
      v23 = v10;
      v11 = v8;
      v12 = FCStringFromOSVersions(buf);
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "minimum active device versions are %{public}@", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    v14 = a2[1];
    *buf = *a2;
    v21 = v14;
    v15 = a2[3];
    v22 = a2[2];
    v23 = v15;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:FCCKPrivateDatabaseVersionSupportedByOS(buf)];
    (*(v13 + 16))(v13, v7);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_3_240(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543362;
    v7 = v5;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "encountered error checking device versions: %{public}@", &v6, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

id __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_2_244(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = [a2 integerValue];
  v3 = *(a1 + 32);

  return v3;
}

id __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_3_246(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = [a2 integerValue];
  v3 = *(a1 + 32);

  return v3;
}

uint64_t __60__FCCloudContext_fetchDesiredVersionForDatabase_completion___block_invoke_4(void *a1, void *a2)
{
  *(*(a1[4] + 8) + 24) = [a2 integerValue];
  v3 = *(*(a1[4] + 8) + 24);
  if (*(*(a1[6] + 8) + 24) < v3)
  {
    v3 = *(*(a1[6] + 8) + 24);
  }

  if (v3 >= *(*(a1[5] + 8) + 24))
  {
    v4 = *(*(a1[5] + 8) + 24);
  }

  else
  {
    v4 = v3;
  }

  v5 = MEMORY[0x1E696AD98];

  return [v5 numberWithInteger:v4];
}

- (void)fetchCleanupToVersionForDatabase:(id)database completion:(id)completion
{
  completionCopy = completion;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v8 = [bundleIdentifier isEqualToString:@"com.apple.news"];

  if ((v8 & 1) == 0)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __62__FCCloudContext_fetchCleanupToVersionForDatabase_completion___block_invoke;
    v28[3] = &unk_1E7C379C8;
    v29 = completionCopy;
    __62__FCCloudContext_fetchCleanupToVersionForDatabase_completion___block_invoke(v28);

    goto LABEL_13;
  }

  v9 = NewsCoreUserDefaults();
  v10 = [v9 integerForKey:@"encryption_cleanup_to_version_override"];

  if (v10 > 2)
  {
    if (v10 == 3)
    {
      (*(completionCopy + 2))(completionCopy, 2, 0);
      goto LABEL_13;
    }

    if (v10 == 4)
    {
      (*(completionCopy + 2))(completionCopy, 3, 0);
      goto LABEL_13;
    }

LABEL_10:
    v11 = objc_alloc(MEMORY[0x1E69B68F8]);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __62__FCCloudContext_fetchCleanupToVersionForDatabase_completion___block_invoke_248;
    v27[3] = &unk_1E7C39ED0;
    v27[4] = self;
    v12 = [v11 initWithResolver:v27];
    v13 = MEMORY[0x1E69B68F8];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __62__FCCloudContext_fetchCleanupToVersionForDatabase_completion___block_invoke_253;
    v25[3] = &unk_1E7C396C0;
    v26 = v12;
    v14 = v12;
    v15 = [v13 firstly:v25];
    v16 = zalgo();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __62__FCCloudContext_fetchCleanupToVersionForDatabase_completion___block_invoke_2_254;
    v23[3] = &unk_1E7C3C700;
    v17 = completionCopy;
    v24 = v17;
    v18 = [v15 thenOn:v16 then:v23];
    v19 = zalgo();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __62__FCCloudContext_fetchCleanupToVersionForDatabase_completion___block_invoke_255;
    v21[3] = &unk_1E7C39F48;
    v22 = v17;
    v20 = [v18 errorOn:v19 error:v21];

    goto LABEL_13;
  }

  if (v10 == 1)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_13;
  }

  if (v10 != 2)
  {
    goto LABEL_10;
  }

  (*(completionCopy + 2))(completionCopy, 1, 0);
LABEL_13:
}

uint64_t __62__FCCloudContext_fetchCleanupToVersionForDatabase_completion___block_invoke(uint64_t a1)
{
  v2 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "no cleanup because we're running outside the News app", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __62__FCCloudContext_fetchCleanupToVersionForDatabase_completion___block_invoke_248(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) configurationManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__FCCloudContext_fetchCleanupToVersionForDatabase_completion___block_invoke_2;
  v10[3] = &unk_1E7C3B098;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [v7 fetchConfigurationIfNeededWithCompletion:v10];
}

void __62__FCCloudContext_fetchCleanupToVersionForDatabase_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__FCCloudContext_fetchCleanupToVersionForDatabase_completion___block_invoke_3;
    v15[3] = &unk_1E7C37BC0;
    v16 = v6;
    v17 = *(a1 + 32);
    __62__FCCloudContext_fetchCleanupToVersionForDatabase_completion___block_invoke_3(v15);
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 privateDataShouldCleanupToV4])
    {
      v8 = FCPrivateDataEncryptionLog;
      if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "app config allows cleanup to v4 (ubiquitous encryption)", v14, 2u);
      }

      v9 = *(*(a1 + 40) + 16);
    }

    else if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 privateDataShouldCleanupAfterSecureSubscriptions])
    {
      v10 = FCPrivateDataEncryptionLog;
      if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "app config allows cleanup to v3 (secure subscription)", v14, 2u);
      }

      v9 = *(*(a1 + 40) + 16);
    }

    else
    {
      v11 = [v5 isPrivateDataMigrationCleanupEnabled];
      v12 = FCPrivateDataEncryptionLog;
      v13 = os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          *v14 = 0;
          _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "app config allows cleanup to v2 (selective encryption)", v14, 2u);
        }

        v9 = *(*(a1 + 40) + 16);
      }

      else
      {
        if (v13)
        {
          *v14 = 0;
          _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "app config does not allow encryption cleanup", v14, 2u);
        }

        v9 = *(*(a1 + 40) + 16);
      }
    }

    v9();
  }
}

uint64_t __62__FCCloudContext_fetchCleanupToVersionForDatabase_completion___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "encountered error fetching app config for encryption settings: %{public}@", &v7, 0xCu);
  }

  v3 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __62__FCCloudContext_fetchCleanupToVersionForDatabase_completion___block_invoke_2_254(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [a2 integerValue];
  v4 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = FCCKPrivateDatabaseVersionString(v3);
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "fetched desired private data cleanup version with result: %{public}@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)shouldAssetKeyManagerSimulateUnauthorizedAssetKeys:(id)keys
{
  v28 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v5 = NewsCoreUserDefaults();
  v6 = [v5 BOOLForKey:@"simulate_no_access_to_awk"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = NewsCoreUserDefaults();
    v9 = [v8 BOOLForKey:@"simulate_bo_access_to_awk"];

    if (v9)
    {
      bundleSubscriptionManager = [(FCCloudContext *)self bundleSubscriptionManager];

      if (!bundleSubscriptionManager && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "self.bundleSubscriptionManager"];
        *buf = 136315906;
        v21 = "[FCCloudContext shouldAssetKeyManagerSimulateUnauthorizedAssetKeys:]";
        v22 = 2080;
        v23 = "FCCloudContext.m";
        v24 = 1024;
        v25 = 1122;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      bundleSubscriptionManager2 = [(FCCloudContext *)self bundleSubscriptionManager];
      cachedSubscription = [bundleSubscriptionManager2 cachedSubscription];
      v13 = objc_getAssociatedObject(cachedSubscription, (cachedSubscription + 1));
      unsignedIntegerValue = [v13 unsignedIntegerValue];
      v15 = unsignedIntegerValue;
      v16 = objc_getAssociatedObject(cachedSubscription, ~unsignedIntegerValue);
      v7 = (([v16 unsignedIntegerValue] ^ v15) & 1) == 0;
    }

    else
    {
      v7 = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)bundleSubscriptionDidSubscribe:(id)subscribe
{
  contentContext = [(FCCloudContext *)self contentContext];
  internalContentContext = [contentContext internalContentContext];
  assetKeyManager = [internalContentContext assetKeyManager];
  [assetKeyManager clearUnauthorizedAssetKeys];
}

- (int64_t)preferredContentVariant
{
  bundleSubscriptionManager = [(FCCloudContext *)self bundleSubscriptionManager];
  bundleSubscription = [bundleSubscriptionManager bundleSubscription];
  v4 = objc_getAssociatedObject(bundleSubscription, (bundleSubscription + 1));
  unsignedIntegerValue = [v4 unsignedIntegerValue];
  v6 = unsignedIntegerValue;
  v7 = objc_getAssociatedObject(bundleSubscription, ~unsignedIntegerValue);
  v8 = [v7 unsignedIntegerValue] ^ v6;

  return v8 & 1;
}

- (void)_purchaseControllerDidAddALaCarteSubscription
{
  contentContext = [(FCCloudContext *)self contentContext];
  internalContentContext = [contentContext internalContentContext];
  assetKeyManager = [internalContentContext assetKeyManager];
  [assetKeyManager clearUnauthorizedAssetKeys];
}

@end