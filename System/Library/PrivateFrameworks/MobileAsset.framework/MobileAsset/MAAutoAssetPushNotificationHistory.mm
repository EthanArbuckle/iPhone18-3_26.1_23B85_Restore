@interface MAAutoAssetPushNotificationHistory
+ (id)sharedInstance;
- (BOOL)_loadHistoryWithError:(id *)error;
- (BOOL)addNotificationsToHistory:(id)history withError:(id *)error;
- (BOOL)clearHistoryWithError:(id *)error;
- (MAAutoAssetPushNotificationHistory)init;
- (NSArray)notificationHistory;
- (id)_historyURL;
@end

@implementation MAAutoAssetPushNotificationHistory

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[MAAutoAssetPushNotificationHistory sharedInstance];
  }

  v3 = sharedInstance_singleton;

  return v3;
}

uint64_t __52__MAAutoAssetPushNotificationHistory_sharedInstance__block_invoke()
{
  sharedInstance_singleton = objc_alloc_init(MAAutoAssetPushNotificationHistory);

  return MEMORY[0x1EEE66BB8]();
}

- (MAAutoAssetPushNotificationHistory)init
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MAAutoAssetPushNotificationHistory;
  v2 = [(MAAutoAssetPushNotificationHistory *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v8 = 0;
    [(MAAutoAssetPushNotificationHistory *)v2 _loadHistoryWithError:&v8];
    v4 = v8;
    if (v4)
    {
      v5 = _MAClientLog(@"PushNotification");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v4;
        _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_ERROR, "Error loading history: %{public}@", buf, 0xCu);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (NSArray)notificationHistory
{
  [(MAAutoAssetPushNotificationHistory *)self _loadHistoryWithError:0];
  notificationHistory = self->_notificationHistory;

  return notificationHistory;
}

- (id)_historyURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/persisted");
  v4 = [v3 stringByAppendingPathComponent:@"PushNotificationManager"];
  v5 = [v4 stringByAppendingPathComponent:@"pushnotificationhistory.plist"];
  v6 = [v2 fileURLWithPath:v5];

  return v6;
}

- (BOOL)_loadHistoryWithError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  _historyURL = [(MAAutoAssetPushNotificationHistory *)self _historyURL];
  path = [_historyURL path];
  v8 = [defaultManager fileExistsAtPath:path];

  v9 = _MAClientLog(@"PushNotification");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_DEFAULT, "Reading pushnotificationhistory.plist file", buf, 2u);
    }

    v11 = MEMORY[0x1E695DEC8];
    _historyURL2 = [(MAAutoAssetPushNotificationHistory *)self _historyURL];
    v13 = [v11 arrayWithContentsOfURL:_historyURL2];
    [(MAAutoAssetPushNotificationHistory *)self setNotificationHistory:v13];

LABEL_5:
    LOBYTE(v14) = 0;
    goto LABEL_17;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_DEFAULT, "pushnotificationhistory.plist file does not exist, create it", buf, 2u);
  }

  v15 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/persisted");
  _historyURL2 = [v15 stringByAppendingPathComponent:@"PushNotificationManager"];

  v24 = 0;
  if (([defaultManager fileExistsAtPath:_historyURL2 isDirectory:&v24] & 1) == 0)
  {
    v16 = _MAClientLog(@"PushNotification");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = _historyURL2;
      _os_log_impl(&dword_197AD5000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ doesn't exist, create it", buf, 0xCu);
    }

    if (([defaultManager createDirectoryAtPath:_historyURL2 withIntermediateDirectories:1 attributes:0 error:error] & 1) == 0)
    {
      v22 = _MAClientLog(@"PushNotification");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        if (error)
        {
          v23 = *error;
        }

        else
        {
          v23 = @"no error";
        }

        *buf = 138543362;
        v26 = v23;
        _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_ERROR, "Error creating directory: %{public}@", buf, 0xCu);
      }

      goto LABEL_5;
    }
  }

  _historyURL3 = [(MAAutoAssetPushNotificationHistory *)self _historyURL];
  v14 = [MEMORY[0x1E695E0F0] writeToURL:_historyURL3 error:error];

  v18 = _MAClientLog(@"PushNotification");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"failure";
    if (v14)
    {
      v19 = @"success";
    }

    *buf = 138543362;
    v26 = v19;
    _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_DEFAULT, "Created pushnotificationhistory.plist with result %{public}@", buf, 0xCu);
  }

LABEL_17:
  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)addNotificationsToHistory:(id)history withError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  [(MAAutoAssetPushNotificationHistory *)self _loadHistoryWithError:error];
  notificationHistory = [(MAAutoAssetPushNotificationHistory *)self notificationHistory];
  v8 = [notificationHistory mutableCopy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = historyCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        historyRepresentation = [*(*(&v21 + 1) + 8 * v13) historyRepresentation];
        [v8 addObject:historyRepresentation];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v11);
  }

  _historyURL = [(MAAutoAssetPushNotificationHistory *)self _historyURL];
  v16 = [v8 writeToURL:_historyURL error:error];

  if ((v16 & 1) == 0)
  {
    v17 = _MAClientLog(@"PushNotification");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *error;
      *buf = 138543362;
      v26 = v18;
      _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "Error writing notifications to history: %{public}@", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)clearHistoryWithError:(id *)error
{
  _historyURL = [(MAAutoAssetPushNotificationHistory *)self _historyURL];
  LOBYTE(error) = [MEMORY[0x1E695E0F0] writeToURL:_historyURL error:error];

  return error;
}

@end