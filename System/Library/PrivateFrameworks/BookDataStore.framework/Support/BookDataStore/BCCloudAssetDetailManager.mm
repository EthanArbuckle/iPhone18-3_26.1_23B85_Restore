@interface BCCloudAssetDetailManager
- (BCCloudAssetDetailManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller;
- (BCCloudDataPrivacyDelegate)privacyDelegate;
- (BCCloudKitController)cloudKitController;
- (id)diagnosticEntityInfos:(BOOL)infos;
- (void)assetDetailForAssetID:(id)d completion:(id)completion;
- (void)assetDetailsForAssetIDs:(id)ds completion:(id)completion;
- (void)currentAssetDetailCloudSyncVersions:(id)versions;
- (void)deleteAssetDetailForAssetID:(id)d completion:(id)completion;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)fetchAssetDetailsForUnsyncedTastes:(id)tastes;
- (void)fetchFinishedAssetCountByYearWithCompletion:(id)completion;
- (void)fetchFinishedDatesByAssetIDForYear:(int64_t)year completion:(id)completion;
- (void)getAssetDetailChangesSince:(id)since completion:(id)completion;
- (void)hasSaltChangedWithCompletion:(id)completion;
- (void)removeAssetDetailForSaltedHashedRecordIDs:(id)ds completion:(id)completion;
- (void)resolvedAssetDetailForAssetID:(id)d completion:(id)completion;
- (void)setAssetDetail:(id)detail completion:(id)completion;
- (void)setAssetDetails:(id)details completion:(id)completion;
- (void)setEnableCloudSync:(BOOL)sync;
- (void)signalSyncToCKForSyncManager:(id)manager;
- (void)syncManager:(id)manager failedRecordIDs:(id)ds completion:(id)completion;
- (void)syncManager:(id)manager removeCloudDataForIDs:(id)ds completion:(id)completion;
- (void)syncManager:(id)manager resolveConflictsForRecords:(id)records completion:(id)completion;
- (void)syncManager:(id)manager startSyncToCKWithCompletion:(id)completion;
- (void)syncManager:(id)manager updateSyncGenerationFromCloudData:(id)data completion:(id)completion;
- (void)updateSyncGenerationFromCloudData:(id)data completion:(id)completion;
@end

@implementation BCCloudAssetDetailManager

- (BCCloudAssetDetailManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller
{
  sourceCopy = source;
  controllerCopy = controller;
  v23.receiver = self;
  v23.super_class = BCCloudAssetDetailManager;
  v9 = [(BCCloudAssetDetailManager *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetDetailDataSource, source);
    objc_storeWeak(&v10->_cloudKitController, controllerCopy);
    v11 = [[BCCloudDataSyncManager alloc] initWithCloudKitController:controllerCopy];
    syncManager = v10->_syncManager;
    v10->_syncManager = v11;

    [(BCCloudDataSyncManager *)v10->_syncManager setDelegate:v10];
    v13 = [BCCloudDataManager alloc];
    entityName = [(BCCloudAssetDetailManager *)v10 entityName];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = v10->_syncManager;
    WeakRetained = objc_loadWeakRetained(&v10->_cloudKitController);
    v19 = [(BCCloudDataManager *)v13 initWithCloudDataSource:sourceCopy entityName:entityName notificationName:@"BCCloudAssetDetailManagerChanged" immutableClass:v15 mutableClass:v16 syncManager:v17 cloudKitController:WeakRetained];
    dataManager = v10->_dataManager;
    v10->_dataManager = v19;

    privateCloudDatabaseController = [controllerCopy privateCloudDatabaseController];
    objc_storeWeak(&v10->_privacyDelegate, privateCloudDatabaseController);
  }

  return v10;
}

- (void)syncManager:(id)manager startSyncToCKWithCompletion:(id)completion
{
  managerCopy = manager;
  completionCopy = completion;
  if ([(BCCloudAssetDetailManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudAssetDetailManager *)self dataManager];
    [dataManager startSyncToCKWithSyncManager:managerCopy completion:completionCopy];
  }

  else
  {
    v8 = objc_retainBlock(completionCopy);
    dataManager = v8;
    if (v8)
    {
      (*(v8 + 2))(v8);
    }
  }
}

- (void)signalSyncToCKForSyncManager:(id)manager
{
  if ([(BCCloudAssetDetailManager *)self enableCloudSync])
  {
    cloudKitController = [(BCCloudAssetDetailManager *)self cloudKitController];
    transactionManager = [cloudKitController transactionManager];
    entityName = [(BCCloudAssetDetailManager *)self entityName];
    syncManager = [(BCCloudAssetDetailManager *)self syncManager];
    [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:syncManager];
  }
}

- (void)syncManager:(id)manager removeCloudDataForIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([(BCCloudAssetDetailManager *)self enableCloudSync])
  {
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dsCopy count]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = dsCopy;
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

          recordName = [*(*(&v18 + 1) + 8 * v14) recordName];
          [v9 addObject:recordName];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [(BCCloudAssetDetailManager *)self removeAssetDetailForSaltedHashedRecordIDs:v9 completion:completionCopy];
  }

  else
  {
    v16 = objc_retainBlock(completionCopy);
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0, 0);
    }
  }
}

- (void)syncManager:(id)manager updateSyncGenerationFromCloudData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if ([(BCCloudAssetDetailManager *)self enableCloudSync])
  {
    v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [dataCopy count]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = dataCopy;
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
          assetID = [v15 assetID];
          [v9 setObject:v15 forKey:assetID];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [(BCCloudAssetDetailManager *)self updateSyncGenerationFromCloudData:v9 completion:completionCopy];
  }

  else
  {
    v17 = objc_retainBlock(completionCopy);
    v18 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, 0, 0);
    }
  }
}

- (void)syncManager:(id)manager resolveConflictsForRecords:(id)records completion:(id)completion
{
  recordsCopy = records;
  completionCopy = completion;
  if ([(BCCloudAssetDetailManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudAssetDetailManager *)self dataManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10005F3DC;
    v17[3] = &unk_100241770;
    v18 = completionCopy;
    [dataManager resolveConflictsForRecords:recordsCopy completion:v17];

    v10 = v18;
  }

  else
  {
    v11 = +[BULogUtilities shared];
    verboseLoggingEnabled = [v11 verboseLoggingEnabled];

    if (verboseLoggingEnabled)
    {
      v13 = sub_10000DB80();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        enableCloudSync = [(BCCloudAssetDetailManager *)self enableCloudSync];
        v15 = @"NO";
        if (enableCloudSync)
        {
          v15 = @"YES";
        }

        *buf = 138412290;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "\\#zonefetch BCCloudAssetDetailManager resolveConflictsForRecords ignoring changes for records enableCloudSync:%@\\"", buf, 0xCu);
      }
    }

    v16 = objc_retainBlock(completionCopy);
    v10 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0, 0);
    }
  }
}

- (void)syncManager:(id)manager failedRecordIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([(BCCloudAssetDetailManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudAssetDetailManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005F608;
    v12[3] = &unk_100240D90;
    v13 = completionCopy;
    [dataManager failedRecordIDs:dsCopy completion:v12];
  }

  else
  {
    v10 = objc_retainBlock(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (id)diagnosticEntityInfos:(BOOL)infos
{
  if (infos)
  {
    diagnosticDirtyCloudDataInfos = 0;
  }

  else
  {
    dataManager = [(BCCloudAssetDetailManager *)self dataManager];
    diagnosticDirtyCloudDataInfos = [dataManager diagnosticDirtyCloudDataInfos];
  }

  v6 = [BDSCloudSyncDiagnosticEntityInfo alloc];
  entityName = [(BCCloudAssetDetailManager *)self entityName];
  v8 = [(BDSCloudSyncDiagnosticEntityInfo *)v6 initWithName:entityName enabledSync:[(BCCloudAssetDetailManager *)self enableCloudSync] dirtyCloudDataInfos:diagnosticDirtyCloudDataInfos];

  v11 = v8;
  v9 = [NSArray arrayWithObjects:&v11 count:1];

  return v9;
}

- (void)setEnableCloudSync:(BOOL)sync
{
  syncCopy = sync;
  v5 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v5 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v7 = sub_10000DB80();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (syncCopy)
      {
        v8 = @"YES";
      }

      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudAssetDetailManager #enableCloudSync setEnableCloudSync %@\\"", &v15, 0xCu);
    }
  }

  if (self->_enableCloudSync != syncCopy)
  {
    self->_enableCloudSync = syncCopy;
    if (syncCopy)
    {
      cloudKitController = [(BCCloudAssetDetailManager *)self cloudKitController];
      privateCloudDatabaseController = [cloudKitController privateCloudDatabaseController];
      [privateCloudDatabaseController addObserver:self->_syncManager recordType:@"assetDetail"];

      cloudKitController2 = [(BCCloudAssetDetailManager *)self cloudKitController];
      transactionManager = [cloudKitController2 transactionManager];
      entityName = [(BCCloudAssetDetailManager *)self entityName];
      syncManager = [(BCCloudAssetDetailManager *)self syncManager];
      [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:syncManager];
    }

    else
    {
      cloudKitController2 = +[BCCloudKitController sharedInstance];
      transactionManager = [cloudKitController2 privateCloudDatabaseController];
      [transactionManager removeObserver:self->_syncManager recordType:@"assetDetail"];
    }
  }
}

- (void)hasSaltChangedWithCompletion:(id)completion
{
  completionCopy = completion;
  dataManager = [(BCCloudAssetDetailManager *)self dataManager];
  [dataManager hasSaltChangedWithCompletion:completionCopy];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  dataManager = [(BCCloudAssetDetailManager *)self dataManager];
  [dataManager dissociateCloudDataFromSyncWithCompletion:completionCopy];
}

- (void)currentAssetDetailCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
  dataManager = [(BCCloudAssetDetailManager *)self dataManager];
  [dataManager currentCloudSyncVersions:versionsCopy];
}

- (void)setAssetDetail:(id)detail completion:(id)completion
{
  completionCopy = completion;
  detailCopy = detail;
  dataManager = [(BCCloudAssetDetailManager *)self dataManager];
  assetID = [detailCopy assetID];
  v9 = [NSPredicate predicateWithFormat:@"assetID = %@", assetID];
  [dataManager setCloudData:detailCopy predicate:v9 completion:completionCopy];
}

- (void)setAssetDetails:(id)details completion:(id)completion
{
  completionCopy = completion;
  detailsCopy = details;
  dataManager = [(BCCloudAssetDetailManager *)self dataManager];
  allKeys = [detailsCopy allKeys];
  v9 = [NSPredicate predicateWithFormat:@"assetID IN %@", allKeys];
  [dataManager setCloudData:detailsCopy predicate:v9 propertyIDKey:@"assetID" completion:completionCopy];
}

- (void)removeAssetDetailForSaltedHashedRecordIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    dataManager = [(BCCloudAssetDetailManager *)self dataManager];
    dsCopy = [NSPredicate predicateWithFormat:@"saltedHashedID IN %@", dsCopy];
    [dataManager removeCloudDataForPredicate:dsCopy completion:completionCopy];
  }

  else
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001C20B8(v10);
    }

    dataManager = objc_retainBlock(completionCopy);
    if (dataManager)
    {
      v11 = [NSError errorWithDomain:@"BDSErrorDomain" code:1003 userInfo:0];
      (dataManager)[2](dataManager, 0, v11);
    }
  }
}

- (void)updateSyncGenerationFromCloudData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  dataManager = [(BCCloudAssetDetailManager *)self dataManager];
  allKeys = [dataCopy allKeys];
  v9 = [NSPredicate predicateWithFormat:@"assetID IN %@", allKeys];
  [dataManager updateSyncGenerationFromCloudData:dataCopy predicate:v9 propertyIDKey:@"assetID" completion:completionCopy];
}

- (void)deleteAssetDetailForAssetID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  dataManager = [(BCCloudAssetDetailManager *)self dataManager];
  dCopy = [NSPredicate predicateWithFormat:@"assetID = %@", dCopy];

  [dataManager deleteCloudDataForPredicate:dCopy completion:completionCopy];
}

- (void)assetDetailForAssetID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = sub_100002660();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching assetDetailForAssetID on assetID:%@", buf, 0xCu);
  }

  dataManager = [(BCCloudAssetDetailManager *)self dataManager];
  dCopy = [NSPredicate predicateWithFormat:@"assetID = %@ AND (deletedFlag == NULL OR deletedFlag == NO)", dCopy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100060010;
  v13[3] = &unk_100241838;
  v14 = dCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = dCopy;
  [dataManager cloudDataWithPredicate:dCopy sortDescriptors:0 completion:v13];
}

- (void)assetDetailsForAssetIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  dataManager = [(BCCloudAssetDetailManager *)self dataManager];
  dsCopy = [NSPredicate predicateWithFormat:@"assetID IN %@ AND (deletedFlag == NULL OR deletedFlag == NO)", dsCopy];

  [dataManager cloudDatasWithPredicate:dsCopy completion:completionCopy];
}

- (void)resolvedAssetDetailForAssetID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = [[BCMutableAssetDetail alloc] initWithAssetID:dCopy];
  dataManager = [(BCCloudAssetDetailManager *)self dataManager];
  dCopy = [NSPredicate predicateWithFormat:@"assetID = %@", dCopy];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000602FC;
  v12[3] = &unk_100241798;
  v13 = completionCopy;
  v11 = completionCopy;
  [dataManager resolvedCloudDataForCloudData:v8 predicate:dCopy completion:v12];
}

- (void)getAssetDetailChangesSince:(id)since completion:(id)completion
{
  completionCopy = completion;
  sinceCopy = since;
  dataManager = [(BCCloudAssetDetailManager *)self dataManager];
  [dataManager getChangesSince:sinceCopy forEntityClass:objc_opt_class() completion:completionCopy];
}

- (void)fetchAssetDetailsForUnsyncedTastes:(id)tastes
{
  tastesCopy = tastes;
  v5 = [NSPredicate predicateWithFormat:@"tasteSyncedToStore != NULL AND tasteSyncedToStore == %@ AND (deletedFlag == NULL OR deletedFlag == NO)", &off_100250F30];
  dataManager = [(BCCloudAssetDetailManager *)self dataManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006058C;
  v8[3] = &unk_100241860;
  v9 = tastesCopy;
  v7 = tastesCopy;
  [dataManager cloudDatasWithPredicate:v5 completion:v8];
}

- (void)fetchFinishedDatesByAssetIDForYear:(int64_t)year completion:(id)completion
{
  completionCopy = completion;
  v7 = objc_alloc_init(NSDateComponents);
  [v7 setYear:year];
  [v7 setDay:1];
  [v7 setMonth:1];
  v8 = +[NSTimeZone systemTimeZone];
  [v7 setTimeZone:v8];

  v9 = +[NSCalendar currentCalendar];
  v10 = [v9 dateFromComponents:v7];

  [v7 setYear:year + 1];
  v11 = +[NSCalendar currentCalendar];
  v12 = [v11 dateFromComponents:v7];

  v13 = [NSPredicate predicateWithFormat:@"isFinished == YES AND (dateFinished >= %@ AND dateFinished < %@)", v10, v12];
  dataManager = [(BCCloudAssetDetailManager *)self dataManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000608B4;
  v16[3] = &unk_100240D20;
  v17 = completionCopy;
  v15 = completionCopy;
  [dataManager transformedCloudDatasWithPredicate:v13 transformer:&stru_1002418A0 limit:1000 completion:v16];
}

- (void)fetchFinishedAssetCountByYearWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [NSPredicate predicateWithFormat:@"isFinished == YES AND dateFinished != NULL"];
  v6 = +[NSCalendar currentCalendar];
  v7 = +[NSMutableDictionary dictionary];
  dataManager = [(BCCloudAssetDetailManager *)self dataManager];
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
  v14 = completionCopy;
  v9 = v17;
  v10 = completionCopy;
  v11 = v6;
  [dataManager transformedCloudDatasWithPredicate:v5 transformer:v15 limit:0 completion:v12];
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