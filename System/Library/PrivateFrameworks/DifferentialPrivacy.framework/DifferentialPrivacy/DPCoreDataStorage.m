@interface DPCoreDataStorage
@end

@implementation DPCoreDataStorage

void __71___DPCoreDataStorage_initWithDirectory_databaseName_modelURL_readOnly___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDataProtectionChangeFor:v5 willBeAvailable:a3];
}

void __56___DPCoreDataStorage_invalidateManagedObjectContextFor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContexts];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = os_transaction_create();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56___DPCoreDataStorage_invalidateManagedObjectContextFor___block_invoke_2;
  v8[3] = &unk_27858AD68;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  [v7 performWithOptions:4 andBlock:v8];
}

uint64_t __56___DPCoreDataStorage_invalidateManagedObjectContextFor___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) reset];
  v2 = [*(a1 + 40) managedObjectContexts];
  [v2 removeObjectForKey:*(a1 + 48)];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 invalidatePersistentStoreCoordinatorFor:v4];
}

void __62___DPCoreDataStorage_invalidatePersistentStoreCoordinatorFor___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinators];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [v3 persistentStores];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 removePersistentStore:*(*(&v11 + 1) + 8 * v8++) error:0];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    v9 = [*(a1 + 32) persistentStoreCoordinators];
    [v9 removeObjectForKey:*(a1 + 40)];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke(uint64_t a1)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) persistentStoreCoordinators];
  v4 = [v3 objectForKeyedSubscript:*(v2 + 8)];
  v5 = *(*(v2 + 16) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(v2 + 16) + 8) + 40);
  if (*(v2 + 32))
  {
    if (!v7)
    {
      v8 = *v2;
      v9 = objc_opt_class();
      v10 = [*v2 databaseDirectory];
      v55 = 0;
      LOBYTE(v9) = [v9 createDatabaseDirectory:v10 error:&v55];
      v11 = v55;

      if ((v9 & 1) == 0 && [v11 code] != 516)
      {
        v32 = +[_DPLog framework];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke_cold_1(v2, v11, v32);
        }

        v33 = *(*(a1 + 48) + 8);
        v12 = *(v33 + 40);
        *(v33 + 40) = 0;
        goto LABEL_44;
      }

      v12 = [*v2 managedObjectModel];
      if (!v12)
      {
        v31 = +[_DPLog framework];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke_cold_5(v2, v31);
        }

        v19 = +[_DPCoreAnalyticsCollector sharedInstance];
        v56 = @"nilMOM";
        v57[0] = MEMORY[0x277CBEC38];
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
        [v19 reportMetricsForEvent:@"com.apple.DifferentialPrivacy.CoreData" withMetrics:v21];
        goto LABEL_43;
      }

      v13 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v12];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v16 = MEMORY[0x277CBEBC0];
      v17 = [*(a1 + 32) paths];
      v18 = [v17 objectForKeyedSubscript:*(a1 + 40)];
      v19 = [v16 fileURLWithPath:v18];

      v20 = *(a1 + 32);
      v21 = [objc_opt_class() persistentStoreOptionsFor:*(a1 + 40) readOnly:{objc_msgSend(v20, "readOnly")}];
      v22 = [v21 mutableCopy];
      [v22 removeObjectForKey:*MEMORY[0x277CBE1D8]];
      v23 = [v22 copy];
      v24 = *(*(*(a1 + 48) + 8) + 40);
      v25 = *MEMORY[0x277CBE2E8];
      v54 = v11;
      v26 = [v24 addPersistentStoreWithType:v25 configuration:0 URL:v19 options:v23 error:&v54];
      v27 = v54;

      if (v26)
      {
        v11 = v27;
LABEL_40:
        v47 = *(*(*(a1 + 48) + 8) + 40);
        if (v47)
        {
          v48 = [*(a1 + 32) persistentStoreCoordinators];
          [v48 setObject:v47 forKeyedSubscript:*(a1 + 40)];
        }

LABEL_43:
LABEL_44:

        goto LABEL_45;
      }

      v34 = [v27 domain];
      if ([v34 isEqualToString:*MEMORY[0x277CCA050]])
      {
        if ([v27 code] == 134020)
        {

LABEL_21:
          v35 = [v21 mutableCopy];
          [v35 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE248]];
          v36 = *(*(*(a1 + 48) + 8) + 40);
          v53 = 0;
          v50 = v35;
          LOBYTE(v35) = [v36 destroyPersistentStoreAtURL:v19 withType:v25 options:v35 error:&v53];
          v27 = v53;
          if (v35)
          {
            goto LABEL_25;
          }

          v37 = +[_DPLog framework];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke_cold_2();
          }

          [v50 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE2A8]];
          if ([*(*(*(a1 + 48) + 8) + 40) destroyPersistentStoreAtURL:v19 withType:v25 options:v50 error:0])
          {
LABEL_25:
            v38 = +[_DPLog framework];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_22622D000, v38, OS_LOG_TYPE_DEFAULT, "Deleted persistent store with old schema.", buf, 2u);
            }

            v39 = *(*(*(a1 + 48) + 8) + 40);
            v51 = v27;
            v26 = [v39 addPersistentStoreWithType:v25 configuration:0 URL:v19 options:v21 error:&v51];
            v11 = v51;

            if (v26)
            {
              goto LABEL_40;
            }

            goto LABEL_37;
          }

          v43 = +[_DPLog framework];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke_cold_3();
          }

          v34 = v50;
          goto LABEL_35;
        }

        if ([v27 code] > 134099)
        {
          v40 = [v27 code];
          v41 = v34;
          v42 = v40;

          if (v42 >= 134171)
          {
            goto LABEL_36;
          }

          goto LABEL_21;
        }
      }

LABEL_35:

LABEL_36:
      v11 = v27;
LABEL_37:
      v44 = +[_DPLog framework];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke_cold_4();
      }

      [*(a1 + 32) handleDatabaseErrors:v11 forPSC:*(*(*(a1 + 48) + 8) + 40) protectionClass:*(a1 + 40)];
      v45 = *(*(a1 + 48) + 8);
      v46 = *(v45 + 40);
      *(v45 + 40) = 0;

      v26 = 0;
      goto LABEL_40;
    }

LABEL_45:
    v49 = *MEMORY[0x277D85DE8];
    return;
  }

  if (!v7)
  {
    goto LABEL_45;
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v28 = *(*(a1 + 48) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = 0;
  v30 = *MEMORY[0x277D85DE8];
}

void __44___DPCoreDataStorage_mocForProtectionClass___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContexts];
  v3 = (a1 + 40);
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 48) + 8) + 40);
  if (*(a1 + 64))
  {
    if (v7)
    {
      return;
    }

    v8 = [*(a1 + 32) persistentStoreCoordinatorFor:*(a1 + 40)];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      [*(*(*(a1 + 48) + 8) + 40) setPersistentStoreCoordinator:v8];
      [*(*(*(a1 + 48) + 8) + 40) setMergePolicy:*MEMORY[0x277CBE1C8]];
      [*(*(*(a1 + 48) + 8) + 40) setUndoManager:0];
      v12 = *(*(*(a1 + 48) + 8) + 40);
      v13 = [*(a1 + 32) managedObjectContexts];
      [v13 setObject:v12 forKeyedSubscript:*(a1 + 40)];
    }

    else
    {
      v22 = +[_DPLog daemon];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __44___DPCoreDataStorage_mocForProtectionClass___block_invoke_cold_2(v3, v22, v23, v24, v25, v26, v27, v28);
      }
    }
  }

  else
  {
    if (v7)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = 0;
    }

    v8 = +[_DPLog daemon];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __44___DPCoreDataStorage_mocForProtectionClass___block_invoke_cold_1((a1 + 40), v8, v16, v17, v18, v19, v20, v21);
    }
  }
}

void __105___DPCoreDataStorage_deleteObjectsInContext_entityName_predicate_sortDescriptors_fetchOffset_fetchLimit___block_invoke(uint64_t a1)
{
  v7 = objc_opt_new();
  v2 = [MEMORY[0x277CBE408] entityForName:*(a1 + 32) inManagedObjectContext:*(a1 + 40)];
  [v7 setEntity:v2];

  [v7 setFetchLimit:*(a1 + 72)];
  [v7 setIncludesSubentities:0];
  [v7 setIncludesPendingChanges:0];
  [v7 setFetchOffset:*(a1 + 80)];
  if (*(a1 + 48))
  {
    [v7 setPredicate:?];
  }

  v3 = *(a1 + 56);
  if (v3 && [v3 count])
  {
    [v7 setSortDescriptors:*(a1 + 56)];
  }

  v4 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v7];
  [v4 setResultType:2];
  v5 = [*(a1 + 40) executeRequest:v4 error:0];
  v6 = [v5 result];
  *(*(*(a1 + 64) + 8) + 24) = [v6 unsignedIntegerValue];

  [*(a1 + 40) reset];
}

void __65___DPCoreDataStorage_countObjectsInContext_entityName_predicate___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CBE408] entityForName:*(a1 + 32) inManagedObjectContext:*(a1 + 40)];
  [v2 setEntity:v3];
  [v2 setIncludesSubentities:0];
  [v2 setIncludesPendingChanges:0];
  if (*(a1 + 48))
  {
    [v2 setPredicate:?];
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) countForFetchRequest:v2 error:0];
}

uint64_t __50___DPCoreDataStorage_deleteStorageFor_obliterate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateManagedObjectContextFor:*(a1 + 40)];
  result = [*(a1 + 32) deleteDatabaseForPSC:*(a1 + 48) protectionClass:*(a1 + 40) obliterate:*(a1 + 64)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*a1 databaseDirectory];
  OUTLINED_FUNCTION_1();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_22622D000, a3, OS_LOG_TYPE_ERROR, "%@ : did not exist and could not be created: %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "Failed to delete persistent store with old schema, retrying with unlink: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "Failed to delete persistent store with old schema: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "Failed to add persistent store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke_cold_5(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 modelURL];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_22622D000, a2, OS_LOG_TYPE_ERROR, "Failed to load Managed Object Model from %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __44___DPCoreDataStorage_mocForProtectionClass___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_22622D000, a2, a3, "NSManagedObjectContext not available for protectionClass=%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __44___DPCoreDataStorage_mocForProtectionClass___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_22622D000, a2, a3, "NSPersistentStoreCoordinator is nil for protectionClass=%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __65___DPCoreDataStorage_countObjectsInContext_entityName_predicate___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "Caught %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end