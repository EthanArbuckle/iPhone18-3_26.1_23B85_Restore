@interface CNAutocompleteDirectoryServerSearch
- (CNAutocompleteDirectoryServerSearch)init;
- (CNAutocompleteDirectoryServerSearch)initWithContactStore:(id)a3;
- (id)executeRequest:(id)a3 completionHandler:(id)a4;
- (id)fetchContactsForFetchRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation CNAutocompleteDirectoryServerSearch

- (CNAutocompleteDirectoryServerSearch)init
{
  v3 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v4 = [(CNAutocompleteDirectoryServerSearch *)self initWithContactStore:v3];

  return v4;
}

- (CNAutocompleteDirectoryServerSearch)initWithContactStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNAutocompleteDirectoryServerSearch;
  v6 = [(CNAutocompleteDirectoryServerSearch *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
  }

  return v7;
}

- (id)executeRequest:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CFBE10] currentEnvironment];
  v9 = [v8 timeProvider];
  [v9 timestamp];
  v11 = v10;

  v12 = CNALoggingContextTriage();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v6 triageIdentifier];
    v14 = [v6 searchString];
    *buf = 138543618;
    v31 = v13;
    v32 = 2048;
    v33 = [v14 length];
    _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Directory Servers: Will search (%lu letters)", buf, 0x16u);
  }

  v15 = CNALoggingContextTriage();
  v16 = os_signpost_id_generate(v15);

  v17 = CNALoggingContextPerformance();
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Searching Directory Servers", "", buf, 2u);
  }

  v19 = CNALoggingContextDebug();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v31 = v6;
    _os_log_impl(&dword_2155FE000, v19, OS_LOG_TYPE_DEFAULT, "Executing request %p against directory servers", buf, 0xCu);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __72__CNAutocompleteDirectoryServerSearch_executeRequest_completionHandler___block_invoke;
  v25[3] = &unk_2781C4608;
  v27 = v7;
  v28 = v16;
  v29 = v11;
  v26 = v6;
  v20 = v7;
  v21 = v6;
  v22 = [(CNAutocompleteDirectoryServerSearch *)self fetchContactsForFetchRequest:v21 completionHandler:v25];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __72__CNAutocompleteDirectoryServerSearch_executeRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CNALoggingContextPerformance();
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v27) = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v8, OS_SIGNPOST_INTERVAL_END, v9, "Searching Directory Servers", "", &v27, 2u);
  }

  v10 = [MEMORY[0x277CFBE10] currentEnvironment];
  v11 = [v10 timeProvider];
  [v11 timestamp];
  v13 = v12;

  v14 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v13 - *(a1 + 56)];
  v15 = CNALoggingContextPerformance();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v27 = 138412546;
    v28 = v16;
    v29 = 2114;
    v30 = v14;
    _os_log_impl(&dword_2155FE000, v15, OS_LOG_TYPE_INFO, "Time to fetch %@ contacts on directory servers: %{public}@", &v27, 0x16u);
  }

  v17 = CNALoggingContextTriage();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v18)
    {
      v19 = [*(a1 + 32) triageIdentifier];
      v27 = 138543874;
      v28 = v19;
      v29 = 2114;
      v30 = v14;
      v31 = 2114;
      v32 = v6;
      _os_log_impl(&dword_2155FE000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Directory Servers: Search failed (%{public}@): %{public}@", &v27, 0x20u);
    }
  }

  else
  {
    if (v18)
    {
      v20 = [*(a1 + 32) triageIdentifier];
      v21 = [v5 count];
      v22 = [v5 count];
      v23 = "results";
      v27 = 138544130;
      v29 = 2048;
      v28 = v20;
      if (v22 == 1)
      {
        v23 = "result";
      }

      v30 = v21;
      v31 = 2080;
      v32 = v23;
      v33 = 2114;
      v34 = v14;
      _os_log_impl(&dword_2155FE000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Directory Servers: Search complete (%lu %s, %{public}@)", &v27, 0x2Au);
    }

    v17 = CNALoggingContextDebug();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      v25 = [v5 _cn_take:200];
      v27 = 138412546;
      v28 = v24;
      v29 = 2112;
      v30 = v25;
      _os_log_impl(&dword_2155FE000, v17, OS_LOG_TYPE_DEFAULT, "Directory Server results (first 200 out of %@): %@", &v27, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
  v26 = *MEMORY[0x277D85DE8];
}

- (id)fetchContactsForFetchRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CFBE10] currentEnvironment];
  v9 = [v8 schedulerProvider];
  v10 = [v9 backgroundScheduler];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__CNAutocompleteDirectoryServerSearch_fetchContactsForFetchRequest_completionHandler___block_invoke;
  v15[3] = &unk_2781C4630;
  v16 = v6;
  v17 = self;
  v18 = v7;
  v11 = v7;
  v12 = v6;
  v13 = [v10 performCancelableBlock:v15];

  return v13;
}

void __86__CNAutocompleteDirectoryServerSearch_fetchContactsForFetchRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CNADirectoryServerSearchTask alloc];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) contactStore];
  v11 = [(CNADirectoryServerSearchTask *)v4 initWithRequest:v5 contactStore:v6 cancelationToken:v3];

  v7 = [(CNADirectoryServerSearchTask *)v11 run];
  v8 = *(a1 + 48);
  v9 = [v7 value];
  v10 = [v7 error];
  (*(v8 + 16))(v8, v9, v10);
}

@end