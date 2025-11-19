@interface ULStore
- (BOOL)_insertFetchedBatchedObjects:(id)a3 usingBatchSize:(unint64_t)a4;
- (BOOL)batchDeleteObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6;
- (BOOL)batchTransferManagedObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 batchSize:(unint64_t)a6 limit:(unint64_t)a7 intoTargetStore:(id)a8;
- (BOOL)batchUpdateObjectsWithEntityName:(id)a3 predicate:(id)a4 propertiesToUpdate:(id)a5;
- (BOOL)commitChangesToStore;
- (BOOL)deleteAllRecords;
- (BOOL)deleteAllRecordsForEntityName:(id)a3;
- (BOOL)deleteOldestRecordsForEntityName:(id)a3 sortProperty:(id)a4 maxRecordsToKeep:(unsigned int)a5;
- (BOOL)deleteOldestRecordsIfFull;
- (BOOL)deleteRecordsForEntityName:(id)a3 sortProperty:(id)a4 olderThan:(double)a5 orNewerThan:(double)a6;
- (BOOL)deleteRecordsOlderThan:(double)a3 orNewerThan:(double)a4;
- (ULStore)initWithDbStore:(ULDatabaseStoreInterface *)a3;
- (id)_batchFetchManagedObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 batchSize:(unint64_t)a6 limit:(unint64_t)a7 error:(id *)a8;
- (id)countAllRecordsForEntityName:(id)a3;
- (id)countManagedObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6;
- (id)fetchManagedObjectsForEntityName:(id)a3 propertiesToFetch:(id)a4 propertiesToGroupBy:(id)a5 byAndPredicates:(id)a6 sortDescriptors:(id)a7 andLimit:(unint64_t)a8;
- (id)fetchManagedObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6;
- (id)fetchManagedObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6 returnObjectsAsFaults:(BOOL)a7 withManagedObjectContext:(id)a8;
- (id)fetchManagedObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6 withManagedObjectContext:(id)a7;
- (id)fetchPropertiesForEntityName:(id)a3 propertiesToFetch:(id)a4 propertiesToGroupBy:(id)a5 distinctResults:(BOOL)a6 byAndPredicates:(id)a7 sortDescriptors:(id)a8 andLimit:(unint64_t)a9 resetContext:(BOOL)a10;
- (unsigned)count;
- (void)_efficientlyEnumerateManagedObjectsInFetchRequest:(id)a3 usingManagedObjectContext:(id)a4 andApplyBlock:(id)a5;
- (void)_handleDatabaseError:(id)a3;
- (void)efficientlyFetchManagedObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6 fetchBatchSize:(unint64_t)a7 andApplyBlock:(id)a8;
- (void)resetMOC;
@end

@implementation ULStore

- (BOOL)commitChangesToStore
{
  v30 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__24;
  v20 = __Block_byref_object_dispose__24;
  v21 = 0;
  v3 = [(ULStore *)self managedObjectContext];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __31__ULStore_commitChangesToStore__block_invoke;
  v15[3] = &unk_2798D4908;
  v15[4] = self;
  v15[5] = &v16;
  [v3 performBlockAndWait:v15];

  if (v17[5])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULStore commitChangesToStore];
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = v17[5];
      v6 = [objc_opt_class() MOClass];
      v7 = NSStringFromClass(v6);
      *buf = 68289539;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2114;
      v27 = v5;
      v28 = 2113;
      v29 = v7;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not save changes to store, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@}", buf, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULStore commitChangesToStore];
    }

    v8 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v8))
    {
      v9 = v17[5];
      v10 = [objc_opt_class() MOClass];
      v11 = NSStringFromClass(v10);
      *buf = 68289539;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2114;
      v27 = v9;
      v28 = 2113;
      v29 = v11;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not save changes to store", "{msg%{public}.0s:Could not save changes to store, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@}", buf, 0x26u);
    }

    [(ULStore *)self _handleDatabaseError:v17[5]];
    v12 = v17[5] == 0;
  }

  else
  {
    v12 = 1;
  }

  _Block_object_dispose(&v16, 8);

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void __31__ULStore_commitChangesToStore__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 hasChanges];

  if (v3)
  {
    v4 = [*(a1 + 32) managedObjectContext];
    v5 = *(*(a1 + 40) + 8);
    obj = *(v5 + 40);
    [v4 save:&obj];
    objc_storeStrong((v5 + 40), obj);
  }

  v6 = [*(a1 + 32) managedObjectContext];
  [v6 reset];
}

- (BOOL)deleteOldestRecordsIfFull
{
  v3 = [objc_opt_class() maxEntriesInTable];
  v4 = +[ULDefaultsSingleton shared];
  v5 = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseMaintenanceKeepPercentage"];
  v7 = [v5 objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v7 floatValue];
  }

  else
  {
    [&unk_286A72D20 floatValue];
  }

  v9 = v8;

  v10 = [objc_opt_class() MOClass];
  v11 = NSStringFromClass(v10);
  v12 = [objc_opt_class() defaultSortProperty];
  v13 = [(ULStore *)self deleteOldestRecordsForEntityName:v11 sortProperty:v12 maxRecordsToKeep:(v9 * v3)];

  return v13;
}

- (ULStore)initWithDbStore:(ULDatabaseStoreInterface *)a3
{
  v10.receiver = self;
  v10.super_class = ULStore;
  v4 = [(ULStore *)&v10 init];
  v5 = v4;
  if (v4)
  {
    [(ULStore *)v4 setDbStore:a3];
    v6 = [(ULStore *)v5 dbStore];
    v7 = (*(*v6 + 16))(v6);
    v8 = [v7 createManagedObjectContext];
    [(ULStore *)v5 setManagedObjectContext:v8];
  }

  return v5;
}

- (void)resetMOC
{
  v3 = [(ULStore *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __19__ULStore_resetMOC__block_invoke;
  v4[3] = &unk_2798D4160;
  v4[4] = self;
  [v3 performBlockAndWait:v4];
}

void __19__ULStore_resetMOC__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) managedObjectContext];
  [v1 reset];
}

- (id)fetchManagedObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(ULStore *)self managedObjectContext];
  v14 = [(ULStore *)self fetchManagedObjectsWithEntityName:v10 byAndPredicates:v11 sortDescriptors:v12 andLimit:a6 withManagedObjectContext:v13];

  return v14;
}

- (id)fetchManagedObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6 withManagedObjectContext:(id)a7
{
  v7 = [(ULStore *)self fetchManagedObjectsWithEntityName:a3 byAndPredicates:a4 sortDescriptors:a5 andLimit:a6 returnObjectsAsFaults:0 withManagedObjectContext:a7];

  return v7;
}

- (id)fetchManagedObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6 returnObjectsAsFaults:(BOOL)a7 withManagedObjectContext:(id)a8
{
  v77 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__24;
  v66 = __Block_byref_object_dispose__24;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__24;
  v60 = __Block_byref_object_dispose__24;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__24;
  v54 = __Block_byref_object_dispose__24;
  v55 = 0;
  v37 = MEMORY[0x277D85DD0];
  v38 = 3221225472;
  v39 = __133__ULStore_fetchManagedObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit_returnObjectsAsFaults_withManagedObjectContext___block_invoke;
  v40 = &unk_2798D4930;
  v45 = &v50;
  v18 = v14;
  v41 = v18;
  v36 = v15;
  v42 = v36;
  v19 = v16;
  v48 = a6;
  v49 = a7;
  v43 = v19;
  v46 = &v56;
  v20 = v17;
  v44 = v20;
  v47 = &v62;
  [v20 performBlockAndWait:&v37];
  if (v63[5])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULStore commitChangesToStore];
    }

    v21 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v22 = v18;
      v23 = v63[5];
      v24 = [objc_opt_class() MOClass];
      v25 = NSStringFromClass(v24);
      v26 = v51[5];
      buf = 68289795;
      v69 = 2082;
      v70 = "";
      v71 = 2114;
      v72 = v23;
      v73 = 2113;
      v74 = v25;
      v75 = 2113;
      v76 = v26;
      _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not perform fetch request to store, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@, fetchRequest:%{private, location:escape_only}@}", &buf, 0x30u);

      v18 = v22;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULStore commitChangesToStore];
    }

    v27 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v27))
    {
      v28 = v18;
      v29 = v63[5];
      v30 = [objc_opt_class() MOClass];
      v31 = NSStringFromClass(v30);
      v32 = v51[5];
      buf = 68289795;
      v69 = 2082;
      v70 = "";
      v71 = 2114;
      v72 = v29;
      v73 = 2113;
      v74 = v31;
      v75 = 2113;
      v76 = v32;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not perform fetch request to store", "{msg%{public}.0s:Could not perform fetch request to store, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@, fetchRequest:%{private, location:escape_only}@}", &buf, 0x30u);

      v18 = v28;
    }

    [(ULStore *)self _handleDatabaseError:v63[5]];
  }

  v33 = v57[5];

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

void __133__ULStore_fetchManagedObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit_returnObjectsAsFaults_withManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:*(a1 + 32)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:*(a1 + 40)];
  [*(*(*(a1 + 64) + 8) + 40) setPredicate:v5];

  [*(*(*(a1 + 64) + 8) + 40) setSortDescriptors:*(a1 + 48)];
  [*(*(*(a1 + 64) + 8) + 40) setFetchLimit:*(a1 + 88)];
  [*(*(*(a1 + 64) + 8) + 40) setResultType:0];
  [*(*(*(a1 + 64) + 8) + 40) setReturnsObjectsAsFaults:*(a1 + 96)];
  v6 = *(a1 + 56);
  v7 = *(*(*(a1 + 64) + 8) + 40);
  v8 = *(*(a1 + 80) + 8);
  obj = *(v8 + 40);
  v9 = [v6 executeFetchRequest:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v10 = *(*(a1 + 72) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (void)efficientlyFetchManagedObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6 fetchBatchSize:(unint64_t)a7 andApplyBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = [(ULStore *)self managedObjectContext];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __126__ULStore_efficientlyFetchManagedObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit_fetchBatchSize_andApplyBlock___block_invoke;
  v24[3] = &unk_2798D4958;
  v23 = v14;
  v19 = v14;
  v25 = v19;
  v20 = v15;
  v26 = v20;
  v21 = v16;
  v30 = a6;
  v31 = a7;
  v27 = v21;
  v28 = self;
  v22 = v17;
  v29 = v22;
  [v18 performBlockAndWait:{v24, v23}];
}

void __126__ULStore_efficientlyFetchManagedObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit_fetchBatchSize_andApplyBlock___block_invoke(void *a1)
{
  v5 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:a1[4]];
  v2 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:a1[5]];
  [v5 setPredicate:v2];

  [v5 setSortDescriptors:a1[6]];
  [v5 setFetchLimit:a1[9]];
  [v5 setFetchBatchSize:a1[10]];
  v3 = a1[7];
  v4 = [v3 managedObjectContext];
  [v3 _efficientlyEnumerateManagedObjectsInFetchRequest:v5 usingManagedObjectContext:v4 andApplyBlock:a1[8]];
}

- (BOOL)batchTransferManagedObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 batchSize:(unint64_t)a6 limit:(unint64_t)a7 intoTargetStore:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v18 = [(ULStore *)self managedObjectContext];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __117__ULStore_batchTransferManagedObjectsWithEntityName_byAndPredicates_sortDescriptors_batchSize_limit_intoTargetStore___block_invoke;
  v24[3] = &unk_2798D4980;
  v24[4] = self;
  v19 = v14;
  v25 = v19;
  v20 = v15;
  v26 = v20;
  v21 = v16;
  v30 = a6;
  v31 = a7;
  v27 = v21;
  v29 = &v32;
  v22 = v17;
  v28 = v22;
  [v18 performBlockAndWait:v24];

  LOBYTE(v15) = *(v33 + 24);
  _Block_object_dispose(&v32, 8);

  return v15;
}

void __117__ULStore_batchTransferManagedObjectsWithEntityName_byAndPredicates_sortDescriptors_batchSize_limit_intoTargetStore___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v10 = 0;
  v8 = [v2 _batchFetchManagedObjectsWithEntityName:v3 byAndPredicates:v4 sortDescriptors:v5 batchSize:v6 limit:v7 error:&v10];
  v9 = v10;
  *(*(*(a1 + 72) + 8) + 24) = v9 == 0;
  if (!v9 && [v8 count])
  {
    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 64) _insertFetchedBatchedObjects:v8 usingBatchSize:*(a1 + 80)];
  }
}

- (id)fetchManagedObjectsForEntityName:(id)a3 propertiesToFetch:(id)a4 propertiesToGroupBy:(id)a5 byAndPredicates:(id)a6 sortDescriptors:(id)a7 andLimit:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__24;
  v40 = __Block_byref_object_dispose__24;
  v26 = a7;
  v41 = [MEMORY[0x277CBEB18] array];
  v18 = [(ULStore *)self managedObjectContext];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __123__ULStore_fetchManagedObjectsForEntityName_propertiesToFetch_propertiesToGroupBy_byAndPredicates_sortDescriptors_andLimit___block_invoke;
  v27[3] = &unk_2798D45A0;
  v19 = v15;
  v28 = v19;
  v29 = self;
  v20 = v14;
  v30 = v20;
  v21 = v16;
  v31 = v21;
  v22 = v17;
  v32 = v22;
  v23 = v26;
  v33 = v23;
  v34 = &v36;
  v35 = a8;
  [v18 performBlockAndWait:v27];

  v24 = v37[5];
  _Block_object_dispose(&v36, 8);

  return v24;
}

void __123__ULStore_fetchManagedObjectsForEntityName_propertiesToFetch_propertiesToGroupBy_byAndPredicates_sortDescriptors_andLimit___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v14 = [*(a1 + 32) mutableCopy];
  if (([v14 containsObject:@"objectID"] & 1) == 0)
  {
    [v14 addObject:@"objectID"];
  }

  LOBYTE(v13) = 0;
  [*(a1 + 40) fetchPropertiesForEntityName:*(a1 + 48) propertiesToFetch:v14 propertiesToGroupBy:*(a1 + 56) distinctResults:1 byAndPredicates:*(a1 + 64) sortDescriptors:*(a1 + 72) andLimit:*(a1 + 88) resetContext:v13];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  obj = v18 = 0u;
  v2 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v2)
  {
    v3 = 0;
    v4 = *v18;
    while (2)
    {
      v5 = 0;
      v6 = v3;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * v5);
        v8 = [*(a1 + 40) managedObjectContext];
        v9 = [v7 objectForKeyedSubscript:@"objectID"];
        v16 = v6;
        v10 = [v8 existingObjectWithID:v9 error:&v16];
        v3 = v16;

        if (v10)
        {
          [*(*(*(a1 + 80) + 8) + 40) addObject:v10];
        }

        else if (v3)
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            [ULStore commitChangesToStore];
          }

          v11 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v22 = v3;
            _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, "Conversion of ojbectID to managed object failed with error: %@", buf, 0xCu);
          }

          [*(*(*(a1 + 80) + 8) + 40) removeAllObjects];
          goto LABEL_19;
        }

        ++v5;
        v6 = v3;
      }

      while (v2 != v5);
      v2 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }

LABEL_19:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)fetchPropertiesForEntityName:(id)a3 propertiesToFetch:(id)a4 propertiesToGroupBy:(id)a5 distinctResults:(BOOL)a6 byAndPredicates:(id)a7 sortDescriptors:(id)a8 andLimit:(unint64_t)a9 resetContext:(BOOL)a10
{
  v80 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__24;
  v69 = __Block_byref_object_dispose__24;
  v70 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__24;
  v63 = __Block_byref_object_dispose__24;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__24;
  v57 = __Block_byref_object_dispose__24;
  v58 = 0;
  v37 = a8;
  v19 = [(ULStore *)self managedObjectContext];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __148__ULStore_fetchPropertiesForEntityName_propertiesToFetch_propertiesToGroupBy_distinctResults_byAndPredicates_sortDescriptors_andLimit_resetContext___block_invoke;
  v40[3] = &unk_2798D49A8;
  v47 = &v53;
  v38 = v15;
  v41 = v38;
  v20 = v18;
  v42 = v20;
  v21 = v37;
  v43 = v21;
  v50 = a9;
  v22 = v16;
  v44 = v22;
  v23 = v17;
  v51 = a6;
  v45 = v23;
  v46 = self;
  v48 = &v59;
  v49 = &v65;
  v52 = a10;
  [v19 performBlockAndWait:v40];

  if (v66[5])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULStore commitChangesToStore];
    }

    v24 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      v25 = v66[5];
      v26 = [objc_opt_class() MOClass];
      v27 = NSStringFromClass(v26);
      v28 = v54[5];
      buf = 68289795;
      v72 = 2082;
      v73 = "";
      v74 = 2114;
      v75 = v25;
      v76 = 2113;
      v77 = v27;
      v78 = 2113;
      v79 = v28;
      _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not perform fetch request to store, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@, fetchRequest:%{private, location:escape_only}@}", &buf, 0x30u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULStore commitChangesToStore];
    }

    v29 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v29))
    {
      v30 = v66[5];
      v31 = [objc_opt_class() MOClass];
      v32 = NSStringFromClass(v31);
      v33 = v54[5];
      buf = 68289795;
      v72 = 2082;
      v73 = "";
      v74 = 2114;
      v75 = v30;
      v76 = 2113;
      v77 = v32;
      v78 = 2113;
      v79 = v33;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not perform fetch request to store", "{msg%{public}.0s:Could not perform fetch request to store, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@, fetchRequest:%{private, location:escape_only}@}", &buf, 0x30u);
    }

    [(ULStore *)self _handleDatabaseError:v66[5]];
  }

  v34 = v60[5];

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  _Block_object_dispose(&v65, 8);
  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

void __148__ULStore_fetchPropertiesForEntityName_propertiesToFetch_propertiesToGroupBy_distinctResults_byAndPredicates_sortDescriptors_andLimit_resetContext___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:*(a1 + 32)];
  v3 = *(*(a1 + 80) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:*(a1 + 40)];
  [*(*(*(a1 + 80) + 8) + 40) setPredicate:v5];

  [*(*(*(a1 + 80) + 8) + 40) setSortDescriptors:*(a1 + 48)];
  [*(*(*(a1 + 80) + 8) + 40) setFetchLimit:*(a1 + 104)];
  [*(*(*(a1 + 80) + 8) + 40) setResultType:2];
  [*(*(*(a1 + 80) + 8) + 40) setPropertiesToFetch:*(a1 + 56)];
  [*(*(*(a1 + 80) + 8) + 40) setPropertiesToGroupBy:*(a1 + 64)];
  [*(*(*(a1 + 80) + 8) + 40) setReturnsDistinctResults:*(a1 + 112)];
  v6 = [*(a1 + 72) managedObjectContext];
  v7 = *(*(*(a1 + 80) + 8) + 40);
  v8 = *(*(a1 + 96) + 8);
  obj = *(v8 + 40);
  v9 = [v6 executeFetchRequest:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v10 = *(*(a1 + 88) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (*(a1 + 113) == 1)
  {
    v12 = [*(a1 + 72) managedObjectContext];
    [v12 reset];
  }
}

- (id)countManagedObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6
{
  v64 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__24;
  v53 = __Block_byref_object_dispose__24;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__24;
  v47 = __Block_byref_object_dispose__24;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v13 = [(ULStore *)self managedObjectContext];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __86__ULStore_countManagedObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit___block_invoke;
  v30[3] = &unk_2798D49D0;
  v35 = &v43;
  v14 = v10;
  v31 = v14;
  v15 = v11;
  v32 = v15;
  v16 = v12;
  v37 = &v49;
  v38 = a6;
  v33 = v16;
  v34 = self;
  v36 = &v39;
  [v13 performBlockAndWait:v30];

  if (v50[5])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULStore commitChangesToStore];
    }

    v17 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = v50[5];
      v19 = [objc_opt_class() MOClass];
      v20 = NSStringFromClass(v19);
      v21 = v44[5];
      buf = 68289795;
      v56 = 2082;
      v57 = "";
      v58 = 2114;
      v59 = v18;
      v60 = 2113;
      v61 = v20;
      v62 = 2113;
      v63 = v21;
      _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not perform count fetch request to store, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@, fetchRequest:%{private, location:escape_only}@}", &buf, 0x30u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULStore commitChangesToStore];
    }

    v22 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v22))
    {
      v23 = v50[5];
      v24 = [objc_opt_class() MOClass];
      v25 = NSStringFromClass(v24);
      v26 = v44[5];
      buf = 68289795;
      v56 = 2082;
      v57 = "";
      v58 = 2114;
      v59 = v23;
      v60 = 2113;
      v61 = v25;
      v62 = 2113;
      v63 = v26;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not perform count fetch request to store", "{msg%{public}.0s:Could not perform count fetch request to store, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@, fetchRequest:%{private, location:escape_only}@}", &buf, 0x30u);
    }

    [(ULStore *)self _handleDatabaseError:v50[5]];
  }

  if (v40[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = 0;
  }

  else
  {
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

void __86__ULStore_countManagedObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:*(a1 + 32)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:*(a1 + 40)];
  [*(*(*(a1 + 64) + 8) + 40) setPredicate:v5];

  [*(*(*(a1 + 64) + 8) + 40) setSortDescriptors:*(a1 + 48)];
  [*(*(*(a1 + 64) + 8) + 40) setFetchLimit:*(a1 + 88)];
  v6 = [*(a1 + 56) managedObjectContext];
  v7 = *(*(*(a1 + 64) + 8) + 40);
  v8 = *(*(a1 + 80) + 8);
  obj = *(v8 + 40);
  v9 = [v6 countForFetchRequest:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(*(a1 + 72) + 8) + 24) = v9;

  v10 = [*(a1 + 56) managedObjectContext];
  [v10 reset];
}

- (BOOL)batchDeleteObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 andLimit:(unint64_t)a6
{
  v59 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__24;
  v48 = __Block_byref_object_dispose__24;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__24;
  v42 = __Block_byref_object_dispose__24;
  v43 = 0;
  v13 = [(ULStore *)self managedObjectContext];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __85__ULStore_batchDeleteObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit___block_invoke;
  v30[3] = &unk_2798D49F8;
  v14 = v10;
  v31 = v14;
  v15 = v11;
  v32 = v15;
  v16 = v12;
  v36 = &v44;
  v37 = a6;
  v33 = v16;
  v34 = self;
  v35 = &v38;
  [v13 performBlockAndWait:v30];

  if (v45[5])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULStore commitChangesToStore];
    }

    v17 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = v45[5];
      v19 = [objc_opt_class() MOClass];
      v20 = NSStringFromClass(v19);
      v21 = v39[5];
      buf = 68289795;
      v51 = 2082;
      v52 = "";
      v53 = 2114;
      v54 = v18;
      v55 = 2113;
      v56 = v20;
      v57 = 2113;
      v58 = v21;
      _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not perform batch delete request to store, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@, batchDeleteRequest:%{private, location:escape_only}@}", &buf, 0x30u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULStore commitChangesToStore];
    }

    v22 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v22))
    {
      v23 = v45[5];
      v24 = [objc_opt_class() MOClass];
      v25 = NSStringFromClass(v24);
      v26 = v39[5];
      buf = 68289795;
      v51 = 2082;
      v52 = "";
      v53 = 2114;
      v54 = v23;
      v55 = 2113;
      v56 = v25;
      v57 = 2113;
      v58 = v26;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not perform batch delete request to store", "{msg%{public}.0s:Could not perform batch delete request to store, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@, batchDeleteRequest:%{private, location:escape_only}@}", &buf, 0x30u);
    }

    [(ULStore *)self _handleDatabaseError:v45[5]];
    v27 = v45[5] == 0;
  }

  else
  {
    v27 = 1;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

void __85__ULStore_batchDeleteObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:*(a1 + 32)];
  v3 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:*(a1 + 40)];
  [v2 setPredicate:v3];

  [v2 setSortDescriptors:*(a1 + 48)];
  [v2 setFetchLimit:*(a1 + 80)];
  v4 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v2];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 56) managedObjectContext];
  v8 = *(*(*(a1 + 64) + 8) + 40);
  v9 = *(*(a1 + 72) + 8);
  obj = *(v9 + 40);
  v10 = [v7 executeRequest:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);

  v11 = [*(a1 + 56) managedObjectContext];
  [v11 reset];
}

- (id)countAllRecordsForEntityName:(id)a3
{
  v3 = [(ULStore *)self countManagedObjectsWithEntityName:a3 byAndPredicates:0 sortDescriptors:0 andLimit:0];

  return v3;
}

- (BOOL)deleteAllRecordsForEntityName:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULStore deleteAllRecordsForEntityName:];
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315138;
    v25 = [v4 UTF8String];
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "Deleting all records for entity: %s", &v24, 0xCu);
  }

  v6 = +[ULDefaultsSingleton shared];
  v7 = [v6 defaultsDictionary];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBatchDeleteEntriesIterationLimit"];
  v9 = [v7 objectForKey:v8];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 unsignedIntValue];
  }

  else
  {
    v10 = [&unk_286A71BE0 unsignedIntValue];
  }

  v11 = v10;

  if (v11)
  {
    v12 = [(ULStore *)self countAllRecordsForEntityName:v4];
    v13 = v12;
    if (v12)
    {
      if ([v12 integerValue] < 1 || ((v14 = objc_msgSend(v13, "integerValue"), v15 = v11, v16 = objc_msgSend(v13, "integerValue") / v11, v14 % v11 <= 0) ? (v17 = v16) : (v17 = v16 + 1), v17 < 1))
      {
        LOBYTE(v20) = 1;
      }

      else
      {
        v18 = 1;
        do
        {
          v19 = objc_autoreleasePoolPush();
          v20 = [(ULStore *)self batchDeleteObjectsWithEntityName:v4 byAndPredicates:0 sortDescriptors:0 andLimit:v15];
          objc_autoreleasePoolPop(v19);
          v21 = v18++ < v17;
        }

        while (v21 && v20);
      }
    }

    else
    {
      LOBYTE(v20) = 0;
    }
  }

  else
  {
    LOBYTE(v20) = [(ULStore *)self batchDeleteObjectsWithEntityName:v4 byAndPredicates:0 sortDescriptors:0 andLimit:0];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)deleteOldestRecordsForEntityName:(id)a3 sortProperty:(id)a4 maxRecordsToKeep:(unsigned int)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(ULStore *)self countAllRecordsForEntityName:v8];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 unsignedIntValue] - a5;
    if (v12 < 0)
    {
      v18 = 1;
    }

    else
    {
      v13 = +[ULDefaultsSingleton shared];
      v14 = [v13 defaultsDictionary];

      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseFreeSpacePercentage"];
      v16 = [v14 objectForKey:v15];
      if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v16 floatValue];
      }

      else
      {
        [&unk_286A72D10 floatValue];
      }

      v19 = v17;

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULStore deleteAllRecordsForEntityName:];
      }

      v20 = v12 + (v19 * a5);
      v21 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = [v8 UTF8String];
        v29 = 1024;
        v30 = v20;
        _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_DEFAULT, "Freeing up database space for entity: %s, Num Records to delete: %d", buf, 0x12u);
      }

      v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v9 ascending:1];
      v26 = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      v18 = [(ULStore *)self batchDeleteObjectsWithEntityName:v8 byAndPredicates:0 sortDescriptors:v23 andLimit:v20];
    }
  }

  else
  {
    v18 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)deleteRecordsForEntityName:(id)a3 sortProperty:(id)a4 olderThan:(double)a5 orNewerThan:(double)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULStore deleteAllRecordsForEntityName:];
  }

  v12 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = [v10 UTF8String];
    _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "Deleting old records for entity: %s", buf, 0xCu);
  }

  v13 = [MEMORY[0x277CBEB18] array];
  v14 = MEMORY[0x277CCAC30];
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:a6];
  v17 = [v14 predicateWithFormat:@"%K < %@ || %K > %@", v11, v15, v11, v16];
  [v13 addObject:v17];

  v18 = [(ULStore *)self batchDeleteObjectsWithEntityName:v10 byAndPredicates:v13 sortDescriptors:0 andLimit:0];
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)batchUpdateObjectsWithEntityName:(id)a3 predicate:(id)a4 propertiesToUpdate:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__24;
  v45 = __Block_byref_object_dispose__24;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__24;
  v39 = __Block_byref_object_dispose__24;
  v40 = 0;
  v11 = [(ULStore *)self managedObjectContext];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __73__ULStore_batchUpdateObjectsWithEntityName_predicate_propertiesToUpdate___block_invoke;
  v28[3] = &unk_2798D4A20;
  v33 = &v35;
  v12 = v8;
  v29 = v12;
  v13 = v9;
  v30 = v13;
  v14 = v10;
  v31 = v14;
  v32 = self;
  v34 = &v41;
  [v11 performBlockAndWait:v28];

  if (v42[5])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULStore commitChangesToStore];
    }

    v15 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = v42[5];
      v17 = [objc_opt_class() MOClass];
      v18 = NSStringFromClass(v17);
      v19 = v36[5];
      buf = 68289795;
      v48 = 2082;
      v49 = "";
      v50 = 2114;
      v51 = v16;
      v52 = 2113;
      v53 = v18;
      v54 = 2113;
      v55 = v19;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not perform batch update request to store, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@, updateRequest:%{private, location:escape_only}@}", &buf, 0x30u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULStore commitChangesToStore];
    }

    v20 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v20))
    {
      v21 = v42[5];
      v22 = [objc_opt_class() MOClass];
      v23 = NSStringFromClass(v22);
      v24 = v36[5];
      buf = 68289795;
      v48 = 2082;
      v49 = "";
      v50 = 2114;
      v51 = v21;
      v52 = 2113;
      v53 = v23;
      v54 = 2113;
      v55 = v24;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not perform batch update request to store", "{msg%{public}.0s:Could not perform batch update request to store, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@, updateRequest:%{private, location:escape_only}@}", &buf, 0x30u);
    }

    [(ULStore *)self _handleDatabaseError:v42[5]];
    v25 = v42[5] == 0;
  }

  else
  {
    v25 = 1;
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

void __73__ULStore_batchUpdateObjectsWithEntityName_predicate_propertiesToUpdate___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE380] batchUpdateRequestWithEntityName:*(a1 + 32)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 64) + 8) + 40) setPredicate:*(a1 + 40)];
  [*(*(*(a1 + 64) + 8) + 40) setPropertiesToUpdate:*(a1 + 48)];
  v5 = [*(a1 + 56) managedObjectContext];
  v6 = *(*(*(a1 + 64) + 8) + 40);
  v7 = *(*(a1 + 72) + 8);
  obj = *(v7 + 40);
  v8 = [v5 executeRequest:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  v9 = [*(a1 + 56) managedObjectContext];
  [v9 reset];
}

- (BOOL)deleteAllRecords
{
  v3 = [objc_opt_class() MOClass];
  v4 = NSStringFromClass(v3);
  LOBYTE(self) = [(ULStore *)self deleteAllRecordsForEntityName:v4];

  return self;
}

- (BOOL)deleteRecordsOlderThan:(double)a3 orNewerThan:(double)a4
{
  v7 = [objc_opt_class() MOClass];
  v8 = NSStringFromClass(v7);
  v9 = [objc_opt_class() defaultSortProperty];
  LOBYTE(self) = [(ULStore *)self deleteRecordsForEntityName:v8 sortProperty:v9 olderThan:a3 orNewerThan:a4];

  return self;
}

- (unsigned)count
{
  v3 = [objc_opt_class() MOClass];
  v4 = NSStringFromClass(v3);
  v5 = [(ULStore *)self countAllRecordsForEntityName:v4];

  if (v5)
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_batchFetchManagedObjectsWithEntityName:(id)a3 byAndPredicates:(id)a4 sortDescriptors:(id)a5 batchSize:(unint64_t)a6 limit:(unint64_t)a7 error:(id *)a8
{
  v71 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__24;
  v60 = __Block_byref_object_dispose__24;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__24;
  v54 = __Block_byref_object_dispose__24;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__24;
  v48 = __Block_byref_object_dispose__24;
  v49 = 0;
  v32 = a5;
  v15 = [(ULStore *)self managedObjectContext];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __105__ULStore__batchFetchManagedObjectsWithEntityName_byAndPredicates_sortDescriptors_batchSize_limit_error___block_invoke;
  v34[3] = &unk_2798D4A48;
  v39 = &v44;
  v16 = v13;
  v35 = v16;
  v17 = v14;
  v36 = v17;
  v18 = v32;
  v42 = a7;
  v43 = a6;
  v37 = v18;
  v38 = self;
  v40 = &v50;
  v41 = &v56;
  [v15 performBlockAndWait:v34];

  if (v57[5])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULStore commitChangesToStore];
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v20 = v57[5];
      v21 = [objc_opt_class() MOClass];
      v22 = NSStringFromClass(v21);
      v23 = v45[5];
      buf = 68289795;
      v63 = 2082;
      v64 = "";
      v65 = 2114;
      v66 = v20;
      v67 = 2113;
      v68 = v22;
      v69 = 2113;
      v70 = v23;
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not perform batch fetch request to store, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@, fetchRequest:%{private, location:escape_only}@}", &buf, 0x30u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULStore commitChangesToStore];
    }

    v24 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v24))
    {
      v25 = v57[5];
      v26 = [objc_opt_class() MOClass];
      v27 = NSStringFromClass(v26);
      v28 = v45[5];
      buf = 68289795;
      v63 = 2082;
      v64 = "";
      v65 = 2114;
      v66 = v25;
      v67 = 2113;
      v68 = v27;
      v69 = 2113;
      v70 = v28;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not perform batch fetch request to store", "{msg%{public}.0s:Could not perform batch fetch request to store, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@, fetchRequest:%{private, location:escape_only}@}", &buf, 0x30u);
    }

    if (a8)
    {
      *a8 = v57[5];
    }

    [(ULStore *)self _handleDatabaseError:v57[5]];
  }

  v29 = v51[5];

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

void __105__ULStore__batchFetchManagedObjectsWithEntityName_byAndPredicates_sortDescriptors_batchSize_limit_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:*(a1 + 32)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:*(a1 + 40)];
  [*(*(*(a1 + 64) + 8) + 40) setPredicate:v5];

  [*(*(*(a1 + 64) + 8) + 40) setSortDescriptors:*(a1 + 48)];
  [*(*(*(a1 + 64) + 8) + 40) setFetchLimit:*(a1 + 88)];
  [*(*(*(a1 + 64) + 8) + 40) setResultType:0];
  [*(*(*(a1 + 64) + 8) + 40) setFetchBatchSize:*(a1 + 96)];
  v6 = [*(a1 + 56) managedObjectContext];
  v7 = *(*(*(a1 + 64) + 8) + 40);
  v8 = *(*(a1 + 80) + 8);
  obj = *(v8 + 40);
  v9 = [v6 executeFetchRequest:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v10 = *(*(a1 + 72) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (BOOL)_insertFetchedBatchedObjects:(id)a3 usingBatchSize:(unint64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v7 = [(ULStore *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__ULStore__insertFetchedBatchedObjects_usingBatchSize___block_invoke;
  v10[3] = &unk_2798D4A70;
  v8 = v6;
  v13 = &v15;
  v14 = a4;
  v11 = v8;
  v12 = self;
  [v7 performBlockAndWait:v10];

  LOBYTE(v6) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v6;
}

void __55__ULStore__insertFetchedBatchedObjects_usingBatchSize___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) firstObject];
    v3 = [v2 entity];
    v24 = [v3 name];

    v4 = [*(a1 + 32) count];
    if (v4)
    {
      v5 = 0;
      v21 = v4;
      do
      {
        if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
        {
          break;
        }

        v23 = v5;
        v6 = *(a1 + 56) + v5;
        if (v6 >= v4)
        {
          v6 = v4;
        }

        v25 = v6;
        context = objc_autoreleasePoolPush();
        v7 = v23;
        if (v23 < v25)
        {
          do
          {
            v8 = [*(a1 + 32) objectAtIndexedSubscript:v7];
            v9 = MEMORY[0x277CBE408];
            v10 = [*(a1 + 40) managedObjectContext];
            v11 = [v9 insertNewObjectForEntityForName:v24 inManagedObjectContext:v10];

            v12 = [v8 entity];
            v13 = [v12 attributesByName];

            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v14 = v13;
            v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
            if (v15)
            {
              v16 = *v27;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v27 != v16)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v18 = *(*(&v26 + 1) + 8 * i);
                  v19 = [v8 valueForKey:v18];
                  [v11 setValue:v19 forKey:v18];
                }

                v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
              }

              while (v15);
            }

            ++v7;
          }

          while (v7 != v25);
        }

        *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) commitChangesToStore];
        objc_autoreleasePoolPop(context);
        v5 = *(a1 + 56) + v23;
        v4 = v21;
      }

      while (v5 < v21);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleDatabaseError:(id)a3
{
  v9 = a3;
  v4 = [(ULStore *)self dbStore];
  v5 = (*(v4->var0 + 2))(v4);
  v6 = [v5 isMainDatabase];

  if (v6)
  {
    v7 = [(ULStore *)self dbStore];
    v8 = (*(v7->var0 + 2))(v7);
    [v8 handleDatabaseError:v9];
  }
}

- (void)_efficientlyEnumerateManagedObjectsInFetchRequest:(id)a3 usingManagedObjectContext:(id)a4 andApplyBlock:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v34 = a5;
  context = objc_autoreleasePoolPush();
  v30 = v8;
  v36 = 0;
  v35 = 0;
  v32 = v9;
  v33 = [v9 executeFetchRequest:v8 error:&v35];
  v31 = v35;
  if (v31)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULStore commitChangesToStore];
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = [objc_opt_class() MOClass];
      v12 = NSStringFromClass(v11);
      *buf = 68289795;
      v38 = 0;
      v39 = 2082;
      v40 = "";
      v41 = 2114;
      v42 = v31;
      v43 = 2113;
      v44 = v12;
      v45 = 2113;
      v46 = v8;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:efficientlyEnumerateManagedObjectsInFetchRequest: error in executeFetchRequest, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@, fetchRequest:%{private, location:escape_only}@}", buf, 0x30u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULStore commitChangesToStore];
    }

    v13 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v13))
    {
      v14 = [objc_opt_class() MOClass];
      v15 = NSStringFromClass(v14);
      *buf = 68289795;
      v38 = 0;
      v39 = 2082;
      v40 = "";
      v41 = 2114;
      v42 = v31;
      v43 = 2113;
      v44 = v15;
      v45 = 2113;
      v46 = v8;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "efficientlyEnumerateManagedObjectsInFetchRequest: error in executeFetchRequest", "{msg%{public}.0s:efficientlyEnumerateManagedObjectsInFetchRequest: error in executeFetchRequest, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@, fetchRequest:%{private, location:escape_only}@}", buf, 0x30u);
    }

    [(ULStore *)self _handleDatabaseError:v31];
    v34[2](v34, 0, &v36);
  }

  else
  {
    v16 = [v8 fetchBatchSize];
    v17 = [v33 count];
    v18 = v17;
    if (v17 / v16 * v16 == v17)
    {
      v19 = v17 / v16;
    }

    else
    {
      v19 = v17 / v16 + 1;
    }

    if (v19 && (v36 & 1) == 0)
    {
      v20 = 0;
      v21 = 0;
      v22 = 1;
      v23 = v16;
      do
      {
        if (v18 >= v23)
        {
          v24 = v23;
        }

        else
        {
          v24 = v18;
        }

        v25 = objc_autoreleasePoolPush();
        v26 = objc_autoreleasePoolPush();
        v27 = [v33 subarrayWithRange:{v21, v24 + v20}];
        (v34)[2](v34, v27, &v36);

        objc_autoreleasePoolPop(v26);
        if ((v36 & 1) == 0)
        {
          [v32 reset];
        }

        objc_autoreleasePoolPop(v25);
        if (v22 >= v19)
        {
          break;
        }

        ++v22;
        v21 += v16;
        v23 += v16;
        v20 -= v16;
      }

      while ((v36 & 1) == 0);
    }

    [v32 reset];
  }

  objc_autoreleasePoolPop(context);
  v28 = *MEMORY[0x277D85DE8];
}

@end