@interface ICInputSuggesterPredictionSource
@end

@implementation ICInputSuggesterPredictionSource

void __41___ICInputSuggesterPredictionSource_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] lock];
    v3 = [MEMORY[0x277D41EA0] sharedInstance];
    v4 = v2[5];
    v2[5] = v3;

    [v2[1] broadcast];
    [v2[1] unlock];
  }

  v5 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __41___ICInputSuggesterPredictionSource_init__block_invoke_cold_1();
  }
}

void __69___ICInputSuggesterPredictionSource__populateError_withExplanations___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D41EA8] stringFromExplanationCode:a2];
  if ([v3 length])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

void __128___ICInputSuggesterPredictionSource__quickTypeQueryWithTrigger_searchContext_limit_timeoutInMilliseconds_errorWithExplanations___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __70___ICInputSuggesterPredictionSource_requestFromTrigger_searchContext___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = MEMORY[0x277D46BC0];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [[v7 alloc] initWithString:v10 senderID:v8 timestamp:v9];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v11];
}

@end