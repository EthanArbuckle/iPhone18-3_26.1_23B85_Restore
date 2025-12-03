@interface BCCloudStoreAssetManager
- (BCCloudKitController)cloudKitController;
- (BCCloudStoreAssetManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller;
- (void)addStoreItem:(id)item completion:(id)completion;
- (void)addStoreItems:(id)items completion:(id)completion;
- (void)deleteStoreItemWithStoreID:(id)d completion:(id)completion;
- (void)deleteStoreItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)getStoreItemChangesSince:(id)since completion:(id)completion;
- (void)hasSaltChangedWithCompletion:(id)completion;
- (void)removeStoreItemWithSaltedHashedRecordIDs:(id)ds completion:(id)completion;
- (void)setEnableCloudSync:(BOOL)sync;
- (void)signalSyncToCKForSyncManager:(id)manager;
- (void)storeItemForStoreID:(id)d completion:(id)completion;
- (void)syncManager:(id)manager failedRecordIDs:(id)ds completion:(id)completion;
- (void)syncManager:(id)manager removeCloudDataForIDs:(id)ds completion:(id)completion;
- (void)syncManager:(id)manager resolveConflictsForRecords:(id)records completion:(id)completion;
- (void)syncManager:(id)manager startSyncToCKWithCompletion:(id)completion;
- (void)syncManager:(id)manager updateSyncGenerationFromCloudData:(id)data completion:(id)completion;
- (void)updateSyncGenerationFromCloudData:(id)data completion:(id)completion;
@end

@implementation BCCloudStoreAssetManager

- (BCCloudStoreAssetManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller
{
  sourceCopy = source;
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = BCCloudStoreAssetManager;
  v9 = [(BCCloudStoreAssetManager *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storeAssetDataSource, source);
    objc_storeWeak(&v10->_cloudKitController, controllerCopy);
    v11 = [[BCCloudDataSyncManager alloc] initWithCloudKitController:controllerCopy];
    syncManager = v10->_syncManager;
    v10->_syncManager = v11;

    [(BCCloudDataSyncManager *)v10->_syncManager setDelegate:v10];
    v13 = [BCCloudDataManager alloc];
    entityName = [(BCCloudStoreAssetManager *)v10 entityName];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = v10->_syncManager;
    WeakRetained = objc_loadWeakRetained(&v10->_cloudKitController);
    v19 = [(BCCloudDataManager *)v13 initWithCloudDataSource:sourceCopy entityName:entityName notificationName:@"BCCloudStoreAssetManagerChanged" immutableClass:v15 mutableClass:v16 syncManager:v17 cloudKitController:WeakRetained];
    dataManager = v10->_dataManager;
    v10->_dataManager = v19;
  }

  return v10;
}

- (void)syncManager:(id)manager startSyncToCKWithCompletion:(id)completion
{
  managerCopy = manager;
  completionCopy = completion;
  if ([(BCCloudStoreAssetManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudStoreAssetManager *)self dataManager];
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
  if ([(BCCloudStoreAssetManager *)self enableCloudSync])
  {
    cloudKitController = [(BCCloudStoreAssetManager *)self cloudKitController];
    transactionManager = [cloudKitController transactionManager];
    entityName = [(BCCloudStoreAssetManager *)self entityName];
    syncManager = [(BCCloudStoreAssetManager *)self syncManager];
    [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:syncManager];
  }
}

- (void)syncManager:(id)manager removeCloudDataForIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([(BCCloudStoreAssetManager *)self enableCloudSync])
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

    [(BCCloudStoreAssetManager *)self removeStoreItemWithSaltedHashedRecordIDs:v9 completion:completionCopy];
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
  if ([(BCCloudStoreAssetManager *)self enableCloudSync])
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
          storeID = [v15 storeID];
          [v9 setObject:v15 forKey:storeID];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [(BCCloudStoreAssetManager *)self updateSyncGenerationFromCloudData:v9 completion:completionCopy];
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
  if ([(BCCloudStoreAssetManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudStoreAssetManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006E980;
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
  if ([(BCCloudStoreAssetManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudStoreAssetManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006EAF4;
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
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudStoreAssetManager #enableCloudSync setEnableCloudSync %@\\"", &v15, 0xCu);
    }
  }

  if (self->_enableCloudSync != syncCopy)
  {
    self->_enableCloudSync = syncCopy;
    if (syncCopy)
    {
      cloudKitController = [(BCCloudStoreAssetManager *)self cloudKitController];
      privateCloudDatabaseController = [cloudKitController privateCloudDatabaseController];
      [privateCloudDatabaseController addObserver:self->_syncManager recordType:@"storeItem"];

      cloudKitController2 = [(BCCloudStoreAssetManager *)self cloudKitController];
      transactionManager = [cloudKitController2 transactionManager];
      entityName = [(BCCloudStoreAssetManager *)self entityName];
      syncManager = [(BCCloudStoreAssetManager *)self syncManager];
      [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:syncManager];
    }

    else
    {
      cloudKitController2 = +[BCCloudKitController sharedInstance];
      transactionManager = [cloudKitController2 privateCloudDatabaseController];
      [transactionManager removeObserver:self->_syncManager recordType:@"storeItem"];
    }
  }
}

- (void)hasSaltChangedWithCompletion:(id)completion
{
  completionCopy = completion;
  dataManager = [(BCCloudStoreAssetManager *)self dataManager];
  [dataManager hasSaltChangedWithCompletion:completionCopy];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  dataManager = [(BCCloudStoreAssetManager *)self dataManager];
  [dataManager dissociateCloudDataFromSyncWithCompletion:completionCopy];
}

- (void)addStoreItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  dataManager = [(BCCloudStoreAssetManager *)self dataManager];
  storeID = [itemCopy storeID];
  v9 = [NSPredicate predicateWithFormat:@"storeID = %@", storeID];
  [dataManager setCloudData:itemCopy predicate:v9 completion:completionCopy];
}

- (void)addStoreItems:(id)items completion:(id)completion
{
  completionCopy = completion;
  itemsCopy = items;
  dataManager = [(BCCloudStoreAssetManager *)self dataManager];
  allKeys = [itemsCopy allKeys];
  v9 = [NSPredicate predicateWithFormat:@"storeID IN %@", allKeys];
  [dataManager setCloudData:itemsCopy predicate:v9 propertyIDKey:@"storeID" completion:completionCopy];
}

- (void)removeStoreItemWithSaltedHashedRecordIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    dataManager = [(BCCloudStoreAssetManager *)self dataManager];
    dsCopy = [NSPredicate predicateWithFormat:@"saltedHashedID IN %@", dsCopy];
    [dataManager removeCloudDataForPredicate:dsCopy completion:completionCopy];
  }

  else
  {
    dataManager = sub_100002660();
    if (os_log_type_enabled(dataManager, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3460(dataManager);
    }
  }
}

- (void)updateSyncGenerationFromCloudData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  dataManager = [(BCCloudStoreAssetManager *)self dataManager];
  allKeys = [dataCopy allKeys];
  v9 = [NSPredicate predicateWithFormat:@"storeID IN %@", allKeys];
  [dataManager updateSyncGenerationFromCloudData:dataCopy predicate:v9 propertyIDKey:@"storeID" completion:completionCopy];
}

- (void)deleteStoreItemWithStoreID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  dataManager = [(BCCloudStoreAssetManager *)self dataManager];
  dCopy = [NSPredicate predicateWithFormat:@"storeID = %@", dCopy];

  [dataManager deleteCloudDataForPredicate:dCopy completion:completionCopy];
}

- (void)deleteStoreItemsWithStoreIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  dataManager = [(BCCloudStoreAssetManager *)self dataManager];
  dsCopy = [NSPredicate predicateWithFormat:@"storeID IN %@", dsCopy];

  [dataManager deleteCloudDataForPredicate:dsCopy completion:completionCopy];
}

- (void)storeItemForStoreID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  dataManager = [(BCCloudStoreAssetManager *)self dataManager];
  dCopy = [NSPredicate predicateWithFormat:@"storeID = %@ AND (deletedFlag == NULL OR deletedFlag == NO)", dCopy];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006F350;
  v11[3] = &unk_100241798;
  v12 = completionCopy;
  v10 = completionCopy;
  [dataManager cloudDataWithPredicate:dCopy sortDescriptors:0 completion:v11];
}

- (void)getStoreItemChangesSince:(id)since completion:(id)completion
{
  completionCopy = completion;
  sinceCopy = since;
  dataManager = [(BCCloudStoreAssetManager *)self dataManager];
  [dataManager getChangesSince:sinceCopy forEntityClass:objc_opt_class() completion:completionCopy];
}

- (BCCloudKitController)cloudKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);

  return WeakRetained;
}

@end