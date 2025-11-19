@interface DKCoreDataStorage
@end

@implementation DKCoreDataStorage

void __86___DKCoreDataStorage_initWithDirectory_databaseName_modelURL_readOnly_localOnly_sync___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_DKCoreDataStorage *)WeakRetained handleDataProtectionChangeFor:v5 willBeAvailable:a3];
}

void __45___DKCoreDataStorage_handleClientCallForHelp__block_invoke(void *a1)
{
  v2 = MEMORY[0x1E695D5E0];
  v3 = a1[4];
  v4 = [*(a1[5] + 8) entities];
  v5 = [v4 firstObject];
  v6 = [v5 name];
  v7 = [v2 fetchRequestWithEntityName:v6];
  v10 = 0;
  [v3 countForFetchRequest:v7 error:&v10];
  v8 = v10;
  v9 = v10;

  if (v9)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v8);
  }
}

uint64_t __40___DKCoreDataStorage_managedObjectModel__block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v1 = gManagedObjectModelCache;
  gManagedObjectModelCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __93___DKCoreDataStorage_migratePersistentStoreAtURL_toManagedObjectModel_protectionClass_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[10];
  v7 = a1[11];
  v8 = *(a1[8] + 8);
  obj = *(v8 + 40);
  v9 = [(_DKCoreDataStorage *)v2 migratePersistentStoreAtURL:v3 toManagedObjectModel:v4 protectionClass:v5 startVersion:v6 endVersion:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(a1[9] + 8) + 24) = 1;
  }
}

void __68___DKCoreDataStorage__addStoresToCoordinator_protectionClass_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __68___DKCoreDataStorage__addStoresToCoordinator_protectionClass_error___block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __68___DKCoreDataStorage__addStoresToCoordinator_protectionClass_error___block_invoke_75(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v7 = v6;
  if (!a2 || v6)
  {
    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __68___DKCoreDataStorage__addStoresToCoordinator_protectionClass_error___block_invoke_75_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __57___DKCoreDataStorage_managedObjectContextFor_identifier___block_invoke(uint64_t a1)
{
  v3 = os_transaction_create();
  v2 = [*(a1 + 32) userInfo];
  [v2 setObject:v3 forKeyedSubscript:@"_DKTransaction"];
}

void __146___DKCoreDataStorage_deleteObjectsInContext_entityName_predicate_sortDescriptors_fetchOffset_fetchLimit_includeSubentities_includePendingChanges___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = [MEMORY[0x1E695D5B8] entityForName:*(a1 + 32) inManagedObjectContext:*(a1 + 40)];
  [v2 setEntity:v3];

  [v2 setFetchLimit:*(a1 + 80)];
  [v2 setIncludesSubentities:*(a1 + 96)];
  [v2 setIncludesPendingChanges:*(a1 + 97)];
  [v2 setFetchOffset:*(a1 + 88)];
  if (*(a1 + 48))
  {
    [v2 setPredicate:?];
  }

  v4 = *(a1 + 56);
  if (v4 && [v4 count])
  {
    [v2 setSortDescriptors:*(a1 + 56)];
  }

  v5 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v2];
  [v5 setResultType:2];
  v6 = a1 + 64;
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 64) + 8);
  obj = *(v8 + 40);
  v9 = [v7 executeRequest:v5 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v10 = [v9 result];
  *(*(*(a1 + 72) + 8) + 24) = [v10 integerValue];

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __146___DKCoreDataStorage_deleteObjectsInContext_entityName_predicate_sortDescriptors_fetchOffset_fetchLimit_includeSubentities_includePendingChanges___block_invoke_cold_1(a1 + 64);
    }

    v11 = [*(*(*v6 + 8) + 40) domain];
    if (![v11 isEqualToString:*MEMORY[0x1E696A250]])
    {
      goto LABEL_19;
    }

    v12 = [*(*(*v6 + 8) + 40) code] == 256;

    if (v12)
    {
      v13 = [*(*(*v6 + 8) + 40) userInfo];
      v11 = [v13 objectForKeyedSubscript:@"NSUnderlyingException"];

      if (objc_opt_respondsToSelector())
      {
        [v11 reason];
      }

      else
      {
        [v11 description];
      }
      v14 = ;
      if ([v14 containsString:@"Expression tree is too large"])
      {
        v15 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          v17 = *(a1 + 32);
          v18 = [*(a1 + 48) cd_sanitizeForLogging];
          __146___DKCoreDataStorage_deleteObjectsInContext_entityName_predicate_sortDescriptors_fetchOffset_fetchLimit_includeSubentities_includePendingChanges___block_invoke_cold_2(v17, v18, buf);
        }
      }

LABEL_19:
    }
  }

  [*(a1 + 40) reset];

  v19 = *MEMORY[0x1E69E9840];
}

void __106___DKCoreDataStorage_countObjectsInContext_entityName_predicate_includeSubentities_includePendingChanges___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = [MEMORY[0x1E695D5B8] entityForName:*(a1 + 32) inManagedObjectContext:*(a1 + 40)];
  [v2 setEntity:v3];
  [v2 setIncludesSubentities:*(a1 + 72)];
  [v2 setIncludesPendingChanges:*(a1 + 73)];
  if (*(a1 + 48))
  {
    [v2 setPredicate:?];
  }

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v4 countForFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v6;
}

void __145___DKCoreDataStorage_updateObjectsInContext_entityName_predicate_sortDescriptors_batchFetchLimit_totalFetchLimit_includeSubentities_updateBlock___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setUndoManager:0];
  v29 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v28 = [MEMORY[0x1E695D5B8] entityForName:*(a1 + 40) inManagedObjectContext:*(a1 + 32)];
  [v29 setEntity:v28];
  [v29 setFetchLimit:*(a1 + 80)];
  [v29 setFetchBatchSize:*(a1 + 88)];
  [v29 setIncludesSubentities:*(a1 + 96)];
  [v29 setIncludesPropertyValues:0];
  [v29 setRelationshipKeyPathsForPrefetching:&unk_1F05EF548];
  if (*(a1 + 48))
  {
    [v29 setPredicate:?];
  }

  v2 = *(a1 + 56);
  if (v2 && [v2 count])
  {
    [v29 setSortDescriptors:*(a1 + 56)];
  }

  v27 = [MEMORY[0x1E695DF00] date];
  v3 = *(a1 + 32);
  v31 = 0;
  v4 = [v3 executeFetchRequest:v29 error:&v31];
  v26 = v31;
  v5 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v20 = [v29 fetchLimit];
    [v27 timeIntervalSinceNow];
    v22 = v21;
    v23 = [v4 count];
    v24 = [v29 predicate];
    v25 = [v24 cd_sanitizeForLogging];
    *buf = 134218754;
    v33 = v20;
    v34 = 2048;
    v35 = -v22;
    v36 = 2048;
    v37 = v23;
    v38 = 2112;
    v39 = v25;
    _os_log_debug_impl(&dword_191750000, v5, OS_LOG_TYPE_DEBUG, "updateObjectsInContext finished executeFetchRequest, fetchLimit %lu object(s),elapsed %f(sec), returned %lu object(s), Predicate: %@ ", buf, 0x2Au);
  }

  v6 = vcvtpd_u64_f64([v4 count] / *(a1 + 88));
  if (v6)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 88);
      v11 = [v4 count];
      v12 = v10 * v7;
      v13 = v10 * v7 + v10;
      if (v13 >= v11)
      {
        v13 = v11;
      }

      if (v12 < v13)
      {
        if (v11 >= v10 * v8)
        {
          v14 = v10 * v8;
        }

        else
        {
          v14 = v11;
        }

        do
        {
          v15 = *(a1 + 64);
          v16 = [v4 objectAtIndexedSubscript:{v12, v26}];
          LODWORD(v15) = (*(v15 + 16))(v15, v16);

          if (v15)
          {
            ++*(*(*(a1 + 72) + 8) + 24);
          }

          ++v12;
        }

        while (v14 != v12);
      }

      if ([*(a1 + 32) hasChanges])
      {
        v17 = *(a1 + 32);
        v30 = 0;
        [v17 save:&v30];
        v18 = v30;
        if (v18 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          __145___DKCoreDataStorage_updateObjectsInContext_entityName_predicate_sortDescriptors_batchFetchLimit_totalFetchLimit_includeSubentities_updateBlock___block_invoke_cold_2(buf, v18, &v33);
        }
      }

      [*(a1 + 32) refreshAllObjects];
      objc_autoreleasePoolPop(v9);
      ++v7;
      ++v8;
    }

    while (v7 != v6);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __45___DKCoreDataStorage_handleClientCallForHelp__block_invoke_2(uint64_t a1)
{
  [(_DKCoreDataStorage *)*(a1 + 32) _registerForClientHelpNotifications];
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  *(*(a1 + 32) + 66) = 0;
  objc_sync_exit(obj);
}

void __49___DKCoreDataStorage_copyStorageFor_toDirectory___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) hasChanges])
  {
    [*(a1 + 32) save:0];
  }

  [*(a1 + 32) reset];
  v2 = [(_DKCoreDataStorage *)*(a1 + 40) databasePathFor:?];
  v3 = [(_DKCoreDataStorage *)*(a1 + 56) databasePathFor:?];
  v14 = 0;
  [_DKCoreDataStorage forceCopyItemAtPath:v2 toPath:v3 error:&v14];
  v4 = v14;
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed copy: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-wal", v2];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-wal", v3];
    if ([*(*(a1 + 40) + 48) fileExistsAtPath:v6])
    {
      v13 = 0;
      [_DKCoreDataStorage forceCopyItemAtPath:v6 toPath:v7 error:&v13];
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-shm", v2];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-shm", v3];
    if ([*(*(a1 + 40) + 48) fileExistsAtPath:v8])
    {
      v12 = v5;
      [_DKCoreDataStorage forceCopyItemAtPath:v8 toPath:v9 error:&v12];
      v10 = v12;

      v5 = v10;
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __68___DKCoreDataStorage__addStoresToCoordinator_protectionClass_error___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __68___DKCoreDataStorage__addStoresToCoordinator_protectionClass_error___block_invoke_75_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __146___DKCoreDataStorage_deleteObjectsInContext_entityName_predicate_sortDescriptors_fetchOffset_fetchLimit_includeSubentities_includePendingChanges___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __146___DKCoreDataStorage_deleteObjectsInContext_entityName_predicate_sortDescriptors_fetchOffset_fetchLimit_includeSubentities_includePendingChanges___block_invoke_cold_2(uint64_t a1, void *a2, uint8_t *buf)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Invalid predicate on %@: %@", buf, 0x16u);
}

void __146___DKCoreDataStorage_deleteObjectsInContext_entityName_predicate_sortDescriptors_fetchOffset_fetchLimit_includeSubentities_includePendingChanges___block_invoke_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, MEMORY[0x1E69E9C10], v0, "Encountered exception while deleting objects: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __146___DKCoreDataStorage_deleteObjectsInContext_entityName_predicate_sortDescriptors_fetchOffset_fetchLimit_includeSubentities_includePendingChanges___block_invoke_cold_4()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, MEMORY[0x1E69E9C10], v0, "Ignoring %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __106___DKCoreDataStorage_countObjectsInContext_entityName_predicate_includeSubentities_includePendingChanges___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  objc_begin_catch(a1);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_9(&dword_191750000, MEMORY[0x1E69E9C10], v1, "Caught %@", v2, v3, v4, v5, 2u);
  }

  objc_end_catch();
  v6 = *MEMORY[0x1E69E9840];
}

void __106___DKCoreDataStorage_countObjectsInContext_entityName_predicate_includeSubentities_includePendingChanges___block_invoke_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, MEMORY[0x1E69E9C10], v0, "Encountered exception while counting objects: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __145___DKCoreDataStorage_updateObjectsInContext_entityName_predicate_sortDescriptors_batchFetchLimit_totalFetchLimit_includeSubentities_updateBlock___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  objc_begin_catch(a1);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_9(&dword_191750000, MEMORY[0x1E69E9C10], v1, "updateObjectsInContext: %@", v2, v3, v4, v5, 2u);
  }

  objc_end_catch();
  v6 = *MEMORY[0x1E69E9840];
}

void __145___DKCoreDataStorage_updateObjectsInContext_entityName_predicate_sortDescriptors_batchFetchLimit_totalFetchLimit_includeSubentities_updateBlock___block_invoke_cold_2(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Update commit failure: %@", buf, 0xCu);
}

void __145___DKCoreDataStorage_updateObjectsInContext_entityName_predicate_sortDescriptors_batchFetchLimit_totalFetchLimit_includeSubentities_updateBlock___block_invoke_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, MEMORY[0x1E69E9C10], v0, "Encountered exception while updating objects: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

@end