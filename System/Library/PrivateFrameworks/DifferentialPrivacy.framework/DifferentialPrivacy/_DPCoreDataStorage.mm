@interface _DPCoreDataStorage
+ (BOOL)createDatabaseDirectory:(id)a3 error:(id *)a4;
+ (unint64_t)countObjectsInContext:(id)a3 entityName:(id)a4 predicate:(id)a5;
+ (unint64_t)deleteObjectsInContext:(id)a3 entityName:(id)a4 predicate:(id)a5 sortDescriptors:(id)a6 fetchOffset:(unint64_t)a7 fetchLimit:(unint64_t)a8;
- (BOOL)deleteDatabaseForPSC:(id)a3 protectionClass:(id)a4 obliterate:(BOOL)a5;
- (BOOL)deleteStorageFor:(id)a3 obliterate:(BOOL)a4;
- (NSManagedObjectModel)managedObjectModel;
- (_DPCoreDataStorage)initWithDirectory:(id)a3 databaseName:(id)a4 modelURL:(id)a5 readOnly:(BOOL)a6;
- (id)mocForProtectionClass:(id)a3;
- (id)persistentStoreCoordinatorFor:(id)a3;
- (unint64_t)countObjectsForEntities:(id)a3 predicate:(id)a4;
- (unint64_t)deleteObjectsOlderThanDate:(id)a3 entities:(id)a4 limit:(unint64_t)a5;
- (unint64_t)deleteOldObjectsToLimitTotalNumber:(unint64_t)a3 entities:(id)a4 limit:(unint64_t)a5;
- (unint64_t)deleteSubmittedRecords:(unint64_t)a3 entities:(id)a4 limit:(unint64_t)a5;
- (unint64_t)deleteVersionMismatchRecords:(unint64_t)a3 entities:(id)a4 limit:(unint64_t)a5;
- (void)handleDataProtectionChangeFor:(id)a3 willBeAvailable:(BOOL)a4;
- (void)handleDatabaseErrors:(id)a3 forPSC:(id)a4 protectionClass:(id)a5;
- (void)invalidateManagedObjectContextFor:(id)a3;
- (void)invalidatePersistentStoreCoordinatorFor:(id)a3;
@end

@implementation _DPCoreDataStorage

- (_DPCoreDataStorage)initWithDirectory:(id)a3 databaseName:(id)a4 modelURL:(id)a5 readOnly:(BOOL)a6
{
  v45[3] = *MEMORY[0x277D85DE8];
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v43.receiver = self;
  v43.super_class = _DPCoreDataStorage;
  v11 = [(_DPCoreDataStorage *)&v43 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_databaseDirectory, a3);
    objc_storeStrong(&v12->_databaseName, a4);
    objc_storeStrong(&v12->_modelURL, a5);
    v12->_readOnly = a6;
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("_DPCoreDataStore.queueMOC", v13);
    queueMOC = v12->_queueMOC;
    v12->_queueMOC = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("_DPCoreDataStore.queuePSC", v16);
    queuePSC = v12->_queuePSC;
    v12->_queuePSC = v17;

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v12->_databaseDirectory, v12->_databaseName];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@.db", v19, @"ClassA"];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@.db", v19, @"ClassC"];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@.db", v19, @"ClassD"];
    v23 = +[_DPDataProtectionStateMonitor dataProtectionClassA];
    v44[0] = v23;
    v45[0] = v20;
    v24 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
    v44[1] = v24;
    v45[1] = v21;
    v25 = +[_DPDataProtectionStateMonitor dataProtectionClassD];
    v44[2] = v25;
    v45[2] = v22;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];
    paths = v12->_paths;
    v12->_paths = v26;

    managedObjectModel = v12->_managedObjectModel;
    v12->_managedObjectModel = 0;

    v29 = [MEMORY[0x277CBEB38] dictionary];
    managedObjectContexts = v12->_managedObjectContexts;
    v12->_managedObjectContexts = v29;

    v31 = [MEMORY[0x277CBEB38] dictionary];
    persistentStoreCoordinators = v12->_persistentStoreCoordinators;
    v12->_persistentStoreCoordinators = v31;

    v33 = objc_opt_new();
    dataProtectionMonitor = v12->_dataProtectionMonitor;
    v12->_dataProtectionMonitor = v33;

    objc_initWeak(&location, v12);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __71___DPCoreDataStorage_initWithDirectory_databaseName_modelURL_readOnly___block_invoke;
    v40[3] = &unk_27858AD40;
    objc_copyWeak(&v41, &location);
    [(_DPDataProtectionStateMonitor *)v12->_dataProtectionMonitor setChangeHandler:v40];
    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)handleDataProtectionChangeFor:(id)a3 willBeAvailable:(BOOL)a4
{
  if (!a4)
  {
    v6 = a3;
    [(_DPCoreDataStorage *)self invalidateManagedObjectContextFor:v6];
    [(_DPCoreDataStorage *)self invalidatePersistentStoreCoordinatorFor:v6];
  }
}

- (void)invalidateManagedObjectContextFor:(id)a3
{
  v4 = a3;
  queueMOC = self->_queueMOC;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56___DPCoreDataStorage_invalidateManagedObjectContextFor___block_invoke;
  v7[3] = &unk_27858AD90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queueMOC, v7);
}

- (void)invalidatePersistentStoreCoordinatorFor:(id)a3
{
  v4 = a3;
  queuePSC = self->_queuePSC;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62___DPCoreDataStorage_invalidatePersistentStoreCoordinatorFor___block_invoke;
  v7[3] = &unk_27858AD90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queuePSC, v7);
}

- (NSManagedObjectModel)managedObjectModel
{
  managedObjectModel = self->_managedObjectModel;
  if (managedObjectModel)
  {
    goto LABEL_4;
  }

  if (self->_modelURL)
  {
    v4 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:self->_modelURL];
    v5 = self->_managedObjectModel;
    self->_managedObjectModel = v4;

    managedObjectModel = self->_managedObjectModel;
LABEL_4:
    v6 = managedObjectModel;
    goto LABEL_5;
  }

  v8 = +[_DPLog framework];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(_DPCoreDataStorage *)v8 managedObjectModel];
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (id)persistentStoreCoordinatorFor:(id)a3
{
  v4 = a3;
  v5 = [(_DPDataProtectionStateMonitor *)self->_dataProtectionMonitor isDataAvailableFor:v4];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  queuePSC = self->_queuePSC;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke;
  block[3] = &unk_27858ADB8;
  v12 = &v19;
  block[4] = self;
  v7 = v4;
  v14 = v5;
  v11 = v7;
  v13 = &v15;
  dispatch_sync(queuePSC, block);
  if (*(v16 + 24) == 1)
  {
    [(_DPCoreDataStorage *)self invalidatePersistentStoreCoordinatorFor:v7];
    v8 = 0;
  }

  else
  {
    v8 = v20[5];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v8;
}

- (void)handleDatabaseErrors:(id)a3 forPSC:(id)a4 protectionClass:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && [_DPErrorUtilities isCoreDataFatalError:v8])
  {
    v11 = +[_DPCoreAnalyticsCollector sharedInstance];
    v15 = @"databaseCorrupt";
    v16[0] = MEMORY[0x277CBEC38];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v11 reportMetricsForEvent:@"com.apple.DifferentialPrivacy.CoreData" withMetrics:v12];

    v13 = +[_DPLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_DPCoreDataStorage handleDatabaseErrors:v13 forPSC:? protectionClass:?];
    }

    [(_DPCoreDataStorage *)self deleteDatabaseForPSC:v9 protectionClass:v10 obliterate:0];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)mocForProtectionClass:(id)a3
{
  v4 = a3;
  v5 = [(_DPDataProtectionStateMonitor *)self->_dataProtectionMonitor isDataAvailableFor:v4];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  queueMOC = self->_queueMOC;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___DPCoreDataStorage_mocForProtectionClass___block_invoke;
  block[3] = &unk_27858ADB8;
  v12 = &v19;
  block[4] = self;
  v7 = v4;
  v14 = v5;
  v11 = v7;
  v13 = &v15;
  dispatch_sync(queueMOC, block);
  if (*(v16 + 24) == 1)
  {
    [(_DPCoreDataStorage *)self invalidateManagedObjectContextFor:v7];
    v8 = 0;
  }

  else
  {
    v8 = v20[5];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v8;
}

- (unint64_t)deleteVersionMismatchRecords:(unint64_t)a3 entities:(id)a4 limit:(unint64_t)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v26[0] = v19;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v9 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
  v10 = [(_DPCoreDataStorage *)self mocForProtectionClass:v9];

  v11 = +[_DPRecordQueryPredicates predicateForRecordsWithVersionMismatch];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v14 += [objc_opt_class() deleteObjectsInContext:v10 entityName:*(*(&v21 + 1) + 8 * i) predicate:v11 sortDescriptors:v8 fetchOffset:0 fetchLimit:a5];
      }

      v13 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (unint64_t)deleteSubmittedRecords:(unint64_t)a3 entities:(id)a4 limit:(unint64_t)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v26[0] = v19;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v9 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
  v10 = [(_DPCoreDataStorage *)self mocForProtectionClass:v9];

  v11 = +[_DPRecordQueryPredicates predicateForRecordsSubmitted];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v14 += [objc_opt_class() deleteObjectsInContext:v10 entityName:*(*(&v21 + 1) + 8 * i) predicate:v11 sortDescriptors:v8 fetchOffset:0 fetchLimit:a5];
      }

      v13 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (unint64_t)deleteOldObjectsToLimitTotalNumber:(unint64_t)a3 entities:(id)a4 limit:(unint64_t)a5
{
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v27[0] = v19;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v9 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
  v10 = [(_DPCoreDataStorage *)self mocForProtectionClass:v9];

  v11 = +[_DPRecordQueryPredicates predicateForAllRecords];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v14 += [objc_opt_class() deleteObjectsInContext:v10 entityName:*(*(&v22 + 1) + 8 * i) predicate:v11 sortDescriptors:v8 fetchOffset:a3 fetchLimit:a5];
      }

      v13 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (unint64_t)deleteObjectsOlderThanDate:(id)a3 entities:(id)a4 limit:(unint64_t)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v28[0] = v21;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v11 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
  v12 = [(_DPCoreDataStorage *)self mocForProtectionClass:v11];

  v13 = [_DPRecordQueryPredicates predicateForRecordsOlderThan:v8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v9;
  v14 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v16 += [objc_opt_class() deleteObjectsInContext:v12 entityName:*(*(&v23 + 1) + 8 * i) predicate:v13 sortDescriptors:v10 fetchOffset:0 fetchLimit:a5];
      }

      v15 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (unint64_t)deleteObjectsInContext:(id)a3 entityName:(id)a4 predicate:(id)a5 sortDescriptors:(id)a6 fetchOffset:(unint64_t)a7 fetchLimit:(unint64_t)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v13)
  {
    v17 = os_transaction_create();
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __105___DPCoreDataStorage_deleteObjectsInContext_entityName_predicate_sortDescriptors_fetchOffset_fetchLimit___block_invoke;
    v20[3] = &unk_27858ADE0;
    v21 = v14;
    v22 = v13;
    v26 = a8;
    v27 = a7;
    v23 = v15;
    v24 = v16;
    v25 = &v28;
    [v22 performWithOptions:4 andBlock:v20];
    v18 = v29[3];

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unint64_t)countObjectsForEntities:(id)a3 predicate:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
  v9 = [(_DPCoreDataStorage *)self mocForProtectionClass:v8];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v13 += [objc_opt_class() countObjectsInContext:v9 entityName:*(*(&v18 + 1) + 8 * i) predicate:{v7, v18}];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (unint64_t)countObjectsInContext:(id)a3 entityName:(id)a4 predicate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = os_transaction_create();
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65___DPCoreDataStorage_countObjectsInContext_entityName_predicate___block_invoke;
    v13[3] = &unk_27858AE08;
    v14 = v8;
    v15 = v7;
    v16 = v9;
    v17 = &v18;
    [v15 performWithOptions:4 andBlock:v13];
    v11 = v19[3];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)deleteDatabaseForPSC:(id)a3 protectionClass:(id)a4 obliterate:(BOOL)a5
{
  v27[2] = *MEMORY[0x277D85DE8];
  readOnly = self->_readOnly;
  if (!readOnly)
  {
    v6 = a5;
    v9 = MEMORY[0x277CBEBC0];
    v10 = a4;
    v11 = a3;
    v12 = [(_DPCoreDataStorage *)self paths];
    v13 = [v12 objectForKeyedSubscript:v10];

    v14 = [v9 fileURLWithPath:v13];

    v15 = *MEMORY[0x277CBE2A8];
    if (v6)
    {
      v16 = *MEMORY[0x277CBE248];
      v26[0] = *MEMORY[0x277CBE2A8];
      v26[1] = v16;
      v27[0] = MEMORY[0x277CBEC38];
      v27[1] = MEMORY[0x277CBEC38];
      v17 = MEMORY[0x277CBEAC0];
      v18 = v27;
      v19 = v26;
      v20 = 2;
    }

    else
    {
      v24 = *MEMORY[0x277CBE2A8];
      v25 = MEMORY[0x277CBEC38];
      v17 = MEMORY[0x277CBEAC0];
      v18 = &v25;
      v19 = &v24;
      v20 = 1;
    }

    v21 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
    [v11 _destroyPersistentStoreAtURL:v14 withType:*MEMORY[0x277CBE2E8] options:v21 error:0];
  }

  v22 = *MEMORY[0x277D85DE8];
  return !readOnly;
}

- (BOOL)deleteStorageFor:(id)a3 obliterate:(BOOL)a4
{
  v6 = a3;
  if (self->_readOnly)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(_DPCoreDataStorage *)self mocForProtectionClass:v6];
    if (v8)
    {
      v9 = [(_DPCoreDataStorage *)self persistentStoreCoordinatorFor:v6];
      if (v9)
      {
        v10 = os_transaction_create();
        v17 = 0;
        v18 = &v17;
        v19 = 0x2020000000;
        v20 = 0;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __50___DPCoreDataStorage_deleteStorageFor_obliterate___block_invoke;
        v12[3] = &unk_27858AE30;
        v12[4] = self;
        v13 = v6;
        v15 = &v17;
        v14 = v9;
        v16 = a4;
        [v8 performWithOptions:4 andBlock:v12];
        v7 = *(v18 + 24);

        _Block_object_dispose(&v17, 8);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

+ (BOOL)createDatabaseDirectory:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CCAA00];
  v6 = a3;
  v7 = [v5 defaultManager];
  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6 isDirectory:1];

  LOBYTE(a4) = [v7 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:a4];
  return a4;
}

@end