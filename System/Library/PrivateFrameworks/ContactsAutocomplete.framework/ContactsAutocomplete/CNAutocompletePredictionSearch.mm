@interface CNAutocompletePredictionSearch
+ (unint64_t)predictedResultLimit;
+ (unint64_t)predictionStrategyForRequest:(id)a3;
- (CNAutocompletePredictionSearch)init;
- (CNAutocompletePredictionSearch)initWithContactStore:(id)a3;
- (id)executeRequest:(id)a3 completionHandler:(id)a4;
- (id)strategyForRequest:(id)a3;
- (id)suggestionsForRequest:(id)a3;
@end

@implementation CNAutocompletePredictionSearch

- (CNAutocompletePredictionSearch)init
{
  v3 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v4 = [(CNAutocompletePredictionSearch *)self initWithContactStore:v3];

  return v4;
}

- (CNAutocompletePredictionSearch)initWithContactStore:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CNAutocompletePredictionSearch;
  v6 = [(CNAutocompletePredictionSearch *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
    v8 = [MEMORY[0x277CFBE10] currentEnvironment];
    v9 = [v8 schedulerProvider];
    v10 = [v9 backgroundSchedulerWithQualityOfService:4];
    scheduler = v7->_scheduler;
    v7->_scheduler = v10;

    v12 = v7;
  }

  return v7;
}

- (id)executeRequest:(id)a3 completionHandler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CNALoggingContextDebug();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = v6;
    _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, "Executing request %p against predictions CoreDuet/PeopleSuggester", buf, 0xCu);
  }

  v9 = [(CNAutocompletePredictionSearch *)self suggestionsForRequest:v6];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__CNAutocompletePredictionSearch_executeRequest_completionHandler___block_invoke;
  v21[3] = &unk_2781C4218;
  v10 = v7;
  v22 = v10;
  [v9 addSuccessBlock:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__CNAutocompletePredictionSearch_executeRequest_completionHandler___block_invoke_2;
  v19[3] = &unk_2781C4240;
  v20 = v10;
  v11 = v10;
  [v9 addFailureBlock:v19];
  v12 = MEMORY[0x277CFBDC8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__CNAutocompletePredictionSearch_executeRequest_completionHandler___block_invoke_3;
  v17[3] = &unk_2781C3FB0;
  v18 = v9;
  v13 = v9;
  v14 = [v12 tokenWithCancelationBlock:v17];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)suggestionsForRequest:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CFBE90]);
  v6 = [(CNAutocompletePredictionSearch *)self strategyForRequest:v4];
  v7 = [MEMORY[0x277CFBED0] defaultProvider];
  [v7 timestamp];
  v9 = v8;

  v10 = CNALoggingContextTriage();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v4 triageIdentifier];
    v12 = [v6 descriptionForLogging];
    *buf = 138543618;
    v29 = v11;
    v30 = 2114;
    v31 = v12;
    _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Predictions: Will search %{public}@", buf, 0x16u);
  }

  scheduler = self->_scheduler;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __56__CNAutocompletePredictionSearch_suggestionsForRequest___block_invoke;
  v23 = &unk_2781C4268;
  v24 = v6;
  v25 = v4;
  v27 = v9;
  v26 = v5;
  v14 = v5;
  v15 = v4;
  v16 = v6;
  [(CNScheduler *)scheduler performBlock:&v20];
  v17 = [v14 future];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __56__CNAutocompletePredictionSearch_suggestionsForRequest___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) searchResultsForFetchRequest:*(a1 + 40)];
  v3 = [MEMORY[0x277CFBED0] defaultProvider];
  [v3 timestamp];
  v5 = v4;

  v6 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v5 - *(a1 + 56)];
  v7 = CNALoggingContextTriage();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 40) triageIdentifier];
    v9 = [v2 count];
    v10 = [v2 count];
    v11 = "results";
    v19 = 138544130;
    v21 = 2048;
    v20 = v8;
    if (v10 == 1)
    {
      v11 = "result";
    }

    v22 = v9;
    v23 = 2080;
    v24 = v11;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_2155FE000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Predictions: Search complete (%lu %s, %{public}@)", &v19, 0x2Au);
  }

  v12 = CNALoggingContextPerformance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v2 count];
    v14 = [*(a1 + 32) descriptionForLogging];
    v19 = 134218498;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_INFO, "Time to fetch %lu predictions results from %@: %{public}@", &v19, 0x20u);
  }

  v15 = CNALoggingContextDebug();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "count")}];
    v17 = [v2 _cn_take:200];
    v19 = 138412546;
    v20 = v16;
    v21 = 2112;
    v22 = v17;
    _os_log_impl(&dword_2155FE000, v15, OS_LOG_TYPE_DEFAULT, "Predicted results (first 200 out of %@): %@", &v19, 0x16u);
  }

  [*(a1 + 48) finishWithResult:v2];
  v18 = *MEMORY[0x277D85DE8];
}

- (id)strategyForRequest:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() predictionStrategyForRequest:v4];

  contactStore = self->_contactStore;
  if (v5 == 1)
  {
    [CNAutocompletePredictionSearchStrategy peopleSuggesterStrategyWithContactStore:contactStore];
  }

  else
  {
    [CNAutocompletePredictionSearchStrategy coreDuetStrategyWithContactStore:contactStore];
  }
  v7 = ;

  return v7;
}

+ (unint64_t)predictionStrategyForRequest:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CFBE10] currentEnvironment];
  v5 = [v4 userDefaults];
  v6 = [v5 userHasOptedInToPreference:@"CNAlwaysUsePeopleSuggesterForPredictions"];

  v7 = (v6 & 1) != 0 || [v3 searchType] == 2 || objc_msgSend(v3, "searchType") == 1;
  return v7;
}

+ (unint64_t)predictedResultLimit
{
  v5 = 0;
  v2 = [MEMORY[0x277CFBEE8] standardPreferences];
  v3 = [v2 integerForKey:@"CNAutocompleteDefaultsPredictedResultLimit" keyExists:&v5];

  if (v5)
  {
    return v3;
  }

  else
  {
    return 8;
  }
}

@end