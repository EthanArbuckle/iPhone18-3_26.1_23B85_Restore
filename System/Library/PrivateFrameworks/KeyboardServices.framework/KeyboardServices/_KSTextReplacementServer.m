@interface _KSTextReplacementServer
+ (id)textReplacementServer;
- (BOOL)_cancelPendingUpdateForClient:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_KSTextReplacementManager)textReplacementManager;
- (_KSTextReplacementServer)init;
- (_KSTextReplacementServer)initWithDatabaseDirectoryPath:(id)a3;
- (id)textReplacementEntriesForClient:(id)a3;
- (void)_performCleanup;
- (void)addEntries:(id)a3 removeEntries:(id)a4 forClient:(id)a5 withCompletionHandler:(id)a6;
- (void)buddySetupDidFinish;
- (void)cleanup;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)dealloc;
- (void)queryTextReplacementsWithCallback:(id)a3;
- (void)queryTextReplacementsWithPredicate:(id)a3 callback:(id)a4;
- (void)registerForPushNotifications;
- (void)removeAllEntries;
- (void)requestSync:(unint64_t)a3 withCompletionBlock:(id)a4;
- (void)scheduleSyncTask;
- (void)setTextReplacementManager:(id)a3;
- (void)shutdown;
- (void)start;
@end

@implementation _KSTextReplacementServer

- (_KSTextReplacementManager)textReplacementManager
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(_KSTextReplacementServer *)self isSetupAssistantRunning])
  {
    v3 = KSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[_KSTextReplacementServer textReplacementManager]";
      _os_log_impl(&dword_2557E2000, v3, OS_LOG_TYPE_INFO, "%s  >>> Setup Assistance is running, not loading text replacements", &v12, 0xCu);
    }

    v4 = 0;
  }

  else
  {
    dispatch_assert_queue_V2(self->_workQueue);
    textReplacementManager = self->_textReplacementManager;
    if (!textReplacementManager)
    {
      v6 = [_KSTextReplacementManager alloc];
      v7 = [(_KSTextReplacementServer *)self directoryPath];
      v8 = [(_KSTextReplacementManager *)v6 initWithDirectoryPath:v7];
      v9 = self->_textReplacementManager;
      self->_textReplacementManager = v8;

      textReplacementManager = self->_textReplacementManager;
    }

    v4 = textReplacementManager;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)textReplacementServer
{
  if (textReplacementServer_onceToken != -1)
  {
    +[_KSTextReplacementServer textReplacementServer];
  }

  v3 = textReplacementServer_sharedInstance;

  return v3;
}

- (_KSTextReplacementServer)init
{
  v3 = +[_KSUtilities keyboardServicesDirectory];
  v4 = [(_KSTextReplacementServer *)self initWithDatabaseDirectoryPath:v3];

  return v4;
}

- (_KSTextReplacementServer)initWithDatabaseDirectoryPath:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = _KSTextReplacementServer;
  v6 = [(_KSTextReplacementServer *)&v20 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.keyboardServices.textReplacementServer.storeWorkQueue", v7);
    workQueue = v6->_workQueue;
    v6->_workQueue = v8;

    v10 = [[_KSTRClient alloc] initWithOwner:v6];
    daemonClient = v6->_daemonClient;
    v6->_daemonClient = v10;

    objc_storeStrong(&v6->_directoryPath, a3);
    v12 = objc_alloc(MEMORY[0x277CCAE98]);
    v13 = +[_KSUtilities machServiceNameTextReplacement];
    v14 = [v12 initWithMachServiceName:v13];
    listener = v6->_listener;
    v6->_listener = v14;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    v16 = v6->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58___KSTextReplacementServer_initWithDatabaseDirectoryPath___block_invoke;
    block[3] = &unk_2797F6310;
    v19 = v6;
    dispatch_async(v16, block);
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5.receiver = self;
  v5.super_class = _KSTextReplacementServer;
  [(_KSTextReplacementServer *)&v5 dealloc];
}

- (void)scheduleSyncTask
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___KSTextReplacementServer_scheduleSyncTask__block_invoke;
  block[3] = &unk_2797F6310;
  block[4] = self;
  if (scheduleSyncTask_onceToken != -1)
  {
    dispatch_once(&scheduleSyncTask_onceToken, block);
  }
}

- (void)setTextReplacementManager:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54___KSTextReplacementServer_setTextReplacementManager___block_invoke;
  v7[3] = &unk_2797F71B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (void)cleanup
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35___KSTextReplacementServer_cleanup__block_invoke;
  block[3] = &unk_2797F6310;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_performCleanup
{
  v8 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = KSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[_KSTextReplacementServer _performCleanup]";
    _os_log_impl(&dword_2557E2000, v3, OS_LOG_TYPE_INFO, "%s  Cleaning up all resources", &v6, 0xCu);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"_KSTRShouldCleanupResources" object:0];

  [(_KSTextReplacementServer *)self setTextReplacementManager:0];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v6 = *MEMORY[0x277D85DE8];
  [(NSXPCListener *)self->_listener resume];
  v2 = KSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[_KSTextReplacementServer start]";
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  TextReplacementServer accepting request now", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)shutdown
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36___KSTextReplacementServer_shutdown__block_invoke;
  block[3] = &unk_2797F6310;
  block[4] = self;
  dispatch_async(workQueue, block);
  [(NSXPCListener *)self->_listener invalidate];
}

- (void)addEntries:(id)a3 removeEntries:(id)a4 forClient:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12)
  {
    v14 = [v12 generation];
    workQueue = self->_workQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __85___KSTextReplacementServer_addEntries_removeEntries_forClient_withCompletionHandler___block_invoke;
    v16[3] = &unk_2797F7558;
    v17 = v10;
    v18 = v11;
    v22 = v14;
    v19 = v12;
    v20 = self;
    v21 = v13;
    dispatch_async(workQueue, v16);
  }
}

- (void)removeAllEntries
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__5;
  v5[4] = __Block_byref_object_dispose__5;
  v6 = os_transaction_create();
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44___KSTextReplacementServer_removeAllEntries__block_invoke;
  v4[3] = &unk_2797F70F0;
  v4[4] = self;
  v4[5] = v5;
  dispatch_async(workQueue, v4);
  _Block_object_dispose(v5, 8);
}

- (void)requestSync:(unint64_t)a3 withCompletionBlock:(id)a4
{
  v6 = a4;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60___KSTextReplacementServer_requestSync_withCompletionBlock___block_invoke;
  block[3] = &unk_2797F6750;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(workQueue, block);
}

- (BOOL)_cancelPendingUpdateForClient:(id)a3
{
  if (a3)
  {
    [a3 cancel];
  }

  return a3 != 0;
}

- (id)textReplacementEntriesForClient:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_not_V2(workQueue);
  LODWORD(workQueue) = [v5 hasReadAccess];

  if (workQueue)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = self->_workQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60___KSTextReplacementServer_textReplacementEntriesForClient___block_invoke;
    v12[3] = &unk_2797F71B8;
    v12[4] = self;
    v8 = v6;
    v13 = v8;
    dispatch_sync(v7, v12);
    v9 = v13;
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (void)queryTextReplacementsWithCallback:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62___KSTextReplacementServer_queryTextReplacementsWithCallback___block_invoke;
  v7[3] = &unk_2797F66D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (void)queryTextReplacementsWithPredicate:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72___KSTextReplacementServer_queryTextReplacementsWithPredicate_callback___block_invoke;
  block[3] = &unk_2797F67C8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(workQueue, block);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() isBlackListed:{objc_msgSend(v7, "effectiveUserIdentifier")}];
  if (v8)
  {
    [v7 invalidate];
  }

  else
  {
    v9 = [[_KSTRClient alloc] initWithOwner:self forConnection:v7];
    v10 = _KSTextReplacementServerInterface();
    [v7 setExportedInterface:v10];

    [v7 setExportedObject:v9];
    objc_initWeak(&location, v7);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __63___KSTextReplacementServer_listener_shouldAcceptNewConnection___block_invoke;
    v15 = &unk_2797F7140;
    objc_copyWeak(&v16, &location);
    [v7 setInvalidationHandler:&v12];
    [v7 resume];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v8 ^ 1;
}

- (void)registerForPushNotifications
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEE9F0];
  v4 = objc_alloc(MEMORY[0x277CEEA10]);
  v5 = dispatch_get_global_queue(0, 0);
  v6 = [v4 initWithEnvironmentName:v3 namedDelegatePort:@"com.apple.keyboardServices.textReplacementServer.aps" queue:v5];
  pushConnection = self->_pushConnection;
  self->_pushConnection = v6;

  [(APSConnection *)self->_pushConnection setDelegate:self];
  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 bundleIdentifier];

  if (![v9 length])
  {
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 executablePath];
    v12 = [v11 lastPathComponent];

    v9 = v12;
  }

  v13 = [@"com.apple.icloud-container." stringByAppendingString:v9];
  v14 = self->_pushConnection;
  v17[0] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [(APSConnection *)v14 setEnabledTopics:v15];

  NSLog(&cfstr_WaitingForPush.isa, v13);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v5 = a4;
  v8 = [v5 userInfo];
  v6 = [MEMORY[0x277CBC4C0] notificationFromRemoteNotificationDictionary:v8];
  v7 = [v5 topic];

  NSLog(&cfstr_ApsPushReceive.isa, v7, v6);
  [(_KSTextReplacementServer *)self requestSync:1 withCompletionBlock:&__block_literal_global_81];
}

- (void)buddySetupDidFinish
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = KSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[_KSTextReplacementServer buddySetupDidFinish]";
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  >>> buddysetup did finish", &v4, 0xCu);
  }

  CFPreferencesAppSynchronize(@"com.apple.keyboard");
  v3 = *MEMORY[0x277D85DE8];
}

@end