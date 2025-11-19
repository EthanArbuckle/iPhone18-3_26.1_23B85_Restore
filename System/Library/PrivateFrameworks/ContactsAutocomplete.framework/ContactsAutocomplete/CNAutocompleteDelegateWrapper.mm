@interface CNAutocompleteDelegateWrapper
- (CNAutocompleteDelegateWrapper)initWithDelegate:(id)a3 userSession:(id)a4 fetchRequest:(id)a5;
- (CNAutocompleteDelegateWrapper)initWithDelegate:(id)a3 userSession:(id)a4 fetchRequest:(id)a5 scheduler:(id)a6;
- (id)addDiagnosticLog:(id)a3;
- (id)askDelegateToAdjustResults;
- (id)removeResultsWithBlockedHandles;
- (id)sortResults;
- (id)suppressResultsWithAddresses:(id)a3;
- (void)_autocompleteFetch:(id)a3 distributeReceivedResults:(id)a4;
- (void)autocompleteFetch:(id)a3 didFailWithError:(id)a4;
- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4;
- (void)autocompleteFetchDidBeginNetworkActivity:(id)a3;
- (void)autocompleteFetchDidFinish:(id)a3;
- (void)autocompleteFetchHitMaximumResultsCount:(id)a3 results:(id)a4;
- (void)queueDidEndNetworkActivityMessageForFetch:(id)a3;
- (void)queueMessageToDelegate:(id)a3;
- (void)setPredictionResultsFuture:(id)a3;
@end

@implementation CNAutocompleteDelegateWrapper

- (id)askDelegateToAdjustResults
{
  v3 = [(CNAutocompleteQueryResponsePreparer *)self->_responsePreparer askDelegateToAdjustResults];
  responsePreparer = self->_responsePreparer;
  self->_responsePreparer = v3;

  return self;
}

- (id)removeResultsWithBlockedHandles
{
  v3 = [(CNAutocompleteQueryResponsePreparer *)self->_responsePreparer removeResultsWithBlockedHandles];
  responsePreparer = self->_responsePreparer;
  self->_responsePreparer = v3;

  return self;
}

- (CNAutocompleteDelegateWrapper)initWithDelegate:(id)a3 userSession:(id)a4 fetchRequest:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() responseScheduler];
  v12 = [(CNAutocompleteDelegateWrapper *)self initWithDelegate:v10 userSession:v9 fetchRequest:v8 scheduler:v11];

  return v12;
}

- (CNAutocompleteDelegateWrapper)initWithDelegate:(id)a3 userSession:(id)a4 fetchRequest:(id)a5 scheduler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = CNAutocompleteDelegateWrapper;
  v14 = [(CNAutocompleteDelegateWrapper *)&v23 init];
  if (v14)
  {
    v15 = [[_CNAutocompleteFetchDelegateSafeWrapper alloc] initWithDelegate:v10];
    delegate = v14->_delegate;
    v14->_delegate = v15;

    objc_storeStrong(&v14->_scheduler, a6);
    v17 = objc_alloc_init(MEMORY[0x277CFBDC8]);
    cancelationToken = v14->_cancelationToken;
    v14->_cancelationToken = v17;

    objc_storeStrong(&v14->_userSession, a4);
    objc_storeStrong(&v14->_fetchRequest, a5);
    v19 = [[CNAutocompleteQueryResponsePreparer alloc] initWithDelegate:v14->_delegate fetchRequest:v14->_fetchRequest];
    responsePreparer = v14->_responsePreparer;
    v14->_responsePreparer = v19;

    v21 = v14;
  }

  return v14;
}

- (id)addDiagnosticLog:(id)a3
{
  v4 = [(CNAutocompleteQueryResponsePreparer *)self->_responsePreparer addDiagnosticLog:a3];
  responsePreparer = self->_responsePreparer;
  self->_responsePreparer = v4;

  return self;
}

- (id)sortResults
{
  v3 = [(CNAutocompleteQueryResponsePreparer *)self->_responsePreparer sortResults];
  responsePreparer = self->_responsePreparer;
  self->_responsePreparer = v3;

  return self;
}

- (id)suppressResultsWithAddresses:(id)a3
{
  v4 = [(CNAutocompleteQueryResponsePreparer *)self->_responsePreparer suppressResultsWithAddresses:a3];
  responsePreparer = self->_responsePreparer;
  self->_responsePreparer = v4;

  return self;
}

- (void)_autocompleteFetch:(id)a3 distributeReceivedResults:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CNAutocompleteDelegateWrapper *)self responsePreparer];
  v9 = [v8 prepareResults:v7 forFetch:v6];

  v10 = [(CNAutocompleteDelegateWrapper *)self userSession];
  v11 = [(CNAutocompleteDelegateWrapper *)self fetchRequest];
  [v10 didReceiveResults:v9 forRequest:v11];

  v12 = [v9 count];
  v13 = CNALoggingContextDebug();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_2155FE000, v13, OS_LOG_TYPE_DEFAULT, "About to tell our delegate about %@ results", &v17, 0xCu);
    }

    v13 = [(CNAutocompleteDelegateWrapper *)self delegate];
    [v13 autocompleteFetch:v6 didReceiveResults:v9];
  }

  else if (v14)
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_2155FE000, v13, OS_LOG_TYPE_DEFAULT, "No results to return to delegate", &v17, 2u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__CNAutocompleteDelegateWrapper_autocompleteFetch_didReceiveResults___block_invoke;
  v10[3] = &unk_2781C4048;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CNAutocompleteDelegateWrapper *)self queueMessageToDelegate:v10];
}

- (void)autocompleteFetch:(id)a3 didFailWithError:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CNALoggingContextDebug();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, "About to tell our delegate about error %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__CNAutocompleteDelegateWrapper_autocompleteFetch_didFailWithError___block_invoke;
  v12[3] = &unk_2781C4048;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [(CNAutocompleteDelegateWrapper *)self queueMessageToDelegate:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __68__CNAutocompleteDelegateWrapper_autocompleteFetch_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 autocompleteFetch:*(a1 + 40) didFailWithError:*(a1 + 48)];
}

- (void)autocompleteFetchDidBeginNetworkActivity:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__CNAutocompleteDelegateWrapper_autocompleteFetchDidBeginNetworkActivity___block_invoke;
  v6[3] = &unk_2781C3CF0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CNAutocompleteDelegateWrapper *)self queueMessageToDelegate:v6];
}

void __74__CNAutocompleteDelegateWrapper_autocompleteFetchDidBeginNetworkActivity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) openNetworkActivityCalls];
  [*(a1 + 32) setOpenNetworkActivityCalls:{objc_msgSend(*(a1 + 32), "openNetworkActivityCalls") + 1}];
  if (!v2)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 autocompleteFetchDidBeginNetworkActivity:*(a1 + 40)];

    objc_initWeak(&location, *(a1 + 32));
    v4 = [*(a1 + 32) delegate];
    objc_initWeak(&from, *(a1 + 40));
    v5 = [*(a1 + 32) cancelationToken];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __74__CNAutocompleteDelegateWrapper_autocompleteFetchDidBeginNetworkActivity___block_invoke_2;
    v7[3] = &unk_2781C4098;
    objc_copyWeak(&v9, &location);
    objc_copyWeak(&v10, &from);
    v6 = v4;
    v8 = v6;
    [v5 addCancelationBlock:v7];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&from);

    objc_destroyWeak(&location);
  }
}

void __74__CNAutocompleteDelegateWrapper_autocompleteFetchDidBeginNetworkActivity___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __74__CNAutocompleteDelegateWrapper_autocompleteFetchDidBeginNetworkActivity___block_invoke_3;
  v3[3] = &unk_2781C4070;
  objc_copyWeak(&v5, a1 + 6);
  v3[4] = WeakRetained;
  v4 = a1[4];
  [WeakRetained queueUncancelableMessageToDelegate:v3];

  objc_destroyWeak(&v5);
}

void __74__CNAutocompleteDelegateWrapper_autocompleteFetchDidBeginNetworkActivity___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if ([a1[4] openNetworkActivityCalls])
  {
    [a1[4] setOpenNetworkActivityCalls:0];
    [a1[5] autocompleteFetchDidEndNetworkActivity:WeakRetained];
  }
}

- (void)queueDidEndNetworkActivityMessageForFetch:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__CNAutocompleteDelegateWrapper_queueDidEndNetworkActivityMessageForFetch___block_invoke;
  v6[3] = &unk_2781C3CF0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CNAutocompleteDelegateWrapper *)self queueUncancelableMessageToDelegate:v6];
}

void __75__CNAutocompleteDelegateWrapper_queueDidEndNetworkActivityMessageForFetch___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) openNetworkActivityCalls])
  {
    [*(a1 + 32) setOpenNetworkActivityCalls:{objc_msgSend(*(a1 + 32), "openNetworkActivityCalls") - 1}];
    if (![*(a1 + 32) openNetworkActivityCalls])
    {
      v2 = [*(a1 + 32) delegate];
      [v2 autocompleteFetchDidEndNetworkActivity:*(a1 + 40)];
    }
  }
}

- (void)autocompleteFetchDidFinish:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__CNAutocompleteDelegateWrapper_autocompleteFetchDidFinish___block_invoke;
  v6[3] = &unk_2781C3CF0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CNAutocompleteDelegateWrapper *)self queueMessageToDelegate:v6];
}

void __60__CNAutocompleteDelegateWrapper_autocompleteFetchDidFinish___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 autocompleteFetchDidFinish:*(a1 + 40)];
}

- (void)autocompleteFetchHitMaximumResultsCount:(id)a3 results:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(CNCancelationToken *)self->_cancelationToken isCanceled]& 1) == 0)
  {
    [CNAutocompleteDelegateWrapper autocompleteFetchHitMaximumResultsCount:results:];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__CNAutocompleteDelegateWrapper_autocompleteFetchHitMaximumResultsCount_results___block_invoke;
  v10[3] = &unk_2781C4048;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CNAutocompleteDelegateWrapper *)self queueUncancelableMessageToDelegate:v10];
}

void __81__CNAutocompleteDelegateWrapper_autocompleteFetchHitMaximumResultsCount_results___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _autocompleteFetch:*(a1 + 40) distributeReceivedResults:*(a1 + 48)];
  v2 = [*(a1 + 32) delegate];
  [v2 autocompleteFetchDidFinish:*(a1 + 40)];
}

- (void)queueMessageToDelegate:(id)a3
{
  v4 = a3;
  v5 = self->_cancelationToken;
  scheduler = self->_scheduler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__CNAutocompleteDelegateWrapper_queueMessageToDelegate___block_invoke;
  v9[3] = &unk_2781C40C0;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [(CNScheduler *)scheduler performBlock:v9];
}

uint64_t __56__CNAutocompleteDelegateWrapper_queueMessageToDelegate___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCanceled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)setPredictionResultsFuture:(id)a3
{
  [(CNAutocompleteQueryResponsePreparer *)self->_responsePreparer setPriorityResultsFuture:a3];
  v6 = objc_alloc_init(MEMORY[0x277CFBE90]);
  [(CNAutocompleteQueryResponsePreparer *)self->_responsePreparer setMatchingPriorityResultsPromise:v6];
  userSession = self->_userSession;
  v5 = [v6 future];
  [(CNAutocompleteUserSession *)userSession willStartDuetRequestWithMatchingResultsFuture:v5];
}

@end