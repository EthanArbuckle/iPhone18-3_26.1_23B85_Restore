@interface BCCloudAssetReviewManager
- (BCCloudAssetReviewManager)initWithCloudDataSource:(id)a3 cloudKitController:(id)a4;
- (BCCloudKitController)cloudKitController;
- (void)assetReviewForAssetReviewID:(id)a3 completion:(id)a4;
- (void)assetReviewsForAssetReviewIDs:(id)a3 completion:(id)a4;
- (void)deleteAssetReviewForAssetReviewID:(id)a3 completion:(id)a4;
- (void)deleteAssetReviewForAssetReviewIDs:(id)a3 completion:(id)a4;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3;
- (void)fetchAssetReviewsForUserID:(id)a3 includingDeleted:(BOOL)a4 completion:(id)a5;
- (void)getAssetReviewChangesSince:(id)a3 completion:(id)a4;
- (void)hasSaltChangedWithCompletion:(id)a3;
- (void)removeAssetReviewsForSaltedHashedRecordIDs:(id)a3 completion:(id)a4;
- (void)setAssetReview:(id)a3 completion:(id)a4;
- (void)setAssetReviews:(id)a3 completion:(id)a4;
- (void)setEnableCloudSync:(BOOL)a3;
- (void)signalSyncToCKForSyncManager:(id)a3;
- (void)syncManager:(id)a3 failedRecordIDs:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 removeCloudDataForIDs:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 resolveConflictsForRecords:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4;
- (void)syncManager:(id)a3 updateSyncGenerationFromCloudData:(id)a4 completion:(id)a5;
- (void)updateSyncGenerationFromCloudData:(id)a3 completion:(id)a4;
@end

@implementation BCCloudAssetReviewManager

- (BCCloudAssetReviewManager)initWithCloudDataSource:(id)a3 cloudKitController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = BCCloudAssetReviewManager;
  v9 = [(BCCloudAssetReviewManager *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetReviewDataSource, a3);
    objc_storeWeak(&v10->_cloudKitController, v8);
    v11 = [[BCCloudDataSyncManager alloc] initWithCloudKitController:v8];
    syncManager = v10->_syncManager;
    v10->_syncManager = v11;

    [(BCCloudDataSyncManager *)v10->_syncManager setDelegate:v10];
    v13 = [BCCloudDataManager alloc];
    v14 = [(BCCloudAssetReviewManager *)v10 entityName];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = v10->_syncManager;
    WeakRetained = objc_loadWeakRetained(&v10->_cloudKitController);
    v19 = [(BCCloudDataManager *)v13 initWithCloudDataSource:v7 entityName:v14 notificationName:@"BCCloudAssetReviewManagerChanged" immutableClass:v15 mutableClass:v16 syncManager:v17 cloudKitController:WeakRetained];
    dataManager = v10->_dataManager;
    v10->_dataManager = v19;
  }

  return v10;
}

- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(BCCloudAssetReviewManager *)self enableCloudSync])
  {
    v7 = [(BCCloudAssetReviewManager *)self dataManager];
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
  if ([(BCCloudAssetReviewManager *)self enableCloudSync])
  {
    v7 = [(BCCloudAssetReviewManager *)self cloudKitController];
    v4 = [v7 transactionManager];
    v5 = [(BCCloudAssetReviewManager *)self entityName];
    v6 = [(BCCloudAssetReviewManager *)self syncManager];
    [v4 signalSyncToCKTransactionForEntityName:v5 syncManager:v6];
  }
}

- (void)syncManager:(id)a3 removeCloudDataForIDs:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(BCCloudAssetReviewManager *)self enableCloudSync])
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

    [(BCCloudAssetReviewManager *)self removeAssetReviewsForSaltedHashedRecordIDs:v9 completion:v8];
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
  if ([(BCCloudAssetReviewManager *)self enableCloudSync])
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
          v16 = [v15 assetReviewID];
          [v9 setObject:v15 forKey:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [(BCCloudAssetReviewManager *)self updateSyncGenerationFromCloudData:v9 completion:v8];
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
  if ([(BCCloudAssetReviewManager *)self enableCloudSync])
  {
    v9 = [(BCCloudAssetReviewManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000689EC;
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
  if ([(BCCloudAssetReviewManager *)self enableCloudSync])
  {
    v9 = [(BCCloudAssetReviewManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100068B60;
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
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudAssetReviewManager #enableCloudSync setEnableCloudSync %@\\"", &v15, 0xCu);
    }
  }

  if (self->_enableCloudSync != v3)
  {
    self->_enableCloudSync = v3;
    if (v3)
    {
      v9 = [(BCCloudAssetReviewManager *)self cloudKitController];
      v10 = [v9 privateCloudDatabaseController];
      [v10 addObserver:self->_syncManager recordType:@"assetReview"];

      v11 = [(BCCloudAssetReviewManager *)self cloudKitController];
      v12 = [v11 transactionManager];
      v13 = [(BCCloudAssetReviewManager *)self entityName];
      v14 = [(BCCloudAssetReviewManager *)self syncManager];
      [v12 signalSyncToCKTransactionForEntityName:v13 syncManager:v14];
    }

    else
    {
      v11 = +[BCCloudKitController sharedInstance];
      v12 = [v11 privateCloudDatabaseController];
      [v12 removeObserver:self->_syncManager recordType:@"assetReview"];
    }
  }
}

- (void)hasSaltChangedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudAssetReviewManager *)self dataManager];
  [v5 hasSaltChangedWithCompletion:v4];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudAssetReviewManager *)self dataManager];
  [v5 dissociateCloudDataFromSyncWithCompletion:v4];
}

- (void)setAssetReview:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(BCCloudAssetReviewManager *)self dataManager];
  v8 = [v7 assetReviewID];
  v9 = [NSPredicate predicateWithFormat:@"assetReviewID = %@", v8];
  [v10 setCloudData:v7 predicate:v9 completion:v6];
}

- (void)setAssetReviews:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(BCCloudAssetReviewManager *)self dataManager];
  v8 = [v7 allKeys];
  v9 = [NSPredicate predicateWithFormat:@"assetReviewID IN %@", v8];
  [v10 setCloudData:v7 predicate:v9 propertyIDKey:@"assetReviewID" completion:v6];
}

- (void)removeAssetReviewsForSaltedHashedRecordIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(BCCloudAssetReviewManager *)self dataManager];
    v9 = [NSPredicate predicateWithFormat:@"saltedHashedID IN %@", v6];
    [v8 removeCloudDataForPredicate:v9 completion:v7];
  }

  else
  {
    v8 = sub_100002660();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2BB4(v8);
    }
  }
}

- (void)updateSyncGenerationFromCloudData:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(BCCloudAssetReviewManager *)self dataManager];
  v8 = [v7 allKeys];
  v9 = [NSPredicate predicateWithFormat:@"assetReviewID IN %@", v8];
  [v10 updateSyncGenerationFromCloudData:v7 predicate:v9 propertyIDKey:@"assetReviewID" completion:v6];
}

- (void)deleteAssetReviewForAssetReviewID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BCCloudAssetReviewManager *)self dataManager];
  v8 = [NSPredicate predicateWithFormat:@"assetReviewID = %@", v7];

  [v9 deleteCloudDataForPredicate:v8 completion:v6];
}

- (void)deleteAssetReviewForAssetReviewIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BCCloudAssetReviewManager *)self dataManager];
  v8 = [NSPredicate predicateWithFormat:@"assetReviewID IN %@", v7];

  [v9 deleteCloudDataForPredicate:v8 completion:v6];
}

- (void)assetReviewForAssetReviewID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BCCloudAssetReviewManager *)self dataManager];
  v9 = [NSPredicate predicateWithFormat:@"assetReviewID = %@ AND (deletedFlag == NULL OR deletedFlag == NO)", v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000693BC;
  v11[3] = &unk_100241798;
  v12 = v6;
  v10 = v6;
  [v8 cloudDataWithPredicate:v9 sortDescriptors:0 completion:v11];
}

- (void)assetReviewsForAssetReviewIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BCCloudAssetReviewManager *)self dataManager];
  v8 = [NSPredicate predicateWithFormat:@"assetReviewID IN %@ AND (deletedFlag == NULL OR deletedFlag == NO)", v7];

  [v9 cloudDatasWithPredicate:v8 completion:v6];
}

- (void)fetchAssetReviewsForUserID:(id)a3 includingDeleted:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  if (v5)
  {
    v9 = @"userID == %@";
  }

  else
  {
    v9 = @"(deletedFlag == NULL OR deletedFlag == NO) AND userID == %@";
  }

  v11 = [NSPredicate predicateWithFormat:v9, a3];
  v10 = [(BCCloudAssetReviewManager *)self dataManager];
  [v10 cloudDatasWithPredicate:v11 completion:v8];
}

- (void)getAssetReviewChangesSince:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BCCloudAssetReviewManager *)self dataManager];
  [v8 getChangesSince:v7 forEntityClass:objc_opt_class() completion:v6];
}

- (BCCloudKitController)cloudKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);

  return WeakRetained;
}

@end