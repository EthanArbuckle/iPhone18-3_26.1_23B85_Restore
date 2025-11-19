@interface BCCloudAssetDetailManager
- (BCCloudAssetDetailManager)initWithCloudDataSource:(id)a3 cloudKitController:(id)a4;
- (BCCloudDataPrivacyDelegate)privacyDelegate;
- (BCCloudKitController)cloudKitController;
- (id)diagnosticEntityInfos:(BOOL)a3;
- (void)assetDetailForAssetID:(id)a3 completion:(id)a4;
- (void)assetDetailsForAssetIDs:(id)a3 completion:(id)a4;
- (void)currentAssetDetailCloudSyncVersions:(id)a3;
- (void)deleteAssetDetailForAssetID:(id)a3 completion:(id)a4;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3;
- (void)fetchAssetDetailsForUnsyncedTastes:(id)a3;
- (void)fetchFinishedAssetCountByYearWithCompletion:(id)a3;
- (void)fetchFinishedDatesByAssetIDForYear:(int64_t)a3 completion:(id)a4;
- (void)getAssetDetailChangesSince:(id)a3 completion:(id)a4;
- (void)hasSaltChangedWithCompletion:(id)a3;
- (void)removeAssetDetailForSaltedHashedRecordIDs:(id)a3 completion:(id)a4;
- (void)resolvedAssetDetailForAssetID:(id)a3 completion:(id)a4;
- (void)setAssetDetail:(id)a3 completion:(id)a4;
- (void)setAssetDetails:(id)a3 completion:(id)a4;
- (void)setEnableCloudSync:(BOOL)a3;
- (void)signalSyncToCKForSyncManager:(id)a3;
- (void)syncManager:(id)a3 failedRecordIDs:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 removeCloudDataForIDs:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 resolveConflictsForRecords:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4;
- (void)syncManager:(id)a3 updateSyncGenerationFromCloudData:(id)a4 completion:(id)a5;
- (void)updateSyncGenerationFromCloudData:(id)a3 completion:(id)a4;
@end

@implementation BCCloudAssetDetailManager

- (BCCloudAssetDetailManager)initWithCloudDataSource:(id)a3 cloudKitController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = BCCloudAssetDetailManager;
  v9 = [(BCCloudAssetDetailManager *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetDetailDataSource, a3);
    objc_storeWeak(&v10->_cloudKitController, v8);
    v11 = [[BCCloudDataSyncManager alloc] initWithCloudKitController:v8];
    syncManager = v10->_syncManager;
    v10->_syncManager = v11;

    [(BCCloudDataSyncManager *)v10->_syncManager setDelegate:v10];
    v13 = [BCCloudDataManager alloc];
    v14 = [(BCCloudAssetDetailManager *)v10 entityName];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = v10->_syncManager;
    WeakRetained = objc_loadWeakRetained(&v10->_cloudKitController);
    v19 = [(BCCloudDataManager *)v13 initWithCloudDataSource:v7 entityName:v14 notificationName:@"BCCloudAssetDetailManagerChanged" immutableClass:v15 mutableClass:v16 syncManager:v17 cloudKitController:WeakRetained];
    dataManager = v10->_dataManager;
    v10->_dataManager = v19;

    v21 = [v8 privateCloudDatabaseController];
    objc_storeWeak(&v10->_privacyDelegate, v21);
  }

  return v10;
}

- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(BCCloudAssetDetailManager *)self enableCloudSync])
  {
    v7 = [(BCCloudAssetDetailManager *)self dataManager];
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
  if ([(BCCloudAssetDetailManager *)self enableCloudSync])
  {
    v7 = [(BCCloudAssetDetailManager *)self cloudKitController];
    v4 = [v7 transactionManager];
    v5 = [(BCCloudAssetDetailManager *)self entityName];
    v6 = [(BCCloudAssetDetailManager *)self syncManager];
    [v4 signalSyncToCKTransactionForEntityName:v5 syncManager:v6];
  }
}

- (void)syncManager:(id)a3 removeCloudDataForIDs:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(BCCloudAssetDetailManager *)self enableCloudSync])
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

    [(BCCloudAssetDetailManager *)self removeAssetDetailForSaltedHashedRecordIDs:v9 completion:v8];
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
  if ([(BCCloudAssetDetailManager *)self enableCloudSync])
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

    [(BCCloudAssetDetailManager *)self updateSyncGenerationFromCloudData:v9 completion:v8];
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
  if ([(BCCloudAssetDetailManager *)self enableCloudSync])
  {
    v9 = [(BCCloudAssetDetailManager *)self dataManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10005F3DC;
    v17[3] = &unk_100241770;
    v18 = v8;
    [v9 resolveConflictsForRecords:v7 completion:v17];

    v10 = v18;
  }

  else
  {
    v11 = +[BULogUtilities shared];
    v12 = [v11 verboseLoggingEnabled];

    if (v12)
    {
      v13 = sub_10000DB80();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(BCCloudAssetDetailManager *)self enableCloudSync];
        v15 = @"NO";
        if (v14)
        {
          v15 = @"YES";
        }

        *buf = 138412290;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "\\#zonefetch BCCloudAssetDetailManager resolveConflictsForRecords ignoring changes for records enableCloudSync:%@\\"", buf, 0xCu);
      }
    }

    v16 = objc_retainBlock(v8);
    v10 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0, 0);
    }
  }
}

- (void)syncManager:(id)a3 failedRecordIDs:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(BCCloudAssetDetailManager *)self enableCloudSync])
  {
    v9 = [(BCCloudAssetDetailManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005F608;
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
    v5 = [(BCCloudAssetDetailManager *)self dataManager];
    v4 = [v5 diagnosticDirtyCloudDataInfos];
  }

  v6 = [BDSCloudSyncDiagnosticEntityInfo alloc];
  v7 = [(BCCloudAssetDetailManager *)self entityName];
  v8 = [(BDSCloudSyncDiagnosticEntityInfo *)v6 initWithName:v7 enabledSync:[(BCCloudAssetDetailManager *)self enableCloudSync] dirtyCloudDataInfos:v4];

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
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudAssetDetailManager #enableCloudSync setEnableCloudSync %@\\"", &v15, 0xCu);
    }
  }

  if (self->_enableCloudSync != v3)
  {
    self->_enableCloudSync = v3;
    if (v3)
    {
      v9 = [(BCCloudAssetDetailManager *)self cloudKitController];
      v10 = [v9 privateCloudDatabaseController];
      [v10 addObserver:self->_syncManager recordType:@"assetDetail"];

      v11 = [(BCCloudAssetDetailManager *)self cloudKitController];
      v12 = [v11 transactionManager];
      v13 = [(BCCloudAssetDetailManager *)self entityName];
      v14 = [(BCCloudAssetDetailManager *)self syncManager];
      [v12 signalSyncToCKTransactionForEntityName:v13 syncManager:v14];
    }

    else
    {
      v11 = +[BCCloudKitController sharedInstance];
      v12 = [v11 privateCloudDatabaseController];
      [v12 removeObserver:self->_syncManager recordType:@"assetDetail"];
    }
  }
}

- (void)hasSaltChangedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudAssetDetailManager *)self dataManager];
  [v5 hasSaltChangedWithCompletion:v4];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudAssetDetailManager *)self dataManager];
  [v5 dissociateCloudDataFromSyncWithCompletion:v4];
}

- (void)currentAssetDetailCloudSyncVersions:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudAssetDetailManager *)self dataManager];
  [v5 currentCloudSyncVersions:v4];
}

- (void)setAssetDetail:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(BCCloudAssetDetailManager *)self dataManager];
  v8 = [v7 assetID];
  v9 = [NSPredicate predicateWithFormat:@"assetID = %@", v8];
  [v10 setCloudData:v7 predicate:v9 completion:v6];
}

- (void)setAssetDetails:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(BCCloudAssetDetailManager *)self dataManager];
  v8 = [v7 allKeys];
  v9 = [NSPredicate predicateWithFormat:@"assetID IN %@", v8];
  [v10 setCloudData:v7 predicate:v9 propertyIDKey:@"assetID" completion:v6];
}

- (void)removeAssetDetailForSaltedHashedRecordIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(BCCloudAssetDetailManager *)self dataManager];
    v9 = [NSPredicate predicateWithFormat:@"saltedHashedID IN %@", v6];
    [v8 removeCloudDataForPredicate:v9 completion:v7];
  }

  else
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001C20B8(v10);
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
  v10 = [(BCCloudAssetDetailManager *)self dataManager];
  v8 = [v7 allKeys];
  v9 = [NSPredicate predicateWithFormat:@"assetID IN %@", v8];
  [v10 updateSyncGenerationFromCloudData:v7 predicate:v9 propertyIDKey:@"assetID" completion:v6];
}

- (void)deleteAssetDetailForAssetID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BCCloudAssetDetailManager *)self dataManager];
  v8 = [NSPredicate predicateWithFormat:@"assetID = %@", v7];

  [v9 deleteCloudDataForPredicate:v8 completion:v6];
}

- (void)assetDetailForAssetID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002660();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching assetDetailForAssetID on assetID:%@", buf, 0xCu);
  }

  v9 = [(BCCloudAssetDetailManager *)self dataManager];
  v10 = [NSPredicate predicateWithFormat:@"assetID = %@ AND (deletedFlag == NULL OR deletedFlag == NO)", v6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100060010;
  v13[3] = &unk_100241838;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [v9 cloudDataWithPredicate:v10 sortDescriptors:0 completion:v13];
}

- (void)assetDetailsForAssetIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BCCloudAssetDetailManager *)self dataManager];
  v8 = [NSPredicate predicateWithFormat:@"assetID IN %@ AND (deletedFlag == NULL OR deletedFlag == NO)", v7];

  [v9 cloudDatasWithPredicate:v8 completion:v6];
}

- (void)resolvedAssetDetailForAssetID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[BCMutableAssetDetail alloc] initWithAssetID:v7];
  v9 = [(BCCloudAssetDetailManager *)self dataManager];
  v10 = [NSPredicate predicateWithFormat:@"assetID = %@", v7];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000602FC;
  v12[3] = &unk_100241798;
  v13 = v6;
  v11 = v6;
  [v9 resolvedCloudDataForCloudData:v8 predicate:v10 completion:v12];
}

- (void)getAssetDetailChangesSince:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BCCloudAssetDetailManager *)self dataManager];
  [v8 getChangesSince:v7 forEntityClass:objc_opt_class() completion:v6];
}

- (void)fetchAssetDetailsForUnsyncedTastes:(id)a3
{
  v4 = a3;
  v5 = [NSPredicate predicateWithFormat:@"tasteSyncedToStore != NULL AND tasteSyncedToStore == %@ AND (deletedFlag == NULL OR deletedFlag == NO)", &off_100250F30];
  v6 = [(BCCloudAssetDetailManager *)self dataManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006058C;
  v8[3] = &unk_100241860;
  v9 = v4;
  v7 = v4;
  [v6 cloudDatasWithPredicate:v5 completion:v8];
}

- (void)fetchFinishedDatesByAssetIDForYear:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(NSDateComponents);
  [v7 setYear:a3];
  [v7 setDay:1];
  [v7 setMonth:1];
  v8 = +[NSTimeZone systemTimeZone];
  [v7 setTimeZone:v8];

  v9 = +[NSCalendar currentCalendar];
  v10 = [v9 dateFromComponents:v7];

  [v7 setYear:a3 + 1];
  v11 = +[NSCalendar currentCalendar];
  v12 = [v11 dateFromComponents:v7];

  v13 = [NSPredicate predicateWithFormat:@"isFinished == YES AND (dateFinished >= %@ AND dateFinished < %@)", v10, v12];
  v14 = [(BCCloudAssetDetailManager *)self dataManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000608B4;
  v16[3] = &unk_100240D20;
  v17 = v6;
  v15 = v6;
  [v14 transformedCloudDatasWithPredicate:v13 transformer:&stru_1002418A0 limit:1000 completion:v16];
}

- (void)fetchFinishedAssetCountByYearWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [NSPredicate predicateWithFormat:@"isFinished == YES AND dateFinished != NULL"];
  v6 = +[NSCalendar currentCalendar];
  v7 = +[NSMutableDictionary dictionary];
  v8 = [(BCCloudAssetDetailManager *)self dataManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100060C68;
  v15[3] = &unk_1002418C8;
  v16 = v6;
  v17 = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100060D8C;
  v12[3] = &unk_1002418F0;
  v13 = v17;
  v14 = v4;
  v9 = v17;
  v10 = v4;
  v11 = v6;
  [v8 transformedCloudDatasWithPredicate:v5 transformer:v15 limit:0 completion:v12];
}

- (BCCloudKitController)cloudKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);

  return WeakRetained;
}

- (BCCloudDataPrivacyDelegate)privacyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_privacyDelegate);

  return WeakRetained;
}

@end