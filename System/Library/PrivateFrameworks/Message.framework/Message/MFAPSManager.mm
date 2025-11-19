@interface MFAPSManager
+ (Class)APSConnection;
+ (id)apsEnvironment;
+ (id)sharedManager;
- (MFAPSManager)init;
- (id)copyDeviceToken;
- (id)copyDiagnosticInformation;
- (id)enabledTopicsWithTopics:(id)a3;
- (void)_startAPS_nts;
- (void)_stopAPS_nts;
- (void)connect;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)setLaunchMachServiceName:(id)a3;
- (void)startWatchingForTopic:(id)a3;
- (void)stopWatchingForTopic:(id)a3;
- (void)swapTopic:(id)a3 forNewTopic:(id)a4;
@end

@implementation MFAPSManager

+ (id)sharedManager
{
  v2 = MFUserAgent();
  v3 = [v2 canRegisterForAPSPush];

  if (v3)
  {
    if (sharedManager_onceToken != -1)
    {
      +[MFAPSManager sharedManager];
    }

    v4 = sharedManager___sharedInstance;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __29__MFAPSManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(MFAPSManager);
  v1 = sharedManager___sharedInstance;
  sharedManager___sharedInstance = v0;
}

- (MFAPSManager)init
{
  v16.receiver = self;
  v16.super_class = MFAPSManager;
  v2 = [(MFAPSManager *)&v16 init];
  if (v2)
  {
    v3 = MFUserAgent();
    if ([v3 isMaild])
    {
      v4 = @"com.apple.email.maild.aps";
    }

    else
    {
      v4 = 0;
    }

    objc_storeStrong(&v2->_launchMachServiceName, v4);

    v5 = dispatch_queue_create("com.apple.message.apsManager", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696AB50]);
    watchedTopics = v2->_watchedTopics;
    v2->_watchedTopics = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    unwatchedTopics = v2->_unwatchedTopics;
    v2->_unwatchedTopics = v9;

    v11 = [objc_alloc(MEMORY[0x1E69AD6A0]) initWithCondition:0];
    deviceTokenLock = v2->_deviceTokenLock;
    v2->_deviceTokenLock = v11;

    v13 = [MEMORY[0x1E69AD6C0] sharedController];
    [v13 addDiagnosticsGenerator:v2];

    v14 = v2;
  }

  return v2;
}

- (void)setLaunchMachServiceName:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  launchMachServiceName = self->_launchMachServiceName;
  self->_launchMachServiceName = v4;
}

+ (Class)APSConnection
{
  if (APSConnection_onceToken != -1)
  {
    +[MFAPSManager APSConnection];
  }

  v3 = APSConnection_klass;

  return v3;
}

void __29__MFAPSManager_APSConnection__block_invoke()
{
  v0 = [GSSystemRootDirectory() stringByAppendingPathComponent:@"System/Library/PrivateFrameworks/ApplePushService.framework"];
  v1 = [MEMORY[0x1E696AAE8] bundleWithPath:v0];
  v2 = v1;
  if (v1)
  {
    APSConnection_klass = [v1 classNamed:@"APSConnection"];
  }

  else
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __29__MFAPSManager_APSConnection__block_invoke_cold_1(v0, v3);
    }
  }
}

+ (id)apsEnvironment
{
  v2 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [v2 BOOLForKey:@"MFUseAPSDevelopmentEnvironment"];

  if (v3)
  {
    return @"development";
  }

  else
  {
    return @"production";
  }
}

- (void)_startAPS_nts
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = self->_pushService == 0;
  v4 = MFLogGeneral();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v6 = +[MFAPSManager apsEnvironment];
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_INFO, "#aps-push Using %@ APS environment.", &v14, 0xCu);
    }

    if (self->_launchMachServiceName)
    {
      v7 = objc_alloc(+[MFAPSManager APSConnection]);
      v8 = +[MFAPSManager apsEnvironment];
      v9 = [v7 initWithEnvironmentName:v8 namedDelegatePort:self->_launchMachServiceName queue:self->_queue];
      pushService = self->_pushService;
      self->_pushService = v9;
    }

    else
    {
      v8 = MFLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(MFAPSManager *)v8 _startAPS_nts];
      }
    }

    [(APSConnection *)self->_pushService setDelegate:self];
    v4 = [(APSConnection *)self->_pushService publicToken];
    if (v4)
    {
      v11 = MFLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_INFO, "#aps-push Starting MFAPSManager.", &v14, 2u);
      }

      [(MFAPSManager *)self connection:self->_pushService didReceivePublicToken:v4];
    }

    else
    {
      v12 = MFLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_INFO, "#aps-push Starting MFAPSManager. Waiting for public token.", &v14, 2u);
      }

      [(NSConditionLock *)self->_deviceTokenLock lock];
      [(NSConditionLock *)self->_deviceTokenLock unlockWithCondition:0];
      [(MFAPSManager *)self startWatchingForTopic:@"com.apple.mobilemail.dummyTopicToForceServerConnection"];
    }
  }

  else if (v5)
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_INFO, "#aps-push Push service already running.", &v14, 2u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_stopAPS_nts
{
  dispatch_assert_queue_V2(self->_queue);
  pushService = self->_pushService;
  self->_pushService = 0;

  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_INFO, "#aps-push Stopped MFAPSManager.", v5, 2u);
  }
}

- (void)startWatchingForTopic:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__MFAPSManager_startWatchingForTopic___block_invoke;
  v7[3] = &unk_1E7AA26E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __38__MFAPSManager_startWatchingForTopic___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    [v2 _startAPS_nts];
  }

  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_INFO, "#aps-push Start watching topic '%@'", &v11, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = [*(v5 + 24) allObjects];
  v8 = [v5 enabledTopicsWithTopics:v7];
  v9 = [*(*(a1 + 32) + 32) allObjects];
  [v6 setEnabledTopics:v8 ignoredTopics:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)stopWatchingForTopic:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__MFAPSManager_stopWatchingForTopic___block_invoke;
    v7[3] = &unk_1E7AA26E0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

void __37__MFAPSManager_stopWatchingForTopic___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 24) countForObject:*(a1 + 40)];
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  if (v2 == 1)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_INFO, "#aps-push Stop watching topic '%@'", &v11, 0xCu);
    }

    [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = [*(v5 + 24) allObjects];
  v8 = [v5 enabledTopicsWithTopics:v7];
  v9 = [*(*(a1 + 32) + 32) allObjects];
  [v6 setEnabledTopics:v8 ignoredTopics:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (id)enabledTopicsWithTopics:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E699B550] cloudKitAPSTopics];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count") + objc_msgSend(v4, "count")}];
  [v5 addObjectsFromArray:v3];
  [v5 addObjectsFromArray:v4];

  return v5;
}

- (void)swapTopic:(id)a3 forNewTopic:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MFAPSManager_swapTopic_forNewTopic___block_invoke;
  block[3] = &unk_1E7AA42D8;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __38__MFAPSManager_swapTopic_forNewTopic___block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1B0389000, v2, OS_LOG_TYPE_INFO, "#aps-push Swapping registered topic '%@' for topic '%@'", &v12, 0x16u);
  }

  v5 = [*(a1[6] + 24) containsObject:a1[4]];
  if (v5)
  {
    [*(a1[6] + 24) removeObject:a1[4]];
    [*(a1[6] + 24) addObject:a1[5]];
  }

  if ([*(a1[6] + 32) containsObject:a1[4]])
  {
    [*(a1[6] + 32) removeObject:a1[4]];
    [*(a1[6] + 32) addObject:a1[5]];
LABEL_8:
    v6 = a1[6];
    v7 = *(v6 + 16);
    v8 = [*(v6 + 24) allObjects];
    v9 = [v6 enabledTopicsWithTopics:v8];
    v10 = [*(a1[6] + 32) allObjects];
    [v7 setEnabledTopics:v9 ignoredTopics:v10];

    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  v11 = *MEMORY[0x1E69E9840];
}

- (void)connect
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__MFAPSManager_connect__block_invoke;
  block[3] = &unk_1E7AA25C0;
  block[4] = self;
  dispatch_async(queue, block);
}

void *__23__MFAPSManager_connect__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return [result _startAPS_nts];
  }

  return result;
}

- (id)copyDeviceToken
{
  if (!self->_pushService)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__MFAPSManager_copyDeviceToken__block_invoke;
    block[3] = &unk_1E7AA25C0;
    block[4] = self;
    dispatch_sync(queue, block);
  }

  deviceTokenLock = self->_deviceTokenLock;
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:5.0];
  v6 = [(NSConditionLock *)deviceTokenLock lockWhenCondition:1 beforeDate:v5];

  if (!v6)
  {
    return 0;
  }

  v7 = self->_deviceToken;
  [(NSConditionLock *)self->_deviceTokenLock unlock];
  return v7;
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7 && [(NSCountedSet *)self->_watchedTopics containsObject:@"com.apple.mobilemail.dummyTopicToForceServerConnection"])
  {
    [(MFAPSManager *)self stopWatchingForTopic:@"com.apple.mobilemail.dummyTopicToForceServerConnection"];
  }

  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(NSData *)v7 ef_hexString];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_INFO, "#aps-push Received public token '%@'.", &v11, 0xCu);
  }

  [(NSConditionLock *)self->_deviceTokenLock lock];
  if (self->_deviceToken == v7)
  {
    [(NSConditionLock *)self->_deviceTokenLock unlock];
  }

  else
  {
    objc_storeStrong(&self->_deviceToken, a4);
    [(NSConditionLock *)self->_deviceTokenLock unlockWithCondition:self->_deviceToken != 0];
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_60);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __49__MFAPSManager_connection_didReceivePublicToken___block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"MFAPSManagerDeviceTokenChangedNote" object:0];
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = [v4 topic];
  v6 = [v4 userInfo];
  v7 = [v4 wasFromStorage];
  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v16 = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_INFO, "#aps-push received notification on topic '%@', userInfo=%@", &v16, 0x16u);
  }

  if (([v5 hasPrefix:@"com.apple.mobilemail.push."] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"com.apple.mail."))
  {
    v9 = [v6 objectForKey:@"aps"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_15:

      goto LABEL_16;
    }

    v10 = [v9 objectForKey:@"account-id"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [MailAccount accountWithUniqueId:v10];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v9 objectForKey:@"m"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v12 = 0;
        }

        [v11 handlePushNotificationOnMailboxes:v12 missedNotifications:v7];
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v13 = [MEMORY[0x1E699B550] cloudKitAPSTopics];
  v14 = [v13 containsObject:v5];

  if (v14)
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = [v4 userInfo];
    [v9 postNotificationName:*MEMORY[0x1E699B398] object:0 userInfo:v10];
    goto LABEL_14;
  }

LABEL_16:

  v15 = *MEMORY[0x1E69E9840];
}

- (id)copyDiagnosticInformation
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__MFAPSManager_copyDiagnosticInformation__block_invoke;
  v9[3] = &unk_1E7AA26E0;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(queue, v9);
  v6 = v10;
  v7 = v5;

  return v7;
}

void __41__MFAPSManager_copyDiagnosticInformation__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) lock];
  v2 = [*(*(a1 + 32) + 40) condition];
  v11 = [*(*(a1 + 32) + 48) ef_hexString];
  [*(*(a1 + 32) + 40) unlock];
  [*(a1 + 40) appendString:@"\n==== MFAPSManager ====\n"];
  [*(a1 + 40) appendFormat:@"  push service: %@\n", *(*(a1 + 32) + 16)];
  v3 = *(a1 + 40);
  v4 = [*(*(a1 + 32) + 24) allObjects];
  v5 = [v4 componentsJoinedByString:{@", "}];
  [v3 appendFormat:@"  watched topics: {%@}\n", v5];

  v6 = *(a1 + 40);
  v7 = [*(*(a1 + 32) + 32) allObjects];
  v8 = [v7 componentsJoinedByString:{@", "}];
  [v6 appendFormat:@"  ignored topics: {%@}\n", v8];

  if (v2)
  {
    if (v2 != 1)
    {
      __assert_rtn("_tokenConditionString", "MFAPSManager.m", 322, "0 && unknown token condition");
    }

    v9 = @"has token";
  }

  else
  {
    v9 = @"waiting for token";
  }

  v10 = @"<unknown>";
  if (v11)
  {
    v10 = v11;
  }

  [*(a1 + 40) appendFormat:@"  device token (%@): '%@'\n", v9, v10];
}

void __29__MFAPSManager_APSConnection__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "#aps-push Unable to open ApplePushService at %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end