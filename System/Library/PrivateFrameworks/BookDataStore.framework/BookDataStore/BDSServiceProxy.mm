@interface BDSServiceProxy
- (BDSServiceProxy)initWithConnectionDelegate:(id)delegate;
- (BDSServiceProxyConnectionDelegate)connectionDelegate;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)updateReadingNowWithCompletion:(id)completion;
- (id)updateWantToReadWithCompletion:(id)completion;
- (void)addStoreItem:(id)item completion:(id)completion;
- (void)addStoreItems:(id)items completion:(id)completion;
- (void)assetDetailForAssetID:(id)d completion:(id)completion;
- (void)assetDetailsForAssetIDs:(id)ds completion:(id)completion;
- (void)assetReviewForAssetReviewID:(id)d completion:(id)completion;
- (void)assetReviewsForAssetReviewIDs:(id)ds completion:(id)completion;
- (void)audiobookStoreEnabledWithCompletion:(id)completion;
- (void)bookWidgetReadingHistoryStateInfoWithCompletion:(id)completion;
- (void)clearSyncMetadata:(id)metadata;
- (void)cloudSyncDiagnosticDetachWithCompletionHandler:(id)handler;
- (void)cloudSyncDiagnosticFindLocalIdDupesWithCompletionHandler:(id)handler;
- (void)cloudSyncDiagnosticInfoWithCompletionHandler:(id)handler;
- (void)collectionDetailForCollectionID:(id)d completion:(id)completion;
- (void)collectionDetailsForCollectionIDs:(id)ds completion:(id)completion;
- (void)collectionMemberForCollectionMemberID:(id)d completion:(id)completion;
- (void)currentAssetDetailCloudSyncVersions:(id)versions;
- (void)currentCloudSyncVersions:(id)versions;
- (void)currentCollectionDetailCloudSyncVersions:(id)versions;
- (void)currentCollectionMemberCloudSyncVersions:(id)versions;
- (void)currentReadingNowDetailCloudSyncVersions:(id)versions;
- (void)dealloc;
- (void)deleteAssetDetailForAssetID:(id)d completion:(id)completion;
- (void)deleteAssetReviewForAssetReviewID:(id)d completion:(id)completion;
- (void)deleteAssetReviewForAssetReviewIDs:(id)ds completion:(id)completion;
- (void)deleteCollectionDetailForCollectionID:(id)d completion:(id)completion;
- (void)deleteCollectionDetailForCollectionIDs:(id)ds completion:(id)completion;
- (void)deleteCollectionMemberForCollectionMemberID:(id)d completion:(id)completion;
- (void)deleteCollectionMemberForCollectionMemberIDs:(id)ds completion:(id)completion;
- (void)deleteEngagementDataForKey:(id)key completion:(id)completion;
- (void)deleteItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)deleteReadingNowDetailForAssetID:(id)d completion:(id)completion;
- (void)deleteStoreItemWithStoreID:(id)d completion:(id)completion;
- (void)deleteStoreItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)deleteUserDatumForKey:(id)key completion:(id)completion;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)engagementDataForKey:(id)key completion:(id)completion;
- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)completion;
- (void)fetchAssetDetailsForUnsyncedTastes:(id)tastes;
- (void)fetchCollectionMembersInCollectionID:(id)d completion:(id)completion;
- (void)fetchFinishedAssetCountByYearWithCompletion:(id)completion;
- (void)fetchFinishedDatesByAssetIDForYear:(int64_t)year completion:(id)completion;
- (void)fetchMaxSortOrderInCollectionID:(id)d completion:(id)completion;
- (void)fetchMostRecentAudiobookWithCompletion:(id)completion;
- (void)forceFetchRemoteChanges:(id)changes;
- (void)formXPCConnection;
- (void)getAssetDetailChangesSince:(id)since completion:(id)completion;
- (void)getAssetReviewChangesSince:(id)since completion:(id)completion;
- (void)getBookWidgetDataWithLimit:(int64_t)limit completion:(id)completion;
- (void)getBookWidgetInfoWithLimit:(int64_t)limit completion:(id)completion;
- (void)getCollectionDetailChangesSince:(id)since completion:(id)completion;
- (void)getCollectionMemberChangesSince:(id)since completion:(id)completion;
- (void)getEngagementDataChangesSince:(id)since completion:(id)completion;
- (void)getReadingNowDetailChangesSince:(id)since completion:(id)completion;
- (void)getStoreItemChangesSince:(id)since completion:(id)completion;
- (void)getUserDataChangesSince:(id)since completion:(id)completion;
- (void)hasSaltChangedWithCompletion:(id)completion;
- (void)hideItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)handler;
- (void)monitorServiceNotificationsWithChangeToken:(id)token completion:(id)completion;
- (void)needsReadingNowAssetTypePopulation:(id)population;
- (void)priceTrackingCtlAddTrackedItems:(id)items completion:(id)completion;
- (void)priceTrackingCtlGetStateWithCompletion:(id)completion;
- (void)priceTrackingCtlOverrideReferencePrices:(id)prices completion:(id)completion;
- (void)priceTrackingSetConfiguration:(id)configuration completion:(id)completion;
- (void)readingGoalsChangeBooksFinishedGoalTo:(int64_t)to withCompletion:(id)completion;
- (void)readingGoalsChangeDailyGoalTo:(double)to withCompletion:(id)completion;
- (void)readingGoalsClearDataWithCompletion:(id)completion;
- (void)readingGoalsClearLocalCachedDataWithCompletion:(id)completion;
- (void)readingGoalsStateInfoWithCompletion:(id)completion;
- (void)readingHistoryBackupWithName:(id)name completion:(id)completion;
- (void)readingHistoryClearDataWithCompletion:(id)completion;
- (void)readingHistoryClearDate:(id)date withCompletion:(id)completion;
- (void)readingHistoryClearDefaultsCachedDataWithCompletion:(id)completion;
- (void)readingHistoryClearTodayWithCompletion:(id)completion;
- (void)readingHistoryHandleSyncFileChangeWithSyncVersionInfo:(id)info updateInfo:(id)updateInfo completion:(id)completion;
- (void)readingHistoryIncrementWithDate:(id)date by:(int64_t)by withCompletion:(id)completion;
- (void)readingHistoryListBackupWithCompletion:(id)completion;
- (void)readingHistoryReadingHistoryStateInfoWithRangeStart:(id)start rangeEnd:(id)end currentTime:(id)time withCompletion:(id)completion;
- (void)readingHistoryRestoreWithName:(id)name completion:(id)completion;
- (void)readingHistoryServiceStatusInfoWithCompletion:(id)completion;
- (void)readingNowDetailsForAssetIDs:(id)ds completion:(id)completion;
- (void)resetPurchasedTokenForStoreIDs:(id)ds completion:(id)completion;
- (void)resetStaleJaliscoDatabaseWithCompletion:(id)completion;
- (void)resolvedAssetDetailForAssetID:(id)d completion:(id)completion;
- (void)resolvedUserDataValueForKey:(id)key completion:(id)completion;
- (void)scheduleRestart;
- (void)setAssetDetail:(id)detail completion:(id)completion;
- (void)setAssetDetails:(id)details completion:(id)completion;
- (void)setAssetReview:(id)review completion:(id)completion;
- (void)setAssetReviews:(id)reviews completion:(id)completion;
- (void)setBookWidgetInfo:(id)info completion:(id)completion;
- (void)setCollectionDetail:(id)detail completion:(id)completion;
- (void)setCollectionDetails:(id)details completion:(id)completion;
- (void)setCollectionMember:(id)member completion:(id)completion;
- (void)setCollectionMembers:(id)members completion:(id)completion;
- (void)setEngagementData:(id)data completion:(id)completion;
- (void)setEngagementDatas:(id)datas completion:(id)completion;
- (void)setReadingNowDetails:(id)details completion:(id)completion;
- (void)setUserData:(id)data completion:(id)completion;
- (void)setUserDataValue:(id)value forKey:(id)key completion:(id)completion;
- (void)setUserDatum:(id)datum completion:(id)completion;
- (void)shutdown;
- (void)signalFetchChangesTransaction:(id)transaction;
- (void)storeItemForStoreID:(id)d completion:(id)completion;
- (void)updateBitrateForItemWithAdamID:(id)d completion:(id)completion;
- (void)userDataValueForKey:(id)key completion:(id)completion;
- (void)userDatumForKey:(id)key completion:(id)completion;
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

  connectionDelegate = [(BDSServiceProxy *)self connectionDelegate];
  [(BDSClientSideListener *)self->_clientSideListener setDelegate:connectionDelegate];

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
    mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
    verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

    if (verboseLoggingEnabled)
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
  connectionDelegate2 = [(BDSServiceProxy *)self connectionDelegate];
  [connectionDelegate2 serviceConnectionDidResume];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  v18 = *MEMORY[0x1E69E9840];
}

- (BDSServiceProxy)initWithConnectionDelegate:(id)delegate
{
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = BDSServiceProxy;
  v5 = [(BDSServiceProxy *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connectionDelegate, delegateCopy);
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

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  remoteObjectProxy = self->_remoteObjectProxy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E45EE5A4;
  v9[3] = &unk_1E87597F8;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [(BDSServiceProtocol *)remoteObjectProxy remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  remoteObjectProxy = self->_remoteObjectProxy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E45EE6E0;
  v9[3] = &unk_1E87597F8;
  v10 = handlerCopy;
  v6 = handlerCopy;
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

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45EEAA4;
    v9[3] = &unk_1E87597F8;
    v5 = completionCopy;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 dissociateCloudDataFromSyncWithCompletion:v5];
  }

  else
  {
    v7 = _Block_copy(completionCopy);
    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, 0, v8);
    }
  }
}

- (void)signalFetchChangesTransaction:(id)transaction
{
  transactionCopy = transaction;
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
  v6 = transactionCopy;
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

- (void)assetDetailForAssetID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45EEDF8;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 assetDetailForAssetID:dCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)assetDetailsForAssetIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
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
    selfCopy = self;
    v25 = v27;
    v11 = v8;
    v24 = v11;
    v26 = v29;
    [dsCopy bds_traverseBatchesOfSize:64 block:v21];
    v12 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E45EF39C;
    block[3] = &unk_1E87598E8;
    v17 = v11;
    v18 = completionCopy;
    v19 = v29;
    v20 = v27;
    v13 = v11;
    dispatch_group_notify(v10, v12, block);

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v29, 8);
  }

  else
  {
    v14 = _Block_copy(completionCopy);
    if (v14)
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v14 + 2))(v14, 0, 0, v15);
    }
  }
}

- (void)resolvedAssetDetailForAssetID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45EF53C;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 resolvedAssetDetailForAssetID:dCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)currentAssetDetailCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45EF698;
    v9[3] = &unk_1E87597F8;
    v5 = versionsCopy;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 currentAssetDetailCloudSyncVersions:v5];
  }

  else
  {
    v7 = _Block_copy(versionsCopy);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)deleteAssetDetailForAssetID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (completionCopy)
    {
      v8 = completionCopy;
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
    v14 = completionCopy;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteAssetDetailForAssetID:dCopy completion:v9];
  }

  else
  {
    v11 = _Block_copy(completionCopy);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v11[2](v11, 0, v12);
    }
  }
}

- (void)getAssetDetailChangesSince:(id)since completion:(id)completion
{
  sinceCopy = since;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45EFB7C;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 getAssetDetailChangesSince:sinceCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, 0, v11, 0);
    }
  }
}

- (void)setAssetDetail:(id)detail completion:(id)completion
{
  detailCopy = detail;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (completionCopy)
    {
      v8 = completionCopy;
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
    v14 = completionCopy;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 setAssetDetail:detailCopy completion:v9];
  }

  else
  {
    v11 = _Block_copy(completionCopy);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v11 + 2))(v11, 0, 0, v12);
    }
  }
}

- (void)setAssetDetails:(id)details completion:(id)completion
{
  detailsCopy = details;
  completionCopy = completion;
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
    allKeys = [detailsCopy allKeys];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E45F007C;
    v19[3] = &unk_1E87599A0;
    v10 = v8;
    v20 = v10;
    v21 = detailsCopy;
    selfCopy = self;
    v23 = v30;
    v24 = v28;
    v25 = v26;
    [allKeys bds_traverseBatchesOfSize:64 block:v19];

    v11 = dispatch_get_global_queue(2, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E45F02E4;
    v14[3] = &unk_1E87599C8;
    v15 = completionCopy;
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
    v12 = _Block_copy(completionCopy);
    if (v12)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v12 + 2))(v12, 0, 0, v13);
    }
  }
}

- (void)fetchAssetDetailsForUnsyncedTastes:(id)tastes
{
  tastesCopy = tastes;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F0478;
    v9[3] = &unk_1E87597F8;
    v5 = tastesCopy;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 fetchAssetDetailsForUnsyncedTastes:v5];
  }

  else
  {
    v7 = _Block_copy(tastesCopy);
    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, 0, v8);
    }
  }
}

- (void)fetchFinishedDatesByAssetIDForYear:(int64_t)year completion:(id)completion
{
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45F060C;
    v11[3] = &unk_1E87597F8;
    v7 = completionCopy;
    v12 = v7;
    v8 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    [v8 fetchFinishedDatesByAssetIDForYear:year completion:v7];
  }

  else
  {
    v9 = _Block_copy(completionCopy);
    if (v9)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v9[2](v9, 0, v10);
    }
  }
}

- (void)fetchFinishedAssetCountByYearWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F0798;
    v9[3] = &unk_1E87597F8;
    v5 = completionCopy;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 fetchFinishedAssetCountByYearWithCompletion:v5];
  }

  else
  {
    v7 = _Block_copy(completionCopy);
    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, 0, v8);
    }
  }
}

- (void)readingNowDetailsForAssetIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
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
    selfCopy = self;
    v25 = v27;
    v11 = v8;
    v24 = v11;
    v26 = v29;
    [dsCopy bds_traverseBatchesOfSize:64 block:v21];
    v12 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E45F0D24;
    block[3] = &unk_1E87598E8;
    v17 = v11;
    v18 = completionCopy;
    v19 = v29;
    v20 = v27;
    v13 = v11;
    dispatch_group_notify(v10, v12, block);

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v29, 8);
  }

  else
  {
    v14 = _Block_copy(completionCopy);
    if (v14)
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v14 + 2))(v14, 0, 0, v15);
    }
  }
}

- (void)currentReadingNowDetailCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F0E80;
    v9[3] = &unk_1E87597F8;
    v5 = versionsCopy;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 currentReadingNowDetailCloudSyncVersions:v5];
  }

  else
  {
    v7 = _Block_copy(versionsCopy);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)deleteReadingNowDetailForAssetID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (completionCopy)
    {
      v8 = completionCopy;
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
    v14 = completionCopy;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteReadingNowDetailForAssetID:dCopy completion:v9];
  }

  else
  {
    v11 = _Block_copy(completionCopy);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v11[2](v11, 0, v12);
    }
  }
}

- (void)getReadingNowDetailChangesSince:(id)since completion:(id)completion
{
  sinceCopy = since;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F11C8;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 getReadingNowDetailChangesSince:sinceCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, 0, v11, 0);
    }
  }
}

- (void)setReadingNowDetails:(id)details completion:(id)completion
{
  detailsCopy = details;
  completionCopy = completion;
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
    allKeys = [detailsCopy allKeys];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E45F1504;
    v19[3] = &unk_1E87599A0;
    v10 = v8;
    v20 = v10;
    v21 = detailsCopy;
    selfCopy = self;
    v23 = v30;
    v24 = v28;
    v25 = v26;
    [allKeys bds_traverseBatchesOfSize:64 block:v19];

    v11 = dispatch_get_global_queue(2, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E45F176C;
    v14[3] = &unk_1E87599C8;
    v15 = completionCopy;
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
    v12 = _Block_copy(completionCopy);
    if (v12)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v12 + 2))(v12, 0, 0, v13);
    }
  }
}

- (void)needsReadingNowAssetTypePopulation:(id)population
{
  populationCopy = population;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F1900;
    v9[3] = &unk_1E87597F8;
    v5 = populationCopy;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 needsReadingNowAssetTypePopulation:v5];
  }

  else
  {
    v7 = _Block_copy(populationCopy);
    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, 0, v8);
    }
  }
}

- (void)assetReviewForAssetReviewID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F1AA0;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 assetReviewForAssetReviewID:dCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)assetReviewsForAssetReviewIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
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
    selfCopy = self;
    v25 = v27;
    v11 = v8;
    v24 = v11;
    v26 = v29;
    [dsCopy bds_traverseBatchesOfSize:64 block:v21];
    v12 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E45F202C;
    block[3] = &unk_1E87598E8;
    v17 = v11;
    v18 = completionCopy;
    v19 = v29;
    v20 = v27;
    v13 = v11;
    dispatch_group_notify(v10, v12, block);

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v29, 8);
  }

  else
  {
    v14 = _Block_copy(completionCopy);
    if (v14)
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v14 + 2))(v14, 0, 0, v15);
    }
  }
}

- (void)deleteAssetReviewForAssetReviewID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (completionCopy)
    {
      v8 = completionCopy;
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
    v14 = completionCopy;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteAssetReviewForAssetReviewID:dCopy completion:v9];
  }

  else
  {
    v11 = _Block_copy(completionCopy);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v11[2](v11, 0, v12);
    }
  }
}

- (void)deleteAssetReviewForAssetReviewIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (completionCopy)
    {
      v8 = completionCopy;
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
    v14 = completionCopy;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteAssetReviewForAssetReviewIDs:dsCopy completion:v9];
  }

  else
  {
    v11 = _Block_copy(completionCopy);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v11[2](v11, 0, v12);
    }
  }
}

- (void)getAssetReviewChangesSince:(id)since completion:(id)completion
{
  sinceCopy = since;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F2708;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 getAssetReviewChangesSince:sinceCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, 0, v11, 0);
    }
  }
}

- (void)setAssetReview:(id)review completion:(id)completion
{
  reviewCopy = review;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (completionCopy)
    {
      v8 = completionCopy;
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
    v14 = completionCopy;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 setAssetReview:reviewCopy completion:v9];
  }

  else
  {
    v11 = _Block_copy(completionCopy);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v11 + 2))(v11, 0, 0, v12);
    }
  }
}

- (void)setAssetReviews:(id)reviews completion:(id)completion
{
  reviewsCopy = reviews;
  completionCopy = completion;
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
    allKeys = [reviewsCopy allKeys];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E45F2C08;
    v19[3] = &unk_1E87599A0;
    v10 = v8;
    v20 = v10;
    v21 = reviewsCopy;
    selfCopy = self;
    v23 = v30;
    v24 = v28;
    v25 = v26;
    [allKeys bds_traverseBatchesOfSize:64 block:v19];

    v11 = dispatch_get_global_queue(2, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E45F2E70;
    v14[3] = &unk_1E87599C8;
    v15 = completionCopy;
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
    v12 = _Block_copy(completionCopy);
    if (v12)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v12 + 2))(v12, 0, 0, v13);
    }
  }
}

- (void)addStoreItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (completionCopy)
    {
      v8 = completionCopy;
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
    v14 = completionCopy;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 addStoreItem:itemCopy completion:v9];
  }

  else
  {
    v11 = _Block_copy(completionCopy);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v11 + 2))(v11, 0, 0, v12);
    }
  }
}

- (void)addStoreItems:(id)items completion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
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
    allKeys = [itemsCopy allKeys];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E45F336C;
    v19[3] = &unk_1E87599A0;
    v10 = v8;
    v20 = v10;
    v21 = itemsCopy;
    selfCopy = self;
    v23 = v30;
    v24 = v28;
    v25 = v26;
    [allKeys bds_traverseBatchesOfSize:64 block:v19];

    v11 = dispatch_get_global_queue(2, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E45F35D4;
    v14[3] = &unk_1E87599C8;
    v15 = completionCopy;
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
    v12 = _Block_copy(completionCopy);
    if (v12)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v12 + 2))(v12, 0, 0, v13);
    }
  }
}

- (void)deleteStoreItemWithStoreID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (completionCopy)
    {
      v8 = completionCopy;
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
    v14 = completionCopy;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteStoreItemWithStoreID:dCopy completion:v9];
  }

  else
  {
    v11 = _Block_copy(completionCopy);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v11[2](v11, 0, v12);
    }
  }
}

- (void)deleteStoreItemsWithStoreIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    if (completionCopy)
    {
      v8 = completionCopy;
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
    v14 = completionCopy;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteStoreItemsWithStoreIDs:dsCopy completion:v9];
  }

  else
  {
    v11 = _Block_copy(completionCopy);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v11[2](v11, 0, v12);
    }
  }
}

- (void)getStoreItemChangesSince:(id)since completion:(id)completion
{
  sinceCopy = since;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F3C9C;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 getStoreItemChangesSince:sinceCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, 0, v11, 0);
    }
  }
}

- (void)storeItemForStoreID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F3E48;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 storeItemForStoreID:dCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)collectionDetailForCollectionID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F3FE8;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 collectionDetailForCollectionID:dCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)collectionDetailsForCollectionIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
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
    selfCopy = self;
    v25 = v27;
    v11 = v8;
    v24 = v11;
    v26 = v29;
    [dsCopy bds_traverseBatchesOfSize:64 block:v21];
    v12 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E45F4574;
    block[3] = &unk_1E87598E8;
    v17 = v11;
    v18 = completionCopy;
    v19 = v29;
    v20 = v27;
    v13 = v11;
    dispatch_group_notify(v10, v12, block);

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v29, 8);
  }

  else
  {
    v14 = _Block_copy(completionCopy);
    if (v14)
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v14 + 2))(v14, 0, 0, v15);
    }
  }
}

- (void)currentCollectionDetailCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F46D0;
    v9[3] = &unk_1E87597F8;
    v5 = versionsCopy;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 currentCollectionDetailCloudSyncVersions:v5];
  }

  else
  {
    v7 = _Block_copy(versionsCopy);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)deleteCollectionDetailForCollectionID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = completionCopy;
  if (!completionCopy)
  {
    completionCopy = &unk_1F5E616E8;
  }

  v9 = _Block_copy(completionCopy);
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F4874;
    v13[3] = &unk_1E87597F8;
    v14 = v8;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteCollectionDetailForCollectionID:dCopy completion:v9];
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

- (void)deleteCollectionDetailForCollectionIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v8 = completionCopy;
  if (!completionCopy)
  {
    completionCopy = &unk_1F5E61708;
  }

  v9 = _Block_copy(completionCopy);
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F4A38;
    v13[3] = &unk_1E87597F8;
    v14 = v8;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteCollectionDetailForCollectionIDs:dsCopy completion:v9];
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

- (void)getCollectionDetailChangesSince:(id)since completion:(id)completion
{
  sinceCopy = since;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F4D80;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 getCollectionDetailChangesSince:sinceCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, 0, v11, 0);
    }
  }
}

- (void)setCollectionDetail:(id)detail completion:(id)completion
{
  detailCopy = detail;
  completionCopy = completion;
  v8 = completionCopy;
  if (!completionCopy)
  {
    completionCopy = &unk_1F5E61728;
  }

  v9 = _Block_copy(completionCopy);
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F4F54;
    v13[3] = &unk_1E87597F8;
    v14 = v8;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 setCollectionDetail:detailCopy completion:v9];
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

- (void)setCollectionDetails:(id)details completion:(id)completion
{
  detailsCopy = details;
  completionCopy = completion;
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
    allKeys = [detailsCopy allKeys];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E45F5288;
    v19[3] = &unk_1E87599A0;
    v10 = v8;
    v20 = v10;
    v21 = detailsCopy;
    selfCopy = self;
    v23 = v30;
    v24 = v28;
    v25 = v26;
    [allKeys bds_traverseBatchesOfSize:64 block:v19];

    v11 = dispatch_get_global_queue(2, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E45F54F0;
    v14[3] = &unk_1E87599C8;
    v15 = completionCopy;
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
    v12 = _Block_copy(completionCopy);
    if (v12)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v12 + 2))(v12, 0, 0, v13);
    }
  }
}

- (void)collectionMemberForCollectionMemberID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F5698;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 collectionMemberForCollectionMemberID:dCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)currentCollectionMemberCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F57F4;
    v9[3] = &unk_1E87597F8;
    v5 = versionsCopy;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 currentCollectionMemberCloudSyncVersions:v5];
  }

  else
  {
    v7 = _Block_copy(versionsCopy);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)deleteCollectionMemberForCollectionMemberID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = completionCopy;
  if (!completionCopy)
  {
    completionCopy = &unk_1F5E61748;
  }

  v9 = _Block_copy(completionCopy);
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F5998;
    v13[3] = &unk_1E87597F8;
    v14 = v8;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteCollectionMemberForCollectionMemberID:dCopy completion:v9];
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

- (void)deleteCollectionMemberForCollectionMemberIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v8 = completionCopy;
  if (!completionCopy)
  {
    completionCopy = &unk_1F5E61768;
  }

  v9 = _Block_copy(completionCopy);
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F5B5C;
    v13[3] = &unk_1E87597F8;
    v14 = v8;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 deleteCollectionMemberForCollectionMemberIDs:dsCopy completion:v9];
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

- (void)fetchCollectionMembersInCollectionID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F5E9C;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 fetchCollectionMembersInCollectionID:dCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, v11);
    }
  }
}

- (void)getCollectionMemberChangesSince:(id)since completion:(id)completion
{
  sinceCopy = since;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F604C;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 getCollectionMemberChangesSince:sinceCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, 0, v11, 0);
    }
  }
}

- (void)setCollectionMember:(id)member completion:(id)completion
{
  memberCopy = member;
  completionCopy = completion;
  v8 = completionCopy;
  if (!completionCopy)
  {
    completionCopy = &unk_1F5E61788;
  }

  v9 = _Block_copy(completionCopy);
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F6220;
    v13[3] = &unk_1E87597F8;
    v14 = v8;
    v10 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v10 setCollectionMember:memberCopy completion:v9];
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

- (void)setCollectionMembers:(id)members completion:(id)completion
{
  membersCopy = members;
  completionCopy = completion;
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
    allKeys = [membersCopy allKeys];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E45F6554;
    v19[3] = &unk_1E87599A0;
    v10 = v8;
    v20 = v10;
    v21 = membersCopy;
    selfCopy = self;
    v23 = v30;
    v24 = v28;
    v25 = v26;
    [allKeys bds_traverseBatchesOfSize:64 block:v19];

    v11 = dispatch_get_global_queue(2, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E45F67BC;
    v14[3] = &unk_1E87599C8;
    v15 = completionCopy;
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
    v12 = _Block_copy(completionCopy);
    if (v12)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v12 + 2))(v12, 0, 0, v13);
    }
  }
}

- (void)fetchMaxSortOrderInCollectionID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F6964;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 fetchMaxSortOrderInCollectionID:dCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)fetchMostRecentAudiobookWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F6AF0;
    v9[3] = &unk_1E87597F8;
    v5 = completionCopy;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 fetchMostRecentAudiobookWithCompletion:v5];
  }

  else
  {
    v7 = _Block_copy(completionCopy);
    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, 0, v8);
    }
  }
}

- (id)updateWantToReadWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45F6E7C;
    v11[3] = &unk_1E87597F8;
    v5 = completionCopy;
    v12 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    v7 = [v6 updateWantToReadWithCompletion:v5];
  }

  else
  {
    v8 = _Block_copy(completionCopy);
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

- (id)updateReadingNowWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E45F703C;
    v11[3] = &unk_1E87597F8;
    v5 = completionCopy;
    v12 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v11];
    v7 = [v6 updateReadingNowWithCompletion:v5];
  }

  else
  {
    v8 = _Block_copy(completionCopy);
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

- (void)updateBitrateForItemWithAdamID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F71D4;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 updateBitrateForItemWithAdamID:dCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, v11);
    }
  }
}

- (void)audiobookStoreEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F735C;
    v9[3] = &unk_1E87597F8;
    v5 = completionCopy;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 audiobookStoreEnabledWithCompletion:v5];
  }

  else
  {
    v7 = _Block_copy(completionCopy);
    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, 0, v8);
    }
  }
}

- (void)currentCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E45F74D4;
    v9[3] = &unk_1E87597F8;
    v5 = versionsCopy;
    v10 = v5;
    v6 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v9];
    [v6 currentCloudSyncVersions:v5];
  }

  else
  {
    v7 = _Block_copy(versionsCopy);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)setUserDatum:(id)datum completion:(id)completion
{
  datumCopy = datum;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F7658;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 setUserDatum:datumCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, v11);
    }
  }
}

- (void)setUserData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F7800;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 setUserData:dataCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, v11);
    }
  }
}

- (void)deleteUserDatumForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F79A4;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 deleteUserDatumForKey:keyCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)userDatumForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F7B44;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 userDatumForKey:keyCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)getUserDataChangesSince:(id)since completion:(id)completion
{
  sinceCopy = since;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F7F74;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 getUserDataChangesSince:sinceCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, 0, v11, 0);
    }
  }
}

- (void)resolvedUserDataValueForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F8120;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 resolvedUserDataValueForKey:keyCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)userDataValueForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E45F82C0;
    v12[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v13 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v12];
    [v9 userDataValueForKey:keyCopy completion:v8];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)setUserDataValue:(id)value forKey:(id)key completion:(id)completion
{
  valueCopy = value;
  keyCopy = key;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E45F8478;
    v15[3] = &unk_1E87597F8;
    v11 = completionCopy;
    v16 = v11;
    v12 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v15];
    [v12 setUserDataValue:valueCopy forKey:keyCopy completion:v11];
  }

  else
  {
    v13 = _Block_copy(completionCopy);
    if (v13)
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v13[2](v13, v14);
    }
  }
}

- (void)deleteEngagementDataForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F8638;
    v13[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v14 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v9 deleteEngagementDataForKey:keyCopy completion:v8];

    v10 = v14;
  }

  else
  {
    v11 = BDSServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E47021FC();
    }

    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v12);
    }
  }
}

- (void)engagementDataForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F8818;
    v13[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v14 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v9 engagementDataForKey:keyCopy completion:v8];

    v10 = v14;
  }

  else
  {
    v11 = BDSServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E47022A8();
    }

    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v10[2](v10, 0, v12);
    }
  }
}

- (void)getEngagementDataChangesSince:(id)since completion:(id)completion
{
  sinceCopy = since;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F8DD0;
    v13[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v14 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v9 getEngagementDataChangesSince:sinceCopy completion:v8];

    v10 = v14;
  }

  else
  {
    v11 = BDSServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E47024AC();
    }

    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, 0, v12, 0);
    }
  }
}

- (void)setEngagementDatas:(id)datas completion:(id)completion
{
  datasCopy = datas;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F8FC0;
    v13[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v14 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v9 setEngagementDatas:datasCopy completion:v8];

    v10 = v14;
  }

  else
  {
    v11 = BDSServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E4702558();
    }

    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, v12);
    }
  }
}

- (void)setEngagementData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E45F91A8;
    v13[3] = &unk_1E87597F8;
    v8 = completionCopy;
    v14 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v13];
    [v9 setEngagementData:dataCopy completion:v8];

    v10 = v14;
  }

  else
  {
    v11 = BDSServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E4702604();
    }

    v10 = _Block_copy(completionCopy);
    if (v10)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      (*(v10 + 2))(v10, 0, 0, v12);
    }
  }
}

- (void)clearSyncMetadata:(id)metadata
{
  metadataCopy = metadata;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E45F9374;
    v10[3] = &unk_1E87597F8;
    v5 = metadataCopy;
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

    v7 = _Block_copy(metadataCopy);
    if (v7)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, v9);
    }
  }
}

- (void)forceFetchRemoteChanges:(id)changes
{
  changesCopy = changes;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E45F9538;
    v10[3] = &unk_1E87597F8;
    v5 = changesCopy;
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

    v7 = _Block_copy(changesCopy);
    if (v7)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, v9);
    }
  }
}

- (void)cloudSyncDiagnosticDetachWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E45F96FC;
    v10[3] = &unk_1E87597F8;
    v5 = handlerCopy;
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

    v7 = _Block_copy(handlerCopy);
    if (v7)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, v9);
    }
  }
}

- (void)cloudSyncDiagnosticFindLocalIdDupesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E45F98C0;
    v10[3] = &unk_1E87597F8;
    v5 = handlerCopy;
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

    v7 = _Block_copy(handlerCopy);
    if (v7)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, v9);
    }
  }
}

- (void)cloudSyncDiagnosticInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = handlerCopy;
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

- (void)hideItemsWithStoreIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = completionCopy;
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
    v9 = dsCopy;
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

- (void)resetPurchasedTokenForStoreIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = completionCopy;
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
    v9 = dsCopy;
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

- (void)deleteItemsWithStoreIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = completionCopy;
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
    v9 = dsCopy;
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

- (void)resetStaleJaliscoDatabaseWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = completionCopy;
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

- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = completionCopy;
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

- (void)monitorServiceNotificationsWithChangeToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = completionCopy;
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
    v16 = tokenCopy;
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

- (void)setBookWidgetInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = completionCopy;
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
    v9 = infoCopy;
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

- (void)getBookWidgetDataWithLimit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = sub_1E45FB910;
    v15 = &unk_1E8759B10;
    limitCopy = limit;
    v7 = completionCopy;
    v16 = v7;
    v8 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:&v12];
    [v8 getBookWidgetDataWithLimit:limit completion:{v7, v12, v13, v14, v15}];

    v9 = v16;
  }

  else
  {
    v10 = BDSServiceLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E470323C();
    }

    v9 = _Block_copy(completionCopy);
    if (v9)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v9[2](v9, 0, v11);
    }
  }
}

- (void)getBookWidgetInfoWithLimit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = sub_1E45FBAEC;
    v15 = &unk_1E8759B10;
    limitCopy = limit;
    v7 = completionCopy;
    v16 = v7;
    v8 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:&v12];
    [v8 getBookWidgetInfoWithLimit:limit completion:{v7, v12, v13, v14, v15}];

    v9 = v16;
  }

  else
  {
    v10 = BDSServiceLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E47032E8();
    }

    v9 = _Block_copy(completionCopy);
    if (v9)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v9[2](v9, 0, v11);
    }
  }
}

- (void)readingGoalsChangeBooksFinishedGoalTo:(int64_t)to withCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = completionCopy;
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
    toCopy = to;
    v8 = v7;
    v17 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:&v13];
    [v9 readingGoalsChangeBooksFinishedGoalTo:to withCompletion:{v8, v13, v14, v15, v16}];

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

- (void)readingGoalsChangeDailyGoalTo:(double)to withCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = completionCopy;
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
    toCopy = to;
    v8 = v7;
    v17 = v8;
    v9 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:&v13];
    [v9 readingGoalsChangeDailyGoalTo:v8 withCompletion:{to, v13, v14, v15, v16}];

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

- (void)readingGoalsClearDataWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = completionCopy;
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

- (void)readingGoalsClearLocalCachedDataWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = completionCopy;
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

- (void)readingGoalsStateInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = completionCopy;
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

- (void)readingHistoryClearDataWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = completionCopy;
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

- (void)readingHistoryClearDefaultsCachedDataWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = completionCopy;
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

- (void)readingHistoryClearDate:(id)date withCompletion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = completionCopy;
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
    [v10 readingHistoryClearDate:dateCopy withCompletion:v9];

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

- (void)readingHistoryClearTodayWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = completionCopy;
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

- (void)readingHistoryHandleSyncFileChangeWithSyncVersionInfo:(id)info updateInfo:(id)updateInfo completion:(id)completion
{
  infoCopy = info;
  updateInfoCopy = updateInfo;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = completionCopy;
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
    v18 = infoCopy;
    v19 = updateInfoCopy;
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

- (void)readingHistoryIncrementWithDate:(id)date by:(int64_t)by withCompletion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  if (completionCopy)
  {
    v10 = completionCopy;
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
    v11 = dateCopy;
    v18 = v11;
    byCopy = by;
    v12 = v10;
    v19 = v12;
    v13 = [(BDSServiceProxy *)self remoteObjectProxyWithErrorHandler:v17];
    [v13 readingHistoryIncrementWithDate:v11 by:by withCompletion:v12];

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

- (void)readingHistoryReadingHistoryStateInfoWithRangeStart:(id)start rangeEnd:(id)end currentTime:(id)time withCompletion:(id)completion
{
  startCopy = start;
  endCopy = end;
  timeCopy = time;
  completionCopy = completion;
  if (completionCopy)
  {
    v14 = completionCopy;
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
    [v16 readingHistoryReadingHistoryStateInfoWithRangeStart:startCopy rangeEnd:endCopy currentTime:timeCopy withCompletion:v15];

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

- (void)readingHistoryServiceStatusInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = completionCopy;
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

- (void)priceTrackingSetConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if (completionCopy)
  {
    v9 = completionCopy;
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
    [v11 priceTrackingSetConfiguration:configurationCopy completion:v10];
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

- (void)priceTrackingCtlGetStateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v6 = completionCopy;
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

- (void)priceTrackingCtlAddTrackedItems:(id)items completion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  if (completionCopy)
  {
    v9 = completionCopy;
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
    [v11 priceTrackingCtlAddTrackedItems:itemsCopy completion:v10];
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

- (void)priceTrackingCtlOverrideReferencePrices:(id)prices completion:(id)completion
{
  pricesCopy = prices;
  completionCopy = completion;
  if (completionCopy)
  {
    v9 = completionCopy;
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
    [v11 priceTrackingCtlOverrideReferencePrices:pricesCopy completion:v10];
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

- (void)readingHistoryBackupWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = completionCopy;
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
    v9 = nameCopy;
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

- (void)readingHistoryListBackupWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = completionCopy;
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

- (void)readingHistoryRestoreWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = completionCopy;
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
    v9 = nameCopy;
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

- (void)bookWidgetReadingHistoryStateInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = completionCopy;
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

- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E45FE5BC;
    v10[3] = &unk_1E87597F8;
    v5 = handlerCopy;
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

    v7 = _Block_copy(handlerCopy);
    if (v7)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, 0, v9);
    }
  }
}

- (void)hasSaltChangedWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(BDSServiceProxy *)self connectionHealthy])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E45FE788;
    v10[3] = &unk_1E87597F8;
    v5 = completionCopy;
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

    v7 = _Block_copy(completionCopy);
    if (v7)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
      v7[2](v7, 0, v9);
    }
  }
}

@end