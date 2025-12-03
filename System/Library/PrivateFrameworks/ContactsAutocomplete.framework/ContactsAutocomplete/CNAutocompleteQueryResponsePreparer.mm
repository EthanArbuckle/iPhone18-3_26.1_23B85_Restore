@interface CNAutocompleteQueryResponsePreparer
- (CNAutocompleteFetchDelegate)delegate;
- (CNAutocompleteQueryResponsePreparer)initWithDelegate:(id)delegate fetchRequest:(id)request;
- (id)addDiagnosticLog:(id)log;
- (id)applyPriorityResultsOrder:(id)order;
- (id)askDelegateToAdjustResults;
- (id)prepareResults:(id)results forFetch:(id)fetch;
- (id)removeResultsWithBlockedHandles;
- (id)resultsNotPreviouslyReturned:(id)returned;
- (id)sortResults;
- (id)suppressResultsWithAddresses:(id)addresses;
@end

@implementation CNAutocompleteQueryResponsePreparer

- (CNAutocompleteFetchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)askDelegateToAdjustResults
{
  v3 = [_CNDelegateAdjustingResponsePreparer alloc];
  delegate = [(CNAutocompleteQueryResponsePreparer *)self delegate];
  v5 = [(_CNAutocompleteResponsePreparerDecorator *)v3 initWithResponsePreparer:self delegate:delegate];

  return v5;
}

- (id)removeResultsWithBlockedHandles
{
  v3 = [_CNHandleBlockingResponsePreparer alloc];
  delegate = [(CNAutocompleteQueryResponsePreparer *)self delegate];
  v5 = [(_CNAutocompleteResponsePreparerDecorator *)v3 initWithResponsePreparer:self delegate:delegate];

  return v5;
}

- (CNAutocompleteQueryResponsePreparer)initWithDelegate:(id)delegate fetchRequest:(id)request
{
  delegateCopy = delegate;
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = CNAutocompleteQueryResponsePreparer;
  v8 = [(CNAutocompleteQueryResponsePreparer *)&v13 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB40]);
    previouslyReturnedResults = v8->_previouslyReturnedResults;
    v8->_previouslyReturnedResults = v9;

    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v8->_fetchRequest, request);
    v11 = v8;
  }

  return v8;
}

- (id)prepareResults:(id)results forFetch:(id)fetch
{
  v48 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v6 = CNALoggingContextDebug();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [resultsCopy count];
    if (v7 < 0x1F5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v7, v43];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v7];
    }
    v8 = ;
    *buf = 138543362;
    v45 = v8;
    _os_log_impl(&dword_2155FE000, v6, OS_LOG_TYPE_DEFAULT, "Calling prepareResults: (%{public}@)", buf, 0xCu);
  }

  v9 = [(CNAutocompleteQueryResponsePreparer *)self findUniqueResults:resultsCopy];
  v10 = CNALoggingContextDebug();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 count];
    if (v11 < 0x1F5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v11, v43];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v11];
    }
    v12 = ;
    *buf = 138543362;
    v45 = v12;
    _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "Found unique results: (%{public}@)", buf, 0xCu);
  }

  v13 = [(CNAutocompleteQueryResponsePreparer *)self resultsNotPreviouslyReturned:v9];
  v14 = CNALoggingContextDebug();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 count];
    if (v15 < 0x1F5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v15, v43];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v15];
    }
    v16 = ;
    *buf = 138543362;
    v45 = v16;
    _os_log_impl(&dword_2155FE000, v14, OS_LOG_TYPE_DEFAULT, "Found unique results not previously returned: (%{public}@)", buf, 0xCu);
  }

  v17 = CNALoggingContextDebug();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v13 count];
    if (v18 < 0x1F5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v18, v43];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v18];
    }
    v19 = ;
    *buf = 138543362;
    v45 = v19;
    _os_log_impl(&dword_2155FE000, v17, OS_LOG_TYPE_DEFAULT, "Found unique new results not previously returned: (%{public}@)", buf, 0xCu);
  }

  fetchRequest = [(CNAutocompleteQueryResponsePreparer *)self fetchRequest];
  searchString = [fetchRequest searchString];
  v22 = [searchString length];

  v23 = CNALoggingContextDebug();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v24)
    {
      v25 = [v13 count];
      if (v25 < 0x1F5)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v25, v43];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v25];
      }
      v27 = ;
      *buf = 138543362;
      v45 = v27;
      _os_log_impl(&dword_2155FE000, v23, OS_LOG_TYPE_DEFAULT, "Search string has length > 0: (%{public}@)", buf, 0xCu);
    }

    v28 = [(CNAutocompleteQueryResponsePreparer *)self applyPriorityResultsOrder:v13];
  }

  else
  {
    if (v24)
    {
      v26 = [v13 count];
      if (v26 < 0x1F5)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v26, v43];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v26];
      }
      v29 = ;
      *buf = 138543362;
      v45 = v29;
      _os_log_impl(&dword_2155FE000, v23, OS_LOG_TYPE_DEFAULT, "Search string has length = 0: (%{public}@)", buf, 0xCu);
    }

    v28 = v13;
  }

  v30 = v28;
  v31 = CNALoggingContextDebug();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [v9 count];
    if (v32 < 0x1F5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v32, v43];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v32];
    }
    v33 = ;
    v34 = [v9 _cn_take:500];
    *buf = 138543619;
    v45 = v33;
    v46 = 2113;
    v47 = v34;
    _os_log_impl(&dword_2155FE000, v31, OS_LOG_TYPE_DEFAULT, "Unique results: (%{public}@): %{private}@", buf, 0x16u);
  }

  if (CNAutocompleteIsDebugLoggingEnabled())
  {
    v35 = [resultsCopy mutableCopy];
    [v35 removeObjectsInArray:v13];
    v36 = CNALoggingContextDebug();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v45 = v35;
      _os_log_impl(&dword_2155FE000, v36, OS_LOG_TYPE_DEFAULT, "Dropping duplicate results: %{private}@", buf, 0xCu);
    }

    v37 = CNALoggingContextDebug();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v30 count];
      if (v38 < 0x1F5)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v38, v43];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v38];
      }
      v39 = ;
      v40 = [v30 _cn_take:500];
      *buf = 138543619;
      v45 = v39;
      v46 = 2113;
      v47 = v40;
      _os_log_impl(&dword_2155FE000, v37, OS_LOG_TYPE_DEFAULT, "Will return re-ranked results (%{public}@): %{private}@", buf, 0x16u);
    }
  }

  v41 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)resultsNotPreviouslyReturned:(id)returned
{
  previouslyReturnedResults = self->_previouslyReturnedResults;
  returnedCopy = returned;
  v6 = [(NSMutableOrderedSet *)previouslyReturnedResults count];
  [(NSMutableOrderedSet *)self->_previouslyReturnedResults addObjectsFromArray:returnedCopy];

  v7 = [(NSMutableOrderedSet *)self->_previouslyReturnedResults count]- v6;
  array = [(NSMutableOrderedSet *)self->_previouslyReturnedResults array];
  v9 = [array subarrayWithRange:{v6, v7}];

  return v9;
}

- (id)applyPriorityResultsOrder:(id)order
{
  v4 = MEMORY[0x277CFBE10];
  orderCopy = order;
  currentEnvironment = [v4 currentEnvironment];
  suggestedResultPrioritization = [currentEnvironment suggestedResultPrioritization];

  fetchRequest = [(CNAutocompleteQueryResponsePreparer *)self fetchRequest];
  matchingPriorityResultsPromise = [(CNAutocompleteQueryResponsePreparer *)self matchingPriorityResultsPromise];
  v10 = [suggestedResultPrioritization applyPriorityOrderToResults:orderCopy fetchRequest:fetchRequest andCompletePriorityResultsPromise:matchingPriorityResultsPromise];

  return v10;
}

- (id)addDiagnosticLog:(id)log
{
  logCopy = log;
  v5 = [_CNDiagnosticResponsePreparer alloc];
  delegate = [(CNAutocompleteQueryResponsePreparer *)self delegate];
  v7 = [(_CNDiagnosticResponsePreparer *)v5 initWithResponsePreparer:self delegate:delegate log:logCopy];

  return v7;
}

- (id)sortResults
{
  v3 = [_CNSortingResponsePreparer alloc];
  delegate = [(CNAutocompleteQueryResponsePreparer *)self delegate];
  v5 = [(_CNAutocompleteResponsePreparerDecorator *)v3 initWithResponsePreparer:self delegate:delegate];

  return v5;
}

- (id)suppressResultsWithAddresses:(id)addresses
{
  v4 = MEMORY[0x277CBEB98];
  v5 = [addresses _cn_map:CNAutocompleteResultAddressStringForHashingTransform];
  v6 = [v4 setWithArray:v5];

  v7 = [_CNFilteringResponsePreparer alloc];
  delegate = [(CNAutocompleteQueryResponsePreparer *)self delegate];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__CNAutocompleteQueryResponsePreparer_suppressResultsWithAddresses___block_invoke;
  v12[3] = &unk_2781C4AB0;
  v13 = v6;
  v9 = v6;
  v10 = [(_CNFilteringResponsePreparer *)v7 initWithResponsePreparer:self delegate:delegate filter:v12];

  return v10;
}

uint64_t __68__CNAutocompleteQueryResponsePreparer_suppressResultsWithAddresses___block_invoke(uint64_t a1, void *a2)
{
  v3 = CNAutocompleteResultAddressStringForHashingTransform;
  v4 = [a2 value];
  v5 = [v4 address];
  v6 = v3[2](v3, v5);

  LODWORD(a1) = [*(a1 + 32) containsObject:v6];
  return a1 ^ 1;
}

@end