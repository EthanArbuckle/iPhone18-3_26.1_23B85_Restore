@interface BCCloudReadingNowDetailManager
- (BCCloudKitController)cloudKitController;
- (BCCloudReadingNowDetailManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller;
- (id)diagnosticEntityInfos:(BOOL)infos;
- (void)currentReadingNowDetailCloudSyncVersions:(id)versions;
- (void)deleteReadingNowDetailForAssetID:(id)d completion:(id)completion;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)getReadingNowDetailChangesSince:(id)since completion:(id)completion;
- (void)getRecentBooksExcludingAssetIDs:(id)ds completion:(id)completion;
- (void)hasSaltChangedWithCompletion:(id)completion;
- (void)needsReadingNowAssetTypePopulation:(id)population;
- (void)readingNowDetailsForAssetIDs:(id)ds completion:(id)completion;
- (void)removeReadingNowDetailForSaltedHashedRecordIDs:(id)ds completion:(id)completion;
- (void)setDataMonitor:(id)monitor;
- (void)setEnableCloudSync:(BOOL)sync;
- (void)setReadingNowDetails:(id)details completion:(id)completion;
- (void)signalSyncToCKForSyncManager:(id)manager;
- (void)syncManager:(id)manager failedRecordIDs:(id)ds completion:(id)completion;
- (void)syncManager:(id)manager removeCloudDataForIDs:(id)ds completion:(id)completion;
- (void)syncManager:(id)manager resolveConflictsForRecords:(id)records completion:(id)completion;
- (void)syncManager:(id)manager startSyncToCKWithCompletion:(id)completion;
- (void)syncManager:(id)manager updateSyncGenerationFromCloudData:(id)data completion:(id)completion;
- (void)trackedRreadingNowDetailsInDescendingOrderMaximumResultCount:(unint64_t)count filter:(id)filter completion:(id)completion;
- (void)updateSyncGenerationFromCloudData:(id)data completion:(id)completion;
@end

@implementation BCCloudReadingNowDetailManager

- (BCCloudReadingNowDetailManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller
{
  sourceCopy = source;
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = BCCloudReadingNowDetailManager;
  v9 = [(BCCloudReadingNowDetailManager *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_readingNowDetailDataSource, source);
    objc_storeWeak(&v10->_cloudKitController, controllerCopy);
    v11 = [[BCCloudDataSyncManager alloc] initWithCloudKitController:controllerCopy];
    syncManager = v10->_syncManager;
    v10->_syncManager = v11;

    [(BCCloudDataSyncManager *)v10->_syncManager setDelegate:v10];
    v13 = [BCCloudDataManager alloc];
    entityName = [(BCCloudReadingNowDetailManager *)v10 entityName];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = v10->_syncManager;
    WeakRetained = objc_loadWeakRetained(&v10->_cloudKitController);
    v19 = [(BCCloudDataManager *)v13 initWithCloudDataSource:sourceCopy entityName:entityName notificationName:@"BCCloudReadingNowDetailManagerChanged" immutableClass:v15 mutableClass:v16 syncManager:v17 cloudKitController:WeakRetained];
    dataManager = v10->_dataManager;
    v10->_dataManager = v19;
  }

  return v10;
}

- (void)setDataMonitor:(id)monitor
{
  monitorCopy = monitor;
  dataManager = [(BCCloudReadingNowDetailManager *)self dataManager];
  [dataManager setMonitor:monitorCopy];
}

- (void)syncManager:(id)manager startSyncToCKWithCompletion:(id)completion
{
  managerCopy = manager;
  completionCopy = completion;
  if ([(BCCloudReadingNowDetailManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudReadingNowDetailManager *)self dataManager];
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
  if ([(BCCloudReadingNowDetailManager *)self enableCloudSync])
  {
    cloudKitController = [(BCCloudReadingNowDetailManager *)self cloudKitController];
    transactionManager = [cloudKitController transactionManager];
    entityName = [(BCCloudReadingNowDetailManager *)self entityName];
    syncManager = [(BCCloudReadingNowDetailManager *)self syncManager];
    [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:syncManager];
  }
}

- (void)syncManager:(id)manager removeCloudDataForIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([(BCCloudReadingNowDetailManager *)self enableCloudSync])
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

    [(BCCloudReadingNowDetailManager *)self removeReadingNowDetailForSaltedHashedRecordIDs:v9 completion:completionCopy];
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
  if ([(BCCloudReadingNowDetailManager *)self enableCloudSync])
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

    [(BCCloudReadingNowDetailManager *)self updateSyncGenerationFromCloudData:v9 completion:completionCopy];
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
  if ([(BCCloudReadingNowDetailManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudReadingNowDetailManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100063E94;
    v12[3] = &unk_100241770;
    v13 = completionCopy;
    [dataManager resolveConflictsForRecords:recordsCopy completion:v12];
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

- (void)syncManager:(id)manager failedRecordIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([(BCCloudReadingNowDetailManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudReadingNowDetailManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100064008;
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
    dataManager = [(BCCloudReadingNowDetailManager *)self dataManager];
    diagnosticDirtyCloudDataInfos = [dataManager diagnosticDirtyCloudDataInfos];
  }

  v6 = [BDSCloudSyncDiagnosticEntityInfo alloc];
  entityName = [(BCCloudReadingNowDetailManager *)self entityName];
  v8 = [(BDSCloudSyncDiagnosticEntityInfo *)v6 initWithName:entityName enabledSync:[(BCCloudReadingNowDetailManager *)self enableCloudSync] dirtyCloudDataInfos:diagnosticDirtyCloudDataInfos];

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
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudReadingNowDetailManager #enableCloudSync setEnableCloudSync %@\\"", &v15, 0xCu);
    }
  }

  if (self->_enableCloudSync != syncCopy)
  {
    self->_enableCloudSync = syncCopy;
    if (syncCopy)
    {
      cloudKitController = [(BCCloudReadingNowDetailManager *)self cloudKitController];
      privateCloudDatabaseController = [cloudKitController privateCloudDatabaseController];
      [privateCloudDatabaseController addObserver:self->_syncManager recordType:@"readingNowDetail"];

      cloudKitController2 = [(BCCloudReadingNowDetailManager *)self cloudKitController];
      transactionManager = [cloudKitController2 transactionManager];
      entityName = [(BCCloudReadingNowDetailManager *)self entityName];
      syncManager = [(BCCloudReadingNowDetailManager *)self syncManager];
      [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:syncManager];
    }

    else
    {
      cloudKitController2 = +[BCCloudKitController sharedInstance];
      transactionManager = [cloudKitController2 privateCloudDatabaseController];
      [transactionManager removeObserver:self->_syncManager recordType:@"readingNowDetail"];
    }
  }
}

- (void)hasSaltChangedWithCompletion:(id)completion
{
  completionCopy = completion;
  dataManager = [(BCCloudReadingNowDetailManager *)self dataManager];
  [dataManager hasSaltChangedWithCompletion:completionCopy];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  dataManager = [(BCCloudReadingNowDetailManager *)self dataManager];
  [dataManager dissociateCloudDataFromSyncWithCompletion:completionCopy];
}

- (void)currentReadingNowDetailCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
  dataManager = [(BCCloudReadingNowDetailManager *)self dataManager];
  [dataManager currentCloudSyncVersions:versionsCopy];
}

- (void)setReadingNowDetails:(id)details completion:(id)completion
{
  detailsCopy = details;
  completionCopy = completion;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100064768;
  v26 = sub_100064778;
  v27 = +[NSMutableDictionary dictionary];
  readingNowDetailDataSource = [(BCCloudReadingNowDetailManager *)self readingNowDetailDataSource];
  managedObjectContext = [readingNowDetailDataSource managedObjectContext];

  if (!managedObjectContext)
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
  v11 = detailsCopy;
  v20 = v11;
  v21 = &v22;
  [managedObjectContext performBlockAndWait:v19];
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

  dataManager = [(BCCloudReadingNowDetailManager *)self dataManager];
  allKeys = [v11 allKeys];
  v17 = [NSPredicate predicateWithFormat:@"assetID IN %@", allKeys];
  [dataManager setCloudData:v11 predicate:v17 propertyIDKey:@"assetID" mergers:v14 completion:completionCopy];

  _Block_object_dispose(&v22, 8);
}

- (void)removeReadingNowDetailForSaltedHashedRecordIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    dataManager = [(BCCloudReadingNowDetailManager *)self dataManager];
    dsCopy = [NSPredicate predicateWithFormat:@"saltedHashedID IN %@", dsCopy];
    [dataManager removeCloudDataForPredicate:dsCopy completion:completionCopy];
  }

  else
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001C27D0(v10);
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
  dataManager = [(BCCloudReadingNowDetailManager *)self dataManager];
  allKeys = [dataCopy allKeys];
  v9 = [NSPredicate predicateWithFormat:@"assetID IN %@", allKeys];
  [dataManager updateSyncGenerationFromCloudData:dataCopy predicate:v9 propertyIDKey:@"assetID" completion:completionCopy];
}

- (void)deleteReadingNowDetailForAssetID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  dataManager = [(BCCloudReadingNowDetailManager *)self dataManager];
  dCopy = [NSPredicate predicateWithFormat:@"assetID = %@", dCopy];

  [dataManager deleteCloudDataForPredicate:dCopy completion:completionCopy];
}

- (void)readingNowDetailsForAssetIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  dataManager = [(BCCloudReadingNowDetailManager *)self dataManager];
  dsCopy = [NSPredicate predicateWithFormat:@"assetID IN %@ AND (deletedFlag == NULL OR deletedFlag == NO)", dsCopy];

  [dataManager cloudDatasWithPredicate:dsCopy completion:completionCopy];
}

- (void)getReadingNowDetailChangesSince:(id)since completion:(id)completion
{
  completionCopy = completion;
  sinceCopy = since;
  dataManager = [(BCCloudReadingNowDetailManager *)self dataManager];
  [dataManager getChangesSince:sinceCopy forEntityClass:objc_opt_class() completion:completionCopy];
}

- (void)trackedRreadingNowDetailsInDescendingOrderMaximumResultCount:(unint64_t)count filter:(id)filter completion:(id)completion
{
  filterCopy = filter;
  completionCopy = completion;
  dataManager = [(BCCloudReadingNowDetailManager *)self dataManager];
  v11 = [NSPredicate predicateWithFormat:@"isTrackedAsRecent == YES"];
  v12 = [NSSortDescriptor sortDescriptorWithKey:@"lastEngagedDate" ascending:0];
  v20 = v12;
  v13 = [NSArray arrayWithObjects:&v20 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100065040;
  v18[3] = &unk_100241A28;
  v19 = filterCopy;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100065050;
  v16[3] = &unk_100241860;
  v17 = completionCopy;
  v14 = completionCopy;
  v15 = filterCopy;
  [dataManager cloudDatasWithPredicate:v11 sortDescriptors:v13 maximumResultCount:count filter:v18 completion:v16];
}

- (void)getRecentBooksExcludingAssetIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v8 = [NSPredicate predicateWithFormat:@"isTrackedAsRecent == YES"];
  if ([dsCopy count])
  {
    dsCopy = [NSPredicate predicateWithFormat:@"NOT (assetID IN %@)", dsCopy];
    v21[0] = dsCopy;
    v21[1] = v8;
    v10 = [NSArray arrayWithObjects:v21 count:2];
    v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];

    v8 = v11;
  }

  v12 = sub_100002660();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = dsCopy;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Widget] getRecentBooksExcludingAssetIDs:%@ predicate %@ ", buf, 0x16u);
  }

  dataManager = [(BCCloudReadingNowDetailManager *)self dataManager];
  v14 = [NSSortDescriptor sortDescriptorWithKey:@"lastEngagedDate" ascending:0];
  v16 = v14;
  v15 = [NSArray arrayWithObjects:&v16 count:1];
  [dataManager cloudDatasWithPredicate:v8 sortDescriptors:v15 maximumResultCount:64 filter:&stru_100241A68 completion:completionCopy];
}

- (void)needsReadingNowAssetTypePopulation:(id)population
{
  populationCopy = population;
  v5 = [NSPredicate predicateWithFormat:@"(%K == NULL OR %K == %@)", @"cloudAssetType", @"cloudAssetType", &stru_10024C800];
  dataManager = [(BCCloudReadingNowDetailManager *)self dataManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100065400;
  v9[3] = &unk_100241A90;
  v10 = v5;
  v11 = populationCopy;
  v7 = populationCopy;
  v8 = v5;
  [dataManager cloudDatasWithPredicate:v8 completion:v9];
}

- (BCCloudKitController)cloudKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);

  return WeakRetained;
}

@end