@interface CNAutocompleteRecentContactsLibrary
+ (id)addressKindsForSearchType:(unint64_t)type;
+ (id)domainsForFetchRequest:(id)request;
+ (id)domainsForSearchType:(unint64_t)type;
+ (id)library:(id)library recentContactsWithRequest:(id)request;
+ (id)queryForRequest:(id)request;
+ (unint64_t)implicitGroupThresholdForSearchType:(unint64_t)type;
+ (void)addLoggingHandlersToFuture:(id)future request:(id)request;
@end

@implementation CNAutocompleteRecentContactsLibrary

+ (id)library:(id)library recentContactsWithRequest:(id)request
{
  v20 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  requestCopy = request;
  v8 = [self queryForRequest:requestCopy];
  v9 = CNALoggingContextDebug();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v8;
    v18 = 2112;
    v19 = libraryCopy;
    _os_log_impl(&dword_2155FE000, v9, OS_LOG_TYPE_DEFAULT, "Performing recents query: %@ against library: %@", &v16, 0x16u);
  }

  v10 = objc_alloc_init(MEMORY[0x277CFBE90]);
  future = [v10 future];
  [self addLoggingHandlersToFuture:future request:requestCopy];

  completionHandlerAdapter = [v10 completionHandlerAdapter];
  [libraryCopy performRecentsSearch:v8 queue:0 completion:completionHandlerAdapter];

  future2 = [v10 future];

  v14 = *MEMORY[0x277D85DE8];

  return future2;
}

+ (id)queryForRequest:(id)request
{
  requestCopy = request;
  v5 = [self domainsForFetchRequest:requestCopy];
  v6 = [self addressKindsForSearchType:{objc_msgSend(requestCopy, "searchType")}];
  v7 = [self implicitGroupThresholdForSearchType:{objc_msgSend(requestCopy, "searchType")}];
  v8 = *MEMORY[0x277CFBD30];
  searchString = [requestCopy searchString];
  v10 = (*(v8 + 16))(v8, searchString);

  v11 = MEMORY[0x277D00F38];
  if (v10)
  {
    v12 = objc_alloc_init(MEMORY[0x277D00F38]);
    searchString2 = [MEMORY[0x277D00F30] predicateForKey:*MEMORY[0x277D00EF8] inCollection:v6];
    [v12 setSearchPredicate:searchString2];
  }

  else
  {
    searchString2 = [requestCopy searchString];
    fetchContext = [requestCopy fetchContext];
    sendingAddress = [fetchContext sendingAddress];
    v12 = [v11 searchQueryForSearchTerm:searchString2 preferredKinds:v6 sendingAddress:sendingAddress recentsDomain:&stru_282787720];
  }

  [v12 setDomains:v5];
  [v12 setImplicitGroupThreshold:v7];
  [v12 setComparator:0];

  return v12;
}

+ (void)addLoggingHandlersToFuture:(id)future request:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  futureCopy = future;
  triageIdentifier = [request triageIdentifier];
  defaultProvider = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider timestamp];
  v9 = v8;

  v10 = CNALoggingContextTriage();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = triageIdentifier;
    _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] CoreRecents: Will search", buf, 0xCu);
  }

  v11 = CNALoggingContextTriage();
  v12 = os_signpost_id_generate(v11);

  v13 = CNALoggingContextPerformance();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Searching CoreRecents", "", buf, 2u);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __74__CNAutocompleteRecentContactsLibrary_addLoggingHandlersToFuture_request___block_invoke;
  v22[3] = &unk_2781C3C80;
  v24 = v12;
  v25 = v9;
  v15 = triageIdentifier;
  v23 = v15;
  [futureCopy addSuccessBlock:v22];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__CNAutocompleteRecentContactsLibrary_addLoggingHandlersToFuture_request___block_invoke_9;
  v18[3] = &unk_2781C3CA8;
  v21 = v9;
  v19 = v15;
  v20 = v12;
  v16 = v15;
  [futureCopy addFailureBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __74__CNAutocompleteRecentContactsLibrary_addLoggingHandlersToFuture_request___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CNALoggingContextPerformance();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v5, OS_SIGNPOST_INTERVAL_END, v6, "Searching CoreRecents", "", &v23, 2u);
  }

  v7 = [MEMORY[0x277CFBED0] defaultProvider];
  [v7 timestamp];
  v9 = v8;

  v10 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v9 - *(a1 + 48)];
  v11 = CNALoggingContextTriage();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = [v3 count];
    v14 = [v3 count];
    v15 = "results";
    v23 = 138544130;
    v24 = v12;
    v25 = 2048;
    if (v14 == 1)
    {
      v15 = "result";
    }

    v26 = v13;
    v27 = 2080;
    v28 = v15;
    v29 = 2114;
    v30 = v10;
    _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] CoreRecents: Search complete (%lu %s, %{public}@)", &v23, 0x2Au);
  }

  v16 = CNALoggingContextPerformance();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    v23 = 138412546;
    v24 = v17;
    v25 = 2114;
    v26 = v10;
    _os_log_impl(&dword_2155FE000, v16, OS_LOG_TYPE_INFO, "Time to fetch %@ recent contacts: %{public}@", &v23, 0x16u);
  }

  v18 = CNALoggingContextDebug();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    v20 = [v3 _cn_take:200];
    v21 = [v20 _cn_map:&__block_literal_global];
    v23 = 138412546;
    v24 = v19;
    v25 = 2112;
    v26 = v21;
    _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, "CoreRecents results (first 200 out of %@): %@", &v23, 0x16u);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __74__CNAutocompleteRecentContactsLibrary_addLoggingHandlersToFuture_request___block_invoke_9(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CNALoggingContextPerformance();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v5, OS_SIGNPOST_INTERVAL_END, v6, "Searching CoreRecents", "", &v16, 2u);
  }

  v7 = [MEMORY[0x277CFBED0] defaultProvider];
  [v7 timestamp];
  v9 = v8;

  v10 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v9 - *(a1 + 48)];
  v11 = CNALoggingContextTriage();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v16 = 138543874;
    v17 = v12;
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v3;
    _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] CoreRecents: Search failed (%{public}@): %{public}@", &v16, 0x20u);
  }

  v13 = CNALoggingContextPerformance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v16 = 138543362;
    v17 = v10;
    _os_log_impl(&dword_2155FE000, v13, OS_LOG_TYPE_INFO, "Failure fetching recent contacts after %{public}@", &v16, 0xCu);
  }

  v14 = CNALoggingContextDebug();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v3;
    _os_log_impl(&dword_2155FE000, v14, OS_LOG_TYPE_DEFAULT, "Failed to fetch recent contacts: %@", &v16, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (id)domainsForFetchRequest:(id)request
{
  requestCopy = request;
  fetchContext = [requestCopy fetchContext];
  bundleIdentifiers = [fetchContext bundleIdentifiers];
  v7 = [bundleIdentifiers count];

  if (v7)
  {
    fetchContext2 = [requestCopy fetchContext];

    bundleIdentifiers2 = [fetchContext2 bundleIdentifiers];
    v10 = [bundleIdentifiers2 copy];
  }

  else
  {
    searchType = [requestCopy searchType];

    v10 = [self domainsForSearchType:searchType];
  }

  return v10;
}

+ (id)domainsForSearchType:(unint64_t)type
{
  v29[1] = *MEMORY[0x277D85DE8];
  if (type > 2)
  {
    if (type == 3)
    {
      v23 = *MEMORY[0x277D00F08];
      v9 = MEMORY[0x277CBEA60];
      v10 = &v23;
      goto LABEL_21;
    }

    if (type == 4)
    {
      v28 = *MEMORY[0x277D00F20];
      v9 = MEMORY[0x277CBEA60];
      v10 = &v28;
      goto LABEL_21;
    }

    if (type != 5)
    {
      goto LABEL_15;
    }

LABEL_10:
    currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v13 = [featureFlags isFeatureEnabled:19];

    v14 = *MEMORY[0x277D00F20];
    if (v13)
    {
      v15 = *MEMORY[0x277D00F00];
      v26[0] = *MEMORY[0x277D00F20];
      v26[1] = v15;
      v9 = MEMORY[0x277CBEA60];
      v10 = v26;
      goto LABEL_12;
    }

    v27 = *MEMORY[0x277D00F20];
    v9 = MEMORY[0x277CBEA60];
    v10 = &v27;
LABEL_21:
    v16 = 1;
    goto LABEL_22;
  }

  switch(type)
  {
    case 0uLL:
      v29[0] = *MEMORY[0x277D00F18];
      v9 = MEMORY[0x277CBEA60];
      v10 = v29;
      goto LABEL_21;
    case 1uLL:
      goto LABEL_10;
    case 2uLL:
      currentEnvironment2 = [MEMORY[0x277CFBE10] currentEnvironment];
      featureFlags2 = [currentEnvironment2 featureFlags];
      v6 = [featureFlags2 isFeatureEnabled:19];

      v7 = *MEMORY[0x277D00F10];
      if (v6)
      {
        v8 = *MEMORY[0x277D00F00];
        v24[0] = *MEMORY[0x277D00F10];
        v24[1] = v8;
        v9 = MEMORY[0x277CBEA60];
        v10 = v24;
LABEL_12:
        v16 = 2;
LABEL_22:
        v18 = [v9 arrayWithObjects:v10 count:v16];
        goto LABEL_23;
      }

      v25 = *MEMORY[0x277D00F10];
      v9 = MEMORY[0x277CBEA60];
      v10 = &v25;
      goto LABEL_21;
  }

LABEL_15:
  v17 = CNALoggingContextDebug();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_2155FE000, v17, OS_LOG_TYPE_DEFAULT, "No domain for searchType: %lu ", &v21, 0xCu);
  }

  v18 = 0;
LABEL_23:
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)addressKindsForSearchType:(unint64_t)type
{
  v19 = *MEMORY[0x277D85DE8];
  if (type - 4 < 2)
  {
    goto LABEL_4;
  }

  if (type == 2)
  {
    v7 = *MEMORY[0x277D00EE0];
    v14 = *MEMORY[0x277D00EC0];
    v15 = v7;
    v4 = MEMORY[0x277CBEA60];
    v5 = &v14;
  }

  else
  {
    if (type == 1)
    {
LABEL_4:
      v3 = *MEMORY[0x277D00EE0];
      v16 = *MEMORY[0x277D00EC0];
      v17 = v3;
      v18 = *MEMORY[0x277D00EC8];
      v4 = MEMORY[0x277CBEA60];
      v5 = &v16;
      v6 = 3;
      goto LABEL_8;
    }

    v8 = *MEMORY[0x277D00EC8];
    v12 = *MEMORY[0x277D00EC0];
    v13 = v8;
    v4 = MEMORY[0x277CBEA60];
    v5 = &v12;
  }

  v6 = 2;
LABEL_8:
  v9 = [v4 arrayWithObjects:v5 count:{v6, v12, v13, v14, v15, v16, v17, v18, v19}];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (unint64_t)implicitGroupThresholdForSearchType:(unint64_t)type
{
  if (type > 5)
  {
    return 0;
  }

  else
  {
    return qword_21565C190[type];
  }
}

@end