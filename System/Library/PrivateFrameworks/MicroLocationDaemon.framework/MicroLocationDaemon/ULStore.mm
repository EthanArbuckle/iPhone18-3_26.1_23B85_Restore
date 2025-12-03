@interface ULStore
- (BOOL)_insertFetchedBatchedObjects:(id)objects usingBatchSize:(unint64_t)size;
- (BOOL)batchDeleteObjectsWithEntityName:(id)name byAndPredicates:(id)predicates sortDescriptors:(id)descriptors andLimit:(unint64_t)limit;
- (BOOL)batchTransferManagedObjectsWithEntityName:(id)name byAndPredicates:(id)predicates sortDescriptors:(id)descriptors batchSize:(unint64_t)size limit:(unint64_t)limit intoTargetStore:(id)store;
- (BOOL)batchUpdateObjectsWithEntityName:(id)name predicate:(id)predicate propertiesToUpdate:(id)update;
- (BOOL)commitChangesToStore;
- (BOOL)deleteAllRecords;
- (BOOL)deleteAllRecordsForEntityName:(id)name;
- (BOOL)deleteOldestRecordsForEntityName:(id)name sortProperty:(id)property maxRecordsToKeep:(unsigned int)keep;
- (BOOL)deleteOldestRecordsIfFull;
- (BOOL)deleteRecordsForEntityName:(id)name sortProperty:(id)property olderThan:(double)than orNewerThan:(double)newerThan;
- (BOOL)deleteRecordsOlderThan:(double)than orNewerThan:(double)newerThan;
- (ULStore)initWithDbStore:(ULDatabaseStoreInterface *)store;
- (id)_batchFetchManagedObjectsWithEntityName:(id)name byAndPredicates:(id)predicates sortDescriptors:(id)descriptors batchSize:(unint64_t)size limit:(unint64_t)limit error:(id *)error;
- (id)countAllRecordsForEntityName:(id)name;
- (id)countManagedObjectsWithEntityName:(id)name byAndPredicates:(id)predicates sortDescriptors:(id)descriptors andLimit:(unint64_t)limit;
- (id)fetchManagedObjectsForEntityName:(id)name propertiesToFetch:(id)fetch propertiesToGroupBy:(id)by byAndPredicates:(id)predicates sortDescriptors:(id)descriptors andLimit:(unint64_t)limit;
- (id)fetchManagedObjectsWithEntityName:(id)name byAndPredicates:(id)predicates sortDescriptors:(id)descriptors andLimit:(unint64_t)limit;
- (id)fetchManagedObjectsWithEntityName:(id)name byAndPredicates:(id)predicates sortDescriptors:(id)descriptors andLimit:(unint64_t)limit returnObjectsAsFaults:(BOOL)faults withManagedObjectContext:(id)context;
- (id)fetchManagedObjectsWithEntityName:(id)name byAndPredicates:(id)predicates sortDescriptors:(id)descriptors andLimit:(unint64_t)limit withManagedObjectContext:(id)context;
- (id)fetchPropertiesForEntityName:(id)name propertiesToFetch:(id)fetch propertiesToGroupBy:(id)by distinctResults:(BOOL)results byAndPredicates:(id)predicates sortDescriptors:(id)descriptors andLimit:(unint64_t)limit resetContext:(BOOL)self0;
- (unsigned)count;
- (void)_efficientlyEnumerateManagedObjectsInFetchRequest:(id)request usingManagedObjectContext:(id)context andApplyBlock:(id)block;
- (void)_handleDatabaseError:(id)error;
- (void)efficientlyFetchManagedObjectsWithEntityName:(id)name byAndPredicates:(id)predicates sortDescriptors:(id)descriptors andLimit:(unint64_t)limit fetchBatchSize:(unint64_t)size andApplyBlock:(id)block;
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
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __31__ULStore_commitChangesToStore__block_invoke;
  v15[3] = &unk_2798D4908;
  v15[4] = self;
  v15[5] = &v16;
  [managedObjectContext performBlockAndWait:v15];

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
      mOClass = [objc_opt_class() MOClass];
      v7 = NSStringFromClass(mOClass);
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
      mOClass2 = [objc_opt_class() MOClass];
      v11 = NSStringFromClass(mOClass2);
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
  maxEntriesInTable = [objc_opt_class() maxEntriesInTable];
  v4 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseMaintenanceKeepPercentage"];
  v7 = [defaultsDictionary objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v7 floatValue];
  }

  else
  {
    [&unk_286A72D20 floatValue];
  }

  v9 = v8;

  mOClass = [objc_opt_class() MOClass];
  v11 = NSStringFromClass(mOClass);
  defaultSortProperty = [objc_opt_class() defaultSortProperty];
  v13 = [(ULStore *)self deleteOldestRecordsForEntityName:v11 sortProperty:defaultSortProperty maxRecordsToKeep:(v9 * maxEntriesInTable)];

  return v13;
}

- (ULStore)initWithDbStore:(ULDatabaseStoreInterface *)store
{
  v10.receiver = self;
  v10.super_class = ULStore;
  v4 = [(ULStore *)&v10 init];
  v5 = v4;
  if (v4)
  {
    [(ULStore *)v4 setDbStore:store];
    dbStore = [(ULStore *)v5 dbStore];
    v7 = (*(*dbStore + 16))(dbStore);
    createManagedObjectContext = [v7 createManagedObjectContext];
    [(ULStore *)v5 setManagedObjectContext:createManagedObjectContext];
  }

  return v5;
}

- (void)resetMOC
{
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __19__ULStore_resetMOC__block_invoke;
  v4[3] = &unk_2798D4160;
  v4[4] = self;
  [managedObjectContext performBlockAndWait:v4];
}

void __19__ULStore_resetMOC__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) managedObjectContext];
  [v1 reset];
}

- (id)fetchManagedObjectsWithEntityName:(id)name byAndPredicates:(id)predicates sortDescriptors:(id)descriptors andLimit:(unint64_t)limit
{
  nameCopy = name;
  predicatesCopy = predicates;
  descriptorsCopy = descriptors;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v14 = [(ULStore *)self fetchManagedObjectsWithEntityName:nameCopy byAndPredicates:predicatesCopy sortDescriptors:descriptorsCopy andLimit:limit withManagedObjectContext:managedObjectContext];

  return v14;
}

- (id)fetchManagedObjectsWithEntityName:(id)name byAndPredicates:(id)predicates sortDescriptors:(id)descriptors andLimit:(unint64_t)limit withManagedObjectContext:(id)context
{
  v7 = [(ULStore *)self fetchManagedObjectsWithEntityName:name byAndPredicates:predicates sortDescriptors:descriptors andLimit:limit returnObjectsAsFaults:0 withManagedObjectContext:context];

  return v7;
}

- (id)fetchManagedObjectsWithEntityName:(id)name byAndPredicates:(id)predicates sortDescriptors:(id)descriptors andLimit:(unint64_t)limit returnObjectsAsFaults:(BOOL)faults withManagedObjectContext:(id)context
{
  v77 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  predicatesCopy = predicates;
  descriptorsCopy = descriptors;
  contextCopy = context;
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
  v18 = nameCopy;
  v41 = v18;
  v36 = predicatesCopy;
  v42 = v36;
  v19 = descriptorsCopy;
  limitCopy = limit;
  faultsCopy = faults;
  v43 = v19;
  v46 = &v56;
  v20 = contextCopy;
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
      mOClass = [objc_opt_class() MOClass];
      v25 = NSStringFromClass(mOClass);
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
      mOClass2 = [objc_opt_class() MOClass];
      v31 = NSStringFromClass(mOClass2);
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

- (void)efficientlyFetchManagedObjectsWithEntityName:(id)name byAndPredicates:(id)predicates sortDescriptors:(id)descriptors andLimit:(unint64_t)limit fetchBatchSize:(unint64_t)size andApplyBlock:(id)block
{
  nameCopy = name;
  predicatesCopy = predicates;
  descriptorsCopy = descriptors;
  blockCopy = block;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __126__ULStore_efficientlyFetchManagedObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit_fetchBatchSize_andApplyBlock___block_invoke;
  v24[3] = &unk_2798D4958;
  v23 = nameCopy;
  v19 = nameCopy;
  v25 = v19;
  v20 = predicatesCopy;
  v26 = v20;
  v21 = descriptorsCopy;
  limitCopy = limit;
  sizeCopy = size;
  v27 = v21;
  selfCopy = self;
  v22 = blockCopy;
  v29 = v22;
  [managedObjectContext performBlockAndWait:{v24, v23}];
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

- (BOOL)batchTransferManagedObjectsWithEntityName:(id)name byAndPredicates:(id)predicates sortDescriptors:(id)descriptors batchSize:(unint64_t)size limit:(unint64_t)limit intoTargetStore:(id)store
{
  nameCopy = name;
  predicatesCopy = predicates;
  descriptorsCopy = descriptors;
  storeCopy = store;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __117__ULStore_batchTransferManagedObjectsWithEntityName_byAndPredicates_sortDescriptors_batchSize_limit_intoTargetStore___block_invoke;
  v24[3] = &unk_2798D4980;
  v24[4] = self;
  v19 = nameCopy;
  v25 = v19;
  v20 = predicatesCopy;
  v26 = v20;
  v21 = descriptorsCopy;
  sizeCopy = size;
  limitCopy = limit;
  v27 = v21;
  v29 = &v32;
  v22 = storeCopy;
  v28 = v22;
  [managedObjectContext performBlockAndWait:v24];

  LOBYTE(predicatesCopy) = *(v33 + 24);
  _Block_object_dispose(&v32, 8);

  return predicatesCopy;
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

- (id)fetchManagedObjectsForEntityName:(id)name propertiesToFetch:(id)fetch propertiesToGroupBy:(id)by byAndPredicates:(id)predicates sortDescriptors:(id)descriptors andLimit:(unint64_t)limit
{
  nameCopy = name;
  fetchCopy = fetch;
  byCopy = by;
  predicatesCopy = predicates;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__24;
  v40 = __Block_byref_object_dispose__24;
  descriptorsCopy = descriptors;
  array = [MEMORY[0x277CBEB18] array];
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __123__ULStore_fetchManagedObjectsForEntityName_propertiesToFetch_propertiesToGroupBy_byAndPredicates_sortDescriptors_andLimit___block_invoke;
  v27[3] = &unk_2798D45A0;
  v19 = fetchCopy;
  v28 = v19;
  selfCopy = self;
  v20 = nameCopy;
  v30 = v20;
  v21 = byCopy;
  v31 = v21;
  v22 = predicatesCopy;
  v32 = v22;
  v23 = descriptorsCopy;
  v33 = v23;
  v34 = &v36;
  limitCopy = limit;
  [managedObjectContext performBlockAndWait:v27];

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

- (id)fetchPropertiesForEntityName:(id)name propertiesToFetch:(id)fetch propertiesToGroupBy:(id)by distinctResults:(BOOL)results byAndPredicates:(id)predicates sortDescriptors:(id)descriptors andLimit:(unint64_t)limit resetContext:(BOOL)self0
{
  v80 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  fetchCopy = fetch;
  byCopy = by;
  predicatesCopy = predicates;
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
  descriptorsCopy = descriptors;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __148__ULStore_fetchPropertiesForEntityName_propertiesToFetch_propertiesToGroupBy_distinctResults_byAndPredicates_sortDescriptors_andLimit_resetContext___block_invoke;
  v40[3] = &unk_2798D49A8;
  v47 = &v53;
  v38 = nameCopy;
  v41 = v38;
  v20 = predicatesCopy;
  v42 = v20;
  v21 = descriptorsCopy;
  v43 = v21;
  limitCopy = limit;
  v22 = fetchCopy;
  v44 = v22;
  v23 = byCopy;
  resultsCopy = results;
  v45 = v23;
  selfCopy = self;
  v48 = &v59;
  v49 = &v65;
  contextCopy = context;
  [managedObjectContext performBlockAndWait:v40];

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
      mOClass = [objc_opt_class() MOClass];
      v27 = NSStringFromClass(mOClass);
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
      mOClass2 = [objc_opt_class() MOClass];
      v32 = NSStringFromClass(mOClass2);
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

- (id)countManagedObjectsWithEntityName:(id)name byAndPredicates:(id)predicates sortDescriptors:(id)descriptors andLimit:(unint64_t)limit
{
  v64 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  predicatesCopy = predicates;
  descriptorsCopy = descriptors;
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
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __86__ULStore_countManagedObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit___block_invoke;
  v30[3] = &unk_2798D49D0;
  v35 = &v43;
  v14 = nameCopy;
  v31 = v14;
  v15 = predicatesCopy;
  v32 = v15;
  v16 = descriptorsCopy;
  v37 = &v49;
  limitCopy = limit;
  v33 = v16;
  selfCopy = self;
  v36 = &v39;
  [managedObjectContext performBlockAndWait:v30];

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
      mOClass = [objc_opt_class() MOClass];
      v20 = NSStringFromClass(mOClass);
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
      mOClass2 = [objc_opt_class() MOClass];
      v25 = NSStringFromClass(mOClass2);
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

- (BOOL)batchDeleteObjectsWithEntityName:(id)name byAndPredicates:(id)predicates sortDescriptors:(id)descriptors andLimit:(unint64_t)limit
{
  v59 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  predicatesCopy = predicates;
  descriptorsCopy = descriptors;
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
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __85__ULStore_batchDeleteObjectsWithEntityName_byAndPredicates_sortDescriptors_andLimit___block_invoke;
  v30[3] = &unk_2798D49F8;
  v14 = nameCopy;
  v31 = v14;
  v15 = predicatesCopy;
  v32 = v15;
  v16 = descriptorsCopy;
  v36 = &v44;
  limitCopy = limit;
  v33 = v16;
  selfCopy = self;
  v35 = &v38;
  [managedObjectContext performBlockAndWait:v30];

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
      mOClass = [objc_opt_class() MOClass];
      v20 = NSStringFromClass(mOClass);
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
      mOClass2 = [objc_opt_class() MOClass];
      v25 = NSStringFromClass(mOClass2);
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

- (id)countAllRecordsForEntityName:(id)name
{
  v3 = [(ULStore *)self countManagedObjectsWithEntityName:name byAndPredicates:0 sortDescriptors:0 andLimit:0];

  return v3;
}

- (BOOL)deleteAllRecordsForEntityName:(id)name
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULStore deleteAllRecordsForEntityName:];
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315138;
    uTF8String = [nameCopy UTF8String];
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "Deleting all records for entity: %s", &v24, 0xCu);
  }

  v6 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v6 defaultsDictionary];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBatchDeleteEntriesIterationLimit"];
  v9 = [defaultsDictionary objectForKey:v8];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v9 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71BE0 unsignedIntValue];
  }

  v11 = unsignedIntValue;

  if (v11)
  {
    v12 = [(ULStore *)self countAllRecordsForEntityName:nameCopy];
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
          v20 = [(ULStore *)self batchDeleteObjectsWithEntityName:nameCopy byAndPredicates:0 sortDescriptors:0 andLimit:v15];
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
    LOBYTE(v20) = [(ULStore *)self batchDeleteObjectsWithEntityName:nameCopy byAndPredicates:0 sortDescriptors:0 andLimit:0];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)deleteOldestRecordsForEntityName:(id)name sortProperty:(id)property maxRecordsToKeep:(unsigned int)keep
{
  v31 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  propertyCopy = property;
  v10 = [(ULStore *)self countAllRecordsForEntityName:nameCopy];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 unsignedIntValue] - keep;
    if (v12 < 0)
    {
      v18 = 1;
    }

    else
    {
      v13 = +[ULDefaultsSingleton shared];
      defaultsDictionary = [v13 defaultsDictionary];

      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseFreeSpacePercentage"];
      v16 = [defaultsDictionary objectForKey:v15];
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

      v20 = v12 + (v19 * keep);
      v21 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        uTF8String = [nameCopy UTF8String];
        v29 = 1024;
        v30 = v20;
        _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_DEFAULT, "Freeing up database space for entity: %s, Num Records to delete: %d", buf, 0x12u);
      }

      v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:propertyCopy ascending:1];
      v26 = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      v18 = [(ULStore *)self batchDeleteObjectsWithEntityName:nameCopy byAndPredicates:0 sortDescriptors:v23 andLimit:v20];
    }
  }

  else
  {
    v18 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)deleteRecordsForEntityName:(id)name sortProperty:(id)property olderThan:(double)than orNewerThan:(double)newerThan
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  propertyCopy = property;
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULStore deleteAllRecordsForEntityName:];
  }

  v12 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    uTF8String = [nameCopy UTF8String];
    _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "Deleting old records for entity: %s", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  v14 = MEMORY[0x277CCAC30];
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:than];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:newerThan];
  v17 = [v14 predicateWithFormat:@"%K < %@ || %K > %@", propertyCopy, v15, propertyCopy, v16];
  [array addObject:v17];

  v18 = [(ULStore *)self batchDeleteObjectsWithEntityName:nameCopy byAndPredicates:array sortDescriptors:0 andLimit:0];
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)batchUpdateObjectsWithEntityName:(id)name predicate:(id)predicate propertiesToUpdate:(id)update
{
  v56 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  predicateCopy = predicate;
  updateCopy = update;
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
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __73__ULStore_batchUpdateObjectsWithEntityName_predicate_propertiesToUpdate___block_invoke;
  v28[3] = &unk_2798D4A20;
  v33 = &v35;
  v12 = nameCopy;
  v29 = v12;
  v13 = predicateCopy;
  v30 = v13;
  v14 = updateCopy;
  v31 = v14;
  selfCopy = self;
  v34 = &v41;
  [managedObjectContext performBlockAndWait:v28];

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
      mOClass = [objc_opt_class() MOClass];
      v18 = NSStringFromClass(mOClass);
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
      mOClass2 = [objc_opt_class() MOClass];
      v23 = NSStringFromClass(mOClass2);
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
  mOClass = [objc_opt_class() MOClass];
  v4 = NSStringFromClass(mOClass);
  LOBYTE(self) = [(ULStore *)self deleteAllRecordsForEntityName:v4];

  return self;
}

- (BOOL)deleteRecordsOlderThan:(double)than orNewerThan:(double)newerThan
{
  mOClass = [objc_opt_class() MOClass];
  v8 = NSStringFromClass(mOClass);
  defaultSortProperty = [objc_opt_class() defaultSortProperty];
  LOBYTE(self) = [(ULStore *)self deleteRecordsForEntityName:v8 sortProperty:defaultSortProperty olderThan:than orNewerThan:newerThan];

  return self;
}

- (unsigned)count
{
  mOClass = [objc_opt_class() MOClass];
  v4 = NSStringFromClass(mOClass);
  v5 = [(ULStore *)self countAllRecordsForEntityName:v4];

  if (v5)
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (id)_batchFetchManagedObjectsWithEntityName:(id)name byAndPredicates:(id)predicates sortDescriptors:(id)descriptors batchSize:(unint64_t)size limit:(unint64_t)limit error:(id *)error
{
  v71 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  predicatesCopy = predicates;
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
  descriptorsCopy = descriptors;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __105__ULStore__batchFetchManagedObjectsWithEntityName_byAndPredicates_sortDescriptors_batchSize_limit_error___block_invoke;
  v34[3] = &unk_2798D4A48;
  v39 = &v44;
  v16 = nameCopy;
  v35 = v16;
  v17 = predicatesCopy;
  v36 = v17;
  v18 = descriptorsCopy;
  limitCopy = limit;
  sizeCopy = size;
  v37 = v18;
  selfCopy = self;
  v40 = &v50;
  v41 = &v56;
  [managedObjectContext performBlockAndWait:v34];

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
      mOClass = [objc_opt_class() MOClass];
      v22 = NSStringFromClass(mOClass);
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
      mOClass2 = [objc_opt_class() MOClass];
      v27 = NSStringFromClass(mOClass2);
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

    if (error)
    {
      *error = v57[5];
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

- (BOOL)_insertFetchedBatchedObjects:(id)objects usingBatchSize:(unint64_t)size
{
  objectsCopy = objects;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__ULStore__insertFetchedBatchedObjects_usingBatchSize___block_invoke;
  v10[3] = &unk_2798D4A70;
  v8 = objectsCopy;
  v13 = &v15;
  sizeCopy = size;
  v11 = v8;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:v10];

  LOBYTE(objectsCopy) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return objectsCopy;
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

- (void)_handleDatabaseError:(id)error
{
  errorCopy = error;
  dbStore = [(ULStore *)self dbStore];
  v5 = (*(dbStore->var0 + 2))(dbStore);
  isMainDatabase = [v5 isMainDatabase];

  if (isMainDatabase)
  {
    dbStore2 = [(ULStore *)self dbStore];
    v8 = (*(dbStore2->var0 + 2))(dbStore2);
    [v8 handleDatabaseError:errorCopy];
  }
}

- (void)_efficientlyEnumerateManagedObjectsInFetchRequest:(id)request usingManagedObjectContext:(id)context andApplyBlock:(id)block
{
  v47 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  contextCopy = context;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  v30 = requestCopy;
  v36 = 0;
  v35 = 0;
  v32 = contextCopy;
  v33 = [contextCopy executeFetchRequest:requestCopy error:&v35];
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
      mOClass = [objc_opt_class() MOClass];
      v12 = NSStringFromClass(mOClass);
      *buf = 68289795;
      v38 = 0;
      v39 = 2082;
      v40 = "";
      v41 = 2114;
      v42 = v31;
      v43 = 2113;
      v44 = v12;
      v45 = 2113;
      v46 = requestCopy;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:efficientlyEnumerateManagedObjectsInFetchRequest: error in executeFetchRequest, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@, fetchRequest:%{private, location:escape_only}@}", buf, 0x30u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULStore commitChangesToStore];
    }

    v13 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v13))
    {
      mOClass2 = [objc_opt_class() MOClass];
      v15 = NSStringFromClass(mOClass2);
      *buf = 68289795;
      v38 = 0;
      v39 = 2082;
      v40 = "";
      v41 = 2114;
      v42 = v31;
      v43 = 2113;
      v44 = v15;
      v45 = 2113;
      v46 = requestCopy;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "efficientlyEnumerateManagedObjectsInFetchRequest: error in executeFetchRequest", "{msg%{public}.0s:efficientlyEnumerateManagedObjectsInFetchRequest: error in executeFetchRequest, error:%{public, location:escape_only}@, Store MO:%{private, location:escape_only}@, fetchRequest:%{private, location:escape_only}@}", buf, 0x30u);
    }

    [(ULStore *)self _handleDatabaseError:v31];
    blockCopy[2](blockCopy, 0, &v36);
  }

  else
  {
    fetchBatchSize = [requestCopy fetchBatchSize];
    v17 = [v33 count];
    v18 = v17;
    if (v17 / fetchBatchSize * fetchBatchSize == v17)
    {
      v19 = v17 / fetchBatchSize;
    }

    else
    {
      v19 = v17 / fetchBatchSize + 1;
    }

    if (v19 && (v36 & 1) == 0)
    {
      v20 = 0;
      v21 = 0;
      v22 = 1;
      v23 = fetchBatchSize;
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
        (blockCopy)[2](blockCopy, v27, &v36);

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
        v21 += fetchBatchSize;
        v23 += fetchBatchSize;
        v20 -= fetchBatchSize;
      }

      while ((v36 & 1) == 0);
    }

    [v32 reset];
  }

  objc_autoreleasePoolPop(context);
  v28 = *MEMORY[0x277D85DE8];
}

@end