@interface CPLCloudKitCoordinator
+ (BOOL)enableTurboMode;
+ (BOOL)networkBehaviorShouldBeDiscretionaryForForegroundOperation:(BOOL)a3 upload:(BOOL)a4 metadata:(BOOL)a5;
+ (BOOL)shouldRegisterClient;
+ (BOOL)usesSandboxEnvironment;
+ (CPLCloudKitCoordinator)sharedCoordinator;
+ (id)newOperationConfiguration;
+ (void)setExecutionIdentifier:(id)a3;
- (CPLCloudKitCoordinator)init;
- (id)_bestClientToReceivePushNotification:(id)a3;
- (id)_clientsInterestedToReceiveAPushNotificationForZoneID:(id)a3;
- (id)_defaultClient;
- (id)databaseForOperationType:(int64_t)a3 relativeToOperationType:(int64_t)a4 forClient:(id)a5;
- (void)_addClient:(id)a3 interestedInZoneIDs:(id)a4;
- (void)_addClientInterestedInAllZones:(id)a3;
- (void)_addClientToInterestingZones:(id)a3;
- (void)_askNextClient:(id)a3 toProvideCKAssetWithRecordID:(id)a4 fieldName:(id)a5 recordType:(id)a6 signature:(id)a7 bestResponseYet:(unint64_t)a8 completionHandler:(id)a9;
- (void)_coordinatorWillBeUsed;
- (void)_coordinatorWontBeUsed;
- (void)_moveToBackgroundIfNecessary;
- (void)_moveToForeground;
- (void)_removeClient:(id)a3 interestedInSomeZones:(id)a4;
- (void)_removeClientFromInterestingZones:(id)a3;
- (void)_stopWaitingForPushNotifications;
- (void)_waitForClients;
- (void)_waitForClientsIfNecessaryLocked;
- (void)associateMetric:(id)a3 forClient:(id)a4;
- (void)center:(id)a3 didReceivePushNotification:(id)a4;
- (void)coordinatorWontBeUsed;
- (void)fetchAccountInfoWithCompletionHandler:(id)a3;
- (void)getLastClientServedWithAPushNotificationWithCompletionHandler:(id)a3;
- (void)getStatusForClient:(id)a3 completionHandler:(id)a4;
- (void)launchOperation:(id)a3 type:(int64_t)a4 forClient:(id)a5;
- (void)noteClient:(id)a3 isIgnoringChangeInZoneID:(id)a4;
- (void)noteClient:(id)a3 isInForeground:(BOOL)a4;
- (void)provideCKAssetWithRecordID:(id)a3 fieldName:(id)a4 recordType:(id)a5 signature:(id)a6 completionHandler:(id)a7;
- (void)registerClient:(id)a3;
- (void)setPushNotificationCenter:(id)a3;
- (void)unregisterClient:(id)a3;
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

    v6 = [objc_opt_class() _container];
    container = v2->_container;
    v2->_container = v6;

    v8 = [objc_opt_class() _zoneishContainer];
    zoneishContainer = v2->_zoneishContainer;
    v2->_zoneishContainer = v8;

    v10 = [(CKContainer *)v2->_container privateCloudDatabase];
    database = v2->_database;
    v2->_database = v10;

    v12 = [(CKContainer *)v2->_container sharedCloudDatabase];
    sharedDatabase = v2->_sharedDatabase;
    v2->_sharedDatabase = v12;

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

- (void)setPushNotificationCenter:(id)a3
{
  v6 = a3;
  if (v6)
  {
    if (self->_pushNotificationCenter)
    {
      sub_10019C6B4(a2, self);
    }

    v7 = v6;
    objc_storeStrong(&self->_pushNotificationCenter, a3);
    [(CPLCloudKitPushNotificationCenter *)self->_pushNotificationCenter setDelegate:self];
    [(CPLCloudKitPushNotificationCenter *)self->_pushNotificationCenter setQueue:self->_queue];
    v6 = v7;
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
          v10 = [v9 cloudKitClientIdentifier];
          v11 = v10;
          if (v10)
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
            v13 = [v10 isEqual:v7];

            if (v13)
            {
LABEL_19:
              v14 = v9;

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

  v14 = [(NSMutableSet *)self->_clientsInterestedInAllZones anyObject];
LABEL_20:

  return v14;
}

- (void)_addClientInterestedInAllZones:(id)a3
{
  v4 = a3;
  clientsInterestedInAllZones = self->_clientsInterestedInAllZones;
  v8 = v4;
  if (!clientsInterestedInAllZones)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_clientsInterestedInAllZones;
    self->_clientsInterestedInAllZones = v6;

    v4 = v8;
    clientsInterestedInAllZones = self->_clientsInterestedInAllZones;
  }

  [(NSMutableSet *)clientsInterestedInAllZones addObject:v4];
}

- (void)_addClient:(id)a3 interestedInZoneIDs:(id)a4
{
  v6 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a4;
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
        v14 = [v13 ownerName];
        v15 = [v14 isEqualToString:CKCurrentUserDefaultName];

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

        [v21 addObject:v6];
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }
}

- (void)_removeClient:(id)a3 interestedInSomeZones:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000525F8;
    v18[3] = &unk_1002749D0;
    v19 = v5;
    v8 = v7;
    v20 = v8;
    [v6 enumerateKeysAndObjectsUsingBlock:v18];
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

          [v6 removeObjectForKey:{*(*(&v14 + 1) + 8 * v13), v14}];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v21 count:16];
      }

      while (v11);
    }
  }
}

- (void)_removeClientFromInterestingZones:(id)a3
{
  clientsInterestedInAllZones = self->_clientsInterestedInAllZones;
  v5 = a3;
  [(NSMutableSet *)clientsInterestedInAllZones removeObject:v5];
  [(CPLCloudKitCoordinator *)self _removeClient:v5 interestedInSomeZones:self->_clientsInterestedInSomePrivateZones];
  [(CPLCloudKitCoordinator *)self _removeClient:v5 interestedInSomeZones:self->_clientsInterestedInSomeSharedZones];
}

- (void)_addClientToInterestingZones:(id)a3
{
  v4 = a3;
  v5 = [v4 interestingZoneIDsForCoordinator:self];
  v6 = v5;
  if (v5)
  {
    [(CPLCloudKitCoordinator *)self _addClient:v4 interestedInZoneIDs:v5];
  }

  else
  {
    [(CPLCloudKitCoordinator *)self _addClientInterestedInAllZones:v4];
  }
}

- (void)registerClient:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100052890;
  v10[3] = &unk_1002720E0;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029A4;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)unregisterClient:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100052A0C;
  v10[3] = &unk_1002720E0;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029A4;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = v4;
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

- (void)noteClient:(id)a3 isInForeground:(BOOL)a4
{
  v6 = a3;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100052D70;
  v12[3] = &unk_100273930;
  v12[4] = self;
  v13 = v6;
  v14 = a4;
  v8 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029A4;
  block[3] = &unk_100271E98;
  v16 = v8;
  v9 = queue;
  v10 = v6;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

+ (void)setExecutionIdentifier:(id)a3
{
  v3 = [a3 copy];
  v4 = qword_1002C51C8;
  qword_1002C51C8 = v3;
}

- (void)launchOperation:(id)a3 type:(int64_t)a4 forClient:(id)a5
{
  v14 = a3;
  v9 = a5;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_20;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10019CB1C(v14, a2, self);
      }

      v12 = [(CPLCloudKitCoordinator *)self database];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sub_10019CC14(v14, a2, self);
      }

      v12 = [(CPLCloudKitCoordinator *)self container];
    }
  }

  else
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10019C834(v14, a2, self);
        }

        v10 = [(CPLCloudKitCoordinator *)self zoneishContainer];
        v11 = [v10 privateCloudDatabase];
      }

      else
      {
        if (a4 != 4)
        {
          goto LABEL_20;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10019C92C(v14, a2, self);
        }

        v10 = [(CPLCloudKitCoordinator *)self zoneishContainer];
        v11 = [v10 sharedCloudDatabase];
      }

      v13 = v11;
      [v11 addOperation:v14];

      goto LABEL_19;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_10019CA24(v14, a2, self);
    }

    v12 = [(CPLCloudKitCoordinator *)self sharedDatabase];
  }

  v10 = v12;
  [v12 addOperation:v14];
LABEL_19:

LABEL_20:
}

- (void)associateMetric:(id)a3 forClient:(id)a4
{
  v5 = a3;
  v6 = [(CPLCloudKitCoordinator *)self container];
  [v5 setContainer:v6];
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

+ (BOOL)networkBehaviorShouldBeDiscretionaryForForegroundOperation:(BOOL)a3 upload:(BOOL)a4 metadata:(BOOL)a5
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return [a1 enableTurboMode] ^ 1;
  }
}

- (id)databaseForOperationType:(int64_t)a3 relativeToOperationType:(int64_t)a4 forClient:(id)a5
{
  v9 = a5;
  if (a3 == 1 || a3 == 3)
  {
    v10 = 1;
  }

  else
  {
    if (!a3)
    {
      sub_10019CD0C(a2, self);
    }

    v10 = 0;
  }

  if ((a4 - 1) < 2)
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

  else if ((a4 - 3) >= 2)
  {
    if (!a4)
    {
      sub_10019CD84(a2, self);
    }
  }

  else
  {
    v11 = [(CPLCloudKitCoordinator *)self zoneishContainer];
    v12 = v11;
    if (v10)
    {
      [v11 privateCloudDatabase];
    }

    else
    {
      [v11 sharedCloudDatabase];
    }
    v10 = ;
  }

  return v10;
}

- (void)getStatusForClient:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000534A4;
  v14[3] = &unk_100271DE0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029A4;
  block[3] = &unk_100271E98;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

- (void)getLastClientServedWithAPushNotificationWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005388C;
  v10[3] = &unk_100272350;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029A4;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)_askNextClient:(id)a3 toProvideCKAssetWithRecordID:(id)a4 fieldName:(id)a5 recordType:(id)a6 signature:(id)a7 bestResponseYet:(unint64_t)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v21 = [v15 nextObject];
  if (v21)
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100053A80;
    v30[3] = &unk_1002749F8;
    v37 = a8;
    v36 = v20;
    v30[4] = self;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v22 = v18;
    v29 = v20;
    v23 = v15;
    v24 = v18;
    v25 = v17;
    v26 = v16;
    v27 = v22;
    v34 = v22;
    v35 = v19;
    v28 = v27;
    v16 = v26;
    v17 = v25;
    v18 = v24;
    v15 = v23;
    v20 = v29;
    [v21 coordinator:self provideCKAssetWithRecordID:v32 fieldName:v33 recordType:v28 signature:v35 completionHandler:v30];
  }

  else
  {
    (*(v20 + 2))(v20, 0, a8);
  }
}

- (void)provideCKAssetWithRecordID:(id)a3 fieldName:(id)a4 recordType:(id)a5 signature:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  queue = self->_queue;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100053CC4;
  v26[3] = &unk_100273DF8;
  v26[4] = self;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v18 = v26;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029A4;
  block[3] = &unk_100271E98;
  v33 = v18;
  v19 = queue;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  v24 = v12;
  v25 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v19, v25);
}

- (id)_clientsInterestedToReceiveAPushNotificationForZoneID:(id)a3
{
  v4 = a3;
  v5 = [v4 ownerName];
  v6 = [v5 isEqualToString:CKCurrentUserDefaultName];

  v7 = 48;
  if (v6)
  {
    v7 = 56;
  }

  v8 = [*(&self->super.isa + v7) objectForKeyedSubscript:v4];

  return v8;
}

- (id)_bestClientToReceivePushNotification:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v4 recordZoneID], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [(CPLCloudKitCoordinator *)self _clientsInterestedToReceiveAPushNotificationForZoneID:v5];
    v8 = [v7 anyObject];

    if (v8)
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
      v8 = [(CPLCloudKitCoordinator *)self _defaultClient];
      goto LABEL_32;
    }

    v11 = v10;
    v29 = v4;
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
          v8 = v16;

          v17 = [v8 cloudKitClientIdentifier];
          v18 = v17;
          if (v17)
          {
            v19 = v14 == 0;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            v20 = v17 | v14;

            v12 = v8;
            if (!v20)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v21 = [v17 isEqual:v14];

            v12 = v8;
            if (v21)
            {
              goto LABEL_20;
            }
          }
        }
      }

      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      v8 = v12;
    }

    while (v11);
LABEL_20:

    v4 = v29;
    if (!v8)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v22 = objc_opt_respondsToSelector();
    v23 = [(CPLCloudKitCoordinator *)self _defaultClient];
    v8 = v23;
    v6 = 0;
    if ((v22 & 1) != 0 && !v23)
    {
      v24 = [v4 databaseScope];
      if (v24 == 3)
      {
        clientsInterestedInSomeSharedZones = self->_clientsInterestedInSomeSharedZones;
      }

      else
      {
        if (v24 != 2)
        {
          v6 = 0;
          v8 = 0;
          goto LABEL_32;
        }

        clientsInterestedInSomeSharedZones = self->_clientsInterestedInSomePrivateZones;
      }

      v26 = [(NSMutableDictionary *)clientsInterestedInSomeSharedZones allValues];
      v27 = [v26 firstObject];
      v8 = [v27 anyObject];

      v6 = 0;
    }
  }

LABEL_32:

  return v8;
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

- (void)noteClient:(id)a3 isIgnoringChangeInZoneID:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100054260;
  v14[3] = &unk_1002721A0;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v9 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029A4;
  block[3] = &unk_100271E98;
  v19 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

- (void)fetchAccountInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  container = self->_container;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000544D4;
  v7[3] = &unk_100274A48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

  v4 = [(CPLCloudKitCoordinator *)self container];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000518E0;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  [CPLCallObserver observeSyncCallOn:v4 selector:"unregisterFromUploadRequestsWithMachServiceName:" block:v6];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005192C;
  v5[3] = &unk_100271F40;
  v5[4] = self;
  [CPLCallObserver observeSyncCallOn:self selector:"_stopWaitingForPushNotifications" block:v5];
}

- (void)center:(id)a3 didReceivePushNotification:(id)a4
{
  sub_10002B0F4();
  v30 = v4;
  v31 = v5;
  v7 = v6;
  v9 = v8;
  dispatch_assert_queue_V2(*(v7 + 8));
  if ([*(v7 + 24) count] == 1)
  {
    v10 = [*(v7 + 24) anyObject];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_10005189C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v10 cloudKitClientIdentifier];
        sub_100054B6C();
        sub_1000139AC(&_mh_execute_header, v13, v14, "Serving push notification to only client %{public}@: %@", v15, v16, v17, v18, v28);
      }
    }

LABEL_12:
    [v10 coordinatorDidReceiveAPushNotification:v7];
    goto LABEL_13;
  }

  v10 = [v7 _bestClientToReceivePushNotification:v9];
  if (v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = sub_10005189C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v10 cloudKitClientIdentifier];
        sub_100054B6C();
        sub_1000139AC(&_mh_execute_header, v21, v22, "Serving push notification to client %{public}@: %@", v23, v24, v25, v26, v28);
      }
    }

    objc_storeStrong((v7 + 64), v10);
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