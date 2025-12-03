@interface CNAutocompleteRecentsSearch
- (CNAutocompleteRecentsSearch)init;
- (CNAutocompleteRecentsSearch)initWithCoreRecentContactsLibrary:(id)library;
- (id)autocompleteResultsForRecentContacts:(id)contacts request:(id)request;
- (id)executeRequest:(id)request completionHandler:(id)handler;
@end

@implementation CNAutocompleteRecentsSearch

- (CNAutocompleteRecentsSearch)init
{
  defaultInstance = [MEMORY[0x277D00F28] defaultInstance];
  v4 = [(CNAutocompleteRecentsSearch *)self initWithCoreRecentContactsLibrary:defaultInstance];

  return v4;
}

- (CNAutocompleteRecentsSearch)initWithCoreRecentContactsLibrary:(id)library
{
  libraryCopy = library;
  v10.receiver = self;
  v10.super_class = CNAutocompleteRecentsSearch;
  v6 = [(CNAutocompleteRecentsSearch *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_library, library);
    v8 = v7;
  }

  return v7;
}

- (id)executeRequest:(id)request completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  v8 = CNALoggingContextDebug();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = requestCopy;
    _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, "Executing request %p against recent contacts", buf, 0xCu);
  }

  library = [(CNAutocompleteRecentsSearch *)self library];
  v10 = [CNAutocompleteRecentContactsLibrary library:library recentContactsWithRequest:requestCopy];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __64__CNAutocompleteRecentsSearch_executeRequest_completionHandler___block_invoke;
  v26[3] = &unk_2781C51F8;
  v26[4] = self;
  v27 = requestCopy;
  v11 = requestCopy;
  v12 = [v10 flatMap:v26];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __64__CNAutocompleteRecentsSearch_executeRequest_completionHandler___block_invoke_2;
  v24[3] = &unk_2781C4218;
  v13 = handlerCopy;
  v25 = v13;
  [v12 addSuccessBlock:v24];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __64__CNAutocompleteRecentsSearch_executeRequest_completionHandler___block_invoke_3;
  v22[3] = &unk_2781C4240;
  v23 = v13;
  v14 = v13;
  [v12 addFailureBlock:v22];
  v15 = MEMORY[0x277CFBDC8];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__CNAutocompleteRecentsSearch_executeRequest_completionHandler___block_invoke_4;
  v20[3] = &unk_2781C3FB0;
  v21 = v12;
  v16 = v12;
  v17 = [v15 tokenWithCancelationBlock:v20];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)autocompleteResultsForRecentContacts:(id)contacts request:(id)request
{
  requestCopy = request;
  contactsCopy = contacts;
  library = [(CNAutocompleteRecentsSearch *)self library];
  v9 = [CNAutocompleteRecentContactsTransform transformForRequest:requestCopy library:library];

  v10 = [contactsCopy _cn_map:v9];

  v11 = [v10 _cn_filter:*MEMORY[0x277CFBD18]];

  v12 = [CNAutocompleteResultTokenMatcher alloc];
  searchString = [requestCopy searchString];

  v14 = [(CNAutocompleteResultTokenMatcher *)v12 initWithSearchString:searchString];
  filterAdapter = [(CNAutocompleteResultTokenMatcher *)v14 filterAdapter];
  v16 = [v11 _cn_filter:filterAdapter];

  v17 = [MEMORY[0x277CFBE28] futureWithResult:v16];

  return v17;
}

@end