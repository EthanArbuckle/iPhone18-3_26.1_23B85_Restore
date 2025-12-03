@interface BDSCloudGlobalMetadataManager
+ (id)sharedManager;
- (BDSCloudGlobalMetadataManager)init;
- (BDSCloudGlobalMetadataManager)initWithCloudDataSource:(id)source;
- (NSManagedObjectModel)objectModel;
- (void)currentCloudSyncVersions:(id)versions;
- (void)deleteMetadatumForKey:(id)key completion:(id)completion;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)getMetadataChangesSince:(id)since completion:(id)completion;
- (void)hasSaltChangedWithCompletion:(id)completion;
- (void)metadataValueForKey:(id)key completion:(id)completion;
- (void)metadatumForKey:(id)key completion:(id)completion;
- (void)metadatumIncludingDeleted:(BOOL)deleted forKey:(id)key completion:(id)completion;
- (void)removeConflictResolverForKey:(id)key;
- (void)removeMetadataForSaltedHashedRecordIDs:(id)ds completion:(id)completion;
- (void)resolvedMetadataValueForKey:(id)key completion:(id)completion;
- (void)setConflictResolver:(id)resolver forKey:(id)key;
- (void)setMetadata:(id)metadata completion:(id)completion;
- (void)setMetadataValue:(id)value forKey:(id)key completion:(id)completion;
- (void)setMetadatum:(id)metadatum completion:(id)completion;
- (void)signalSyncToCKForSyncManager:(id)manager;
- (void)syncManager:(id)manager failedRecordIDs:(id)ds completion:(id)completion;
- (void)syncManager:(id)manager fetchedAllRecordsInZone:(id)zone;
- (void)syncManager:(id)manager removeCloudDataForIDs:(id)ds completion:(id)completion;
- (void)syncManager:(id)manager resolveConflictsForRecords:(id)records completion:(id)completion;
- (void)syncManager:(id)manager startSyncToCKWithCompletion:(id)completion;
- (void)syncManager:(id)manager updateSyncGenerationFromCloudData:(id)data completion:(id)completion;
- (void)updateSyncGenerationFromCloudData:(id)data completion:(id)completion;
@end

@implementation BDSCloudGlobalMetadataManager

- (BDSCloudGlobalMetadataManager)init
{
  v3 = [BCCloudDataSource alloc];
  objectModel = [(BDSCloudGlobalMetadataManager *)self objectModel];
  v5 = [(BCCloudDataSource *)v3 initWithManagedObjectModel:objectModel nameOnDisk:@"BCCloudGlobalMetadata"];

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

- (BDSCloudGlobalMetadataManager)initWithCloudDataSource:(id)source
{
  sourceCopy = source;
  v27.receiver = self;
  v27.super_class = BDSCloudGlobalMetadataManager;
  v6 = [(BDSCloudGlobalMetadataManager *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_globalMetadataDataSource, source);
    v8 = +[BCCloudKitController sharedInstance];
    v9 = [[BCCloudDataSyncManager alloc] initWithCloudKitController:v8];
    syncManager = v7->_syncManager;
    v7->_syncManager = v9;

    [(BCCloudDataSyncManager *)v7->_syncManager setDelegate:v7];
    v11 = [BCCloudChangeTokenController alloc];
    managedObjectContext = [sourceCopy managedObjectContext];
    v13 = +[BCCloudKitController sharedInstance];
    v14 = [(BCCloudChangeTokenController *)v11 initWithMOC:managedObjectContext zoneName:@"GlobalMetadata" cloudKitController:v13];
    changeTokenController = v7->_changeTokenController;
    v7->_changeTokenController = v14;

    v16 = [BCCloudDataManager alloc];
    entityName = [(BDSCloudGlobalMetadataManager *)v7 entityName];
    v18 = objc_opt_class();
    v19 = [(BCCloudDataManager *)v16 initWithCloudDataSource:sourceCopy entityName:entityName notificationName:@"BDSCloudGlobalMetadataManagerChanged" immutableClass:v18 mutableClass:objc_opt_class() syncManager:v7->_syncManager cloudKitController:v8];
    dataManager = v7->_dataManager;
    v7->_dataManager = v19;

    v21 = [BDSSaltVersionIdentifierManager alloc];
    v22 = v7->_changeTokenController;
    privateCloudDatabaseController = [v8 privateCloudDatabaseController];
    v24 = [(BDSSaltVersionIdentifierManager *)v21 initWithZoneDataManager:v7 tokenController:v22 databaseController:privateCloudDatabaseController];
    saltVersionIdentifierManager = v7->_saltVersionIdentifierManager;
    v7->_saltVersionIdentifierManager = v24;
  }

  return v7;
}

- (void)setConflictResolver:(id)resolver forKey:(id)key
{
  resolverCopy = resolver;
  keyCopy = key;
  if (![(BDSCloudGlobalMetadataManager *)self enableCloudSync])
  {
    conflictResolvers = [(BDSCloudGlobalMetadataManager *)self conflictResolvers];

    if (!conflictResolvers)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(BDSCloudGlobalMetadataManager *)self setConflictResolvers:dictionary];
    }

    if (resolverCopy)
    {
      v9 = [resolverCopy copy];
      v10 = _Block_copy(v9);
      conflictResolvers2 = [(BDSCloudGlobalMetadataManager *)self conflictResolvers];
      [conflictResolvers2 setObject:v10 forKeyedSubscript:keyCopy];
    }
  }
}

- (void)removeConflictResolverForKey:(id)key
{
  keyCopy = key;
  if (![(BDSCloudGlobalMetadataManager *)self enableCloudSync])
  {
    conflictResolvers = [(BDSCloudGlobalMetadataManager *)self conflictResolvers];
    [conflictResolvers setObject:0 forKeyedSubscript:keyCopy];
  }
}

- (void)hasSaltChangedWithCompletion:(id)completion
{
  completionCopy = completion;
  dataManager = [(BDSCloudGlobalMetadataManager *)self dataManager];
  [dataManager hasSaltChangedWithCompletion:completionCopy];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  v9[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dataManager = [(BDSCloudGlobalMetadataManager *)self dataManager];
  changeTokenController = self->_changeTokenController;
  v9[0] = dataManager;
  v9[1] = changeTokenController;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  [v7 bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:sel_dissociateCloudDataFromSyncWithCompletion_ completion:completionCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)syncManager:(id)manager startSyncToCKWithCompletion:(id)completion
{
  managerCopy = manager;
  completionCopy = completion;
  if ([(BDSCloudGlobalMetadataManager *)self enableCloudSync])
  {
    dataManager = [(BDSCloudGlobalMetadataManager *)self dataManager];
    [dataManager startSyncToCKWithSyncManager:managerCopy completion:completionCopy];
  }

  else
  {
    v8 = _Block_copy(completionCopy);
    dataManager = v8;
    if (v8)
    {
      (*(v8 + 2))(v8);
    }
  }
}

- (void)signalSyncToCKForSyncManager:(id)manager
{
  if ([(BDSCloudGlobalMetadataManager *)self enableCloudSync])
  {
    v7 = +[BCCloudKitController sharedInstance];
    transactionManager = [v7 transactionManager];
    entityName = [(BDSCloudGlobalMetadataManager *)self entityName];
    syncManager = [(BDSCloudGlobalMetadataManager *)self syncManager];
    [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:syncManager];
  }
}

- (void)syncManager:(id)manager removeCloudDataForIDs:(id)ds completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  if ([(BDSCloudGlobalMetadataManager *)self enableCloudSync])
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = dsCopy;
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

          recordName = [*(*(&v19 + 1) + 8 * v14) recordName];
          [v9 addObject:recordName];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [(BDSCloudGlobalMetadataManager *)self removeMetadataForSaltedHashedRecordIDs:v9 completion:completionCopy];
  }

  else
  {
    v16 = _Block_copy(completionCopy);
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0, 0);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)syncManager:(id)manager fetchedAllRecordsInZone:(id)zone
{
  zoneCopy = zone;
  if (-[BDSCloudGlobalMetadataManager enableCloudSync](self, "enableCloudSync") && [zoneCopy isEqualToString:@"GlobalMetadata"])
  {
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter postNotificationName:@"BDSCloudGlobalMetadataManagerFetchedRecordsChanged" object:0];
  }
}

- (void)syncManager:(id)manager updateSyncGenerationFromCloudData:(id)data completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  if ([(BDSCloudGlobalMetadataManager *)self enableCloudSync])
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(dataCopy, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = dataCopy;
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

    [(BDSCloudGlobalMetadataManager *)self updateSyncGenerationFromCloudData:v9 completion:completionCopy];
  }

  else
  {
    v17 = _Block_copy(completionCopy);
    v18 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, 0, 0);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)syncManager:(id)manager resolveConflictsForRecords:(id)records completion:(id)completion
{
  recordsCopy = records;
  completionCopy = completion;
  if ([(BDSCloudGlobalMetadataManager *)self enableCloudSync])
  {
    dataManager = [(BDSCloudGlobalMetadataManager *)self dataManager];
    conflictResolvers = [(BDSCloudGlobalMetadataManager *)self conflictResolvers];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E4616A1C;
    v13[3] = &unk_1E8759DD8;
    v14 = completionCopy;
    [dataManager resolveConflictsForRecords:recordsCopy withResolvers:conflictResolvers completion:v13];
  }

  else
  {
    v11 = _Block_copy(completionCopy);
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0, 0);
    }
  }
}

- (void)syncManager:(id)manager failedRecordIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([(BDSCloudGlobalMetadataManager *)self enableCloudSync])
  {
    dataManager = [(BDSCloudGlobalMetadataManager *)self dataManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E4616B90;
    v12[3] = &unk_1E8759E00;
    v13 = completionCopy;
    [dataManager failedRecordIDs:dsCopy completion:v12];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (void)currentCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
  dataManager = [(BDSCloudGlobalMetadataManager *)self dataManager];
  [dataManager currentCloudSyncVersions:versionsCopy];
}

- (void)setMetadatum:(id)metadatum completion:(id)completion
{
  completionCopy = completion;
  metadatumCopy = metadatum;
  dataManager = [(BDSCloudGlobalMetadataManager *)self dataManager];
  v8 = MEMORY[0x1E696AE18];
  v9 = [metadatumCopy key];
  v10 = [v8 predicateWithFormat:@"key = %@", v9];
  [dataManager setCloudData:metadatumCopy predicate:v10 completion:completionCopy];
}

- (void)setMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  metadataCopy = metadata;
  dataManager = [(BDSCloudGlobalMetadataManager *)self dataManager];
  v8 = MEMORY[0x1E696AE18];
  allKeys = [metadataCopy allKeys];
  v10 = [v8 predicateWithFormat:@"key IN %@", allKeys];
  [dataManager setCloudData:metadataCopy predicate:v10 propertyIDKey:@"key" completion:completionCopy];
}

- (void)removeMetadataForSaltedHashedRecordIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    dataManager = [(BDSCloudGlobalMetadataManager *)self dataManager];
    dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"saltedHashedID IN %@", dsCopy];
    [dataManager removeCloudDataForPredicate:dsCopy completion:completionCopy];
  }

  else
  {
    v10 = BDSCloudKitLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706010(v10);
    }

    dataManager = _Block_copy(completionCopy);
    if (dataManager)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1003 userInfo:0];
      (dataManager)[2](dataManager, 0, v11);
    }
  }
}

- (void)updateSyncGenerationFromCloudData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  dataManager = [(BDSCloudGlobalMetadataManager *)self dataManager];
  v8 = MEMORY[0x1E696AE18];
  allKeys = [dataCopy allKeys];
  v10 = [v8 predicateWithFormat:@"key IN %@", allKeys];
  [dataManager updateSyncGenerationFromCloudData:dataCopy predicate:v10 propertyIDKey:@"key" completion:completionCopy];
}

- (void)deleteMetadatumForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  dataManager = [(BDSCloudGlobalMetadataManager *)self dataManager];
  keyCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"key = %@", keyCopy];

  [dataManager deleteCloudDataForPredicate:keyCopy completion:completionCopy];
}

- (void)metadatumForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  dataManager = [(BDSCloudGlobalMetadataManager *)self dataManager];
  keyCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"key = %@  AND (deletedFlag == NULL OR deletedFlag == NO)", keyCopy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E4617330;
  v11[3] = &unk_1E875A0D8;
  v12 = completionCopy;
  v10 = completionCopy;
  [dataManager cloudDataWithPredicate:keyCopy sortDescriptors:0 completion:v11];
}

- (void)metadatumIncludingDeleted:(BOOL)deleted forKey:(id)key completion:(id)completion
{
  deletedCopy = deleted;
  completionCopy = completion;
  keyCopy = key;
  if (deletedCopy)
  {
    dataManager = [(BDSCloudGlobalMetadataManager *)self dataManager];
    keyCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"key = %@", keyCopy];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E46174E0;
    v12[3] = &unk_1E875A0D8;
    v13 = completionCopy;
    [dataManager cloudDataWithPredicate:keyCopy sortDescriptors:0 completion:v12];

    keyCopy = v13;
  }

  else
  {
    [(BDSCloudGlobalMetadataManager *)self metadatumForKey:keyCopy completion:completionCopy];
  }
}

- (void)getMetadataChangesSince:(id)since completion:(id)completion
{
  completionCopy = completion;
  sinceCopy = since;
  dataManager = [(BDSCloudGlobalMetadataManager *)self dataManager];
  [dataManager getChangesSince:sinceCopy forEntityClass:objc_opt_class() completion:completionCopy];
}

- (void)resolvedMetadataValueForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  v8 = [[BCMutableGlobalMetadatum alloc] initWithKey:keyCopy];
  dataManager = [(BDSCloudGlobalMetadataManager *)self dataManager];
  conflictResolvers = [(BDSCloudGlobalMetadataManager *)self conflictResolvers];
  keyCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"key = %@", keyCopy];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E46177BC;
  v13[3] = &unk_1E875A0D8;
  v14 = completionCopy;
  v12 = completionCopy;
  [dataManager resolvedCloudDataForCloudData:v8 withResolvers:conflictResolvers predicate:keyCopy completion:v13];
}

- (void)metadataValueForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E4617920;
  v8[3] = &unk_1E875A100;
  v9 = completionCopy;
  v7 = completionCopy;
  [(BDSCloudGlobalMetadataManager *)self metadatumForKey:key completion:v8];
}

- (void)setMetadataValue:(id)value forKey:(id)key completion:(id)completion
{
  valueCopy = value;
  keyCopy = key;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E4617AA0;
  v14[3] = &unk_1E875A128;
  v15 = keyCopy;
  v16 = valueCopy;
  selfCopy = self;
  v18 = completionCopy;
  v11 = completionCopy;
  v12 = valueCopy;
  v13 = keyCopy;
  [(BDSCloudGlobalMetadataManager *)self metadatumForKey:v13 completion:v14];
}

@end