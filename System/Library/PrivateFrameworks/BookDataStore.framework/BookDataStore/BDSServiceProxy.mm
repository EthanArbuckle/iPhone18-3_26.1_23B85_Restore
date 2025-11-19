@interface BDSServiceProxy
- (BDSServiceProxy)initWithConnectionDelegate:(id)a3;
- (BDSServiceProxyConnectionDelegate)connectionDelegate;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)updateReadingNowWithCompletion:(id)a3;
- (id)updateWantToReadWithCompletion:(id)a3;
- (void)addStoreItem:(id)a3 completion:(id)a4;
- (void)addStoreItems:(id)a3 completion:(id)a4;
- (void)assetDetailForAssetID:(id)a3 completion:(id)a4;
- (void)assetDetailsForAssetIDs:(id)a3 completion:(id)a4;
- (void)assetReviewForAssetReviewID:(id)a3 completion:(id)a4;
- (void)assetReviewsForAssetReviewIDs:(id)a3 completion:(id)a4;
- (void)audiobookStoreEnabledWithCompletion:(id)a3;
- (void)bookWidgetReadingHistoryStateInfoWithCompletion:(id)a3;
- (void)clearSyncMetadata:(id)a3;
- (void)cloudSyncDiagnosticDetachWithCompletionHandler:(id)a3;
- (void)cloudSyncDiagnosticFindLocalIdDupesWithCompletionHandler:(id)a3;
- (void)cloudSyncDiagnosticInfoWithCompletionHandler:(id)a3;
- (void)collectionDetailForCollectionID:(id)a3 completion:(id)a4;
- (void)collectionDetailsForCollectionIDs:(id)a3 completion:(id)a4;
- (void)collectionMemberForCollectionMemberID:(id)a3 completion:(id)a4;
- (void)currentAssetDetailCloudSyncVersions:(id)a3;
- (void)currentCloudSyncVersions:(id)a3;
- (void)currentCollectionDetailCloudSyncVersions:(id)a3;
- (void)currentCollectionMemberCloudSyncVersions:(id)a3;
- (void)currentReadingNowDetailCloudSyncVersions:(id)a3;
- (void)dealloc;
- (void)deleteAssetDetailForAssetID:(id)a3 completion:(id)a4;
- (void)deleteAssetReviewForAssetReviewID:(id)a3 completion:(id)a4;
- (void)deleteAssetReviewForAssetReviewIDs:(id)a3 completion:(id)a4;
- (void)deleteCollectionDetailForCollectionID:(id)a3 completion:(id)a4;
- (void)deleteCollectionDetailForCollectionIDs:(id)a3 completion:(id)a4;
- (void)deleteCollectionMemberForCollectionMemberID:(id)a3 completion:(id)a4;
- (void)deleteCollectionMemberForCollectionMemberIDs:(id)a3 completion:(id)a4;
- (void)deleteEngagementDataForKey:(id)a3 completion:(id)a4;
- (void)deleteItemsWithStoreIDs:(id)a3 completion:(id)a4;
- (void)deleteReadingNowDetailForAssetID:(id)a3 completion:(id)a4;
- (void)deleteStoreItemWithStoreID:(id)a3 completion:(id)a4;
- (void)deleteStoreItemsWithStoreIDs:(id)a3 completion:(id)a4;
- (void)deleteUserDatumForKey:(id)a3 completion:(id)a4;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3;
- (void)engagementDataForKey:(id)a3 completion:(id)a4;
- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)a3;
- (void)fetchAssetDetailsForUnsyncedTastes:(id)a3;
- (void)fetchCollectionMembersInCollectionID:(id)a3 completion:(id)a4;
- (void)fetchFinishedAssetCountByYearWithCompletion:(id)a3;
- (void)fetchFinishedDatesByAssetIDForYear:(int64_t)a3 completion:(id)a4;
- (void)fetchMaxSortOrderInCollectionID:(id)a3 completion:(id)a4;
- (void)fetchMostRecentAudiobookWithCompletion:(id)a3;
- (void)forceFetchRemoteChanges:(id)a3;
- (void)formXPCConnection;
- (void)getAssetDetailChangesSince:(id)a3 completion:(id)a4;
- (void)getAssetReviewChangesSince:(id)a3 completion:(id)a4;
- (void)getBookWidgetDataWithLimit:(int64_t)a3 completion:(id)a4;
- (void)getBookWidgetInfoWithLimit:(int64_t)a3 completion:(id)a4;
- (void)getCollectionDetailChangesSince:(id)a3 completion:(id)a4;
- (void)getCollectionMemberChangesSince:(id)a3 completion:(id)a4;
- (void)getEngagementDataChangesSince:(id)a3 completion:(id)a4;
- (void)getReadingNowDetailChangesSince:(id)a3 completion:(id)a4;
- (void)getStoreItemChangesSince:(id)a3 completion:(id)a4;
- (void)getUserDataChangesSince:(id)a3 completion:(id)a4;
- (void)hasSaltChangedWithCompletion:(id)a3;
- (void)hideItemsWithStoreIDs:(id)a3 completion:(id)a4;
- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)a3;
- (void)monitorServiceNotificationsWithChangeToken:(id)a3 completion:(id)a4;
- (void)needsReadingNowAssetTypePopulation:(id)a3;
- (void)priceTrackingCtlAddTrackedItems:(id)a3 completion:(id)a4;
- (void)priceTrackingCtlGetStateWithCompletion:(id)a3;
- (void)priceTrackingCtlOverrideReferencePrices:(id)a3 completion:(id)a4;
- (void)priceTrackingSetConfiguration:(id)a3 completion:(id)a4;
- (void)readingGoalsChangeBooksFinishedGoalTo:(int64_t)a3 withCompletion:(id)a4;
- (void)readingGoalsChangeDailyGoalTo:(double)a3 withCompletion:(id)a4;
- (void)readingGoalsClearDataWithCompletion:(id)a3;
- (void)readingGoalsClearLocalCachedDataWithCompletion:(id)a3;
- (void)readingGoalsStateInfoWithCompletion:(id)a3;
- (void)readingHistoryBackupWithName:(id)a3 completion:(id)a4;
- (void)readingHistoryClearDataWithCompletion:(id)a3;
- (void)readingHistoryClearDate:(id)a3 withCompletion:(id)a4;
- (void)readingHistoryClearDefaultsCachedDataWithCompletion:(id)a3;
- (void)readingHistoryClearTodayWithCompletion:(id)a3;
- (void)readingHistoryHandleSyncFileChangeWithSyncVersionInfo:(id)a3 updateInfo:(id)a4 completion:(id)a5;
- (void)readingHistoryIncrementWithDate:(id)a3 by:(int64_t)a4 withCompletion:(id)a5;
- (void)readingHistoryListBackupWithCompletion:(id)a3;
- (void)readingHistoryReadingHistoryStateInfoWithRangeStart:(id)a3 rangeEnd:(id)a4 currentTime:(id)a5 withCompletion:(id)a6;
- (void)readingHistoryRestoreWithName:(id)a3 completion:(id)a4;
- (void)readingHistoryServiceStatusInfoWithCompletion:(id)a3;
- (void)readingNowDetailsForAssetIDs:(id)a3 completion:(id)a4;
- (void)resetPurchasedTokenForStoreIDs:(id)a3 completion:(id)a4;
- (void)resetStaleJaliscoDatabaseWithCompletion:(id)a3;
- (void)resolvedAssetDetailForAssetID:(id)a3 completion:(id)a4;
- (void)resolvedUserDataValueForKey:(id)a3 completion:(id)a4;
- (void)scheduleRestart;
- (void)setAssetDetail:(id)a3 completion:(id)a4;
- (void)setAssetDetails:(id)a3 completion:(id)a4;
- (void)setAssetReview:(id)a3 completion:(id)a4;
- (void)setAssetReviews:(id)a3 completion:(id)a4;
- (void)setBookWidgetInfo:(id)a3 completion:(id)a4;
- (void)setCollectionDetail:(id)a3 completion:(id)a4;
- (void)setCollectionDetails:(id)a3 completion:(id)a4;
- (void)setCollectionMember:(id)a3 completion:(id)a4;
- (void)setCollectionMembers:(id)a3 completion:(id)a4;
- (void)setEngagementData:(id)a3 completion:(id)a4;
- (void)setEngagementDatas:(id)a3 completion:(id)a4;
- (void)setReadingNowDetails:(id)a3 completion:(id)a4;
- (void)setUserData:(id)a3 completion:(id)a4;
- (void)setUserDataValue:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setUserDatum:(id)a3 completion:(id)a4;
- (void)shutdown;
- (void)signalFetchChangesTransaction:(id)a3;
- (void)storeItemForStoreID:(id)a3 completion:(id)a4;
- (void)updateBitrateForItemWithAdamID:(id)a3 completion:(id)a4;
- (void)userDataValueForKey:(id)a3 completion:(id)a4;
- (void)userDatumForKey:(id)a3 completion:(id)a4;
@end

@implementation BDSServiceProxy

- (BDSServiceProxyConnectionDelegate)connectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionDelegate);

  return WeakRetained;
}

- (void)formXPCConnection
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_INFO, "Starting up BDSServiceProxy.", buf, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.iBooks.BookDataStoreService" options:0];
  connection = self->_connection;
  self->_connection = v4;

  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5E7C238];
  [BDSServiceProtocolInterface configureInterface:v6];
  v7 = objc_alloc_init(BDSClientSideListener);
  clientSideListener = self->_clientSideListener;
  self->_clientSideListener = v7;

  v9 = [(BDSServiceProxy *)self connectionDelegate];
  [(BDSClientSideListener *)self->_clientSideListener setDelegate:v9];

  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];
  v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5E7C440];
  [(NSXPCConnection *)self->_connection setExportedInterface:v10];

  [(NSXPCConnection *)self->_connection setExportedObject:self->_clientSideListener];
  objc_initWeak(&location, self);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:&unk_1F5E61588];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = sub_1E45EE28C;
  v22 = &unk_1E8759750;
  objc_copyWeak(&v23, &location);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:&v19];
  v11 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&unk_1F5E615A8, v19, v20, v21, v22];
  remoteObjectProxy = self->_remoteObjectProxy;
  self->_remoteObjectProxy = v11;

  [(BDSServiceProxy *)self setConnectionHealthy:self->_remoteObjectProxy != 0];
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13 = [MEMORY[0x1E698F550] shared];
    v14 = [v13 verboseLoggingEnabled];

    if (v14)
    {
      v15 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_remoteObjectProxy;
        *buf = 138543362;
        v26 = v16;
        _os_log_impl(&dword_1E45E0000, v15, OS_LOG_TYPE_DEFAULT, "\\Connection made to remote service with %{public}@\\"", buf, 0xCu);
      }
    }
  }

  else
  {
    [(BDSServiceProxy *)self scheduleRestart];
  }

  [(NSXPCConnection *)self->_connection resume];
  v17 = [(BDSServiceProxy *)self connectionDelegate];
  [v17 serviceConnectionDidResume];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  v18 = *MEMORY[0x1E69E9840];
}

- (BDSServiceProxy)initWithConnectionDelegate:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = BDSServiceProxy;
  v5 = [(BDSServiceProxy *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connectionDelegate, v4);
    objc_initWeak(&location, v6);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("BDSService Notify Queue", v7);
    notifyQueue = v6->_notifyQueue;
    v6->_notifyQueue = v8;

    v10 = v6->_notifyQueue;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = sub_1E45EE1CC;
    v15 = &unk_1E87597D0;
    objc_copyWeak(&v16, &location);
    notify_register_dispatch("com.apple.iBooks.BookDataStoreService.Started", &v6->_notifyToken, v10, &v12);
    [(BDSServiceProxy *)v6 formXPCConnection:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)scheduleRestart
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 60000000000);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E45EE430;
  v3[3] = &unk_1E8759750;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  remoteObjectProxy = self->_remoteObjectProxy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E45EE5A4;
  v9[3] = &unk_1E87597F8;
  v10 = v4;
  v6 = v4;
  v7 = [(BDSServiceProtocol *)remoteObjectProxy remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  remoteObjectProxy = self->_remoteObjectProxy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E45EE6E0;
  v9[3] = &unk_1E87597F8;
  v10 = v4;
  v6 = v4;
  v7 = [(BDSServiceProtocol *)remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (void)dealloc
{
  [(BDSServiceProxy *)self shutdown];
  v3.receiver = self;
  v3.super_class = BDSServiceProxy;
  [(BDSServiceProxy *)&v3 dealloc];
}

- (void)shutdown
{
  notify_cancel(self->_notifyToken);
  if (self->_connection)
  {
    v3 = BDSCloudKitLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_INFO, "[ServiceProxy]:  Shutting down service proxy.", v5, 2u);
    }

    clientSideListener = self->_clientSideListener;
    self->_clientSideListener = 0;

    [(NSXPCConnection *)self->_connection invalidate];
  }
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45EEAA4;
    v9[3] = &unk_1E87597F8;
    v5 = v4;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 dissociateCloudDataFromSyncWithCompletion:v5];
  }

  else
  {
    v7 = _Block_copy(v4);
    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, 0, v8);
    }
  }
}

- (void)signalFetchChangesTransaction:(id)a3
{
  v4 = a3;
  if (![(BDSServiceProxy *)self connectionHealthy])
  {
    v5 = BDSServiceLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1E470210C();
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1E45EEC58;
  aBlock[3] = &unk_1E8759820;
  v6 = v4;
  v12 = v6;
  v7 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E45EECBC;
  v9[3] = &unk_1E8759848;
  v10 = v6;
  v8 = v6;
  bds_dispatch_service(self, v9, v7);
}

- (void)assetDetailForAssetID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45EEDF8;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 assetDetailForAssetID:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)assetDetailsForAssetIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v8 = objc_opt_new();
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_1E45EF11C;
    v29[4] = sub_1E45EF12C;
    v30 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = sub_1E45EF11C;
    v27[4] = sub_1E45EF12C;
    v28 = 0;
    v9 = dispatch_group_create();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1E45EF134;
    v21[3] = &unk_1E87598C0;
    v10 = v9;
    v22 = v10;
    v23 = self;
    v25 = v27;
    v11 = v8;
    v24 = v11;
    v26 = v29;
    [v6 bds_traverseBatchesOfSize:64 block:v21];
    v12 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E45EF39C;
    block[3] = &unk_1E87598E8;
    v17 = v11;
    v18 = v7;
    v19 = v29;
    v20 = v27;
    v13 = v11;
    dispatch_group_notify(v10, v12, block);

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v29, 8);
  }

  else
  {
    v14 = _Block_copy(v7);
    if (v14)
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v14 + 2))(v14, 0, 0, v15);
    }
  }
}

- (void)resolvedAssetDetailForAssetID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45EF53C;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 resolvedAssetDetailForAssetID:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)currentAssetDetailCloudSyncVersions:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45EF698;
    v9[3] = &unk_1E87597F8;
    v5 = v4;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 currentAssetDetailCloudSyncVersions:v5];
  }

  else
  {
    v7 = _Block_copy(v4);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)deleteAssetDetailForAssetID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = &unk_1F5E615C8;
    }

    v9 = _Block_copy(v8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45EF834;
    v13[3] = &unk_1E87597F8;
    v14 = v7;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteAssetDetailForAssetID:v6 completion:v9];
  }

  else
  {
    v11 = _Block_copy(v7);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v11[2](v11, 0, v12);
    }
  }
}

- (void)getAssetDetailChangesSince:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45EFB7C;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 getAssetDetailChangesSince:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, 0, v11, 0);
    }
  }
}

- (void)setAssetDetail:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = &unk_1F5E615E8;
    }

    v9 = _Block_copy(v8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45EFD48;
    v13[3] = &unk_1E87597F8;
    v14 = v7;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 setAssetDetail:v6 completion:v9];
  }

  else
  {
    v11 = _Block_copy(v7);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v11 + 2))(v11, 0, 0, v12);
    }
  }
}

- (void)setAssetDetails:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = sub_1E45EF11C;
    v30[4] = sub_1E45EF12C;
    v31 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 1;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v27 = 0;
    v8 = dispatch_group_create();
    v9 = [v6 allKeys];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E45F007C;
    v19[3] = &unk_1E87599A0;
    v10 = v8;
    v20 = v10;
    v21 = v6;
    v22 = self;
    v23 = v30;
    v24 = v28;
    v25 = v26;
    [v9 bds_traverseBatchesOfSize:64 block:v19];

    v11 = dispatch_get_global_queue(2, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E45F02E4;
    v14[3] = &unk_1E87599C8;
    v15 = v7;
    v16 = v28;
    v17 = v26;
    v18 = v30;
    dispatch_group_notify(v10, v11, v14);

    _Block_object_dispose(v26, 8);
    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v30, 8);
  }

  else
  {
    v12 = _Block_copy(v7);
    if (v12)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v12 + 2))(v12, 0, 0, v13);
    }
  }
}

- (void)fetchAssetDetailsForUnsyncedTastes:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F0478;
    v9[3] = &unk_1E87597F8;
    v5 = v4;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 fetchAssetDetailsForUnsyncedTastes:v5];
  }

  else
  {
    v7 = _Block_copy(v4);
    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, 0, v8);
    }
  }
}

- (void)fetchFinishedDatesByAssetIDForYear:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45F060C;
    v11[3] = &unk_1E87597F8;
    v7 = v6;
    v12 = v7;
    v8 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    [v8 fetchFinishedDatesByAssetIDForYear:a3 completion:v7];
  }

  else
  {
    v9 = _Block_copy(v6);
    if (v9)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v9[2](v9, 0, v10);
    }
  }
}

- (void)fetchFinishedAssetCountByYearWithCompletion:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F0798;
    v9[3] = &unk_1E87597F8;
    v5 = v4;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 fetchFinishedAssetCountByYearWithCompletion:v5];
  }

  else
  {
    v7 = _Block_copy(v4);
    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, 0, v8);
    }
  }
}

- (void)readingNowDetailsForAssetIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v8 = objc_opt_new();
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_1E45EF11C;
    v29[4] = sub_1E45EF12C;
    v30 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = sub_1E45EF11C;
    v27[4] = sub_1E45EF12C;
    v28 = 0;
    v9 = dispatch_group_create();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1E45F0ABC;
    v21[3] = &unk_1E87598C0;
    v10 = v9;
    v22 = v10;
    v23 = self;
    v25 = v27;
    v11 = v8;
    v24 = v11;
    v26 = v29;
    [v6 bds_traverseBatchesOfSize:64 block:v21];
    v12 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E45F0D24;
    block[3] = &unk_1E87598E8;
    v17 = v11;
    v18 = v7;
    v19 = v29;
    v20 = v27;
    v13 = v11;
    dispatch_group_notify(v10, v12, block);

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v29, 8);
  }

  else
  {
    v14 = _Block_copy(v7);
    if (v14)
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v14 + 2))(v14, 0, 0, v15);
    }
  }
}

- (void)currentReadingNowDetailCloudSyncVersions:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F0E80;
    v9[3] = &unk_1E87597F8;
    v5 = v4;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 currentReadingNowDetailCloudSyncVersions:v5];
  }

  else
  {
    v7 = _Block_copy(v4);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)deleteReadingNowDetailForAssetID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = &unk_1F5E61608;
    }

    v9 = _Block_copy(v8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F101C;
    v13[3] = &unk_1E87597F8;
    v14 = v7;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteReadingNowDetailForAssetID:v6 completion:v9];
  }

  else
  {
    v11 = _Block_copy(v7);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v11[2](v11, 0, v12);
    }
  }
}

- (void)getReadingNowDetailChangesSince:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F11C8;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 getReadingNowDetailChangesSince:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, 0, v11, 0);
    }
  }
}

- (void)setReadingNowDetails:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = sub_1E45EF11C;
    v30[4] = sub_1E45EF12C;
    v31 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 1;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v27 = 0;
    v8 = dispatch_group_create();
    v9 = [v6 allKeys];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E45F1504;
    v19[3] = &unk_1E87599A0;
    v10 = v8;
    v20 = v10;
    v21 = v6;
    v22 = self;
    v23 = v30;
    v24 = v28;
    v25 = v26;
    [v9 bds_traverseBatchesOfSize:64 block:v19];

    v11 = dispatch_get_global_queue(2, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E45F176C;
    v14[3] = &unk_1E87599C8;
    v15 = v7;
    v16 = v28;
    v17 = v26;
    v18 = v30;
    dispatch_group_notify(v10, v11, v14);

    _Block_object_dispose(v26, 8);
    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v30, 8);
  }

  else
  {
    v12 = _Block_copy(v7);
    if (v12)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v12 + 2))(v12, 0, 0, v13);
    }
  }
}

- (void)needsReadingNowAssetTypePopulation:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F1900;
    v9[3] = &unk_1E87597F8;
    v5 = v4;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 needsReadingNowAssetTypePopulation:v5];
  }

  else
  {
    v7 = _Block_copy(v4);
    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, 0, v8);
    }
  }
}

- (void)assetReviewForAssetReviewID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F1AA0;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 assetReviewForAssetReviewID:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)assetReviewsForAssetReviewIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v8 = objc_opt_new();
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_1E45EF11C;
    v29[4] = sub_1E45EF12C;
    v30 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = sub_1E45EF11C;
    v27[4] = sub_1E45EF12C;
    v28 = 0;
    v9 = dispatch_group_create();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1E45F1DC4;
    v21[3] = &unk_1E87598C0;
    v10 = v9;
    v22 = v10;
    v23 = self;
    v25 = v27;
    v11 = v8;
    v24 = v11;
    v26 = v29;
    [v6 bds_traverseBatchesOfSize:64 block:v21];
    v12 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E45F202C;
    block[3] = &unk_1E87598E8;
    v17 = v11;
    v18 = v7;
    v19 = v29;
    v20 = v27;
    v13 = v11;
    dispatch_group_notify(v10, v12, block);

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v29, 8);
  }

  else
  {
    v14 = _Block_copy(v7);
    if (v14)
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v14 + 2))(v14, 0, 0, v15);
    }
  }
}

- (void)deleteAssetReviewForAssetReviewID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = &unk_1F5E61628;
    }

    v9 = _Block_copy(v8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F21E8;
    v13[3] = &unk_1E87597F8;
    v14 = v7;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteAssetReviewForAssetReviewID:v6 completion:v9];
  }

  else
  {
    v11 = _Block_copy(v7);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v11[2](v11, 0, v12);
    }
  }
}

- (void)deleteAssetReviewForAssetReviewIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = &unk_1F5E61648;
    }

    v9 = _Block_copy(v8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F23A4;
    v13[3] = &unk_1E87597F8;
    v14 = v7;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteAssetReviewForAssetReviewIDs:v6 completion:v9];
  }

  else
  {
    v11 = _Block_copy(v7);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v11[2](v11, 0, v12);
    }
  }
}

- (void)getAssetReviewChangesSince:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F2708;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 getAssetReviewChangesSince:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, 0, v11, 0);
    }
  }
}

- (void)setAssetReview:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = &unk_1F5E61668;
    }

    v9 = _Block_copy(v8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F28D4;
    v13[3] = &unk_1E87597F8;
    v14 = v7;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 setAssetReview:v6 completion:v9];
  }

  else
  {
    v11 = _Block_copy(v7);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v11 + 2))(v11, 0, 0, v12);
    }
  }
}

- (void)setAssetReviews:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = sub_1E45EF11C;
    v30[4] = sub_1E45EF12C;
    v31 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 1;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v27 = 0;
    v8 = dispatch_group_create();
    v9 = [v6 allKeys];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E45F2C08;
    v19[3] = &unk_1E87599A0;
    v10 = v8;
    v20 = v10;
    v21 = v6;
    v22 = self;
    v23 = v30;
    v24 = v28;
    v25 = v26;
    [v9 bds_traverseBatchesOfSize:64 block:v19];

    v11 = dispatch_get_global_queue(2, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E45F2E70;
    v14[3] = &unk_1E87599C8;
    v15 = v7;
    v16 = v28;
    v17 = v26;
    v18 = v30;
    dispatch_group_notify(v10, v11, v14);

    _Block_object_dispose(v26, 8);
    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v30, 8);
  }

  else
  {
    v12 = _Block_copy(v7);
    if (v12)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v12 + 2))(v12, 0, 0, v13);
    }
  }
}

- (void)addStoreItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = &unk_1F5E61688;
    }

    v9 = _Block_copy(v8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F3038;
    v13[3] = &unk_1E87597F8;
    v14 = v7;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 addStoreItem:v6 completion:v9];
  }

  else
  {
    v11 = _Block_copy(v7);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v11 + 2))(v11, 0, 0, v12);
    }
  }
}

- (void)addStoreItems:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = sub_1E45EF11C;
    v30[4] = sub_1E45EF12C;
    v31 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 1;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v27 = 0;
    v8 = dispatch_group_create();
    v9 = [v6 allKeys];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E45F336C;
    v19[3] = &unk_1E87599A0;
    v10 = v8;
    v20 = v10;
    v21 = v6;
    v22 = self;
    v23 = v30;
    v24 = v28;
    v25 = v26;
    [v9 bds_traverseBatchesOfSize:64 block:v19];

    v11 = dispatch_get_global_queue(2, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E45F35D4;
    v14[3] = &unk_1E87599C8;
    v15 = v7;
    v16 = v28;
    v17 = v26;
    v18 = v30;
    dispatch_group_notify(v10, v11, v14);

    _Block_object_dispose(v26, 8);
    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v30, 8);
  }

  else
  {
    v12 = _Block_copy(v7);
    if (v12)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v12 + 2))(v12, 0, 0, v13);
    }
  }
}

- (void)deleteStoreItemWithStoreID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = &unk_1F5E616A8;
    }

    v9 = _Block_copy(v8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F3798;
    v13[3] = &unk_1E87597F8;
    v14 = v7;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteStoreItemWithStoreID:v6 completion:v9];
  }

  else
  {
    v11 = _Block_copy(v7);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v11[2](v11, 0, v12);
    }
  }
}

- (void)deleteStoreItemsWithStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = &unk_1F5E616C8;
    }

    v9 = _Block_copy(v8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F3954;
    v13[3] = &unk_1E87597F8;
    v14 = v7;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteStoreItemsWithStoreIDs:v6 completion:v9];
  }

  else
  {
    v11 = _Block_copy(v7);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v11[2](v11, 0, v12);
    }
  }
}

- (void)getStoreItemChangesSince:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F3C9C;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 getStoreItemChangesSince:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, 0, v11, 0);
    }
  }
}

- (void)storeItemForStoreID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F3E48;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 storeItemForStoreID:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)collectionDetailForCollectionID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F3FE8;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 collectionDetailForCollectionID:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)collectionDetailsForCollectionIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v8 = objc_opt_new();
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_1E45EF11C;
    v29[4] = sub_1E45EF12C;
    v30 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = sub_1E45EF11C;
    v27[4] = sub_1E45EF12C;
    v28 = 0;
    v9 = dispatch_group_create();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1E45F430C;
    v21[3] = &unk_1E87598C0;
    v10 = v9;
    v22 = v10;
    v23 = self;
    v25 = v27;
    v11 = v8;
    v24 = v11;
    v26 = v29;
    [v6 bds_traverseBatchesOfSize:64 block:v21];
    v12 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E45F4574;
    block[3] = &unk_1E87598E8;
    v17 = v11;
    v18 = v7;
    v19 = v29;
    v20 = v27;
    v13 = v11;
    dispatch_group_notify(v10, v12, block);

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v29, 8);
  }

  else
  {
    v14 = _Block_copy(v7);
    if (v14)
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v14 + 2))(v14, 0, 0, v15);
    }
  }
}

- (void)currentCollectionDetailCloudSyncVersions:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F46D0;
    v9[3] = &unk_1E87597F8;
    v5 = v4;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 currentCollectionDetailCloudSyncVersions:v5];
  }

  else
  {
    v7 = _Block_copy(v4);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)deleteCollectionDetailForCollectionID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v7 = &unk_1F5E616E8;
  }

  v9 = _Block_copy(v7);
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F4874;
    v13[3] = &unk_1E87597F8;
    v14 = v8;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteCollectionDetailForCollectionID:v6 completion:v9];
  }

  else
  {
    v11 = _Block_copy(v8);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v11[2](v11, 0, v12);
    }
  }
}

- (void)deleteCollectionDetailForCollectionIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v7 = &unk_1F5E61708;
  }

  v9 = _Block_copy(v7);
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F4A38;
    v13[3] = &unk_1E87597F8;
    v14 = v8;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteCollectionDetailForCollectionIDs:v6 completion:v9];
  }

  else
  {
    v11 = _Block_copy(v8);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v11[2](v11, 0, v12);
    }
  }
}

- (void)getCollectionDetailChangesSince:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F4D80;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 getCollectionDetailChangesSince:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, 0, v11, 0);
    }
  }
}

- (void)setCollectionDetail:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v7 = &unk_1F5E61728;
  }

  v9 = _Block_copy(v7);
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F4F54;
    v13[3] = &unk_1E87597F8;
    v14 = v8;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 setCollectionDetail:v6 completion:v9];
  }

  else
  {
    v11 = _Block_copy(v8);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v11 + 2))(v11, 0, 0, v12);
    }
  }
}

- (void)setCollectionDetails:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = sub_1E45EF11C;
    v30[4] = sub_1E45EF12C;
    v31 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 1;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v27 = 0;
    v8 = dispatch_group_create();
    v9 = [v6 allKeys];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E45F5288;
    v19[3] = &unk_1E87599A0;
    v10 = v8;
    v20 = v10;
    v21 = v6;
    v22 = self;
    v23 = v30;
    v24 = v28;
    v25 = v26;
    [v9 bds_traverseBatchesOfSize:64 block:v19];

    v11 = dispatch_get_global_queue(2, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E45F54F0;
    v14[3] = &unk_1E87599C8;
    v15 = v7;
    v16 = v28;
    v17 = v26;
    v18 = v30;
    dispatch_group_notify(v10, v11, v14);

    _Block_object_dispose(v26, 8);
    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v30, 8);
  }

  else
  {
    v12 = _Block_copy(v7);
    if (v12)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v12 + 2))(v12, 0, 0, v13);
    }
  }
}

- (void)collectionMemberForCollectionMemberID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F5698;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 collectionMemberForCollectionMemberID:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)currentCollectionMemberCloudSyncVersions:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F57F4;
    v9[3] = &unk_1E87597F8;
    v5 = v4;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 currentCollectionMemberCloudSyncVersions:v5];
  }

  else
  {
    v7 = _Block_copy(v4);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)deleteCollectionMemberForCollectionMemberID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v7 = &unk_1F5E61748;
  }

  v9 = _Block_copy(v7);
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F5998;
    v13[3] = &unk_1E87597F8;
    v14 = v8;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteCollectionMemberForCollectionMemberID:v6 completion:v9];
  }

  else
  {
    v11 = _Block_copy(v8);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v11[2](v11, 0, v12);
    }
  }
}

- (void)deleteCollectionMemberForCollectionMemberIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v7 = &unk_1F5E61768;
  }

  v9 = _Block_copy(v7);
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F5B5C;
    v13[3] = &unk_1E87597F8;
    v14 = v8;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteCollectionMemberForCollectionMemberIDs:v6 completion:v9];
  }

  else
  {
    v11 = _Block_copy(v8);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v11[2](v11, 0, v12);
    }
  }
}

- (void)fetchCollectionMembersInCollectionID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F5E9C;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 fetchCollectionMembersInCollectionID:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, v11);
    }
  }
}

- (void)getCollectionMemberChangesSince:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F604C;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 getCollectionMemberChangesSince:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, 0, v11, 0);
    }
  }
}

- (void)setCollectionMember:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v7 = &unk_1F5E61788;
  }

  v9 = _Block_copy(v7);
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F6220;
    v13[3] = &unk_1E87597F8;
    v14 = v8;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 setCollectionMember:v6 completion:v9];
  }

  else
  {
    v11 = _Block_copy(v8);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v11 + 2))(v11, 0, 0, v12);
    }
  }
}

- (void)setCollectionMembers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = sub_1E45EF11C;
    v30[4] = sub_1E45EF12C;
    v31 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 1;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v27 = 0;
    v8 = dispatch_group_create();
    v9 = [v6 allKeys];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E45F6554;
    v19[3] = &unk_1E87599A0;
    v10 = v8;
    v20 = v10;
    v21 = v6;
    v22 = self;
    v23 = v30;
    v24 = v28;
    v25 = v26;
    [v9 bds_traverseBatchesOfSize:64 block:v19];

    v11 = dispatch_get_global_queue(2, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E45F67BC;
    v14[3] = &unk_1E87599C8;
    v15 = v7;
    v16 = v28;
    v17 = v26;
    v18 = v30;
    dispatch_group_notify(v10, v11, v14);

    _Block_object_dispose(v26, 8);
    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v30, 8);
  }

  else
  {
    v12 = _Block_copy(v7);
    if (v12)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v12 + 2))(v12, 0, 0, v13);
    }
  }
}

- (void)fetchMaxSortOrderInCollectionID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F6964;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 fetchMaxSortOrderInCollectionID:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)fetchMostRecentAudiobookWithCompletion:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F6AF0;
    v9[3] = &unk_1E87597F8;
    v5 = v4;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 fetchMostRecentAudiobookWithCompletion:v5];
  }

  else
  {
    v7 = _Block_copy(v4);
    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, 0, v8);
    }
  }
}

- (id)updateWantToReadWithCompletion:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45F6E7C;
    v11[3] = &unk_1E87597F8;
    v5 = v4;
    v12 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    v7 = [v6 updateWantToReadWithCompletion:v5];
  }

  else
  {
    v8 = _Block_copy(v4);
    if (v8)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v8[2](v8, v9);
    }

    v7 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    [v7 setTotalUnitCount:1];
  }

  return v7;
}

- (id)updateReadingNowWithCompletion:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45F703C;
    v11[3] = &unk_1E87597F8;
    v5 = v4;
    v12 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    v7 = [v6 updateReadingNowWithCompletion:v5];
  }

  else
  {
    v8 = _Block_copy(v4);
    if (v8)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v8[2](v8, v9);
    }

    v7 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    [v7 setTotalUnitCount:1];
  }

  return v7;
}

- (void)updateBitrateForItemWithAdamID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F71D4;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 updateBitrateForItemWithAdamID:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, v11);
    }
  }
}

- (void)audiobookStoreEnabledWithCompletion:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F735C;
    v9[3] = &unk_1E87597F8;
    v5 = v4;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 audiobookStoreEnabledWithCompletion:v5];
  }

  else
  {
    v7 = _Block_copy(v4);
    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, 0, v8);
    }
  }
}

- (void)currentCloudSyncVersions:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F74D4;
    v9[3] = &unk_1E87597F8;
    v5 = v4;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 currentCloudSyncVersions:v5];
  }

  else
  {
    v7 = _Block_copy(v4);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)setUserDatum:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F7658;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 setUserDatum:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, v11);
    }
  }
}

- (void)setUserData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F7800;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 setUserData:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, v11);
    }
  }
}

- (void)deleteUserDatumForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F79A4;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 deleteUserDatumForKey:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)userDatumForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F7B44;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 userDatumForKey:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)getUserDataChangesSince:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F7F74;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 getUserDataChangesSince:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, 0, v11, 0);
    }
  }
}

- (void)resolvedUserDataValueForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F8120;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 resolvedUserDataValueForKey:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)userDataValueForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F82C0;
    v12[3] = &unk_1E87597F8;
    v8 = v7;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 userDataValueForKey:v6 completion:v8];
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)setUserDataValue:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E45F8478;
    v15[3] = &unk_1E87597F8;
    v11 = v10;
    v16 = v11;
    v12 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v15];
    [v12 setUserDataValue:v8 forKey:v9 completion:v11];
  }

  else
  {
    v13 = _Block_copy(v10);
    if (v13)
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v13[2](v13, v14);
    }
  }
}

- (void)deleteEngagementDataForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F8638;
    v13[3] = &unk_1E87597F8;
    v8 = v7;
    v14 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v9 deleteEngagementDataForKey:v6 completion:v8];

    v10 = v14;
  }

  else
  {
    v11 = BDSServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E47021FC();
    }

    v10 = _Block_copy(v7);
    if (v10)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v12);
    }
  }
}

- (void)engagementDataForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F8818;
    v13[3] = &unk_1E87597F8;
    v8 = v7;
    v14 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v9 engagementDataForKey:v6 completion:v8];

    v10 = v14;
  }

  else
  {
    v11 = BDSServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E47022A8();
    }

    v10 = _Block_copy(v7);
    if (v10)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v12);
    }
  }
}

- (void)getEngagementDataChangesSince:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F8DD0;
    v13[3] = &unk_1E87597F8;
    v8 = v7;
    v14 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v9 getEngagementDataChangesSince:v6 completion:v8];

    v10 = v14;
  }

  else
  {
    v11 = BDSServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E47024AC();
    }

    v10 = _Block_copy(v7);
    if (v10)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, 0, v12, 0);
    }
  }
}

- (void)setEngagementDatas:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F8FC0;
    v13[3] = &unk_1E87597F8;
    v8 = v7;
    v14 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v9 setEngagementDatas:v6 completion:v8];

    v10 = v14;
  }

  else
  {
    v11 = BDSServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E4702558();
    }

    v10 = _Block_copy(v7);
    if (v10)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, v12);
    }
  }
}

- (void)setEngagementData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F91A8;
    v13[3] = &unk_1E87597F8;
    v8 = v7;
    v14 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v9 setEngagementData:v6 completion:v8];

    v10 = v14;
  }

  else
  {
    v11 = BDSServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E4702604();
    }

    v10 = _Block_copy(v7);
    if (v10)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, v12);
    }
  }
}

- (void)clearSyncMetadata:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E45F9374;
    v10[3] = &unk_1E87597F8;
    v5 = v4;
    v11 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v10];
    [v6 clearSyncMetadata:v5];

    v7 = v11;
  }

  else
  {
    v8 = BDSServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E47026B0();
    }

    v7 = _Block_copy(v4);
    if (v7)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, v9);
    }
  }
}

- (void)forceFetchRemoteChanges:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E45F9538;
    v10[3] = &unk_1E87597F8;
    v5 = v4;
    v11 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v10];
    [v6 forceFetchRemoteChanges:v5];

    v7 = v11;
  }

  else
  {
    v8 = BDSServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E470275C();
    }

    v7 = _Block_copy(v4);
    if (v7)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, v9);
    }
  }
}

- (void)cloudSyncDiagnosticDetachWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E45F96FC;
    v10[3] = &unk_1E87597F8;
    v5 = v4;
    v11 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v10];
    [v6 cloudSyncDiagnosticDetachWithCompletionHandler:v5];

    v7 = v11;
  }

  else
  {
    v8 = BDSServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E4702808();
    }

    v7 = _Block_copy(v4);
    if (v7)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, v9);
    }
  }
}

- (void)cloudSyncDiagnosticFindLocalIdDupesWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E45F98C0;
    v10[3] = &unk_1E87597F8;
    v5 = v4;
    v11 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v10];
    [v6 cloudSyncDiagnosticFindLocalIdDupesWithCompletionHandler:v5];

    v7 = v11;
  }

  else
  {
    v8 = BDSServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E47028B4();
    }

    v7 = _Block_copy(v4);
    if (v7)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, v9);
    }
  }
}

- (void)cloudSyncDiagnosticInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_1F5E617A8;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45F9A98;
    v11[3] = &unk_1E87597F8;
    v6 = v5;
    v12 = v6;
    v7 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    [v7 cloudSyncDiagnosticInfoWithCompletionHandler:v6];

    v8 = v12;
  }

  else
  {
    v9 = BDSServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4702960();
    }

    v8 = _Block_copy(v5);
    if (v8)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v8[2](v8, 0, v10);
    }
  }
}

- (void)hideItemsWithStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &unk_1F5E61828;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = sub_1E45FA5D4;
    v18 = &unk_1E8759AA0;
    v9 = v6;
    v19 = v9;
    v10 = v8;
    v20 = v10;
    v11 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:&v15];
    [v11 hideItemsWithStoreIDs:v9 completion:{v10, v15, v16, v17, v18}];

    v12 = v19;
  }

  else
  {
    v13 = BDSServiceLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1E4702C30();
    }

    v14 = _Block_copy(v8);
    v12 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, 0);
    }
  }
}

- (void)resetPurchasedTokenForStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &unk_1F5E61848;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = sub_1E45FA7B0;
    v18 = &unk_1E8759AA0;
    v9 = v6;
    v19 = v9;
    v10 = v8;
    v20 = v10;
    v11 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:&v15];
    [v11 resetPurchasedTokenForStoreIDs:v9 completion:{v10, v15, v16, v17, v18}];

    v12 = v19;
  }

  else
  {
    v13 = BDSServiceLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1E4702CDC();
    }

    v14 = _Block_copy(v8);
    v12 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, 0);
    }
  }
}

- (void)deleteItemsWithStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &unk_1F5E61868;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = sub_1E45FA9B8;
    v18 = &unk_1E8759AA0;
    v9 = v6;
    v19 = v9;
    v10 = v8;
    v20 = v10;
    v11 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:&v15];
    [v11 deleteItemsWithStoreIDs:v9 completion:{v10, v15, v16, v17, v18}];

    v12 = v19;
  }

  else
  {
    v13 = BDSServiceLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1E4702C30();
    }

    v12 = _Block_copy(v8);
    if (v12)
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v12[2](v12, v14);
    }
  }
}

- (void)resetStaleJaliscoDatabaseWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_1F5E61888;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45FAB90;
    v11[3] = &unk_1E87597F8;
    v6 = v5;
    v12 = v6;
    v7 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    [v7 resetStaleJaliscoDatabaseWithCompletion:v6];

    v8 = v12;
  }

  else
  {
    v9 = BDSServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4702D88();
    }

    v8 = _Block_copy(v5);
    if (v8)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v8[2](v8, v10);
    }
  }
}

- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_1F5E618A8;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45FAD68;
    v11[3] = &unk_1E87597F8;
    v6 = v5;
    v12 = v6;
    v7 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    [v7 fetchAllHiddenItemStoreIDsWithCompletion:v6];

    v8 = v12;
  }

  else
  {
    v9 = BDSServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4702E34();
    }

    v8 = _Block_copy(v5);
    if (v8)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v8[2](v8, 0, v10);
    }
  }
}

- (void)monitorServiceNotificationsWithChangeToken:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &unk_1F5E61928;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1E45FB528;
    aBlock[3] = &unk_1E87597F8;
    v19 = v8;
    v9 = _Block_copy(aBlock);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E45FB5B0;
    v15[3] = &unk_1E8759AE8;
    v16 = v6;
    v17 = v9;
    v10 = v9;
    bds_dispatch_service(self, v15, v10);

    v11 = v19;
  }

  else
  {
    v12 = BDSServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E47030E4();
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
    v13 = _Block_copy(v8);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, v11);
    }
  }
}

- (void)setBookWidgetInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &unk_1F5E61948;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = sub_1E45FB738;
    v18 = &unk_1E8759AA0;
    v9 = v6;
    v19 = v9;
    v10 = v8;
    v20 = v10;
    v11 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:&v15];
    [v11 setBookWidgetInfo:v9 completion:{v10, v15, v16, v17, v18}];

    v12 = v19;
  }

  else
  {
    v13 = BDSServiceLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1E4703190();
    }

    v12 = _Block_copy(v8);
    if (v12)
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v12[2](v12, v14);
    }
  }
}

- (void)getBookWidgetDataWithLimit:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = sub_1E45FB910;
    v15 = &unk_1E8759B10;
    v17 = a3;
    v7 = v6;
    v16 = v7;
    v8 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:&v12];
    [v8 getBookWidgetDataWithLimit:a3 completion:{v7, v12, v13, v14, v15}];

    v9 = v16;
  }

  else
  {
    v10 = BDSServiceLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E470323C();
    }

    v9 = _Block_copy(v6);
    if (v9)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v9[2](v9, 0, v11);
    }
  }
}

- (void)getBookWidgetInfoWithLimit:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = sub_1E45FBAEC;
    v15 = &unk_1E8759B10;
    v17 = a3;
    v7 = v6;
    v16 = v7;
    v8 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:&v12];
    [v8 getBookWidgetInfoWithLimit:a3 completion:{v7, v12, v13, v14, v15}];

    v9 = v16;
  }

  else
  {
    v10 = BDSServiceLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E47032E8();
    }

    v9 = _Block_copy(v6);
    if (v9)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v9[2](v9, 0, v11);
    }
  }
}

- (void)readingGoalsChangeBooksFinishedGoalTo:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &unk_1F5E61968;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = sub_1E45FBCA8;
    v16 = &unk_1E8759B10;
    v18 = a3;
    v8 = v7;
    v17 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:&v13];
    [v9 readingGoalsChangeBooksFinishedGoalTo:a3 withCompletion:{v8, v13, v14, v15, v16}];

    v10 = v17;
  }

  else
  {
    v11 = BDSServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E4703394();
    }

    v12 = _Block_copy(v7);
    v10 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

- (void)readingGoalsChangeDailyGoalTo:(double)a3 withCompletion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &unk_1F5E61988;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = sub_1E45FBE68;
    v16 = &unk_1E8759B10;
    v18 = a3;
    v8 = v7;
    v17 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:&v13];
    [v9 readingGoalsChangeDailyGoalTo:v8 withCompletion:{a3, v13, v14, v15, v16}];

    v10 = v17;
  }

  else
  {
    v11 = BDSServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E4703440();
    }

    v12 = _Block_copy(v7);
    v10 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

- (void)readingGoalsClearDataWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_1F5E619A8;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45FC014;
    v11[3] = &unk_1E87597F8;
    v6 = v5;
    v12 = v6;
    v7 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    [v7 readingGoalsClearDataWithCompletion:v6];

    v8 = v12;
  }

  else
  {
    v9 = BDSServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E47034EC();
    }

    v10 = _Block_copy(v5);
    v8 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (void)readingGoalsClearLocalCachedDataWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_1F5E619C8;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45FC1BC;
    v11[3] = &unk_1E87597F8;
    v6 = v5;
    v12 = v6;
    v7 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    [v7 readingGoalsClearLocalCachedDataWithCompletion:v6];

    v8 = v12;
  }

  else
  {
    v9 = BDSServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4703598();
    }

    v10 = _Block_copy(v5);
    v8 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (void)readingGoalsStateInfoWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_1F5E619E8;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45FC368;
    v11[3] = &unk_1E87597F8;
    v6 = v5;
    v12 = v6;
    v7 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    [v7 readingGoalsStateInfoWithCompletion:v6];

    v8 = v12;
  }

  else
  {
    v9 = BDSServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4703644();
    }

    v10 = _Block_copy(v5);
    v8 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (void)readingHistoryClearDataWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_1F5E61A08;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45FC514;
    v11[3] = &unk_1E87597F8;
    v6 = v5;
    v12 = v6;
    v7 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    [v7 readingHistoryClearDataWithCompletion:v6];

    v8 = v12;
  }

  else
  {
    v9 = BDSServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E47036F0();
    }

    v10 = _Block_copy(v5);
    v8 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (void)readingHistoryClearDefaultsCachedDataWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_1F5E61A28;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45FC6BC;
    v11[3] = &unk_1E87597F8;
    v6 = v5;
    v12 = v6;
    v7 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    [v7 readingHistoryClearDefaultsCachedDataWithCompletion:v6];

    v8 = v12;
  }

  else
  {
    v9 = BDSServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E470379C();
    }

    v10 = _Block_copy(v5);
    v8 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (void)readingHistoryClearDate:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &unk_1F5E61A48;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E45FC878;
    v14[3] = &unk_1E87597F8;
    v9 = v8;
    v15 = v9;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v14];
    [v10 readingHistoryClearDate:v6 withCompletion:v9];

    v11 = v15;
  }

  else
  {
    v12 = BDSServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E4703848();
    }

    v13 = _Block_copy(v8);
    v11 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 0);
    }
  }
}

- (void)readingHistoryClearTodayWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_1F5E61A68;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45FCA20;
    v11[3] = &unk_1E87597F8;
    v6 = v5;
    v12 = v6;
    v7 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    [v7 readingHistoryClearTodayWithCompletion:v6];

    v8 = v12;
  }

  else
  {
    v9 = BDSServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E47038F4();
    }

    v10 = _Block_copy(v5);
    v8 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (void)readingHistoryHandleSyncFileChangeWithSyncVersionInfo:(id)a3 updateInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &unk_1F5E61A88;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1E45FCC64;
    aBlock[3] = &unk_1E87597F8;
    v12 = v11;
    v22 = v12;
    v13 = _Block_copy(aBlock);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E45FCCEC;
    v17[3] = &unk_1E8759B58;
    v18 = v8;
    v19 = v9;
    v20 = v12;
    bds_dispatch_service(self, v17, v13);

    v14 = v22;
  }

  else
  {
    v15 = BDSServiceLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1E47039A0();
    }

    v16 = _Block_copy(v11);
    v14 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }
  }
}

- (void)readingHistoryIncrementWithDate:(id)a3 by:(int64_t)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &unk_1F5E61AA8;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E45FCE58;
    v17[3] = &unk_1E8759B80;
    v11 = v8;
    v18 = v11;
    v20 = a4;
    v12 = v10;
    v19 = v12;
    v13 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v17];
    [v13 readingHistoryIncrementWithDate:v11 by:a4 withCompletion:v12];

    v14 = v18;
  }

  else
  {
    v15 = BDSServiceLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1E4703A4C();
    }

    v16 = _Block_copy(v10);
    v14 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }
  }
}

- (void)readingHistoryReadingHistoryStateInfoWithRangeStart:(id)a3 rangeEnd:(id)a4 currentTime:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &unk_1F5E61AC8;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1E45FD04C;
    v20[3] = &unk_1E87597F8;
    v15 = v14;
    v21 = v15;
    v16 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v20];
    [v16 readingHistoryReadingHistoryStateInfoWithRangeStart:v10 rangeEnd:v11 currentTime:v12 withCompletion:v15];

    v17 = v21;
  }

  else
  {
    v18 = BDSServiceLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1E4703B18();
    }

    v19 = _Block_copy(v14);
    v17 = v19;
    if (v19)
    {
      (*(v19 + 2))(v19, 0, 0);
    }
  }
}

- (void)readingHistoryServiceStatusInfoWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_1F5E61AE8;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45FD228;
    v11[3] = &unk_1E87597F8;
    v6 = v5;
    v12 = v6;
    v7 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    [v7 readingHistoryServiceStatusInfoWithCompletion:v6];

    v8 = v12;
  }

  else
  {
    v9 = BDSServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4703BC4();
    }

    v8 = _Block_copy(v5);
    if (v8)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v8[2](v8, 0, v10);
    }
  }
}

- (void)priceTrackingSetConfiguration:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &unk_1F5E61B08;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E45FD434;
    v15[3] = &unk_1E8759B80;
    v15[4] = self;
    v17 = a2;
    v10 = v9;
    v16 = v10;
    v11 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v15];
    [v11 priceTrackingSetConfiguration:v7 completion:v10];
  }

  else
  {
    v12 = BDSServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E4703C70();
    }

    v13 = _Block_copy(v9);
    if (v13)
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v13[2](v13, v14);
    }
  }
}

- (void)priceTrackingCtlGetStateWithCompletion:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_1F5E61B48;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45FD820;
    v12[3] = &unk_1E8759B80;
    v12[4] = self;
    v14 = a2;
    v7 = v6;
    v13 = v7;
    v8 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v8 priceTrackingCtlGetStateWithCompletion:v7];
  }

  else
  {
    v9 = BDSServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4703C70();
    }

    v10 = _Block_copy(v6);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)priceTrackingCtlAddTrackedItems:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &unk_1F5E61B68;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E45FDA30;
    v15[3] = &unk_1E8759B80;
    v15[4] = self;
    v17 = a2;
    v10 = v9;
    v16 = v10;
    v11 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v15];
    [v11 priceTrackingCtlAddTrackedItems:v7 completion:v10];
  }

  else
  {
    v12 = BDSServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E4703C70();
    }

    v13 = _Block_copy(v9);
    if (v13)
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v13[2](v13, v14);
    }
  }
}

- (void)priceTrackingCtlOverrideReferencePrices:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &unk_1F5E61B88;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E45FDC3C;
    v15[3] = &unk_1E8759B80;
    v15[4] = self;
    v17 = a2;
    v10 = v9;
    v16 = v10;
    v11 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v15];
    [v11 priceTrackingCtlOverrideReferencePrices:v7 completion:v10];
  }

  else
  {
    v12 = BDSServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E4703C70();
    }

    v13 = _Block_copy(v9);
    if (v13)
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v13[2](v13, v14);
    }
  }
}

- (void)readingHistoryBackupWithName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &unk_1F5E61BA8;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = sub_1E45FDE48;
    v18 = &unk_1E8759AA0;
    v9 = v6;
    v19 = v9;
    v10 = v8;
    v20 = v10;
    v11 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:&v15];
    [v11 readingHistoryBackupWithName:v9 completion:{v10, v15, v16, v17, v18}];

    v12 = v19;
  }

  else
  {
    v13 = BDSServiceLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1E4703DBC();
    }

    v12 = _Block_copy(v8);
    if (v12)
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v12[2](v12, 0, v14);
    }
  }
}

- (void)readingHistoryListBackupWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_1F5E61BC8;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45FE02C;
    v11[3] = &unk_1E87597F8;
    v6 = v5;
    v12 = v6;
    v7 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    [v7 readingHistoryListBackupWithCompletion:v6];

    v8 = v12;
  }

  else
  {
    v9 = BDSServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4703E68();
    }

    v8 = _Block_copy(v5);
    if (v8)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v8 + 2))(v8, 0, 0, v10);
    }
  }
}

- (void)readingHistoryRestoreWithName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &unk_1F5E61BE8;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = sub_1E45FE23C;
    v18 = &unk_1E8759AA0;
    v9 = v6;
    v19 = v9;
    v10 = v8;
    v20 = v10;
    v11 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:&v15];
    [v11 readingHistoryRestoreWithName:v9 completion:{v10, v15, v16, v17, v18}];

    v12 = v19;
  }

  else
  {
    v13 = BDSServiceLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1E4703F14();
    }

    v12 = _Block_copy(v8);
    if (v12)
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v12[2](v12, 0, v14);
    }
  }
}

- (void)bookWidgetReadingHistoryStateInfoWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_1F5E61C08;
  }

  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45FE3F0;
    v11[3] = &unk_1E87597F8;
    v6 = v5;
    v12 = v6;
    v7 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    [v7 bookWidgetReadingHistoryStateInfoWithCompletion:v6];

    v8 = v12;
  }

  else
  {
    v9 = BDSServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4703FC0();
    }

    v10 = _Block_copy(v5);
    v8 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E45FE5BC;
    v10[3] = &unk_1E87597F8;
    v5 = v4;
    v11 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v10];
    [v6 mergeMovedReadingHistoryDataWithCompletionHandler:v5];

    v7 = v11;
  }

  else
  {
    v8 = BDSServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E470406C();
    }

    v7 = _Block_copy(v4);
    if (v7)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, 0, v9);
    }
  }
}

- (void)hasSaltChangedWithCompletion:(id)a3
{
  v4 = a3;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E45FE788;
    v10[3] = &unk_1E87597F8;
    v5 = v4;
    v11 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v10];
    [v6 hasSaltChangedWithCompletion:v5];

    v7 = v11;
  }

  else
  {
    v8 = BDSServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704118();
    }

    v7 = _Block_copy(v4);
    if (v7)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, 0, v9);
    }
  }
}

@end