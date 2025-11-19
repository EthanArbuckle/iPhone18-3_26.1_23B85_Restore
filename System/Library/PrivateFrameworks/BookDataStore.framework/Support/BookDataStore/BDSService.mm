@interface BDSService
- (BCCloudAssetManager)assetManager;
- (BCCloudCollectionsManager)cloudCollectionsManager;
- (BDSCloudSyncDiagnosticService)cloudSyncDiagnosticService;
- (BDSService)initWithClientConnectionService:(id)a3;
- (_TtC14bookdatastored25CloudSecureManagerService)secureManager;
- (id)_newWidgetMOC;
- (id)_stateForLog;
- (id)makeOSStateHandler;
- (id)updateReadingNowWithCompletion:(id)a3;
- (id)updateWantToReadWithCompletion:(id)a3;
- (void)_BCCloudCollectionMemberManagerChanged:(id)a3;
- (void)_BCCloudReadingNowDetailManagerChanged:(id)a3;
- (void)_setupWidget;
- (void)_setupWidgetDataUpdater:(id)a3;
- (void)_updateEnableSync;
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
- (void)priceTrackingCtlRefreshTrackedPricesIgnoringSchedule:(BOOL)a3 completion:(id)a4;
- (void)priceTrackingSetConfiguration:(id)a3 completion:(id)a4;
- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4;
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
- (void)signalFetchChangesTransaction:(id)a3;
- (void)storeItemForStoreID:(id)a3 completion:(id)a4;
- (void)updateBitrateForItemWithAdamID:(id)a3 completion:(id)a4;
- (void)userDataValueForKey:(id)a3 completion:(id)a4;
- (void)userDatumForKey:(id)a3 completion:(id)a4;
@end

@implementation BDSService

- (_TtC14bookdatastored25CloudSecureManagerService)secureManager
{
  WeakRetained = objc_loadWeakRetained(&self->_secureManager);

  return WeakRetained;
}

- (BDSService)initWithClientConnectionService:(id)a3
{
  v5 = a3;
  v45.receiver = self;
  v45.super_class = BDSService;
  v6 = [(BDSService *)&v45 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientConnectionService, a3);
    v7->_authenticatorsLock._os_unfair_lock_opaque = 0;
    v8 = +[BUAccountsProvider sharedProvider];
    [v8 observeTCCAccessChangeNotificationIfNeeded];

    v9 = +[BCCloudKitController sharedInstance];
    v10 = +[BCCloudKitController secureSharedInstance];
    v11 = +[BCCloudAssetManager sharedService];
    objc_storeWeak(&v7->_assetManager, v11);

    v12 = +[BCCloudCollectionsManager sharedService];
    objc_storeWeak(&v7->_cloudCollectionsManager, v12);

    v13 = +[_TtC14bookdatastored25CloudSecureManagerService sharedManager];
    objc_storeWeak(&v7->_secureManager, v13);

    v14 = [BDSNBController alloc];
    WeakRetained = objc_loadWeakRetained(&v7->_assetManager);
    v16 = [WeakRetained assetDataSource];
    v17 = [(BDSNBController *)v14 initWithCloudDataSource:v16];
    nanoBooksController = v7->_nanoBooksController;
    v7->_nanoBooksController = v17;

    v19 = +[BDSJaliscoDAAPServiceImpl sharedClient];
    jaliscoDAAPService = v7->_jaliscoDAAPService;
    v7->_jaliscoDAAPService = v19;

    v21 = [(BDSService *)v7 jaliscoDAAPService];

    if (!v21)
    {
      v22 = sub_1000023E8();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1001BFE9C();
      }
    }

    [(BDSService *)v7 _setupWidget];
    v23 = objc_alloc_init(BDSOSTransactionProvider);
    if (!v7->_widgetDataUpdater)
    {
      v24 = [(BDSService *)v7 _newWidgetMOC];
      [(BDSService *)v7 _setupWidgetDataUpdater:v24];
    }

    v25 = [[BDSBookWidgetReadingHistoryManager alloc] initWithBookWidgetDataUpdater:v7->_widgetDataUpdater transactionProvider:v23];
    v26 = objc_alloc_init(BDSNotificationForwarder);
    notificationForwarder = v7->_notificationForwarder;
    v7->_notificationForwarder = v26;

    v28 = objc_alloc_init(BDSReadingGoalsService);
    readingGoalsService = v7->_readingGoalsService;
    v7->_readingGoalsService = v28;

    v30 = [[BDSReadingHistoryServiceManager alloc] initWithReadingGoalsService:v7->_readingGoalsService transactionProvider:v23 viewStateChangeHandler:v25];
    objc_storeStrong(&v7->_readingHistoryCommandLineService, v30);
    readingHistoryService = v7->_readingHistoryService;
    v7->_readingHistoryService = v30;

    v32 = +[BDSAppGroupContainer documentsURL];
    v33 = [v32 URLByAppendingPathComponent:@"BDSService-PriceTracking" isDirectory:1];

    v34 = [v33 URLByAppendingPathComponent:@"data.json" isDirectory:0];
    v35 = [[BDSPriceTracker alloc] initWithPersistenceURL:v34];
    priceTracker = v7->_priceTracker;
    v7->_priceTracker = v35;

    +[BDSXPCEventRelay start];
    v37 = +[NSNotificationCenter defaultCenter];
    [v37 addObserver:v7 selector:"tccAccessChanged:" name:@"BDSTCCAccessChangedNotification" object:0];

    v38 = +[NSDistributedNotificationCenter defaultCenter];
    [v38 addObserver:v7 selector:"enableSyncChanged:" name:@"BKUbiquitousFinishedOptInFlow" object:0];

    [(BDSService *)v7 _updateEnableSync];
    v39 = +[MCProfileConnection sharedConnection];
    [v39 addObserver:v7];

    v40 = +[NSDistributedNotificationCenter defaultCenter];
    [v40 addObserver:v7 selector:"_BCCloudReadingNowDetailManagerChanged:" name:@"BCCloudReadingNowDetailManagerChanged" object:0];

    v41 = +[NSDistributedNotificationCenter defaultCenter];
    [v41 addObserver:v7 selector:"_BCCloudCollectionMemberManagerChanged:" name:@"BCCloudCollectionMemberManagerChanged" object:0];

    v42 = [(BDSService *)v7 makeOSStateHandler];
    syncServiceStateHandler = v7->_syncServiceStateHandler;
    v7->_syncServiceStateHandler = v42;
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[MCProfileConnection sharedConnection];
  [v3 removeObserver:self];

  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"BCCloudReadingNowDetailManagerChanged" object:0];

  v5 = +[NSDistributedNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"BCCloudCollectionMemberManagerChanged" object:0];

  v6.receiver = self;
  v6.super_class = BDSService;
  [(BDSService *)&v6 dealloc];
}

- (void)_BCCloudReadingNowDetailManagerChanged:(id)a3
{
  v3 = sub_10000DC90();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BCCloudReadingNowManagerChanged notification received", v7, 2u);
  }

  v4 = [sub_100077BF0() sharedManager];
  if ([v4 isReadingNowEnabled])
  {
    v5 = +[BDSNBPinningManager sharedManager];
    v6 = [v5 updateReadingNowWithCompletion:&stru_100240C68];
  }
}

- (void)_BCCloudCollectionMemberManagerChanged:(id)a3
{
  v3 = sub_10000DC90();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BCCloudCollectionMemberManagerChanged notification received", v7, 2u);
  }

  v4 = [sub_100077BF0() sharedManager];
  if ([v4 isWantToReadEnabled])
  {
    v5 = +[BDSNBPinningManager sharedManager];
    v6 = [v5 updateWantToReadWithCompletion:&stru_100240C88];
  }
}

- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4
{
  v4 = sub_10000DC90();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "profileConnectionDidReceiveRestrictionChangedNotification received", v7, 2u);
  }

  v5 = +[BDSNBPinningManager sharedManager];
  v6 = [v5 updateWantToReadAndReadingNowWithJaliscoUpdateSuccessful:1 completion:&stru_100240CA8];
}

- (void)_updateEnableSync
{
  v3 = +[BDSSyncUserDefaults isSignedIntoICloud];
  v4 = +[BDSSyncUserDefaults isGlobalICloudDriveSyncOptedIn];
  v5 = +[BDSSyncUserDefaults isCloudKitSyncOptedIn];
  v6 = ![(BDSService *)self paused]& v3 & v5;
  v7 = sub_100002660();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if ([(BDSService *)self paused])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    if (v3)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    *v27 = 138544386;
    *&v27[4] = v8;
    if (v4)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    *&v27[12] = 2114;
    *&v27[14] = v9;
    if (v5)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    *&v27[22] = 2114;
    if (v6)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v28 = v10;
    v29 = 2114;
    v30 = v11;
    v31 = 2114;
    v32 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "BDSService Paused=%{public}@ SignedIn=%{public}@ GlobalICloudDrive=%{public}@ CloudKit=%{public}@  isCloudKitEnabled=%{public}@", v27, 0x34u);
  }

  objc_opt_class();
  v13 = [BDSUserPreferencesSync objectFromGroupPreferencesForKey:@"BKLibrary.ReadingNow"];
  v14 = BUDynamicCast();

  if (v14)
  {
    v15 = [v14 BOOLValue];
    if (v6)
    {
LABEL_20:
      v16 = [BUAccountsProvider sharedProvider:*v27];
      v17 = [v16 isPrimaryAccountManagedAppleID] | v15;

      goto LABEL_23;
    }
  }

  else
  {
    v15 = 1;
    if (v6)
    {
      goto LABEL_20;
    }
  }

  v17 = 0;
LABEL_23:
  v18 = [(BDSService *)self assetManager:*v27];
  [v18 setEnableCloudSync:v6 enableReadingNowSync:v17 & 1];

  v19 = sub_100002660();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    if (v6)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    if (v17)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    *v27 = 138543618;
    *&v27[4] = v20;
    *&v27[12] = 2114;
    *&v27[14] = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "BDSService enabling assetSync: %{public}@ readingNow Sync: %{public}@", v27, 0x16u);
  }

  v22 = +[BDSSyncUserDefaults isICloudDriveSyncOptedIn];
  v23 = [(BDSService *)self ubiquityManager];
  [v23 setEnableUbiquityObserving:v22 & v4];

  v24 = [(BDSService *)self readingHistoryService];
  [v24 setEnableCloudSync:v6];

  v25 = +[BCCloudKitController sharedInstance];
  [v25 setEnableCloudSync:v6 serviceMode:1];

  v26 = +[BCCloudKitController secureSharedInstance];
  [v26 setEnableCloudSync:v6 serviceMode:1];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self assetManager];
  [v5 dissociateCloudDataFromSyncWithCompletion:v4];

  v6 = [(BDSService *)self cloudCollectionsManager];
  [v6 dissociateCloudDataFromSyncWithCompletion:v4];
}

- (void)signalFetchChangesTransaction:(id)a3
{
  v3 = a3;
  v4 = +[BCCloudKitController sharedInstance];
  [v4 attachOrSignalFetchChangesTransaction:v3 reason:@"XPC call"];

  v5 = +[BCCloudKitController secureSharedInstance];
  [v5 attachOrSignalFetchChangesTransaction:v3 reason:@"XPC call"];
}

- (void)assetDetailForAssetID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 assetDetailManager];
  [v8 assetDetailForAssetID:v7 completion:v6];
}

- (void)assetDetailsForAssetIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 assetDetailManager];
  [v8 assetDetailsForAssetIDs:v7 completion:v6];
}

- (void)resolvedAssetDetailForAssetID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 assetDetailManager];
  [v8 resolvedAssetDetailForAssetID:v7 completion:v6];
}

- (void)currentAssetDetailCloudSyncVersions:(id)a3
{
  v4 = a3;
  v6 = [(BDSService *)self assetManager];
  v5 = [v6 assetDetailManager];
  [v5 currentAssetDetailCloudSyncVersions:v4];
}

- (void)deleteAssetDetailForAssetID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 assetDetailManager];
  [v8 deleteAssetDetailForAssetID:v7 completion:v6];
}

- (void)getAssetDetailChangesSince:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 assetDetailManager];
  [v8 getAssetDetailChangesSince:v7 completion:v6];
}

- (void)setAssetDetail:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 assetDetailManager];
  [v8 setAssetDetail:v7 completion:v6];
}

- (void)setAssetDetails:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 assetDetailManager];
  [v8 setAssetDetails:v7 completion:v6];
}

- (void)fetchAssetDetailsForUnsyncedTastes:(id)a3
{
  v4 = a3;
  v6 = [(BDSService *)self assetManager];
  v5 = [v6 assetDetailManager];
  [v5 fetchAssetDetailsForUnsyncedTastes:v4];
}

- (void)fetchFinishedDatesByAssetIDForYear:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v8 = [(BDSService *)self assetManager];
  v7 = [v8 assetDetailManager];
  [v7 fetchFinishedDatesByAssetIDForYear:a3 completion:v6];
}

- (void)fetchFinishedAssetCountByYearWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(BDSService *)self assetManager];
  v5 = [v6 assetDetailManager];
  [v5 fetchFinishedAssetCountByYearWithCompletion:v4];
}

- (void)readingNowDetailsForAssetIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 readingNowDetailManager];
  [v8 readingNowDetailsForAssetIDs:v7 completion:v6];
}

- (void)currentReadingNowDetailCloudSyncVersions:(id)a3
{
  v4 = a3;
  v6 = [(BDSService *)self assetManager];
  v5 = [v6 readingNowDetailManager];
  [v5 currentReadingNowDetailCloudSyncVersions:v4];
}

- (void)deleteReadingNowDetailForAssetID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 readingNowDetailManager];
  [v8 deleteReadingNowDetailForAssetID:v7 completion:v6];
}

- (void)getReadingNowDetailChangesSince:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 readingNowDetailManager];
  [v8 getReadingNowDetailChangesSince:v7 completion:v6];
}

- (void)setReadingNowDetails:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 readingNowDetailManager];
  [v8 setReadingNowDetails:v7 completion:v6];
}

- (void)needsReadingNowAssetTypePopulation:(id)a3
{
  v4 = a3;
  v6 = [(BDSService *)self assetManager];
  v5 = [v6 readingNowDetailManager];
  [v5 needsReadingNowAssetTypePopulation:v4];
}

- (void)assetReviewForAssetReviewID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 assetReviewManager];
  [v8 assetReviewForAssetReviewID:v7 completion:v6];
}

- (void)assetReviewsForAssetReviewIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 assetReviewManager];
  [v8 assetReviewsForAssetReviewIDs:v7 completion:v6];
}

- (void)deleteAssetReviewForAssetReviewID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 assetReviewManager];
  [v8 deleteAssetReviewForAssetReviewID:v7 completion:v6];
}

- (void)deleteAssetReviewForAssetReviewIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 assetReviewManager];
  [v8 deleteAssetReviewForAssetReviewIDs:v7 completion:v6];
}

- (void)getAssetReviewChangesSince:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 assetReviewManager];
  [v8 getAssetReviewChangesSince:v7 completion:v6];
}

- (void)setAssetReview:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 assetReviewManager];
  [v8 setAssetReview:v7 completion:v6];
}

- (void)setAssetReviews:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 assetReviewManager];
  [v8 setAssetReviews:v7 completion:v6];
}

- (void)addStoreItem:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 storeAssetManager];
  [v8 addStoreItem:v7 completion:v6];
}

- (void)addStoreItems:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 storeAssetManager];
  [v8 addStoreItems:v7 completion:v6];
}

- (void)deleteStoreItemWithStoreID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 storeAssetManager];
  [v8 deleteStoreItemWithStoreID:v7 completion:v6];
}

- (void)deleteStoreItemsWithStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 storeAssetManager];
  [v8 deleteStoreItemsWithStoreIDs:v7 completion:v6];
}

- (void)getStoreItemChangesSince:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 storeAssetManager];
  [v8 getStoreItemChangesSince:v7 completion:v6];
}

- (void)storeItemForStoreID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self assetManager];
  v8 = [v9 storeAssetManager];
  [v8 storeItemForStoreID:v7 completion:v6];
}

- (void)collectionDetailForCollectionID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self cloudCollectionsManager];
  v8 = [v9 collectionDetailManager];
  [v8 collectionDetailForCollectionID:v7 completion:v6];
}

- (void)collectionDetailsForCollectionIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self cloudCollectionsManager];
  v8 = [v9 collectionDetailManager];
  [v8 collectionDetailsForCollectionIDs:v7 completion:v6];
}

- (void)currentCollectionDetailCloudSyncVersions:(id)a3
{
  v4 = a3;
  v6 = [(BDSService *)self cloudCollectionsManager];
  v5 = [v6 collectionDetailManager];
  [v5 currentCollectionDetailCloudSyncVersions:v4];
}

- (void)deleteCollectionDetailForCollectionID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self cloudCollectionsManager];
  v8 = [v9 collectionDetailManager];
  [v8 deleteCollectionDetailForCollectionID:v7 completion:v6];
}

- (void)deleteCollectionDetailForCollectionIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self cloudCollectionsManager];
  v8 = [v9 collectionDetailManager];
  [v8 deleteCollectionDetailForCollectionIDs:v7 completion:v6];
}

- (void)getCollectionDetailChangesSince:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSService *)self cloudCollectionsManager];
  v9 = [v8 collectionDetailManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100035C34;
  v11[3] = &unk_100240CD0;
  v12 = v6;
  v10 = v6;
  [v9 getCollectionDetailChangesSince:v7 completion:v11];
}

- (void)setCollectionDetail:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self cloudCollectionsManager];
  v8 = [v9 collectionDetailManager];
  [v8 setCollectionDetail:v7 completion:v6];
}

- (void)setCollectionDetails:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self cloudCollectionsManager];
  v8 = [v9 collectionDetailManager];
  [v8 setCollectionDetails:v7 completion:v6];
}

- (void)collectionMemberForCollectionMemberID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self cloudCollectionsManager];
  v8 = [v9 collectionMemberManager];
  [v8 collectionMemberForCollectionMemberID:v7 completion:v6];
}

- (void)currentCollectionMemberCloudSyncVersions:(id)a3
{
  v4 = a3;
  v6 = [(BDSService *)self cloudCollectionsManager];
  v5 = [v6 collectionMemberManager];
  [v5 currentCollectionMemberCloudSyncVersions:v4];
}

- (void)deleteCollectionMemberForCollectionMemberID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self cloudCollectionsManager];
  v8 = [v9 collectionMemberManager];
  [v8 deleteCollectionMemberForCollectionMemberID:v7 completion:v6];
}

- (void)deleteCollectionMemberForCollectionMemberIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self cloudCollectionsManager];
  v8 = [v9 collectionMemberManager];
  [v8 deleteCollectionMemberForCollectionMemberIDs:v7 completion:v6];
}

- (void)fetchCollectionMembersInCollectionID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self cloudCollectionsManager];
  v8 = [v9 collectionMemberManager];
  [v8 fetchCollectionMembersInCollectionID:v7 completion:v6];
}

- (void)getCollectionMemberChangesSince:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self cloudCollectionsManager];
  v8 = [v9 collectionMemberManager];
  [v8 getCollectionMemberChangesSince:v7 completion:v6];
}

- (void)setCollectionMember:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self cloudCollectionsManager];
  v8 = [v9 collectionMemberManager];
  [v8 setCollectionMember:v7 completion:v6];
}

- (void)setCollectionMembers:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self cloudCollectionsManager];
  v8 = [v9 collectionMemberManager];
  [v8 setCollectionMembers:v7 completion:v6];
}

- (void)fetchMaxSortOrderInCollectionID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self cloudCollectionsManager];
  v8 = [v9 collectionMemberManager];
  [v8 fetchMaxSortOrderInCollectionID:v7 completion:v6];
}

- (void)fetchMostRecentAudiobookWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[BDSNBPinningManager sharedManager];
  [v4 fetchMostRecentAudiobookWithCompletion:v3];
}

- (id)updateWantToReadWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[BDSNBPinningManager sharedManager];
  v5 = [v4 updateWantToReadWithCompletion:v3];

  return v5;
}

- (id)updateReadingNowWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[BDSNBPinningManager sharedManager];
  v5 = [v4 updateReadingNowWithCompletion:v3];

  return v5;
}

- (void)updateBitrateForItemWithAdamID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[BDSOSTransaction alloc] initWithTransactionName:"updateBitrateForItemWithAdamID"];
  v8 = +[BDSNBPinningManager sharedManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003657C;
  v11[3] = &unk_10023F6F8;
  v12 = v7;
  v9 = v7;
  [v8 updateBitrateForItemWithAdamID:v6 completion:v11];

  v10 = objc_retainBlock(v5);
  if (v10)
  {
    v10[2](v10, 0);
  }
}

- (void)audiobookStoreEnabledWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[BDSNBPinningManager sharedManager];
  [v4 audiobookStoreEnabledWithCompletion:v3];
}

- (void)currentCloudSyncVersions:(id)a3
{
  v4 = a3;
  v6 = [(BDSService *)self secureManager];
  v5 = [v6 userDataManager];
  [v5 currentCloudSyncVersions:v4];
}

- (void)setUserDatum:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self secureManager];
  v8 = [v9 userDataManager];
  [v8 setUserDatum:v7 completion:v6];
}

- (void)setUserData:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self secureManager];
  v8 = [v9 userDataManager];
  [v8 setUserData:v7 completion:v6];
}

- (void)deleteUserDatumForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self secureManager];
  v8 = [v9 userDataManager];
  [v8 deleteUserDatumForKey:v7 completion:v6];
}

- (void)userDatumForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self secureManager];
  v8 = [v9 userDataManager];
  [v8 userDatumForKey:v7 completion:v6];
}

- (void)getUserDataChangesSince:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self secureManager];
  v8 = [v9 userDataManager];
  [v8 getUserDataChangesSince:v7 completion:v6];
}

- (void)resolvedUserDataValueForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self secureManager];
  v8 = [v9 userDataManager];
  [v8 resolvedUserDataValueForKey:v7 completion:v6];
}

- (void)userDataValueForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self secureManager];
  v8 = [v9 userDataManager];
  [v8 userDataValueForKey:v7 completion:v6];
}

- (void)setUserDataValue:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(BDSService *)self secureManager];
  v11 = [v12 userDataManager];
  [v11 setUserDataValue:v10 forKey:v9 completion:v8];
}

- (void)deleteEngagementDataForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self secureManager];
  v8 = [v9 engagementManager];
  [v8 deleteEngagementDataForKey:v7 completion:v6];
}

- (void)engagementDataForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self secureManager];
  v8 = [v9 engagementManager];
  [v8 engagementDataForKey:v7 completion:v6];
}

- (void)getEngagementDataChangesSince:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self secureManager];
  v8 = [v9 engagementManager];
  [v8 getEngagementDataChangesSince:v7 completion:v6];
}

- (void)setEngagementDatas:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self secureManager];
  v8 = [v9 engagementManager];
  [v8 setEngagementDatas:v7 completion:v6];
}

- (void)setEngagementData:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSService *)self secureManager];
  v8 = [v9 engagementManager];
  [v8 setEngagementData:v7 completion:v6];
}

- (BDSCloudSyncDiagnosticService)cloudSyncDiagnosticService
{
  cloudSyncDiagnosticService = self->_cloudSyncDiagnosticService;
  if (!cloudSyncDiagnosticService)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [(BDSService *)self assetManager];
    [v4 addObject:v5];

    v6 = [(BDSService *)self cloudCollectionsManager];
    [v4 addObject:v6];

    v7 = [BDSCloudSyncDiagnosticService alloc];
    v8 = +[BCCloudKitController sharedInstance];
    v9 = [(BDSCloudSyncDiagnosticService *)v7 initWithCloudKitController:v8 entityServiceProviders:v4];
    v10 = self->_cloudSyncDiagnosticService;
    self->_cloudSyncDiagnosticService = v9;

    cloudSyncDiagnosticService = self->_cloudSyncDiagnosticService;
  }

  return cloudSyncDiagnosticService;
}

- (void)clearSyncMetadata:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self cloudSyncDiagnosticService];
  v7 = [v5 clearSyncMetadata];

  v6 = objc_retainBlock(v4);
  if (v7)
  {
    if (v6)
    {
      v6[2](v6, v7);
    }
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)forceFetchRemoteChanges:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self cloudSyncDiagnosticService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000371E8;
  v7[3] = &unk_100240CF8;
  v8 = v4;
  v6 = v4;
  [v5 fetchRemoteChangesWithCompletionHandler:v7];
}

- (void)cloudSyncDiagnosticDetachWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self cloudSyncDiagnosticService];
  [v5 detachWithCompletionHandler:v4];
}

- (void)cloudSyncDiagnosticFindLocalIdDupesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self cloudSyncDiagnosticService];
  [v5 findLocalIdDupesWithCompletionHandler:v4];
}

- (void)cloudSyncDiagnosticInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self cloudSyncDiagnosticService];
  [v5 diagnosticInfoWithCompletionHandler:v4];
}

- (void)hideItemsWithStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BDSService *)self jaliscoDAAPService];

  if (v8)
  {
    v9 = [(BDSService *)self jaliscoDAAPService];
    [v9 hideItemsWithStoreIDs:v6 completion:v7];
  }

  else
  {
    v10 = sub_1000023E8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFF6C();
    }

    v9 = objc_retainBlock(v7);
    if (v9)
    {
      v9[2](v9, 0);
    }
  }
}

- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self jaliscoDAAPService];

  if (v5)
  {
    v10 = [(BDSService *)self jaliscoDAAPService];
    [v10 fetchAllHiddenItemStoreIDsWithCompletion:v4];
  }

  else
  {
    v6 = sub_1000023E8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFFA0();
    }

    v7 = objc_retainBlock(v4);
    if (v7)
    {
      v11 = NSLocalizedDescriptionKey;
      v12 = @"BDSService has no jalisco client";
      v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v9 = [NSError errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:v8];
      v7[2](v7, 0, v9);
    }
  }
}

- (void)resetPurchasedTokenForStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BDSService *)self jaliscoDAAPService];

  if (v8)
  {
    v9 = [(BDSService *)self jaliscoDAAPService];
    [v9 resetPurchasedTokenForStoreIDs:v6 completion:v7];
  }

  else
  {
    v10 = sub_1000023E8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFFD4();
    }

    v9 = objc_retainBlock(v7);
    if (v9)
    {
      v9[2](v9, 0);
    }
  }
}

- (void)deleteItemsWithStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSService *)self jaliscoDAAPService];
  [v8 deleteItemsWithStoreIDs:v7 completion:v6];
}

- (void)resetStaleJaliscoDatabaseWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self jaliscoDAAPService];

  if (v5)
  {
    v10 = [(BDSService *)self jaliscoDAAPService];
    [v10 resetStaleJaliscoDatabaseWithCompletion:v4];
  }

  else
  {
    v6 = sub_1000023E8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0008();
    }

    v7 = objc_retainBlock(v4);
    if (v7)
    {
      v11 = NSLocalizedDescriptionKey;
      v12 = @"BDSService has no jalisco client";
      v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v9 = [NSError errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:v8];
      v7[2](v7, v9);
    }
  }
}

- (void)monitorServiceNotificationsWithChangeToken:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSXPCConnection currentConnection];
  v9 = [(BDSService *)self clientConnectionService];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100038248;
  v11[3] = &unk_100240CF8;
  v12 = v6;
  v10 = v6;
  [v9 monitorServiceNotificationsWithConnection:v8 changeToken:v7 completion:v11];
}

- (void)getBookWidgetDataWithLimit:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(BDSService *)self widgetDataUpdater];
  v8 = [v7 currentWidgetDatas];

  v9 = [v8 count];
  if (v9 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 subarrayWithRange:{0, v10}];
  v12 = sub_1000023E8();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Returning widget data: %@", &v14, 0xCu);
  }

  v13 = objc_retainBlock(v6);
  if (v13)
  {
    v13[2](v13, v11, 0);
  }
}

- (void)getBookWidgetInfoWithLimit:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(BDSService *)self widgetInfoManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000384A4;
  v9[3] = &unk_100240D20;
  v10 = v6;
  v8 = v6;
  [v7 getInfosWithLimit:a3 completionHandler:v9];
}

- (void)readingGoalsChangeBooksFinishedGoalTo:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(BDSService *)self readingGoalsService];
  [v7 changeBooksFinishedGoalTo:a3 completionHandler:v6];
}

- (void)readingGoalsChangeDailyGoalTo:(double)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(BDSService *)self readingGoalsService];
  [v7 changeDailyGoalTo:v6 completionHandler:a3];
}

- (void)readingGoalsClearDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self readingGoalsService];
  [v5 clearDataWithCompletionHandler:v4];
}

- (void)readingGoalsClearLocalCachedDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self readingGoalsService];
  [v5 clearLocalCachedDataWithCompletionHandler:v4];
}

- (void)readingGoalsStateInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self readingGoalsService];
  [v5 stateInfoWithCompletionHandler:v4];
}

- (void)readingHistoryClearDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self readingHistoryCommandLineService];
  [v5 clearDataWithCompletionHandler:v4];
}

- (void)readingHistoryClearDefaultsCachedDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self readingHistoryService];
  [v5 clearDefaultsCachedDataWithCompletionHandler:v4];
}

- (void)readingHistoryClearDate:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSService *)self readingHistoryCommandLineService];
  [v8 clearDate:v7 completionHandler:v6];
}

- (void)readingHistoryClearTodayWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self readingHistoryCommandLineService];
  [v5 clearTodayWithCompletionHandler:v4];
}

- (void)readingHistoryReadingHistoryStateInfoWithRangeStart:(id)a3 rangeEnd:(id)a4 currentTime:(id)a5 withCompletion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(BDSService *)self readingHistoryCommandLineService];
  [v14 readingHistoryStateInfoWithRangeStart:v13 rangeEnd:v12 currentTime:v11 completionHandler:v10];
}

- (void)readingHistoryHandleSyncFileChangeWithSyncVersionInfo:(id)a3 updateInfo:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BDSService *)self readingHistoryService];
  [v11 handleSyncFileChangeWithSyncVersionInfo:v10 updateInfo:v9 completionHandler:v8];
}

- (void)readingHistoryIncrementWithDate:(id)a3 by:(int64_t)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(BDSService *)self readingHistoryCommandLineService];
  [v10 incrementWithDate:v9 by:a4 completionHandler:v8];
}

- (void)readingHistoryServiceStatusInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self readingHistoryCommandLineService];
  v7 = [v5 serviceStatusInfo];

  v6 = objc_retainBlock(v4);
  if (v6)
  {
    v6[2](v6, v7, 0);
  }
}

- (void)priceTrackingSetConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(BDSService *)self priceTracker];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100038C9C;
  v10[3] = &unk_100240308;
  objc_copyWeak(&v12, &location);
  v9 = v7;
  v11 = v9;
  [v8 setConfiguration:v6 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)priceTrackingCtlRefreshTrackedPricesIgnoringSchedule:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(BDSService *)self priceTracker];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100038DF8;
  v8[3] = &unk_1002402E0;
  v9 = v5;
  v7 = v5;
  [v6 bdsdctl_updateTrackedPricesIgnoringScheduleForAllItemsWithCompletionHandler:v8];
}

- (void)priceTrackingCtlGetStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self priceTracker];
  [v5 bdsctl_getStateWithCompletion:v4];
}

- (void)priceTrackingCtlAddTrackedItems:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  sub_1001BFCB8(self, v7, v6);
}

- (void)priceTrackingCtlOverrideReferencePrices:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSService *)self priceTracker];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003936C;
  v10[3] = &unk_1002402E0;
  v11 = v6;
  v9 = v6;
  [v8 bdsctl_updateReferencePrices:v7 completion:v10];
}

- (void)readingHistoryBackupWithName:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSService *)self readingHistoryCommandLineService];
  [v8 backupWithName:v7 completionHandler:v6];
}

- (void)readingHistoryListBackupWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self readingHistoryCommandLineService];
  [v5 listBackupWithCompletionHandler:v4];
}

- (void)readingHistoryRestoreWithName:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSService *)self readingHistoryCommandLineService];
  [v8 restoreWithName:v7 completionHandler:v6];
}

- (void)bookWidgetReadingHistoryStateInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self readingHistoryService];
  [v5 bookWidgetReadingHistoryStateInfoWithCompletionHandler:v4];
}

- (void)hasSaltChangedWithCompletion:(id)a3
{
  v3 = sub_100002660();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "hasSaltChangedWithCompletion should not be called", v4, 2u);
  }
}

- (id)_newWidgetMOC
{
  v3 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v3 setAutomaticallyMergesChangesFromParent:1];
  WeakRetained = objc_loadWeakRetained(&self->_assetManager);
  v5 = [WeakRetained assetDataSource];
  v6 = [v5 managedObjectContext];

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_assetManager);
    v8 = [v7 assetDataSource];
    v9 = [v8 managedObjectContext];
    [v3 setParentContext:v9];

    v10 = v3;
  }

  else
  {
    v11 = sub_10000DE28();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001C00A4();
    }

    v10 = 0;
  }

  return v10;
}

- (void)_setupWidgetDataUpdater:(id)a3
{
  v8 = a3;
  if (!self->_widgetCenterManager)
  {
    v4 = +[BDSWidgetCenterManager sharedInstance];
    widgetCenterManager = self->_widgetCenterManager;
    self->_widgetCenterManager = v4;
  }

  v6 = [[BDSBookWidgetDataUpdater alloc] initWithWidgetCenterManager:self->_widgetCenterManager managedObjectContext:v8];
  widgetDataUpdater = self->_widgetDataUpdater;
  self->_widgetDataUpdater = v6;

  [(BDSBookWidgetDataUpdater *)self->_widgetDataUpdater resume];
}

- (void)_setupWidget
{
  v3 = sub_10000DE28();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up Books widget...", &v21, 2u);
  }

  v4 = [(BDSService *)self _newWidgetMOC];
  if (v4)
  {
    [(BDSService *)self _setupWidgetDataUpdater:v4];
    v5 = objc_alloc_init(BDSUbiquityManager);
    ubiquityManager = self->_ubiquityManager;
    self->_ubiquityManager = v5;

    v7 = [BDSBookWidgetInfoManager alloc];
    WeakRetained = objc_loadWeakRetained(&self->_assetManager);
    v9 = [WeakRetained assetDetailManager];
    v10 = objc_loadWeakRetained(&self->_assetManager);
    v11 = [v10 readingNowDetailManager];
    v12 = [(BDSBookWidgetInfoManager *)v7 initWithMOC:v4 assetDetailManager:v9 readingNowDetailManager:v11 ubiquityManager:self->_ubiquityManager];
    widgetInfoManager = self->_widgetInfoManager;
    self->_widgetInfoManager = v12;

    v14 = self->_widgetInfoManager;
    v15 = BUProtocolCast();
    objc_opt_class();
    v16 = objc_loadWeakRetained(&self->_assetManager);
    v17 = [v16 readingNowDetailManager];
    v18 = BUDynamicCast();
    [v18 setDataMonitor:v15];

    v19 = sub_10000DE28();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(BDSService *)self widgetInfoManager];
      v21 = 138412290;
      v22 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Creating widgetInfomanager:  %@", &v21, 0xCu);
    }
  }
}

- (void)setBookWidgetInfo:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSService *)self widgetInfoManager];
  [v8 setBookWidgetInfo:v7 completion:v6];
}

- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BDSService *)self readingHistoryService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039B00;
  v7[3] = &unk_100240D90;
  v8 = v4;
  v6 = v4;
  [v5 mergeMovedReadingHistoryDataWithCompletionHandler:v7];
}

- (id)makeOSStateHandler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100039C10;
  v4[3] = &unk_100240DB8;
  v4[4] = self;
  v2 = [[BUOSStateHandler alloc] initWithTitle:@"BDSService" block:v4];

  return v2;
}

- (id)_stateForLog
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(BDSService *)self cloudSyncDiagnosticService];
  v5 = [v4 stateForLog];
  [v3 setObject:v5 forKeyedSubscript:@"cloudSyncDiagnostic"];

  return v3;
}

- (BCCloudAssetManager)assetManager
{
  WeakRetained = objc_loadWeakRetained(&self->_assetManager);

  return WeakRetained;
}

- (BCCloudCollectionsManager)cloudCollectionsManager
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudCollectionsManager);

  return WeakRetained;
}

@end