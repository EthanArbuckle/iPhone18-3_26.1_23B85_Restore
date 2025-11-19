@interface BCCloudKitDatabaseController
+ (id)decodeRecordFromSystemFields:(id)a3;
+ (id)encodeRecordSystemFields:(id)a3;
+ (void)startInternetConnectionReachabilityNotifier;
- (BCCloudKitDatabaseController)initWithConfiguration:(id)a3 archiveURL:(id)a4;
- (BOOL)establishedSalt;
- (NSString)subscriptionID;
- (id)appBundleIdentifier;
- (id)diagnosticDatabaseInfo;
- (id)p_archiveToData;
- (id)p_unarchiveFromData:(id)a3;
- (id)recordNameFromRecordType:(id)a3 identifier:(id)a4;
- (id)saltedAndHashedIDFromLocalID:(id)a3;
- (void)_deleteRecordZonesWithIDs:(id)a3 qualityOfService:(int64_t)a4 completion:(id)a5;
- (void)addObserver:(id)a3 recordType:(id)a4;
- (void)addObserver:(id)a3 zoneID:(id)a4;
- (void)attachToZones:(id)a3 completion:(id)a4;
- (void)connectUserTo:(id)a3 container:(id)a4 updateSubscription:(BOOL)a5 completion:(id)a6 subscriptionCompletion:(id)a7;
- (void)detachWithError:(id)a3 completion:(id)a4;
- (void)fetchChangesWithCompletion:(id)a3;
- (void)fetchRecordForRecordID:(id)a3 completion:(id)a4;
- (void)getAttached:(id)a3;
- (void)p_createRecordIDSaltWithCompletion:(id)a3;
- (void)p_createRecordZones:(id)a3 completionHandler:(id)a4;
- (void)p_fetchDatabaseChanges:(id)a3;
- (void)p_fetchRecordZoneChanges:(id)a3 optionsByRecordZoneID:(id)a4 completionHandler:(id)a5;
- (void)p_fetchRecordZoneChangesForRecordZoneIDs:(id)a3 completionHandler:(id)a4;
- (void)p_fetchZoneChanges:(id)a3;
- (void)p_informObserversOfAttachmentChange;
- (void)p_informObserversOfCompletedFetchOfZone:(id)a3;
- (void)p_informObserversOfRecordsChanged:(id)a3;
- (void)p_informObserversOfRecordsChanged:(id)a3 forRecordType:(id)a4;
- (void)p_informObserversOfSaltVersionIdentifierChanged:(id)a3 forZones:(id)a4 completion:(id)a5;
- (void)p_internetReachabilityChanged:(id)a3;
- (void)p_scheduleArchiveWithCompletion:(id)a3;
- (void)p_subscribeWithCompletion:(id)a3;
- (void)p_unarchive;
- (void)p_unsubscribeToContainer:(id)a3;
- (void)p_updateRetryParametersFromFetchZoneChangesOperationError:(id)a3;
- (void)recordZoneWithName:(id)a3 completionHandler:(id)a4;
- (void)registerServerChangeTokenStore:(id)a3 forZoneID:(id)a4;
- (void)removeObserver:(id)a3;
- (void)removeObserver:(id)a3 recordType:(id)a4;
- (void)unregisterServerChangeTokenStore:(id)a3;
- (void)willAttachToContainer:(id)a3 serviceMode:(BOOL)a4 completion:(id)a5;
- (void)zonesDeletedOrReset:(id)a3 completion:(id)a4;
- (void)zonesTemporarilyUnreadableWithError:(id)a3 completion:(id)a4;
- (void)zonesUnreadableDueToMissingD2DEncryptionIdentity:(id)a3 completion:(id)a4;
@end

@implementation BCCloudKitDatabaseController

- (BOOL)establishedSalt
{
  v2 = [(BCCloudKitDatabaseController *)self recordIDSalt];
  v3 = v2 != 0;

  return v3;
}

- (BCCloudKitDatabaseController)initWithConfiguration:(id)a3 archiveURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v40.receiver = self;
  v40.super_class = BCCloudKitDatabaseController;
  v9 = [(BCCloudKitDatabaseController *)&v40 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    objc_storeStrong(&v10->_archiveURL, a4);
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
    v35 = v8;
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
  v2 = [(BCCloudKitDatabaseController *)self configuration];
  v3 = [v2 dbSubscriptionID];

  return v3;
}

- (id)appBundleIdentifier
{
  v2 = [(BCCloudKitDatabaseController *)self configuration];
  v3 = [v2 appBundleIdentifier];

  return v3;
}

- (void)fetchChangesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100002660();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - fetchChangesWithCompletion:", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v7 = [(BCCloudKitDatabaseController *)self accessQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100023A14;
  v9[3] = &unk_10023FE48;
  objc_copyWeak(&v11, buf);
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)fetchRecordForRecordID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(BCCloudKitDatabaseController *)self accessQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100024024;
  v11[3] = &unk_100240228;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)willAttachToContainer:(id)a3 serviceMode:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(BCCloudKitDatabaseController *)self accessQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100024338;
  v13[3] = &unk_100240378;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, v13);
}

- (void)connectUserTo:(id)a3 container:(id)a4 updateSubscription:(BOOL)a5 completion:(id)a6 subscriptionCompletion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = sub_100002660();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v13 containerIdentifier];
    *buf = 138543362;
    v29 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - connectUserTo:container:updateSubscription:completion:", buf, 0xCu);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002475C;
  v22[3] = &unk_1002403E8;
  v22[4] = self;
  v23 = v13;
  v27 = a5;
  v24 = v12;
  v25 = v15;
  v26 = v14;
  v18 = v14;
  v19 = v15;
  v20 = v12;
  v21 = v13;
  [v21 fetchUserRecordIDWithCompletionHandler:v22];
}

- (void)attachToZones:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&_mh_execute_header, "BCCloudKitDatabaseController/attachToZones-cloud", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  v9 = [(BCCloudKitDatabaseController *)self containerIdentifier];
  v10 = [v9 containsString:@"cloudData"];

  if ((v10 & 1) == 0)
  {
    v11 = _os_activity_create(&_mh_execute_header, "BCCloudKitDatabaseController/attachToZones-secureData", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);

    v8 = v11;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024C0C;
  block[3] = &unk_1002404B0;
  v15 = v6;
  v16 = v7;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  os_activity_apply(v8, block);
}

- (void)detachWithError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025B38;
  block[3] = &unk_1002404D8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)getAttached:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudKitDatabaseController *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100025D20;
  v7[3] = &unk_10023F9F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)recordZoneWithName:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(BCCloudKitDatabaseController *)self database];

    if (v8)
    {
      v9 = [(BCCloudKitDatabaseController *)self accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100025EA0;
      block[3] = &unk_100240500;
      v11 = v6;
      v12 = self;
      v13 = v7;
      dispatch_async(v9, block);
    }

    else
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (id)saltedAndHashedIDFromLocalID:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudKitDatabaseController *)self recordIDSalt];
  v6 = v5;
  if (v5)
  {
    memset(&v13, 0, sizeof(v13));
    CCHmacInit(&v13, 0, [v5 bytes], objc_msgSend(v5, "length"));
    v7 = [v4 UTF8String];
    v8 = strlen(v7);
    CCHmacUpdate(&v13, v7, v8);
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

- (id)recordNameFromRecordType:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [(BCCloudKitDatabaseController *)self saltedAndHashedIDFromLocalID:v7];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  v10 = @"-";
  if (v6)
  {
    v10 = v6;
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

- (void)p_unsubscribeToContainer:(id)a3
{
  v4 = a3;
  v5 = [v4 privateCloudDatabase];
  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [CKModifySubscriptionsOperation alloc];
    v7 = [(BCCloudKitDatabaseController *)self subscriptionID];
    v15 = v7;
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    v9 = [v6 initWithSubscriptionsToSave:0 subscriptionIDsToDelete:v8];

    v10 = +[CKOperationConfiguration bds_defaultConfiguration];
    [v10 setContainer:v4];
    [v9 setConfiguration:v10];
    [v9 setDatabase:v5];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100026414;
    v11[3] = &unk_100240528;
    objc_copyWeak(&v13, &location);
    v12 = v4;
    [v9 setModifySubscriptionsCompletionBlock:v11];
    [v5 addOperation:v9];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)p_subscribeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100002660();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543362;
    v34 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "p_subscribeWithCompletion (%{public}@)", buf, 0xCu);
  }

  if ([(BCCloudKitDatabaseController *)self hasSubscription]|| ([(BCCloudKitDatabaseController *)self database], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, v9))
  {
    v24 = objc_retainBlock(v4);
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
    v12 = [(BCCloudKitDatabaseController *)self subscriptionID];
    v13 = [v11 initWithSubscriptionID:v12];

    v14 = objc_alloc_init(CKNotificationInfo);
    [v14 setShouldSendContentAvailable:1];
    [v13 setNotificationInfo:v14];
    objc_initWeak(&location, self);
    v15 = [CKModifySubscriptionsOperation alloc];
    v35 = v13;
    v16 = [NSArray arrayWithObjects:&v35 count:1];
    v17 = [v15 initWithSubscriptionsToSave:v16 subscriptionIDsToDelete:0];

    v18 = +[CKOperationConfiguration bds_defaultConfiguration];
    v19 = [(BCCloudKitDatabaseController *)self container];
    [v18 setContainer:v19];

    [v17 setConfiguration:v18];
    v20 = [(BCCloudKitDatabaseController *)self database];
    [v17 setDatabase:v20];

    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_10002699C;
    v28 = &unk_100240550;
    objc_copyWeak(&v31, &location);
    v29 = self;
    v30 = v4;
    [v17 setModifySubscriptionsCompletionBlock:&v25];
    v21 = sub_100002660();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = [v17 operationID];
      sub_1001BF288(v17, v22, buf, v21);
    }

    v23 = [(BCCloudKitDatabaseController *)self database];
    [v23 addOperation:v17];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }
}

- (void)p_fetchDatabaseChanges:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100002660();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v8 = [(BCCloudKitDatabaseController *)self serverChangeToken];
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- Adding fetch database changes, serverChangeToken: %{public}@", buf, 0x16u);
  }

  v9 = [(BCCloudKitDatabaseController *)self database];
  if (v9)
  {
    v10 = [CKFetchDatabaseChangesOperation alloc];
    v11 = [(BCCloudKitDatabaseController *)self serverChangeToken];
    v12 = [v10 initWithPreviousServerChangeToken:v11];

    [v12 setFetchAllChanges:1];
    v13 = +[CKOperationConfiguration bds_defaultConfiguration];
    v14 = [(BCCloudKitDatabaseController *)self container];
    [v13 setContainer:v14];

    [v12 setConfiguration:v13];
    v15 = [(BCCloudKitDatabaseController *)self database];
    [v12 setDatabase:v15];

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
    v16 = [(BCCloudKitDatabaseController *)self configuration];
    v17 = [v16 serviceZones];
    v18 = [NSSet setWithArray:v17];

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
    v26 = self;
    v27 = v4;
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

    [v9 addOperation:v12];
    _Block_object_dispose(buf, 8);

    goto LABEL_9;
  }

  v12 = objc_retainBlock(v4);
  if (v12)
  {
    v13 = [NSError errorWithDomain:@"BDSErrorDomain" code:1004 userInfo:0];
    (*(v12 + 2))(v12, v13);
LABEL_9:
  }
}

- (void)p_createRecordZones:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(BCCloudKitDatabaseController *)self database];
  v10 = sub_100002660();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v12 = v6;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10003104C;
    v29 = &unk_100240B70;
    v30 = objc_alloc_init(NSMutableArray);
    v13 = v30;
    [v12 enumerateObjectsUsingBlock:buf];
    v14 = [v13 componentsJoinedByString:{@", "}];

    v15 = [(BCCloudKitDatabaseController *)self database];
    *buf = 138412802;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v14;
    *&buf[22] = 2114;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[BCCloudKitDatabaseController (%@)] 2. p_createRecordZones:%@ database:%{public}@", buf, 0x20u);
  }

  if ([v6 count] && v9)
  {
    v16 = [[CKFetchRecordZonesOperation alloc] initWithRecordZoneIDs:v6];
    v17 = +[CKOperationConfiguration bds_defaultConfiguration];
    v18 = [(BCCloudKitDatabaseController *)self container];
    [v17 setContainer:v18];
    [v16 setConfiguration:v17];
    [v16 setDatabase:v9];
    objc_initWeak(buf, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000283A4;
    v22[3] = &unk_100240770;
    objc_copyWeak(&v27, buf);
    v26 = v7;
    v23 = v6;
    v19 = v18;
    v24 = v19;
    v20 = v9;
    v25 = v20;
    [v16 setFetchRecordZonesCompletionBlock:v22];
    [v20 addOperation:v16];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  else
  {
    v21 = objc_retainBlock(v7);
    v16 = v21;
    if (v21)
    {
      (*(v21 + 2))(v21, 0);
    }
  }
}

- (void)p_createRecordIDSaltWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100002660();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v8 = [(BCCloudKitDatabaseController *)self database];
    *buf = 138543618;
    v16 = v7;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) Establishing record salt, database:%{public}@", buf, 0x16u);
  }

  v9 = [[CKRecordID alloc] initWithRecordName:@"recordIDSalt"];
  objc_initWeak(buf, self);
  v10 = [(BCCloudKitDatabaseController *)self database];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100029B18;
  v12[3] = &unk_1002407C0;
  objc_copyWeak(&v14, buf);
  v12[4] = self;
  v11 = v4;
  v13 = v11;
  [v10 fetchRecordWithID:v9 completionHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)p_fetchZoneChanges:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  if ([(BCCloudKitDatabaseController *)self serverFetchPostponed])
  {
    v6 = sub_100002660();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "fetch zone changes attempted while postponing such fetches.  Nil error, but this operation will be attempted again after the back-off period.", buf, 2u);
    }

    v4[2](v4, 0);
  }

  else
  {
    v7 = +[NSMutableArray array];
    v8 = +[NSMutableArray array];
    v9 = [(BCCloudKitDatabaseController *)self tokenStores];
    v10 = [v9 allKeys];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10002AA34;
    v18[3] = &unk_1002407E8;
    v18[4] = self;
    v19 = v7;
    v11 = v8;
    v20 = v11;
    v12 = v7;
    [v10 enumerateObjectsUsingBlock:v18];

    v13 = [v12 copy];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002AB2C;
    v15[3] = &unk_100240460;
    v15[4] = self;
    v16 = v11;
    v17 = v4;
    v14 = v11;
    [(BCCloudKitDatabaseController *)self p_fetchRecordZoneChangesForRecordZoneIDs:v13 completionHandler:v15];
  }
}

- (void)p_fetchRecordZoneChangesForRecordZoneIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 count];
  v10 = sub_100002660();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = [(BCCloudKitDatabaseController *)self containerIdentifier];
      *buf = 138543618;
      v35 = v12;
      v36 = 2114;
      v37 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- fetching record zone changes for recordZoneIDs:%{public}@", buf, 0x16u);
    }

    v13 = [(BCCloudKitDatabaseController *)self recordZones];
    [(BCCloudKitDatabaseController *)self desiredRecordZoneIDs];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10002B064;
    v31[3] = &unk_100240810;
    v33 = v32 = v13;
    v14 = v33;
    v15 = v13;
    [v6 enumerateObjectsUsingBlock:v31];
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
    [v6 enumerateObjectsUsingBlock:v28];
    v19 = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002B3A0;
    block[3] = &unk_100240488;
    v24 = v17;
    v25 = self;
    v26 = v6;
    v27 = v7;
    v20 = v17;
    dispatch_group_notify(v18, v19, block);
  }

  else
  {
    if (v11)
    {
      v21 = [(BCCloudKitDatabaseController *)self containerIdentifier];
      *buf = 138543362;
      v35 = v21;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- No record zone changes to fetch", buf, 0xCu);
    }

    self->_fetchRecordZoneChangesSuccess = 1;
    v22 = objc_retainBlock(v7);
    v15 = v22;
    if (v22)
    {
      (*(v22 + 2))(v22, 0);
    }
  }
}

- (void)p_updateRetryParametersFromFetchZoneChangesOperationError:(id)a3
{
  v15 = a3;
  v4 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v15 domain];
  v6 = [v5 isEqualToString:CKErrorDomain];

  v7 = 5.0;
  if (!v6)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  v8 = [v15 userInfo];
  v9 = [v8 objectForKeyedSubscript:CKErrorRetryAfterKey];
  v10 = BUDynamicCast();
  [v10 doubleValue];
  v7 = v11;

  if (v7 > 0.0)
  {
LABEL_7:
    [(BCCloudKitDatabaseController *)self setBackOffInterval:v7];
    goto LABEL_8;
  }

  v12 = [v15 code];
  if (v12 <= 0x17 && ((1 << v12) & 0x8000C0) != 0)
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

- (void)p_fetchRecordZoneChanges:(id)a3 optionsByRecordZoneID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100002660();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v13 = v8;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10003104C;
    v52 = &unk_100240B70;
    *&v53 = objc_alloc_init(NSMutableArray);
    v14 = v53;
    [v13 enumerateObjectsUsingBlock:buf];
    v15 = [v14 componentsJoinedByString:{@", "}];

    v16 = [(BCCloudKitDatabaseController *)self database];
    *buf = 138544130;
    *&buf[4] = v12;
    *&buf[12] = 2114;
    *&buf[14] = v15;
    *&buf[22] = 2114;
    v52 = v9;
    LOWORD(v53) = 2048;
    *(&v53 + 2) = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges recordZoneIDs:%{public}@, optionsByRecordZoneID:%{public}@ self.database=%p", buf, 0x2Au);
  }

  v17 = [(BCCloudKitDatabaseController *)self database];
  if (v17)
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
    v18 = [[CKFetchRecordZoneChangesOperation alloc] initWithRecordZoneIDs:v8 configurationsByRecordZoneID:v9];
    [v18 setFetchAllChanges:1];
    v19 = +[CKOperationConfiguration bds_defaultConfiguration];
    v20 = [(BCCloudKitDatabaseController *)self container];
    [v19 setContainer:v20];

    [v19 setQualityOfService:17];
    [v19 setDiscretionaryNetworkBehavior:0];
    [v19 setAutomaticallyRetryNetworkFailures:0];
    [v18 setConfiguration:v19];
    v21 = [(BCCloudKitDatabaseController *)self database];
    [v18 setDatabase:v21];

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
    v22 = v8;
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
    v31 = v10;
    [v18 setFetchRecordZoneChangesCompletionBlock:v29];
    v24 = sub_100002660();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(BCCloudKitDatabaseController *)self containerIdentifier];
      *v47 = 138543618;
      v48 = v25;
      v49 = 2112;
      v50 = v18;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges Adding fetchRecordZoneChangesOperation=%@", v47, 0x16u);
    }

    v26 = [(BCCloudKitDatabaseController *)self database];
    [v26 addOperation:v18];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);

    _Block_object_dispose(v45, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v27 = objc_retainBlock(v10);
    if (v27)
    {
      v28 = [NSError errorWithDomain:@"BDSErrorDomain" code:1004 userInfo:0];
      v27[2](v27, v28);
    }
  }
}

- (void)p_internetReachabilityChanged:(id)a3
{
  v4 = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D7D0;
  block[3] = &unk_10023F6B0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)p_informObserversOfAttachmentChange
{
  v3 = sub_100002660();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v5 = [(BCCloudKitDatabaseController *)self attachedToContainer];
    v6 = @"NO";
    if (v5)
    {
      v6 = @"YES";
    }

    *buf = 138543618;
    v32 = v4;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfAttachmentChange. Attached to container: %@", buf, 0x16u);
  }

  v7 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v7);

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
        v13 = [(BCCloudKitDatabaseController *)self observers];
        v14 = [v13 objectForKeyedSubscript:v12];

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

- (void)p_informObserversOfRecordsChanged:(id)a3
{
  v4 = a3;
  v5 = sub_100002660();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfRecordsChanged.", buf, 0xCu);
  }

  v7 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v7);

  if ([v4 count])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002DDF8;
    v8[3] = &unk_100240A58;
    v8[4] = self;
    [v4 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

- (void)p_informObserversOfSaltVersionIdentifierChanged:(id)a3 forZones:(id)a4 completion:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002DFDC;
  v11[3] = &unk_100240488;
  v12 = self;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v8 = v15;
  v9 = v14;
  v10 = v13;
  os_unfair_lock_lock(&v12->_zoneObserversLock);
  sub_10002DFDC(v11);
  os_unfair_lock_unlock(&self->_zoneObserversLock);
}

- (void)p_informObserversOfRecordsChanged:(id)a3 forRecordType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100002660();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543874;
    v27 = v10;
    v28 = 2050;
    v29 = [v6 count];
    v30 = 2114;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfRecordsChanged: changedRecords.count=%{public}lu recordType=%{public}@", buf, 0x20u);
  }

  if ([v6 count])
  {
    v11 = [(BCCloudKitDatabaseController *)self observers];
    v12 = [v11 objectForKeyedSubscript:v7];

    if ([v12 count])
    {
      v20 = v7;
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
            v19 = [[NSArray alloc] initWithArray:v6 copyItems:1];
            [v18 databaseController:self recordsChanged:v19];

            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v15);
      }

      v7 = v20;
    }
  }
}

- (void)p_informObserversOfCompletedFetchOfZone:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100002660();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543618;
    v32 = v7;
    v33 = 2114;
    v34 = v4;
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
        v13 = [(BCCloudKitDatabaseController *)self observers];
        v14 = [v13 objectForKeyedSubscript:v12];

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

                [*(*(&v21 + 1) + 8 * v19) databaseController:self fetchedAllRecordsInZone:v4];
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

- (void)p_scheduleArchiveWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(BCCloudKitDatabaseController *)self coalescedArchive];
  [v6 signalWithCompletion:v4];
}

- (void)p_unarchive
{
  v3 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v7 = [(BCCloudKitDatabaseController *)self archiveURL];
  if (v7)
  {
    v4 = [[NSData alloc] initWithContentsOfURL:v7];
    if (v4)
    {
      v5 = v4;
      v6 = [(BCCloudKitDatabaseController *)self p_unarchiveFromData:v4];
    }
  }
}

- (id)p_archiveToData
{
  v3 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  if (v4)
  {
    if ([(BCCloudKitDatabaseController *)self hasSubscription])
    {
      [v4 encodeInteger:1 forKey:@"hasUpdatedSubscription"];
    }

    v5 = [(BCCloudKitDatabaseController *)self serverChangeToken];
    if (v5)
    {
      [v4 encodeObject:v5 forKey:@"serverChangeToken"];
    }

    v6 = [(BCCloudKitDatabaseController *)self changedRecordZoneIDs];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [(BCCloudKitDatabaseController *)self changedRecordZoneIDs];
      [v4 encodeObject:v8 forKey:@"changedRecordZoneIDs"];
    }

    v9 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [(BCCloudKitDatabaseController *)self containerIdentifier];
      [v4 encodeObject:v11 forKey:@"containerIdentifier"];
    }

    v12 = [(BCCloudKitDatabaseController *)self userRecordID];

    if (v12)
    {
      v13 = [(BCCloudKitDatabaseController *)self userRecordID];
      [v4 encodeObject:v13 forKey:@"userRecordID"];
    }

    [v4 finishEncoding];
    v14 = [v4 encodedData];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)p_unarchiveFromData:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v16 = 0;
    v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v4 error:&v16];
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

+ (id)encodeRecordSystemFields:(id)a3
{
  v3 = a3;
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v3 encodeSystemFieldsWithCoder:v4];

  [v4 finishEncoding];
  v5 = [v4 encodedData];

  return v5;
}

+ (id)decodeRecordFromSystemFields:(id)a3
{
  v3 = a3;
  v9 = 0;
  v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v3 error:&v9];

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

- (void)_deleteRecordZonesWithIDs:(id)a3 qualityOfService:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v10);

  v11 = sub_100002660();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Deleting zone: (%{public}@)", buf, 0xCu);
  }

  if (self->_container)
  {
    v12 = [[CKModifyRecordZonesOperation alloc] initWithRecordZonesToSave:0 recordZoneIDsToDelete:v8];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10002F2C0;
    v18 = &unk_100240AA8;
    v19 = v8;
    v20 = v9;
    [v12 setModifyRecordZonesCompletionBlock:&v15];
    [v12 setQualityOfService:{a4, v15, v16, v17, v18}];
    v13 = [(CKContainer *)self->_container privateCloudDatabase];
    [v13 addOperation:v12];

    v14 = v19;
LABEL_7:

    goto LABEL_8;
  }

  v12 = objc_retainBlock(v9);
  if (v12)
  {
    v14 = [NSError errorWithDomain:CKErrorDomain code:5 userInfo:0];
    (*(v12 + 2))(v12, v14);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)zonesUnreadableDueToMissingD2DEncryptionIdentity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002660();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1001BF6A0(self);
  }

  v9 = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F480;
  block[3] = &unk_1002404D8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)zonesTemporarilyUnreadableWithError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002660();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1001BF73C(self);
  }

  v9 = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F838;
  block[3] = &unk_1002404D8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)zonesDeletedOrReset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002660();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543618;
    v15 = v9;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - zonesDeletedOrReset: %{public}@", buf, 0x16u);
  }

  v10 = [(BCCloudKitDatabaseController *)self accessQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002FA7C;
  v12[3] = &unk_10023FED8;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  dispatch_async(v10, v12);
}

- (void)addObserver:(id)a3 recordType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && [v7 length])
  {
    v9 = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002FC78;
    block[3] = &unk_10023F720;
    block[4] = self;
    v12 = v8;
    v13 = v6;
    dispatch_async(v9, block);
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

- (void)removeObserver:(id)a3 recordType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && [v7 length])
  {
    v9 = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002FE80;
    block[3] = &unk_10023F720;
    block[4] = self;
    v12 = v8;
    v13 = v6;
    dispatch_async(v9, block);
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

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BCCloudKitDatabaseController *)self accessQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000300C0;
    v14[3] = &unk_10023F938;
    v14[4] = self;
    v15 = v4;
    dispatch_async(v5, v14);
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

- (void)addObserver:(id)a3 zoneID:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000302F8;
  v8[3] = &unk_10023F720;
  v9 = a3;
  v10 = a4;
  v11 = self;
  v6 = v10;
  v7 = v9;
  os_unfair_lock_lock(&self->_zoneObserversLock);
  sub_1000302F8(v8);
  os_unfair_lock_unlock(&self->_zoneObserversLock);
}

- (void)registerServerChangeTokenStore:(id)a3 forZoneID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    objc_initWeak(&location, self);
    v9 = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100030568;
    block[3] = &unk_100240B20;
    objc_copyWeak(&v15, &location);
    v12 = v8;
    v13 = v6;
    v14 = self;
    dispatch_async(v9, block);

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

- (void)unregisterServerChangeTokenStore:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000309F8;
    block[3] = &unk_10023F9A8;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    dispatch_async(v5, block);

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
  v4 = [(BCCloudKitDatabaseController *)self accessQueue];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100030D50;
  v14 = &unk_100240B48;
  v17 = &v25;
  v18 = &v19;
  v15 = self;
  v5 = v3;
  v16 = v5;
  dispatch_async(v4, &v11);

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