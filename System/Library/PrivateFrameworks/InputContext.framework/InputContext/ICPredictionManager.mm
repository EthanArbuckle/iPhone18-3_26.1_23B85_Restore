@interface ICPredictionManager
@end

@implementation ICPredictionManager

void __46___ICPredictionManager_searchForMeCardRegions__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __98___ICPredictionManager__quickTypePredictionWithTrigger_searchContext_timeoutInMilliseconds_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __98___ICPredictionManager__quickTypePredictionWithTrigger_searchContext_timeoutInMilliseconds_error___block_invoke_cold_1(v7, v8, v9);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v11 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained[4] addResults:*(*(*(a1 + 48) + 8) + 40)];
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __53___ICPredictionManager_searchForMeCardEmailAddresses__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __42___ICPredictionManager_setLastUsedSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 2, *(a1 + 32));
    WeakRetained = v3;
  }
}

void __60___ICPredictionManager_provideFeedbackForString_type_style___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = *(WeakRetained + 1);
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 name];
          v11 = [v10 isEqualToString:v3[2]];

          if (v11)
          {
            [v9 provideFeedbackForString:*(a1 + 32) type:*(a1 + 48) style:*(a1 + 49)];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __46___ICPredictionManager_propogateMetrics_data___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = *(WeakRetained + 1);
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 name];
          v11 = [v10 isEqualToString:v3[2]];

          if (v11)
          {
            [v9 propogateMetrics:*(a1 + 32) data:*(a1 + 40)];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __98___ICPredictionManager__quickTypePredictionWithTrigger_searchContext_timeoutInMilliseconds_error___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  v5 = a1;
  OUTLINED_FUNCTION_2(&dword_254BD0000, a2, a3, "Error during quickTypePredictionWithTrigger: %@", &v4);
  v3 = *MEMORY[0x277D85DE8];
}

@end