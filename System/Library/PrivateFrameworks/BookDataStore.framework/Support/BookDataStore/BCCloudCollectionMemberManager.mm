@interface BCCloudCollectionMemberManager
- (BCCloudCollectionMemberManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller;
- (BCCloudCollectionMemberManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller syncProvider:(id)provider;
- (BCCloudKitController)cloudKitController;
- (id)diagnosticEntityInfos:(BOOL)infos;
- (id)mutableCloudDataForRecordID:(id)d;
- (void)_removeCloudDataForIDs:(id)ds completion:(id)completion;
- (void)collectionMemberForCollectionMemberID:(id)d completion:(id)completion;
- (void)currentCollectionMemberCloudSyncVersions:(id)versions;
- (void)deleteCollectionMemberForCollectionMemberID:(id)d completion:(id)completion;
- (void)deleteCollectionMemberForCollectionMemberIDs:(id)ds completion:(id)completion;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)fetchCollectionMembersInCollectionID:(id)d completion:(id)completion;
- (void)fetchCollectionMembersInCollectionID:(id)d maximumResultCount:(unint64_t)count filter:(id)filter completion:(id)completion;
- (void)fetchMaxSortOrderInCollectionID:(id)d completion:(id)completion;
- (void)getCollectionMemberChangesSince:(id)since completion:(id)completion;
- (void)hasSaltChangedWithCompletion:(id)completion;
- (void)nextBatchOfMutableCloudDataToSaveToCKWithFetchLimit:(unint64_t)limit completion:(id)completion;
- (void)removeCollectionMemberForCollectionSaltedHashedRecordIDs:(id)ds completion:(id)completion;
- (void)removedCloudRecordsWithIDs:(id)ds completion:(id)completion;
- (void)setCollectionMember:(id)member completion:(id)completion;
- (void)setCollectionMembers:(id)members completion:(id)completion;
- (void)setEnableCloudSync:(BOOL)sync completion:(id)completion;
- (void)signalSyncToCKForSyncManager:(id)manager;
- (void)syncManager:(id)manager startSyncToCKWithCompletion:(id)completion;
- (void)syncProvider:(id)provider failedRecordIDs:(id)ds completion:(id)completion;
- (void)syncProvider:(id)provider resolveConflictsForRecords:(id)records completion:(id)completion;
- (void)syncProvider:(id)provider updateSyncGenerationFromCloudData:(id)data completion:(id)completion;
- (void)updateSyncGenerationFromCloudData:(id)data completion:(id)completion;
- (void)updatedCloudRecords:(id)records completion:(id)completion;
@end

@implementation BCCloudCollectionMemberManager

- (BCCloudCollectionMemberManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller
{
  controllerCopy = controller;
  sourceCopy = source;
  v8 = [[_TtC14bookdatastored21BDSSyncEnginePipeline alloc] initWithRecordType:@"collectionMember" zoneName:@"CollectionZone" delegate:self];
  v9 = [(BCCloudCollectionMemberManager *)self initWithCloudDataSource:sourceCopy cloudKitController:controllerCopy syncProvider:v8];

  return v9;
}

- (BCCloudCollectionMemberManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller syncProvider:(id)provider
{
  sourceCopy = source;
  controllerCopy = controller;
  providerCopy = provider;
  v25.receiver = self;
  v25.super_class = BCCloudCollectionMemberManager;
  v12 = [(BCCloudCollectionMemberManager *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collectionMemberDataSource, source);
    objc_storeWeak(&v13->_cloudKitController, controllerCopy);
    objc_storeStrong(&v13->_syncManager, provider);
    v24 = [BCCloudDataManager alloc];
    entityName = [(BCCloudCollectionMemberManager *)v13 entityName];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    syncManager = [(BCCloudCollectionMemberManager *)v13 syncManager];
    [providerCopy privacyDelegate];
    v18 = providerCopy;
    v20 = v19 = sourceCopy;
    v21 = [(BCCloudDataManager *)v24 initWithCloudDataSource:v19 entityName:entityName notificationName:@"BCCloudCollectionMemberManagerChanged" immutableClass:v15 mutableClass:v16 syncManager:syncManager cloudKitController:controllerCopy privacyDelegate:v20];
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
  dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007D8C4;
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
  v7[2] = sub_10007DA04;
  v7[3] = &unk_100240D90;
  completionCopy = completion;
  v6 = completionCopy;
  [(BCCloudCollectionMemberManager *)self _removeCloudDataForIDs:ds completion:v7];
}

- (id)mutableCloudDataForRecordID:(id)d
{
  recordName = [d recordName];
  v5 = [NSPredicate predicateWithFormat:@"saltedHashedID = %@", recordName];
  dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
  v7 = [dataManager mutableCloudDataWithPredicate:v5 sortDescriptors:0];

  return v7;
}

- (void)nextBatchOfMutableCloudDataToSaveToCKWithFetchLimit:(unint64_t)limit completion:(id)completion
{
  completionCopy = completion;
  if ([(BCCloudCollectionMemberManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
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
  if ([(BCCloudCollectionMemberManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
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
  if ([(BCCloudCollectionMemberManager *)self enableCloudSync])
  {
    cloudKitController = [(BCCloudCollectionMemberManager *)self cloudKitController];
    transactionManager = [cloudKitController transactionManager];
    entityName = [(BCCloudCollectionMemberManager *)self entityName];
    [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:managerCopy];
  }
}

- (void)_removeCloudDataForIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([(BCCloudCollectionMemberManager *)self enableCloudSync])
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

    [(BCCloudCollectionMemberManager *)self removeCollectionMemberForCollectionSaltedHashedRecordIDs:v8 completion:completionCopy];
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
  if ([(BCCloudCollectionMemberManager *)self enableCloudSync])
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
          collectionMemberID = [v15 collectionMemberID];
          [v9 setObject:v15 forKey:collectionMemberID];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [(BCCloudCollectionMemberManager *)self updateSyncGenerationFromCloudData:v9 completion:completionCopy];
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
  if ([(BCCloudCollectionMemberManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007E13C;
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
  if ([(BCCloudCollectionMemberManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007E2B4;
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
    dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
    diagnosticDirtyCloudDataInfos = [dataManager diagnosticDirtyCloudDataInfos];
  }

  v6 = [BDSCloudSyncDiagnosticEntityInfo alloc];
  entityName = [(BCCloudCollectionMemberManager *)self entityName];
  v8 = [(BDSCloudSyncDiagnosticEntityInfo *)v6 initWithName:entityName enabledSync:[(BCCloudCollectionMemberManager *)self enableCloudSync] dirtyCloudDataInfos:diagnosticDirtyCloudDataInfos];

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
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "\\BCCloudCollectionMemberManager #enableCloudSync setEnableCloudSync %@\\"", &v15, 0xCu);
    }
  }

  if (self->_enableCloudSync != syncCopy)
  {
    self->_enableCloudSync = syncCopy;
    if (syncCopy)
    {
      if (completionCopy)
      {
        cloudKitController = [(BCCloudCollectionMemberManager *)self cloudKitController];
        transactionManager = [cloudKitController transactionManager];
        entityName = [(BCCloudCollectionMemberManager *)self entityName];
        syncManager = [(BCCloudCollectionMemberManager *)self syncManager];
        [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:syncManager completion:completionCopy];
      }

      else
      {
        cloudKitController = [(BCCloudCollectionMemberManager *)self syncManager];
        [cloudKitController signalSyncToCK];
      }
    }
  }
}

- (void)hasSaltChangedWithCompletion:(id)completion
{
  completionCopy = completion;
  dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
  [dataManager hasSaltChangedWithCompletion:completionCopy];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
  [dataManager dissociateCloudDataFromSyncWithCompletion:completionCopy];
}

- (void)currentCollectionMemberCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
  dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
  [dataManager currentCloudSyncVersions:versionsCopy];
}

- (void)setCollectionMember:(id)member completion:(id)completion
{
  completionCopy = completion;
  memberCopy = member;
  dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
  collectionMemberID = [memberCopy collectionMemberID];
  v9 = [NSPredicate predicateWithFormat:@"collectionMemberID = %@", collectionMemberID];
  [dataManager setCloudData:memberCopy predicate:v9 completion:completionCopy];
}

- (void)setCollectionMembers:(id)members completion:(id)completion
{
  completionCopy = completion;
  membersCopy = members;
  dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
  allKeys = [membersCopy allKeys];
  v9 = [NSPredicate predicateWithFormat:@"collectionMemberID IN %@", allKeys];
  [dataManager setCloudData:membersCopy predicate:v9 propertyIDKey:@"collectionMemberID" completion:completionCopy];
}

- (void)removeCollectionMemberForCollectionSaltedHashedRecordIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
    dsCopy = [NSPredicate predicateWithFormat:@"saltedHashedID IN %@", dsCopy];
    [dataManager removeCloudDataForPredicate:dsCopy completion:completionCopy];
  }

  else
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001C4000(v10);
    }

    dataManager = objc_retainBlock(completionCopy);
    if (dataManager)
    {
      dataManager[2](dataManager, 0, 0);
    }
  }
}

- (void)updateSyncGenerationFromCloudData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
  allKeys = [dataCopy allKeys];
  v9 = [NSPredicate predicateWithFormat:@"collectionMemberID IN %@", allKeys];
  [dataManager updateSyncGenerationFromCloudData:dataCopy predicate:v9 propertyIDKey:@"collectionMemberID" completion:completionCopy];
}

- (void)deleteCollectionMemberForCollectionMemberID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
  dCopy = [NSPredicate predicateWithFormat:@"collectionMemberID = %@", dCopy];

  [dataManager deleteCloudDataForPredicate:dCopy completion:completionCopy];
}

- (void)deleteCollectionMemberForCollectionMemberIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
  dsCopy = [NSPredicate predicateWithFormat:@"collectionMemberID IN %@", dsCopy];

  [dataManager deleteCloudDataForPredicate:dsCopy completion:completionCopy];
}

- (void)collectionMemberForCollectionMemberID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
  dCopy = [NSPredicate predicateWithFormat:@"collectionMemberID = %@ AND (deletedFlag == NULL OR deletedFlag == NO)", dCopy];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007EC74;
  v11[3] = &unk_100241798;
  v12 = completionCopy;
  v10 = completionCopy;
  [dataManager cloudDataWithPredicate:dCopy sortDescriptors:0 completion:v11];
}

- (void)fetchCollectionMembersInCollectionID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v7 = [NSPredicate predicateWithFormat:@"collectionMemberID BEGINSWITH[cd] %@ AND (deletedFlag == NULL OR deletedFlag == NO)", d];
  dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007EE70;
  v10[3] = &unk_100241860;
  v11 = completionCopy;
  v9 = completionCopy;
  [dataManager cloudDatasWithPredicate:v7 completion:v10];
}

- (void)fetchMaxSortOrderInCollectionID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v7 = [NSPredicate predicateWithFormat:@"collectionMemberID BEGINSWITH[cd] %@ AND (deletedFlag == NULL OR deletedFlag == NO)", d];
  v8 = [NSSortDescriptor sortDescriptorWithKey:@"sortOrder" ascending:0];
  dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
  v14 = v8;
  v10 = [NSArray arrayWithObjects:&v14 count:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007F098;
  v12[3] = &unk_100241798;
  v13 = completionCopy;
  v11 = completionCopy;
  [dataManager cloudDataWithPredicate:v7 sortDescriptors:v10 completion:v12];
}

- (void)getCollectionMemberChangesSince:(id)since completion:(id)completion
{
  completionCopy = completion;
  sinceCopy = since;
  dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
  [dataManager getChangesSince:sinceCopy forEntityClass:objc_opt_class() completion:completionCopy];
}

- (void)fetchCollectionMembersInCollectionID:(id)d maximumResultCount:(unint64_t)count filter:(id)filter completion:(id)completion
{
  filterCopy = filter;
  completionCopy = completion;
  v12 = [NSPredicate predicateWithFormat:@"collectionMemberID BEGINSWITH[cd] %@ AND (deletedFlag == NULL OR deletedFlag == NO)", d];
  v13 = [NSSortDescriptor sortDescriptorWithKey:@"sortOrder" ascending:0];
  v22 = v13;
  v14 = [NSArray arrayWithObjects:&v22 count:1];

  dataManager = [(BCCloudCollectionMemberManager *)self dataManager];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10007F3B4;
  v20[3] = &unk_100241A28;
  v21 = filterCopy;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10007F3C4;
  v18[3] = &unk_100241860;
  v19 = completionCopy;
  v16 = completionCopy;
  v17 = filterCopy;
  [dataManager cloudDatasWithPredicate:v12 sortDescriptors:v14 maximumResultCount:count filter:v20 completion:v18];
}

- (BCCloudKitController)cloudKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);

  return WeakRetained;
}

@end