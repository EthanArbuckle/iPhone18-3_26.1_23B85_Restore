@interface CNAutocompleteLocalExtensionSearch
- (CNAutocompleteLocalExtensionSearch)init;
- (CNAutocompleteLocalExtensionSearch)initWithDataStore:(id)a3;
- (id)executeRequest:(id)a3 completionHandler:(id)a4;
- (id)fetchContactsForFetchRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation CNAutocompleteLocalExtensionSearch

- (CNAutocompleteLocalExtensionSearch)init
{
  v3 = [MEMORY[0x277CBB600] shared];
  v4 = [(CNAutocompleteLocalExtensionSearch *)self initWithDataStore:v3];

  return v4;
}

- (CNAutocompleteLocalExtensionSearch)initWithDataStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNAutocompleteLocalExtensionSearch;
  v6 = [(CNAutocompleteLocalExtensionSearch *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataStore, a3);
    v8 = v7;
  }

  return v7;
}

- (id)executeRequest:(id)a3 completionHandler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CNALoggingContextDebug();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = v6;
    _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, "Executing request %p against local extensions", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CFBED0] defaultProvider];
  [v9 timestamp];
  v11 = v10;

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__CNAutocompleteLocalExtensionSearch_executeRequest_completionHandler___block_invoke;
  v16[3] = &unk_2781C45B8;
  v18 = v11;
  v17 = v7;
  v12 = v7;
  v13 = [(CNAutocompleteLocalExtensionSearch *)self fetchContactsForFetchRequest:v6 completionHandler:v16];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __71__CNAutocompleteLocalExtensionSearch_executeRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CFBEC8] sharedFormatter];
  v8 = [MEMORY[0x277CFBED0] defaultProvider];
  [v8 timestamp];
  v10 = [v7 stringForTimeInterval:v9 - *(a1 + 40)];

  v11 = CNALoggingContextPerformance();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v12)
    {
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_INFO, "Fetching from local extensions failed after %@. Error: %@", &v17, 0x16u);
    }
  }

  else
  {
    if (v12)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_INFO, "Time to fetch %@ contacts from local extensions: %@", &v17, 0x16u);
    }

    v11 = CNALoggingContextDebug();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      v15 = [v5 _cn_take:200];
      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEFAULT, "Local Extensions results (first 200 out of %@): %@", &v17, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
  v16 = *MEMORY[0x277D85DE8];
}

- (id)fetchContactsForFetchRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CFBDC8]);
  if (([v8 isCanceled] & 1) == 0)
  {
    if ([v6 shouldIncludeGroupResults])
    {
      if ([v6 addressableGroupResultStyle] == 1)
      {
        v9 = 51;
      }

      else
      {
        v9 = 19;
      }
    }

    else
    {
      v9 = 1;
    }

    if ([v6 includeDirectoryServers])
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }

    v11 = self->_dataStore;
    v12 = objc_alloc(MEMORY[0x277CBB638]);
    v13 = [v6 searchString];
    v14 = [v12 initWithOptions:v9 behaviors:v10 searchString:v13];

    v15 = [(CLSDataStore *)self->_dataStore _cna_objectsMatching:v14];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __85__CNAutocompleteLocalExtensionSearch_fetchContactsForFetchRequest_completionHandler___block_invoke;
    v21[3] = &unk_2781C45E0;
    v22 = v6;
    v23 = v11;
    v16 = v7;
    v24 = v16;
    v17 = v11;
    [v15 addSuccessBlock:v21];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __85__CNAutocompleteLocalExtensionSearch_fetchContactsForFetchRequest_completionHandler___block_invoke_10;
    v19[3] = &unk_2781C4240;
    v20 = v16;
    [v15 addFailureBlock:v19];
  }

  return v8;
}

void __85__CNAutocompleteLocalExtensionSearch_fetchContactsForFetchRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CNALoggingContextDebug();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = [v3 count];
    _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Count of MAID objects: %lu", &v13, 0xCu);
  }

  v5 = [*(a1 + 32) priorityDomainForSorting];
  v6 = [*(a1 + 32) sendingAddress];
  v7 = [CNAutocompleteResultFactory factoryWithPriorityDomain:v5 sendingAddress:v6];

  v8 = -[CNAClassKitResultTransformVisitor initWithFactory:dataStore:searchType:addressableGroupResultStyle:]([CNAClassKitResultTransformVisitor alloc], "initWithFactory:dataStore:searchType:addressableGroupResultStyle:", v7, *(a1 + 40), [*(a1 + 32) searchType], objc_msgSend(*(a1 + 32), "addressableGroupResultStyle"));
  v9 = [(CNAClassKitResultTransformVisitor *)v8 reduceCollection:v3];
  v10 = CNALoggingContextDebug();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 count];
    v13 = 134217984;
    v14 = v11;
    _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "Count of converted MAID results: %lu", &v13, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

void __85__CNAutocompleteLocalExtensionSearch_fetchContactsForFetchRequest_completionHandler___block_invoke_10(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CNALoggingContextDebug();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "MAID search failure: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

@end