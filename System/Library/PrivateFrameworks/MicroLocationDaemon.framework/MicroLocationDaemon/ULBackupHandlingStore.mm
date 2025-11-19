@interface ULBackupHandlingStore
- (BOOL)_commitBatchToStore:(id)a3 forEntityName:(id)a4 stop:(BOOL *)a5;
- (BOOL)_transferLOIsUsingGroupIdsFilter:(BOOL)a3;
- (BOOL)_transferRecordsForEntityName:(id)a3 relation:(id)a4 relationUUID:(id)a5 uuidMap:(id)a6 sortAttribute:(id)a7 limit:(unint64_t)a8 fetchBatchSize:(unint64_t)a9;
- (BOOL)exportData;
- (BOOL)importData;
- (ULBackupHandlingStore)initWithSourceDatabase:(ULDatabaseStoreInterface *)a3 targetDatabase:(ULDatabaseStoreInterface *)a4 andCancelFunc:(function<BOOL)(;
- (id)_getDistinctHomeLoiGroupIds;
- (id)_getUUIDToObjectIDMapForEntityName:(id)a3 uuidAttribute:(id)a4 sortAttribute:(id)a5 atStore:(id)a6;
- (void)_transferLOIsInBatch:(id)a3 toStore:(id)a4;
- (void)_transferRecordsInBatch:(id)a3 forEntityName:(id)a4 relation:(id)a5 relationUUID:(id)a6 uuidMap:(id)a7 toStore:(id)a8;
@end

@implementation ULBackupHandlingStore

- (ULBackupHandlingStore)initWithSourceDatabase:(ULDatabaseStoreInterface *)a3 targetDatabase:(ULDatabaseStoreInterface *)a4 andCancelFunc:(function<BOOL)(
{
  v13 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = ULBackupHandlingStore;
  v7 = [(ULStore *)&v11 initWithDbStore:a3];
  if (v7)
  {
    v8 = [[ULStore alloc] initWithDbStore:a4];
    [(ULBackupHandlingStore *)v7 setTargetStore:v8];

    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v12, a5);
    [(ULBackupHandlingStore *)v7 setShouldCancel:v12];
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v12);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)exportData
{
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBackupHandlingStore exportData];
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "Exporting milo data", buf, 2u);
  }

  v4 = [(ULBackupHandlingStore *)self _getDistinctHomeLoiGroupIds];
  [(ULBackupHandlingStore *)self setDistinctHomeloiGroupIds:v4];

  v5 = [(ULBackupHandlingStore *)self distinctHomeloiGroupIds];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(ULBackupHandlingStore *)self _transferDataUsingGroupIdsFilter:1];
    [(ULBackupHandlingStore *)self logTransferResult:v7 isExport:1];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupHandlingStore exportData];
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "No Home LOI Group IDs found in LOI table. Will backup an empty db", v10, 2u);
    }

    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)importData
{
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBackupHandlingStore exportData];
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "Importing milo data", v6, 2u);
  }

  v4 = [(ULBackupHandlingStore *)self _transferDataUsingGroupIdsFilter:0];
  [(ULBackupHandlingStore *)self logTransferResult:v4 isExport:0];
  return v4;
}

- (id)_getDistinctHomeLoiGroupIds
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = MEMORY[0x277CCAC30];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"home"];
  v7 = [v5 predicateWithFormat:@"%K=%@", @"loiType", v6];
  [v4 addObject:v7];

  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v21[0] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v12 = +[ULDefaultsSingleton shared];
  v13 = [v12 defaultsDictionary];

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCloudBackupMaxLoiGroupIdsToExport"];
  v15 = [v13 objectForKey:v14];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = [v15 unsignedIntValue];
  }

  else
  {
    v16 = [&unk_286A71748 unsignedIntValue];
  }

  v17 = v16;

  v18 = [(ULStore *)self fetchPropertyForEntityName:v10 propertyToFetch:@"loiGroupId" distinctResults:1 byAndPredicates:v4 sortDescriptors:v11 andLimit:v17];

  objc_autoreleasePoolPop(v3);
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)_transferLOIsUsingGroupIdsFilter:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  [(ULBackupHandlingStore *)self shouldCancel];
  if (!v15)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v15 + 48))(v15);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v12);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    LOBYTE(v15) = 1;
    v7 = [(ULStore *)self managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__ULBackupHandlingStore__transferLOIsUsingGroupIdsFilter___block_invoke;
    v10[3] = &unk_2798D4550;
    v11 = a3;
    v10[4] = self;
    v10[5] = &v12;
    [v7 performBlockAndWait:v10];

    v6 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

void __58__ULBackupHandlingStore__transferLOIsUsingGroupIdsFilter___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v19 = [MEMORY[0x277CBEB18] array];
  if (*(a1 + 48) == 1)
  {
    v2 = MEMORY[0x277CCAC30];
    v3 = [*(a1 + 32) distinctHomeloiGroupIds];
    v4 = [v2 predicateWithFormat:@"%K IN %@", @"loiGroupId", v3];
    [v19 addObject:v4];
  }

  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v22[0] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v10 = ULSettings::get<ULSettings::CloudBackupDefaultTableLimit>();
  v11 = +[ULDefaultsSingleton shared];
  v12 = [v11 defaultsDictionary];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLoiTableMigrationPageSize"];
  v14 = [v12 objectForKey:v13];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = [v14 unsignedIntValue];
  }

  else
  {
    v15 = [&unk_286A71730 unsignedIntValue];
  }

  v16 = v15;

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__ULBackupHandlingStore__transferLOIsUsingGroupIdsFilter___block_invoke_2;
  v20[3] = &unk_2798D4528;
  v21 = *(a1 + 32);
  [v6 efficientlyFetchManagedObjectsWithEntityName:v8 byAndPredicates:v19 sortDescriptors:v9 andLimit:v10 fetchBatchSize:v16 andApplyBlock:v20];

  v17 = [*(a1 + 32) managedObjectContext];
  [v17 reset];

  v18 = *MEMORY[0x277D85DE8];
}

void __58__ULBackupHandlingStore__transferLOIsUsingGroupIdsFilter___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      [v6 shouldCancel];
      if (*(&v18 + 1))
      {
        v7 = (*(**(&v18 + 1) + 48))(*(&v18 + 1));
        std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v17);
        if (v7)
        {
          *a3 = 1;
          *(*(*(a1 + 40) + 8) + 24) = 0;
        }

        else
        {
          v8 = [*(a1 + 32) targetStore];
          v9 = [v8 managedObjectContext];
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __58__ULBackupHandlingStore__transferLOIsUsingGroupIdsFilter___block_invoke_3;
          v13[3] = &unk_2798D4500;
          v13[4] = *(a1 + 32);
          v10 = v5;
          v11 = *(a1 + 40);
          v14 = v10;
          v15 = v11;
          v16 = a3;
          [v9 performBlockAndWait:v13];
        }

        goto LABEL_7;
      }
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }

LABEL_7:

  v12 = *MEMORY[0x277D85DE8];
}

void __58__ULBackupHandlingStore__transferLOIsUsingGroupIdsFilter___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = [v2 targetStore];
  [v2 _transferLOIsInBatch:v3 toStore:?];

  v4 = a1[4];
  v8 = [v4 targetStore];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  *(*(a1[6] + 8) + 24) &= [v4 _commitBatchToStore:v8 forEntityName:v6 stop:a1[7]];
}

- (void)_transferLOIsInBatch:(id)a3 toStore:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v11 = [ULLoiMO alloc];
        v12 = [v6 managedObjectContext];
        v13 = [(ULLoiMO *)v11 initWithContext:v12];

        v14 = [v10 entity];
        v15 = [v14 attributesByName];
        v16 = [v15 allKeys];
        v17 = [v10 dictionaryWithValuesForKeys:v16];
        [(ULLoiMO *)v13 setValuesForKeysWithDictionary:v17];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_commitBatchToStore:(id)a3 forEntityName:(id)a4 stop:(BOOL *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 managedObjectContext];
  v10 = [v9 hasChanges];

  if (v10)
  {
    v11 = [v7 managedObjectContext];
    v19 = 0;
    v12 = [v11 save:&v19];
    v13 = v19;
  }

  else
  {
    v13 = 0;
    v12 = 1;
  }

  v14 = [v7 managedObjectContext];
  [v14 reset];

  if (v13)
  {
    *a5 = 1;
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupHandlingStore exportData];
    }

    v15 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2114;
      v25 = v13;
      v26 = 2113;
      v27 = v8;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Backup: Error transferring batch. Could not save changes to store, error:%{public, location:escape_only}@, Entity:%{private, location:escape_only}@}", buf, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupHandlingStore exportData];
    }

    v16 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2114;
      v25 = v13;
      v26 = 2113;
      v27 = v8;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Backup: Error transferring batch. Could not save changes to store", "{msg%{public}.0s:Backup: Error transferring batch. Could not save changes to store, error:%{public, location:escape_only}@, Entity:%{private, location:escape_only}@}", buf, 0x26u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)_getUUIDToObjectIDMapForEntityName:(id)a3 uuidAttribute:(id)a4 sortAttribute:(id)a5 atStore:(id)a6
{
  v35[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v12 ascending:1];
  v15 = [(ULBackupHandlingStore *)self targetStore];
  v35[0] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v17 = [v13 managedObjectContext];
  v18 = [v15 fetchManagedObjectsWithEntityName:v10 byAndPredicates:0 sortDescriptors:v16 andLimit:0 returnObjectsAsFaults:1 withManagedObjectContext:v17];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = [MEMORY[0x277CBEB38] dictionary];
  v19 = [v13 managedObjectContext];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __96__ULBackupHandlingStore__getUUIDToObjectIDMapForEntityName_uuidAttribute_sortAttribute_atStore___block_invoke;
  v25[3] = &unk_2798D4578;
  v20 = v18;
  v26 = v20;
  v28 = &v29;
  v21 = v11;
  v27 = v21;
  [v19 performBlockAndWait:v25];

  v22 = v30[5];
  _Block_object_dispose(&v29, 8);

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __96__ULBackupHandlingStore__getUUIDToObjectIDMapForEntityName_uuidAttribute_sortAttribute_atStore___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 objectID];
        v8 = *(*(*(a1 + 48) + 8) + 40);
        v9 = [v6 valueForKey:*(a1 + 40)];
        [v8 setObject:v7 forKeyedSubscript:v9];
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_transferRecordsForEntityName:(id)a3 relation:(id)a4 relationUUID:(id)a5 uuidMap:(id)a6 sortAttribute:(id)a7 limit:(unint64_t)a8 fetchBatchSize:(unint64_t)a9
{
  v39 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  [(ULBackupHandlingStore *)self shouldCancel];
  if (!v38)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v20 = (*(*v38 + 48))(v38);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v35);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    LOBYTE(v38) = 1;
    v22 = [(ULStore *)self managedObjectContext];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __120__ULBackupHandlingStore__transferRecordsForEntityName_relation_relationUUID_uuidMap_sortAttribute_limit_fetchBatchSize___block_invoke;
    v25[3] = &unk_2798D45F0;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = self;
    v33 = a8;
    v34 = a9;
    v31 = v15;
    v32 = &v35;
    [v22 performBlockAndWait:v25];

    v21 = *(v36 + 24);
    _Block_object_dispose(&v35, 8);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

void __120__ULBackupHandlingStore__transferRecordsForEntityName_relation_relationUUID_uuidMap_sortAttribute_limit_fetchBatchSize___block_invoke(uint64_t a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = MEMORY[0x277CCAC30];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) allKeys];
  v7 = [v3 predicateWithFormat:@"%K.%K IN %@", v4, v5, v6];
  [v2 addObject:v7];

  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*(a1 + 56) ascending:0];
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v26[0] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v12 = *(a1 + 88);
  v13 = *(a1 + 96);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __120__ULBackupHandlingStore__transferRecordsForEntityName_relation_relationUUID_uuidMap_sortAttribute_limit_fetchBatchSize___block_invoke_2;
  v21[3] = &unk_2798D45C8;
  v25 = *(a1 + 80);
  v20 = *(a1 + 64);
  v14 = *(&v20 + 1);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  *&v17 = v15;
  *(&v17 + 1) = v16;
  v22 = v20;
  v23 = v17;
  v24 = *(a1 + 48);
  [v9 efficientlyFetchManagedObjectsWithEntityName:v10 byAndPredicates:v2 sortDescriptors:v11 andLimit:v12 fetchBatchSize:v13 andApplyBlock:v21];

  v18 = [*(a1 + 64) managedObjectContext];
  [v18 reset];

  v19 = *MEMORY[0x277D85DE8];
}

void __120__ULBackupHandlingStore__transferRecordsForEntityName_relation_relationUUID_uuidMap_sortAttribute_limit_fetchBatchSize___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      [v6 shouldCancel];
      if (*(&v24 + 1))
      {
        v7 = (*(**(&v24 + 1) + 48))(*(&v24 + 1));
        std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v23);
        if (v7)
        {
          *a3 = 1;
          *(*(*(a1 + 72) + 8) + 24) = 0;
        }

        else
        {
          v8 = [*(a1 + 32) targetStore];
          v9 = [v8 managedObjectContext];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __120__ULBackupHandlingStore__transferRecordsForEntityName_relation_relationUUID_uuidMap_sortAttribute_limit_fetchBatchSize___block_invoke_3;
          v17[3] = &unk_2798D45A0;
          v17[4] = *(a1 + 32);
          v18 = v5;
          v10 = *(a1 + 40);
          v11 = *(a1 + 48);
          v12 = *(a1 + 56);
          v13 = *(a1 + 64);
          *&v14 = v12;
          *(&v14 + 1) = v13;
          *&v15 = v10;
          *(&v15 + 1) = v11;
          v19 = v15;
          v20 = v14;
          v21 = *(a1 + 72);
          v22 = a3;
          [v9 performBlockAndWait:v17];
        }

        goto LABEL_7;
      }
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }

LABEL_7:

  v16 = *MEMORY[0x277D85DE8];
}

void __120__ULBackupHandlingStore__transferRecordsForEntityName_relation_relationUUID_uuidMap_sortAttribute_limit_fetchBatchSize___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  v12 = [v2 targetStore];
  [v2 _transferRecordsInBatch:v3 forEntityName:v4 relation:v5 relationUUID:v6 uuidMap:v7 toStore:?];

  v8 = a1[4];
  v9 = [v8 targetStore];
  v10 = a1[6];
  v11 = a1[11];
  v13 = v9;
  *(*(a1[10] + 8) + 24) &= [v8 _commitBatchToStore:? forEntityName:? stop:?];
}

- (void)_transferRecordsInBatch:(id)a3 forEntityName:(id)a4 relation:(id)a5 relationUUID:(id)a6 uuidMap:(id)a7 toStore:(id)a8
{
  v42 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v30 = a4;
  v36 = a5;
  v34 = a6;
  v33 = a7;
  v35 = a8;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v14)
  {
    v32 = *v38;
    do
    {
      v15 = 0;
      do
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v37 + 1) + 8 * v15);
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v36, v34];
        v18 = [v16 valueForKeyPath:v17];
        v19 = [v33 objectForKeyedSubscript:v18];

        if (v19)
        {
          v20 = [v35 managedObjectContext];
          v21 = [v20 existingObjectWithID:v19 error:0];

          if (v21)
          {
            v22 = MEMORY[0x277CBE408];
            v23 = [v35 managedObjectContext];
            v24 = [v22 insertNewObjectForEntityForName:v30 inManagedObjectContext:v23];

            v25 = [v16 entity];
            v26 = [v25 attributesByName];
            v27 = [v26 allKeys];
            v28 = [v16 dictionaryWithValuesForKeys:v27];
            [v24 setValuesForKeysWithDictionary:v28];

            [v24 setValue:v21 forKeyPath:v36];
          }
        }

        ++v15;
      }

      while (v14 != v15);
      v14 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v14);
  }

  v29 = *MEMORY[0x277D85DE8];
}

@end