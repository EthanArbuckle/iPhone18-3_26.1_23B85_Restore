@interface CDInMemoryContext
@end

@implementation CDInMemoryContext

void __66___CDInMemoryContext_locationCoordinatorCircularRegionsDidChange___block_invoke(uint64_t a1)
{
  v1 = a1;
  v58 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"previousRegistrationRegionInfos"];

  v4 = [*(v1 + 32) userInfo];
  v35 = [v4 objectForKeyedSubscript:@"regionStateChangeDate"];

  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v3;
  v38 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v38)
  {
    v36 = v1;
    v37 = *v52;
    do
    {
      v5 = 0;
      do
      {
        if (*v52 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v5;
        v42 = *(*(&v51 + 1) + 8 * v5);
        v6 = [obj objectForKeyedSubscript:?];
        v7 = [MEMORY[0x1E695DF00] distantPast];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v48;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v48 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v47 + 1) + 8 * i);
              v14 = +[_CDContextQueries changeDateKey];
              v15 = [v13 objectForKeyedSubscript:v14];

              if (v15 && [v7 compare:v15] == -1)
              {
                v16 = v15;

                v7 = v16;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v47 objects:v56 count:16];
          }

          while (v10);
        }

        v17 = objc_alloc_init(_CDContextValue);
        [(_CDContextValue *)v17 setValue:v8];
        [(_CDContextValue *)v17 setLastModifiedDate:v7];
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v18 = *(*(v1 + 40) + 48);
        v19 = +[_CDContextQueries keyPathForCircularLocationRegions];
        v20 = [v18 objectForKeyedSubscript:v19];

        v21 = [v20 countByEnumeratingWithState:&v43 objects:v55 count:16];
        if (v21)
        {
          v22 = v21;
          v39 = v17;
          v23 = *v44;
LABEL_18:
          v24 = 0;
          while (1)
          {
            if (*v44 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v43 + 1) + 8 * v24);
            v26 = [v25 identifier];
            v27 = [v26 isEqualToString:v42];

            if (v27)
            {
              break;
            }

            if (v22 == ++v24)
            {
              v22 = [v20 countByEnumeratingWithState:&v43 objects:v55 count:16];
              if (v22)
              {
                goto LABEL_18;
              }

              v1 = v36;
              v17 = v39;
              goto LABEL_27;
            }
          }

          v28 = v25;

          v1 = v36;
          v17 = v39;
          if (!v28)
          {
            goto LABEL_28;
          }

          [v34 addObject:v28];
          v29 = *(v36 + 40);
          v30 = +[_CDContextQueries keyPathForCircularLocationRegions];
          [v29 unsafe_evalutateRegistrationPredicate:v28 previousContextValue:v39 date:v35 keyPath:v30];

          v20 = v28;
        }

LABEL_27:

LABEL_28:
        v5 = v41 + 1;
      }

      while (v41 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v38);
  }

  v31 = *(v1 + 40);
  v32 = [v34 copy];
  [v31 unsafe_registerFutureSystemTimeBasedCallbacksForRegistrations:v32 date:v35];

  v33 = *MEMORY[0x1E69E9840];
}

void __54___CDInMemoryContext_hasKnowledgeOfContextualKeyPath___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x1E695DF00] date];
  v2 = [*(a1 + 32) unsafe_evaluatedContextWithRegistration:0 date:v4];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = v3 != 0;
}

void __49___CDInMemoryContext_objectForContextualKeyPath___block_invoke(void *a1)
{
  v6 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v2 = [v6 value];
  v3 = [v2 copy];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __59___CDInMemoryContext_setContextValue_forContextualKeyPath___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];

  if (!v2)
  {
    v4 = a1[5];
    v3 = a1[6];
    v5 = *(a1[4] + 32);

    [v5 setObject:v3 forKeyedSubscript:v4];
  }
}

uint64_t __70___CDInMemoryContext_setObject_returningMetadataForContextualKeyPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) unsafe_setObject:*(a1 + 40) returningMetadataForContextualKeyPath:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __53___CDInMemoryContext_setObject_forContextualKeyPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) unsafe_setObject:*(a1 + 40) returningMetadataForContextualKeyPath:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __59___CDInMemoryContext_lastModifiedDateForContextualKeyPath___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v2 = [v5 lastModifiedDate];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __53___CDInMemoryContext_propertiesForContextualKeyPath___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __87___CDInMemoryContext_removeObjectsMatchingPredicate_fromArrayAtKeyPath_removedObjects___block_invoke(uint64_t a1)
{
  v13 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v13);
  if (*(a1 + 48))
  {
    if (!v13)
    {
      goto LABEL_5;
    }

    v2 = [v13 value];
    if (!v2 || (v3 = v2, [v13 value], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, v3, (isKindOfClass & 1) != 0))
    {
LABEL_5:
      v6 = [v13 value];
      v7 = [v6 filteredArrayUsingPredicate:*(a1 + 48)];
      v8 = *(*(a1 + 64) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v10 = [*(a1 + 32) unsafe_addObjects:0 andRemoveObjects:*(*(*(a1 + 64) + 8) + 40) fromArrayAtKeyPath:*(a1 + 40) valueDidChange:0];
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }
}

uint64_t __84___CDInMemoryContext_addObjects_andRemoveObjects_fromArrayAtKeyPath_valueDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) unsafe_addObjects:*(a1 + 40) andRemoveObjects:*(a1 + 48) fromArrayAtKeyPath:*(a1 + 56) valueDidChange:*(*(a1 + 72) + 8) + 24];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __45___CDInMemoryContext_addCallback_forKeyPath___block_invoke(id *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = _os_activity_create(&dword_1A9611000, "CoreDuet: ContextStore Register", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *v19 = 0;
  *&v19[8] = 0;
  os_activity_scope_enter(v3, v19);
  os_activity_scope_leave(v19);

  v4 = [a1[4] clientIdentifier];

  v5 = [MEMORY[0x1E6997908] contextChannel];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = [a1[4] clientIdentifier];
    v8 = [a1[4] identifier];
    *v19 = 138543618;
    *&v19[4] = v7;
    *&v19[12] = 2112;
    *&v19[14] = v8;
    _os_log_impl(&dword_1A9611000, v5, OS_LOG_TYPE_INFO, "Registering callback for client: %{public}@, registration: %@", v19, 0x16u);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = [a1[4] identifier];
    *v19 = 138412290;
    *&v19[4] = v7;
    _os_log_impl(&dword_1A9611000, v5, OS_LOG_TYPE_INFO, "Registering callback for registration: %@", v19, 0xCu);
  }

LABEL_7:
  v9 = [a1[4] identifier];
  v10 = [a1[5] key];
  _cdcontextstore_signpost_register_begin();

  v11 = [*(a1[6] + 6) objectForKeyedSubscript:a1[5]];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    [*(a1[6] + 6) setObject:v11 forKeyedSubscript:a1[5]];
  }

  if ([v11 containsObject:a1[4]])
  {
    [a1[6] unsafe_deregisterCallback:a1[4]];
  }

  v12 = [v11 indexOfObject:a1[4] inSortedRange:0 options:objc_msgSend(v11 usingComparator:{"count"), 1024, &__block_literal_global_19}];
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v11 insertObject:a1[4] atIndex:v12];
  }

  v13 = a1[5];
  v14 = +[_CDContextQueries keyPathForSystemTime];
  LODWORD(v13) = [v13 isEqual:v14];

  if (v13)
  {
    [a1[6] unsafe_registerFutureSystemTimeBasedCallbacksForRegistration:a1[4] date:v2];
  }

  v15 = a1[5];
  v16 = +[_CDContextQueries keyPathForCircularLocationRegions];
  LODWORD(v15) = [v15 isEqual:v16];

  if (v15)
  {
    v17 = [a1[6] locationRegistrationMonitor];
    [v17 addRegistration:a1[4]];
  }

  _cdcontextstore_signpost_register_end();

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __45___CDInMemoryContext_addCallback_forKeyPath___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a2;
  v6 = [v4 numberWithUnsignedInt:{objc_msgSend(a3, "qualityOfService")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 qualityOfService];

  v9 = [v7 numberWithUnsignedInt:v8];
  v10 = [v6 compare:v9];

  return v10;
}

uint64_t __41___CDInMemoryContext_deregisterCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  _cdcontextstore_signpost_deregister_begin();

  v3 = [*(a1 + 40) unsafe_deregisterCallback:*(a1 + 32)];

  return MEMORY[0x1EEDF8E90](v3);
}

void __45___CDInMemoryContext_evaluatePredicate_date___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) unsafe_evaluatedContextWithRegistration:0 date:*(a1 + 40)];
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 48) evaluateWithState:v2 previousValue:0];
}

uint64_t __94___CDInMemoryContext_unsafe_evalutateRegistrationPredicate_previousContextValue_date_keyPath___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_1A9611000, "CoreDuet: ContextStore Callback", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *v18 = 0;
  *&v18[8] = 0;
  os_activity_scope_enter(v2, v18);
  os_activity_scope_leave(v18);

  v3 = [*(a1 + 32) clientIdentifier];

  v4 = [MEMORY[0x1E6997908] contextChannel];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = [*(a1 + 32) clientIdentifier];
    v7 = [*(a1 + 32) identifier];
    v8 = *(a1 + 40);
    *v18 = 138543874;
    *&v18[4] = v6;
    *&v18[12] = 2112;
    *&v18[14] = v7;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&dword_1A9611000, v4, OS_LOG_TYPE_INFO, "Executing callback for client: %{public}@, registration: %@, based on keypath change: %{public}@", v18, 0x20u);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = [*(a1 + 32) identifier];
    v9 = *(a1 + 40);
    *v18 = 138412546;
    *&v18[4] = v6;
    *&v18[12] = 2114;
    *&v18[14] = v9;
    _os_log_impl(&dword_1A9611000, v4, OS_LOG_TYPE_INFO, "Executing callback for registration: %@, based on keypath change: %{public}@", v18, 0x16u);
  }

LABEL_7:
  v10 = [*(a1 + 32) identifier];
  v11 = [*(a1 + 40) key];
  _cdcontextstore_signpost_evaluateCallback_begin();

  v12 = [*(a1 + 32) informativeCallback];

  if (v12)
  {
    v13 = [*(a1 + 32) informativeCallback];
    v14 = [*(a1 + 32) identifier];
    (v13)[2](v13, v14, *(a1 + 48));
  }

  else
  {
    v15 = *(a1 + 64);
    v13 = [*(a1 + 32) identifier];
    (*(v15 + 16))(v15, v13);
  }

  result = _cdcontextstore_signpost_evaluateCallback_end();
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void __38___CDInMemoryContext_allRegistrations__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * v6), v11}];
        if ([v7 count])
        {
          v8 = *(a1 + 40);
          v9 = [v7 array];
          [v8 addObjectsFromArray:v9];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end