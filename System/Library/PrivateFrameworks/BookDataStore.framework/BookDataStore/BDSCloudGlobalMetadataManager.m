@interface BDSCloudGlobalMetadataManager
+ (id)sharedManager;
- (BDSCloudGlobalMetadataManager)init;
- (BDSCloudGlobalMetadataManager)initWithCloudDataSource:(id)a3;
- (NSManagedObjectModel)objectModel;
- (void)currentCloudSyncVersions:(id)a3;
- (void)deleteMetadatumForKey:(id)a3 completion:(id)a4;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3;
- (void)getMetadataChangesSince:(id)a3 completion:(id)a4;
- (void)hasSaltChangedWithCompletion:(id)a3;
- (void)metadataValueForKey:(id)a3 completion:(id)a4;
- (void)metadatumForKey:(id)a3 completion:(id)a4;
- (void)metadatumIncludingDeleted:(BOOL)a3 forKey:(id)a4 completion:(id)a5;
- (void)removeConflictResolverForKey:(id)a3;
- (void)removeMetadataForSaltedHashedRecordIDs:(id)a3 completion:(id)a4;
- (void)resolvedMetadataValueForKey:(id)a3 completion:(id)a4;
- (void)setConflictResolver:(id)a3 forKey:(id)a4;
- (void)setMetadata:(id)a3 completion:(id)a4;
- (void)setMetadataValue:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setMetadatum:(id)a3 completion:(id)a4;
- (void)signalSyncToCKForSyncManager:(id)a3;
- (void)syncManager:(id)a3 failedRecordIDs:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 fetchedAllRecordsInZone:(id)a4;
- (void)syncManager:(id)a3 removeCloudDataForIDs:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 resolveConflictsForRecords:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4;
- (void)syncManager:(id)a3 updateSyncGenerationFromCloudData:(id)a4 completion:(id)a5;
- (void)updateSyncGenerationFromCloudData:(id)a3 completion:(id)a4;
@end

@implementation BDSCloudGlobalMetadataManager

- (BDSCloudGlobalMetadataManager)init
{
  v3 = [BCCloudDataSource alloc];
  v4 = [(BDSCloudGlobalMetadataManager *)self objectModel];
  v5 = [(BCCloudDataSource *)v3 initWithManagedObjectModel:v4 nameOnDisk:@"BCCloudGlobalMetadata"];

  v6 = [(BDSCloudGlobalMetadataManager *)self initWithCloudDataSource:v5];
  return v6;
}

+ (id)sharedManager
{
  if (qword_1EE2B04F0 != -1)
  {
    sub_1E45E3DCC();
  }

  v3 = qword_1EE2B0500;

  return v3;
}

- (NSManagedObjectModel)objectModel
{
  objectModel = self->_objectModel;
  if (!objectModel)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"BCCloudGlobalMetadata" ofType:@"momd"];

    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:1];
    v7 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v6];
    v8 = self->_objectModel;
    self->_objectModel = v7;

    objectModel = self->_objectModel;
  }

  return objectModel;
}

- (BDSCloudGlobalMetadataManager)initWithCloudDataSource:(id)a3
{
  v5 = a3;
  v27.receiver = self;
  v27.super_class = BDSCloudGlobalMetadataManager;
  v6 = [(BDSCloudGlobalMetadataManager *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_globalMetadataDataSource, a3);
    v8 = +[BCCloudKitController sharedInstance];
    v9 = [[BCCloudDataSyncManager alloc] initWithCloudKitController:v8];
    syncManager = v7->_syncManager;
    v7->_syncManager = v9;

    [(BCCloudDataSyncManager *)v7->_syncManager setDelegate:v7];
    v11 = [BCCloudChangeTokenController alloc];
    v12 = [v5 managedObjectContext];
    v13 = +[BCCloudKitController sharedInstance];
    v14 = [(BCCloudChangeTokenController *)v11 initWithMOC:v12 zoneName:@"GlobalMetadata" cloudKitController:v13];
    changeTokenController = v7->_changeTokenController;
    v7->_changeTokenController = v14;

    v16 = [BCCloudDataManager alloc];
    v17 = [(BDSCloudGlobalMetadataManager *)v7 entityName];
    v18 = objc_opt_class();
    v19 = [(BCCloudDataManager *)v16 initWithCloudDataSource:v5 entityName:v17 notificationName:@"BDSCloudGlobalMetadataManagerChanged" immutableClass:v18 mutableClass:objc_opt_class() syncManager:v7->_syncManager cloudKitController:v8];
    dataManager = v7->_dataManager;
    v7->_dataManager = v19;

    v21 = [BDSSaltVersionIdentifierManager alloc];
    v22 = v7->_changeTokenController;
    v23 = [v8 privateCloudDatabaseController];
    v24 = [(BDSSaltVersionIdentifierManager *)v21 initWithZoneDataManager:v7 tokenController:v22 databaseController:v23];
    saltVersionIdentifierManager = v7->_saltVersionIdentifierManager;
    v7->_saltVersionIdentifierManager = v24;
  }

  return v7;
}

- (void)setConflictResolver:(id)a3 forKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (![(BDSCloudGlobalMetadataManager *)self enableCloudSync])
  {
    v7 = [(BDSCloudGlobalMetadataManager *)self conflictResolvers];

    if (!v7)
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
      [(BDSCloudGlobalMetadataManager *)self setConflictResolvers:v8];
    }

    if (v12)
    {
      v9 = [v12 copy];
      v10 = _Block_copy(v9);
      v11 = [(BDSCloudGlobalMetadataManager *)self conflictResolvers];
      [v11 setObject:v10 forKeyedSubscript:v6];
    }
  }
}

- (void)removeConflictResolverForKey:(id)a3
{
  v5 = a3;
  if (![(BDSCloudGlobalMetadataManager *)self enableCloudSync])
  {
    v4 = [(BDSCloudGlobalMetadataManager *)self conflictResolvers];
    [v4 setObject:0 forKeyedSubscript:v5];
  }
}

- (void)hasSaltChangedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSCloudGlobalMetadataManager *)self dataManager];
  [v5 hasSaltChangedWithCompletion:v4];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BDSCloudGlobalMetadataManager *)self dataManager];
  changeTokenController = self->_changeTokenController;
  v9[0] = v5;
  v9[1] = changeTokenController;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  [v7 bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:sel_dissociateCloudDataFromSyncWithCompletion_ completion:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(BDSCloudGlobalMetadataManager *)self enableCloudSync])
  {
    v7 = [(BDSCloudGlobalMetadataManager *)self dataManager];
    [v7 startSyncToCKWithSyncManager:v9 completion:v6];
  }

  else
  {
    v8 = _Block_copy(v6);
    v7 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8);
    }
  }
}

- (void)signalSyncToCKForSyncManager:(id)a3
{
  if ([(BDSCloudGlobalMetadataManager *)self enableCloudSync])
  {
    v7 = +[BCCloudKitController sharedInstance];
    v4 = [v7 transactionManager];
    v5 = [(BDSCloudGlobalMetadataManager *)self entityName];
    v6 = [(BDSCloudGlobalMetadataManager *)self syncManager];
    [v4 signalSyncToCKTransactionForEntityName:v5 syncManager:v6];
  }
}

- (void)syncManager:(id)a3 removeCloudDataForIDs:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if ([(BDSCloudGlobalMetadataManager *)self enableCloudSync])
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
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
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v19 + 1) + 8 * v14) recordName];
          [v9 addObject:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [(BDSCloudGlobalMetadataManager *)self removeMetadataForSaltedHashedRecordIDs:v9 completion:v8];
  }

  else
  {
    v16 = _Block_copy(v8);
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0, 0);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)syncManager:(id)a3 fetchedAllRecordsInZone:(id)a4
{
  v6 = a4;
  if (-[BDSCloudGlobalMetadataManager enableCloudSync](self, "enableCloudSync") && [v6 isEqualToString:@"GlobalMetadata"])
  {
    v5 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v5 postNotificationName:@"BDSCloudGlobalMetadataManagerFetchedRecordsChanged" object:0];
  }
}

- (void)syncManager:(id)a3 updateSyncGenerationFromCloudData:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if ([(BDSCloudGlobalMetadataManager *)self enableCloudSync])
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [v15 key];
          [v9 setObject:v15 forKey:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [(BDSCloudGlobalMetadataManager *)self updateSyncGenerationFromCloudData:v9 completion:v8];
  }

  else
  {
    v17 = _Block_copy(v8);
    v18 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, 0, 0);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)syncManager:(id)a3 resolveConflictsForRecords:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(BDSCloudGlobalMetadataManager *)self enableCloudSync])
  {
    v9 = [(BDSCloudGlobalMetadataManager *)self dataManager];
    v10 = [(BDSCloudGlobalMetadataManager *)self conflictResolvers];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E4616A1C;
    v13[3] = &unk_1E8759DD8;
    v14 = v8;
    [v9 resolveConflictsForRecords:v7 withResolvers:v10 completion:v13];
  }

  else
  {
    v11 = _Block_copy(v8);
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0, 0);
    }
  }
}

- (void)syncManager:(id)a3 failedRecordIDs:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(BDSCloudGlobalMetadataManager *)self enableCloudSync])
  {
    v9 = [(BDSCloudGlobalMetadataManager *)self dataManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E4616B90;
    v12[3] = &unk_1E8759E00;
    v13 = v8;
    [v9 failedRecordIDs:v7 completion:v12];
  }

  else
  {
    v10 = _Block_copy(v8);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (void)currentCloudSyncVersions:(id)a3
{
  v4 = a3;
  v5 = [(BDSCloudGlobalMetadataManager *)self dataManager];
  [v5 currentCloudSyncVersions:v4];
}

- (void)setMetadatum:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(BDSCloudGlobalMetadataManager *)self dataManager];
  v8 = MEMORY[0x1E696AE18];
  v9 = [v7 key];
  v10 = [v8 predicateWithFormat:@"key = %@", v9];
  [v11 setCloudData:v7 predicate:v10 completion:v6];
}

- (void)setMetadata:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(BDSCloudGlobalMetadataManager *)self dataManager];
  v8 = MEMORY[0x1E696AE18];
  v9 = [v7 allKeys];
  v10 = [v8 predicateWithFormat:@"key IN %@", v9];
  [v11 setCloudData:v7 predicate:v10 propertyIDKey:@"key" completion:v6];
}

- (void)removeMetadataForSaltedHashedRecordIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(BDSCloudGlobalMetadataManager *)self dataManager];
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"saltedHashedID IN %@", v6];
    [v8 removeCloudDataForPredicate:v9 completion:v7];
  }

  else
  {
    v10 = BDSCloudKitLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706010(v10);
    }

    v8 = _Block_copy(v7);
    if (v8)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1003 userInfo:0];
      (v8)[2](v8, 0, v11);
    }
  }
}

- (void)updateSyncGenerationFromCloudData:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(BDSCloudGlobalMetadataManager *)self dataManager];
  v8 = MEMORY[0x1E696AE18];
  v9 = [v7 allKeys];
  v10 = [v8 predicateWithFormat:@"key IN %@", v9];
  [v11 updateSyncGenerationFromCloudData:v7 predicate:v10 propertyIDKey:@"key" completion:v6];
}

- (void)deleteMetadatumForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BDSCloudGlobalMetadataManager *)self dataManager];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"key = %@", v7];

  [v9 deleteCloudDataForPredicate:v8 completion:v6];
}

- (void)metadatumForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSCloudGlobalMetadataManager *)self dataManager];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"key = %@  AND (deletedFlag == NULL OR deletedFlag == NO)", v7];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E4617330;
  v11[3] = &unk_1E875A0D8;
  v12 = v6;
  v10 = v6;
  [v8 cloudDataWithPredicate:v9 sortDescriptors:0 completion:v11];
}

- (void)metadatumIncludingDeleted:(BOOL)a3 forKey:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  if (v6)
  {
    v10 = [(BDSCloudGlobalMetadataManager *)self dataManager];
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"key = %@", v9];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E46174E0;
    v12[3] = &unk_1E875A0D8;
    v13 = v8;
    [v10 cloudDataWithPredicate:v11 sortDescriptors:0 completion:v12];

    v9 = v13;
  }

  else
  {
    [(BDSCloudGlobalMetadataManager *)self metadatumForKey:v9 completion:v8];
  }
}

- (void)getMetadataChangesSince:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSCloudGlobalMetadataManager *)self dataManager];
  [v8 getChangesSince:v7 forEntityClass:objc_opt_class() completion:v6];
}

- (void)resolvedMetadataValueForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[BCMutableGlobalMetadatum alloc] initWithKey:v7];
  v9 = [(BDSCloudGlobalMetadataManager *)self dataManager];
  v10 = [(BDSCloudGlobalMetadataManager *)self conflictResolvers];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"key = %@", v7];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E46177BC;
  v13[3] = &unk_1E875A0D8;
  v14 = v6;
  v12 = v6;
  [v9 resolvedCloudDataForCloudData:v8 withResolvers:v10 predicate:v11 completion:v13];
}

- (void)metadataValueForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E4617920;
  v8[3] = &unk_1E875A100;
  v9 = v6;
  v7 = v6;
  [(BDSCloudGlobalMetadataManager *)self metadatumForKey:a3 completion:v8];
}

- (void)setMetadataValue:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E4617AA0;
  v14[3] = &unk_1E875A128;
  v15 = v9;
  v16 = v8;
  v17 = self;
  v18 = v10;
  v11 = v10;
  v12 = v8;
  v13 = v9;
  [(BDSCloudGlobalMetadataManager *)self metadatumForKey:v13 completion:v14];
}

@end