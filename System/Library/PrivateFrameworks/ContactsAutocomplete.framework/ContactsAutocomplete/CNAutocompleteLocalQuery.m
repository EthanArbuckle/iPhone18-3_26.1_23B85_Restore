@interface CNAutocompleteLocalQuery
+ (id)groupsQuery;
+ (id)peopleQuery;
+ (id)queryWithDelegate:(id)a3;
- (id)autocompleteResultsForFetchResults:(id)a3 resultFactory:(id)a4;
- (id)fetchResultsForString:(id)a3;
- (id)makeResultFactory;
- (id)run;
- (void)cancel;
@end

@implementation CNAutocompleteLocalQuery

+ (id)peopleQuery
{
  v3 = objc_alloc_init(CNAutocompleteLocalContactsFetcher);
  v4 = [a1 queryWithDelegate:v3];

  return v4;
}

+ (id)groupsQuery
{
  v3 = objc_alloc_init(CNAutocompleteLocalGroupsFetcher);
  v4 = [a1 queryWithDelegate:v3];

  return v4;
}

+ (id)queryWithDelegate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = v5[4];
  v5[4] = v4;

  return v5;
}

- (id)run
{
  v3 = [(CNAutocompleteLocalQuery *)self request];
  v4 = [v3 searchNames];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__CNAutocompleteLocalQuery_run__block_invoke;
  v9[3] = &unk_2781C4308;
  v9[4] = self;
  v5 = [v4 _cn_flatMap:v9];

  v6 = [(CNAutocompleteLocalQuery *)self makeResultFactory];
  v7 = [(CNAutocompleteLocalQuery *)self autocompleteResultsForFetchResults:v5 resultFactory:v6];

  return v7;
}

- (id)fetchResultsForString:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 _cn_tokens];
  v6 = [(CNAutocompleteLocalQuery *)self searchableProperties];
  v7 = [MEMORY[0x277CFBED0] defaultProvider];
  [v7 timestamp];
  v9 = v8;

  v10 = CNALoggingContextTriage();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    [(CNAutocompleteFetchRequest *)self->_request triageIdentifier];
    v12 = v11 = v6;
    v13 = [(CNAutocompleteLocalQueryDelegate *)self->_delegate queryNameForLogging];
    *buf = 138543618;
    v55 = v12;
    v56 = 2114;
    v57 = v13;
    _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@: Will search", buf, 0x16u);

    v6 = v11;
  }

  v14 = CNALoggingContextTriage();
  v15 = os_signpost_id_generate(v14);

  v16 = CNALoggingContextPerformance();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Searching Contacts", "", buf, 2u);
  }

  delegate = self->_delegate;
  contactStore = self->_contactStore;
  v53 = 0;
  v20 = [(CNAutocompleteLocalQueryDelegate *)delegate resultsForSearchString:v4 terms:v5 properties:v6 contactStore:contactStore error:&v53];
  v52 = v53;
  v21 = CNALoggingContextPerformance();
  v22 = v21;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v22, OS_SIGNPOST_INTERVAL_END, v15, "Searching Contacts", "", buf, 2u);
  }

  v23 = [MEMORY[0x277CFBED0] defaultProvider];
  [v23 timestamp];
  v25 = v24;

  v26 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v25 - v9];
  v27 = CNALoggingContextTriage();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v28)
    {
      v29 = [(CNAutocompleteFetchRequest *)self->_request triageIdentifier];
      v30 = [(CNAutocompleteLocalQueryDelegate *)self->_delegate queryNameForLogging];
      v31 = [v20 count];
      v32 = [v20 count];
      *buf = 138544386;
      v33 = "results";
      v55 = v29;
      v56 = 2114;
      if (v32 == 1)
      {
        v33 = "result";
      }

      v57 = v30;
      v58 = 2048;
      v59 = v31;
      v60 = 2080;
      v61 = v33;
      v62 = 2114;
      v63 = v26;
      _os_log_impl(&dword_2155FE000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@: Search complete (%lu %s, %{public}@)", buf, 0x34u);
    }

    v34 = CNALoggingContextDebug();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [(CNAutocompleteLocalQueryDelegate *)self->_delegate queryNameForLogging];
      v51 = self->_delegate;
      v36 = [v20 count];
      v37 = v26;
      v38 = v4;
      v39 = v6;
      v40 = v5;
      if (v36 >= 0xC8)
      {
        v41 = 200;
      }

      else
      {
        v41 = v36;
      }

      v42 = [v20 count];
      v43 = [v20 _cn_take:200];
      *buf = 138544387;
      v55 = v35;
      v56 = 2112;
      v57 = v51;
      v58 = 2048;
      v59 = v41;
      v5 = v40;
      v6 = v39;
      v4 = v38;
      v26 = v37;
      v60 = 2048;
      v61 = v42;
      v62 = 2113;
      v63 = v43;
      _os_log_impl(&dword_2155FE000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ results with delegate %@ (first %lu out of %lu): %{private}@", buf, 0x34u);
    }

    v44 = v52;
  }

  else
  {
    v44 = v52;
    if (v28)
    {
      v45 = [(CNAutocompleteFetchRequest *)self->_request triageIdentifier];
      v46 = [(CNAutocompleteLocalQueryDelegate *)self->_delegate queryNameForLogging];
      *buf = 138544130;
      v55 = v45;
      v56 = 2114;
      v57 = v46;
      v58 = 2114;
      v59 = v26;
      v60 = 2112;
      v61 = v52;
      _os_log_impl(&dword_2155FE000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@: Search failed (%{public}@): %@", buf, 0x2Au);
    }

    v34 = CNALoggingContextDebug();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v47 = self->_delegate;
      v48 = self->_contactStore;
      *buf = 138413314;
      v55 = v47;
      v56 = 2112;
      v57 = v4;
      v58 = 2112;
      v59 = v5;
      v60 = 2112;
      v61 = v48;
      v62 = 2112;
      v63 = v52;
      _os_log_impl(&dword_2155FE000, v34, OS_LOG_TYPE_DEFAULT, "Got nil results when asking: %@ for: %@, terms: %@, contactStore: %@, error: %@", buf, 0x34u);
    }
  }

  v49 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)makeResultFactory
{
  v3 = [(CNAutocompleteFetchRequest *)self->_request priorityDomainForSorting];
  v4 = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
  v5 = [v4 sendingAddress];
  v6 = [CNAutocompleteResultFactory factoryWithPriorityDomain:v3 sendingAddress:v5];

  return v6;
}

- (id)autocompleteResultsForFetchResults:(id)a3 resultFactory:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNAutocompleteLocalQuery *)self searchableProperties];
  v9 = [(CNAutocompleteLocalQueryDelegate *)self->_delegate autocompleteResultsForProperties:v8 fetchResults:v7 resultFactory:v6 contactStore:self->_contactFetcherStore];

  return v9;
}

- (void)cancel
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = CNALoggingContextDebug();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_2155FE000, v3, OS_LOG_TYPE_DEFAULT, "Cancel: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end