@interface CPLCloudKitCoordinator
+ (BOOL)enableTurboMode;
+ (BOOL)networkBehaviorShouldBeDiscretionaryForForegroundOperation:(BOOL)operation upload:(BOOL)upload metadata:(BOOL)metadata;
+ (BOOL)shouldRegisterClient;
+ (BOOL)usesSandboxEnvironment;
+ (CPLCloudKitCoordinator)sharedCoordinator;
+ (id)newOperationConfiguration;
+ (void)setExecutionIdentifier:(id)identifier;
- (CPLCloudKitCoordinator)init;
- (id)_bestClientToReceivePushNotification:(id)notification;
- (id)_clientsInterestedToReceiveAPushNotificationForZoneID:(id)d;
- (id)_defaultClient;
- (id)databaseForOperationType:(int64_t)type relativeToOperationType:(int64_t)operationType forClient:(id)client;
- (void)_addClient:(id)client interestedInZoneIDs:(id)ds;
- (void)_addClientInterestedInAllZones:(id)zones;
- (void)_addClientToInterestingZones:(id)zones;
- (void)_askNextClient:(id)client toProvideCKAssetWithRecordID:(id)d fieldName:(id)name recordType:(id)type signature:(id)signature bestResponseYet:(unint64_t)yet completionHandler:(id)handler;
- (void)_coordinatorWillBeUsed;
- (void)_coordinatorWontBeUsed;
- (void)_moveToBackgroundIfNecessary;
- (void)_moveToForeground;
- (void)_removeClient:(id)client interestedInSomeZones:(id)zones;
- (void)_removeClientFromInterestingZones:(id)zones;
- (void)_stopWaitingForPushNotifications;
- (void)_waitForClients;
- (void)_waitForClientsIfNecessaryLocked;
- (void)associateMetric:(id)metric forClient:(id)client;
- (void)center:(id)center didReceivePushNotification:(id)notification;
- (void)coordinatorWontBeUsed;
- (void)fetchAccountInfoWithCompletionHandler:(id)handler;
- (void)getLastClientServedWithAPushNotificationWithCompletionHandler:(id)handler;
- (void)getStatusForClient:(id)client completionHandler:(id)handler;
- (void)launchOperation:(id)operation type:(int64_t)type forClient:(id)client;
- (void)noteClient:(id)client isIgnoringChangeInZoneID:(id)d;
- (void)noteClient:(id)client isInForeground:(BOOL)foreground;
- (void)provideCKAssetWithRecordID:(id)d fieldName:(id)name recordType:(id)type signature:(id)signature completionHandler:(id)handler;
- (void)registerClient:(id)client;
- (void)setPushNotificationCenter:(id)center;
- (void)unregisterClient:(id)client;
@end

@implementation CPLCloudKitCoordinator

+ (id)newOperationConfiguration
{
  v2 = objc_alloc_init(CKOperationConfiguration);
  if (qword_1002C51C8)
  {
    v5 = @"X-APPLE-CPL-EXECUTION";
    v6 = qword_1002C51C8;
    v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    [v2 setAdditionalRequestHTTPHeaders:v3];
  }

  return v2;
}

+ (BOOL)enableTurboMode
{
  if ((byte_1002C51D0 & 1) == 0)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    byte_1002C51D1 = [v2 BOOLForKey:@"CPLTurboMode"];

    byte_1002C51D0 = 1;
  }

  return byte_1002C51D1;
}

+ (CPLCloudKitCoordinator)sharedCoordinator
{
  if (qword_1002C51B0 != -1)
  {
    sub_10019C6A0();
  }

  v3 = qword_1002C51A8;

  return v3;
}

- (CPLCloudKitCoordinator)init
{
  v19.receiver = self;
  v19.super_class = CPLCloudKitCoordinator;
  v2 = [(CPLCloudKitCoordinator *)&v19 init];
  if (v2)
  {
    v3 = CPLCopyDefaultSerialQueueAttributes();
    v4 = dispatch_queue_create("com.apple.cpl.cloudkit.coordinator", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    _container = [objc_opt_class() _container];
    container = v2->_container;
    v2->_container = _container;

    _zoneishContainer = [objc_opt_class() _zoneishContainer];
    zoneishContainer = v2->_zoneishContainer;
    v2->_zoneishContainer = _zoneishContainer;

    privateCloudDatabase = [(CKContainer *)v2->_container privateCloudDatabase];
    database = v2->_database;
    v2->_database = privateCloudDatabase;

    sharedCloudDatabase = [(CKContainer *)v2->_container sharedCloudDatabase];
    sharedDatabase = v2->_sharedDatabase;
    v2->_sharedDatabase = sharedCloudDatabase;

    v14 = objc_alloc_init(NSMutableSet);
    clients = v2->_clients;
    v2->_clients = v14;

    v16 = objc_alloc_init(NSMutableSet);
    foregroundClients = v2->_foregroundClients;
    v2->_foregroundClients = v16;

    v2->_shouldForceDroppingPushNotifications = 1;
    [(CPLCloudKitCoordinator *)v2 _waitForClients];
  }

  return v2;
}

- (void)setPushNotificationCenter:(id)center
{
  centerCopy = center;
  if (centerCopy)
  {
    if (self->_pushNotificationCenter)
    {
      sub_10019C6B4(a2, self);
    }

    v7 = centerCopy;
    objc_storeStrong(&self->_pushNotificationCenter, center);
    [(CPLCloudKitPushNotificationCenter *)self->_pushNotificationCenter setDelegate:self];
    [(CPLCloudKitPushNotificationCenter *)self->_pushNotificationCenter setQueue:self->_queue];
    centerCopy = v7;
  }
}

+ (BOOL)usesSandboxEnvironment
{
  if (qword_1002C51C0 != -1)
  {
    sub_10019C788();
  }

  return byte_1002C51B8;
}

- (void)_coordinatorWillBeUsed
{
  if (!self->_hasActivatedCoordinator)
  {
    self->_hasActivatedCoordinator = 1;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = sub_10005189C();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering coordinator for system activities and notifications", buf, 2u);
      }
    }

    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100051BE0;
    v11[3] = &unk_1002749A8;
    objc_copyWeak(&v12, &location);
    v4 = objc_retainBlock(v11);
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_10005189C();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = @"com.apple.aps.photos.cloud.datarepair";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registering for Asset upload requests with port %@", buf, 0xCu);
      }
    }

    container = self->_container;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100051DBC;
    v9[3] = &unk_1002723C8;
    v9[4] = self;
    v7 = v4;
    v10 = v7;
    [CPLCallObserver observeSyncCallOn:container selector:"registerForAssetUploadRequests:machServiceName:" block:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100051DD0;
    v8[3] = &unk_100271F40;
    v8[4] = self;
    [CPLCallObserver observeSyncCallOn:self selector:"_startWaitingForPushNotifications" block:v8];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_waitForClientsIfNecessaryLocked
{
  dispatch_assert_queue_V2(self->_queue);
  if (![(NSMutableSet *)self->_clients count])
  {
    v3 = self->_waitingForClientsGeneration + 1;
    self->_waitingForClientsGeneration = v3;
    v4 = dispatch_time(0, 10000000000);
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100051E84;
    v6[3] = &unk_100271F68;
    v6[4] = self;
    v6[5] = v3;
    dispatch_after(v4, queue, v6);
  }
}

- (void)_waitForClients
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100051FBC;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  v3 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029A4;
  block[3] = &unk_100271E98;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)coordinatorWontBeUsed
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052038;
  block[3] = &unk_100271F40;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)_defaultClient
{
  if ([(NSMutableSet *)self->_clients count]>= 2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = self->_clientsInterestedInAllZones;
    v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      v7 = CPLLibraryIdentifierSystemLibrary;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          cloudKitClientIdentifier = [v9 cloudKitClientIdentifier];
          v11 = cloudKitClientIdentifier;
          if (cloudKitClientIdentifier)
          {
            v12 = v7 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {

            if (!(v11 | v7))
            {
              goto LABEL_19;
            }
          }

          else
          {
            v13 = [cloudKitClientIdentifier isEqual:v7];

            if (v13)
            {
LABEL_19:
              anyObject = v9;

              goto LABEL_20;
            }
          }
        }

        v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  anyObject = [(NSMutableSet *)self->_clientsInterestedInAllZones anyObject];
LABEL_20:

  return anyObject;
}

- (void)_addClientInterestedInAllZones:(id)zones
{
  zonesCopy = zones;
  clientsInterestedInAllZones = self->_clientsInterestedInAllZones;
  v8 = zonesCopy;
  if (!clientsInterestedInAllZones)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_clientsInterestedInAllZones;
    self->_clientsInterestedInAllZones = v6;

    zonesCopy = v8;
    clientsInterestedInAllZones = self->_clientsInterestedInAllZones;
  }

  [(NSMutableSet *)clientsInterestedInAllZones addObject:zonesCopy];
}

- (void)_addClient:(id)client interestedInZoneIDs:(id)ds
{
  clientCopy = client;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = ds;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    p_clientsInterestedInSomeSharedZones = &self->_clientsInterestedInSomeSharedZones;
    p_clientsInterestedInSomePrivateZones = &self->_clientsInterestedInSomePrivateZones;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        ownerName = [v13 ownerName];
        v15 = [ownerName isEqualToString:CKCurrentUserDefaultName];

        if (v15)
        {
          v16 = *p_clientsInterestedInSomePrivateZones;
          v17 = p_clientsInterestedInSomePrivateZones;
          if (*p_clientsInterestedInSomePrivateZones)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v16 = *p_clientsInterestedInSomeSharedZones;
          v17 = p_clientsInterestedInSomeSharedZones;
          if (*p_clientsInterestedInSomeSharedZones)
          {
            goto LABEL_11;
          }
        }

        v18 = objc_alloc_init(NSMutableDictionary);
        v19 = *v17;
        *v17 = v18;

        v16 = *v17;
LABEL_11:
        v20 = v16;
        v21 = [v20 objectForKeyedSubscript:v13];
        if (!v21)
        {
          v21 = objc_alloc_init(NSMutableSet);
          [v20 setObject:v21 forKeyedSubscript:v13];
        }

        [v21 addObject:clientCopy];
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }
}

- (void)_removeClient:(id)client interestedInSomeZones:(id)zones
{
  clientCopy = client;
  zonesCopy = zones;
  if (zonesCopy)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000525F8;
    v18[3] = &unk_1002749D0;
    v19 = clientCopy;
    v8 = v7;
    v20 = v8;
    [zonesCopy enumerateKeysAndObjectsUsingBlock:v18];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [zonesCopy removeObjectForKey:{*(*(&v14 + 1) + 8 * v13), v14}];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v21 count:16];
      }

      while (v11);
    }
  }
}

- (void)_removeClientFromInterestingZones:(id)zones
{
  clientsInterestedInAllZones = self->_clientsInterestedInAllZones;
  zonesCopy = zones;
  [(NSMutableSet *)clientsInterestedInAllZones removeObject:zonesCopy];
  [(CPLCloudKitCoordinator *)self _removeClient:zonesCopy interestedInSomeZones:self->_clientsInterestedInSomePrivateZones];
  [(CPLCloudKitCoordinator *)self _removeClient:zonesCopy interestedInSomeZones:self->_clientsInterestedInSomeSharedZones];
}

- (void)_addClientToInterestingZones:(id)zones
{
  zonesCopy = zones;
  v5 = [zonesCopy interestingZoneIDsForCoordinator:self];
  v6 = v5;
  if (v5)
  {
    [(CPLCloudKitCoordinator *)self _addClient:zonesCopy interestedInZoneIDs:v5];
  }

  else
  {
    [(CPLCloudKitCoordinator *)self _addClientInterestedInAllZones:zonesCopy];
  }
}

- (void)registerClient:(id)client
{
  clientCopy = client;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100052890;
  v10[3] = &unk_1002720E0;
  v10[4] = self;
  v11 = clientCopy;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029A4;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = clientCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)unregisterClient:(id)client
{
  clientCopy = client;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100052A0C;
  v10[3] = &unk_1002720E0;
  v10[4] = self;
  v11 = clientCopy;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029A4;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = clientCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)_moveToBackgroundIfNecessary
{
  if (![(NSMutableSet *)self->_foregroundClients count])
  {
    v3 = dispatch_time(0, 3000000000);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100052B8C;
    block[3] = &unk_100271F40;
    block[4] = self;
    dispatch_after(v3, queue, block);
  }
}

- (void)_moveToForeground
{
  if ([(NSMutableSet *)self->_foregroundClients count]&& ![(CPLCloudKitPushNotificationCenter *)self->_pushNotificationCenter clientIsForeground])
  {
    pushNotificationCenter = self->_pushNotificationCenter;

    [(CPLCloudKitPushNotificationCenter *)pushNotificationCenter setClientIsForeground:1];
  }
}

- (void)noteClient:(id)client isInForeground:(BOOL)foreground
{
  clientCopy = client;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100052D70;
  v12[3] = &unk_100273930;
  v12[4] = self;
  v13 = clientCopy;
  foregroundCopy = foreground;
  v8 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029A4;
  block[3] = &unk_100271E98;
  v16 = v8;
  v9 = queue;
  v10 = clientCopy;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

+ (void)setExecutionIdentifier:(id)identifier
{
  v3 = [identifier copy];
  v4 = qword_1002C51C8;
  qword_1002C51C8 = v3;
}

- (void)launchOperation:(id)operation type:(int64_t)type forClient:(id)client
{
  operationCopy = operation;
  clientCopy = client;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_20;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10019CB1C(operationCopy, a2, self);
      }

      database = [(CPLCloudKitCoordinator *)self database];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sub_10019CC14(operationCopy, a2, self);
      }

      database = [(CPLCloudKitCoordinator *)self container];
    }
  }

  else
  {
    if (type != 2)
    {
      if (type == 3)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10019C834(operationCopy, a2, self);
        }

        zoneishContainer = [(CPLCloudKitCoordinator *)self zoneishContainer];
        privateCloudDatabase = [zoneishContainer privateCloudDatabase];
      }

      else
      {
        if (type != 4)
        {
          goto LABEL_20;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10019C92C(operationCopy, a2, self);
        }

        zoneishContainer = [(CPLCloudKitCoordinator *)self zoneishContainer];
        privateCloudDatabase = [zoneishContainer sharedCloudDatabase];
      }

      v13 = privateCloudDatabase;
      [privateCloudDatabase addOperation:operationCopy];

      goto LABEL_19;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_10019CA24(operationCopy, a2, self);
    }

    database = [(CPLCloudKitCoordinator *)self sharedDatabase];
  }

  zoneishContainer = database;
  [database addOperation:operationCopy];
LABEL_19:

LABEL_20:
}

- (void)associateMetric:(id)metric forClient:(id)client
{
  metricCopy = metric;
  container = [(CPLCloudKitCoordinator *)self container];
  [metricCopy setContainer:container];
}

+ (BOOL)shouldRegisterClient
{
  if (byte_1002C51D2 == 1)
  {
    v2 = byte_1002C51D3;
  }

  else
  {
    v2 = 1;
    byte_1002C51D3 = 1;
    byte_1002C51D2 = 1;
  }

  return v2 & 1;
}

+ (BOOL)networkBehaviorShouldBeDiscretionaryForForegroundOperation:(BOOL)operation upload:(BOOL)upload metadata:(BOOL)metadata
{
  if (operation)
  {
    return 0;
  }

  else
  {
    return [self enableTurboMode] ^ 1;
  }
}

- (id)databaseForOperationType:(int64_t)type relativeToOperationType:(int64_t)operationType forClient:(id)client
{
  clientCopy = client;
  if (type == 1 || type == 3)
  {
    v10 = 1;
  }

  else
  {
    if (!type)
    {
      sub_10019CD0C(a2, self);
    }

    v10 = 0;
  }

  if ((operationType - 1) < 2)
  {
    if (v10)
    {
      [(CPLCloudKitCoordinator *)self database];
    }

    else
    {
      [(CPLCloudKitCoordinator *)self sharedDatabase];
    }
    v10 = ;
  }

  else if ((operationType - 3) >= 2)
  {
    if (!operationType)
    {
      sub_10019CD84(a2, self);
    }
  }

  else
  {
    zoneishContainer = [(CPLCloudKitCoordinator *)self zoneishContainer];
    v12 = zoneishContainer;
    if (v10)
    {
      [zoneishContainer privateCloudDatabase];
    }

    else
    {
      [zoneishContainer sharedCloudDatabase];
    }
    v10 = ;
  }

  return v10;
}

- (void)getStatusForClient:(id)client completionHandler:(id)handler
{
  clientCopy = client;
  handlerCopy = handler;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000534A4;
  v14[3] = &unk_100271DE0;
  v14[4] = self;
  v15 = clientCopy;
  v16 = handlerCopy;
  v9 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029A4;
  block[3] = &unk_100271E98;
  v18 = v9;
  v10 = queue;
  v11 = handlerCopy;
  v12 = clientCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

- (void)getLastClientServedWithAPushNotificationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005388C;
  v10[3] = &unk_100272350;
  v10[4] = self;
  v11 = handlerCopy;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029A4;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = handlerCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)_askNextClient:(id)client toProvideCKAssetWithRecordID:(id)d fieldName:(id)name recordType:(id)type signature:(id)signature bestResponseYet:(unint64_t)yet completionHandler:(id)handler
{
  clientCopy = client;
  dCopy = d;
  nameCopy = name;
  typeCopy = type;
  signatureCopy = signature;
  handlerCopy = handler;
  nextObject = [clientCopy nextObject];
  if (nextObject)
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100053A80;
    v30[3] = &unk_1002749F8;
    yetCopy = yet;
    v36 = handlerCopy;
    v30[4] = self;
    v31 = clientCopy;
    v32 = dCopy;
    v33 = nameCopy;
    v22 = typeCopy;
    v29 = handlerCopy;
    v23 = clientCopy;
    v24 = typeCopy;
    v25 = nameCopy;
    v26 = dCopy;
    v27 = v22;
    v34 = v22;
    v35 = signatureCopy;
    v28 = v27;
    dCopy = v26;
    nameCopy = v25;
    typeCopy = v24;
    clientCopy = v23;
    handlerCopy = v29;
    [nextObject coordinator:self provideCKAssetWithRecordID:v32 fieldName:v33 recordType:v28 signature:v35 completionHandler:v30];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, yet);
  }
}

- (void)provideCKAssetWithRecordID:(id)d fieldName:(id)name recordType:(id)type signature:(id)signature completionHandler:(id)handler
{
  dCopy = d;
  nameCopy = name;
  typeCopy = type;
  signatureCopy = signature;
  handlerCopy = handler;
  queue = self->_queue;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100053CC4;
  v26[3] = &unk_100273DF8;
  v26[4] = self;
  v27 = dCopy;
  v28 = nameCopy;
  v29 = typeCopy;
  v30 = signatureCopy;
  v31 = handlerCopy;
  v18 = v26;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029A4;
  block[3] = &unk_100271E98;
  v33 = v18;
  v19 = queue;
  v20 = handlerCopy;
  v21 = signatureCopy;
  v22 = typeCopy;
  v23 = nameCopy;
  v24 = dCopy;
  v25 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v19, v25);
}

- (id)_clientsInterestedToReceiveAPushNotificationForZoneID:(id)d
{
  dCopy = d;
  ownerName = [dCopy ownerName];
  v6 = [ownerName isEqualToString:CKCurrentUserDefaultName];

  v7 = 48;
  if (v6)
  {
    v7 = 56;
  }

  v8 = [*(&self->super.isa + v7) objectForKeyedSubscript:dCopy];

  return v8;
}

- (id)_bestClientToReceivePushNotification:(id)notification
{
  notificationCopy = notification;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([notificationCopy recordZoneID], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [(CPLCloudKitCoordinator *)self _clientsInterestedToReceiveAPushNotificationForZoneID:v5];
    anyObject = [v7 anyObject];

    if (anyObject)
    {
      goto LABEL_32;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = self->_clientsInterestedInAllZones;
    v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (!v10)
    {

LABEL_31:
      anyObject = [(CPLCloudKitCoordinator *)self _defaultClient];
      goto LABEL_32;
    }

    v11 = v10;
    v29 = notificationCopy;
    v12 = 0;
    v13 = *v31;
    v14 = CPLLibraryIdentifierSystemLibrary;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        if ([v16 isInterestedInZoneID:v6 forCoordinator:self])
        {
          anyObject = v16;

          cloudKitClientIdentifier = [anyObject cloudKitClientIdentifier];
          v18 = cloudKitClientIdentifier;
          if (cloudKitClientIdentifier)
          {
            v19 = v14 == 0;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            v20 = cloudKitClientIdentifier | v14;

            v12 = anyObject;
            if (!v20)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v21 = [cloudKitClientIdentifier isEqual:v14];

            v12 = anyObject;
            if (v21)
            {
              goto LABEL_20;
            }
          }
        }
      }

      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      anyObject = v12;
    }

    while (v11);
LABEL_20:

    notificationCopy = v29;
    if (!anyObject)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v22 = objc_opt_respondsToSelector();
    _defaultClient = [(CPLCloudKitCoordinator *)self _defaultClient];
    anyObject = _defaultClient;
    v6 = 0;
    if ((v22 & 1) != 0 && !_defaultClient)
    {
      databaseScope = [notificationCopy databaseScope];
      if (databaseScope == 3)
      {
        clientsInterestedInSomeSharedZones = self->_clientsInterestedInSomeSharedZones;
      }

      else
      {
        if (databaseScope != 2)
        {
          v6 = 0;
          anyObject = 0;
          goto LABEL_32;
        }

        clientsInterestedInSomeSharedZones = self->_clientsInterestedInSomePrivateZones;
      }

      allValues = [(NSMutableDictionary *)clientsInterestedInSomeSharedZones allValues];
      firstObject = [allValues firstObject];
      anyObject = [firstObject anyObject];

      v6 = 0;
    }
  }

LABEL_32:

  return anyObject;
}

- (void)_stopWaitingForPushNotifications
{
  dispatch_assert_queue_V2(self->_queue);
  pushNotificationCenter = self->_pushNotificationCenter;
  if (self->_shouldForceDroppingPushNotifications)
  {

    [(CPLCloudKitPushNotificationCenter *)pushNotificationCenter unregisterFromPushNotifications];
  }

  else
  {

    [(CPLCloudKitPushNotificationCenter *)pushNotificationCenter stopWaitingForPushNotifications];
  }
}

- (void)noteClient:(id)client isIgnoringChangeInZoneID:(id)d
{
  clientCopy = client;
  dCopy = d;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100054260;
  v14[3] = &unk_1002721A0;
  v15 = clientCopy;
  selfCopy = self;
  v17 = dCopy;
  v9 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029A4;
  block[3] = &unk_100271E98;
  v19 = v9;
  v10 = queue;
  v11 = dCopy;
  v12 = clientCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

- (void)fetchAccountInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  container = self->_container;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000544D4;
  v7[3] = &unk_100274A48;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [CPLCallObserver observeAsyncCallOn:container selector:"accountInfoWithCompletionHandler:" block:v7];
}

- (void)_coordinatorWontBeUsed
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10005189C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unregistering coordinator from system activities and notifications", buf, 2u);
    }
  }

  container = [(CPLCloudKitCoordinator *)self container];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000518E0;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  [CPLCallObserver observeSyncCallOn:container selector:"unregisterFromUploadRequestsWithMachServiceName:" block:v6];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005192C;
  v5[3] = &unk_100271F40;
  v5[4] = self;
  [CPLCallObserver observeSyncCallOn:self selector:"_stopWaitingForPushNotifications" block:v5];
}

- (void)center:(id)center didReceivePushNotification:(id)notification
{
  sub_10002B0F4();
  v30 = v4;
  v31 = v5;
  v7 = v6;
  v9 = v8;
  dispatch_assert_queue_V2(*(v7 + 8));
  if ([*(v7 + 24) count] == 1)
  {
    anyObject = [*(v7 + 24) anyObject];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_10005189C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        cloudKitClientIdentifier = [anyObject cloudKitClientIdentifier];
        sub_100054B6C();
        sub_1000139AC(&_mh_execute_header, v13, v14, "Serving push notification to only client %{public}@: %@", v15, v16, v17, v18, v28);
      }
    }

LABEL_12:
    [anyObject coordinatorDidReceiveAPushNotification:v7];
    goto LABEL_13;
  }

  anyObject = [v7 _bestClientToReceivePushNotification:v9];
  if (anyObject)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = sub_10005189C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        cloudKitClientIdentifier2 = [anyObject cloudKitClientIdentifier];
        sub_100054B6C();
        sub_1000139AC(&_mh_execute_header, v21, v22, "Serving push notification to client %{public}@: %@", v23, v24, v25, v26, v28);
      }
    }

    objc_storeStrong((v7 + 64), anyObject);
    goto LABEL_12;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v27 = sub_10005189C();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Ignoring push notification as there is no client interested: %@", &v28, 0xCu);
    }
  }

LABEL_13:
}

@end