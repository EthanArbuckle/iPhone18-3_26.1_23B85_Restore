@interface BCCloudSecureUserDataManager
+ (void)deleteCloudDataWithCompletion:(id)a3;
- (BCCloudSecureUserDataManager)initWithCloudDataSource:(id)a3 cloudKitController:(id)a4;
- (void)currentCloudSyncVersions:(id)a3;
- (void)deleteUserDatumForKey:(id)a3 completion:(id)a4;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3;
- (void)getUserDataChangesSince:(id)a3 completion:(id)a4;
- (void)hasSaltChangedWithCompletion:(id)a3;
- (void)removeUserDataForSaltedHashedRecordIDs:(id)a3 completion:(id)a4;
- (void)resolvedUserDataValueForKey:(id)a3 completion:(id)a4;
- (void)setEnableCloudSync:(BOOL)a3;
- (void)setUserData:(id)a3 completion:(id)a4;
- (void)setUserDataValue:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setUserDatum:(id)a3 completion:(id)a4;
- (void)signalSyncToCKForSyncManager:(id)a3;
- (void)syncManager:(id)a3 failedRecordIDs:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 removeCloudDataForIDs:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 resolveConflictsForRecords:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4;
- (void)syncManager:(id)a3 updateSyncGenerationFromCloudData:(id)a4 completion:(id)a5;
- (void)updateSyncGenerationFromCloudData:(id)a3 completion:(id)a4;
- (void)userDataValueForKey:(id)a3 completion:(id)a4;
- (void)userDatumForKey:(id)a3 completion:(id)a4;
- (void)userDatumIncludingDeleted:(BOOL)a3 forKey:(id)a4 completion:(id)a5;
@end

@implementation BCCloudSecureUserDataManager

- (BCCloudSecureUserDataManager)initWithCloudDataSource:(id)a3 cloudKitController:(id)a4
{
  v7 = a3;
  v8 = a4;
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

    objc_storeStrong(&v9->_secureDataSource, a3);
    v11 = [[BCCloudDataSyncManager alloc] initWithCloudKitController:v8];
    syncManager = v9->_syncManager;
    v9->_syncManager = v11;

    [(BCCloudDataSyncManager *)v9->_syncManager setDelegate:v9];
    v13 = [BCCloudDataManager alloc];
    v14 = [(BCCloudSecureUserDataManager *)v9 secureDataSource];
    v15 = [(BCCloudSecureUserDataManager *)v9 entityName];
    v16 = objc_opt_class();
    v17 = [(BCCloudDataManager *)v13 initWithCloudDataSource:v14 entityName:v15 notificationName:@"BCCloudSecureUserDataManagerChanged" immutableClass:v16 mutableClass:objc_opt_class() syncManager:v9->_syncManager cloudKitController:v8];
    dataManager = v9->_dataManager;
    v9->_dataManager = v17;
  }

  return v9;
}

- (void)hasSaltChangedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudSecureUserDataManager *)self dataManager];
  [v5 hasSaltChangedWithCompletion:v4];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudSecureUserDataManager *)self dataManager];
  [v5 dissociateCloudDataFromSyncWithCompletion:v4];
}

+ (void)deleteCloudDataWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[BULogUtilities shared];
  v5 = [v4 verboseLoggingEnabled];

  if (v5)
  {
    v6 = sub_10000DB80();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudSecureUserDataManager deleteCloudDataWithCompletion:\\"", v7, 2u);
    }
  }

  [BCCloudDataSource deleteCloudDataWithCompletion:v3];
}

- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(BCCloudSecureUserDataManager *)self enableCloudSync])
  {
    v7 = [(BCCloudSecureUserDataManager *)self dataManager];
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
  if ([(BCCloudSecureUserDataManager *)self enableCloudSync])
  {
    v7 = +[BCCloudKitController secureSharedInstance];
    v4 = [v7 transactionManager];
    v5 = [(BCCloudSecureUserDataManager *)self entityName];
    v6 = [(BCCloudSecureUserDataManager *)self syncManager];
    [v4 signalSyncToCKTransactionForEntityName:v5 syncManager:v6];
  }
}

- (void)syncManager:(id)a3 removeCloudDataForIDs:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(BCCloudSecureUserDataManager *)self enableCloudSync])
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

    [(BCCloudSecureUserDataManager *)self removeUserDataForSaltedHashedRecordIDs:v9 completion:v8];
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
  if ([(BCCloudSecureUserDataManager *)self enableCloudSync])
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
          v16 = [v15 key];
          [v9 setObject:v15 forKey:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [(BCCloudSecureUserDataManager *)self updateSyncGenerationFromCloudData:v9 completion:v8];
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
  if ([(BCCloudSecureUserDataManager *)self enableCloudSync])
  {
    v9 = [(BCCloudSecureUserDataManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005D9D8;
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
  if ([(BCCloudSecureUserDataManager *)self enableCloudSync])
  {
    v9 = [(BCCloudSecureUserDataManager *)self dataManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005DB4C;
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
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudSecureUserDataManager #enableCloudSync setEnableCloudSync %@\\"", &v15, 0xCu);
    }
  }

  if (self->_enableCloudSync != v3)
  {
    self->_enableCloudSync = v3;
    v9 = +[BCCloudKitController secureSharedInstance];
    v10 = [v9 privateCloudDatabaseController];
    v11 = v10;
    syncManager = self->_syncManager;
    if (v3)
    {
      [v10 addObserver:syncManager recordType:@"SecureUserData"];

      v9 = +[BCCloudKitController secureSharedInstance];
      v11 = [v9 transactionManager];
      v13 = [(BCCloudSecureUserDataManager *)self entityName];
      v14 = [(BCCloudSecureUserDataManager *)self syncManager];
      [v11 signalSyncToCKTransactionForEntityName:v13 syncManager:v14];
    }

    else
    {
      [v10 removeObserver:syncManager recordType:@"SecureUserData"];
    }
  }
}

- (void)currentCloudSyncVersions:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudSecureUserDataManager *)self dataManager];
  [v5 currentCloudSyncVersions:v4];
}

- (void)setUserDatum:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(BCCloudSecureUserDataManager *)self dataManager];
  v8 = [v7 key];
  v9 = [NSPredicate predicateWithFormat:@"key = %@", v8];
  [v10 setCloudData:v7 predicate:v9 completion:v6];
}

- (void)setUserData:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(BCCloudSecureUserDataManager *)self dataManager];
  v8 = [v7 allKeys];
  v9 = [NSPredicate predicateWithFormat:@"key IN %@", v8];
  [v10 setCloudData:v7 predicate:v9 propertyIDKey:@"key" completion:v6];
}

- (void)removeUserDataForSaltedHashedRecordIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(BCCloudSecureUserDataManager *)self dataManager];
    v9 = [NSPredicate predicateWithFormat:@"saltedHashedID IN %@", v6];
    [v8 removeCloudDataForPredicate:v9 completion:v7];
  }

  else
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2074(v10);
    }

    v8 = objc_retainBlock(v7);
    if (v8)
    {
      v8[2](v8, 1, 0);
    }
  }
}

- (void)updateSyncGenerationFromCloudData:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(BCCloudSecureUserDataManager *)self dataManager];
  v8 = [v7 allKeys];
  v9 = [NSPredicate predicateWithFormat:@"key IN %@", v8];
  [v10 updateSyncGenerationFromCloudData:v7 predicate:v9 propertyIDKey:@"key" completion:v6];
}

- (void)deleteUserDatumForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BCCloudSecureUserDataManager *)self dataManager];
  v8 = [NSPredicate predicateWithFormat:@"key = %@", v7];

  [v9 deleteCloudDataForPredicate:v8 completion:v6];
}

- (void)userDatumForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BCCloudSecureUserDataManager *)self dataManager];
  v9 = [NSPredicate predicateWithFormat:@"key = %@ AND (deletedFlag == NULL OR deletedFlag == NO)", v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005E2B4;
  v11[3] = &unk_100241798;
  v12 = v6;
  v10 = v6;
  [v8 cloudDataWithPredicate:v9 sortDescriptors:0 completion:v11];
}

- (void)userDatumIncludingDeleted:(BOOL)a3 forKey:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  if (v6)
  {
    v10 = [(BCCloudSecureUserDataManager *)self dataManager];
    v11 = [NSPredicate predicateWithFormat:@"key = %@", v9];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005E464;
    v12[3] = &unk_100241798;
    v13 = v8;
    [v10 cloudDataWithPredicate:v11 sortDescriptors:0 completion:v12];

    v9 = v13;
  }

  else
  {
    [(BCCloudSecureUserDataManager *)self userDatumForKey:v9 completion:v8];
  }
}

- (void)getUserDataChangesSince:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BCCloudSecureUserDataManager *)self dataManager];
  [v8 getChangesSince:v7 forEntityClass:objc_opt_class() completion:v6];
}

- (void)resolvedUserDataValueForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[BCMutableSecureUserDatum alloc] initWithKey:v7];
  v9 = [(BCCloudSecureUserDataManager *)self dataManager];
  v10 = [NSPredicate predicateWithFormat:@"key = %@", v7];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005E728;
  v12[3] = &unk_100241798;
  v13 = v6;
  v11 = v6;
  [v9 resolvedCloudDataForCloudData:v8 predicate:v10 completion:v12];
}

- (void)userDataValueForKey:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005E88C;
  v7[3] = &unk_1002417C0;
  v8 = a4;
  v6 = v8;
  [(BCCloudSecureUserDataManager *)self userDatumForKey:a3 completion:v7];
}

- (void)setUserDataValue:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005EA0C;
  v12[3] = &unk_100241810;
  v13 = a4;
  v14 = v8;
  v15 = self;
  v16 = a5;
  v9 = v16;
  v10 = v8;
  v11 = v13;
  [(BCCloudSecureUserDataManager *)self userDatumForKey:v11 completion:v12];
}

@end