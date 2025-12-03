@interface CNAutocompleteUserSession
- (CNAutocompleteUserSession)initWithProbeProvider:(id)provider;
- (void)_resetState;
- (void)didReceiveResults:(id)results forRequest:(id)request;
- (void)didSelectResult:(id)result atSortedIndex:(unint64_t)index;
- (void)willStartDuetRequestWithMatchingResultsFuture:(id)future;
- (void)willStartExecutingRequest:(id)request;
@end

@implementation CNAutocompleteUserSession

- (CNAutocompleteUserSession)initWithProbeProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = CNAutocompleteUserSession;
  v6 = [(CNAutocompleteUserSession *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v8 = dispatch_queue_create("com.apple.contacts.contactsautocomplete.UserSession", v7);
    syncQueue = v6->_syncQueue;
    v6->_syncQueue = v8;

    objc_storeStrong(&v6->_probeProvider, provider);
    v10 = [[CNAutocompleteUsageMonitor alloc] initWithProbeProvider:providerCopy];
    usageMonitor = v6->_usageMonitor;
    v6->_usageMonitor = v10;

    v6->_currentBatch = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (void)willStartDuetRequestWithMatchingResultsFuture:(id)future
{
  futureCopy = future;
  syncQueue = [(CNAutocompleteUserSession *)self syncQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__CNAutocompleteUserSession_willStartDuetRequestWithMatchingResultsFuture___block_invoke;
  v7[3] = &unk_2781C3CF0;
  v7[4] = self;
  v8 = futureCopy;
  v6 = futureCopy;
  dispatch_sync(syncQueue, v7);
}

- (void)willStartExecutingRequest:(id)request
{
  requestCopy = request;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  syncQueue = [(CNAutocompleteUserSession *)self syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CNAutocompleteUserSession_willStartExecutingRequest___block_invoke;
  block[3] = &unk_2781C3D18;
  v20 = &v21;
  block[4] = self;
  v6 = requestCopy;
  v19 = v6;
  dispatch_sync(syncQueue, block);

  v7 = v22[5];
  if (v7 && [v7 relevantForRequest:v6])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy_;
    v16 = __Block_byref_object_dispose_;
    v17 = 0;
    syncQueue2 = [(CNAutocompleteUserSession *)self syncQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__CNAutocompleteUserSession_willStartExecutingRequest___block_invoke_2;
    v11[3] = &unk_2781C3D40;
    v11[4] = &v21;
    v11[5] = &v12;
    dispatch_sync(syncQueue2, v11);

    v9 = v13[5];
    if (v9)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __55__CNAutocompleteUserSession_willStartExecutingRequest___block_invoke_3;
      v10[3] = &unk_2781C3D68;
      v10[4] = self;
      v10[5] = &v21;
      [v9 enumerateKeysAndObjectsUsingBlock:v10];
    }

    _Block_object_dispose(&v12, 8);
  }

  _Block_object_dispose(&v21, 8);
}

uint64_t __55__CNAutocompleteUserSession_willStartExecutingRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastDisplayedResults];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) setCurrentRequest:*(a1 + 40)];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CBEAA8] date];
  [v5 setRequestStartTime:v6];

  [*(a1 + 32) setCurrentBatch:0];
  v7 = *(a1 + 32);

  return [v7 setDuetResultsFuture:0];
}

void __55__CNAutocompleteUserSession_willStartExecutingRequest___block_invoke_2(uint64_t a1)
{
  if (([*(*(*(a1 + 32) + 8) + 40) ignored] & 1) == 0)
  {
    [*(*(*(a1 + 32) + 8) + 40) setIgnored:1];
    v5 = [*(*(*(a1 + 32) + 8) + 40) datesByBatchIndexes];
    v2 = [v5 copy];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void __55__CNAutocompleteUserSession_willStartExecutingRequest___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEAA8];
  v6 = a3;
  v7 = a2;
  v8 = [v5 date];
  [v8 timeIntervalSinceDate:v6];
  v10 = v9;

  v13 = [*(a1 + 32) usageMonitor];
  v11 = [v7 unsignedIntegerValue];

  v12 = [*(*(*(a1 + 40) + 8) + 40) request];
  [v13 userIgnoredResultsOfBatch:v11 forRequest:v12 afterDelay:v10];
}

- (void)didReceiveResults:(id)results forRequest:(id)request
{
  resultsCopy = results;
  requestCopy = request;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy_;
  v22[4] = __Block_byref_object_dispose_;
  v23 = 0;
  syncQueue = [(CNAutocompleteUserSession *)self syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CNAutocompleteUserSession_didReceiveResults_forRequest___block_invoke;
  block[3] = &unk_2781C3D90;
  v9 = requestCopy;
  v18 = v9;
  selfCopy = self;
  v20 = &v24;
  v21 = v22;
  dispatch_sync(syncQueue, block);

  if (v25[3] != 0x7FFFFFFFFFFFFFFFLL && [resultsCopy count])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__CNAutocompleteUserSession_didReceiveResults_forRequest___block_invoke_5;
    v12[3] = &unk_2781C3DB8;
    v12[4] = &v13;
    [resultsCopy _cn_each:v12];
    usageMonitor = [(CNAutocompleteUserSession *)self usageMonitor];
    v11 = [resultsCopy count];
    [usageMonitor userSawNumberOfResults:v11 forBatch:v25[3] includingNumberOfSuggestions:v14[3] forRequest:v9];

    _Block_object_dispose(&v13, 8);
  }

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);
}

void __58__CNAutocompleteUserSession_didReceiveResults_forRequest___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) currentRequest];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) currentBatch];
    [*(a1 + 40) setCurrentBatch:{objc_msgSend(*(a1 + 40), "currentBatch") + 1}];
    v4 = [*(a1 + 40) requestStartTime];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) lastDisplayedResults];
    v9 = [v8 request];
    LOBYTE(v7) = [v7 isEqual:v9];

    if ((v7 & 1) == 0)
    {
      v10 = [[_CNAutocompleteUserSessionDisplayedResults alloc] initWithRequest:*(a1 + 32)];
      [*(a1 + 40) setLastDisplayedResults:v10];
    }

    v11 = [*(a1 + 40) duetResultsFuture];

    if (v11)
    {
      v12 = [*(a1 + 40) duetResultsFuture];
      v20 = 0;
      v13 = [v12 resultWithTimeout:&v20 error:0.0];
      v14 = v20;

      if (!v13)
      {
        v15 = CNALoggingContextDebug();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v14;
          _os_log_impl(&dword_2155FE000, v15, OS_LOG_TYPE_DEFAULT, "Failed to retrieve duet results with error: %@", buf, 0xCu);
        }
      }

      v16 = [v13 count] != 0;
      v17 = [*(a1 + 40) lastDisplayedResults];
      [v17 setContainsDuetResults:v16];

      [*(a1 + 40) setDuetResultsFuture:0];
    }

    v18 = [*(a1 + 40) lastDisplayedResults];
    [v18 didReceiveBatch:*(*(*(a1 + 48) + 8) + 24)];
  }

  v19 = *MEMORY[0x277D85DE8];
}

BOOL __58__CNAutocompleteUserSession_didReceiveResults_forRequest___block_invoke_5(uint64_t a1, void *a2)
{
  result = +[CNAutocompleteResult isSourceTypeConsideredSuggestion:](CNAutocompleteResult, "isSourceTypeConsideredSuggestion:", [a2 sourceType]);
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

- (void)didSelectResult:(id)result atSortedIndex:(unint64_t)index
{
  resultCopy = result;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  syncQueue = [(CNAutocompleteUserSession *)self syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CNAutocompleteUserSession_didSelectResult_atSortedIndex___block_invoke;
  block[3] = &unk_2781C3DE0;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v10;
  dispatch_sync(syncQueue, block);

  usageMonitor = [(CNAutocompleteUserSession *)self usageMonitor];
  [usageMonitor userSelectedResult:resultCopy atSortedIndex:index forRequest:v15[5] gotResultsFromDuet:*(v11 + 24)];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

uint64_t __59__CNAutocompleteUserSession_didSelectResult_atSortedIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentRequest];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) lastDisplayedResults];
  *(*(*(a1 + 48) + 8) + 24) = [v5 containsDuetResults];

  v6 = *(a1 + 32);

  return [v6 _resetState];
}

- (void)_resetState
{
  [(CNAutocompleteUserSession *)self setCurrentRequest:0];
  [(CNAutocompleteUserSession *)self setCurrentBatch:0x7FFFFFFFFFFFFFFFLL];
  [(CNAutocompleteUserSession *)self setLastDisplayedResults:0];
  [(CNAutocompleteUserSession *)self setRequestStartTime:0];

  [(CNAutocompleteUserSession *)self setDuetResultsFuture:0];
}

@end