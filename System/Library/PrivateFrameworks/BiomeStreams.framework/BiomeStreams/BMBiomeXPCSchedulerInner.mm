@interface BMBiomeXPCSchedulerInner
@end

@implementation BMBiomeXPCSchedulerInner

void __43___BMBiomeXPCSchedulerInner_requestDemand___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = __biome_log_for_category();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v8 && v9)
  {
    if (v11)
    {
      v16 = 138412802;
      v17 = v7;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v8;
      _os_log_debug_impl(&dword_1848EE000, v10, OS_LOG_TYPE_DEBUG, "BMBiomeScheduler received callback from subscription %@, publishing event %@ for stream %@", &v16, 0x20u);
    }

    v12 = MEMORY[0x1E695DF00];
    [v9 timestamp];
    v13 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
    [v7 setInitialBookmarkTimestamp:v13];

    [*(a1 + 32) switchToPublisherWithStreamIdentifier:v8 storeEvent:v9];
  }

  else
  {
    if (v11)
    {
      __43___BMBiomeXPCSchedulerInner_requestDemand___block_invoke_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained switchToUpdatedPublisher];
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __42___BMBiomeXPCSchedulerInner_receiveInput___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) receiveInput:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

@end