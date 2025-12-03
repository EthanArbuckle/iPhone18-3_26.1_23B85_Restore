@interface MFAPSManager
+ (Class)APSConnection;
+ (id)sharedManager;
- (MFAPSManager)init;
- (id)copyDeviceToken;
- (id)copyDiagnosticInformation;
- (void)_startAPS_nts;
- (void)_stopAPS_nts;
- (void)connect;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)dealloc;
- (void)startWatchingForTopic:(id)topic;
- (void)stopWatchingForTopic:(id)topic;
- (void)swapTopic:(id)topic forNewTopic:(id)newTopic;
@end

@implementation MFAPSManager

+ (id)sharedManager
{
  if (![MFUserAgent() canRegisterForAPSPush])
  {
    return 0;
  }

  if (sharedManager_onceToken != -1)
  {
    +[MFAPSManager sharedManager];
  }

  return sharedManager___sharedInstance;
}

MFAPSManager *__29__MFAPSManager_sharedManager__block_invoke()
{
  result = objc_alloc_init(MFAPSManager);
  sharedManager___sharedInstance = result;
  return result;
}

- (MFAPSManager)init
{
  v4.receiver = self;
  v4.super_class = MFAPSManager;
  v2 = [(MFAPSManager *)&v4 init];
  if (v2)
  {
    v2->_queue = dispatch_queue_create("com.apple.message.apsManager", 0);
    v2->_watchedTopics = objc_alloc_init(MEMORY[0x277CCA940]);
    v2->_unwatchedTopics = objc_alloc_init(MEMORY[0x277CBEB58]);
    v2->_deviceTokenLock = [objc_alloc(MEMORY[0x277D24EF0]) initWithCondition:0];
    [objc_msgSend(MEMORY[0x277D24F10] "sharedController")];
  }

  return v2;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277D24F10] "sharedController")];

  v3.receiver = self;
  v3.super_class = MFAPSManager;
  [(MFAPSManager *)&v3 dealloc];
}

+ (Class)APSConnection
{
  if (APSConnection_onceToken != -1)
  {
    +[MFAPSManager APSConnection];
  }

  return APSConnection_klass;
}

void __29__MFAPSManager_APSConnection__block_invoke()
{
  v0 = [GSSystemRootDirectory() stringByAppendingPathComponent:@"System/Library/PrivateFrameworks/ApplePushService.framework"];
  v1 = [MEMORY[0x277CCA8D8] bundleWithPath:v0];
  if (v1)
  {
    APSConnection_klass = [v1 classNamed:@"APSConnection"];
  }

  else
  {
    v2 = MFLogGeneral();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __29__MFAPSManager_APSConnection__block_invoke_cold_1(v0, v2);
    }
  }
}

- (void)_startAPS_nts
{
  dispatch_assert_queue_V2(self->_queue);
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_258B7A000, v2, OS_LOG_TYPE_INFO, "#aps-push Push service not supported.", v3, 2u);
  }
}

- (void)_stopAPS_nts
{
  dispatch_assert_queue_V2(self->_queue);

  self->_pushService = 0;
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_258B7A000, v3, OS_LOG_TYPE_INFO, "#aps-push Stopped MFAPSManager.", v4, 2u);
  }
}

- (void)startWatchingForTopic:(id)topic
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__MFAPSManager_startWatchingForTopic___block_invoke;
  v4[3] = &unk_2798B2290;
  v4[4] = self;
  v4[5] = topic;
  dispatch_async(queue, v4);
}

uint64_t __38__MFAPSManager_startWatchingForTopic___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
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
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_258B7A000, v3, OS_LOG_TYPE_INFO, "#aps-push Start watching topic '%@'", &v7, 0xCu);
  }

  result = [*(*(a1 + 32) + 16) setEnabledTopics:objc_msgSend(*(*(a1 + 32) + 24) ignoredTopics:{"allObjects"), objc_msgSend(*(*(a1 + 32) + 32), "allObjects")}];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stopWatchingForTopic:(id)topic
{
  if (topic)
  {
    queue = self->_queue;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __37__MFAPSManager_stopWatchingForTopic___block_invoke;
    v4[3] = &unk_2798B2290;
    v4[4] = self;
    v4[5] = topic;
    dispatch_async(queue, v4);
  }
}

uint64_t __37__MFAPSManager_stopWatchingForTopic___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) countForObject:*(a1 + 40)];
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  if (v2 == 1)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_258B7A000, v3, OS_LOG_TYPE_INFO, "#aps-push Stop watching topic '%@'", &v7, 0xCu);
    }

    [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  }

  result = [*(*(a1 + 32) + 16) setEnabledTopics:objc_msgSend(*(*(a1 + 32) + 24) ignoredTopics:{"allObjects"), objc_msgSend(*(*(a1 + 32) + 32), "allObjects")}];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)swapTopic:(id)topic forNewTopic:(id)newTopic
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__MFAPSManager_swapTopic_forNewTopic___block_invoke;
  block[3] = &unk_2798B22B8;
  block[4] = topic;
  block[5] = newTopic;
  block[6] = self;
  dispatch_async(queue, block);
}

uint64_t __38__MFAPSManager_swapTopic_forNewTopic___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_258B7A000, v2, OS_LOG_TYPE_INFO, "#aps-push Swapping registered topic '%@' for topic '%@'", &v8, 0x16u);
  }

  v5 = [*(a1[6] + 24) containsObject:a1[4]];
  if (v5)
  {
    [*(a1[6] + 24) removeObject:a1[4]];
    [*(a1[6] + 24) addObject:a1[5]];
  }

  result = [*(a1[6] + 32) containsObject:a1[4]];
  if (result)
  {
    [*(a1[6] + 32) removeObject:a1[4]];
    [*(a1[6] + 32) addObject:a1[5]];
LABEL_8:
    result = [*(a1[6] + 16) setEnabledTopics:objc_msgSend(*(a1[6] + 24) ignoredTopics:{"allObjects"), objc_msgSend(*(a1[6] + 32), "allObjects")}];
    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)connect
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__MFAPSManager_connect__block_invoke;
  block[3] = &unk_2798B12F0;
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
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__MFAPSManager_copyDeviceToken__block_invoke;
    block[3] = &unk_2798B12F0;
    block[4] = self;
    dispatch_sync(queue, block);
  }

  if (!-[NSConditionLock lockWhenCondition:beforeDate:](self->_deviceTokenLock, "lockWhenCondition:beforeDate:", 1, [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0]))
  {
    return 0;
  }

  v4 = self->_deviceToken;
  [(NSConditionLock *)self->_deviceTokenLock unlock];
  return v4;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  v12 = *MEMORY[0x277D85DE8];
  if (token && [(NSCountedSet *)self->_watchedTopics containsObject:@"com.apple.mobilemail.dummyTopicToForceServerConnection"])
  {
    [(MFAPSManager *)self stopWatchingForTopic:@"com.apple.mobilemail.dummyTopicToForceServerConnection"];
  }

  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    ef_hexString = [token ef_hexString];
    _os_log_impl(&dword_258B7A000, v6, OS_LOG_TYPE_INFO, "#aps-push Received public token '%@'.", &v10, 0xCu);
  }

  [(NSConditionLock *)self->_deviceTokenLock lock];
  deviceToken = self->_deviceToken;
  if (deviceToken == token)
  {
    [(NSConditionLock *)self->_deviceTokenLock unlock];
  }

  else
  {

    tokenCopy = token;
    self->_deviceToken = tokenCopy;
    [(NSConditionLock *)self->_deviceTokenLock unlockWithCondition:tokenCopy != 0];
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_29);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __49__MFAPSManager_connection_didReceivePublicToken___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];

  return [v0 postNotificationName:@"MFAPSManagerDeviceTokenChangedNote" object:0];
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  topic = [message topic];
  userInfo = [message userInfo];
  wasFromStorage = [message wasFromStorage];
  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v15 = 138412546;
    v16 = topic;
    v17 = 2112;
    v18 = userInfo;
    _os_log_impl(&dword_258B7A000, v8, OS_LOG_TYPE_INFO, "#aps-push received notification on topic '%@', userInfo=%@", &v15, 0x16u);
  }

  if (([topic hasPrefix:@"com.apple.mobilemail.push."] & 1) != 0 || objc_msgSend(topic, "hasPrefix:", @"com.apple.mail."))
  {
    v9 = [userInfo objectForKey:@"aps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 objectForKey:@"account-id"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [MEMORY[0x277D28490] accountWithUniqueId:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v9 objectForKey:@"m"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          [v11 handlePushNotificationOnMailboxes:v13 missedNotifications:wasFromStorage];
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)copyDiagnosticInformation
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__MFAPSManager_copyDiagnosticInformation__block_invoke;
  v6[3] = &unk_2798B2290;
  v6[4] = self;
  v6[5] = v3;
  dispatch_sync(queue, v6);
  return v3;
}

uint64_t __41__MFAPSManager_copyDiagnosticInformation__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) lock];
  v2 = [*(*(a1 + 32) + 40) condition];
  v3 = [*(*(a1 + 32) + 48) ef_hexString];
  [*(*(a1 + 32) + 40) unlock];
  [*(a1 + 40) appendString:@"\n==== MFAPSManager ====\n"];
  [*(a1 + 40) appendFormat:@"  push service: %@\n", *(*(a1 + 32) + 16)];
  [*(a1 + 40) appendFormat:@"  watched topics: {%@}\n", objc_msgSend(objc_msgSend(*(*(a1 + 32) + 24), "allObjects"), "componentsJoinedByString:", @", ")];
  [*(a1 + 40) appendFormat:@"  ignored topics: {%@}\n", objc_msgSend(objc_msgSend(*(*(a1 + 32) + 32), "allObjects"), "componentsJoinedByString:", @", ")];
  if (v2)
  {
    if (v2 != 1)
    {
      __41__MFAPSManager_copyDiagnosticInformation__block_invoke_cold_1();
    }

    v4 = @"has token";
  }

  else
  {
    v4 = @"waiting for token";
  }

  v5 = @"<unknown>";
  if (v3)
  {
    v5 = v3;
  }

  return [*(a1 + 40) appendFormat:@"  device token (%@): '%@'\n", v4, v5];
}

void __29__MFAPSManager_APSConnection__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_258B7A000, a2, OS_LOG_TYPE_ERROR, "#aps-push Unable to open ApplePushService at %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end