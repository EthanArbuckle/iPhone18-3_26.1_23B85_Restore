@interface CNAutocompleteCalendarServerSearch
+ (BOOL)isSupported;
- (CNAutocompleteCalendarServerSearch)init;
- (CNAutocompleteCalendarServerSearch)initWithEventStoreProvider:(id)provider operationFactory:(id)factory;
- (id)executeRequest:(id)request completionHandler:(id)handler;
- (id)executeRequest:(id)request source:(id)source resultsFactory:(id)factory withCompletionHandler:(id)handler;
- (id)queryForFetchRequest:(id)request;
- (id)resultTransformWithFactory:(id)factory;
@end

@implementation CNAutocompleteCalendarServerSearch

+ (BOOL)isSupported
{
  EKDirectorySearchOperationClass_0 = getEKDirectorySearchOperationClass_0();

  return [(objc_class *)EKDirectorySearchOperationClass_0 isSupported];
}

- (CNAutocompleteCalendarServerSearch)init
{
  v3 = [objc_alloc(getEKEphemeralCacheEventStoreProviderClass()) initWithCreationBlock:&__block_literal_global_28];
  v4 = objc_alloc_init(CNAutocompleteCalendarServerOperationFactory);
  v5 = [(CNAutocompleteCalendarServerSearch *)self initWithEventStoreProvider:v3 operationFactory:v4];

  return v5;
}

id __42__CNAutocompleteCalendarServerSearch_init__block_invoke()
{
  v0 = objc_alloc_init(getEKEventStoreClass_0());

  return v0;
}

- (CNAutocompleteCalendarServerSearch)initWithEventStoreProvider:(id)provider operationFactory:(id)factory
{
  providerCopy = provider;
  factoryCopy = factory;
  v15.receiver = self;
  v15.super_class = CNAutocompleteCalendarServerSearch;
  v9 = [(CNAutocompleteCalendarServerSearch *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventStoreProvider, provider);
    objc_storeStrong(&v10->_operationFactory, factory);
    v11 = objc_alloc_init(MEMORY[0x277CFBEC0]);
    tokenizer = v10->_tokenizer;
    v10->_tokenizer = v11;

    v13 = v10;
  }

  return v10;
}

- (id)executeRequest:(id)request completionHandler:(id)handler
{
  v33[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  fetchContext = [requestCopy fetchContext];
  sendingAddressAccountIdentifier = [fetchContext sendingAddressAccountIdentifier];

  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v10 = CNALoggingContextDebug();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "Will not run a calendar server search because there's no sending account identifier", buf, 2u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA470];
    v33[0] = @"Missing sending account identifier";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v13 = [v11 errorWithDomain:@"CNContactAutocompleteErrorDomain" code:0 userInfo:v12];

    handlerCopy[2](handlerCopy, 0, v13);
    v14 = objc_alloc_init(MEMORY[0x277CFBDC8]);
  }

  else
  {
    eventStore = [(EKEphemeralCacheEventStoreProvider *)self->_eventStoreProvider eventStore];
    v13 = [eventStore sourceWithIdentifier:sendingAddressAccountIdentifier];

    v16 = CNALoggingContextDebug();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v17)
      {
        *buf = 138412290;
        v31 = v13;
        _os_log_impl(&dword_2155FE000, v16, OS_LOG_TYPE_DEFAULT, "Using source: %@", buf, 0xCu);
      }

      priorityDomainForSorting = [requestCopy priorityDomainForSorting];
      fetchContext2 = [requestCopy fetchContext];
      sendingAddress = [fetchContext2 sendingAddress];
      v21 = [CNAutocompleteResultFactory factoryWithPriorityDomain:priorityDomainForSorting sendingAddress:sendingAddress];

      v22 = [(CNAutocompleteCalendarServerSearch *)self executeRequest:requestCopy source:v13 resultsFactory:v21 withCompletionHandler:handlerCopy];
    }

    else
    {
      if (v17)
      {
        *buf = 138412290;
        v31 = sendingAddressAccountIdentifier;
        _os_log_impl(&dword_2155FE000, v16, OS_LOG_TYPE_DEFAULT, "No source found for sending account identifier %@", buf, 0xCu);
      }

      v23 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA470];
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not get a source from EventKit with account identifier: %@", sendingAddressAccountIdentifier];
      v29 = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v21 = [v23 errorWithDomain:@"CNContactAutocompleteErrorDomain" code:0 userInfo:v25];

      handlerCopy[2](handlerCopy, 0, v21);
      v22 = objc_alloc_init(MEMORY[0x277CFBDC8]);
    }

    v14 = v22;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)executeRequest:(id)request source:(id)source resultsFactory:(id)factory withCompletionHandler:(id)handler
{
  v64 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  sourceCopy = source;
  factoryCopy = factory;
  handlerCopy = handler;
  v11 = [(CNAutocompleteCalendarServerSearch *)self queryForFetchRequest:requestCopy];
  v12 = CNALoggingContextDebug();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    terms = [v11 terms];
    *buf = 138412546;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = terms;
    _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "Using query: %@ terms: %@", buf, 0x16u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v15 = objc_alloc_init(MEMORY[0x277CFBEE0]);
  operationFactory = [(CNAutocompleteCalendarServerSearch *)self operationFactory];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __97__CNAutocompleteCalendarServerSearch_executeRequest_source_resultsFactory_withCompletionHandler___block_invoke;
  v57[3] = &unk_2781C5080;
  v17 = v15;
  v58 = v17;
  v18 = array;
  v59 = v18;
  v19 = [operationFactory eventKitDirectorySearchOperationForSource:sourceCopy query:v11 resultsBlock:v57];

  v20 = CNALoggingContextTriage();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    triageIdentifier = [requestCopy triageIdentifier];
    searchString = [requestCopy searchString];
    v23 = [searchString length];
    *buf = 138543618;
    *&buf[4] = triageIdentifier;
    *&buf[12] = 2048;
    *&buf[14] = v23;
    _os_log_impl(&dword_2155FE000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Calendar Servers: Will search (%lu letters)", buf, 0x16u);
  }

  v24 = CNALoggingContextTriage();
  v25 = os_signpost_id_generate(v24);

  v26 = CNALoggingContextPerformance();
  v27 = v26;
  if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "Searching Calendar Servers", "", buf, 2u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v61 = __Block_byref_object_copy__3;
  v62 = __Block_byref_object_dispose__3;
  v63 = 0;
  defaultProvider = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider timestamp];
  v30 = v29;

  objc_initWeak(&location, v19);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __97__CNAutocompleteCalendarServerSearch_executeRequest_source_resultsFactory_withCompletionHandler___block_invoke_16;
  v47[3] = &unk_2781C50D0;
  objc_copyWeak(v55, &location);
  v55[1] = v25;
  v55[2] = v30;
  v31 = requestCopy;
  v48 = v31;
  v32 = handlerCopy;
  v53 = v32;
  v33 = v17;
  v49 = v33;
  v34 = v18;
  v54 = buf;
  v50 = v34;
  selfCopy = self;
  v35 = factoryCopy;
  v52 = v35;
  [v19 setCompletionBlock:v47];
  v36 = objc_alloc_init(MEMORY[0x277CFBDC8]);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __97__CNAutocompleteCalendarServerSearch_executeRequest_source_resultsFactory_withCompletionHandler___block_invoke_22;
  v45[3] = &unk_2781C3FB0;
  v37 = v19;
  v46 = v37;
  [v36 addCancelationBlock:v45];
  date = [MEMORY[0x277CBEAA8] date];
  v39 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = date;

  [v37 start];
  objc_destroyWeak(v55);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);

  v40 = *MEMORY[0x277D85DE8];

  return v36;
}

void __97__CNAutocompleteCalendarServerSearch_executeRequest_source_resultsFactory_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = v3;
  CNRunWithLock();
}

void __97__CNAutocompleteCalendarServerSearch_executeRequest_source_resultsFactory_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) people];
  v2 = [v3 allObjects];
  [v1 addObjectsFromArray:v2];
}

void __97__CNAutocompleteCalendarServerSearch_executeRequest_source_resultsFactory_withCompletionHandler___block_invoke_16(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = CNALoggingContextPerformance();
  v4 = v3;
  v5 = *(a1 + 96);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v4, OS_SIGNPOST_INTERVAL_END, v5, "Searching Directory Servers", "", buf, 2u);
  }

  v6 = [MEMORY[0x277CFBED0] defaultProvider];
  [v6 timestamp];
  v8 = v7;

  v9 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v8 - *(a1 + 104)];
  v10 = [WeakRetained error];
  v11 = v10 == 0;

  if (v11)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v41 = __Block_byref_object_copy__3;
    v42 = __Block_byref_object_dispose__3;
    v43 = 0;
    v30 = MEMORY[0x277D85DD0];
    v17 = *(a1 + 40);
    v31 = *(a1 + 48);
    CNRunWithLock();
    v18 = CNALoggingContextTriage();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(a1 + 32) triageIdentifier];
      *&v20 = COERCE_DOUBLE([*(*&buf[8] + 40) count]);
      v21 = [*(*&buf[8] + 40) count];
      v22 = "results";
      *v32 = 138544130;
      v33 = v19;
      v34 = 2048;
      if (v21 == 1)
      {
        v22 = "result";
      }

      v35 = *&v20;
      v36 = 2080;
      v37 = v22;
      v38 = 2114;
      v39 = v9;
      _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Calendar Servers: Search complete (%lu %s, %{public}@)", v32, 0x2Au);
    }

    v23 = CNALoggingContextPerformance();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*&buf[8] + 40), "count")}];
      [*(*(*(a1 + 80) + 8) + 40) timeIntervalSinceNow];
      *v32 = 138412546;
      v33 = v24;
      v34 = 2048;
      v35 = v25 * -1000.0;
      _os_log_impl(&dword_2155FE000, v23, OS_LOG_TYPE_INFO, "Time to fetch Calendar Server: %@ results, in %.3fms", v32, 0x16u);
    }

    v26 = *(*&buf[8] + 40);
    v27 = [*(a1 + 56) resultTransformWithFactory:*(a1 + 64)];
    v28 = [v26 _cn_map:v27];

    (*(*(a1 + 72) + 16))();
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v12 = CNALoggingContextTriage();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) triageIdentifier];
      v14 = [WeakRetained error];
      *buf = 138543874;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2114;
      v41 = v14;
      _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Calendar Servers: Search failed (%{public}@): %{public}@", buf, 0x20u);
    }

    v15 = *(a1 + 72);
    v16 = [WeakRetained error];
    (*(v15 + 16))(v15, 0, v16);
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __97__CNAutocompleteCalendarServerSearch_executeRequest_source_resultsFactory_withCompletionHandler___block_invoke_18(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)queryForFetchRequest:(id)request
{
  v4 = getEKDirectorySearchQueryClass;
  requestCopy = request;
  v6 = objc_alloc_init(v4());
  v7 = MEMORY[0x277CBEB98];
  tokenizer = [(CNAutocompleteCalendarServerSearch *)self tokenizer];
  searchString = [requestCopy searchString];

  v10 = [tokenizer tokenizeString:searchString];
  v11 = [v7 setWithArray:v10];

  [v6 setTerms:v11];
  [v6 setFindGroups:0];
  [v6 setFindLocations:0];
  [v6 setFindResources:0];
  [v6 setFindUsers:1];

  return v6;
}

- (id)resultTransformWithFactory:(id)factory
{
  factoryCopy = factory;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__CNAutocompleteCalendarServerSearch_resultTransformWithFactory___block_invoke;
  aBlock[3] = &unk_2781C50F8;
  v9 = factoryCopy;
  v4 = factoryCopy;
  v5 = _Block_copy(aBlock);
  v6 = [v5 copy];

  return v6;
}

id __65__CNAutocompleteCalendarServerSearch_resultTransformWithFactory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CNAutocompleteResultValue);
  v5 = *MEMORY[0x277CFBCE8];
  v6 = [v3 preferredAddress];
  v7 = (*(v5 + 16))(v5, v6);
  [(CNAutocompleteResultValue *)v4 setAddress:v7];

  [(CNAutocompleteResultValue *)v4 setAddressType:1];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v3 userInfo];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 32);
  v10 = [v3 displayName];
  v11 = [v9 calendarServerResultWithDisplayName:v10 value:v4 nameComponents:0 userInfo:v8];

  return v11;
}

@end