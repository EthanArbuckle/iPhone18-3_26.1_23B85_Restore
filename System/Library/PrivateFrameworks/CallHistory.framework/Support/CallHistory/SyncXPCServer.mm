@interface SyncXPCServer
- (BOOL)canAccessListenerInterfaceSelector:(SEL)selector;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CloudKit)cloudKit;
- (SyncEngine)syncEngine;
- (SyncXPCServer)init;
- (TransactionLog)transactionLog;
- (void)activateCloudKit;
- (void)activateDataStoreMaintenance;
- (void)appendTransactions:(id)transactions;
- (void)bootUp:(id)up;
- (void)configurationAggregator:(id)aggregator didChangeConfiguration:(id)configuration;
- (void)deactivateCloudKit;
- (void)deactivateDataStoreMaintenance;
- (void)dealloc;
- (void)moveCallsFromTempDatabase;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)resetCallTimers:(id)timers;
- (void)setCloudKit:(id)kit;
- (void)setSyncEngine:(id)engine;
- (void)setTransactionLog:(id)log;
- (void)sync:(id)sync;
- (void)updateCloudKitActivation;
- (void)updateDataStoreMaintenance;
@end

@implementation SyncXPCServer

- (SyncXPCServer)init
{
  v30.receiver = self;
  v30.super_class = SyncXPCServer;
  v2 = [(SyncXPCServer *)&v30 initWithDomain:"SyncXPCServer"];
  if (v2)
  {
    v3 = objc_alloc_init(CHFeatureFlags);
    featureFlags = v2->_featureFlags;
    v2->_featureFlags = v3;

    v2->_accessorLock._os_unfair_lock_opaque = 0;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.CallHistory.CallHistorySyncHelper.queue", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = objc_alloc_init(CHSystemConfiguration);
    v9 = objc_alloc_init(CHUserConfiguration);
    v10 = [CHConfigurationAggregator alloc];
    v31[0] = v8;
    v31[1] = v9;
    v11 = [NSArray arrayWithObjects:v31 count:2];
    v12 = [v10 initWithConfigurations:v11 queue:v2->_queue];
    configurationAggregator = v2->_configurationAggregator;
    v2->_configurationAggregator = v12;

    [(CHConfigurationAggregator *)v2->_configurationAggregator setDelegate:v2];
    v14 = +[CallHistoryDBClientHandle createForServer];
    database = v2->_database;
    v2->_database = v14;

    manager = [(CallHistoryDBClientHandle *)v2->_database manager];
    [manager addObserver:v2 forKeyPath:kCallDBManagerDataStoreType options:5 context:&off_100051BE0];

    v17 = objc_alloc_init(CHInteraction);
    interactionManager = v2->_interactionManager;
    v2->_interactionManager = v17;

    v19 = [[MergeTransactions alloc] initWithDatabase:v2->_database andInteractionManager:v2->_interactionManager];
    merger = v2->_merger;
    v2->_merger = v19;

    v21 = [[CHIDSServiceDelegate alloc] initWithDatabase:v2->_database];
    idsService = v2->_idsService;
    v2->_idsService = v21;

    v23 = [NSXPCListener alloc];
    v24 = [v23 initWithMachServiceName:kSyncHelperServiceIdentifier];
    listener = v2->_listener;
    v2->_listener = v24;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v26 = +[NSDistributedNotificationCenter defaultCenter];
    [v26 postNotificationName:@"kCallHistorySyncHelperReadyNotification" object:0 userInfo:0];

    logHandle = [(SyncXPCServer *)v2 logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Call History sync helper is ready", v29, 2u);
    }
  }

  return v2;
}

- (void)dealloc
{
  manager = [(CallHistoryDBClientHandle *)self->_database manager];
  [manager removeObserver:self forKeyPath:kCallDBManagerDataStoreType context:&off_100051BE0];

  v4.receiver = self;
  v4.super_class = SyncXPCServer;
  [(SyncXPCServer *)&v4 dealloc];
}

- (CloudKit)cloudKit
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_cloudKit;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)setCloudKit:(id)kit
{
  kitCopy = kit;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_cloudKit != kitCopy)
  {
    objc_storeStrong(&self->_cloudKit, kit);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (SyncEngine)syncEngine
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_syncEngine;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)setSyncEngine:(id)engine
{
  engineCopy = engine;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_syncEngine != engineCopy)
  {
    objc_storeStrong(&self->_syncEngine, engine);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (TransactionLog)transactionLog
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_transactionLog;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)setTransactionLog:(id)log
{
  logCopy = log;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_transactionLog != logCopy)
  {
    objc_storeStrong(&self->_transactionLog, log);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)activateCloudKit
{
  os_unfair_lock_lock(&self->_accessorLock);
  if (!self->_cloudKit)
  {
    v3 = 0;
    v4 = +[CloudKit create];
    cloudKit = self->_cloudKit;
    self->_cloudKit = v4;
    v6 = v4;

    v7 = [[TransactionLog alloc] initWithDescription:"TransactionLog-XPC"];
    transactionLog = self->_transactionLog;
    self->_transactionLog = v7;
    v9 = v7;

    v10 = [SyncEngine alloc];
    v11 = objc_alloc_init(_TtC21CallHistorySyncHelper8AutoSync);
    v12 = [(SyncEngine *)v10 initWithCloudKit:v6 withTransactionLog:v9 withAutoSync:v11];
    syncEngine = self->_syncEngine;
    self->_syncEngine = v12;

    v14 = objc_alloc_init(CHPushConnectionDelegate);
    pushDelegate = self->_pushDelegate;
    self->_pushDelegate = v14;
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)deactivateCloudKit
{
  os_unfair_lock_lock(&self->_accessorLock);
  pushDelegate = self->_pushDelegate;
  self->_pushDelegate = 0;

  syncEngine = self->_syncEngine;
  self->_syncEngine = 0;

  transactionLog = self->_transactionLog;
  self->_transactionLog = 0;

  cloudKit = self->_cloudKit;
  self->_cloudKit = 0;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)updateCloudKitActivation
{
  configurationAggregator = [(SyncXPCServer *)self configurationAggregator];
  if ([configurationAggregator isCloudKitEnabled])
  {
    database = [(SyncXPCServer *)self database];
    manager = [database manager];
    dataStoreType = [manager dataStoreType];

    if (dataStoreType == 1)
    {
      logHandle = [(SyncXPCServer *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Data store changed to permanent; activating iCloud.", buf, 2u);
      }

      [(SyncXPCServer *)self activateCloudKit];
      return;
    }
  }

  else
  {
  }

  logHandle2 = [(SyncXPCServer *)self logHandle];
  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Data store changed to temporary; deactivating iCloud.", v9, 2u);
  }

  [(SyncXPCServer *)self deactivateCloudKit];
}

- (void)activateDataStoreMaintenance
{
  obj = self;
  objc_sync_enter(obj);
  if ([(CHFeatureFlags *)obj->_featureFlags keepCallsEnabled])
  {
    v2 = obj;
    if (obj->_dataStoreMaintenanceController)
    {
      goto LABEL_7;
    }

    database = objc_alloc_init(CHUserConfiguration);
    v4 = [CHDataStoreMaintenanceController alloc];
    dbPrivacyPruner = [(SyncXPCServer *)obj database];
    v6 = [(CHDataStoreMaintenanceController *)v4 initWithDataStore:dbPrivacyPruner configuration:database];
    dataStoreMaintenanceController = obj->_dataStoreMaintenanceController;
    obj->_dataStoreMaintenanceController = v6;
  }

  else
  {
    v2 = obj;
    if (obj->_dbPrivacyPruner)
    {
      goto LABEL_7;
    }

    v8 = [CallHistoryDBPrivacyPruner alloc];
    database = [(SyncXPCServer *)obj database];
    v9 = [(CallHistoryDBPrivacyPruner *)v8 initWithDBHandle:database interactionManager:obj->_interactionManager];
    dbPrivacyPruner = obj->_dbPrivacyPruner;
    obj->_dbPrivacyPruner = v9;
  }

  v2 = obj;
LABEL_7:
  objc_sync_exit(v2);
}

- (void)deactivateDataStoreMaintenance
{
  obj = self;
  objc_sync_enter(obj);
  dataStoreMaintenanceController = obj->_dataStoreMaintenanceController;
  obj->_dataStoreMaintenanceController = 0;

  dbPrivacyPruner = obj->_dbPrivacyPruner;
  obj->_dbPrivacyPruner = 0;

  objc_sync_exit(obj);
}

- (void)updateDataStoreMaintenance
{
  database = [(SyncXPCServer *)self database];
  manager = [database manager];
  dataStoreType = [manager dataStoreType];

  logHandle = [(SyncXPCServer *)self logHandle];
  v7 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
  if (dataStoreType == 1)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Data store changed to permanent; activating data store maintenance.", buf, 2u);
    }

    [(SyncXPCServer *)self activateDataStoreMaintenance];
  }

  else
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Data store changed to temporary; deactivating data store maintenance.", v8, 2u);
    }

    [(SyncXPCServer *)self deactivateDataStoreMaintenance];
  }
}

- (BOOL)canAccessListenerInterfaceSelector:(SEL)selector
{
  database = [(SyncXPCServer *)self database];
  manager = [database manager];
  if ([manager dataStoreType] == 1 || sel_isEqual(selector, "appendTransactions:"))
  {

    return 1;
  }

  isEqual = sel_isEqual(selector, "bootUp:");

  if (isEqual)
  {
    return 1;
  }

  logHandle = [(SyncXPCServer *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(selector);
    v11 = +[NSXPCConnection currentConnection];
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Device has not been unlocked since boot; rejecting access to %{public}@ from connection %{public}@", &v12, 0x16u);
  }

  return 0;
}

- (void)bootUp:(id)up
{
  upCopy = up;
  if ([(SyncXPCServer *)self canAccessListenerInterfaceSelector:a2])
  {
    manager = [(CallHistoryDBClientHandle *)self->_database manager];
    [manager createDataStore];

    manager2 = [(CallHistoryDBClientHandle *)self->_database manager];
    dataStoreType = [manager2 dataStoreType];

    if (dataStoreType == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * (dataStoreType != 0);
    }

    logHandle = [(SyncXPCServer *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_100027298(v9);
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "BootUp result: %{public}@", &v12, 0xCu);
    }

    upCopy[2](upCopy, v9);
  }
}

- (void)moveCallsFromTempDatabase
{
  if ([(SyncXPCServer *)self canAccessListenerInterfaceSelector:a2])
  {
    manager = [(CallHistoryDBClientHandle *)self->_database manager];
    [manager moveCallsFromTempDatabase];
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  logHandle = [(SyncXPCServer *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    processIdentifier = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Accepting new connection from pid %d", buf, 8u);
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.CallHistory.sync.allow"];
  if (!v7)
  {
    logHandle2 = [(SyncXPCServer *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
    {
      sub_100034C20(logHandle2);
    }

    goto LABEL_14;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    logHandle2 = [(SyncXPCServer *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "Entitlement is not a BOOLean";
LABEL_13:
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (([v7 BOOLValue] & 1) == 0)
  {
    logHandle2 = [(SyncXPCServer *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "Entitlement found but expected value YES";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  logHandle2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SyncProtocol];
  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
  [logHandle2 setClasses:v10 forSelector:"appendTransactions:" argumentIndex:0 ofReply:0];
  [connectionCopy setExportedInterface:logHandle2];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  v11 = 1;
LABEL_15:

  return v11;
}

- (void)appendTransactions:(id)transactions
{
  transactionsCopy = transactions;
  if ([(SyncXPCServer *)self canAccessListenerInterfaceSelector:a2])
  {
    logHandle = [(SyncXPCServer *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = [transactionsCopy count];
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Appending %lu transactions", &v14, 0xCu);
    }

    if (transactionsCopy && [transactionsCopy count])
    {
      logHandle2 = DeserializeTransactions();
      interactionManager = self->_interactionManager;
      HandleInteractionsForDeserializedTransactions();
      [(CHIDSServiceDelegate *)self->_idsService update:transactionsCopy];
      if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
      {
        v9 = +[CHSpotlightIndexManager sharedInstance];
        [v9 indexTransactions:transactionsCopy];
      }

      cloudKit = [(SyncXPCServer *)self cloudKit];
      isActive = [cloudKit isActive];

      if (isActive)
      {
        transactionLog = [(SyncXPCServer *)self transactionLog];
        [transactionLog append:transactionsCopy];
      }

      else
      {
        transactionLog = [(SyncXPCServer *)self logHandle];
        if (os_log_type_enabled(transactionLog, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [transactionsCopy count];
          v14 = 134217984;
          v15 = v13;
          _os_log_impl(&_mh_execute_header, transactionLog, OS_LOG_TYPE_DEFAULT, "Dropping %lu transactions because no iCloud account is active", &v14, 0xCu);
        }
      }
    }

    else
    {
      logHandle2 = [(SyncXPCServer *)self logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "No transactions!", &v14, 2u);
      }
    }
  }
}

- (void)sync:(id)sync
{
  syncCopy = sync;
  if ([(SyncXPCServer *)self canAccessListenerInterfaceSelector:a2])
  {
    syncEngine = [(SyncXPCServer *)self syncEngine];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100028778;
    v7[3] = &unk_100051BF0;
    v7[4] = self;
    v8 = syncCopy;
    [syncEngine begin:v7];
  }
}

- (void)resetCallTimers:(id)timers
{
  timersCopy = timers;
  if ([(SyncXPCServer *)self canAccessListenerInterfaceSelector:a2])
  {
    timersCopy[2](timersCopy, [(CallHistoryDBClientHandle *)self->_database resetAllTimers]);
  }
}

- (void)configurationAggregator:(id)aggregator didChangeConfiguration:(id)configuration
{
  v5 = [(SyncXPCServer *)self queue:aggregator];
  dispatch_assert_queue_V2(v5);

  [(SyncXPCServer *)self updateCloudKitActivation];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  logHandle = [(SyncXPCServer *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v20 = pathCopy;
    v21 = 2114;
    v22 = objectCopy;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Received a key-value observing notification for key path (%{public}@), object (%{public}@).", buf, 0x16u);
  }

  if (context == &off_100051BE0)
  {
    v14 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeKindKey];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 unsignedIntegerValue] == 1)
    {
      database = [(SyncXPCServer *)self database];
      manager = [database manager];

      if (manager == objectCopy)
      {
        if ([pathCopy isEqualToString:kCallDBManagerDataStoreType])
        {
          queue = [(SyncXPCServer *)self queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100028B44;
          block[3] = &unk_100050FA0;
          block[4] = self;
          dispatch_async(queue, block);
        }
      }
    }
  }
}

@end