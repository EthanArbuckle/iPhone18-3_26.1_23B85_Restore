@interface CDInteractionCache
@end

@implementation CDInteractionCache

void __80___CDInteractionCache_initWithInteractionStore_size_queryPredicate_filterBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 15);
    [(os_unfair_lock_s *)v2 _refetch];
    os_unfair_lock_unlock(v2 + 15);
    WeakRetained = v2;
  }
}

void __31___CDInteractionCache__refetch__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("CDInteractionCache refetch", v1);
  v3 = _refetch__pasExprOnceResult;
  _refetch__pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

void __31___CDInteractionCache__refetch__block_invoke_92(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) interactionStore];
  v3 = [*(a1 + 32) predicate];
  v15[0] = *(a1 + 40);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v5 = [*(a1 + 32) size];
  v14 = 0;
  v6 = [v2 queryInteractionsUsingPredicate:v3 sortDescriptors:v4 limit:v5 error:&v14];
  v7 = v14;
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v10 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __31___CDInteractionCache__refetch__block_invoke_92_cold_1(v7, v10);
    }

    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = MEMORY[0x1E695E0F0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __76___CDInteractionCache__updateMostRecentInteractionsWithInteraction_deleted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10 = v3;
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v5 = v4;
    if (*(a1 + 48) == 1)
    {
      if ([*(a1 + 40) isEqual:v4])
      {
        v6 = +[_CDUncachedSentinel sharedInstance];
        [*(a1 + 32) setObject:v6 forKeyedSubscript:v10];
      }
    }

    else if (!v4 || ([v4 isUncachedSentinel] & 1) == 0 && (objc_msgSend(v5, "interactionIfCached"), v7 = objc_claimAutoreleasedReturnValue(), v8 = _CDStartDateCompare(v7, *(a1 + 40)), v7, v8 == -1))
    {
      [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:v10];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

void __31___CDInteractionCache__refetch__block_invoke_92_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Error fetching interactions for interaction cache: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end