@interface BCCloudReadingNowDetailManager
- (BCCloudKitController)cloudKitController;
- (BCCloudReadingNowDetailManager)initWithCloudDataSource:(id)a3 cloudKitController:(id)a4;
- (id)diagnosticEntityInfos:(BOOL)a3;
- (void)currentReadingNowDetailCloudSyncVersions:(id)a3;
- (void)deleteReadingNowDetailForAssetID:(id)a3 completion:(id)a4;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3;
- (void)getReadingNowDetailChangesSince:(id)a3 completion:(id)a4;
- (void)getRecentBooksExcludingAssetIDs:(id)a3 completion:(id)a4;
- (void)hasSaltChangedWithCompletion:(id)a3;
- (void)needsReadingNowAssetTypePopulation:(id)a3;
- (void)readingNowDetailsForAssetIDs:(id)a3 completion:(id)a4;
- (void)removeReadingNowDetailForSaltedHashedRecordIDs:(id)a3 completion:(id)a4;
- (void)setDataMonitor:(id)a3;
- (void)setEnableCloudSync:(BOOL)a3;
- (void)setReadingNowDetails:(id)a3 completion:(id)a4;
- (void)signalSyncToCKForSyncManager:(id)a3;
- (void)syncManager:(id)a3 failedRecordIDs:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 removeCloudDataForIDs:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 resolveConflictsForRecords:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4;
- (void)syncManager:(id)a3 updateSyncGenerationFromCloudData:(id)a4 completion:(id)a5;
- (void)trackedRreadingNowDetailsInDescendingOrderMaximumResultCount:(unint64_t)a3 filter:(id)a4 completion:(id)a5;
- (void)updateSyncGenerationFromCloudData:(id)a3 completion:(id)a4;
@end

@implementation BCCloudReadingNowDetailManager

- (BCCloudReadingNowDetailManager)initWithCloudDataSource:(id)a3 cloudKitController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = BCCloudReadingNowDetailManager;
  v9 = [(BCCloudReadingNowDetailManager *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_readingNowDetailDataSource, a3);
    objc_storeWeak(&v10->_cloudKitController, v8);
    v11 = [[BCCloudDataSyncManager alloc] initWithCloudKitController:v8];
    syncManager = v10->_syncManager;
    v10->_syncManager = v11;

    [(BCCloudDataSyncManager *)v10->_syncManager setDelegate:v10];
    v13 = [BCCloudDataManager alloc];
    v14 = [(BCCloudReadingNowDetailManager *)v10 entityName];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = v10->_syncManager;
    WeakRetained = objc_loadWeakRetained(&v10->_cloudKitController);
    v19 = [(BCCloudDataManager *)v13 initWithCloudDataSource:v7 entityName:v14 notificationName:@"BCCloudReadingNowDetailManagerChanged" immutableClass:v15 mutableClass:v16 syncManager:v17 cloudKitController:WeakRetained];
    dataManager = v10->_dataManager;
    v10->_dataManager = v19;
  }

  return v10;
}

- (void)setDataMonitor:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudReadingNowDetailManager *)self dataManager];
  [v5 setMonitor:v4];
}

- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(BCCloudReadingNowDetailManager *)self enableCloudSync])
  {
    v7 = [(BCCloudReadingNowDetailManager *)self dataManager];
    [v7 startSyncToCKWithSyncManager:v9 completion:v6];
  }

  else
  {
    v8 = objc_retainBlock(v6);
    v7 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8);
    }
  }
}

- (void)signalSyncToCKForSyncManager:(id)a3
{
  if ([(BCCloudReadingNowDetailManager *)self enableCloudSync])
  {
    v7 = [(BCCloudReadingNowDetailManager *)self cloudKitController];
    v4 = [v7 transactionManager];
    v5 = [(BCCloudReadingNowDetailManager *)self entityName];
    v6 = [(BCCloudReadingNowDetailManager *)self syncManager];
    [v4 signalSyncToCKTransactionForEntityName:v5 syncManager:v6];
  }
}

- (void)syncManager:(id)a3 removeCloudDataForIDs:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(BCCloudReadingNowDetailManager *)self enableCloudSync])
  {
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v18 + 1) + 8 * v14) recordName];
          [v9 addObject:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [(BCCloudReadingNowDetailManager *)self removeReadingNowDetailForSaltedHashedRecordIDs:v9 completion:v8];
  }

  else
  {
    v16 = objc_retainBlock(v8);
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0, 0);
    }
  }
}

- (void)syncManager:(id)a3 updateSyncGenerationFromCloudData:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(BCCloudReadingNowDetailManager *)self enableCloudSync])
  {
    v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v7 count]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [v15 assetID];
          [v9 setObject:v15 forKey:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [(BCCloudReadingNowDetailManager *)self updateSyncGenerationFromCloudData:v9 completion:v8];
  }

  else
  {
    v17 = objc_retainBlock(v8);
    v18 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, 0, 0);
    }
  }
}

- (void)syncManager:(id)a3 resolveConflictsForRecords:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(BCCloudReadingNowDetailManager *)self enableCloudSync])
  {
    v9 = [(BCCloudReadingNowDetailManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100063E94;
    v12[3] = &unk_100241770;
    v13 = v8;
    [v9 resolveConflictsForRecords:v7 completion:v12];
  }

  else
  {
    v10 = objc_retainBlock(v8);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (void)syncManager:(id)a3 failedRecordIDs:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(BCCloudReadingNowDetailManager *)self enableCloudSync])
  {
    v9 = [(BCCloudReadingNowDetailManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100064008;
    v12[3] = &unk_100240D90;
    v13 = v8;
    [v9 failedRecordIDs:v7 completion:v12];
  }

  else
  {
    v10 = objc_retainBlock(v8);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (id)diagnosticEntityInfos:(BOOL)a3
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(BCCloudReadingNowDetailManager *)self dataManager];
    v4 = [v5 diagnosticDirtyCloudDataInfos];
  }

  v6 = [BDSCloudSyncDiagnosticEntityInfo alloc];
  v7 = [(BCCloudReadingNowDetailManager *)self entityName];
  v8 = [(BDSCloudSyncDiagnosticEntityInfo *)v6 initWithName:v7 enabledSync:[(BCCloudReadingNowDetailManager *)self enableCloudSync] dirtyCloudDataInfos:v4];

  v11 = v8;
  v9 = [NSArray arrayWithObjects:&v11 count:1];

  return v9;
}

- (void)setEnableCloudSync:(BOOL)a3
{
  v3 = a3;
  v5 = +[BULogUtilities shared];
  v6 = [v5 verboseLoggingEnabled];

  if (v6)
  {
    v7 = sub_10000DB80();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (v3)
      {
        v8 = @"YES";
      }

      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudReadingNowDetailManager #enableCloudSync setEnableCloudSync %@\\"", &v15, 0xCu);
    }
  }

  if (self->_enableCloudSync != v3)
  {
    self->_enableCloudSync = v3;
    if (v3)
    {
      v9 = [(BCCloudReadingNowDetailManager *)self cloudKitController];
      v10 = [v9 privateCloudDatabaseController];
      [v10 addObserver:self->_syncManager recordType:@"readingNowDetail"];

      v11 = [(BCCloudReadingNowDetailManager *)self cloudKitController];
      v12 = [v11 transactionManager];
      v13 = [(BCCloudReadingNowDetailManager *)self entityName];
      v14 = [(BCCloudReadingNowDetailManager *)self syncManager];
      [v12 signalSyncToCKTransactionForEntityName:v13 syncManager:v14];
    }

    else
    {
      v11 = +[BCCloudKitController sharedInstance];
      v12 = [v11 privateCloudDatabaseController];
      [v12 removeObserver:self->_syncManager recordType:@"readingNowDetail"];
    }
  }
}

- (void)hasSaltChangedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudReadingNowDetailManager *)self dataManager];
  [v5 hasSaltChangedWithCompletion:v4];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudReadingNowDetailManager *)self dataManager];
  [v5 dissociateCloudDataFromSyncWithCompletion:v4];
}

- (void)currentReadingNowDetailCloudSyncVersions:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudReadingNowDetailManager *)self dataManager];
  [v5 currentCloudSyncVersions:v4];
}

- (void)setReadingNowDetails:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100064768;
  v26 = sub_100064778;
  v27 = +[NSMutableDictionary dictionary];
  v8 = [(BCCloudReadingNowDetailManager *)self readingNowDetailDataSource];
  v9 = [v8 managedObjectContext];

  if (!v9)
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1001C2714(v10);
    }
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100064780;
  v19[3] = &unk_100240998;
  v11 = v6;
  v20 = v11;
  v21 = &v22;
  [v9 performBlockAndWait:v19];
  if ([v23[5] count])
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000649C4;
    v18[3] = &unk_100241A00;
    v18[4] = &v22;
    v12 = objc_retainBlock(v18);
    v28 = @"WidgetInfoRelationshipUpdater";
    v13 = objc_retainBlock(v12);
    v29 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(BCCloudReadingNowDetailManager *)self dataManager];
  v16 = [v11 allKeys];
  v17 = [NSPredicate predicateWithFormat:@"assetID IN %@", v16];
  [v15 setCloudData:v11 predicate:v17 propertyIDKey:@"assetID" mergers:v14 completion:v7];

  _Block_object_dispose(&v22, 8);
}

- (void)removeReadingNowDetailForSaltedHashedRecordIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(BCCloudReadingNowDetailManager *)self dataManager];
    v9 = [NSPredicate predicateWithFormat:@"saltedHashedID IN %@", v6];
    [v8 removeCloudDataForPredicate:v9 completion:v7];
  }

  else
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001C27D0(v10);
    }

    v8 = objc_retainBlock(v7);
    if (v8)
    {
      v11 = [NSError errorWithDomain:@"BDSErrorDomain" code:1003 userInfo:0];
      (v8)[2](v8, 0, v11);
    }
  }
}

- (void)updateSyncGenerationFromCloudData:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(BCCloudReadingNowDetailManager *)self dataManager];
  v8 = [v7 allKeys];
  v9 = [NSPredicate predicateWithFormat:@"assetID IN %@", v8];
  [v10 updateSyncGenerationFromCloudData:v7 predicate:v9 propertyIDKey:@"assetID" completion:v6];
}

- (void)deleteReadingNowDetailForAssetID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BCCloudReadingNowDetailManager *)self dataManager];
  v8 = [NSPredicate predicateWithFormat:@"assetID = %@", v7];

  [v9 deleteCloudDataForPredicate:v8 completion:v6];
}

- (void)readingNowDetailsForAssetIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BCCloudReadingNowDetailManager *)self dataManager];
  v8 = [NSPredicate predicateWithFormat:@"assetID IN %@ AND (deletedFlag == NULL OR deletedFlag == NO)", v7];

  [v9 cloudDatasWithPredicate:v8 completion:v6];
}

- (void)getReadingNowDetailChangesSince:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BCCloudReadingNowDetailManager *)self dataManager];
  [v8 getChangesSince:v7 forEntityClass:objc_opt_class() completion:v6];
}

- (void)trackedRreadingNowDetailsInDescendingOrderMaximumResultCount:(unint64_t)a3 filter:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(BCCloudReadingNowDetailManager *)self dataManager];
  v11 = [NSPredicate predicateWithFormat:@"isTrackedAsRecent == YES"];
  v12 = [NSSortDescriptor sortDescriptorWithKey:@"lastEngagedDate" ascending:0];
  v20 = v12;
  v13 = [NSArray arrayWithObjects:&v20 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100065040;
  v18[3] = &unk_100241A28;
  v19 = v8;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100065050;
  v16[3] = &unk_100241860;
  v17 = v9;
  v14 = v9;
  v15 = v8;
  [v10 cloudDatasWithPredicate:v11 sortDescriptors:v13 maximumResultCount:a3 filter:v18 completion:v16];
}

- (void)getRecentBooksExcludingAssetIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSPredicate predicateWithFormat:@"isTrackedAsRecent == YES"];
  if ([v6 count])
  {
    v9 = [NSPredicate predicateWithFormat:@"NOT (assetID IN %@)", v6];
    v21[0] = v9;
    v21[1] = v8;
    v10 = [NSArray arrayWithObjects:v21 count:2];
    v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];

    v8 = v11;
  }

  v12 = sub_100002660();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Widget] getRecentBooksExcludingAssetIDs:%@ predicate %@ ", buf, 0x16u);
  }

  v13 = [(BCCloudReadingNowDetailManager *)self dataManager];
  v14 = [NSSortDescriptor sortDescriptorWithKey:@"lastEngagedDate" ascending:0];
  v16 = v14;
  v15 = [NSArray arrayWithObjects:&v16 count:1];
  [v13 cloudDatasWithPredicate:v8 sortDescriptors:v15 maximumResultCount:64 filter:&stru_100241A68 completion:v7];
}

- (void)needsReadingNowAssetTypePopulation:(id)a3
{
  v4 = a3;
  v5 = [NSPredicate predicateWithFormat:@"(%K == NULL OR %K == %@)", @"cloudAssetType", @"cloudAssetType", &stru_10024C800];
  v6 = [(BCCloudReadingNowDetailManager *)self dataManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100065400;
  v9[3] = &unk_100241A90;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [v6 cloudDatasWithPredicate:v8 completion:v9];
}

- (BCCloudKitController)cloudKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);

  return WeakRetained;
}

@end