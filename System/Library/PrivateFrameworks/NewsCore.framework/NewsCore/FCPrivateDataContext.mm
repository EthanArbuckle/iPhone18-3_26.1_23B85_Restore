@interface FCPrivateDataContext
- (FCAudioPlaylist)audioPlaylist;
- (FCIssueReadingHistory)issueReadingHistory;
- (FCPersonalizationData)personalizationData;
- (FCPrivateChannelMembershipController)privateChannelMembershipController;
- (FCPrivateDataContext)init;
- (FCPrivateDataContext)initWithConfiguration:(id)configuration context:(id)context privateDataHostDirectory:(id)directory privateDataActionProvider:(id)provider encryptionDelegate:(id)delegate networkBehaviorMonitor:(id)monitor privateDataSyncingEnabled:(BOOL)enabled;
- (FCPrivateDataContext)initWithConfiguration:(id)configuration context:(id)context privateDatabase:(id)database privateDataDirectory:(id)directory privateDataActionProvider:(id)provider encryptionDelegate:(id)delegate networkBehaviorMonitor:(id)monitor privateDataSyncingEnabled:(BOOL)self0;
- (FCPrivateDataContextInternal)internalPrivateDataContext;
- (FCPushNotificationHandling)privatePushNotificationHandler;
- (FCPuzzleHistory)puzzleHistory;
- (FCReadingHistory)readingHistory;
- (FCReadingList)readingList;
- (FCShortcutCategoryList)shortcutCategoryList;
- (FCShortcutList)shortcutList;
- (FCSubscriptionList)subscriptionList;
- (FCUserEventHistory)userEventHistory;
- (FCUserInfo)userInfo;
- (NSString)privateDataDirectory;
- (id)_privateDataControllers;
- (id)privateStoreWithName:(id)name version:(unint64_t)version options:(unint64_t)options;
- (void)preparePrivateDataControllersForUse;
@end

@implementation FCPrivateDataContext

- (id)_privateDataControllers
{
  v20 = *MEMORY[0x1E69E9840];
  issueReadingHistory = self->_issueReadingHistory;
  personalizationData = self->_personalizationData;
  userEventHistory = self->_userEventHistory;
  v12[0] = self->_audioPlaylist;
  v12[1] = issueReadingHistory;
  privateChannelMembershipController = self->_privateChannelMembershipController;
  readingHistory = self->_readingHistory;
  userInfo = self->_userInfo;
  v12[2] = self->_subscriptionList;
  v12[3] = readingHistory;
  shortcutList = self->_shortcutList;
  v15 = privateChannelMembershipController;
  v16 = userInfo;
  v17 = personalizationData;
  v13 = *&self->_readingList;
  recipeUserEventHistory = self->_recipeUserEventHistory;
  v18 = userEventHistory;
  v19 = recipeUserEventHistory;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:12];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)preparePrivateDataControllersForUse
{
  _privateDataControllers = [(FCPrivateDataContext *)self _privateDataControllers];
  [_privateDataControllers makeObjectsPerformSelector:sel_prepareForUse];
  [_privateDataControllers makeObjectsPerformSelector:sel_addStateObserver_ withObject:self];
  [_privateDataControllers makeObjectsPerformSelector:sel_assertReadyForUse];
}

- (FCPrivateDataContextInternal)internalPrivateDataContext
{
  v15 = *MEMORY[0x1E69E9840];
  internalPrivateDataContext = self->_internalPrivateDataContext;
  if (!internalPrivateDataContext)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_internalPrivateDataContext"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContext internalPrivateDataContext]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 356;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      internalPrivateDataContext = self->_internalPrivateDataContext;
    }

    else
    {
      internalPrivateDataContext = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return internalPrivateDataContext;
}

- (NSString)privateDataDirectory
{
  v15 = *MEMORY[0x1E69E9840];
  privateDataDirectory = self->_privateDataDirectory;
  if (!privateDataDirectory)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_privateDataDirectory"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContext privateDataDirectory]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 350;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      privateDataDirectory = self->_privateDataDirectory;
    }

    else
    {
      privateDataDirectory = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return privateDataDirectory;
}

- (FCUserInfo)userInfo
{
  v15 = *MEMORY[0x1E69E9840];
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_userInfo"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContext userInfo]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 338;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      userInfo = self->_userInfo;
    }

    else
    {
      userInfo = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return userInfo;
}

- (FCPrivateChannelMembershipController)privateChannelMembershipController
{
  v15 = *MEMORY[0x1E69E9840];
  privateChannelMembershipController = self->_privateChannelMembershipController;
  if (!privateChannelMembershipController)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_privateChannelMembershipController"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContext privateChannelMembershipController]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 284;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      privateChannelMembershipController = self->_privateChannelMembershipController;
    }

    else
    {
      privateChannelMembershipController = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return privateChannelMembershipController;
}

- (FCPersonalizationData)personalizationData
{
  v15 = *MEMORY[0x1E69E9840];
  personalizationData = self->_personalizationData;
  if (!personalizationData)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_personalizationData"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContext personalizationData]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 279;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      personalizationData = self->_personalizationData;
    }

    else
    {
      personalizationData = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return personalizationData;
}

- (FCReadingHistory)readingHistory
{
  v15 = *MEMORY[0x1E69E9840];
  readingHistory = self->_readingHistory;
  if (!readingHistory)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_readingHistory"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContext readingHistory]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 290;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      readingHistory = self->_readingHistory;
    }

    else
    {
      readingHistory = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return readingHistory;
}

- (FCUserEventHistory)userEventHistory
{
  v15 = *MEMORY[0x1E69E9840];
  userEventHistory = self->_userEventHistory;
  if (!userEventHistory)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_userEventHistory"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContext userEventHistory]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 326;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      userEventHistory = self->_userEventHistory;
    }

    else
    {
      userEventHistory = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return userEventHistory;
}

- (FCSubscriptionList)subscriptionList
{
  v15 = *MEMORY[0x1E69E9840];
  subscriptionList = self->_subscriptionList;
  if (!subscriptionList)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_subscriptionList"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContext subscriptionList]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 332;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      subscriptionList = self->_subscriptionList;
    }

    else
    {
      subscriptionList = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return subscriptionList;
}

- (FCPuzzleHistory)puzzleHistory
{
  v15 = *MEMORY[0x1E69E9840];
  puzzleHistory = self->_puzzleHistory;
  if (!puzzleHistory)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_puzzleHistory"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContext puzzleHistory]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 302;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      puzzleHistory = self->_puzzleHistory;
    }

    else
    {
      puzzleHistory = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return puzzleHistory;
}

- (FCIssueReadingHistory)issueReadingHistory
{
  v15 = *MEMORY[0x1E69E9840];
  issueReadingHistory = self->_issueReadingHistory;
  if (!issueReadingHistory)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_issueReadingHistory"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContext issueReadingHistory]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 274;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      issueReadingHistory = self->_issueReadingHistory;
    }

    else
    {
      issueReadingHistory = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return issueReadingHistory;
}

- (FCShortcutList)shortcutList
{
  v15 = *MEMORY[0x1E69E9840];
  shortcutList = self->_shortcutList;
  if (!shortcutList)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_shortcutList"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContext shortcutList]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 308;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      shortcutList = self->_shortcutList;
    }

    else
    {
      shortcutList = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return shortcutList;
}

- (FCReadingList)readingList
{
  v15 = *MEMORY[0x1E69E9840];
  readingList = self->_readingList;
  if (!readingList)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_readingList"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContext readingList]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 296;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      readingList = self->_readingList;
    }

    else
    {
      readingList = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return readingList;
}

- (FCAudioPlaylist)audioPlaylist
{
  v15 = *MEMORY[0x1E69E9840];
  audioPlaylist = self->_audioPlaylist;
  if (!audioPlaylist)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_audioPlaylist"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContext audioPlaylist]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 320;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      audioPlaylist = self->_audioPlaylist;
    }

    else
    {
      audioPlaylist = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return audioPlaylist;
}

- (FCShortcutCategoryList)shortcutCategoryList
{
  v15 = *MEMORY[0x1E69E9840];
  shortcutCategoryList = self->_shortcutCategoryList;
  if (!shortcutCategoryList)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_shortcutCategoryList"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContext shortcutCategoryList]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 314;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      shortcutCategoryList = self->_shortcutCategoryList;
    }

    else
    {
      shortcutCategoryList = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return shortcutCategoryList;
}

- (FCPrivateDataContext)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPrivateDataContext init]";
    v10 = 2080;
    v11 = "FCPrivateDataContext.m";
    v12 = 1024;
    v13 = 88;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPrivateDataContext init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPrivateDataContext)initWithConfiguration:(id)configuration context:(id)context privateDataHostDirectory:(id)directory privateDataActionProvider:(id)provider encryptionDelegate:(id)delegate networkBehaviorMonitor:(id)monitor privateDataSyncingEnabled:(BOOL)enabled
{
  v41 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  contextCopy = context;
  directoryCopy = directory;
  providerCopy = provider;
  delegateCopy = delegate;
  monitorCopy = monitor;
  if (!contextCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "context != nil"];
    *buf = 136315906;
    v34 = "[FCPrivateDataContext initWithConfiguration:context:privateDataHostDirectory:privateDataActionProvider:encryptionDelegate:networkBehaviorMonitor:privateDataSyncingEnabled:]";
    v35 = 2080;
    v36 = "FCPrivateDataContext.m";
    v37 = 1024;
    v38 = 99;
    v39 = 2114;
    v40 = v29;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!directoryCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateDataHostDirectory != nil"];
    *buf = 136315906;
    v34 = "[FCPrivateDataContext initWithConfiguration:context:privateDataHostDirectory:privateDataActionProvider:encryptionDelegate:networkBehaviorMonitor:privateDataSyncingEnabled:]";
    v35 = 2080;
    v36 = "FCPrivateDataContext.m";
    v37 = 1024;
    v38 = 100;
    v39 = 2114;
    v40 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v20 = [FCCKPrivateDatabase alloc];
  privateDataContainerIdentifier = [configurationCopy privateDataContainerIdentifier];
  privateDataSecureContainerIdentifier = [configurationCopy privateDataSecureContainerIdentifier];
  v23 = -[FCCKPrivateDatabase initWithContainerIdentifier:secureContainerIdentifier:productionEnvironment:encryptionDelegate:networkBehaviorMonitor:privateDataSyncingEnabled:](v20, privateDataContainerIdentifier, privateDataSecureContainerIdentifier, [configurationCopy isProductionPrivateDataEnvironment], delegateCopy, monitorCopy, enabled);

  privateDataContainerCombinationIdentifier = [configurationCopy privateDataContainerCombinationIdentifier];
  v25 = [directoryCopy URLByAppendingPathComponent:privateDataContainerCombinationIdentifier isDirectory:1];

  LOBYTE(v31) = enabled;
  v26 = [(FCPrivateDataContext *)self initWithConfiguration:configurationCopy context:contextCopy privateDatabase:v23 privateDataDirectory:v25 privateDataActionProvider:providerCopy encryptionDelegate:delegateCopy networkBehaviorMonitor:monitorCopy privateDataSyncingEnabled:v31];

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (FCPrivateDataContext)initWithConfiguration:(id)configuration context:(id)context privateDatabase:(id)database privateDataDirectory:(id)directory privateDataActionProvider:(id)provider encryptionDelegate:(id)delegate networkBehaviorMonitor:(id)monitor privateDataSyncingEnabled:(BOOL)self0
{
  v96 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  contextCopy = context;
  databaseCopy = database;
  directoryCopy = directory;
  providerCopy = provider;
  delegateCopy = delegate;
  monitorCopy = monitor;
  if (!contextCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v68 = delegateCopy;
    v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "context != nil"];
    *buf = 136315906;
    v89 = "[FCPrivateDataContext initWithConfiguration:context:privateDatabase:privateDataDirectory:privateDataActionProvider:encryptionDelegate:networkBehaviorMonitor:privateDataSyncingEnabled:]";
    v90 = 2080;
    v91 = "FCPrivateDataContext.m";
    v92 = 1024;
    v93 = 130;
    v94 = 2114;
    v95 = v69;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    delegateCopy = v68;
  }

  v21 = databaseCopy;
  if (!databaseCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v70 = delegateCopy;
    v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateDatabase != nil"];
    *buf = 136315906;
    v89 = "[FCPrivateDataContext initWithConfiguration:context:privateDatabase:privateDataDirectory:privateDataActionProvider:encryptionDelegate:networkBehaviorMonitor:privateDataSyncingEnabled:]";
    v90 = 2080;
    v91 = "FCPrivateDataContext.m";
    v92 = 1024;
    v93 = 131;
    v94 = 2114;
    v95 = v71;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    delegateCopy = v70;
    if (directoryCopy)
    {
      goto LABEL_9;
    }
  }

  else if (directoryCopy)
  {
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v72 = delegateCopy;
    v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateDataDirectory != nil"];
    *buf = 136315906;
    v89 = "[FCPrivateDataContext initWithConfiguration:context:privateDatabase:privateDataDirectory:privateDataActionProvider:encryptionDelegate:networkBehaviorMonitor:privateDataSyncingEnabled:]";
    v90 = 2080;
    v91 = "FCPrivateDataContext.m";
    v92 = 1024;
    v93 = 132;
    v94 = 2114;
    v95 = v73;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    delegateCopy = v72;
  }

LABEL_9:
  v86.receiver = self;
  v86.super_class = FCPrivateDataContext;
  v22 = [(FCPrivateDataContext *)&v86 init];
  v23 = v22;
  if (v22)
  {
    v80 = delegateCopy;
    v83 = configurationCopy;
    objc_storeStrong(&v22->_contentContext, context);
    v23->_privateDataSyncingEnabled = enabled;
    path = [directoryCopy path];
    v25 = [path copy];
    privateDataDirectory = v23->_privateDataDirectory;
    v23->_privateDataDirectory = v25;

    objc_storeStrong(&v23->_networkBehaviorMonitor, monitor);
    path2 = [directoryCopy path];
    v28 = [[FCPushNotificationCenter alloc] initWithPrivateDatabase:v21 storeDirectory:path2];
    objc_storeStrong(&v23->_privatePushNotificationHandler, v28);
    v29 = objc_opt_new();
    objc_storeStrong(&v23->_internalPrivateDataContext, v29);
    appActivityMonitor = [contextCopy appActivityMonitor];
    [v29 setAppActivityMonitor:appActivityMonitor];

    [v29 setPrivateDatabase:v21];
    v87[0] = @"AudioPlaylist";
    v87[1] = @"IssueReadingHistory";
    v87[2] = @"Subscriptions";
    v87[3] = @"Shortcuts";
    v87[4] = @"SensitiveSubscriptions";
    v87[5] = @"ReadingList";
    v87[6] = @"ReadingHistory";
    v87[7] = @"ChannelMemberships";
    v87[8] = @"UserInfo";
    v87[9] = @"UserEventHistory";
    v87[10] = @"PuzzleHistory";
    v87[11] = @"RecipeUserEventHistory";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:12];
    v78 = v82 = v21;
    v31 = [[FCCKRecordZoneManager alloc] initWithDatabase:v21 recordZoneNames:v78];
    v79 = v29;
    [v29 setRecordZoneManager:v31];

    v32 = [[FCSubscriptionList alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    subscriptionList = v23->_subscriptionList;
    v23->_subscriptionList = v32;

    v77 = [[FCIssueReadingHistory alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    objc_storeStrong(&v23->_issueReadingHistory, v77);
    v76 = [[FCReadingHistory alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    objc_storeStrong(&v23->_readingHistory, v76);
    v34 = [[FCReadingList alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    readingList = v23->_readingList;
    v23->_readingList = v34;

    v36 = [[FCPuzzleHistory alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    puzzleHistory = v23->_puzzleHistory;
    v23->_puzzleHistory = v36;

    v38 = [[FCShortcutList alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    shortcutList = v23->_shortcutList;
    v23->_shortcutList = v38;

    v40 = [[FCShortcutCategoryList alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    shortcutCategoryList = v23->_shortcutCategoryList;
    v23->_shortcutCategoryList = v40;

    v42 = [[FCAudioPlaylist alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    audioPlaylist = v23->_audioPlaylist;
    v23->_audioPlaylist = v42;

    v44 = [directoryCopy URLByAppendingPathComponent:@"personalization-sessions" isDirectory:1];
    v45 = [FCUserEventHistoryStorage alloc];
    appConfigurationManager = [contextCopy appConfigurationManager];
    v75 = v44;
    v47 = [(FCUserEventHistoryStorage *)v45 initWithRootDirectory:v44 configurationManager:appConfigurationManager];

    v74 = v47;
    v48 = [[FCUserEventHistory alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2 sessionStorage:v47];
    userEventHistory = v23->_userEventHistory;
    v23->_userEventHistory = v48;

    v81 = directoryCopy;
    v50 = [directoryCopy URLByAppendingPathComponent:@"recipe-personalization-sessions" isDirectory:1];
    v51 = [FCUserEventHistoryStorage alloc];
    appConfigurationManager2 = [contextCopy appConfigurationManager];
    v53 = [(FCUserEventHistoryStorage *)v51 initWithRootDirectory:v50 configurationManager:appConfigurationManager2];

    v54 = [(FCUserEventHistory *)[FCRecipeUserEventHistory alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2 sessionStorage:v53];
    recipeUserEventHistory = v23->_recipeUserEventHistory;
    v23->_recipeUserEventHistory = v54;

    v56 = [[FCPrivateChannelMembershipController alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    objc_storeStrong(&v23->_privateChannelMembershipController, v56);
    v57 = [[FCUserInfo alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    objc_storeStrong(&v23->_userInfo, v57);
    tagSettings = [(FCUserInfo *)v23->_userInfo tagSettings];
    tagSettings = v23->_tagSettings;
    v23->_tagSettings = tagSettings;

    puzzleTypeSettings = [(FCUserInfo *)v23->_userInfo puzzleTypeSettings];
    puzzleTypeSettings = v23->_puzzleTypeSettings;
    v23->_puzzleTypeSettings = puzzleTypeSettings;

    v62 = [[FCPersonalizationData alloc] initWithContext:contextCopy pushNotificationCenter:v28 storeDirectory:path2];
    personalizationData = v23->_personalizationData;
    v23->_personalizationData = v62;

    _privateDataControllers = [(FCPrivateDataContext *)v23 _privateDataControllers];
    if (providerCopy)
    {
      v65 = [[FCNonDestructivePrivateDataMigrationHandler alloc] initWithPrivateDataActionProvider:providerCopy privateDataControllers:_privateDataControllers privateDataSyncingEnabled:enabled];
      [(FCNonDestructivePrivateDataMigrationHandler *)v65 handleMigrationWithPrivateDataDirectory:v23->_privateDataDirectory];
    }

    if (enabled)
    {
      [(FCPushNotificationCenter *)v28 enableSyncing];
    }

    else
    {
      [(FCPushNotificationCenter *)v28 disableSyncing];
    }

    [(FCCKPrivateDatabase *)v82 registerZoneRestorationSources:_privateDataControllers];
    [(FCCKPrivateDatabase *)v82 registerZonePruningAssistants:_privateDataControllers];

    v21 = v82;
    configurationCopy = v83;
    delegateCopy = v80;
    directoryCopy = v81;
  }

  v66 = *MEMORY[0x1E69E9840];
  return v23;
}

- (FCPushNotificationHandling)privatePushNotificationHandler
{
  v15 = *MEMORY[0x1E69E9840];
  privatePushNotificationHandler = self->_privatePushNotificationHandler;
  if (!privatePushNotificationHandler)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_privatePushNotificationHandler"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContext privatePushNotificationHandler]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 344;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      privatePushNotificationHandler = self->_privatePushNotificationHandler;
    }

    else
    {
      privatePushNotificationHandler = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return privatePushNotificationHandler;
}

- (id)privateStoreWithName:(id)name version:(unint64_t)version options:(unint64_t)options
{
  nameCopy = name;
  v9 = [FCKeyValueStore alloc];
  privateDataDirectory = [(FCPrivateDataContext *)self privateDataDirectory];
  v11 = [(FCKeyValueStore *)v9 initWithName:nameCopy directory:privateDataDirectory version:version options:options classRegistry:0];

  return v11;
}

@end