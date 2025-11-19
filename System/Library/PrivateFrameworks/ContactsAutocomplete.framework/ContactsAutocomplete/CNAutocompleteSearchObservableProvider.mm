@interface CNAutocompleteSearchObservableProvider
+ (id)providerWithSearchProvider:(id)a3 fetchRequest:(id)a4 scheduler:(id)a5;
- (BOOL)shouldAllowPredictionSearchToSourceResults;
- (CNAutocompleteSearchObservableProvider)initWithSearchProvider:(id)a3 fetchRequest:(id)a4 scheduler:(id)a5;
- (id)calendarServersSearchObservable;
- (id)directoryServersSearchObservable;
- (id)localExtensionSearchObservables;
- (id)localSearchObservable;
- (id)observableWithWrappedSearchProviderGetter:(id)a3 name:(id)a4;
- (id)predictionsSearchObservableWithUnfilteredResultPromise:(id)a3;
- (id)recentsSearchObservable;
- (id)stewieSearchObservable;
- (id)suggestionsSearchObservable;
@end

@implementation CNAutocompleteSearchObservableProvider

- (BOOL)shouldAllowPredictionSearchToSourceResults
{
  v3 = [(CNAutocompleteSearchObservableProvider *)self fetchRequest];
  if ([v3 searchType] == 2)
  {
    v4 = 1;
LABEL_9:

    return v4;
  }

  v5 = [(CNAutocompleteSearchObservableProvider *)self fetchRequest];
  v6 = [v5 searchType];

  if (v6 != 1)
  {
    v3 = [(CNAutocompleteSearchObservableProvider *)self fetchRequest];
    v7 = [v3 searchString];
    if (v7)
    {
      v8 = [(CNAutocompleteSearchObservableProvider *)self fetchRequest];
      v9 = [v8 searchString];
      v4 = [v9 length] == 0;
    }

    else
    {
      v4 = 1;
    }

    goto LABEL_9;
  }

  return 1;
}

+ (id)providerWithSearchProvider:(id)a3 fetchRequest:(id)a4 scheduler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithSearchProvider:v10 fetchRequest:v9 scheduler:v8];

  return v11;
}

- (CNAutocompleteSearchObservableProvider)initWithSearchProvider:(id)a3 fetchRequest:(id)a4 scheduler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = CNAutocompleteSearchObservableProvider;
  v12 = [(CNAutocompleteSearchObservableProvider *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_searchProvider, a3);
    objc_storeStrong(&v13->_fetchRequest, a4);
    objc_storeStrong(&v13->_scheduler, a5);
    v14 = os_log_create("com.apple.contacts.autocomplete", "debug");
    log = v13->_log;
    v13->_log = v14;

    v16 = v13;
  }

  return v13;
}

- (id)localSearchObservable
{
  v3 = [(CNAutocompleteSearchObservableProvider *)self searchProvider];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__CNAutocompleteSearchObservableProvider_localSearchObservable__block_invoke;
  v7[3] = &unk_2781C43F0;
  v8 = v3;
  v4 = v3;
  v5 = [(CNAutocompleteSearchObservableProvider *)self observableWithWrappedSearchProviderGetter:v7 name:@"Local Contacts"];

  return v5;
}

- (id)recentsSearchObservable
{
  v3 = [(CNAutocompleteSearchObservableProvider *)self searchProvider];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__CNAutocompleteSearchObservableProvider_recentsSearchObservable__block_invoke;
  v7[3] = &unk_2781C43F0;
  v8 = v3;
  v4 = v3;
  v5 = [(CNAutocompleteSearchObservableProvider *)self observableWithWrappedSearchProviderGetter:v7 name:@"Recent Contacts"];

  return v5;
}

- (id)stewieSearchObservable
{
  v3 = [(CNAutocompleteSearchObservableProvider *)self searchProvider];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__CNAutocompleteSearchObservableProvider_stewieSearchObservable__block_invoke;
  v7[3] = &unk_2781C43F0;
  v8 = v3;
  v4 = v3;
  v5 = [(CNAutocompleteSearchObservableProvider *)self observableWithWrappedSearchProviderGetter:v7 name:@"Stewie"];

  return v5;
}

- (id)suggestionsSearchObservable
{
  v3 = [(CNAutocompleteSearchObservableProvider *)self searchProvider];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__CNAutocompleteSearchObservableProvider_suggestionsSearchObservable__block_invoke;
  v7[3] = &unk_2781C43F0;
  v8 = v3;
  v4 = v3;
  v5 = [(CNAutocompleteSearchObservableProvider *)self observableWithWrappedSearchProviderGetter:v7 name:@"Suggested Contacts"];

  return v5;
}

- (id)predictionsSearchObservableWithUnfilteredResultPromise:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteSearchObservableProvider *)self searchProvider];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __97__CNAutocompleteSearchObservableProvider_predictionsSearchObservableWithUnfilteredResultPromise___block_invoke;
  v18[3] = &unk_2781C43F0;
  v19 = v5;
  v6 = v5;
  v7 = [(CNAutocompleteSearchObservableProvider *)self observableWithWrappedSearchProviderGetter:v18 name:@"Predictions"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __97__CNAutocompleteSearchObservableProvider_predictionsSearchObservableWithUnfilteredResultPromise___block_invoke_2;
  v16[3] = &unk_2781C4418;
  v8 = v4;
  v17 = v8;
  v9 = [v7 doOnNext:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__CNAutocompleteSearchObservableProvider_predictionsSearchObservableWithUnfilteredResultPromise___block_invoke_3;
  v14[3] = &unk_2781C4440;
  v15 = v8;
  v10 = v8;
  v11 = [v9 doOnError:v14];

  if (![(CNAutocompleteSearchObservableProvider *)self shouldAllowPredictionSearchToSourceResults])
  {
    v12 = [v11 filter:&__block_literal_global_10];

    v11 = v12;
  }

  return v11;
}

- (id)localExtensionSearchObservables
{
  v3 = [(CNAutocompleteSearchObservableProvider *)self searchProvider];
  v4 = [v3 localExtensionSearches];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__CNAutocompleteSearchObservableProvider_localExtensionSearchObservables__block_invoke;
  v7[3] = &unk_2781C4488;
  v7[4] = self;
  v5 = [v4 _cn_map:v7];

  return v5;
}

id __73__CNAutocompleteSearchObservableProvider_localExtensionSearchObservables__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__CNAutocompleteSearchObservableProvider_localExtensionSearchObservables__block_invoke_2;
  v8[3] = &unk_2781C43F0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 observableWithWrappedSearchProviderGetter:v8 name:@"Local Extensions"];

  return v6;
}

- (id)directoryServersSearchObservable
{
  v3 = [(CNAutocompleteSearchObservableProvider *)self searchProvider];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__CNAutocompleteSearchObservableProvider_directoryServersSearchObservable__block_invoke;
  v7[3] = &unk_2781C43F0;
  v8 = v3;
  v4 = v3;
  v5 = [(CNAutocompleteSearchObservableProvider *)self observableWithWrappedSearchProviderGetter:v7 name:@"Directory Servers"];

  return v5;
}

- (id)calendarServersSearchObservable
{
  v3 = [(CNAutocompleteSearchObservableProvider *)self searchProvider];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__CNAutocompleteSearchObservableProvider_calendarServersSearchObservable__block_invoke;
  v7[3] = &unk_2781C43F0;
  v8 = v3;
  v4 = v3;
  v5 = [(CNAutocompleteSearchObservableProvider *)self observableWithWrappedSearchProviderGetter:v7 name:@"Calendar Server"];

  return v5;
}

- (id)observableWithWrappedSearchProviderGetter:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNAutocompleteSearchObservableProvider *)self log];
  v9 = [CNAutocompleteObservable alloc];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __89__CNAutocompleteSearchObservableProvider_observableWithWrappedSearchProviderGetter_name___block_invoke;
  v18 = &unk_2781C44D8;
  v19 = self;
  v20 = v8;
  v21 = v7;
  v22 = v6;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  v13 = [(CNAutocompleteObservable *)v9 initWithBlock:&v15];
  [(CNAutocompleteObservable *)v13 setDebugDescription:v10, v15, v16, v17, v18, v19];

  return v13;
}

id __89__CNAutocompleteSearchObservableProvider_observableWithWrappedSearchProviderGetter_name___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] scheduler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__CNAutocompleteSearchObservableProvider_observableWithWrappedSearchProviderGetter_name___block_invoke_2;
  v12[3] = &unk_2781C44B0;
  v5 = a1[7];
  v13 = v3;
  v11 = *(a1 + 2);
  v6 = *(&v11 + 1);
  *&v7 = a1[6];
  *(&v7 + 1) = v5;
  v14 = v11;
  v15 = v7;
  v8 = v3;
  v9 = [v4 performCancelableBlock:v12];

  return v9;
}

void __89__CNAutocompleteSearchObservableProvider_observableWithWrappedSearchProviderGetter_name___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 64) + 16))();
  if (v4)
  {
    v5 = [*(a1 + 40) fetchRequest];
    v6 = *(a1 + 32);
    v7 = CNObserverCancelableCompletionHandler();
    v8 = [v4 executeRequest:v5 completionHandler:v7];

    if (v8)
    {
      [v3 addCancelable:v8];
    }

    else
    {
      v9 = *(a1 + 48);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __89__CNAutocompleteSearchObservableProvider_observableWithWrappedSearchProviderGetter_name___block_invoke_2_cold_1(a1, v9);
      }
    }
  }

  else
  {
    [*(a1 + 32) observerDidComplete];
  }
}

void __89__CNAutocompleteSearchObservableProvider_observableWithWrappedSearchProviderGetter_name___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_2155FE000, a2, OS_LOG_TYPE_ERROR, "searchToken (%{public}@) cannot be nil", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end