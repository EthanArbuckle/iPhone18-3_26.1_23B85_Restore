@interface CNAPeopleSuggesterFacade
@end

@implementation CNAPeopleSuggesterFacade

void __76___CNAPeopleSuggesterFacade_autocompleteSearchResultsWithPredictionContext___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) autocompleteSearchResultsWithPredictionContext:*(a1 + 40)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(*(*(a1 + 48) + 8) + 40);
    v7 = *MEMORY[0x277D85DE8];

    [CNAutocompletePeopleSuggesterFeedback didReceiveSuggestions:v6];
  }

  else
  {
    v8 = [*(a1 + 40) searchPrefix];
    v9 = [v8 length];

    if (v9)
    {
      v10 = CNALoggingContextTriage();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = 0;
        _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Predictions: Framework version mismatch, no results expected until rdar://78585557", &v18, 0xCu);
      }

      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = MEMORY[0x277CBEBF8];
    }

    else
    {
      v13 = [*(a1 + 32) rankedZKWSuggestionsFromContext:*(a1 + 40)];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v16 = CNALoggingContextTriage();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = 0;
        _os_log_impl(&dword_2155FE000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Predictions: Framework version mismatch, regressing behavior until rdar://78585557", &v18, 0xCu);
      }
    }

    v17 = *MEMORY[0x277D85DE8];
  }
}

@end