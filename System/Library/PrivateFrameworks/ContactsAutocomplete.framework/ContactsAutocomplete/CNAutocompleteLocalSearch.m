@interface CNAutocompleteLocalSearch
+ (BOOL)shouldIncludeGroupResultsForRequest:(id)a3;
- (CNAutocompleteLocalSearch)init;
- (CNAutocompleteLocalSearch)initWithContactStore:(id)a3 contactFetcherStore:(id)a4;
- (id)executeRequest:(id)a3 completionHandler:(id)a4;
- (id)groupsForRequest:(id)a3 contactStore:(id)a4 contactFetcherStore:(id)a5;
- (id)peopleForRequest:(id)a3 contactStore:(id)a4 contactFetcherStore:(id)a5;
@end

@implementation CNAutocompleteLocalSearch

- (CNAutocompleteLocalSearch)init
{
  v3 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v4 = objc_alloc_init(MEMORY[0x277CBDAC0]);
  [v4 setIncludeLocalContacts:1];
  [v4 setIncludeSuggestedContacts:0];
  v5 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v4];
  v6 = [(CNAutocompleteLocalSearch *)self initWithContactStore:v3 contactFetcherStore:v5];

  return v6;
}

- (CNAutocompleteLocalSearch)initWithContactStore:(id)a3 contactFetcherStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNAutocompleteLocalSearch;
  v9 = [(CNAutocompleteLocalSearch *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, a3);
    objc_storeStrong(&v10->_contactFetcherStore, a4);
    v11 = v10;
  }

  return v10;
}

- (id)executeRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CFBE10] currentEnvironment];
  v9 = [v8 schedulerProvider];
  v10 = [v9 backgroundScheduler];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__CNAutocompleteLocalSearch_executeRequest_completionHandler___block_invoke;
  v15[3] = &unk_2781C4630;
  v16 = v6;
  v17 = self;
  v18 = v7;
  v11 = v7;
  v12 = v6;
  v13 = [v10 performCancelableBlock:v15];

  return v13;
}

void __62__CNAutocompleteLocalSearch_executeRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CNALoggingContextDebug();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 134217984;
    v26 = v5;
    _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Executing request %p against local contacts", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEAA8] date];
  if (([v3 isCanceled] & 1) == 0)
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = [v8 contactStore];
    v11 = [*(a1 + 40) contactFetcherStore];
    v12 = [v8 groupsForRequest:v9 contactStore:v10 contactFetcherStore:v11];
    [v6 addObjectsFromArray:v12];

    if (([v3 isCanceled] & 1) == 0)
    {
      v14 = *(a1 + 32);
      v13 = *(a1 + 40);
      v15 = [v13 contactStore];
      v16 = [*(a1 + 40) contactFetcherStore];
      v17 = [v13 peopleForRequest:v14 contactStore:v15 contactFetcherStore:v16];
      [v6 addObjectsFromArray:v17];

      v18 = CNALoggingContextPerformance();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
        [v7 timeIntervalSinceNow];
        *buf = 138412546;
        v26 = v19;
        v27 = 2048;
        v28 = v20 * -1000.0;
        _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_INFO, "Time to fetch %@ local contacts and groups: %.3fms", buf, 0x16u);
      }

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __62__CNAutocompleteLocalSearch_executeRequest_completionHandler___block_invoke_6;
      v22[3] = &unk_2781C46A0;
      v24 = *(a1 + 48);
      v23 = v6;
      [v3 performBlock:v22];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)peopleForRequest:(id)a3 contactStore:(id)a4 contactFetcherStore:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[CNAutocompleteLocalQuery peopleQuery];
  [v10 setRequest:v9];

  [v10 setContactStore:v8];
  [v10 setContactFetcherStore:v7];

  v11 = [v10 run];

  return v11;
}

- (id)groupsForRequest:(id)a3 contactStore:(id)a4 contactFetcherStore:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([objc_opt_class() shouldIncludeGroupResultsForRequest:v7])
  {
    v10 = +[CNAutocompleteLocalQuery groupsQuery];
    [v10 setRequest:v7];
    [v10 setContactStore:v8];
    [v10 setContactFetcherStore:v9];
    v11 = [v10 run];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

+ (BOOL)shouldIncludeGroupResultsForRequest:(id)a3
{
  v3 = a3;
  if ([v3 searchType] == 1 || objc_msgSend(v3, "searchType") == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 shouldIncludeGroupResults];
  }

  return v4;
}

@end