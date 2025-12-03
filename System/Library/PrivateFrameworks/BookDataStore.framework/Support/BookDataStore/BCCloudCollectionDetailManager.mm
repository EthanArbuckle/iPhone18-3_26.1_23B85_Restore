@interface BCCloudCollectionDetailManager
- (BCCloudCollectionDetailManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller;
- (BCCloudCollectionDetailManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller syncProvider:(id)provider;
- (BCCloudKitController)cloudKitController;
- (id)diagnosticEntityInfos:(BOOL)infos;
- (id)mutableCloudDataForRecordID:(id)d;
- (void)_removeCloudDataForIDs:(id)ds completion:(id)completion;
- (void)collectionDetailForCollectionID:(id)d completion:(id)completion;
- (void)collectionDetailsForCollectionIDs:(id)ds completion:(id)completion;
- (void)currentCollectionDetailCloudSyncVersions:(id)versions;
- (void)deleteCollectionDetailForCollectionID:(id)d completion:(id)completion;
- (void)deleteCollectionDetailForCollectionIDs:(id)ds completion:(id)completion;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)getCollectionDetailChangesSince:(id)since completion:(id)completion;
- (void)hasSaltChangedWithCompletion:(id)completion;
- (void)nextBatchOfMutableCloudDataToSaveToCKWithFetchLimit:(unint64_t)limit completion:(id)completion;
- (void)removeCollectionDetailForSaltedHashedRecordIDs:(id)ds completion:(id)completion;
- (void)removedCloudRecordsWithIDs:(id)ds completion:(id)completion;
- (void)setCollectionDetail:(id)detail completion:(id)completion;
- (void)setCollectionDetails:(id)details completion:(id)completion;
- (void)setEnableCloudSync:(BOOL)sync completion:(id)completion;
- (void)signalSyncToCKForSyncManager:(id)manager;
- (void)syncManager:(id)manager startSyncToCKWithCompletion:(id)completion;
- (void)syncProvider:(id)provider failedRecordIDs:(id)ds completion:(id)completion;
- (void)syncProvider:(id)provider resolveConflictsForRecords:(id)records completion:(id)completion;
- (void)syncProvider:(id)provider updateSyncGenerationFromCloudData:(id)data completion:(id)completion;
- (void)updateSyncGenerationFromCloudData:(id)data completion:(id)completion;
- (void)updatedCloudRecords:(id)records completion:(id)completion;
@end

@implementation BCCloudCollectionDetailManager

- (BCCloudCollectionDetailManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller
{
  controllerCopy = controller;
  sourceCopy = source;
  v8 = [[_TtC14bookdatastored21BDSSyncEnginePipeline alloc] initWithRecordType:@"collectionDetail" zoneName:@"CollectionZone" delegate:self];
  v9 = [(BCCloudCollectionDetailManager *)self initWithCloudDataSource:sourceCopy cloudKitController:controllerCopy syncProvider:v8];

  return v9;
}

- (BCCloudCollectionDetailManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller syncProvider:(id)provider
{
  sourceCopy = source;
  controllerCopy = controller;
  providerCopy = provider;
  v25.receiver = self;
  v25.super_class = BCCloudCollectionDetailManager;
  v12 = [(BCCloudCollectionDetailManager *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collectionDetailDataSource, source);
    objc_storeStrong(&v13->_syncManager, provider);
    objc_storeWeak(&v13->_cloudKitController, controllerCopy);
    v24 = [BCCloudDataManager alloc];
    entityName = [(BCCloudCollectionDetailManager *)v13 entityName];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    syncManager = [(BCCloudCollectionDetailManager *)v13 syncManager];
    [providerCopy privacyDelegate];
    v18 = providerCopy;
    v20 = v19 = sourceCopy;
    v21 = [(BCCloudDataManager *)v24 initWithCloudDataSource:v19 entityName:entityName notificationName:@"BCCloudCollectionDetailManagerChanged" immutableClass:v15 mutableClass:v16 syncManager:syncManager cloudKitController:controllerCopy privacyDelegate:v20];
    dataManager = v13->_dataManager;
    v13->_dataManager = v21;

    sourceCopy = v19;
    providerCopy = v18;
  }

  return v13;
}

- (void)updatedCloudRecords:(id)records completion:(id)completion
{
  recordsCopy = records;
  completionCopy = completion;
  dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007BED8;
  v11[3] = &unk_100241F88;
  v12 = recordsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = recordsCopy;
  [dataManager resolveConflictsForRecords:v10 completion:v11];
}

- (void)removedCloudRecordsWithIDs:(id)ds completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007C018;
  v7[3] = &unk_100240D90;
  completionCopy = completion;
  v6 = completionCopy;
  [(BCCloudCollectionDetailManager *)self _removeCloudDataForIDs:ds completion:v7];
}

- (id)mutableCloudDataForRecordID:(id)d
{
  recordName = [d recordName];
  v5 = [NSPredicate predicateWithFormat:@"saltedHashedID = %@", recordName];
  dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
  v7 = [dataManager mutableCloudDataWithPredicate:v5 sortDescriptors:0];

  return v7;
}

- (void)nextBatchOfMutableCloudDataToSaveToCKWithFetchLimit:(unint64_t)limit completion:(id)completion
{
  completionCopy = completion;
  if ([(BCCloudCollectionDetailManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
    [dataManager dirtyMutableCloudDataWithFetchLimit:limit completion:completionCopy];
  }

  else
  {
    v7 = objc_retainBlock(completionCopy);
    dataManager = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)syncManager:(id)manager startSyncToCKWithCompletion:(id)completion
{
  managerCopy = manager;
  completionCopy = completion;
  if ([(BCCloudCollectionDetailManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
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
  managerCopy = manager;
  if ([(BCCloudCollectionDetailManager *)self enableCloudSync])
  {
    cloudKitController = [(BCCloudCollectionDetailManager *)self cloudKitController];
    transactionManager = [cloudKitController transactionManager];
    entityName = [(BCCloudCollectionDetailManager *)self entityName];
    [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:managerCopy];
  }
}

- (void)_removeCloudDataForIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([(BCCloudCollectionDetailManager *)self enableCloudSync])
  {
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dsCopy count]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = dsCopy;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          recordName = [*(*(&v17 + 1) + 8 * v13) recordName];
          [v8 addObject:recordName];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [(BCCloudCollectionDetailManager *)self removeCollectionDetailForSaltedHashedRecordIDs:v8 completion:completionCopy];
  }

  else
  {
    v15 = objc_retainBlock(completionCopy);
    v16 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, 0, 0);
    }
  }
}

- (void)syncProvider:(id)provider updateSyncGenerationFromCloudData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if ([(BCCloudCollectionDetailManager *)self enableCloudSync])
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
          collectionID = [v15 collectionID];
          [v9 setObject:v15 forKey:collectionID];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [(BCCloudCollectionDetailManager *)self updateSyncGenerationFromCloudData:v9 completion:completionCopy];
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

- (void)syncProvider:(id)provider resolveConflictsForRecords:(id)records completion:(id)completion
{
  recordsCopy = records;
  completionCopy = completion;
  if ([(BCCloudCollectionDetailManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007C750;
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

- (void)syncProvider:(id)provider failedRecordIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([(BCCloudCollectionDetailManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007C8C8;
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
    dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
    diagnosticDirtyCloudDataInfos = [dataManager diagnosticDirtyCloudDataInfos];
  }

  v6 = [BDSCloudSyncDiagnosticEntityInfo alloc];
  entityName = [(BCCloudCollectionDetailManager *)self entityName];
  v8 = [(BDSCloudSyncDiagnosticEntityInfo *)v6 initWithName:entityName enabledSync:[(BCCloudCollectionDetailManager *)self enableCloudSync] dirtyCloudDataInfos:diagnosticDirtyCloudDataInfos];

  v11 = v8;
  v9 = [NSArray arrayWithObjects:&v11 count:1];

  return v9;
}

- (void)setEnableCloudSync:(BOOL)sync completion:(id)completion
{
  syncCopy = sync;
  completionCopy = completion;
  v7 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v7 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v9 = sub_10000DB80();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (syncCopy)
      {
        v10 = @"YES";
      }

      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "\\BCCloudCollectionDetailManager #enableCloudSync setEnableCloudSync %@\\"", &v15, 0xCu);
    }
  }

  if (self->_enableCloudSync != syncCopy)
  {
    self->_enableCloudSync = syncCopy;
    if (syncCopy)
    {
      if (completionCopy)
      {
        cloudKitController = [(BCCloudCollectionDetailManager *)self cloudKitController];
        transactionManager = [cloudKitController transactionManager];
        entityName = [(BCCloudCollectionDetailManager *)self entityName];
        syncManager = [(BCCloudCollectionDetailManager *)self syncManager];
        [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:syncManager completion:completionCopy];
      }

      else
      {
        cloudKitController = [(BCCloudCollectionDetailManager *)self syncManager];
        [cloudKitController signalSyncToCK];
      }
    }
  }
}

- (void)hasSaltChangedWithCompletion:(id)completion
{
  completionCopy = completion;
  dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
  [dataManager hasSaltChangedWithCompletion:completionCopy];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
  [dataManager dissociateCloudDataFromSyncWithCompletion:completionCopy];
}

- (void)currentCollectionDetailCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
  dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
  [dataManager currentCloudSyncVersions:versionsCopy];
}

- (void)setCollectionDetail:(id)detail completion:(id)completion
{
  completionCopy = completion;
  detailCopy = detail;
  dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
  collectionID = [detailCopy collectionID];
  v9 = [NSPredicate predicateWithFormat:@"collectionID = %@", collectionID];
  [dataManager setCloudData:detailCopy predicate:v9 completion:completionCopy];
}

- (void)setCollectionDetails:(id)details completion:(id)completion
{
  completionCopy = completion;
  detailsCopy = details;
  dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
  allKeys = [detailsCopy allKeys];
  v9 = [NSPredicate predicateWithFormat:@"collectionID IN %@", allKeys];
  [dataManager setCloudData:detailsCopy predicate:v9 propertyIDKey:@"collectionID" completion:completionCopy];
}

- (void)removeCollectionDetailForSaltedHashedRecordIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
    dsCopy = [NSPredicate predicateWithFormat:@"saltedHashedID IN %@", dsCopy];
    [dataManager removeCloudDataForPredicate:dsCopy completion:completionCopy];
  }

  else
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3F30(v10);
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
  dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
  allKeys = [dataCopy allKeys];
  v9 = [NSPredicate predicateWithFormat:@"collectionID IN %@", allKeys];
  [dataManager updateSyncGenerationFromCloudData:dataCopy predicate:v9 propertyIDKey:@"collectionID" completion:completionCopy];
}

- (void)deleteCollectionDetailForCollectionID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
  dCopy = [NSPredicate predicateWithFormat:@"collectionID = %@", dCopy];

  [dataManager deleteCloudDataForPredicate:dCopy completion:completionCopy];
}

- (void)deleteCollectionDetailForCollectionIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
  dsCopy = [NSPredicate predicateWithFormat:@"collectionID IN %@", dsCopy];

  [dataManager deleteCloudDataForPredicate:dsCopy completion:completionCopy];
}

- (void)collectionDetailForCollectionID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
  dCopy = [NSPredicate predicateWithFormat:@"collectionID = %@ AND (deletedFlag == NULL OR deletedFlag == NO)", dCopy];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007D2B4;
  v11[3] = &unk_100241798;
  v12 = completionCopy;
  v10 = completionCopy;
  [dataManager cloudDataWithPredicate:dCopy sortDescriptors:0 completion:v11];
}

- (void)collectionDetailsForCollectionIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
  dsCopy = [NSPredicate predicateWithFormat:@"collectionID IN %@ AND (deletedFlag == NULL OR deletedFlag == NO)", dsCopy];

  [dataManager cloudDatasWithPredicate:dsCopy completion:completionCopy];
}

- (void)getCollectionDetailChangesSince:(id)since completion:(id)completion
{
  completionCopy = completion;
  sinceCopy = since;
  dataManager = [(BCCloudCollectionDetailManager *)self dataManager];
  [dataManager getChangesSince:sinceCopy forEntityClass:objc_opt_class() completion:completionCopy];
}

- (BCCloudKitController)cloudKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);

  return WeakRetained;
}

@end