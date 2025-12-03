@interface CompletionListVendorForHistoryService
- (BOOL)_shouldUseNetworkedSearchSuggestions;
- (double)_timeIntervalForUpdatesToSettle;
- (id)_browserController;
- (void)_completionListDidUpdateForQuery:(id)query completionList:(id)list;
- (void)_setExportedInterfaceAndObjectForConnection:(id)connection;
- (void)completionListDidUpdate:(id)update forQuery:(id)query;
- (void)getCompletionListItemsForQuery:(id)query completionHandler:(id)handler;
@end

@implementation CompletionListVendorForHistoryService

- (void)getCompletionListItemsForQuery:(id)query completionHandler:(id)handler
{
  queryCopy = query;
  v7 = [handler copy];
  completionListItemsCallback = self->_completionListItemsCallback;
  self->_completionListItemsCallback = v7;

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__CompletionListVendorForHistoryService_getCompletionListItemsForQuery_completionHandler___block_invoke;
  v10[3] = &unk_2781D4C88;
  v10[4] = self;
  v11 = queryCopy;
  v9 = queryCopy;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __90__CompletionListVendorForHistoryService_getCompletionListItemsForQuery_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [CompletionList alloc];
  v3 = +[UniversalSearchSession sharedSession];
  v4 = [*(a1 + 32) _browserController];
  v5 = [(CompletionList *)v2 initWithParsecSearchSession:v3 browserController:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(*(a1 + 32) + 40) setDelegate:?];
  [*(*(a1 + 32) + 40) setShouldIncludeNetworkedSearchSuggestions:{objc_msgSend(*(a1 + 32), "_shouldUseNetworkedSearchSuggestions")}];
  v8 = [objc_alloc(MEMORY[0x277D49ED8]) initWithQueryString:*(a1 + 40)];
  [*(*(a1 + 32) + 40) setQuery:v8];
}

- (void)completionListDidUpdate:(id)update forQuery:(id)query
{
  updateCopy = update;
  queryCopy = query;
  [(NSTimer *)self->_completionListUpdatesDidSettleTimer invalidate];
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277CBEBB8];
  [(CompletionListVendorForHistoryService *)self _timeIntervalForUpdatesToSettle];
  v10 = v9;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __74__CompletionListVendorForHistoryService_completionListDidUpdate_forQuery___block_invoke;
  v19 = &unk_2781D84E8;
  objc_copyWeak(&v22, &location);
  v11 = queryCopy;
  v20 = v11;
  v12 = updateCopy;
  v21 = v12;
  v13 = [v8 timerWithTimeInterval:0 repeats:&v16 block:v10];
  completionListUpdatesDidSettleTimer = self->_completionListUpdatesDidSettleTimer;
  self->_completionListUpdatesDidSettleTimer = v13;

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop addTimer:self->_completionListUpdatesDidSettleTimer forMode:*MEMORY[0x277CBE640]];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __74__CompletionListVendorForHistoryService_completionListDidUpdate_forQuery___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) queryString];
    [v4 _completionListDidUpdateForQuery:v3 completionList:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)_setExportedInterfaceAndObjectForConnection:(id)connection
{
  v4 = MEMORY[0x277CCAE90];
  connectionCopy = connection;
  v5 = [v4 interfaceWithProtocol:&unk_2828703F8];
  [connectionCopy setExportedInterface:v5];

  [connectionCopy setExportedObject:self];
}

- (id)_browserController
{
  dataSource = [(WBSCompletionListVendorForHistoryService *)self dataSource];
  browserControllerForCompletionListVendorForHistoryService = [dataSource browserControllerForCompletionListVendorForHistoryService];

  return browserControllerForCompletionListVendorForHistoryService;
}

- (void)_completionListDidUpdateForQuery:(id)query completionList:(id)list
{
  v26[2] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  listCopy = list;
  v8 = listCopy;
  if (self->_completionListItemsCallback)
  {
    v24 = queryCopy;
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(listCopy, "numberOfGroups")}];
    if ([v8 numberOfGroups])
    {
      v10 = 0;
      v11 = MEMORY[0x277CBEBF8];
      do
      {
        v12 = [v8 titleForGroupAtIndex:v10];
        v13 = [v8 completionsForGroupAtIndex:v10];
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = &stru_2827BF158;
        }

        v25[0] = @"section";
        v25[1] = @"results";
        v26[0] = v14;
        v15 = v12;
        v16 = [v13 safari_mapObjectsUsingBlock:&__block_literal_global_28];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v11;
        }

        v26[1] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

        [v9 addObject:v19];
        ++v10;
      }

      while (v10 < [v8 numberOfGroups]);
    }

    queryCopy = v24;
    if ([MEMORY[0x277D49A08] isSearchEvaluationLoggingEnabled])
    {
      v20 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(CompletionListVendorForHistoryService *)v24 _completionListDidUpdateForQuery:v9 completionList:v20];
      }
    }

    completionListItemsCallback = self->_completionListItemsCallback;
    v22 = [v9 copy];
    completionListItemsCallback[2](completionListItemsCallback, v22);

    v23 = self->_completionListItemsCallback;
    self->_completionListItemsCallback = 0;
  }
}

- (double)_timeIntervalForUpdatesToSettle
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [safari_browserDefaults safari_doubleForKey:*MEMORY[0x277D4A5D0] defaultValue:2.0];
  v4 = v3;

  return v4;
}

- (BOOL)_shouldUseNetworkedSearchSuggestions
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [safari_browserDefaults safari_BOOLForKey:*MEMORY[0x277D4A168] defaultValue:1];

  return v3;
}

- (void)_completionListDidUpdateForQuery:(os_log_t)log completionList:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_215819000, log, OS_LOG_TYPE_DEBUG, "Completion list tool output for query %@: %@", &v3, 0x16u);
}

@end