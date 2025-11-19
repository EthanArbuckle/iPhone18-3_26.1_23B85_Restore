@interface BCCloudCollectionDetailManager
- (BCCloudCollectionDetailManager)initWithCloudDataSource:(id)a3 cloudKitController:(id)a4;
- (BCCloudCollectionDetailManager)initWithCloudDataSource:(id)a3 cloudKitController:(id)a4 syncProvider:(id)a5;
- (BCCloudKitController)cloudKitController;
- (id)diagnosticEntityInfos:(BOOL)a3;
- (id)mutableCloudDataForRecordID:(id)a3;
- (void)_removeCloudDataForIDs:(id)a3 completion:(id)a4;
- (void)collectionDetailForCollectionID:(id)a3 completion:(id)a4;
- (void)collectionDetailsForCollectionIDs:(id)a3 completion:(id)a4;
- (void)currentCollectionDetailCloudSyncVersions:(id)a3;
- (void)deleteCollectionDetailForCollectionID:(id)a3 completion:(id)a4;
- (void)deleteCollectionDetailForCollectionIDs:(id)a3 completion:(id)a4;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3;
- (void)getCollectionDetailChangesSince:(id)a3 completion:(id)a4;
- (void)hasSaltChangedWithCompletion:(id)a3;
- (void)nextBatchOfMutableCloudDataToSaveToCKWithFetchLimit:(unint64_t)a3 completion:(id)a4;
- (void)removeCollectionDetailForSaltedHashedRecordIDs:(id)a3 completion:(id)a4;
- (void)removedCloudRecordsWithIDs:(id)a3 completion:(id)a4;
- (void)setCollectionDetail:(id)a3 completion:(id)a4;
- (void)setCollectionDetails:(id)a3 completion:(id)a4;
- (void)setEnableCloudSync:(BOOL)a3 completion:(id)a4;
- (void)signalSyncToCKForSyncManager:(id)a3;
- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4;
- (void)syncProvider:(id)a3 failedRecordIDs:(id)a4 completion:(id)a5;
- (void)syncProvider:(id)a3 resolveConflictsForRecords:(id)a4 completion:(id)a5;
- (void)syncProvider:(id)a3 updateSyncGenerationFromCloudData:(id)a4 completion:(id)a5;
- (void)updateSyncGenerationFromCloudData:(id)a3 completion:(id)a4;
- (void)updatedCloudRecords:(id)a3 completion:(id)a4;
@end

@implementation BCCloudCollectionDetailManager

- (BCCloudCollectionDetailManager)initWithCloudDataSource:(id)a3 cloudKitController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_TtC14bookdatastored21BDSSyncEnginePipeline alloc] initWithRecordType:@"collectionDetail" zoneName:@"CollectionZone" delegate:self];
  v9 = [(BCCloudCollectionDetailManager *)self initWithCloudDataSource:v7 cloudKitController:v6 syncProvider:v8];

  return v9;
}

- (BCCloudCollectionDetailManager)initWithCloudDataSource:(id)a3 cloudKitController:(id)a4 syncProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25.receiver = self;
  v25.super_class = BCCloudCollectionDetailManager;
  v12 = [(BCCloudCollectionDetailManager *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collectionDetailDataSource, a3);
    objc_storeStrong(&v13->_syncManager, a5);
    objc_storeWeak(&v13->_cloudKitController, v10);
    v24 = [BCCloudDataManager alloc];
    v14 = [(BCCloudCollectionDetailManager *)v13 entityName];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [(BCCloudCollectionDetailManager *)v13 syncManager];
    [v11 privacyDelegate];
    v18 = v11;
    v20 = v19 = v9;
    v21 = [(BCCloudDataManager *)v24 initWithCloudDataSource:v19 entityName:v14 notificationName:@"BCCloudCollectionDetailManagerChanged" immutableClass:v15 mutableClass:v16 syncManager:v17 cloudKitController:v10 privacyDelegate:v20];
    dataManager = v13->_dataManager;
    v13->_dataManager = v21;

    v9 = v19;
    v11 = v18;
  }

  return v13;
}

- (void)updatedCloudRecords:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudCollectionDetailManager *)self dataManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007BED8;
  v11[3] = &unk_100241F88;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 resolveConflictsForRecords:v10 completion:v11];
}

- (void)removedCloudRecordsWithIDs:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007C018;
  v7[3] = &unk_100240D90;
  v8 = a4;
  v6 = v8;
  [(BCCloudCollectionDetailManager *)self _removeCloudDataForIDs:a3 completion:v7];
}

- (id)mutableCloudDataForRecordID:(id)a3
{
  v4 = [a3 recordName];
  v5 = [NSPredicate predicateWithFormat:@"saltedHashedID = %@", v4];
  v6 = [(BCCloudCollectionDetailManager *)self dataManager];
  v7 = [v6 mutableCloudDataWithPredicate:v5 sortDescriptors:0];

  return v7;
}

- (void)nextBatchOfMutableCloudDataToSaveToCKWithFetchLimit:(unint64_t)a3 completion:(id)a4
{
  v8 = a4;
  if ([(BCCloudCollectionDetailManager *)self enableCloudSync])
  {
    v6 = [(BCCloudCollectionDetailManager *)self dataManager];
    [v6 dirtyMutableCloudDataWithFetchLimit:a3 completion:v8];
  }

  else
  {
    v7 = objc_retainBlock(v8);
    v6 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(BCCloudCollectionDetailManager *)self enableCloudSync])
  {
    v7 = [(BCCloudCollectionDetailManager *)self dataManager];
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
  v7 = a3;
  if ([(BCCloudCollectionDetailManager *)self enableCloudSync])
  {
    v4 = [(BCCloudCollectionDetailManager *)self cloudKitController];
    v5 = [v4 transactionManager];
    v6 = [(BCCloudCollectionDetailManager *)self entityName];
    [v5 signalSyncToCKTransactionForEntityName:v6 syncManager:v7];
  }
}

- (void)_removeCloudDataForIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BCCloudCollectionDetailManager *)self enableCloudSync])
  {
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v6;
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

          v14 = [*(*(&v17 + 1) + 8 * v13) recordName];
          [v8 addObject:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [(BCCloudCollectionDetailManager *)self removeCollectionDetailForSaltedHashedRecordIDs:v8 completion:v7];
  }

  else
  {
    v15 = objc_retainBlock(v7);
    v16 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, 0, 0);
    }
  }
}

- (void)syncProvider:(id)a3 updateSyncGenerationFromCloudData:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(BCCloudCollectionDetailManager *)self enableCloudSync])
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
          v16 = [v15 collectionID];
          [v9 setObject:v15 forKey:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [(BCCloudCollectionDetailManager *)self updateSyncGenerationFromCloudData:v9 completion:v8];
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

- (void)syncProvider:(id)a3 resolveConflictsForRecords:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(BCCloudCollectionDetailManager *)self enableCloudSync])
  {
    v9 = [(BCCloudCollectionDetailManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007C750;
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

- (void)syncProvider:(id)a3 failedRecordIDs:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(BCCloudCollectionDetailManager *)self enableCloudSync])
  {
    v9 = [(BCCloudCollectionDetailManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007C8C8;
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
    v5 = [(BCCloudCollectionDetailManager *)self dataManager];
    v4 = [v5 diagnosticDirtyCloudDataInfos];
  }

  v6 = [BDSCloudSyncDiagnosticEntityInfo alloc];
  v7 = [(BCCloudCollectionDetailManager *)self entityName];
  v8 = [(BDSCloudSyncDiagnosticEntityInfo *)v6 initWithName:v7 enabledSync:[(BCCloudCollectionDetailManager *)self enableCloudSync] dirtyCloudDataInfos:v4];

  v11 = v8;
  v9 = [NSArray arrayWithObjects:&v11 count:1];

  return v9;
}

- (void)setEnableCloudSync:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = +[BULogUtilities shared];
  v8 = [v7 verboseLoggingEnabled];

  if (v8)
  {
    v9 = sub_10000DB80();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (v4)
      {
        v10 = @"YES";
      }

      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "\\BCCloudCollectionDetailManager #enableCloudSync setEnableCloudSync %@\\"", &v15, 0xCu);
    }
  }

  if (self->_enableCloudSync != v4)
  {
    self->_enableCloudSync = v4;
    if (v4)
    {
      if (v6)
      {
        v11 = [(BCCloudCollectionDetailManager *)self cloudKitController];
        v12 = [v11 transactionManager];
        v13 = [(BCCloudCollectionDetailManager *)self entityName];
        v14 = [(BCCloudCollectionDetailManager *)self syncManager];
        [v12 signalSyncToCKTransactionForEntityName:v13 syncManager:v14 completion:v6];
      }

      else
      {
        v11 = [(BCCloudCollectionDetailManager *)self syncManager];
        [v11 signalSyncToCK];
      }
    }
  }
}

- (void)hasSaltChangedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudCollectionDetailManager *)self dataManager];
  [v5 hasSaltChangedWithCompletion:v4];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudCollectionDetailManager *)self dataManager];
  [v5 dissociateCloudDataFromSyncWithCompletion:v4];
}

- (void)currentCollectionDetailCloudSyncVersions:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudCollectionDetailManager *)self dataManager];
  [v5 currentCloudSyncVersions:v4];
}

- (void)setCollectionDetail:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(BCCloudCollectionDetailManager *)self dataManager];
  v8 = [v7 collectionID];
  v9 = [NSPredicate predicateWithFormat:@"collectionID = %@", v8];
  [v10 setCloudData:v7 predicate:v9 completion:v6];
}

- (void)setCollectionDetails:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(BCCloudCollectionDetailManager *)self dataManager];
  v8 = [v7 allKeys];
  v9 = [NSPredicate predicateWithFormat:@"collectionID IN %@", v8];
  [v10 setCloudData:v7 predicate:v9 propertyIDKey:@"collectionID" completion:v6];
}

- (void)removeCollectionDetailForSaltedHashedRecordIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(BCCloudCollectionDetailManager *)self dataManager];
    v9 = [NSPredicate predicateWithFormat:@"saltedHashedID IN %@", v6];
    [v8 removeCloudDataForPredicate:v9 completion:v7];
  }

  else
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3F30(v10);
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
  v10 = [(BCCloudCollectionDetailManager *)self dataManager];
  v8 = [v7 allKeys];
  v9 = [NSPredicate predicateWithFormat:@"collectionID IN %@", v8];
  [v10 updateSyncGenerationFromCloudData:v7 predicate:v9 propertyIDKey:@"collectionID" completion:v6];
}

- (void)deleteCollectionDetailForCollectionID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BCCloudCollectionDetailManager *)self dataManager];
  v8 = [NSPredicate predicateWithFormat:@"collectionID = %@", v7];

  [v9 deleteCloudDataForPredicate:v8 completion:v6];
}

- (void)deleteCollectionDetailForCollectionIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BCCloudCollectionDetailManager *)self dataManager];
  v8 = [NSPredicate predicateWithFormat:@"collectionID IN %@", v7];

  [v9 deleteCloudDataForPredicate:v8 completion:v6];
}

- (void)collectionDetailForCollectionID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BCCloudCollectionDetailManager *)self dataManager];
  v9 = [NSPredicate predicateWithFormat:@"collectionID = %@ AND (deletedFlag == NULL OR deletedFlag == NO)", v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007D2B4;
  v11[3] = &unk_100241798;
  v12 = v6;
  v10 = v6;
  [v8 cloudDataWithPredicate:v9 sortDescriptors:0 completion:v11];
}

- (void)collectionDetailsForCollectionIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BCCloudCollectionDetailManager *)self dataManager];
  v8 = [NSPredicate predicateWithFormat:@"collectionID IN %@ AND (deletedFlag == NULL OR deletedFlag == NO)", v7];

  [v9 cloudDatasWithPredicate:v8 completion:v6];
}

- (void)getCollectionDetailChangesSince:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BCCloudCollectionDetailManager *)self dataManager];
  [v8 getChangesSince:v7 forEntityClass:objc_opt_class() completion:v6];
}

- (BCCloudKitController)cloudKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);

  return WeakRetained;
}

@end