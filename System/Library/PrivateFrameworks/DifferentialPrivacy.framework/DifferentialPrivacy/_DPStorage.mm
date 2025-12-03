@interface _DPStorage
+ (id)createFetchRequestFor:(id)for entityName:(id)name predicate:(id)predicate fetchLimit:(unint64_t)limit fetchOffset:(unint64_t)offset;
+ (id)entitiesRequiringMaintenance;
+ (id)errorStringFor:(int64_t)for;
+ (id)shuffleOrderOfRecords:(id)records count:(unint64_t)count;
- (id)removeBadObjects:(id)objects;
- (void)dealloc;
- (void)deleteAllRecordsByKey:(id)key withCompletion:(id)completion;
- (void)deleteRecords:(id)records withCompletion:(id)completion;
- (void)fetchKeynamesFor:(id)for predicate:(id)predicate fetchLimit:(unint64_t)limit fetchOffset:(unint64_t)offset withCompletion:(id)completion;
- (void)fetchRecordCountForEntity:(id)entity predicate:(id)predicate completion:(id)completion;
- (void)fetchRecordsFor:(id)for predicate:(id)predicate fetchLimit:(unint64_t)limit fetchOffset:(unint64_t)offset randomizeOrder:(BOOL)order withCompletion:(id)completion;
- (void)flush;
- (void)handleEmptyArrayError:(int64_t)error completion:(id)completion;
- (void)saveRecords:(id)records andFlush:(BOOL)flush withCompletion:(id)completion;
- (void)scheduleMaintenanceWithName:(id)name database:(id)database;
- (void)scheduleStorageCullingWithName:(id)name database:(id)database;
- (void)updateRecords:(id)records withCompletion:(id)completion;
@end

@implementation _DPStorage

- (id)removeBadObjects:(id)objects
{
  v13[9] = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v4 = objc_autoreleasePoolPush();
  v5 = [objectsCopy mutableCopy];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v13[3] = objc_opt_class();
  v13[4] = objc_opt_class();
  v13[5] = objc_opt_class();
  v13[6] = objc_opt_class();
  v13[7] = objc_opt_class();
  v13[8] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:9];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __31___DPStorage_removeBadObjects___block_invoke;
  v11[3] = &unk_27858AF40;
  v12 = v6;
  v7 = v6;
  v8 = [objectsCopy indexesOfObjectsPassingTest:v11];
  [v5 removeObjectsAtIndexes:v8];

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)errorStringFor:(int64_t)for
{
  if (errorStringFor__onceToken != -1)
  {
    +[_DPStorage errorStringFor:];
  }

  v4 = errorStringFor__errorsDict;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:for];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (void)handleEmptyArrayError:(int64_t)error completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    queue = [(_DPStorage *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47___DPStorage_handleEmptyArrayError_completion___block_invoke;
    block[3] = &unk_27858AF68;
    block[4] = self;
    errorCopy = error;
    v9 = completionCopy;
    dispatch_async(queue, block);
  }
}

+ (id)createFetchRequestFor:(id)for entityName:(id)name predicate:(id)predicate fetchLimit:(unint64_t)limit fetchOffset:(unint64_t)offset
{
  v31[1] = *MEMORY[0x277D85DE8];
  forCopy = for;
  nameCopy = name;
  predicateCopy = predicate;
  v14 = objc_opt_new();
  v15 = [MEMORY[0x277CBE408] entityForName:nameCopy inManagedObjectContext:forCopy];
  [v14 setEntity:v15];

  [v14 setPredicate:predicateCopy];
  predicate = [v14 predicate];
  [predicate allowEvaluation];

  [v14 setFetchLimit:limit];
  [v14 setFetchOffset:offset];
  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v31[0] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [v14 setSortDescriptors:v18];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  sortDescriptors = [v14 sortDescriptors];
  v20 = [sortDescriptors countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(sortDescriptors);
        }

        [*(*(&v26 + 1) + 8 * i) allowEvaluation];
      }

      v21 = [sortDescriptors countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)shuffleOrderOfRecords:(id)records count:(unint64_t)count
{
  recordsCopy = records;
  v6 = [recordsCopy mutableCopy];
  v7 = 0;
  for (i = 0; ; ++i)
  {
    v9 = [recordsCopy count];
    countCopy = count;
    if (v9 <= count)
    {
      countCopy = [recordsCopy count];
    }

    if (i >= countCopy)
    {
      break;
    }

    [v6 exchangeObjectAtIndex:i withObjectAtIndex:{i + arc4random_uniform(v7 + objc_msgSend(v6, "count"))}];
    --v7;
  }

  v11 = [v6 copy];

  return v11;
}

- (void)fetchRecordCountForEntity:(id)entity predicate:(id)predicate completion:(id)completion
{
  entityCopy = entity;
  predicateCopy = predicate;
  completionCopy = completion;
  v12 = completionCopy;
  if (predicateCopy && entityCopy && completionCopy)
  {
    coredataStorage = [(_DPStorage *)self coredataStorage];
    v14 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
    v15 = [coredataStorage mocForProtectionClass:v14];

    if (v15)
    {
      v16 = os_transaction_create();
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __61___DPStorage_fetchRecordCountForEntity_predicate_completion___block_invoke_2;
      v19[3] = &unk_27858B008;
      v19[4] = self;
      v20 = v15;
      v21 = entityCopy;
      v22 = predicateCopy;
      v25 = a2;
      v23 = v16;
      v24 = v12;
      v17 = v16;
      [v20 performWithOptions:4 andBlock:v19];
    }

    else
    {
      queue = [(_DPStorage *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61___DPStorage_fetchRecordCountForEntity_predicate_completion___block_invoke;
      block[3] = &unk_27858AF90;
      block[4] = self;
      v27 = v12;
      dispatch_async(queue, block);
    }
  }
}

- (void)fetchKeynamesFor:(id)for predicate:(id)predicate fetchLimit:(unint64_t)limit fetchOffset:(unint64_t)offset withCompletion:(id)completion
{
  forCopy = for;
  predicateCopy = predicate;
  completionCopy = completion;
  v16 = completionCopy;
  if (predicateCopy && forCopy && completionCopy)
  {
    coredataStorage = [(_DPStorage *)self coredataStorage];
    v18 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
    v19 = [coredataStorage mocForProtectionClass:v18];

    if (v19)
    {
      v20 = os_transaction_create();
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __79___DPStorage_fetchKeynamesFor_predicate_fetchLimit_fetchOffset_withCompletion___block_invoke_2;
      v23[3] = &unk_27858B058;
      v23[4] = self;
      v24 = v19;
      v25 = forCopy;
      v26 = predicateCopy;
      limitCopy = limit;
      offsetCopy = offset;
      v31 = a2;
      v27 = v20;
      v28 = v16;
      v21 = v20;
      [v24 performWithOptions:4 andBlock:v23];
    }

    else
    {
      queue = [(_DPStorage *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __79___DPStorage_fetchKeynamesFor_predicate_fetchLimit_fetchOffset_withCompletion___block_invoke;
      block[3] = &unk_27858AF90;
      block[4] = self;
      v33 = v16;
      dispatch_async(queue, block);
    }
  }
}

- (void)fetchRecordsFor:(id)for predicate:(id)predicate fetchLimit:(unint64_t)limit fetchOffset:(unint64_t)offset randomizeOrder:(BOOL)order withCompletion:(id)completion
{
  forCopy = for;
  predicateCopy = predicate;
  completionCopy = completion;
  v18 = completionCopy;
  if (predicateCopy && forCopy && completionCopy)
  {
    offsetCopy = offset;
    coredataStorage = [(_DPStorage *)self coredataStorage];
    v20 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
    v21 = [coredataStorage mocForProtectionClass:v20];

    if (v21)
    {
      v22 = os_transaction_create();
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __93___DPStorage_fetchRecordsFor_predicate_fetchLimit_fetchOffset_randomizeOrder_withCompletion___block_invoke_2;
      v26[3] = &unk_27858B080;
      v26[4] = self;
      v27 = v21;
      v28 = forCopy;
      v29 = predicateCopy;
      orderCopy = order;
      limitCopy = limit;
      v33 = offsetCopy;
      v34 = a2;
      v30 = v22;
      v31 = v18;
      v23 = v22;
      [v27 performWithOptions:4 andBlock:v26];
    }

    else
    {
      queue = [(_DPStorage *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __93___DPStorage_fetchRecordsFor_predicate_fetchLimit_fetchOffset_randomizeOrder_withCompletion___block_invoke;
      block[3] = &unk_27858AF90;
      block[4] = self;
      v37 = v18;
      dispatch_async(queue, block);
    }
  }
}

- (void)saveRecords:(id)records andFlush:(BOOL)flush withCompletion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  completionCopy = completion;
  if ([recordsCopy count])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__4;
    v31 = __Block_byref_object_dispose__4;
    v32 = [(_DPStorage *)self removeBadObjects:recordsCopy];
    v11 = [v28[5] count];
    if (v11 != [recordsCopy count])
    {
      v12 = +[_DPLog framework];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromSelector(a2);
        [(_DPStorage *)v13 saveRecords:v14 andFlush:buf withCompletion:v12];
      }
    }

    if ([v28[5] count])
    {
      coredataStorage = [(_DPStorage *)self coredataStorage];
      v16 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
      v17 = [coredataStorage mocForProtectionClass:v16];

      if (!v17)
      {
        v18 = +[_DPLog daemon];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [_DPStorage saveRecords:v18 andFlush:? withCompletion:?];
        }
      }

      v19 = os_transaction_create();
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __50___DPStorage_saveRecords_andFlush_withCompletion___block_invoke;
      v22[3] = &unk_27858B0D0;
      v25 = &v27;
      v22[4] = self;
      v20 = v17;
      v23 = v20;
      flushCopy = flush;
      v24 = completionCopy;
      [v20 performWithOptions:4 andBlock:v22];
    }

    else
    {
      [(_DPStorage *)self handleEmptyArrayError:4 completion:completionCopy];
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    [(_DPStorage *)self handleEmptyArrayError:3 completion:completionCopy];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateRecords:(id)records withCompletion:(id)completion
{
  recordsCopy = records;
  completionCopy = completion;
  if ([recordsCopy count])
  {
    v9 = [(_DPStorage *)self removeBadObjects:recordsCopy];
    v10 = [v9 count];
    if (v10 != [recordsCopy count])
    {
      v11 = +[_DPLog framework];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_DPStorage updateRecords:a2 withCompletion:?];
      }
    }

    if ([v9 count])
    {
      coredataStorage = [(_DPStorage *)self coredataStorage];
      v13 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
      v14 = [coredataStorage mocForProtectionClass:v13];

      v15 = os_transaction_create();
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __43___DPStorage_updateRecords_withCompletion___block_invoke;
      v17[3] = &unk_27858B0F8;
      v18 = v9;
      selfCopy = self;
      v20 = v14;
      v21 = completionCopy;
      v16 = v14;
      [v16 performWithOptions:4 andBlock:v17];
    }

    else
    {
      [(_DPStorage *)self handleEmptyArrayError:4 completion:completionCopy];
    }
  }

  else
  {
    [(_DPStorage *)self handleEmptyArrayError:3 completion:completionCopy];
  }
}

- (void)deleteRecords:(id)records withCompletion:(id)completion
{
  recordsCopy = records;
  completionCopy = completion;
  if ([recordsCopy count])
  {
    v9 = [(_DPStorage *)self removeBadObjects:recordsCopy];
    v10 = [v9 count];
    if (v10 != [recordsCopy count])
    {
      v11 = +[_DPLog framework];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_DPStorage updateRecords:a2 withCompletion:?];
      }
    }

    if ([v9 count])
    {
      coredataStorage = [(_DPStorage *)self coredataStorage];
      v13 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
      v14 = [coredataStorage mocForProtectionClass:v13];

      v15 = os_transaction_create();
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __43___DPStorage_deleteRecords_withCompletion___block_invoke;
      v17[3] = &unk_27858B120;
      v18 = v9;
      v19 = v14;
      selfCopy = self;
      v21 = completionCopy;
      v16 = v14;
      [v16 performWithOptions:4 andBlock:v17];
    }

    else
    {
      [(_DPStorage *)self handleEmptyArrayError:4 completion:completionCopy];
    }
  }

  else
  {
    [(_DPStorage *)self handleEmptyArrayError:3 completion:completionCopy];
  }
}

- (void)deleteAllRecordsByKey:(id)key withCompletion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  coredataStorage = [(_DPStorage *)self coredataStorage];
  v9 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
  v10 = [coredataStorage mocForProtectionClass:v9];

  v11 = [_DPRecordQueryPredicates entityForKey:keyCopy];
  v12 = os_transaction_create();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51___DPStorage_deleteAllRecordsByKey_withCompletion___block_invoke;
  v17[3] = &unk_27858B148;
  v18 = keyCopy;
  selfCopy = self;
  v20 = v10;
  v21 = v11;
  v22 = completionCopy;
  v13 = completionCopy;
  v14 = v11;
  v15 = v10;
  v16 = keyCopy;
  [v15 performWithOptions:4 andBlock:v17];
}

- (void)flush
{
  v3 = os_transaction_create();
  if (![(_DPStorage *)self readOnly])
  {
    coredataStorage = [(_DPStorage *)self coredataStorage];
    v5 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
    v6 = [coredataStorage mocForProtectionClass:v5];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __19___DPStorage_flush__block_invoke;
    v10[3] = &unk_27858A908;
    v11 = v6;
    v7 = v6;
    [v7 performWithOptions:4 andBlock:v10];
  }

  coredataStorage2 = [(_DPStorage *)self coredataStorage];
  v9 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
  [coredataStorage2 invalidateManagedObjectContextFor:v9];
}

- (void)dealloc
{
  [(_DPStorage *)self flush];
  v3.receiver = self;
  v3.super_class = _DPStorage;
  [(_DPStorage *)&v3 dealloc];
}

+ (id)entitiesRequiringMaintenance
{
  v15[10] = *MEMORY[0x277D85DE8];
  v14 = +[_DPNumericDataRecord entityName];
  v15[0] = v14;
  v2 = +[_DPBitValueRecord entityName];
  v15[1] = v2;
  v3 = +[_DPOBHSequenceRecord entityName];
  v15[2] = v3;
  v4 = +[_DPCMSWordRecord entityName];
  v15[3] = v4;
  v5 = +[_DPCMSSequenceRecord entityName];
  v15[4] = v5;
  v6 = +[_DPHCMSWordRecord entityName];
  v15[5] = v6;
  v7 = +[_DPHCMSSequenceRecord entityName];
  v15[6] = v7;
  v8 = +[_DPPTRecord entityName];
  v15[7] = v8;
  v9 = +[_DPBSSFPRecord entityName];
  v15[8] = v9;
  v10 = +[_DPPrioRecord entityName];
  v15[9] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)scheduleStorageCullingWithName:(id)name database:(id)database
{
  databaseCopy = database;
  nameCopy = name;
  entitiesRequiringMaintenance = [objc_opt_class() entitiesRequiringMaintenance];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __54___DPStorage_scheduleStorageCullingWithName_database___block_invoke;
  v15 = &unk_27858B170;
  v16 = databaseCopy;
  v17 = entitiesRequiringMaintenance;
  v18 = xmmword_2262951C0;
  v8 = entitiesRequiringMaintenance;
  v9 = databaseCopy;
  v10 = MEMORY[0x22AA7A8C0](&v12);
  v11 = [_DPPeriodicTask taskWithName:nameCopy period:kSecondsIn24Hours handler:v10, v12, v13, v14, v15];

  [_DPPeriodicTaskManager registerTask:v11];
}

- (void)scheduleMaintenanceWithName:(id)name database:(id)database
{
  databaseCopy = database;
  v6 = kSecondsIn14Day;
  nameCopy = name;
  entitiesRequiringMaintenance = [objc_opt_class() entitiesRequiringMaintenance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51___DPStorage_scheduleMaintenanceWithName_database___block_invoke;
  v13[3] = &unk_27858B198;
  v14 = databaseCopy;
  v15 = entitiesRequiringMaintenance;
  v16 = xmmword_2262951C0;
  v17 = v6;
  v9 = entitiesRequiringMaintenance;
  v10 = databaseCopy;
  v11 = MEMORY[0x22AA7A8C0](v13);
  v12 = [_DPPeriodicTask taskWithName:nameCopy period:kSecondsIn12Hours handler:v11];

  [_DPPeriodicTaskManager registerTask:v12];
}

- (void)saveRecords:(uint8_t *)buf andFlush:(os_log_t)log withCompletion:.cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_22622D000, log, OS_LOG_TYPE_ERROR, "%@ : %@ : found foreign objects", buf, 0x16u);
}

- (void)updateRecords:(uint64_t)a1 withCompletion:(const char *)a2 .cold.1(uint64_t a1, const char *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3(&dword_22622D000, v5, v6, "%@ : %@ : found foreign objects", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end