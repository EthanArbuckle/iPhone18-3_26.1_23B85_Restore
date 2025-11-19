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

- (void)p_unarchive
{
  v3 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v7 = [(BCCloudKitDatabaseController *)self archiveURL];
  if (v7)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v7];
    if (v4)
    {
      v5 = v4;
      v6 = [(BCCloudKitDatabaseController *)self p_unarchiveFromData:v4];
    }
  }
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

    v13 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E461A9F0;
    block[3] = &unk_1E875A008;
    v22 = v10;
    v39 = v22;
    dispatch_sync(accessQueue, block);
    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    v24 = +[BDSReachability sharedReachabilityForInternetConnection];
    [v23 addObserver:v22 selector:sel_p_internetReachabilityChanged_ name:@"kNetworkReachabilityChangedNotification" object:v24];

    objc_initWeak(&location, v22);
    v25 = objc_alloc(MEMORY[0x1E698F548]);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_1E461A9F8;
    v34[3] = &unk_1E875A290;
    objc_copyWeak(&v36, &location);
    v35 = v8;
    v26 = [v25 initWithNotifyBlock:v34 notifyTimeout:10 blockDescription:@"_coalescedArchive in BCCloudKitDatabaseController" notifyTimeoutBlock:&unk_1F5E61F68];
    v27 = v22[8];
    v22[8] = v26;

    [v22[8] setCoalescingDelay:1.0];
    v28 = objc_alloc(MEMORY[0x1E698F548]);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_1E461ACE0;
    v32[3] = &unk_1E875A1E8;
    objc_copyWeak(&v33, &location);
    v29 = [v28 initWithNotifyBlock:v32 notifyTimeout:10 blockDescription:@"_coalescedZoneFetch in BCCloudKitDatabaseController" notifyTimeoutBlock:&unk_1F5E61F88];
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
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = BDSCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - fetchChangesWithCompletion:", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v7 = [(BCCloudKitDatabaseController *)self accessQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E461B468;
  v10[3] = &unk_1E87596B0;
  objc_copyWeak(&v12, buf);
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)fetchRecordForRecordID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(BCCloudKitDatabaseController *)self accessQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E461BA78;
  v11[3] = &unk_1E875A268;
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
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E461BD8C;
  v13[3] = &unk_1E875A358;
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
  v31 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = BDSCloudKitLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v13 containerIdentifier];
    *buf = 138543362;
    v30 = v17;
    _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - connectUserTo:container:updateSubscription:completion:", buf, 0xCu);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1E461C1B0;
  v23[3] = &unk_1E875A3A8;
  v23[4] = self;
  v24 = v13;
  v28 = a5;
  v25 = v12;
  v26 = v15;
  v27 = v14;
  v18 = v14;
  v19 = v15;
  v20 = v12;
  v21 = v13;
  [v21 fetchUserRecordIDWithCompletionHandler:v23];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)attachToZones:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1E45E0000, "BCCloudKitDatabaseController/attachToZones-cloud", MEMORY[0x1E69E9C08], OS_ACTIVITY_FLAG_DEFAULT);
  v9 = [(BCCloudKitDatabaseController *)self containerIdentifier];
  v10 = [v9 containsString:@"cloudData"];

  if ((v10 & 1) == 0)
  {
    v11 = _os_activity_create(&dword_1E45E0000, "BCCloudKitDatabaseController/attachToZones-secureData", MEMORY[0x1E69E9C08], OS_ACTIVITY_FLAG_DEFAULT);

    v8 = v11;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E461C660;
  block[3] = &unk_1E875A448;
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
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E461D58C;
  block[3] = &unk_1E875A470;
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
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E461D774;
  v7[3] = &unk_1E875A498;
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
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E461D8F4;
      block[3] = &unk_1E875A4C0;
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
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BCCloudKitDatabaseController *)self recordIDSalt];
  v6 = v5;
  if (v5)
  {
    memset(&v14, 0, sizeof(v14));
    CCHmacInit(&v14, 0, [v5 bytes], objc_msgSend(v5, "length"));
    v7 = [v4 UTF8String];
    v8 = strlen(v7);
    CCHmacUpdate(&v14, v7, v8);
    macOut[0] = 0;
    macOut[1] = 0;
    v16 = 0;
    CCHmacFinal(&v14, macOut);
    v9 = [MEMORY[0x1E695DEF0] dataWithBytes:macOut length:20];
    v10 = [v9 base64EncodedStringWithOptions:0];
  }

  else
  {
    v11 = BDSCloudKitLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706578();
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)establishedSalt
{
  v2 = [(BCCloudKitDatabaseController *)self recordIDSalt];
  v3 = v2 != 0;

  return v3;
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

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v10, v8];

  if (!v11)
  {
LABEL_6:
    v12 = BDSCloudKitLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E47065E0();
    }

    v11 = 0;
  }

  return v11;
}

- (void)p_unsubscribeToContainer:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 privateCloudDatabase];
  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = objc_alloc(MEMORY[0x1E695B9C8]);
    v7 = [(BCCloudKitDatabaseController *)self subscriptionID];
    v16[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v9 = [v6 initWithSubscriptionsToSave:0 subscriptionIDsToDelete:v8];

    v10 = [MEMORY[0x1E695BA00] bds_defaultConfiguration];
    [v10 setContainer:v4];
    [v9 setConfiguration:v10];
    [v9 setDatabase:v5];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E461DE9C;
    v12[3] = &unk_1E875A4E8;
    objc_copyWeak(&v14, &location);
    v13 = v4;
    [v9 setModifySubscriptionsCompletionBlock:v12];
    [v5 addOperation:v9];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)p_subscribeWithCompletion:(id)a3
{
  v36[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = BDSCloudKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543362;
    v35 = v7;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_INFO, "p_subscribeWithCompletion (%{public}@)", buf, 0xCu);
  }

  if ([(BCCloudKitDatabaseController *)self hasSubscription]|| ([(BCCloudKitDatabaseController *)self database], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, v9))
  {
    v24 = _Block_copy(v4);
    v13 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24);
    }
  }

  else
  {
    v10 = BDSCloudKitLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_INFO, "Attempting CKModifySubscriptionsOperation", buf, 2u);
    }

    v11 = objc_alloc(MEMORY[0x1E695B8C0]);
    v12 = [(BCCloudKitDatabaseController *)self subscriptionID];
    v13 = [v11 initWithSubscriptionID:v12];

    v14 = objc_alloc_init(MEMORY[0x1E695B9F0]);
    [v14 setShouldSendContentAvailable:1];
    [v13 setNotificationInfo:v14];
    objc_initWeak(&location, self);
    v15 = objc_alloc(MEMORY[0x1E695B9C8]);
    v36[0] = v13;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    v17 = [v15 initWithSubscriptionsToSave:v16 subscriptionIDsToDelete:0];

    v18 = [MEMORY[0x1E695BA00] bds_defaultConfiguration];
    v19 = [(BCCloudKitDatabaseController *)self container];
    [v18 setContainer:v19];

    [v17 setConfiguration:v18];
    v20 = [(BCCloudKitDatabaseController *)self database];
    [v17 setDatabase:v20];

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = sub_1E461E424;
    v29 = &unk_1E875A510;
    objc_copyWeak(&v32, &location);
    v30 = self;
    v31 = v4;
    [v17 setModifySubscriptionsCompletionBlock:&v26];
    v21 = BDSCloudKitLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = [v17 operationID];
      sub_1E4706648(v17, v22, buf, v21);
    }

    v23 = [(BCCloudKitDatabaseController *)self database];
    [v23 addOperation:v17];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)p_fetchDatabaseChanges:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = BDSCloudKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v8 = [(BCCloudKitDatabaseController *)self serverChangeToken];
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- Adding fetch database changes, serverChangeToken: %{public}@", buf, 0x16u);
  }

  v9 = [(BCCloudKitDatabaseController *)self database];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E695B8F8]);
    v11 = [(BCCloudKitDatabaseController *)self serverChangeToken];
    v12 = [v10 initWithPreviousServerChangeToken:v11];

    [v12 setFetchAllChanges:1];
    v13 = [MEMORY[0x1E695BA00] bds_defaultConfiguration];
    v14 = [(BCCloudKitDatabaseController *)self container];
    [v13 setContainer:v14];

    [v12 setConfiguration:v13];
    v15 = [(BCCloudKitDatabaseController *)self database];
    [v12 setDatabase:v15];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v42 = sub_1E461ECFC;
    v43 = sub_1E461ED0C;
    v44 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = sub_1E461ED14;
    v36[3] = &unk_1E875A538;
    v36[4] = self;
    v36[5] = buf;
    [v12 setRecordZoneWithIDWasDeletedBlock:v36];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1E461EEB4;
    v35[3] = &unk_1E875A538;
    v35[4] = self;
    v35[5] = buf;
    [v12 setRecordZoneWithIDWasPurgedBlock:v35];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_1E461F054;
    v34[3] = &unk_1E875A538;
    v34[4] = self;
    v34[5] = buf;
    [v12 setRecordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock:v34];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1E461F1F4;
    v33[3] = &unk_1E875A560;
    v33[4] = self;
    [v12 setChangeTokenUpdatedBlock:v33];
    v16 = MEMORY[0x1E695DFD8];
    v17 = [(BCCloudKitDatabaseController *)self configuration];
    v18 = [v17 appZones];
    v19 = [v16 setWithArray:v18];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1E461F3D4;
    v31[3] = &unk_1E875A588;
    v31[4] = self;
    v20 = v19;
    v32 = v20;
    [v12 setRecordZoneWithIDChangedBlock:v31];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = sub_1E461F60C;
    v27 = &unk_1E875A5D8;
    v30 = buf;
    v28 = self;
    v29 = v4;
    [v12 setFetchDatabaseChangesCompletionBlock:&v24];
    v21 = BDSCloudKitLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(BCCloudKitDatabaseController *)self containerIdentifier:v24];
      *v37 = 138543618;
      v38 = v22;
      v39 = 2112;
      v40 = v12;
      _os_log_impl(&dword_1E45E0000, v21, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- Adding fetch database changes %@", v37, 0x16u);
    }

    [v9 addOperation:v12];
    _Block_object_dispose(buf, 8);

    goto LABEL_9;
  }

  v12 = _Block_copy(v4);
  if (v12)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1004 userInfo:0];
    (*(v12 + 2))(v12, v13);
LABEL_9:
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)p_createRecordZones:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(BCCloudKitDatabaseController *)self database];
  v10 = BDSCloudKitLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v12 = MEMORY[0x1E695DF70];
    v13 = v6;
    v14 = objc_alloc_init(v12);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1E4628A28;
    v32 = &unk_1E875AAB0;
    v33 = v14;
    v15 = v14;
    [v13 enumerateObjectsUsingBlock:buf];
    v16 = [v15 componentsJoinedByString:{@", "}];

    v17 = [(BCCloudKitDatabaseController *)self database];
    *buf = 138412802;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    *&buf[22] = 2114;
    v32 = v17;
    _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_DEFAULT, "[BCCloudKitDatabaseController (%@)] 2. p_createRecordZones:%@ database:%{public}@", buf, 0x20u);
  }

  if ([v6 count] && v9)
  {
    v18 = [objc_alloc(MEMORY[0x1E695B928]) initWithRecordZoneIDs:v6];
    v19 = [MEMORY[0x1E695BA00] bds_defaultConfiguration];
    v20 = [(BCCloudKitDatabaseController *)self container];
    [v19 setContainer:v20];
    [v18 setConfiguration:v19];
    [v18 setDatabase:v9];
    objc_initWeak(buf, self);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1E461FE2C;
    v25[3] = &unk_1E875A6F0;
    objc_copyWeak(&v30, buf);
    v29 = v7;
    v26 = v6;
    v21 = v20;
    v27 = v21;
    v22 = v9;
    v28 = v22;
    [v18 setFetchRecordZonesCompletionBlock:v25];
    [v22 addOperation:v18];

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  else
  {
    v23 = _Block_copy(v7);
    v18 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, 0);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)p_createRecordIDSaltWithCompletion:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = BDSCloudKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v8 = [(BCCloudKitDatabaseController *)self database];
    *buf = 138543618;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) Establishing record salt, database:%{public}@", buf, 0x16u);
  }

  v9 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"recordIDSalt"];
  objc_initWeak(buf, self);
  v10 = [(BCCloudKitDatabaseController *)self database];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E46215A0;
  v13[3] = &unk_1E875A740;
  objc_copyWeak(&v15, buf);
  v13[4] = self;
  v11 = v4;
  v14 = v11;
  [v10 fetchRecordWithID:v9 completionHandler:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)p_fetchZoneChanges:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  if ([(BCCloudKitDatabaseController *)self serverFetchPostponed])
  {
    v6 = BDSCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "fetch zone changes attempted while postponing such fetches.  Nil error, but this operation will be attempted again after the back-off period.", buf, 2u);
    }

    v4[2](v4, 0);
  }

  else
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [(BCCloudKitDatabaseController *)self tokenStores];
    v10 = [v9 allKeys];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1E46224BC;
    v18[3] = &unk_1E875A768;
    v18[4] = self;
    v19 = v7;
    v11 = v8;
    v20 = v11;
    v12 = v7;
    [v10 enumerateObjectsUsingBlock:v18];

    v13 = [v12 copy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E46225B4;
    v15[3] = &unk_1E875A420;
    v15[4] = self;
    v16 = v11;
    v17 = v4;
    v14 = v11;
    [(BCCloudKitDatabaseController *)self p_fetchRecordZoneChangesForRecordZoneIDs:v13 completionHandler:v15];
  }
}

- (void)p_fetchRecordZoneChangesForRecordZoneIDs:(id)a3 completionHandler:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 count];
  v10 = BDSCloudKitLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = [(BCCloudKitDatabaseController *)self containerIdentifier];
      *buf = 138543618;
      v38 = v12;
      v39 = 2114;
      v40 = v6;
      _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- fetching record zone changes for recordZoneIDs:%{public}@", buf, 0x16u);
    }

    v13 = [(BCCloudKitDatabaseController *)self recordZones];
    v14 = [(BCCloudKitDatabaseController *)self desiredRecordZoneIDs];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_1E4622AEC;
    v34[3] = &unk_1E875A790;
    v35 = v13;
    v36 = v14;
    v15 = v14;
    v16 = v13;
    [v6 enumerateObjectsUsingBlock:v34];
    v17 = objc_opt_new();
    v18 = dispatch_group_create();
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1E4622BA8;
    v31[3] = &unk_1E875A768;
    v31[4] = self;
    v32 = v18;
    v19 = v17;
    v33 = v19;
    v20 = v18;
    [v6 enumerateObjectsUsingBlock:v31];
    v21 = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4622E28;
    block[3] = &unk_1E8759CE0;
    v27 = v19;
    v28 = self;
    v29 = v6;
    v30 = v7;
    v22 = v19;
    dispatch_group_notify(v20, v21, block);
  }

  else
  {
    if (v11)
    {
      v23 = [(BCCloudKitDatabaseController *)self containerIdentifier];
      *buf = 138543362;
      v38 = v23;
      _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- No record zone changes to fetch", buf, 0xCu);
    }

    self->_fetchRecordZoneChangesSuccess = 1;
    v24 = _Block_copy(v7);
    v16 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24, 0);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)p_updateRetryParametersFromFetchZoneChangesOperationError:(id)a3
{
  v15 = a3;
  v4 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v15 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x1E695B740]];

  v7 = 5.0;
  if (!v6)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  v8 = [v15 userInfo];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695B748]];
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
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = BDSCloudKitLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    v13 = MEMORY[0x1E695DF70];
    v14 = v8;
    v15 = objc_alloc_init(v13);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1E4628A28;
    v55 = &unk_1E875AAB0;
    *&v56 = v15;
    v16 = v15;
    [v14 enumerateObjectsUsingBlock:buf];
    v17 = [v16 componentsJoinedByString:{@", "}];

    v18 = [(BCCloudKitDatabaseController *)self database];
    *buf = 138544130;
    *&buf[4] = v12;
    *&buf[12] = 2114;
    *&buf[14] = v17;
    *&buf[22] = 2114;
    v55 = v9;
    LOWORD(v56) = 2048;
    *(&v56 + 2) = v18;
    _os_log_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges recordZoneIDs:%{public}@, optionsByRecordZoneID:%{public}@ self.database=%p", buf, 0x2Au);
  }

  v19 = [(BCCloudKitDatabaseController *)self database];
  if (v19)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v55 = sub_1E461ECFC;
    *&v56 = sub_1E461ED0C;
    *(&v56 + 1) = objc_opt_new();
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x3032000000;
    v48[3] = sub_1E461ECFC;
    v48[4] = sub_1E461ED0C;
    v49 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v20 = [objc_alloc(MEMORY[0x1E695B918]) initWithRecordZoneIDs:v8 configurationsByRecordZoneID:v9];
    [v20 setFetchAllChanges:1];
    v21 = [MEMORY[0x1E695BA00] bds_defaultConfiguration];
    v22 = [(BCCloudKitDatabaseController *)self container];
    [v21 setContainer:v22];

    [v21 setQualityOfService:17];
    [v21 setDiscretionaryNetworkBehavior:0];
    [v21 setAutomaticallyRetryNetworkFailures:0];
    [v20 setConfiguration:v21];
    v23 = [(BCCloudKitDatabaseController *)self database];
    [v20 setDatabase:v23];

    objc_initWeak(&location, self);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = sub_1E46238EC;
    v46[3] = &unk_1E875A808;
    v46[4] = self;
    v46[5] = buf;
    [v20 setRecordChangedBlock:v46];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = sub_1E4623B4C;
    v45[3] = &unk_1E875A830;
    v45[4] = self;
    [v20 setRecordWithIDWasDeletedBlock:v45];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = sub_1E4623DAC;
    v42[3] = &unk_1E875A880;
    v42[4] = self;
    v24 = v8;
    v43 = v24;
    v44 = buf;
    [v20 setRecordZoneChangeTokensUpdatedBlock:v42];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = sub_1E4624070;
    v38[3] = &unk_1E875A8D0;
    v38[4] = self;
    v25 = v24;
    v39 = v25;
    v40 = v48;
    v41 = buf;
    [v20 setRecordZoneFetchCompletionBlock:v38];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_1E46247C0;
    v32[3] = &unk_1E875A970;
    v32[4] = self;
    objc_copyWeak(&v37, &location);
    v35 = v48;
    v33 = v25;
    v36 = buf;
    v34 = v10;
    [v20 setFetchRecordZoneChangesCompletionBlock:v32];
    v26 = BDSCloudKitLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(BCCloudKitDatabaseController *)self containerIdentifier];
      *v50 = 138543618;
      v51 = v27;
      v52 = 2112;
      v53 = v20;
      _os_log_impl(&dword_1E45E0000, v26, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges Adding fetchRecordZoneChangesOperation=%@", v50, 0x16u);
    }

    v28 = [(BCCloudKitDatabaseController *)self database];
    [v28 addOperation:v20];

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);

    _Block_object_dispose(v48, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v29 = _Block_copy(v10);
    if (v29)
    {
      v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1004 userInfo:0];
      v29[2](v29, v30);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)p_internetReachabilityChanged:(id)a3
{
  v4 = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4625258;
  block[3] = &unk_1E875A008;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)p_informObserversOfAttachmentChange
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = BDSCloudKitLog();
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
    v33 = v4;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfAttachmentChange. Attached to container: %@", buf, 0x16u);
  }

  v7 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v7);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(BCCloudKitDatabaseController *)self observers];
  v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        v13 = [(BCCloudKitDatabaseController *)self observers];
        v14 = [v13 objectForKeyedSubscript:v12];

        if ([v14 count])
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v23;
            do
            {
              v19 = 0;
              do
              {
                if (*v23 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                [*(*(&v22 + 1) + 8 * v19++) databaseController:self attachmentChanged:{-[BCCloudKitDatabaseController attachedToContainer](self, "attachedToContainer")}];
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v17);
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)p_informObserversOfRecordsChanged:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = BDSCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfRecordsChanged.", buf, 0xCu);
  }

  v7 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v7);

  if ([v4 count])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E4625880;
    v9[3] = &unk_1E875A998;
    v9[4] = self;
    [v4 enumerateKeysAndObjectsUsingBlock:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)p_informObserversOfSaltVersionIdentifierChanged:(id)a3 forZones:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E4625A64;
  v14[3] = &unk_1E8759CE0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  os_unfair_lock_lock(&self->_zoneObserversLock);
  sub_1E4625A64(v14);
  os_unfair_lock_unlock(&self->_zoneObserversLock);
}

- (void)p_informObserversOfRecordsChanged:(id)a3 forRecordType:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v8);

  v9 = BDSCloudKitLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543874;
    v28 = v10;
    v29 = 2050;
    v30 = [v6 count];
    v31 = 2114;
    v32 = v7;
    _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfRecordsChanged: changedRecords.count=%{public}lu recordType=%{public}@", buf, 0x20u);
  }

  if ([v6 count])
  {
    v11 = [(BCCloudKitDatabaseController *)self observers];
    v12 = [v11 objectForKeyedSubscript:v7];

    if ([v12 count])
    {
      v21 = v7;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
        do
        {
          v17 = 0;
          do
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v22 + 1) + 8 * v17);
            v19 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v6 copyItems:1];
            [v18 databaseController:self recordsChanged:v19];

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v15);
      }

      v7 = v21;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)p_informObserversOfCompletedFetchOfZone:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = BDSCloudKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543618;
    v33 = v7;
    v34 = 2114;
    v35 = v4;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfCompletedFetchOfZone zoneName=%{public}@", buf, 0x16u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(BCCloudKitDatabaseController *)self observers];
  v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        v13 = [(BCCloudKitDatabaseController *)self observers];
        v14 = [v13 objectForKeyedSubscript:v12];

        if ([v14 count])
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v23;
            do
            {
              v19 = 0;
              do
              {
                if (*v23 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                [*(*(&v22 + 1) + 8 * v19++) databaseController:self fetchedAllRecordsInZone:v4];
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v17);
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)p_scheduleArchiveWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(BCCloudKitDatabaseController *)self coalescedArchive];
  [v6 signalWithCompletion:v4];
}

- (id)p_archiveToData
{
  v3 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
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
    v17 = 0;
    v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v4 error:&v17];
    v7 = v17;
    if (v7)
    {
      v8 = BDSCloudKitLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1E4706988();
      }
    }

    else
    {
      -[BCCloudKitDatabaseController setHasSubscription:](self, "setHasSubscription:", [v6 decodeIntegerForKey:@"hasUpdatedSubscription"] == 1);
      v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"serverChangeToken"];
      [(BCCloudKitDatabaseController *)self setServerChangeToken:v9];

      v10 = MEMORY[0x1E695DFD8];
      v11 = objc_opt_class();
      v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
      v8 = [v6 decodeObjectOfClasses:v12 forKey:@"changedRecordZoneIDs"];

      if (v8)
      {
        [(BCCloudKitDatabaseController *)self setChangedRecordZoneIDs:v8];
      }

      else
      {
        v13 = objc_opt_new();
        [(BCCloudKitDatabaseController *)self setChangedRecordZoneIDs:v13];
      }

      v14 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"containerIdentifier"];
      [(BCCloudKitDatabaseController *)self setContainerIdentifier:v14];

      v15 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"userRecordID"];
      [(BCCloudKitDatabaseController *)self setUserRecordID:v15];

      [v6 finishDecoding];
    }
  }

  return 0;
}

+ (id)encodeRecordSystemFields:(id)a3
{
  v3 = MEMORY[0x1E696ACC8];
  v4 = a3;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v4 encodeSystemFieldsWithCoder:v5];

  [v5 finishEncoding];
  v6 = [v5 encodedData];

  return v6;
}

+ (id)decodeRecordFromSystemFields:(id)a3
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = a3;
  v10 = 0;
  v5 = [[v3 alloc] initForReadingFromData:v4 error:&v10];

  v6 = v10;
  if (v6)
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706988();
    }

    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695BA60]) initWithCoder:v5];
    [v5 finishDecoding];
  }

  return v8;
}

+ (void)startInternetConnectionReachabilityNotifier
{
  v2 = +[BDSReachability sharedReachabilityForInternetConnection];
  [v2 startNotifier];
}

- (void)_deleteRecordZonesWithIDs:(id)a3 qualityOfService:(int64_t)a4 completion:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(BCCloudKitDatabaseController *)self accessQueue];
  dispatch_assert_queue_V2(v10);

  v11 = BDSCloudKitLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v23 = v8;
    _os_log_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_INFO, "Deleting zone: (%{public}@)", buf, 0xCu);
  }

  if (self->_container)
  {
    v12 = [objc_alloc(MEMORY[0x1E695B9B0]) initWithRecordZonesToSave:0 recordZoneIDsToDelete:v8];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = sub_1E4626CB0;
    v19 = &unk_1E875A9E8;
    v20 = v8;
    v21 = v9;
    [v12 setModifyRecordZonesCompletionBlock:&v16];
    [v12 setQualityOfService:{a4, v16, v17, v18, v19}];
    v13 = [(CKContainer *)self->_container privateCloudDatabase];
    [v13 addOperation:v12];

    v14 = v20;
LABEL_7:

    goto LABEL_8;
  }

  v12 = _Block_copy(v9);
  if (v12)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:5 userInfo:0];
    (*(v12 + 2))(v12, v14);
    goto LABEL_7;
  }

LABEL_8:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)zonesUnreadableDueToMissingD2DEncryptionIdentity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BDSCloudKitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1E4706A60(self);
  }

  v9 = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4626E70;
  block[3] = &unk_1E875A470;
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
  v8 = BDSCloudKitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1E4706AFC(self);
  }

  v9 = [(BCCloudKitDatabaseController *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4627228;
  block[3] = &unk_1E875A470;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)zonesDeletedOrReset:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = BDSCloudKitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(BCCloudKitDatabaseController *)self containerIdentifier];
    *buf = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - zonesDeletedOrReset: %{public}@", buf, 0x16u);
  }

  v10 = [(BCCloudKitDatabaseController *)self accessQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E462746C;
  v13[3] = &unk_1E875A3D0;
  v13[4] = self;
  v14 = v7;
  v11 = v7;
  dispatch_async(v10, v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)a3 recordType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && [v7 length])
  {
    v9 = [(BCCloudKitDatabaseController *)self accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4627668;
    block[3] = &unk_1E8759FE0;
    block[4] = self;
    v12 = v8;
    v13 = v6;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = BDSCloudKitLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706B98();
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4627870;
    block[3] = &unk_1E8759FE0;
    block[4] = self;
    v12 = v8;
    v13 = v6;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = BDSCloudKitLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706B98();
    }
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BCCloudKitDatabaseController *)self accessQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E4627AB0;
    v14[3] = &unk_1E875A030;
    v14[4] = self;
    v15 = v4;
    dispatch_async(v5, v14);
  }

  else
  {
    v6 = BDSCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706CEC(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

- (void)addObserver:(id)a3 zoneID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E4627CE8;
  v10[3] = &unk_1E8759FE0;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
  os_unfair_lock_lock(&self->_zoneObserversLock);
  sub_1E4627CE8(v10);
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4627F58;
    block[3] = &unk_1E875AA60;
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
    v10 = BDSCloudKitLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706DD0();
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E46283E8;
    block[3] = &unk_1E875A178;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    dispatch_async(v5, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = BDSCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706EAC(v6);
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
  v22 = sub_1E461ECFC;
  v23 = sub_1E461ED0C;
  v24 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = [(BCCloudKitDatabaseController *)self accessQueue];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_1E4628740;
  v14 = &unk_1E875AA88;
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