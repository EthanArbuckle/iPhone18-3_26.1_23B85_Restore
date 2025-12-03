@interface BCCloudKitDatabaseController
+ (id)decodeRecordFromSystemFields:(id)fields;
+ (id)encodeRecordSystemFields:(id)fields;
+ (void)startInternetConnectionReachabilityNotifier;
- (BCCloudKitDatabaseController)initWithConfiguration:(id)configuration archiveURL:(id)l;
- (BOOL)establishedSalt;
- (NSString)subscriptionID;
- (id)appBundleIdentifier;
- (id)diagnosticDatabaseInfo;
- (id)p_archiveToData;
- (id)p_unarchiveFromData:(id)data;
- (id)recordNameFromRecordType:(id)type identifier:(id)identifier;
- (id)saltedAndHashedIDFromLocalID:(id)d;
- (void)_deleteRecordZonesWithIDs:(id)ds qualityOfService:(int64_t)service completion:(id)completion;
- (void)addObserver:(id)observer recordType:(id)type;
- (void)addObserver:(id)observer zoneID:(id)d;
- (void)attachToZones:(id)zones completion:(id)completion;
- (void)connectUserTo:(id)to container:(id)container updateSubscription:(BOOL)subscription completion:(id)completion subscriptionCompletion:(id)subscriptionCompletion;
- (void)detachWithError:(id)error completion:(id)completion;
- (void)fetchChangesWithCompletion:(id)completion;
- (void)fetchRecordForRecordID:(id)d completion:(id)completion;
- (void)getAttached:(id)attached;
- (void)p_createRecordIDSaltWithCompletion:(id)completion;
- (void)p_createRecordZones:(id)zones completionHandler:(id)handler;
- (void)p_fetchDatabaseChanges:(id)changes;
- (void)p_fetchRecordZoneChanges:(id)changes optionsByRecordZoneID:(id)d completionHandler:(id)handler;
- (void)p_fetchRecordZoneChangesForRecordZoneIDs:(id)ds completionHandler:(id)handler;
- (void)p_fetchZoneChanges:(id)changes;
- (void)p_informObserversOfAttachmentChange;
- (void)p_informObserversOfCompletedFetchOfZone:(id)zone;
- (void)p_informObserversOfRecordsChanged:(id)changed;
- (void)p_informObserversOfRecordsChanged:(id)changed forRecordType:(id)type;
- (void)p_informObserversOfSaltVersionIdentifierChanged:(id)changed forZones:(id)zones completion:(id)completion;
- (void)p_internetReachabilityChanged:(id)changed;
- (void)p_scheduleArchiveWithCompletion:(id)completion;
- (void)p_subscribeWithCompletion:(id)completion;
- (void)p_unarchive;
- (void)p_unsubscribeToContainer:(id)container;
- (void)p_updateRetryParametersFromFetchZoneChangesOperationError:(id)error;
- (void)recordZoneWithName:(id)name completionHandler:(id)handler;
- (void)registerServerChangeTokenStore:(id)store forZoneID:(id)d;
- (void)removeObserver:(id)observer;
- (void)removeObserver:(id)observer recordType:(id)type;
- (void)unregisterServerChangeTokenStore:(id)store;
- (void)willAttachToContainer:(id)container serviceMode:(BOOL)mode completion:(id)completion;
- (void)zonesDeletedOrReset:(id)reset completion:(id)completion;
- (void)zonesTemporarilyUnreadableWithError:(id)error completion:(id)completion;
- (void)zonesUnreadableDueToMissingD2DEncryptionIdentity:(id)identity completion:(id)completion;
@end

@implementation BCCloudKitDatabaseController

- (BOOL)establishedSalt
{
  recordIDSalt = [(BCCloudKitDatabaseController *)self recordIDSalt];
  v3 = recordIDSalt != 0;

  return v3;
}

- (BCCloudKitDatabaseController)initWithConfiguration:(id)configuration archiveURL:(id)l
{
  configurationCopy = configuration;
  lCopy = l;
  v40.receiver = self;
  v40.super_class = BCCloudKitDatabaseController;
  v9 = [(BCCloudKitDatabaseController *)&v40 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeStrong(&v10->_archiveURL, l);
    v11 = objc_opt_new();
    observers = v10->_observers;
    v10->_observers = v11;

    v13 = +[NSMapTable strongToWeakObjectsMapTable];
    zoneObservers = v10->_zoneObservers;
    v10->_zoneObservers = v13;

    v10->_zoneObserversLock._os_unfair_lock_opaque = 0;
    v15 = objc_opt_new();
    tokenStores = v10->_tokenStores;
    v10->_tokenStores = v15;

    v17 = objc_opt_new();
    changedRecordZoneIDs = v10->_changedRecordZoneIDs;
    v10->_changedRecordZoneIDs = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.iBooks.CloudKitDatabaseController", v19);

    objc_storeStrong(&v10->_accessQueue, v20);
    accessQueue = v10->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100022F9C;
    block[3] = &unk_10023F6B0;
    v22 = v10;
    v39 = v22;
    dispatch_sync(accessQueue, block);
    v23 = +[NSNotificationCenter defaultCenter];
    v24 = +[BDSReachability sharedReachabilityForInternetConnection];
    [v23 addObserver:v22 selector:"p_internetReachabilityChanged:" name:@"kNetworkReachabilityChangedNotification" object:v24];

    objc_initWeak(&location, v22);
    v25 = [BUCoalescingCallBlock alloc];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100022FA4;
    v34[3] = &unk_100240250;
    objc_copyWeak(&v36, &location);
    v35 = lCopy;
    v26 = [v25 initWithNotifyBlock:v34 notifyTimeout:10 blockDescription:@"_coalescedArchive in BCCloudKitDatabaseController" notifyTimeoutBlock:&stru_100240270];
    v27 = v22[8];
    v22[8] = v26;

    [v22[8] setCoalescingDelay:1.0];
    v28 = [BUCoalescingCallBlock alloc];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10002328C;
    v32[3] = &unk_10023FC40;
    objc_copyWeak(&v33, &location);
    v29 = [v28 initWithNotifyBlock:v32 notifyTimeout:10 blockDescription:@"_coalescedZoneFetch in BCCloudKitDatabaseController" notifyTimeoutBlock:&stru_1002402B8];
    v30 = v22[18];
    v22[18] = v29;

    [v22[18] setCoalescingDelay:2.0];
    objc_destroyWeak(&v33);

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (NSString)subscriptionID
{
  configuration = [(BCCloudKitDatabaseController *)self configuration];
  dbSubscriptionID = [configuration dbSubscriptionID];

  return dbSubscriptionID;
}

- (id)appBundleIdentifier
{
  configuration = [(BCCloudKitDatabaseController *)self configuration];
  appBundleIdentifier = [configuration appBundleIdentifier];

  return appBundleIdentifier;
}

- (void)fetchChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002660();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543362;
    v13 = containerIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - fetchChangesWithCompletion:", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100023A14;
  v9[3] = &unk_10023FE48;
  objc_copyWeak(&v11, buf);
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(accessQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)fetchRecordForRecordID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  objc_initWeak(&location, self);
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100024024;
  v11[3] = &unk_100240228;
  objc_copyWeak(&v14, &location);
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(accessQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)willAttachToContainer:(id)container serviceMode:(BOOL)mode completion:(id)completion
{
  containerCopy = container;
  completionCopy = completion;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100024338;
  v13[3] = &unk_100240378;
  v13[4] = self;
  v14 = containerCopy;
  modeCopy = mode;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = containerCopy;
  dispatch_sync(accessQueue, v13);
}

- (void)connectUserTo:(id)to container:(id)container updateSubscription:(BOOL)subscription completion:(id)completion subscriptionCompletion:(id)subscriptionCompletion
{
  toCopy = to;
  containerCopy = container;
  completionCopy = completion;
  subscriptionCompletionCopy = subscriptionCompletion;
  v16 = sub_100002660();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [containerCopy containerIdentifier];
    *buf = 138543362;
    v29 = containerIdentifier;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - connectUserTo:container:updateSubscription:completion:", buf, 0xCu);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002475C;
  v22[3] = &unk_1002403E8;
  v22[4] = self;
  v23 = containerCopy;
  subscriptionCopy = subscription;
  v24 = toCopy;
  v25 = subscriptionCompletionCopy;
  v26 = completionCopy;
  v18 = completionCopy;
  v19 = subscriptionCompletionCopy;
  v20 = toCopy;
  v21 = containerCopy;
  [v21 fetchUserRecordIDWithCompletionHandler:v22];
}

- (void)attachToZones:(id)zones completion:(id)completion
{
  zonesCopy = zones;
  completionCopy = completion;
  v8 = _os_activity_create(&_mh_execute_header, "BCCloudKitDatabaseController/attachToZones-cloud", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
  v10 = [containerIdentifier containsString:@"cloudData"];

  if ((v10 & 1) == 0)
  {
    v11 = _os_activity_create(&_mh_execute_header, "BCCloudKitDatabaseController/attachToZones-secureData", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);

    v8 = v11;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024C0C;
  block[3] = &unk_1002404B0;
  v15 = zonesCopy;
  v16 = completionCopy;
  block[4] = self;
  v12 = zonesCopy;
  v13 = completionCopy;
  os_activity_apply(v8, block);
}

- (void)detachWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025B38;
  block[3] = &unk_1002404D8;
  block[4] = self;
  v12 = errorCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = errorCopy;
  dispatch_async(accessQueue, block);
}

- (void)getAttached:(id)attached
{
  attachedCopy = attached;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100025D20;
  v7[3] = &unk_10023F9F8;
  v7[4] = self;
  v8 = attachedCopy;
  v6 = attachedCopy;
  dispatch_async(accessQueue, v7);
}

- (void)recordZoneWithName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  if (handlerCopy)
  {
    database = [(BCCloudKitDatabaseController *)self database];

    if (database)
    {
      accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100025EA0;
      block[3] = &unk_100240500;
      v11 = nameCopy;
      selfCopy = self;
      v13 = handlerCopy;
      dispatch_async(accessQueue, block);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

- (id)saltedAndHashedIDFromLocalID:(id)d
{
  dCopy = d;
  recordIDSalt = [(BCCloudKitDatabaseController *)self recordIDSalt];
  v6 = recordIDSalt;
  if (recordIDSalt)
  {
    memset(&v13, 0, sizeof(v13));
    CCHmacInit(&v13, 0, [recordIDSalt bytes], objc_msgSend(recordIDSalt, "length"));
    uTF8String = [dCopy UTF8String];
    v8 = strlen(uTF8String);
    CCHmacUpdate(&v13, uTF8String, v8);
    macOut[0] = 0;
    macOut[1] = 0;
    v15 = 0;
    CCHmacFinal(&v13, macOut);
    v9 = [NSData dataWithBytes:macOut length:20];
    v10 = [v9 base64EncodedStringWithOptions:0];
  }

  else
  {
    v11 = sub_100002660();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF1B8();
    }

    v10 = 0;
  }

  return v10;
}

- (id)recordNameFromRecordType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    goto LABEL_6;
  }

  v8 = [(BCCloudKitDatabaseController *)self saltedAndHashedIDFromLocalID:identifierCopy];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  v10 = @"-";
  if (typeCopy)
  {
    v10 = typeCopy;
  }

  v11 = [NSString stringWithFormat:@"%@.%@", v10, v8];

  if (!v11)
  {
LABEL_6:
    v12 = sub_100002660();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF220();
    }

    v11 = 0;
  }

  return v11;
}

- (void)p_unsubscribeToContainer:(id)container
{
  containerCopy = container;
  privateCloudDatabase = [containerCopy privateCloudDatabase];
  if (privateCloudDatabase)
  {
    objc_initWeak(&location, self);
    v6 = [CKModifySubscriptionsOperation alloc];
    subscriptionID = [(BCCloudKitDatabaseController *)self subscriptionID];
    v15 = subscriptionID;
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    v9 = [v6 initWithSubscriptionsToSave:0 subscriptionIDsToDelete:v8];

    v10 = +[CKOperationConfiguration bds_defaultConfiguration];
    [v10 setContainer:containerCopy];
    [v9 setConfiguration:v10];
    [v9 setDatabase:privateCloudDatabase];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100026414;
    v11[3] = &unk_100240528;
    objc_copyWeak(&v13, &location);
    v12 = containerCopy;
    [v9 setModifySubscriptionsCompletionBlock:v11];
    [privateCloudDatabase addOperation:v9];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)p_subscribeWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v6 = sub_100002660();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543362;
    v34 = containerIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "p_subscribeWithCompletion (%{public}@)", buf, 0xCu);
  }

  if ([(BCCloudKitDatabaseController *)self hasSubscription]|| ([(BCCloudKitDatabaseController *)self database], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, v9))
  {
    v24 = objc_retainBlock(completionCopy);
    v13 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24);
    }
  }

  else
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Attempting CKModifySubscriptionsOperation", buf, 2u);
    }

    v11 = [CKDatabaseSubscription alloc];
    subscriptionID = [(BCCloudKitDatabaseController *)self subscriptionID];
    v13 = [v11 initWithSubscriptionID:subscriptionID];

    v14 = objc_alloc_init(CKNotificationInfo);
    [v14 setShouldSendContentAvailable:1];
    [v13 setNotificationInfo:v14];
    objc_initWeak(&location, self);
    v15 = [CKModifySubscriptionsOperation alloc];
    v35 = v13;
    v16 = [NSArray arrayWithObjects:&v35 count:1];
    v17 = [v15 initWithSubscriptionsToSave:v16 subscriptionIDsToDelete:0];

    v18 = +[CKOperationConfiguration bds_defaultConfiguration];
    container = [(BCCloudKitDatabaseController *)self container];
    [v18 setContainer:container];

    [v17 setConfiguration:v18];
    database = [(BCCloudKitDatabaseController *)self database];
    [v17 setDatabase:database];

    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_10002699C;
    v28 = &unk_100240550;
    objc_copyWeak(&v31, &location);
    selfCopy = self;
    v30 = completionCopy;
    [v17 setModifySubscriptionsCompletionBlock:&v25];
    v21 = sub_100002660();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      operationID = [v17 operationID];
      sub_1001BF288(v17, operationID, buf, v21);
    }

    database2 = [(BCCloudKitDatabaseController *)self database];
    [database2 addOperation:v17];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }
}

- (void)p_fetchDatabaseChanges:(id)changes
{
  changesCopy = changes;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v6 = sub_100002660();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    serverChangeToken = [(BCCloudKitDatabaseController *)self serverChangeToken];
    *buf = 138543618;
    *&buf[4] = containerIdentifier;
    *&buf[12] = 2114;
    *&buf[14] = serverChangeToken;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- Adding fetch database changes, serverChangeToken: %{public}@", buf, 0x16u);
  }

  database = [(BCCloudKitDatabaseController *)self database];
  if (database)
  {
    v10 = [CKFetchDatabaseChangesOperation alloc];
    serverChangeToken2 = [(BCCloudKitDatabaseController *)self serverChangeToken];
    v12 = [v10 initWithPreviousServerChangeToken:serverChangeToken2];

    [v12 setFetchAllChanges:1];
    v13 = +[CKOperationConfiguration bds_defaultConfiguration];
    container = [(BCCloudKitDatabaseController *)self container];
    [v13 setContainer:container];

    [v12 setConfiguration:v13];
    database2 = [(BCCloudKitDatabaseController *)self database];
    [v12 setDatabase:database2];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v40 = sub_100027274;
    v41 = sub_100027284;
    v42 = objc_alloc_init(NSMutableOrderedSet);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10002728C;
    v34[3] = &unk_100240578;
    v34[4] = self;
    v34[5] = buf;
    [v12 setRecordZoneWithIDWasDeletedBlock:v34];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10002742C;
    v33[3] = &unk_100240578;
    v33[4] = self;
    v33[5] = buf;
    [v12 setRecordZoneWithIDWasPurgedBlock:v33];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000275CC;
    v32[3] = &unk_100240578;
    v32[4] = self;
    v32[5] = buf;
    [v12 setRecordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock:v32];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10002776C;
    v31[3] = &unk_1002405C0;
    v31[4] = self;
    [v12 setChangeTokenUpdatedBlock:v31];
    configuration = [(BCCloudKitDatabaseController *)self configuration];
    serviceZones = [configuration serviceZones];
    v18 = [NSSet setWithArray:serviceZones];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10002794C;
    v29[3] = &unk_100240608;
    v29[4] = self;
    v19 = v18;
    v30 = v19;
    [v12 setRecordZoneWithIDChangedBlock:v29];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_100027B84;
    v25 = &unk_100240658;
    v28 = buf;
    selfCopy = self;
    v27 = changesCopy;
    [v12 setFetchDatabaseChangesCompletionBlock:&v22];
    v20 = sub_100002660();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(BCCloudKitDatabaseController *)self containerIdentifier:v22];
      *v35 = 138543618;
      v36 = v21;
      v37 = 2112;
      v38 = v12;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- Adding fetch database changes %@", v35, 0x16u);
    }

    [database addOperation:v12];
    _Block_object_dispose(buf, 8);

    goto LABEL_9;
  }

  v12 = objc_retainBlock(changesCopy);
  if (v12)
  {
    v13 = [NSError errorWithDomain:@"BDSErrorDomain" code:1004 userInfo:0];
    (*(v12 + 2))(v12, v13);
LABEL_9:
  }
}

- (void)p_createRecordZones:(id)zones completionHandler:(id)handler
{
  zonesCopy = zones;
  handlerCopy = handler;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  database = [(BCCloudKitDatabaseController *)self database];
  v10 = sub_100002660();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v12 = zonesCopy;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10003104C;
    v29 = &unk_100240B70;
    v30 = objc_alloc_init(NSMutableArray);
    v13 = v30;
    [v12 enumerateObjectsUsingBlock:buf];
    v14 = [v13 componentsJoinedByString:{@", "}];

    database2 = [(BCCloudKitDatabaseController *)self database];
    *buf = 138412802;
    *&buf[4] = containerIdentifier;
    *&buf[12] = 2112;
    *&buf[14] = v14;
    *&buf[22] = 2114;
    v29 = database2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[BCCloudKitDatabaseController (%@)] 2. p_createRecordZones:%@ database:%{public}@", buf, 0x20u);
  }

  if ([zonesCopy count] && database)
  {
    v16 = [[CKFetchRecordZonesOperation alloc] initWithRecordZoneIDs:zonesCopy];
    v17 = +[CKOperationConfiguration bds_defaultConfiguration];
    container = [(BCCloudKitDatabaseController *)self container];
    [v17 setContainer:container];
    [v16 setConfiguration:v17];
    [v16 setDatabase:database];
    objc_initWeak(buf, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000283A4;
    v22[3] = &unk_100240770;
    objc_copyWeak(&v27, buf);
    v26 = handlerCopy;
    v23 = zonesCopy;
    v19 = container;
    v24 = v19;
    v20 = database;
    v25 = v20;
    [v16 setFetchRecordZonesCompletionBlock:v22];
    [v20 addOperation:v16];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  else
  {
    v21 = objc_retainBlock(handlerCopy);
    v16 = v21;
    if (v21)
    {
      (*(v21 + 2))(v21, 0);
    }
  }
}

- (void)p_createRecordIDSaltWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v6 = sub_100002660();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    database = [(BCCloudKitDatabaseController *)self database];
    *buf = 138543618;
    v16 = containerIdentifier;
    v17 = 2114;
    v18 = database;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) Establishing record salt, database:%{public}@", buf, 0x16u);
  }

  v9 = [[CKRecordID alloc] initWithRecordName:@"recordIDSalt"];
  objc_initWeak(buf, self);
  database2 = [(BCCloudKitDatabaseController *)self database];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100029B18;
  v12[3] = &unk_1002407C0;
  objc_copyWeak(&v14, buf);
  v12[4] = self;
  v11 = completionCopy;
  v13 = v11;
  [database2 fetchRecordWithID:v9 completionHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)p_fetchZoneChanges:(id)changes
{
  changesCopy = changes;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if ([(BCCloudKitDatabaseController *)self serverFetchPostponed])
  {
    v6 = sub_100002660();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "fetch zone changes attempted while postponing such fetches.  Nil error, but this operation will be attempted again after the back-off period.", buf, 2u);
    }

    changesCopy[2](changesCopy, 0);
  }

  else
  {
    v7 = +[NSMutableArray array];
    v8 = +[NSMutableArray array];
    tokenStores = [(BCCloudKitDatabaseController *)self tokenStores];
    allKeys = [tokenStores allKeys];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10002AA34;
    v18[3] = &unk_1002407E8;
    v18[4] = self;
    v19 = v7;
    v11 = v8;
    v20 = v11;
    v12 = v7;
    [allKeys enumerateObjectsUsingBlock:v18];

    v13 = [v12 copy];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002AB2C;
    v15[3] = &unk_100240460;
    v15[4] = self;
    v16 = v11;
    v17 = changesCopy;
    v14 = v11;
    [(BCCloudKitDatabaseController *)self p_fetchRecordZoneChangesForRecordZoneIDs:v13 completionHandler:v15];
  }
}

- (void)p_fetchRecordZoneChangesForRecordZoneIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v9 = [dsCopy count];
  v10 = sub_100002660();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
      *buf = 138543618;
      v35 = containerIdentifier;
      v36 = 2114;
      v37 = dsCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- fetching record zone changes for recordZoneIDs:%{public}@", buf, 0x16u);
    }

    recordZones = [(BCCloudKitDatabaseController *)self recordZones];
    [(BCCloudKitDatabaseController *)self desiredRecordZoneIDs];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10002B064;
    v31[3] = &unk_100240810;
    v33 = v32 = recordZones;
    v14 = v33;
    v15 = recordZones;
    [dsCopy enumerateObjectsUsingBlock:v31];
    v16 = objc_opt_new();
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10002B120;
    v28[3] = &unk_1002407E8;
    v28[4] = self;
    v29 = dispatch_group_create();
    v17 = v16;
    v30 = v17;
    v18 = v29;
    [dsCopy enumerateObjectsUsingBlock:v28];
    accessQueue2 = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002B3A0;
    block[3] = &unk_100240488;
    v24 = v17;
    selfCopy = self;
    v26 = dsCopy;
    v27 = handlerCopy;
    v20 = v17;
    dispatch_group_notify(v18, accessQueue2, block);
  }

  else
  {
    if (v11)
    {
      containerIdentifier2 = [(BCCloudKitDatabaseController *)self containerIdentifier];
      *buf = 138543362;
      v35 = containerIdentifier2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- No record zone changes to fetch", buf, 0xCu);
    }

    self->_fetchRecordZoneChangesSuccess = 1;
    v22 = objc_retainBlock(handlerCopy);
    v15 = v22;
    if (v22)
    {
      (*(v22 + 2))(v22, 0);
    }
  }
}

- (void)p_updateRetryParametersFromFetchZoneChangesOperationError:(id)error
{
  errorCopy = error;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  domain = [errorCopy domain];
  v6 = [domain isEqualToString:CKErrorDomain];

  v7 = 5.0;
  if (!v6)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  userInfo = [errorCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:CKErrorRetryAfterKey];
  v10 = BUDynamicCast();
  [v10 doubleValue];
  v7 = v11;

  if (v7 > 0.0)
  {
LABEL_7:
    [(BCCloudKitDatabaseController *)self setBackOffInterval:v7];
    goto LABEL_8;
  }

  code = [errorCopy code];
  if (code <= 0x17 && ((1 << code) & 0x8000C0) != 0)
  {
    [(BCCloudKitDatabaseController *)self backOffInterval];
    v7 = 5.0;
    if (v13 >= 5.0)
    {
      [(BCCloudKitDatabaseController *)self backOffInterval];
      v7 = v14 + v14;
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)p_fetchRecordZoneChanges:(id)changes optionsByRecordZoneID:(id)d completionHandler:(id)handler
{
  changesCopy = changes;
  dCopy = d;
  handlerCopy = handler;
  v11 = sub_100002660();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v13 = changesCopy;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10003104C;
    v52 = &unk_100240B70;
    *&v53 = objc_alloc_init(NSMutableArray);
    v14 = v53;
    [v13 enumerateObjectsUsingBlock:buf];
    v15 = [v14 componentsJoinedByString:{@", "}];

    database = [(BCCloudKitDatabaseController *)self database];
    *buf = 138544130;
    *&buf[4] = containerIdentifier;
    *&buf[12] = 2114;
    *&buf[14] = v15;
    *&buf[22] = 2114;
    v52 = dCopy;
    LOWORD(v53) = 2048;
    *(&v53 + 2) = database;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges recordZoneIDs:%{public}@, optionsByRecordZoneID:%{public}@ self.database=%p", buf, 0x2Au);
  }

  database2 = [(BCCloudKitDatabaseController *)self database];
  if (database2)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v52 = sub_100027274;
    *&v53 = sub_100027284;
    *(&v53 + 1) = objc_opt_new();
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = sub_100027274;
    v45[4] = sub_100027284;
    v46 = objc_alloc_init(NSMutableOrderedSet);
    v18 = [[CKFetchRecordZoneChangesOperation alloc] initWithRecordZoneIDs:changesCopy configurationsByRecordZoneID:dCopy];
    [v18 setFetchAllChanges:1];
    v19 = +[CKOperationConfiguration bds_defaultConfiguration];
    container = [(BCCloudKitDatabaseController *)self container];
    [v19 setContainer:container];

    [v19 setQualityOfService:17];
    [v19 setDiscretionaryNetworkBehavior:0];
    [v19 setAutomaticallyRetryNetworkFailures:0];
    [v18 setConfiguration:v19];
    database3 = [(BCCloudKitDatabaseController *)self database];
    [v18 setDatabase:database3];

    objc_initWeak(&location, self);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10002BE64;
    v43[3] = &unk_100240888;
    v43[4] = self;
    v43[5] = buf;
    [v18 setRecordChangedBlock:v43];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10002C0C4;
    v42[3] = &unk_1002408B0;
    v42[4] = self;
    [v18 setRecordWithIDWasDeletedBlock:v42];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10002C324;
    v39[3] = &unk_100240900;
    v39[4] = self;
    v22 = changesCopy;
    v40 = v22;
    v41 = buf;
    [v18 setRecordZoneChangeTokensUpdatedBlock:v39];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10002C5E8;
    v35[3] = &unk_100240970;
    v35[4] = self;
    v23 = v22;
    v36 = v23;
    v37 = v45;
    v38 = buf;
    [v18 setRecordZoneFetchCompletionBlock:v35];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10002CD38;
    v29[3] = &unk_100240A30;
    v29[4] = self;
    objc_copyWeak(&v34, &location);
    v32 = v45;
    v30 = v23;
    v33 = buf;
    v31 = handlerCopy;
    [v18 setFetchRecordZoneChangesCompletionBlock:v29];
    v24 = sub_100002660();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      containerIdentifier2 = [(BCCloudKitDatabaseController *)self containerIdentifier];
      *v47 = 138543618;
      v48 = containerIdentifier2;
      v49 = 2112;
      v50 = v18;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges Adding fetchRecordZoneChangesOperation=%@", v47, 0x16u);
    }

    database4 = [(BCCloudKitDatabaseController *)self database];
    [database4 addOperation:v18];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);

    _Block_object_dispose(v45, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v27 = objc_retainBlock(handlerCopy);
    if (v27)
    {
      v28 = [NSError errorWithDomain:@"BDSErrorDomain" code:1004 userInfo:0];
      v27[2](v27, v28);
    }
  }
}

- (void)p_internetReachabilityChanged:(id)changed
{
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D7D0;
  block[3] = &unk_10023F6B0;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)p_informObserversOfAttachmentChange
{
  v3 = sub_100002660();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    attachedToContainer = [(BCCloudKitDatabaseController *)self attachedToContainer];
    v6 = @"NO";
    if (attachedToContainer)
    {
      v6 = @"YES";
    }

    *buf = 138543618;
    v32 = containerIdentifier;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfAttachmentChange. Attached to container: %@", buf, 0x16u);
  }

  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(BCCloudKitDatabaseController *)self observers];
  v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        observers = [(BCCloudKitDatabaseController *)self observers];
        v14 = [observers objectForKeyedSubscript:v12];

        if ([v14 count])
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v22;
            do
            {
              v19 = 0;
              do
              {
                if (*v22 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                [*(*(&v21 + 1) + 8 * v19) databaseController:self attachmentChanged:{-[BCCloudKitDatabaseController attachedToContainer](self, "attachedToContainer")}];
                v19 = v19 + 1;
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v17);
          }
        }

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }
}

- (void)p_informObserversOfRecordsChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100002660();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543362;
    v10 = containerIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfRecordsChanged.", buf, 0xCu);
  }

  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if ([changedCopy count])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002DDF8;
    v8[3] = &unk_100240A58;
    v8[4] = self;
    [changedCopy enumerateKeysAndObjectsUsingBlock:v8];
  }
}

- (void)p_informObserversOfSaltVersionIdentifierChanged:(id)changed forZones:(id)zones completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002DFDC;
  v11[3] = &unk_100240488;
  selfCopy = self;
  changedCopy = changed;
  zonesCopy = zones;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = zonesCopy;
  v10 = changedCopy;
  os_unfair_lock_lock(&selfCopy->_zoneObserversLock);
  sub_10002DFDC(v11);
  os_unfair_lock_unlock(&self->_zoneObserversLock);
}

- (void)p_informObserversOfRecordsChanged:(id)changed forRecordType:(id)type
{
  changedCopy = changed;
  typeCopy = type;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v9 = sub_100002660();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543874;
    v27 = containerIdentifier;
    v28 = 2050;
    v29 = [changedCopy count];
    v30 = 2114;
    v31 = typeCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfRecordsChanged: changedRecords.count=%{public}lu recordType=%{public}@", buf, 0x20u);
  }

  if ([changedCopy count])
  {
    observers = [(BCCloudKitDatabaseController *)self observers];
    v12 = [observers objectForKeyedSubscript:typeCopy];

    if ([v12 count])
    {
      v20 = typeCopy;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v22;
        do
        {
          v17 = 0;
          do
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v21 + 1) + 8 * v17);
            v19 = [[NSArray alloc] initWithArray:changedCopy copyItems:1];
            [v18 databaseController:self recordsChanged:v19];

            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v15);
      }

      typeCopy = v20;
    }
  }
}

- (void)p_informObserversOfCompletedFetchOfZone:(id)zone
{
  zoneCopy = zone;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v6 = sub_100002660();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543618;
    v32 = containerIdentifier;
    v33 = 2114;
    v34 = zoneCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfCompletedFetchOfZone zoneName=%{public}@", buf, 0x16u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(BCCloudKitDatabaseController *)self observers];
  v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        observers = [(BCCloudKitDatabaseController *)self observers];
        v14 = [observers objectForKeyedSubscript:v12];

        if ([v14 count])
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v22;
            do
            {
              v19 = 0;
              do
              {
                if (*v22 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                [*(*(&v21 + 1) + 8 * v19) databaseController:self fetchedAllRecordsInZone:zoneCopy];
                v19 = v19 + 1;
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v17);
          }
        }

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }
}

- (void)p_scheduleArchiveWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  coalescedArchive = [(BCCloudKitDatabaseController *)self coalescedArchive];
  [coalescedArchive signalWithCompletion:completionCopy];
}

- (void)p_unarchive
{
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  archiveURL = [(BCCloudKitDatabaseController *)self archiveURL];
  if (archiveURL)
  {
    v4 = [[NSData alloc] initWithContentsOfURL:archiveURL];
    if (v4)
    {
      v5 = v4;
      v6 = [(BCCloudKitDatabaseController *)self p_unarchiveFromData:v4];
    }
  }
}

- (id)p_archiveToData
{
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  if (v4)
  {
    if ([(BCCloudKitDatabaseController *)self hasSubscription])
    {
      [v4 encodeInteger:1 forKey:@"hasUpdatedSubscription"];
    }

    serverChangeToken = [(BCCloudKitDatabaseController *)self serverChangeToken];
    if (serverChangeToken)
    {
      [v4 encodeObject:serverChangeToken forKey:@"serverChangeToken"];
    }

    changedRecordZoneIDs = [(BCCloudKitDatabaseController *)self changedRecordZoneIDs];
    v7 = [changedRecordZoneIDs count];

    if (v7)
    {
      changedRecordZoneIDs2 = [(BCCloudKitDatabaseController *)self changedRecordZoneIDs];
      [v4 encodeObject:changedRecordZoneIDs2 forKey:@"changedRecordZoneIDs"];
    }

    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v10 = [containerIdentifier length];

    if (v10)
    {
      containerIdentifier2 = [(BCCloudKitDatabaseController *)self containerIdentifier];
      [v4 encodeObject:containerIdentifier2 forKey:@"containerIdentifier"];
    }

    userRecordID = [(BCCloudKitDatabaseController *)self userRecordID];

    if (userRecordID)
    {
      userRecordID2 = [(BCCloudKitDatabaseController *)self userRecordID];
      [v4 encodeObject:userRecordID2 forKey:@"userRecordID"];
    }

    [v4 finishEncoding];
    encodedData = [v4 encodedData];
  }

  else
  {
    encodedData = 0;
  }

  return encodedData;
}

- (id)p_unarchiveFromData:(id)data
{
  dataCopy = data;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (dataCopy)
  {
    v16 = 0;
    v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:dataCopy error:&v16];
    v7 = v16;
    if (v7)
    {
      v8 = sub_100002660();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1001BF5C8();
      }
    }

    else
    {
      -[BCCloudKitDatabaseController setHasSubscription:](self, "setHasSubscription:", [v6 decodeIntegerForKey:@"hasUpdatedSubscription"] == 1);
      v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"serverChangeToken"];
      [(BCCloudKitDatabaseController *)self setServerChangeToken:v9];

      v10 = objc_opt_class();
      v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
      v8 = [v6 decodeObjectOfClasses:v11 forKey:@"changedRecordZoneIDs"];

      if (v8)
      {
        [(BCCloudKitDatabaseController *)self setChangedRecordZoneIDs:v8];
      }

      else
      {
        v12 = objc_opt_new();
        [(BCCloudKitDatabaseController *)self setChangedRecordZoneIDs:v12];
      }

      v13 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"containerIdentifier"];
      [(BCCloudKitDatabaseController *)self setContainerIdentifier:v13];

      v14 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"userRecordID"];
      [(BCCloudKitDatabaseController *)self setUserRecordID:v14];

      [v6 finishDecoding];
    }
  }

  return 0;
}

+ (id)encodeRecordSystemFields:(id)fields
{
  fieldsCopy = fields;
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [fieldsCopy encodeSystemFieldsWithCoder:v4];

  [v4 finishEncoding];
  encodedData = [v4 encodedData];

  return encodedData;
}

+ (id)decodeRecordFromSystemFields:(id)fields
{
  fieldsCopy = fields;
  v9 = 0;
  v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:fieldsCopy error:&v9];

  v5 = v9;
  if (v5)
  {
    v6 = sub_100002660();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF5C8();
    }

    v7 = 0;
  }

  else
  {
    v7 = [[CKRecord alloc] initWithCoder:v4];
    [v4 finishDecoding];
  }

  return v7;
}

+ (void)startInternetConnectionReachabilityNotifier
{
  v2 = +[BDSReachability sharedReachabilityForInternetConnection];
  [v2 startNotifier];
}

- (void)_deleteRecordZonesWithIDs:(id)ds qualityOfService:(int64_t)service completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v11 = sub_100002660();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v22 = dsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Deleting zone: (%{public}@)", buf, 0xCu);
  }

  if (self->_container)
  {
    v12 = [[CKModifyRecordZonesOperation alloc] initWithRecordZonesToSave:0 recordZoneIDsToDelete:dsCopy];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10002F2C0;
    v18 = &unk_100240AA8;
    v19 = dsCopy;
    v20 = completionCopy;
    [v12 setModifyRecordZonesCompletionBlock:&v15];
    [v12 setQualityOfService:{service, v15, v16, v17, v18}];
    privateCloudDatabase = [(CKContainer *)self->_container privateCloudDatabase];
    [privateCloudDatabase addOperation:v12];

    v14 = v19;
LABEL_7:

    goto LABEL_8;
  }

  v12 = objc_retainBlock(completionCopy);
  if (v12)
  {
    v14 = [NSError errorWithDomain:CKErrorDomain code:5 userInfo:0];
    (*(v12 + 2))(v12, v14);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)zonesUnreadableDueToMissingD2DEncryptionIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  v8 = sub_100002660();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1001BF6A0(self);
  }

  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F480;
  block[3] = &unk_1002404D8;
  block[4] = self;
  v13 = identityCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = identityCopy;
  dispatch_async(accessQueue, block);
}

- (void)zonesTemporarilyUnreadableWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  v8 = sub_100002660();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1001BF73C(self);
  }

  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F838;
  block[3] = &unk_1002404D8;
  block[4] = self;
  v13 = errorCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = errorCopy;
  dispatch_async(accessQueue, block);
}

- (void)zonesDeletedOrReset:(id)reset completion:(id)completion
{
  resetCopy = reset;
  completionCopy = completion;
  v8 = sub_100002660();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543618;
    v15 = containerIdentifier;
    v16 = 2114;
    v17 = resetCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - zonesDeletedOrReset: %{public}@", buf, 0x16u);
  }

  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002FA7C;
  v12[3] = &unk_10023FED8;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  dispatch_async(accessQueue, v12);
}

- (void)addObserver:(id)observer recordType:(id)type
{
  observerCopy = observer;
  typeCopy = type;
  v8 = typeCopy;
  if (observerCopy && [typeCopy length])
  {
    accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002FC78;
    block[3] = &unk_10023F720;
    block[4] = self;
    v12 = v8;
    v13 = observerCopy;
    dispatch_async(accessQueue, block);
  }

  else
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF7D8();
    }
  }
}

- (void)removeObserver:(id)observer recordType:(id)type
{
  observerCopy = observer;
  typeCopy = type;
  v8 = typeCopy;
  if (observerCopy && [typeCopy length])
  {
    accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002FE80;
    block[3] = &unk_10023F720;
    block[4] = self;
    v12 = v8;
    v13 = observerCopy;
    dispatch_async(accessQueue, block);
  }

  else
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF7D8();
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000300C0;
    v14[3] = &unk_10023F938;
    v14[4] = self;
    v15 = observerCopy;
    dispatch_async(accessQueue, v14);
  }

  else
  {
    v6 = sub_100002660();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF92C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

- (void)addObserver:(id)observer zoneID:(id)d
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000302F8;
  v8[3] = &unk_10023F720;
  observerCopy = observer;
  dCopy = d;
  selfCopy = self;
  v6 = dCopy;
  v7 = observerCopy;
  os_unfair_lock_lock(&self->_zoneObserversLock);
  sub_1000302F8(v8);
  os_unfair_lock_unlock(&self->_zoneObserversLock);
}

- (void)registerServerChangeTokenStore:(id)store forZoneID:(id)d
{
  storeCopy = store;
  dCopy = d;
  v8 = dCopy;
  if (storeCopy && dCopy)
  {
    objc_initWeak(&location, self);
    accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100030568;
    block[3] = &unk_100240B20;
    objc_copyWeak(&v15, &location);
    v12 = v8;
    v13 = storeCopy;
    selfCopy = self;
    dispatch_async(accessQueue, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFA10();
    }
  }
}

- (void)unregisterServerChangeTokenStore:(id)store
{
  storeCopy = store;
  if (storeCopy)
  {
    objc_initWeak(&location, self);
    accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000309F8;
    block[3] = &unk_10023F9A8;
    objc_copyWeak(&v9, &location);
    v8 = storeCopy;
    dispatch_async(accessQueue, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = sub_100002660();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFAEC(v6);
    }
  }
}

- (id)diagnosticDatabaseInfo
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100027274;
  v23 = sub_100027284;
  v24 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  accessQueue = [(BCCloudKitDatabaseController *)self accessQueue];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100030D50;
  v14 = &unk_100240B48;
  v17 = &v25;
  v18 = &v19;
  selfCopy = self;
  v5 = v3;
  v16 = v5;
  dispatch_async(accessQueue, &v11);

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = [BDSCloudSyncDiagnosticDatabaseInfo alloc];
  v7 = *(v26 + 24);
  v8 = [(BCCloudKitDatabaseController *)self establishedSalt:v11];
  v9 = [(BDSCloudSyncDiagnosticDatabaseInfo *)v6 initWithAttached:v7 establishedSalt:v8 container:v20[5]];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v9;
}

@end