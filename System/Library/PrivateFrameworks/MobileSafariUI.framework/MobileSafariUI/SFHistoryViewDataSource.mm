@interface SFHistoryViewDataSource
- (SFHistoryViewDataSource)initWithHistory:(id)a3;
- (SFHistoryViewDataSourceDelegate)delegate;
- (TabGroupProvider)tabGroupProvider;
- (id)_browsingSessions;
- (id)_filteredHistorySessionsForPredicate:(id)a3;
- (void)_filterUsingPredicate:(id)a3;
- (void)_removeIgnoredSiriSuggestedSiteRecordsForHistoryItems:(id)a3;
- (void)_saveChangesToCloudHistory;
- (void)_updateIfNeeded;
- (void)dealloc;
- (void)deleteHistoryItems:(id)a3 completionHandler:(id)a4;
- (void)saveChangesToCloudHistorySoon;
- (void)searchWithText:(id)a3;
@end

@implementation SFHistoryViewDataSource

- (SFHistoryViewDataSource)initWithHistory:(id)a3
{
  v5 = a3;
  v27.receiver = self;
  v27.super_class = SFHistoryViewDataSource;
  v6 = [(SFHistoryViewDataSource *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_history, a3);
    v8 = [MEMORY[0x277CBEB70] orderedSet];
    unfilteredSessions = v7->_unfilteredSessions;
    v7->_unfilteredSessions = v8;

    v10 = dispatch_queue_create("com.apple.mobilesafari.SFHistoryViewDataSource", 0);
    filteringQueue = v7->_filteringQueue;
    v7->_filteringQueue = v10;

    v12 = objc_alloc_init(MEMORY[0x277D4A818]);
    siriHistorySearch = v7->_siriHistorySearch;
    v7->_siriHistorySearch = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.mobilesafari.SFHistoryViewController.IgnoredSiriSuggestedSites", v14);
    ignoredSiriSuggestedSitesQueue = v7->_ignoredSiriSuggestedSitesQueue;
    v7->_ignoredSiriSuggestedSitesQueue = v15;

    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __43__SFHistoryViewDataSource_initWithHistory___block_invoke;
    v24 = &unk_2781D4C88;
    v17 = v7;
    v25 = v17;
    v26 = v5;
    [v26 performBlockAfterHistoryHasLoaded:&v21];
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v17 selector:sel_historyChanged_ name:*MEMORY[0x277D4A238] object:0];

    v19 = v17;
  }

  return v7;
}

void __43__SFHistoryViewDataSource_initWithHistory___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __43__SFHistoryViewDataSource_initWithHistory___block_invoke_2;
  v2[3] = &unk_2781D4C88;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __43__SFHistoryViewDataSource_initWithHistory___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D49F88]) initWithHistory:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  *(*(a1 + 32) + 18) = 1;
  v5 = *(a1 + 32);

  return [v5 _updateIfNeeded];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:*MEMORY[0x277D4A238]];

  v4.receiver = self;
  v4.super_class = SFHistoryViewDataSource;
  [(SFHistoryViewDataSource *)&v4 dealloc];
}

- (void)_filterUsingPredicate:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  filteringQueue = self->_filteringQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SFHistoryViewDataSource__filterUsingPredicate___block_invoke;
  block[3] = &unk_2781D5870;
  block[4] = self;
  v6 = v4;
  v8 = v6;
  v9 = &v10;
  dispatch_sync(filteringQueue, block);
  if (*(v11 + 24) == 1)
  {
    self->_updateFlags.filterChanged = 1;
    [(SFHistoryViewDataSource *)self _updateIfNeeded];
  }

  _Block_object_dispose(&v10, 8);
}

void __49__SFHistoryViewDataSource__filterUsingPredicate___block_invoke(uint64_t a1)
{
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)_updateIfNeeded
{
  if ((self->_updateFlags.filterChanged || self->_updateFlags.changedExternally) && !self->_updateFlags.isUpdating && !self->_updateFlags.suppressingUpdatesCount && self->_sessionController)
  {
    if (self->_updateFlags.changedExternally)
    {
      unfilteredSessions = self->_unfilteredSessions;
      self->_unfilteredSessions = 0;
    }

    *&self->_updateFlags.isUpdating = 1;
    self->_updateFlags.changedExternally = 0;
    filteringQueue = self->_filteringQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__SFHistoryViewDataSource__updateIfNeeded__block_invoke;
    block[3] = &unk_2781D4D40;
    block[4] = self;
    dispatch_async(filteringQueue, block);
  }
}

void __42__SFHistoryViewDataSource__updateIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _filteredHistorySessionsForPredicate:*(*(a1 + 32) + 40)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__SFHistoryViewDataSource__updateIfNeeded__block_invoke_2;
  v4[3] = &unk_2781D4C88;
  v4[4] = *(a1 + 32);
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

uint64_t __42__SFHistoryViewDataSource__updateIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained historyViewDataSource:*(a1 + 32) didComputeSessions:*(a1 + 40)];

  *(*(a1 + 32) + 16) = 0;
  v3 = *(a1 + 32);

  return [v3 _updateIfNeeded];
}

- (id)_filteredHistorySessionsForPredicate:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SFHistoryViewDataSource *)self _browsingSessions];
  v6 = v5;
  if (v4)
  {
    v7 = [MEMORY[0x277CBEB40] orderedSet];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 historyItems];
          v15 = [v14 array];
          v16 = [v15 filteredArrayUsingPredicate:v4];

          if ([v16 count])
          {
            v17 = [v13 filteredSessionWithItems:v16];
            [v7 addObject:v17];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v6 = v19;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (id)_browsingSessions
{
  p_unfilteredSessions = &self->_unfilteredSessions;
  unfilteredSessions = self->_unfilteredSessions;
  if (unfilteredSessions)
  {
    v4 = unfilteredSessions;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB40] orderedSet];
    v6 = [(WBSHistorySessionController *)self->_sessionController orderedSessions];
    if ([v6 count])
    {
      v17[0] = 0;
      v17[1] = v17;
      v17[2] = 0x3032000000;
      v17[3] = __Block_byref_object_copy__2;
      v17[4] = __Block_byref_object_dispose__2;
      v18 = 0;
      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x3032000000;
      v15[3] = __Block_byref_object_copy__2;
      v15[4] = __Block_byref_object_dispose__2;
      v16 = 0;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __44__SFHistoryViewDataSource__browsingSessions__block_invoke;
      v11[3] = &unk_2781D5FE8;
      v11[4] = self;
      v13 = v17;
      v14 = v15;
      v7 = v4;
      v12 = v7;
      [v6 enumerateObjectsUsingBlock:v11];
      objc_storeStrong(p_unfilteredSessions, v4);
      v8 = v12;
      v9 = v7;

      _Block_object_dispose(v15, 8);
      _Block_object_dispose(v17, 8);
    }
  }

  return v4;
}

void __44__SFHistoryViewDataSource__browsingSessions__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(*(a1 + 32) + 8) itemsLastVisitedInSession:v5];
  v7 = 0x2781D1000uLL;
  if (+[History numberOfDaysToShowPeriodLabels]<= a3)
  {
    v36 = [SFHistoryViewDataSourceSession alloc];
    v37 = [v5 startDate];
    v38 = [History sessionIdentifierFromDate:v37];
    v39 = *(*(a1 + 32) + 88);
    v40 = [v5 startDate];
    v41 = [v39 titleForDate:v40];
    v42 = [v5 startDate];
    v43 = [MEMORY[0x277CBEB70] orderedSetWithArray:v6];
    v44 = [(SFHistoryViewDataSourceSession *)v36 initWithIdentifier:v38 title:v41 lastVisitedDate:v42 historyItems:v43];

    [*(a1 + 40) addObject:v44];
  }

  else
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v53 objects:v57 count:{16, v6, v5}];
    if (v8)
    {
      v9 = v8;
      v10 = *v54;
      v47 = *v54;
      do
      {
        v11 = 0;
        v48 = v9;
        do
        {
          if (*v54 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v53 + 1) + 8 * v11);
          v13 = *(v7 + 4088);
          v14 = [v12 lastVisitedDate];
          v15 = [v13 sessionIdentifierFromDate:v14];

          if (([v15 isEqualToString:*(*(*(a1 + 48) + 8) + 40)] & 1) == 0)
          {
            v16 = [*(*(*(a1 + 56) + 8) + 40) firstObject];

            if (v16)
            {
              v51 = *(a1 + 40);
              v50 = [SFHistoryViewDataSourceSession alloc];
              v17 = *(*(*(a1 + 48) + 8) + 40);
              v18 = *(*(a1 + 32) + 88);
              v52 = [*(*(*(a1 + 56) + 8) + 40) firstObject];
              v19 = [v52 lastVisitedDate];
              v20 = [v18 titleForDate:v19];
              [*(*(*(a1 + 56) + 8) + 40) firstObject];
              v22 = v21 = v7;
              v23 = [v22 lastVisitedDate];
              v24 = [(SFHistoryViewDataSourceSession *)v50 initWithIdentifier:v17 title:v20 lastVisitedDate:v23 historyItems:*(*(*(a1 + 56) + 8) + 40)];
              [v51 addObject:v24];

              v10 = v47;
              v7 = v21;

              v9 = v48;
            }

            v25 = [MEMORY[0x277CBEB40] orderedSet];
            v26 = *(*(a1 + 56) + 8);
            v27 = *(v26 + 40);
            *(v26 + 40) = v25;

            objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15);
          }

          [*(*(*(a1 + 56) + 8) + 40) addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v9);
    }

    v28 = [*(*(*(a1 + 56) + 8) + 40) firstObject];

    if (v28)
    {
      v29 = [*(*(*(a1 + 56) + 8) + 40) firstObject];
      v30 = [v29 lastVisitedDate];

      v31 = [*(v7 + 4088) sessionIdentifierFromDate:v30];
      v32 = *(a1 + 40);
      v33 = [SFHistoryViewDataSourceSession alloc];
      v34 = [*(*(a1 + 32) + 88) titleForDate:v30];
      v35 = [(SFHistoryViewDataSourceSession *)v33 initWithIdentifier:v31 title:v34 lastVisitedDate:v30 historyItems:*(*(*(a1 + 56) + 8) + 40)];
      [v32 addObject:v35];
    }
  }
}

- (void)deleteHistoryItems:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &__block_literal_global_7;
  }

  [(SFHistoryViewDataSource *)self _removeIgnoredSiriSuggestedSiteRecordsForHistoryItems:v6];
  v9 = [MEMORY[0x277CBEB98] setWithArray:v6];
  v10 = MEMORY[0x277CCAC30];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __64__SFHistoryViewDataSource_deleteHistoryItems_completionHandler___block_invoke_2;
  v24[3] = &unk_2781D6010;
  v25 = v9;
  v11 = v9;
  v12 = [v10 predicateWithBlock:v24];
  filteringQueue = self->_filteringQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SFHistoryViewDataSource_deleteHistoryItems_completionHandler___block_invoke_3;
  block[3] = &unk_2781D5430;
  block[4] = self;
  v21 = v12;
  v22 = v6;
  v23 = v8;
  v14 = v8;
  v15 = v6;
  v16 = v12;
  dispatch_async(filteringQueue, block);
  v17 = [v15 safari_mapObjectsUsingBlock:&__block_literal_global_19];
  v18 = MEMORY[0x277D49F28];
  v19 = [(WBSHistory *)self->_history profileLocalIdentifier];
  [v18 deleteUsageHistoryForURLs:v17 profileIdentifier:v19 completionHandler:0];
}

void __64__SFHistoryViewDataSource_deleteHistoryItems_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _filteredHistorySessionsForPredicate:*(a1 + 40)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__SFHistoryViewDataSource_deleteHistoryItems_completionHandler___block_invoke_4;
  v4[3] = &unk_2781D5430;
  v4[4] = *(a1 + 32);
  v5 = v2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __64__SFHistoryViewDataSource_deleteHistoryItems_completionHandler___block_invoke_4(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  *(*(a1 + 32) + 17) = 1;
  [*(a1 + 32) _updateIfNeeded];
  ++*(*(a1 + 32) + 24);
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__SFHistoryViewDataSource_deleteHistoryItems_completionHandler___block_invoke_5;
  v5[3] = &unk_2781D56B0;
  v5[4] = v2;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v3 removeItems:v4 completionHanlder:v5];
}

uint64_t __64__SFHistoryViewDataSource_deleteHistoryItems_completionHandler___block_invoke_5(uint64_t a1)
{
  --*(*(a1 + 32) + 24);
  [*(a1 + 32) _updateIfNeeded];
  [*(a1 + 32) saveChangesToCloudHistorySoon];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)saveChangesToCloudHistorySoon
{
  [(NSTimer *)self->_saveChangesToCloudHistoryTimer invalidate];
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__saveChangesToCloudHistory selector:0 userInfo:0 repeats:3.0];
  saveChangesToCloudHistoryTimer = self->_saveChangesToCloudHistoryTimer;
  self->_saveChangesToCloudHistoryTimer = v3;
}

- (void)_saveChangesToCloudHistory
{
  v2 = +[Application sharedApplication];
  [v2 saveChangesToCloudHistoryStore];
}

- (void)searchWithText:(id)a3
{
  v4 = a3;
  v5 = [History lowercaseStringTrimmedForHistorySearch:v4];
  if ([v5 length])
  {
    if ((WBSIsEqual() & 1) == 0)
    {
      v6 = [v4 copy];
      searchText = self->_searchText;
      self->_searchText = v6;

      v8 = [objc_alloc(MEMORY[0x277D4A0B8]) initWithString:v5];
      v9 = MEMORY[0x277CCAC30];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __42__SFHistoryViewDataSource_searchWithText___block_invoke;
      v19[3] = &unk_2781D6038;
      v10 = v8;
      v20 = v10;
      v21 = v4;
      v11 = [v9 predicateWithBlock:v19];
      objc_initWeak(&location, self);
      siriHistorySearch = self->_siriHistorySearch;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __42__SFHistoryViewDataSource_searchWithText___block_invoke_2;
      v15[3] = &unk_2781D6088;
      objc_copyWeak(&v17, &location);
      v13 = v11;
      v16 = v13;
      [(WBSSiriIntelligenceHistorySearch *)siriHistorySearch findURLStringsForHistoryItemsContainingString:v5 completionHandler:v15];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(SFHistoryViewDataSource *)self _filterUsingPredicate:0];
    v14 = self->_searchText;
    self->_searchText = 0;
  }
}

BOOL __42__SFHistoryViewDataSource_searchWithText___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 urlString];
  if ([History historyItemURL:v4 matchesFilter:*(a1 + 32)])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 title];
    v5 = [History historyItemTitle:v6 matchesFilterString:*(a1 + 40)]|| [History filterString:*(a1 + 32) matchesHistoryItemAnywhereInTitleOrURL:v3];
  }

  return v5;
}

void __42__SFHistoryViewDataSource_searchWithText___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SFHistoryViewDataSource_searchWithText___block_invoke_3;
  block[3] = &unk_2781D6060;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __42__SFHistoryViewDataSource_searchWithText___block_invoke_3(uint64_t a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([*(a1 + 32) count])
    {
      v3 = MEMORY[0x277CCAC30];
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __42__SFHistoryViewDataSource_searchWithText___block_invoke_4;
      v11 = &unk_2781D6010;
      v12 = *(a1 + 32);
      v4 = [v3 predicateWithBlock:&v8];
      v5 = MEMORY[0x277CCA920];
      v13[0] = *(a1 + 40);
      v13[1] = v4;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:{2, v8, v9, v10, v11}];
      v7 = [v5 orPredicateWithSubpredicates:v6];
      [WeakRetained _filterUsingPredicate:v7];
    }

    else
    {
      [WeakRetained _filterUsingPredicate:*(a1 + 40)];
    }
  }
}

uint64_t __42__SFHistoryViewDataSource_searchWithText___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 urlString];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)_removeIgnoredSiriSuggestedSiteRecordsForHistoryItems:(id)a3
{
  v4 = a3;
  ignoredSiriSuggestedSitesQueue = self->_ignoredSiriSuggestedSitesQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__SFHistoryViewDataSource__removeIgnoredSiriSuggestedSiteRecordsForHistoryItems___block_invoke;
  v7[3] = &unk_2781D4C88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(ignoredSiriSuggestedSitesQueue, v7);
}

void __81__SFHistoryViewDataSource__removeIgnoredSiriSuggestedSiteRecordsForHistoryItems___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  v3 = [WeakRetained activeProfile];
  v4 = [v3 identifier];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v16 + 1) + 8 * v8) url];
        v10 = [MEMORY[0x277CDB8A8] sharedInstance];
        v11 = [v10 userVisibleQueryFromSearchURL:v9];

        v12 = [MEMORY[0x277D49F90] sharedController];
        v13 = v12;
        if (v11)
        {
          [v12 removeIgnoredSiriSuggestedSitesInProfile:v4 query:v11];
        }

        else
        {
          v14 = [v9 host];
          [v13 removeIgnoredSiriSuggestedSitesInProfile:v4 visitedURLHost:v14];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (SFHistoryViewDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TabGroupProvider)tabGroupProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);

  return WeakRetained;
}

@end