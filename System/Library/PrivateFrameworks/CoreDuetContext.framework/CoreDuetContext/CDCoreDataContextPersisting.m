@interface CDCoreDataContextPersisting
@end

@implementation CDCoreDataContextPersisting

void __94___CDCoreDataContextPersisting__withMOFromEntityWithName_andUniqunessPredicate_insert_update___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695D5E8] fetchRequestWithEntityName:*(a1 + 32)];
  [v2 setFetchLimit:1];
  [v2 setIncludesPendingChanges:1];
  [v2 setPredicate:*(a1 + 40)];
  v3 = *(a1 + 48);
  v13 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __94___CDCoreDataContextPersisting__withMOFromEntityWithName_andUniqunessPredicate_insert_update___block_invoke_cold_1(v5, v6);
    }
  }

  if ([v4 count])
  {
    v7 = [v4 firstObject];
  }

  else
  {
    if (*(a1 + 72) != 1)
    {
      goto LABEL_15;
    }

    v7 = [MEMORY[0x1E695D5C0] insertNewObjectForEntityForName:*(a1 + 32) inManagedObjectContext:*(a1 + 48)];
  }

  v8 = v7;
  if (v7)
  {
    (*(*(a1 + 56) + 16))();

    v9 = *(a1 + 48);
    v12 = 0;
    v10 = [v9 save:&v12];
    v5 = v12;
    *(*(*(a1 + 64) + 8) + 24) = v10;
    if (v5)
    {
      v11 = [MEMORY[0x1E6997908] contextChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __94___CDCoreDataContextPersisting__withMOFromEntityWithName_andUniqunessPredicate_insert_update___block_invoke_cold_2(v5, v11);
      }
    }

    [*(a1 + 48) processPendingChanges];
    [*(a1 + 48) refreshAllObjects];
  }

LABEL_15:
}

void __73___CDCoreDataContextPersisting_fromEntityWithName_deleteObjectsMatching___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E695D5E8] fetchRequestWithEntityName:a1[4]];
  [v2 setFetchLimit:0];
  [v2 setIncludesPendingChanges:1];
  [v2 setPredicate:a1[5]];
  v3 = [objc_alloc(MEMORY[0x1E695D540]) initWithFetchRequest:v2];
  [v3 setResultType:0];
  v4 = a1[6];
  v8 = 0;
  v5 = [v4 executeRequest:v3 error:&v8];
  v6 = v8;
  v7 = [v5 result];
  *(*(a1[7] + 8) + 24) = [v7 BOOLValue];
}

void __96___CDCoreDataContextPersisting_fromEntityWithName_fetchAllObjectsMatchingPredicate_handlingMOs___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E695D5E8] fetchRequestWithEntityName:a1[4]];
  [v2 setFetchLimit:0];
  [v2 setIncludesPendingChanges:1];
  [v2 setPredicate:a1[5]];
  v3 = a1[6];
  v6 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v6];
  v5 = v6;
  (*(a1[7] + 16))();
}

void __53___CDCoreDataContextPersisting_saveValue_forKeyPath___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) isEphemeral] || objc_msgSend(*(*(a1 + 40) + 24), "countForObject:", *(a1 + 32)))
  {
    v2 = *(a1 + 40);
    v3 = [v2 uniquenessPredicateForKeyPath:*(a1 + 32)];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __53___CDCoreDataContextPersisting_saveValue_forKeyPath___block_invoke_2;
    v4[3] = &unk_1E7886360;
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    [v2 withMOFromEntityWithName:@"ContextualKeyPath" andUniqunessPredicate:v3 insertOrUpdate:v4];
  }
}

void __49___CDCoreDataContextPersisting_saveRegistration___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) predicate];
  v3 = [v2 keyPaths];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(a1 + 40) + 24) addObject:*(*(&v13 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v8 = *(a1 + 40);
  v9 = [v8 uniqunessPredicateForRegistration:*(a1 + 32)];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49___CDCoreDataContextPersisting_saveRegistration___block_invoke_2;
  v11[3] = &unk_1E7886388;
  v12 = *(a1 + 32);
  [v8 withMOFromEntityWithName:@"ContextualChangeRegistration" andUniqunessPredicate:v9 insertOrUpdate:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __49___CDCoreDataContextPersisting_saveRegistration___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6997908];
  v4 = a2;
  v5 = [v3 contextChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1A9611000, v5, OS_LOG_TYPE_DEFAULT, "Saving registration: %@", &v8, 0xCu);
  }

  [_CDContextualChangeRegistrationMO hydrateMO:v4 fromRegistration:*(a1 + 32)];
  v7 = *MEMORY[0x1E69E9840];
}

void __51___CDCoreDataContextPersisting_deleteRegistration___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [v2 uniqunessPredicateForRegistration:*(a1 + 40)];
  [v2 withMOFromEntityWithName:@"ContextualChangeRegistration" andUniqunessPredicate:v3 update:&__block_literal_global_8];

  v4 = [*(a1 + 40) predicate];
  v5 = [v4 keyPaths];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(a1 + 32) + 24) removeObject:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [*(a1 + 32) _deleteKeyPaths:v6];
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __45___CDCoreDataContextPersisting_deleteAllData__block_invoke(uint64_t a1)
{
  [*(a1 + 32) fromEntityWithName:@"ContextualKeyPath" deleteObjectsMatching:0];
  v2 = *(a1 + 32);

  return [v2 fromEntityWithName:@"ContextualChangeRegistration" deleteObjectsMatching:0];
}

void __56___CDCoreDataContextPersisting_deleteDataCreatedBefore___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"creationDate < %@", *(a1 + 32)];
  [*(a1 + 40) fromEntityWithName:@"ContextualKeyPath" deleteObjectsMatching:v2];
  [*(a1 + 40) fromEntityWithName:@"ContextualChangeRegistration" deleteObjectsMatching:v2];
}

void __42___CDCoreDataContextPersisting_loadValues__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __42___CDCoreDataContextPersisting_loadValues__block_invoke_2;
  v2[3] = &unk_1E78863D0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 fromEntityWithName:@"ContextualKeyPath" fetchAllObjectsMatchingPredicate:0 handlingMOs:v2];
}

void __42___CDCoreDataContextPersisting_loadValues__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [_CDContextualKeyPathMO materializedKeyPathFrom:v8];
        v10 = [_CDContextualKeyPathMO materializedContextValueFrom:v8];
        [*(a1 + 32) setObject:v10 forKeyedSubscript:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __49___CDCoreDataContextPersisting_loadRegistrations__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  *v13 = 0x1500000001;
  v9 = 0;
  v10 = 0;
  v8 = 16;
  if (sysctl(v13, 2u, &v9, &v8, 0, 0) == -1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      __49___CDCoreDataContextPersisting_loadRegistrations__block_invoke_cold_1();
    }

    v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
  }

  else
  {
    v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v10 / 1000000.0 + v9];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v2;
      _os_log_impl(&dword_1A9611000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Device boot time: %@", buf, 0xCu);
    }
  }

  v3 = [_CDContextualChangeRegistrationMO predicateForActiveRegistrationsInBootSession:v2];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49___CDCoreDataContextPersisting_loadRegistrations__block_invoke_2;
  v6[3] = &unk_1E78863D0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v4 fromEntityWithName:@"ContextualChangeRegistration" fetchAllObjectsMatchingPredicate:v3 handlingMOs:v6];

  v5 = *MEMORY[0x1E69E9840];
}

void __49___CDCoreDataContextPersisting_loadRegistrations__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [_CDContextualChangeRegistrationMO materializedRegistrationFrom:v9];
        if (v10)
        {
          [*(a1 + 32) addObject:v10];
        }

        else
        {
          if (!v6)
          {
            v6 = [v9 managedObjectContext];
          }

          [v6 deleteObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  [v6 save:0];

  v11 = *MEMORY[0x1E69E9840];
}

void __94___CDCoreDataContextPersisting__withMOFromEntityWithName_andUniqunessPredicate_insert_update___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A9611000, a2, OS_LOG_TYPE_ERROR, "Error fetching MO: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __94___CDCoreDataContextPersisting__withMOFromEntityWithName_andUniqunessPredicate_insert_update___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A9611000, a2, OS_LOG_TYPE_ERROR, "Error saving MO: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __49___CDCoreDataContextPersisting_loadRegistrations__block_invoke_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = __error();
  v1 = strerror(*v0);
  v3 = 136446210;
  v4 = v1;
  _os_log_fault_impl(&dword_1A9611000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to determine KERN_BOOTTIME: %{public}s", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end