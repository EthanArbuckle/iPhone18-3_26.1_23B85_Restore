@interface CNAutocompleteQuery
+ (BOOL)shouldSortResultsForPolicy:(id)a3;
+ (BOOL)shouldSuppressAddressesAlreadyChosenForRequest:(id)a3;
+ (id)observableForQuery:(id)a3 context:(id)a4;
+ (id)observableWithSupplementalResultsForQuery:(id)a3;
+ (id)queryWithRequest:(id)a3 searchProvider:(id)a4 delegate:(id)a5 probeProvider:(id)a6 scheduler:(id)a7 userSession:(id)a8 delegateToken:(id)a9;
+ (void)configureNetworkActivityHandlersForBuilder:(id)a3 query:(id)a4;
+ (void)configureNetworkForBuilder:(id)a3 query:(id)a4;
+ (void)configureNetworkPolicyForBuilder:(id)a3 query:(id)a4;
- (CNAutocompleteQuery)initWithRequest:(id)a3 searchProvider:(id)a4 delegate:(id)a5 probeProvider:(id)a6 scheduler:(id)a7 userSession:(id)a8 delegateToken:(id)a9;
- (CNCancelable)delegateToken;
- (id)executeWithContext:(id)a3;
- (id)makeDelegateWrapperWithDelegate:(id)a3 forRequest:(id)a4 sourceInclusionPolicy:(id)a5 userSession:(id)a6;
- (void)cancel;
- (void)searchOperationEncounteredError:(id)a3;
- (void)searchOperationReportedResults:(id)a3;
- (void)searchOperationsHaveBegunNetworkActivity;
- (void)searchOperationsHaveEndedNetworkActivity;
- (void)searchOperationsHaveFinished;
@end

@implementation CNAutocompleteQuery

- (CNCancelable)delegateToken
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateToken);

  return WeakRetained;
}

- (void)searchOperationsHaveFinished
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = CNALoggingContextTriage();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CNAutocompleteQuery *)self request];
    v5 = [v4 triageIdentifier];
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_2155FE000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Search operation complete.", &v9, 0xCu);
  }

  delegate = self->_delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegateToken);
  [(CNAutocompleteDelegateWrapper *)delegate autocompleteFetchDidFinish:WeakRetained];

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)queryWithRequest:(id)a3 searchProvider:(id)a4 delegate:(id)a5 probeProvider:(id)a6 scheduler:(id)a7 userSession:(id)a8 delegateToken:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [[a1 alloc] initWithRequest:v22 searchProvider:v21 delegate:v20 probeProvider:v19 scheduler:v18 userSession:v17 delegateToken:v16];

  return v23;
}

- (CNAutocompleteQuery)initWithRequest:(id)a3 searchProvider:(id)a4 delegate:(id)a5 probeProvider:(id)a6 scheduler:(id)a7 userSession:(id)a8 delegateToken:(id)a9
{
  v15 = a3;
  v34 = a4;
  v16 = a5;
  v33 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v37.receiver = self;
  v37.super_class = CNAutocompleteQuery;
  v20 = [(CNAutocompleteQuery *)&v37 init];
  if (v20)
  {
    v21 = [v15 copy];
    request = v20->_request;
    v20->_request = v21;

    objc_storeStrong(&v20->_searchProvider, a4);
    objc_storeStrong(&v20->_probeProvider, a6);
    objc_storeStrong(&v20->_userSession, a8);
    if (v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v20;
    }

    objc_storeWeak(&v20->_delegateToken, v23);
    v24 = [CNAutocompleteSourceInclusionPolicy defaultPolicyWithFetchRequest:v15];
    sourceInclusionPolicy = v20->_sourceInclusionPolicy;
    v20->_sourceInclusionPolicy = v24;

    v26 = [(CNAutocompleteQuery *)v20 makeDelegateWrapperWithDelegate:v16 forRequest:v20->_request sourceInclusionPolicy:v20->_sourceInclusionPolicy userSession:v20->_userSession];
    objc_storeStrong(&v20->_delegate, v26);
    v27 = MEMORY[0x277CFBDC8];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __113__CNAutocompleteQuery_initWithRequest_searchProvider_delegate_probeProvider_scheduler_userSession_delegateToken___block_invoke;
    v35[3] = &unk_2781C3FB0;
    v36 = v26;
    v28 = v26;
    v29 = [v27 tokenWithCancelationBlock:v35];
    cancelationToken = v20->_cancelationToken;
    v20->_cancelationToken = v29;

    objc_storeStrong(&v20->_scheduler, a7);
    v31 = v20;
  }

  return v20;
}

- (id)makeDelegateWrapperWithDelegate:(id)a3 forRequest:(id)a4 sourceInclusionPolicy:(id)a5 userSession:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [[CNAutocompleteDelegateWrapper alloc] initWithDelegate:v12 userSession:v10 fetchRequest:v9];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __100__CNAutocompleteQuery_makeDelegateWrapperWithDelegate_forRequest_sourceInclusionPolicy_userSession___block_invoke;
  v26[3] = &unk_2781C49A0;
  v14 = v9;
  v27 = v14;
  v15 = [(CNAutocompleteDelegateWrapper *)v13 addDiagnosticLog:v26];

  LODWORD(v13) = [objc_opt_class() shouldSortResultsForPolicy:v11];
  if (v13)
  {
    v16 = [v15 sortResults];

    v15 = v16;
  }

  v17 = [v15 askDelegateToAdjustResults];

  if ([objc_opt_class() shouldSuppressAddressesAlreadyChosenForRequest:v14])
  {
    v18 = [v14 fetchContext];
    v19 = [v18 otherAddressesAlreadyChosen];
    v20 = [v17 suppressResultsWithAddresses:v19];

    v17 = v20;
  }

  v21 = [MEMORY[0x277CFBE10] currentEnvironment];
  v22 = [v21 featureFlags];
  v23 = [v22 isFeatureEnabled:9];

  if (v23)
  {
    v24 = [v17 removeResultsWithBlockedHandles];

    v17 = v24;
  }

  return v17;
}

+ (BOOL)shouldSuppressAddressesAlreadyChosenForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 fetchContext];
  v6 = [v5 otherAddressesAlreadyChosen];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [MEMORY[0x277CFBEE8] standardPreferences];
    v9 = [v8 userHasOptedInToPreference:@"CNSuppressAddressesAlreadyChosen"];

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = [a1 searchTypeSupportsSuppressionOfAlreadyChosenAddresses:{objc_msgSend(v4, "searchType")}];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)shouldSortResultsForPolicy:(id)a3
{
  v3 = a3;
  if ([v3 includeRecents] & 1) != 0 || (objc_msgSend(v3, "includeStewie") & 1) != 0 || (objc_msgSend(v3, "includeContacts") & 1) != 0 || (objc_msgSend(v3, "includeSuggestions") & 1) != 0 || (objc_msgSend(v3, "includeCalendarServers"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 includeDirectoryServers];
  }

  return v4;
}

- (id)executeWithContext:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277CFBE68];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __42__CNAutocompleteQuery_executeWithContext___block_invoke;
  v23[3] = &unk_2781C49C8;
  objc_copyWeak(&v24, &location);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __42__CNAutocompleteQuery_executeWithContext___block_invoke_2;
  v21[3] = &unk_2781C49F0;
  objc_copyWeak(&v22, &location);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42__CNAutocompleteQuery_executeWithContext___block_invoke_3;
  v19[3] = &unk_2781C4A18;
  objc_copyWeak(&v20, &location);
  v6 = [v5 observerWithResultBlock:v23 completionBlock:v21 failureBlock:v19];
  v7 = [objc_opt_class() observableForQuery:self context:v4];
  v8 = [(CNAutocompleteQuery *)self scheduler];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __42__CNAutocompleteQuery_executeWithContext___block_invoke_4;
  v16 = &unk_2781C4A40;
  v9 = v7;
  v17 = v9;
  v10 = v6;
  v18 = v10;
  v11 = [v8 performCancelableBlock:&v13];

  [(CNCancelationToken *)self->_cancelationToken addCancelable:v11, v13, v14, v15, v16];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return self;
}

void __42__CNAutocompleteQuery_executeWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained searchOperationReportedResults:v3];
}

void __42__CNAutocompleteQuery_executeWithContext___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained searchOperationsHaveFinished];
}

void __42__CNAutocompleteQuery_executeWithContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained searchOperationEncounteredError:v3];
}

void __42__CNAutocompleteQuery_executeWithContext___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 subscribe:v3];
  [v4 addCancelable:v5];
}

+ (id)observableForQuery:(id)a3 context:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 request];
  v9 = [a1 shouldPerformQueryForRequest:v8];

  if (v9)
  {
    v10 = [v6 request];
    v11 = [v10 searchType];
    v12 = [v6 scheduler];
    v13 = [v6 probeProvider];
    v14 = [CNAutocompleteObservableBuilder builderWithSearchType:v11 scheduler:v12 probeProvider:v13];

    v15 = [v6 sourceInclusionPolicy];
    v16 = [v6 searchProvider];
    v17 = [v6 request];
    v18 = [v6 scheduler];
    v19 = [CNAutocompleteSearchObservableProvider providerWithSearchProvider:v16 fetchRequest:v17 scheduler:v18];

    [a1 configureNetworkForBuilder:v14 query:v6];
    if ([v15 includeContacts])
    {
      v20 = [v19 localSearchObservable];
      [v14 addContactsObservable:v20];
      v21 = CNALoggingContextDebug();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v79 = v20;
        _os_log_impl(&dword_2155FE000, v21, OS_LOG_TYPE_DEFAULT, "Adding local contacts observable %@", buf, 0xCu);
      }
    }

    if ([v15 includeRecents])
    {
      v22 = [v19 recentsSearchObservable];
      [v14 addCoreRecentsObservable:v22];
      v23 = CNALoggingContextDebug();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v79 = v22;
        _os_log_impl(&dword_2155FE000, v23, OS_LOG_TYPE_DEFAULT, "Adding recent contacts observable %@", buf, 0xCu);
      }
    }

    if ([v15 includeStewie])
    {
      v24 = [v19 stewieSearchObservable];
      [v14 addStewieObservable:v24];
      v25 = CNALoggingContextDebug();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v79 = v19;
        _os_log_impl(&dword_2155FE000, v25, OS_LOG_TYPE_DEFAULT, "Adding Stewie observable %@", buf, 0xCu);
      }
    }

    if ([v15 includeSuggestions])
    {
      v26 = [v19 suggestionsSearchObservable];
      [v14 addSuggestionsObservable:v26];
      v27 = CNALoggingContextDebug();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v79 = v26;
        _os_log_impl(&dword_2155FE000, v27, OS_LOG_TYPE_DEFAULT, "Adding suggested contacts observable %@", buf, 0xCu);
      }
    }

    v71 = a1;
    if ([v15 includeLocalExtensions])
    {
      v28 = [v19 localExtensionSearchObservables];
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __50__CNAutocompleteQuery_observableForQuery_context___block_invoke;
      v76[3] = &unk_2781C4A68;
      v77 = v14;
      [v28 _cn_each:v76];
    }

    if ([v15 includePredictions])
    {
      v29 = objc_alloc_init(MEMORY[0x277CFBE90]);
      v30 = [v19 predictionsSearchObservableWithUnfilteredResultPromise:v29];
      v31 = [v6 delegate];
      v32 = [v29 future];
      [v31 setPredictionResultsFuture:v32];

      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __50__CNAutocompleteQuery_observableForQuery_context___block_invoke_17;
      v74[3] = &unk_2781C3FB0;
      v75 = v29;
      v33 = v29;
      [v14 addPredictionObservable:v30 doOnTimeout:v74];
      v34 = CNALoggingContextDebug();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v79 = v30;
        _os_log_impl(&dword_2155FE000, v34, OS_LOG_TYPE_DEFAULT, "Adding predictions CoreDuet/PeopleSuggester observable %@", buf, 0xCu);
      }
    }

    if ([v15 includeDirectoryServers])
    {
      v69 = v19;
      v35 = [v19 directoryServersSearchObservable];
      v72 = v7;
      v36 = [v7 directoryServerReuseCache];
      v37 = [v6 request];
      v38 = [v37 searchString];

      v39 = [[CNAutocompleteQueryCacheHelper alloc] initWithCache:v36 searchString:v38 serverSearchObservable:v35];
      v40 = [(CNAutocompleteQueryCacheHelper *)v39 cachedResultsObservable];
      [v14 addCachedDirectoryServerObservable:v40];
      v41 = CNALoggingContextDebug();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v79 = v40;
        _os_log_impl(&dword_2155FE000, v41, OS_LOG_TYPE_DEFAULT, "Adding cached directory servers observable %@", buf, 0xCu);
      }

      v42 = [(CNAutocompleteQueryCacheHelper *)v39 uncachedResultsObservable];
      [v14 addDirectoryServerObservable:v42];
      v43 = CNALoggingContextDebug();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v79 = v42;
        _os_log_impl(&dword_2155FE000, v43, OS_LOG_TYPE_DEFAULT, "Adding directory servers observable %@", buf, 0xCu);
      }

      v7 = v72;
      v19 = v69;
    }

    if ([v15 includeCalendarServers] && +[CNAutocompleteCalendarServerSearch isSupported](CNAutocompleteCalendarServerSearch, "isSupported"))
    {
      v70 = v19;
      v44 = [v19 calendarServersSearchObservable];
      v73 = v7;
      v45 = [v7 calendarServerReuseCache];
      v46 = [v6 request];
      v47 = [v46 searchString];

      v48 = [CNAutocompleteQueryCacheHelper alloc];
      v67 = v44;
      v68 = v45;
      v49 = v45;
      v50 = v47;
      v51 = [(CNAutocompleteQueryCacheHelper *)v48 initWithCache:v49 searchString:v47 serverSearchObservable:v44];
      v52 = [(CNAutocompleteQueryCacheHelper *)v51 cachedResultsObservable];
      v53 = [(CNAutocompleteQueryCacheHelper *)v51 uncachedResultsObservable];
      v54 = [v53 publish];

      v55 = [[CNAutocompleteCalendarQueryAssembler alloc] initWithRawCachedObservable:v52 rawUncachedObservable:v54];
      [(CNAutocompleteCalendarQueryAssembler *)v55 assemble];
      v56 = [(CNAutocompleteCalendarQueryAssembler *)v55 cachedObservable];
      [v14 addCachedCalendarServerObservable:v56];

      v57 = [(CNAutocompleteCalendarQueryAssembler *)v55 uncachedObservable];
      [v14 addCalendarServerObservable:v57];

      v58 = CNALoggingContextDebug();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = [(CNAutocompleteCalendarQueryAssembler *)v55 cachedObservable];
        *buf = 138412290;
        v79 = v59;
        _os_log_impl(&dword_2155FE000, v58, OS_LOG_TYPE_DEFAULT, "Adding cached calendar servers observable %@", buf, 0xCu);
      }

      v60 = CNALoggingContextDebug();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = [(CNAutocompleteCalendarQueryAssembler *)v55 uncachedObservable];
        *buf = 138412290;
        v79 = v61;
        _os_log_impl(&dword_2155FE000, v60, OS_LOG_TYPE_DEFAULT, "Adding calendar servers observable %@", buf, 0xCu);
      }

      v7 = v73;
      v19 = v70;
    }

    if ([v15 includeSupplementalResults])
    {
      v62 = [v71 observableWithSupplementalResultsForQuery:v6];
      [v14 addSupplementalObservable:v62];

      v63 = CNALoggingContextDebug();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v79 = v19;
        _os_log_impl(&dword_2155FE000, v63, OS_LOG_TYPE_DEFAULT, "Adding supplemental observable %@", buf, 0xCu);
      }
    }

    v64 = [v14 makeObservable];
  }

  else
  {
    v64 = [MEMORY[0x277CFBE60] emptyObservable];
  }

  v65 = *MEMORY[0x277D85DE8];

  return v64;
}

void __50__CNAutocompleteQuery_observableForQuery_context___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) addLocalExtensionObservable:v3];
  v4 = CNALoggingContextDebug();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Adding local extensions observable %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __50__CNAutocompleteQuery_observableForQuery_context___block_invoke_17(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CCA470];
  v7[0] = @"Duet observable timed out.";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"CNContactAutocompleteErrorDomain" code:1 userInfo:v3];
  [v1 finishWithError:v4];

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)configureNetworkForBuilder:(id)a3 query:(id)a4
{
  v6 = a4;
  v7 = a3;
  [a1 configureNetworkPolicyForBuilder:v7 query:v6];
  [a1 configureNetworkActivityHandlersForBuilder:v7 query:v6];
}

+ (void)configureNetworkPolicyForBuilder:(id)a3 query:(id)a4
{
  v5 = a3;
  v6 = [a4 request];
  v7 = [v6 searchString];
  v8 = [CNAutocompleteNetworkActivityPolicy policyWithThrottlingDelayForString:v7];

  [v8 delayBeforeBeginningNetworkActivity];
  [v5 setNetworkActivityStartDelay:?];
}

+ (void)configureNetworkActivityHandlersForBuilder:(id)a3 query:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_initWeak(&location, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__CNAutocompleteQuery_configureNetworkActivityHandlersForBuilder_query___block_invoke;
  v9[3] = &unk_2781C49F0;
  objc_copyWeak(&v10, &location);
  [v5 setNetworkActivityDidStartHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__CNAutocompleteQuery_configureNetworkActivityHandlersForBuilder_query___block_invoke_2;
  v7[3] = &unk_2781C49F0;
  objc_copyWeak(&v8, &location);
  [v5 setNetworkActivityDidStopHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __72__CNAutocompleteQuery_configureNetworkActivityHandlersForBuilder_query___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained searchOperationsHaveBegunNetworkActivity];
}

void __72__CNAutocompleteQuery_configureNetworkActivityHandlersForBuilder_query___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained searchOperationsHaveEndedNetworkActivity];
}

+ (id)observableWithSupplementalResultsForQuery:(id)a3
{
  v3 = a3;
  v4 = [v3 request];
  v5 = [v4 triageIdentifier];

  v6 = CNALoggingContextDebug();
  v7 = MEMORY[0x277CFBE60];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__CNAutocompleteQuery_observableWithSupplementalResultsForQuery___block_invoke;
  v13[3] = &unk_2781C4B50;
  v14 = v3;
  v15 = v5;
  v16 = v6;
  v8 = v6;
  v9 = v5;
  v10 = v3;
  v11 = [v7 observableWithBlock:v13];

  return v11;
}

id __65__CNAutocompleteQuery_observableWithSupplementalResultsForQuery___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] scheduler];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__CNAutocompleteQuery_observableWithSupplementalResultsForQuery___block_invoke_2;
  v8[3] = &unk_2781C4B28;
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = v3;
  v5 = v3;
  v6 = [v4 performCancelableBlock:v8];

  return v6;
}

void __65__CNAutocompleteQuery_observableWithSupplementalResultsForQuery___block_invoke_2(id *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v4 = [objc_alloc(MEMORY[0x277CFBDA8]) initWithState:1];
  v5 = [MEMORY[0x277CFBED0] defaultProvider];
  [v5 timestamp];
  v7 = v6;

  v8 = CNALoggingContextTriage();
  v9 = os_signpost_id_generate(v8);

  v10 = CNALoggingContextPerformance();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Searching via Delegate (supplemental results", "", buf, 2u);
  }

  v12 = [a1[4] delegate];
  v13 = [a1[4] delegateToken];
  v14 = [a1[4] request];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __65__CNAutocompleteQuery_observableWithSupplementalResultsForQuery___block_invoke_29;
  v26[3] = &unk_2781C4B00;
  v34 = v9;
  v35 = v7;
  v27 = a1[5];
  v15 = v3;
  v28 = v15;
  v33 = v36;
  v29 = a1[4];
  v30 = a1[6];
  v16 = v4;
  v31 = v16;
  v32 = a1[7];
  v17 = [v12 autocompleteFetch:v13 shouldExpectSupplementalResultsForRequest:v14 completionHandler:v26];

  if (v17)
  {
    v18 = CNALoggingContextTriage();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = a1[5];
      *buf = 138543362;
      v39 = v19;
      _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Supplemental: Results are expected", buf, 0xCu);
    }
  }

  else
  {
    v20 = CNALoggingContextTriage();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = a1[5];
      *buf = 138543362;
      v39 = v21;
      _os_log_impl(&dword_2155FE000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Supplemental: Results are not expected", buf, 0xCu);
    }

    v22 = CNALoggingContextPerformance();
    v23 = v22;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2155FE000, v23, OS_SIGNPOST_INTERVAL_END, v9, "Searching via Delegate (supplemental results", "", buf, 2u);
    }

    if ([v16 trySetState:0])
    {
      [a1[7] observerDidComplete];
    }

    else
    {
      v24 = a1[6];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __65__CNAutocompleteQuery_observableWithSupplementalResultsForQuery___block_invoke_2_cold_1(v24);
      }
    }
  }

  _Block_object_dispose(v36, 8);
  v25 = *MEMORY[0x277D85DE8];
}

void __65__CNAutocompleteQuery_observableWithSupplementalResultsForQuery___block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CNALoggingContextPerformance();
  v8 = v7;
  v9 = *(a1 + 88);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v8, OS_SIGNPOST_INTERVAL_END, v9, "Searching via Delegate (supplemental results", "", buf, 2u);
  }

  v10 = [MEMORY[0x277CFBED0] defaultProvider];
  [v10 timestamp];
  v12 = v11;

  v13 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v12 - *(a1 + 96)];
  v14 = CNALoggingContextTriage();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v15)
    {
      goto LABEL_12;
    }

    v16 = *(a1 + 32);
    *buf = 138543874;
    *&buf[4] = v16;
    *&buf[12] = 2114;
    *&buf[14] = v13;
    *&buf[22] = 2114;
    v53 = v6;
    v17 = "[%{public}@] Supplemental: Search failed (%{public}@): %{public}@";
    v18 = v14;
    v19 = 32;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_12;
    }

    v20 = *(a1 + 32);
    v21 = [v5 count];
    v22 = [v5 count];
    v23 = "results";
    *buf = 138544130;
    *&buf[4] = v20;
    *&buf[12] = 2048;
    if (v22 == 1)
    {
      v23 = "result";
    }

    *&buf[14] = v21;
    *&buf[22] = 2080;
    v53 = v23;
    v54 = 2114;
    v55 = v13;
    v17 = "[%{public}@] Supplemental: Search complete (%lu %s, %{public}@)";
    v18 = v14;
    v19 = 42;
  }

  _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_12:

  if ([*(a1 + 40) isCanceled])
  {
    goto LABEL_32;
  }

  v24 = *(*(a1 + 80) + 8);
  if (*(v24 + 24) == 1)
  {
    CNAutocompleteDelegateMultipleCallbacks(*(a1 + 48));
    goto LABEL_32;
  }

  *(v24 + 24) = 1;
  v25 = [*(a1 + 48) request];
  if ([v25 searchType] == 1)
  {
    v26 = [v5 count] == 0;

    if (v26)
    {
      goto LABEL_27;
    }

    v25 = [v5 _cn_filter:&__block_literal_global_20];
    v27 = *(a1 + 56);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = v27;
      v29 = [v25 count];
      v30 = [v25 count];
      v31 = "groups";
      if (v30 == 1)
      {
        v31 = "group";
      }

      *buf = 134218242;
      *&buf[4] = v29;
      *&buf[12] = 2080;
      *&buf[14] = v31;
      _os_log_impl(&dword_2155FE000, v28, OS_LOG_TYPE_INFO, "Supplemental results include %lu %s to check for matching members.", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v53 = 1;
    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __65__CNAutocompleteQuery_observableWithSupplementalResultsForQuery___block_invoke_37;
    v43 = &unk_2781C4AD8;
    v44 = *(a1 + 40);
    v45 = *(a1 + 56);
    v47 = buf;
    v46 = *(a1 + 48);
    v32 = [v25 _cn_flatMap:&v40];
    v33 = *(a1 + 56);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [v32 count];
      v35 = [v32 count];
      v36 = "members";
      if (v35 == 1)
      {
        v36 = "member";
      }

      *v48 = 134218242;
      v49 = v34;
      v50 = 2080;
      v51 = v36;
      _os_log_impl(&dword_2155FE000, v33, OS_LOG_TYPE_INFO, "Promoting %lu %s to include with the top-level results", v48, 0x16u);
    }

    v37 = [v5 arrayByAddingObjectsFromArray:v32];

    _Block_object_dispose(buf, 8);
    v5 = v37;
  }

LABEL_27:
  if (([*(a1 + 40) isCanceled] & 1) == 0)
  {
    if ([*(a1 + 64) trySetState:0])
    {
      [MEMORY[0x277CFBE68] sendResult:v5 error:v6 toObserver:*(a1 + 72)];
    }

    else
    {
      v38 = *(a1 + 56);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        __65__CNAutocompleteQuery_observableWithSupplementalResultsForQuery___block_invoke_29_cold_1(v38);
      }
    }
  }

LABEL_32:

  v39 = *MEMORY[0x277D85DE8];
}

id __65__CNAutocompleteQuery_observableWithSupplementalResultsForQuery___block_invoke_37(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) isCanceled])
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(*(a1 + 56) + 8) + 24);
      *buf = 134217984;
      v26 = v5;
      _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Supplemental search has been cancelled; will not expand group %lu.", buf, 0xCu);
    }

    v6 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v24 = 0;
    v7 = [v3 members:&v24];
    v8 = v24;
    if (v7)
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __65__CNAutocompleteQuery_observableWithSupplementalResultsForQuery___block_invoke_38;
      v22 = &unk_2781C4AB0;
      v23 = *(a1 + 48);
      v6 = [v7 _cn_filter:&v19];
      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(*(a1 + 56) + 8);
        v15 = *(v14 + 24);
        *(v14 + 24) = v15 + 1;
        v16 = v9;
        v17 = [v6 count];
        v18 = [v7 count];
        *buf = 134218496;
        v26 = v15;
        v27 = 2048;
        v28 = v17;
        v29 = 2048;
        v30 = v18;
        _os_log_debug_impl(&dword_2155FE000, v16, OS_LOG_TYPE_DEBUG, "Expanding group %lu: %lu/%lu members matched", buf, 0x20u);
      }
    }

    else
    {
      v10 = *(a1 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __65__CNAutocompleteQuery_observableWithSupplementalResultsForQuery___block_invoke_37_cold_1(v3, v8, v10);
      }

      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __65__CNAutocompleteQuery_observableWithSupplementalResultsForQuery___block_invoke_37_cold_2(a1, v11);
      }

      v6 = MEMORY[0x277CBEBF8];
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __65__CNAutocompleteQuery_observableWithSupplementalResultsForQuery___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = [v3 address];
  v5 = [*(a1 + 32) request];
  v6 = [v5 searchString];
  v7 = [v4 _cn_hasPrefix:v6];

  return v7;
}

- (void)searchOperationReportedResults:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CNAutocompleteQuery *)self request];
  v6 = [v5 maximumResultsCount];
  v7 = [(CNAutocompleteQuery *)self completeResults];
  v8 = [v4 _cn_take:{v6 - objc_msgSend(v7, "count")}];

  v9 = [(CNAutocompleteQuery *)self completeResults];
  v10 = [v4 arrayByAddingObjectsFromArray:v9];

  [(CNAutocompleteQuery *)self setCompleteResults:v10];
  v11 = [(CNAutocompleteQuery *)self completeResults];
  v12 = [v11 count];
  v13 = [(CNAutocompleteQuery *)self request];
  v14 = [v13 maximumResultsCount];

  if (v12 >= v14)
  {
    v17 = CNALoggingContextTriage();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(CNAutocompleteQuery *)self request];
      v19 = [v18 triageIdentifier];
      v20 = [(CNAutocompleteQuery *)self request];
      v21 = [v20 maximumResultsCount];
      v22 = [(CNAutocompleteQuery *)self completeResults];
      v26 = 138543874;
      v27 = v19;
      v28 = 2048;
      v29 = v21;
      v30 = 2048;
      v31 = [v22 count];
      _os_log_impl(&dword_2155FE000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Reached maximumResultsCount (%lu) completeResults: (%lu), cancelling.", &v26, 0x20u);
    }

    [(CNAutocompleteQuery *)self cancel];
    v23 = [(CNAutocompleteQuery *)self delegate];
    WeakRetained = objc_loadWeakRetained(&self->_delegateToken);
    [v23 autocompleteFetchHitMaximumResultsCount:WeakRetained results:v8];
  }

  else
  {
    delegate = self->_delegate;
    v16 = objc_loadWeakRetained(&self->_delegateToken);
    [(CNAutocompleteDelegateWrapper *)delegate autocompleteFetch:v16 didReceiveResults:v8];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)searchOperationEncounteredError:(id)a3
{
  delegate = self->_delegate;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegateToken);
  [(CNAutocompleteDelegateWrapper *)delegate autocompleteFetchDidEndNetworkActivity:WeakRetained];

  v7 = self->_delegate;
  v8 = objc_loadWeakRetained(&self->_delegateToken);
  [(CNAutocompleteDelegateWrapper *)v7 autocompleteFetch:v8 didFailWithError:v5];
}

- (void)searchOperationsHaveBegunNetworkActivity
{
  v3 = CNALoggingContextDebug();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2155FE000, v3, OS_LOG_TYPE_DEFAULT, "Search operations have begun network activity", v6, 2u);
  }

  delegate = self->_delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegateToken);
  [(CNAutocompleteDelegateWrapper *)delegate autocompleteFetchDidBeginNetworkActivity:WeakRetained];
}

- (void)searchOperationsHaveEndedNetworkActivity
{
  v3 = CNALoggingContextDebug();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2155FE000, v3, OS_LOG_TYPE_DEFAULT, "Search operations have ended network activity", v6, 2u);
  }

  delegate = self->_delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegateToken);
  [(CNAutocompleteDelegateWrapper *)delegate autocompleteFetchDidEndNetworkActivity:WeakRetained];
}

- (void)cancel
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = CNALoggingContextDebug();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegateToken);
    v6 = 134218240;
    v7 = self;
    v8 = 2048;
    v9 = WeakRetained;
    _os_log_impl(&dword_2155FE000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling query %p, delegate token: %p", &v6, 0x16u);
  }

  [(CNCancelationToken *)self->_cancelationToken cancel];
  v5 = *MEMORY[0x277D85DE8];
}

void __65__CNAutocompleteQuery_observableWithSupplementalResultsForQuery___block_invoke_37_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_2155FE000, log, OS_LOG_TYPE_ERROR, "Error expanding supplemental group (%{public}@): %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __65__CNAutocompleteQuery_observableWithSupplementalResultsForQuery___block_invoke_37_cold_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 + 1;
  v4 = a2;
  v6 = 134218240;
  v7 = v3;
  v8 = 2048;
  v9 = [0 count];
  _os_log_debug_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEBUG, "Expanding group %lu resulted in error, 0/%lu members matched", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end