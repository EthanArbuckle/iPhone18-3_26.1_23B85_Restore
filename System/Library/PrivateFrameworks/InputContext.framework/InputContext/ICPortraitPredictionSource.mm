@interface ICPortraitPredictionSource
@end

@implementation ICPortraitPredictionSource

void __37___ICPortraitPredictionSource_warmUp__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_254BD0000, v2, OS_LOG_TYPE_INFO, "_ICPPSource warmed up %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __35___ICPortraitPredictionSource_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] lock];
    v4 = [*(a1 + 32) _makePPQuickTypeBroker];
    [v3 setPpBroker:v4];

    [v3[1] broadcast];
    [v3[1] unlock];
  }

  v5 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __35___ICPortraitPredictionSource_init__block_invoke_cold_1();
  }
}

uint64_t __53___ICPortraitPredictionSource__makePPQuickTypeBroker__block_invoke()
{
  v0 = [MEMORY[0x277D3A468] sharedInstance];
  v1 = _makePPQuickTypeBroker_broker;
  _makePPQuickTypeBroker_broker = v0;

  v2 = _makePPQuickTypeBroker_broker;

  return [v2 setClientIdentifier:@"ICPred"];
}

void __63___ICPortraitPredictionSource__populateError_withExplanations___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D3A470] uniqueKeycodeFromExplanation:a2];
  if ([v3 length])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

void __84___ICPortraitPredictionSource__quickTypeQueryWithQuery_limit_timeoutInMilliseconds___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (![v6 count])
  {
    v8 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_254BD0000, v8, OS_LOG_TYPE_INFO, "Portrait returned no results for Me card regions: %@", &v10, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v9 = *MEMORY[0x277D85DE8];
}

void __122___ICPortraitPredictionSource__quickTypeQueryWithTrigger_searchContext_limit_timeoutInMilliseconds_errorWithExplanations___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (![v6 count])
  {
    v8 = *(a1 + 32);
    v9 = *(*(a1 + 56) + 8);
    obj = *(v9 + 40);
    [v8 _populateError:&obj withExplanations:v7];
    objc_storeStrong((v9 + 40), obj);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __122___ICPortraitPredictionSource__quickTypeQueryWithTrigger_searchContext_limit_timeoutInMilliseconds_errorWithExplanations___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (![v6 count])
  {
    v8 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_254BD0000, v8, OS_LOG_TYPE_INFO, "Portrait returned no results for Me card regions: %@", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = *(*(a1 + 56) + 8);
    obj = *(v10 + 40);
    [v9 _populateError:&obj withExplanations:v7];
    objc_storeStrong((v10 + 40), obj);
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v11 = *MEMORY[0x277D85DE8];
}

void __35___ICPortraitPredictionSource_init__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end