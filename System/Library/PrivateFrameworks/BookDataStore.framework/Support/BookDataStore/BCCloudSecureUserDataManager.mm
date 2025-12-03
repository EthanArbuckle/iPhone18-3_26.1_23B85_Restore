@interface BCCloudSecureUserDataManager
+ (void)deleteCloudDataWithCompletion:(id)completion;
- (BCCloudSecureUserDataManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller;
- (void)currentCloudSyncVersions:(id)versions;
- (void)deleteUserDatumForKey:(id)key completion:(id)completion;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)getUserDataChangesSince:(id)since completion:(id)completion;
- (void)hasSaltChangedWithCompletion:(id)completion;
- (void)removeUserDataForSaltedHashedRecordIDs:(id)ds completion:(id)completion;
- (void)resolvedUserDataValueForKey:(id)key completion:(id)completion;
- (void)setEnableCloudSync:(BOOL)sync;
- (void)setUserData:(id)data completion:(id)completion;
- (void)setUserDataValue:(id)value forKey:(id)key completion:(id)completion;
- (void)setUserDatum:(id)datum completion:(id)completion;
- (void)signalSyncToCKForSyncManager:(id)manager;
- (void)syncManager:(id)manager failedRecordIDs:(id)ds completion:(id)completion;
- (void)syncManager:(id)manager removeCloudDataForIDs:(id)ds completion:(id)completion;
- (void)syncManager:(id)manager resolveConflictsForRecords:(id)records completion:(id)completion;
- (void)syncManager:(id)manager startSyncToCKWithCompletion:(id)completion;
- (void)syncManager:(id)manager updateSyncGenerationFromCloudData:(id)data completion:(id)completion;
- (void)updateSyncGenerationFromCloudData:(id)data completion:(id)completion;
- (void)userDataValueForKey:(id)key completion:(id)completion;
- (void)userDatumForKey:(id)key completion:(id)completion;
- (void)userDatumIncludingDeleted:(BOOL)deleted forKey:(id)key completion:(id)completion;
@end

@implementation BCCloudSecureUserDataManager

- (BCCloudSecureUserDataManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller
{
  sourceCopy = source;
  controllerCopy = controller;
  v21.receiver = self;
  v21.super_class = BCCloudSecureUserDataManager;
  v9 = [(BCCloudSecureUserDataManager *)&v21 init];
  if (v9)
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Initializing BCCloudAssetManager - Service mode", buf, 2u);
    }

    objc_storeStrong(&v9->_secureDataSource, source);
    v11 = [[BCCloudDataSyncManager alloc] initWithCloudKitController:controllerCopy];
    syncManager = v9->_syncManager;
    v9->_syncManager = v11;

    [(BCCloudDataSyncManager *)v9->_syncManager setDelegate:v9];
    v13 = [BCCloudDataManager alloc];
    secureDataSource = [(BCCloudSecureUserDataManager *)v9 secureDataSource];
    entityName = [(BCCloudSecureUserDataManager *)v9 entityName];
    v16 = objc_opt_class();
    v17 = [(BCCloudDataManager *)v13 initWithCloudDataSource:secureDataSource entityName:entityName notificationName:@"BCCloudSecureUserDataManagerChanged" immutableClass:v16 mutableClass:objc_opt_class() syncManager:v9->_syncManager cloudKitController:controllerCopy];
    dataManager = v9->_dataManager;
    v9->_dataManager = v17;
  }

  return v9;
}

- (void)hasSaltChangedWithCompletion:(id)completion
{
  completionCopy = completion;
  dataManager = [(BCCloudSecureUserDataManager *)self dataManager];
  [dataManager hasSaltChangedWithCompletion:completionCopy];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  dataManager = [(BCCloudSecureUserDataManager *)self dataManager];
  [dataManager dissociateCloudDataFromSyncWithCompletion:completionCopy];
}

+ (void)deleteCloudDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v4 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v6 = sub_10000DB80();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudSecureUserDataManager deleteCloudDataWithCompletion:\\"", v7, 2u);
    }
  }

  [BCCloudDataSource deleteCloudDataWithCompletion:completionCopy];
}

- (void)syncManager:(id)manager startSyncToCKWithCompletion:(id)completion
{
  managerCopy = manager;
  completionCopy = completion;
  if ([(BCCloudSecureUserDataManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudSecureUserDataManager *)self dataManager];
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
  if ([(BCCloudSecureUserDataManager *)self enableCloudSync])
  {
    v7 = +[BCCloudKitController secureSharedInstance];
    transactionManager = [v7 transactionManager];
    entityName = [(BCCloudSecureUserDataManager *)self entityName];
    syncManager = [(BCCloudSecureUserDataManager *)self syncManager];
    [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:syncManager];
  }
}

- (void)syncManager:(id)manager removeCloudDataForIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([(BCCloudSecureUserDataManager *)self enableCloudSync])
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

    [(BCCloudSecureUserDataManager *)self removeUserDataForSaltedHashedRecordIDs:v9 completion:completionCopy];
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
  if ([(BCCloudSecureUserDataManager *)self enableCloudSync])
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
          v16 = [v15 key];
          [v9 setObject:v15 forKey:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [(BCCloudSecureUserDataManager *)self updateSyncGenerationFromCloudData:v9 completion:completionCopy];
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
  if ([(BCCloudSecureUserDataManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudSecureUserDataManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005D9D8;
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
  if ([(BCCloudSecureUserDataManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudSecureUserDataManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005DB4C;
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
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudSecureUserDataManager #enableCloudSync setEnableCloudSync %@\\"", &v15, 0xCu);
    }
  }

  if (self->_enableCloudSync != syncCopy)
  {
    self->_enableCloudSync = syncCopy;
    v9 = +[BCCloudKitController secureSharedInstance];
    privateCloudDatabaseController = [v9 privateCloudDatabaseController];
    transactionManager = privateCloudDatabaseController;
    syncManager = self->_syncManager;
    if (syncCopy)
    {
      [privateCloudDatabaseController addObserver:syncManager recordType:@"SecureUserData"];

      v9 = +[BCCloudKitController secureSharedInstance];
      transactionManager = [v9 transactionManager];
      entityName = [(BCCloudSecureUserDataManager *)self entityName];
      syncManager = [(BCCloudSecureUserDataManager *)self syncManager];
      [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:syncManager];
    }

    else
    {
      [privateCloudDatabaseController removeObserver:syncManager recordType:@"SecureUserData"];
    }
  }
}

- (void)currentCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
  dataManager = [(BCCloudSecureUserDataManager *)self dataManager];
  [dataManager currentCloudSyncVersions:versionsCopy];
}

- (void)setUserDatum:(id)datum completion:(id)completion
{
  completionCopy = completion;
  datumCopy = datum;
  dataManager = [(BCCloudSecureUserDataManager *)self dataManager];
  v8 = [datumCopy key];
  v9 = [NSPredicate predicateWithFormat:@"key = %@", v8];
  [dataManager setCloudData:datumCopy predicate:v9 completion:completionCopy];
}

- (void)setUserData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  dataManager = [(BCCloudSecureUserDataManager *)self dataManager];
  allKeys = [dataCopy allKeys];
  v9 = [NSPredicate predicateWithFormat:@"key IN %@", allKeys];
  [dataManager setCloudData:dataCopy predicate:v9 propertyIDKey:@"key" completion:completionCopy];
}

- (void)removeUserDataForSaltedHashedRecordIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    dataManager = [(BCCloudSecureUserDataManager *)self dataManager];
    dsCopy = [NSPredicate predicateWithFormat:@"saltedHashedID IN %@", dsCopy];
    [dataManager removeCloudDataForPredicate:dsCopy completion:completionCopy];
  }

  else
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2074(v10);
    }

    dataManager = objc_retainBlock(completionCopy);
    if (dataManager)
    {
      dataManager[2](dataManager, 1, 0);
    }
  }
}

- (void)updateSyncGenerationFromCloudData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  dataManager = [(BCCloudSecureUserDataManager *)self dataManager];
  allKeys = [dataCopy allKeys];
  v9 = [NSPredicate predicateWithFormat:@"key IN %@", allKeys];
  [dataManager updateSyncGenerationFromCloudData:dataCopy predicate:v9 propertyIDKey:@"key" completion:completionCopy];
}

- (void)deleteUserDatumForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  dataManager = [(BCCloudSecureUserDataManager *)self dataManager];
  keyCopy = [NSPredicate predicateWithFormat:@"key = %@", keyCopy];

  [dataManager deleteCloudDataForPredicate:keyCopy completion:completionCopy];
}

- (void)userDatumForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  dataManager = [(BCCloudSecureUserDataManager *)self dataManager];
  keyCopy = [NSPredicate predicateWithFormat:@"key = %@ AND (deletedFlag == NULL OR deletedFlag == NO)", keyCopy];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005E2B4;
  v11[3] = &unk_100241798;
  v12 = completionCopy;
  v10 = completionCopy;
  [dataManager cloudDataWithPredicate:keyCopy sortDescriptors:0 completion:v11];
}

- (void)userDatumIncludingDeleted:(BOOL)deleted forKey:(id)key completion:(id)completion
{
  deletedCopy = deleted;
  completionCopy = completion;
  keyCopy = key;
  if (deletedCopy)
  {
    dataManager = [(BCCloudSecureUserDataManager *)self dataManager];
    keyCopy = [NSPredicate predicateWithFormat:@"key = %@", keyCopy];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005E464;
    v12[3] = &unk_100241798;
    v13 = completionCopy;
    [dataManager cloudDataWithPredicate:keyCopy sortDescriptors:0 completion:v12];

    keyCopy = v13;
  }

  else
  {
    [(BCCloudSecureUserDataManager *)self userDatumForKey:keyCopy completion:completionCopy];
  }
}

- (void)getUserDataChangesSince:(id)since completion:(id)completion
{
  completionCopy = completion;
  sinceCopy = since;
  dataManager = [(BCCloudSecureUserDataManager *)self dataManager];
  [dataManager getChangesSince:sinceCopy forEntityClass:objc_opt_class() completion:completionCopy];
}

- (void)resolvedUserDataValueForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  v8 = [[BCMutableSecureUserDatum alloc] initWithKey:keyCopy];
  dataManager = [(BCCloudSecureUserDataManager *)self dataManager];
  keyCopy = [NSPredicate predicateWithFormat:@"key = %@", keyCopy];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005E728;
  v12[3] = &unk_100241798;
  v13 = completionCopy;
  v11 = completionCopy;
  [dataManager resolvedCloudDataForCloudData:v8 predicate:keyCopy completion:v12];
}

- (void)userDataValueForKey:(id)key completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005E88C;
  v7[3] = &unk_1002417C0;
  completionCopy = completion;
  v6 = completionCopy;
  [(BCCloudSecureUserDataManager *)self userDatumForKey:key completion:v7];
}

- (void)setUserDataValue:(id)value forKey:(id)key completion:(id)completion
{
  valueCopy = value;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005EA0C;
  v12[3] = &unk_100241810;
  keyCopy = key;
  v14 = valueCopy;
  selfCopy = self;
  completionCopy = completion;
  v9 = completionCopy;
  v10 = valueCopy;
  v11 = keyCopy;
  [(BCCloudSecureUserDataManager *)self userDatumForKey:v11 completion:v12];
}

@end