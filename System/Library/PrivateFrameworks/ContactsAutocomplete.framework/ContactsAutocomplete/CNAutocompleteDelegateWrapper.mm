@interface CNAutocompleteDelegateWrapper
- (CNAutocompleteDelegateWrapper)initWithDelegate:(id)delegate userSession:(id)session fetchRequest:(id)request;
- (CNAutocompleteDelegateWrapper)initWithDelegate:(id)delegate userSession:(id)session fetchRequest:(id)request scheduler:(id)scheduler;
- (id)addDiagnosticLog:(id)log;
- (id)askDelegateToAdjustResults;
- (id)removeResultsWithBlockedHandles;
- (id)sortResults;
- (id)suppressResultsWithAddresses:(id)addresses;
- (void)_autocompleteFetch:(id)fetch distributeReceivedResults:(id)results;
- (void)autocompleteFetch:(id)fetch didFailWithError:(id)error;
- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results;
- (void)autocompleteFetchDidBeginNetworkActivity:(id)activity;
- (void)autocompleteFetchDidFinish:(id)finish;
- (void)autocompleteFetchHitMaximumResultsCount:(id)count results:(id)results;
- (void)queueDidEndNetworkActivityMessageForFetch:(id)fetch;
- (void)queueMessageToDelegate:(id)delegate;
- (void)setPredictionResultsFuture:(id)future;
@end

@implementation CNAutocompleteDelegateWrapper

- (id)askDelegateToAdjustResults
{
  askDelegateToAdjustResults = [(CNAutocompleteQueryResponsePreparer *)self->_responsePreparer askDelegateToAdjustResults];
  responsePreparer = self->_responsePreparer;
  self->_responsePreparer = askDelegateToAdjustResults;

  return self;
}

- (id)removeResultsWithBlockedHandles
{
  removeResultsWithBlockedHandles = [(CNAutocompleteQueryResponsePreparer *)self->_responsePreparer removeResultsWithBlockedHandles];
  responsePreparer = self->_responsePreparer;
  self->_responsePreparer = removeResultsWithBlockedHandles;

  return self;
}

- (CNAutocompleteDelegateWrapper)initWithDelegate:(id)delegate userSession:(id)session fetchRequest:(id)request
{
  requestCopy = request;
  sessionCopy = session;
  delegateCopy = delegate;
  responseScheduler = [objc_opt_class() responseScheduler];
  v12 = [(CNAutocompleteDelegateWrapper *)self initWithDelegate:delegateCopy userSession:sessionCopy fetchRequest:requestCopy scheduler:responseScheduler];

  return v12;
}

- (CNAutocompleteDelegateWrapper)initWithDelegate:(id)delegate userSession:(id)session fetchRequest:(id)request scheduler:(id)scheduler
{
  delegateCopy = delegate;
  sessionCopy = session;
  requestCopy = request;
  schedulerCopy = scheduler;
  v23.receiver = self;
  v23.super_class = CNAutocompleteDelegateWrapper;
  v14 = [(CNAutocompleteDelegateWrapper *)&v23 init];
  if (v14)
  {
    v15 = [[_CNAutocompleteFetchDelegateSafeWrapper alloc] initWithDelegate:delegateCopy];
    delegate = v14->_delegate;
    v14->_delegate = v15;

    objc_storeStrong(&v14->_scheduler, scheduler);
    v17 = objc_alloc_init(MEMORY[0x277CFBDC8]);
    cancelationToken = v14->_cancelationToken;
    v14->_cancelationToken = v17;

    objc_storeStrong(&v14->_userSession, session);
    objc_storeStrong(&v14->_fetchRequest, request);
    v19 = [[CNAutocompleteQueryResponsePreparer alloc] initWithDelegate:v14->_delegate fetchRequest:v14->_fetchRequest];
    responsePreparer = v14->_responsePreparer;
    v14->_responsePreparer = v19;

    v21 = v14;
  }

  return v14;
}

- (id)addDiagnosticLog:(id)log
{
  v4 = [(CNAutocompleteQueryResponsePreparer *)self->_responsePreparer addDiagnosticLog:log];
  responsePreparer = self->_responsePreparer;
  self->_responsePreparer = v4;

  return self;
}

- (id)sortResults
{
  sortResults = [(CNAutocompleteQueryResponsePreparer *)self->_responsePreparer sortResults];
  responsePreparer = self->_responsePreparer;
  self->_responsePreparer = sortResults;

  return self;
}

- (id)suppressResultsWithAddresses:(id)addresses
{
  v4 = [(CNAutocompleteQueryResponsePreparer *)self->_responsePreparer suppressResultsWithAddresses:addresses];
  responsePreparer = self->_responsePreparer;
  self->_responsePreparer = v4;

  return self;
}

- (void)_autocompleteFetch:(id)fetch distributeReceivedResults:(id)results
{
  v19 = *MEMORY[0x277D85DE8];
  fetchCopy = fetch;
  resultsCopy = results;
  responsePreparer = [(CNAutocompleteDelegateWrapper *)self responsePreparer];
  v9 = [responsePreparer prepareResults:resultsCopy forFetch:fetchCopy];

  userSession = [(CNAutocompleteDelegateWrapper *)self userSession];
  fetchRequest = [(CNAutocompleteDelegateWrapper *)self fetchRequest];
  [userSession didReceiveResults:v9 forRequest:fetchRequest];

  v12 = [v9 count];
  delegate = CNALoggingContextDebug();
  v14 = os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultsCopy, "count")}];
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_2155FE000, delegate, OS_LOG_TYPE_DEFAULT, "About to tell our delegate about %@ results", &v17, 0xCu);
    }

    delegate = [(CNAutocompleteDelegateWrapper *)self delegate];
    [delegate autocompleteFetch:fetchCopy didReceiveResults:v9];
  }

  else if (v14)
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_2155FE000, delegate, OS_LOG_TYPE_DEFAULT, "No results to return to delegate", &v17, 2u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results
{
  fetchCopy = fetch;
  resultsCopy = results;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__CNAutocompleteDelegateWrapper_autocompleteFetch_didReceiveResults___block_invoke;
  v10[3] = &unk_2781C4048;
  v10[4] = self;
  v11 = fetchCopy;
  v12 = resultsCopy;
  v8 = resultsCopy;
  v9 = fetchCopy;
  [(CNAutocompleteDelegateWrapper *)self queueMessageToDelegate:v10];
}

- (void)autocompleteFetch:(id)fetch didFailWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  fetchCopy = fetch;
  errorCopy = error;
  v8 = CNALoggingContextDebug();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = errorCopy;
    _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, "About to tell our delegate about error %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__CNAutocompleteDelegateWrapper_autocompleteFetch_didFailWithError___block_invoke;
  v12[3] = &unk_2781C4048;
  v12[4] = self;
  v13 = fetchCopy;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = fetchCopy;
  [(CNAutocompleteDelegateWrapper *)self queueMessageToDelegate:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __68__CNAutocompleteDelegateWrapper_autocompleteFetch_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 autocompleteFetch:*(a1 + 40) didFailWithError:*(a1 + 48)];
}

- (void)autocompleteFetchDidBeginNetworkActivity:(id)activity
{
  activityCopy = activity;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__CNAutocompleteDelegateWrapper_autocompleteFetchDidBeginNetworkActivity___block_invoke;
  v6[3] = &unk_2781C3CF0;
  v6[4] = self;
  v7 = activityCopy;
  v5 = activityCopy;
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

- (void)queueDidEndNetworkActivityMessageForFetch:(id)fetch
{
  fetchCopy = fetch;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__CNAutocompleteDelegateWrapper_queueDidEndNetworkActivityMessageForFetch___block_invoke;
  v6[3] = &unk_2781C3CF0;
  v6[4] = self;
  v7 = fetchCopy;
  v5 = fetchCopy;
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

- (void)autocompleteFetchDidFinish:(id)finish
{
  finishCopy = finish;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__CNAutocompleteDelegateWrapper_autocompleteFetchDidFinish___block_invoke;
  v6[3] = &unk_2781C3CF0;
  v6[4] = self;
  v7 = finishCopy;
  v5 = finishCopy;
  [(CNAutocompleteDelegateWrapper *)self queueMessageToDelegate:v6];
}

void __60__CNAutocompleteDelegateWrapper_autocompleteFetchDidFinish___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 autocompleteFetchDidFinish:*(a1 + 40)];
}

- (void)autocompleteFetchHitMaximumResultsCount:(id)count results:(id)results
{
  countCopy = count;
  resultsCopy = results;
  if (([(CNCancelationToken *)self->_cancelationToken isCanceled]& 1) == 0)
  {
    [CNAutocompleteDelegateWrapper autocompleteFetchHitMaximumResultsCount:results:];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__CNAutocompleteDelegateWrapper_autocompleteFetchHitMaximumResultsCount_results___block_invoke;
  v10[3] = &unk_2781C4048;
  v10[4] = self;
  v11 = countCopy;
  v12 = resultsCopy;
  v8 = resultsCopy;
  v9 = countCopy;
  [(CNAutocompleteDelegateWrapper *)self queueUncancelableMessageToDelegate:v10];
}

void __81__CNAutocompleteDelegateWrapper_autocompleteFetchHitMaximumResultsCount_results___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _autocompleteFetch:*(a1 + 40) distributeReceivedResults:*(a1 + 48)];
  v2 = [*(a1 + 32) delegate];
  [v2 autocompleteFetchDidFinish:*(a1 + 40)];
}

- (void)queueMessageToDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = self->_cancelationToken;
  scheduler = self->_scheduler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__CNAutocompleteDelegateWrapper_queueMessageToDelegate___block_invoke;
  v9[3] = &unk_2781C40C0;
  v10 = v5;
  v11 = delegateCopy;
  v7 = delegateCopy;
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

- (void)setPredictionResultsFuture:(id)future
{
  [(CNAutocompleteQueryResponsePreparer *)self->_responsePreparer setPriorityResultsFuture:future];
  v6 = objc_alloc_init(MEMORY[0x277CFBE90]);
  [(CNAutocompleteQueryResponsePreparer *)self->_responsePreparer setMatchingPriorityResultsPromise:v6];
  userSession = self->_userSession;
  future = [v6 future];
  [(CNAutocompleteUserSession *)userSession willStartDuetRequestWithMatchingResultsFuture:future];
}

@end