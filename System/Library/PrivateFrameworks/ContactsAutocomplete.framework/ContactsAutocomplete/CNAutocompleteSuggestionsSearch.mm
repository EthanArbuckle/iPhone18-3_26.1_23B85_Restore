@interface CNAutocompleteSuggestionsSearch
+ (unint64_t)charactersThreshold;
- (CNAutocompleteSuggestionsSearch)init;
- (CNAutocompleteSuggestionsSearch)initWithContactStore:(id)store;
- (id)convertContacts:(id)contacts request:(id)request;
- (id)executeRequest:(id)request completionHandler:(id)handler;
- (id)keysToFetchForRequest:(id)request;
- (id)resultTransformWithFactory:(id)factory properties:(id)properties;
- (id)resultTransformWithRequest:(id)request;
- (id)suggestedContactsWithRequest:(id)request keysToFetch:(id)fetch error:(id *)error;
@end

@implementation CNAutocompleteSuggestionsSearch

+ (unint64_t)charactersThreshold
{
  v5 = 0;
  standardPreferences = [MEMORY[0x277CFBEE8] standardPreferences];
  v3 = [standardPreferences integerForKey:@"CNSuggestionsCharactersThresholdInAutocomplete" keyExists:&v5];

  if (v5)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

- (CNAutocompleteSuggestionsSearch)init
{
  v3 = objc_alloc_init(MEMORY[0x277CBDAC0]);
  [v3 setIncludeSuggestedContacts:1];
  v4 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v3];
  v5 = [(CNAutocompleteSuggestionsSearch *)self initWithContactStore:v4];

  return v5;
}

- (CNAutocompleteSuggestionsSearch)initWithContactStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = CNAutocompleteSuggestionsSearch;
  v6 = [(CNAutocompleteSuggestionsSearch *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
    v8 = v7;
  }

  return v7;
}

- (id)executeRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
  schedulerProvider = [currentEnvironment schedulerProvider];
  backgroundScheduler = [schedulerProvider backgroundScheduler];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__CNAutocompleteSuggestionsSearch_executeRequest_completionHandler___block_invoke;
  v15[3] = &unk_2781C4630;
  v15[4] = self;
  v16 = requestCopy;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = requestCopy;
  v13 = [backgroundScheduler performCancelableBlock:v15];

  return v13;
}

void __68__CNAutocompleteSuggestionsSearch_executeRequest_completionHandler___block_invoke(id *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = [objc_opt_class() charactersThreshold];
  v6 = [a1[5] searchString];
  v7 = [v6 length];

  if (v7 >= v5)
  {
    v10 = [a1[4] keysToFetchForRequest:a1[5]];
    v11 = a1[4];
    v12 = a1[5];
    v22 = 0;
    v13 = [v11 suggestedContactsWithRequest:v12 keysToFetch:v10 error:&v22];
    v14 = v22;
    if (v13)
    {
      v15 = [a1[4] convertContacts:v13 request:a1[5]];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __68__CNAutocompleteSuggestionsSearch_executeRequest_completionHandler___block_invoke_4;
      v19[3] = &unk_2781C46A0;
      v16 = a1[6];
      v20 = v15;
      v21 = v16;
      v17 = v15;
      [v3 performBlock:v19];
    }

    else
    {
      (*(a1[6] + 2))();
    }
  }

  else
  {
    v8 = CNALoggingContextDebug();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[5];
      *buf = 134218240;
      v24 = v9;
      v25 = 2048;
      v26 = v5;
      _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, "Skipping request %p against suggestion because search string is smaller than %lu chars", buf, 0x16u);
    }

    (*(a1[6] + 2))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)keysToFetchForRequest:(id)request
{
  v3 = MEMORY[0x277CBEB18];
  v4 = MEMORY[0x277CBDA78];
  requestCopy = request;
  v6 = [v4 descriptorForRequiredKeysForStyle:0];
  v7 = [v3 arrayWithObject:v6];

  searchableProperties = [requestCopy searchableProperties];

  [v7 addObjectsFromArray:searchableProperties];
  v9 = +[CNAutocompleteNameComponents contactKeys];
  [v7 addObjectsFromArray:v9];

  return v7;
}

- (id)suggestedContactsWithRequest:(id)request keysToFetch:(id)fetch error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  fetchCopy = fetch;
  v10 = CNALoggingContextTriage();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    triageIdentifier = [requestCopy triageIdentifier];
    v46 = 138543362;
    v47 = triageIdentifier;
    _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] CoreSuggestions: Will search", &v46, 0xCu);
  }

  v12 = CNALoggingContextDebug();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 134217984;
    v47 = requestCopy;
    _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "Executing request %p against suggested contacts", &v46, 0xCu);
  }

  defaultProvider = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider timestamp];
  v15 = v14;

  v16 = CNALoggingContextTriage();
  v17 = os_signpost_id_generate(v16);

  v18 = CNALoggingContextPerformance();
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(v46) = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "Searching CoreSuggestions", "", &v46, 2u);
  }

  v20 = MEMORY[0x277CBDA58];
  searchString = [requestCopy searchString];
  v22 = [v20 predicateForContactsMatchingName:searchString];

  contactStore = [(CNAutocompleteSuggestionsSearch *)self contactStore];
  v24 = [contactStore unifiedContactsMatchingPredicate:v22 keysToFetch:fetchCopy error:error];

  v25 = CNALoggingContextPerformance();
  v26 = v25;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    LOWORD(v46) = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v26, OS_SIGNPOST_INTERVAL_END, v17, "Searching CoreSuggestions", "", &v46, 2u);
  }

  defaultProvider2 = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider2 timestamp];
  v29 = v28;

  v30 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v29 - v15];
  if (v24)
  {
    v31 = CNALoggingContextPerformance();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
      v46 = 138412546;
      v47 = v32;
      v48 = 2112;
      v49 = v30;
      _os_log_impl(&dword_2155FE000, v31, OS_LOG_TYPE_INFO, "Time to fetch %@ suggested contacts: %@", &v46, 0x16u);
    }

    v33 = CNALoggingContextDebug();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
      v35 = [v24 _cn_take:200];
      v46 = 138412547;
      v47 = v34;
      v48 = 2113;
      v49 = v35;
      _os_log_impl(&dword_2155FE000, v33, OS_LOG_TYPE_DEFAULT, "Suggestions results (first 200 out of %@): %{private}@", &v46, 0x16u);
    }

    v36 = CNALoggingContextTriage();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      triageIdentifier2 = [requestCopy triageIdentifier];
      v38 = [v24 count];
      v46 = 138543874;
      v47 = triageIdentifier2;
      v48 = 2048;
      v49 = v38;
      v50 = 2114;
      v51 = v30;
      _os_log_impl(&dword_2155FE000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] CoreSuggestions: Search complete (%ld result(s), %{public}@)", &v46, 0x20u);
    }

    v39 = v24;
  }

  else
  {
    if (error)
    {
      v40 = *error;
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;
    v42 = CNALoggingContextTriage();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      triageIdentifier3 = [requestCopy triageIdentifier];
      v46 = 138543874;
      v47 = triageIdentifier3;
      v48 = 2114;
      v49 = v30;
      v50 = 2114;
      v51 = v41;
      _os_log_impl(&dword_2155FE000, v42, OS_LOG_TYPE_DEFAULT, "[%{public}@] CoreSuggestions: Search failed (%{public}@): %{public}@", &v46, 0x20u);
    }
  }

  v44 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)convertContacts:(id)contacts request:(id)request
{
  requestCopy = request;
  contactsCopy = contacts;
  v8 = [(CNAutocompleteSuggestionsSearch *)self resultTransformWithRequest:requestCopy];
  v9 = [contactsCopy _cn_flatMap:v8];

  v10 = [CNAutocompleteResultTokenMatcher alloc];
  searchString = [requestCopy searchString];

  v12 = [(CNAutocompleteResultTokenMatcher *)v10 initWithSearchString:searchString];
  filterAdapter = [(CNAutocompleteResultTokenMatcher *)v12 filterAdapter];
  v14 = [v9 _cn_filter:filterAdapter];

  return v14;
}

- (id)resultTransformWithRequest:(id)request
{
  requestCopy = request;
  priorityDomainForSorting = [requestCopy priorityDomainForSorting];
  fetchContext = [requestCopy fetchContext];
  sendingAddress = [fetchContext sendingAddress];
  v8 = [CNAutocompleteResultFactory factoryWithPriorityDomain:priorityDomainForSorting sendingAddress:sendingAddress];

  searchableProperties = [requestCopy searchableProperties];
  v10 = [(CNAutocompleteSuggestionsSearch *)self resultTransformWithFactory:v8 properties:searchableProperties];

  v11 = self->_contactStore;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke;
  v17[3] = &unk_2781C51D0;
  v17[4] = self;
  v18 = requestCopy;
  v19 = v11;
  v20 = v10;
  v12 = v11;
  v13 = requestCopy;
  v14 = v10;
  v15 = [v17 copy];

  return v15;
}

id __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v16 = a2;
  (*(*(a1 + 56) + 16))();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v3 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_2;
        v25[3] = &unk_2781C5180;
        v8 = v16;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        v26 = v8;
        v27 = v9;
        v28 = v10;
        [v7 setContactProvider:v25];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_17;
        v23[3] = &unk_2781C49A0;
        v11 = v8;
        v24 = v11;
        [v7 addDiagnosticLog:v23];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_2_21;
        v20[3] = &unk_2781C51A8;
        v21 = *(a1 + 48);
        v12 = v11;
        v22 = v12;
        [v7 addDiagnosticLog:v20];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_3_41;
        v17[3] = &unk_2781C4718;
        v18 = v12;
        v19 = *(a1 + 48);
        [v7 setIgnoreResultBlock:v17];
      }

      v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];

  return obj;
}

id __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_2(id *a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a1[4] areKeysAvailable:v5])
  {
    v6 = a1[4];
  }

  else
  {
    v7 = [a1[5] suggestedContactsWithRequest:a1[6] keysToFetch:v5 error:a3];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_3;
    v14[3] = &unk_2781C5158;
    v15 = a1[4];
    v8 = [v7 _cn_firstObjectPassingTest:v14];
    v9 = v8;
    if (!v8)
    {
      v10 = CNALoggingContextTriage();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [a1[6] triageIdentifier];
        *buf = 138543362;
        v17 = v11;
        _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] CNAutocompleteSuggestionsSearch: Contact provider failed to refetch contact, returning internally fetched contact.", buf, 0xCu);
      }

      v9 = a1[4];
    }

    v6 = v9;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [v3 identifier];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

id __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_17(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) suggestionRecordId];
  v3 = [v1 stringWithFormat:@"Suggestion record id: %lld", objc_msgSend(v2, "numericValue")];

  return v3;
}

id __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_2_21(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) originForSuggestion:*(a1 + 40) error:a2];
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [v2 title];
  [v3 appendFormat:@"Title: %@\n", v4];

  v5 = [v2 fromPerson];
  [v3 appendFormat:@"From: %@\n", v5];

  v6 = [v2 to];
  [v3 appendFormat:@"To: %@\n", v6];

  v7 = [v2 cc];
  [v3 appendFormat:@"CC: %@\n", v7];

  v8 = [v2 date];
  [v3 appendFormat:@"Date: %@\n", v8];

  v9 = [v2 contextSnippet];
  [v3 appendFormat:@"Context:\n=====\n%@\n=====", v9];

  return v3;
}

uint64_t __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_3_41(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBDBB8]);
  [v4 rejectSuggestion:*(a1 + 32)];
  v5 = *(a1 + 40);
  v13 = 0;
  v6 = [v5 executeSaveRequest:v4 error:&v13];
  v7 = v13;
  if ((v6 & 1) == 0)
  {
    v8 = CNALoggingContextDebug();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, "Can't ignore suggestion: %@, with error: %@", buf, 0x16u);
    }

    if (a2)
    {
      v10 = v7;
      *a2 = v7;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)resultTransformWithFactory:(id)factory properties:(id)properties
{
  v20 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v6 = [CNAutocompleteLocalContactResultTransformBuilder suggestedContactBuilderWithResultFactory:factory];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = propertiesCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addTransformForProperty:{*(*(&v15 + 1) + 8 * i), v15}];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  build = [v6 build];

  v13 = *MEMORY[0x277D85DE8];

  return build;
}

@end