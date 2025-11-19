@interface WDSampleListDataProvider
- (BOOL)_handleObjectsRemoved:(id)a3;
- (BOOL)canEditRowAtIndexPath:(id)a3;
- (BOOL)hasCompleteDataSet;
- (HKHealthStore)healthStore;
- (WDProfile)profile;
- (WDSampleListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4;
- (id)_UUIDsForSamplesWithEndDate:(id)a3;
- (id)_defaultPredicateWithPredicateForType:(id)a3;
- (id)_pagingContextForSampleType:(id)a3;
- (id)accessViewControllerForSample:(id)a3 healthStore:(id)a4;
- (id)createQueryForSampleType:(id)a3 predicate:(id)a4 limit:(int64_t)a5 sortDescriptors:(id)a6 resultsHandler:(id)a7;
- (id)customCellForObject:(id)a3 indexPath:(id)a4 tableView:(id)a5;
- (id)defaultPredicateForSampleType:(id)a3;
- (id)displayTypeController;
- (id)secondaryTextForObject:(id)a3;
- (id)textForObject:(id)a3;
- (id)titleForSection:(unint64_t)a3;
- (id)unitController;
- (id)viewControllerForItemAtIndexPath:(id)a3;
- (id)viewControllerForSampleType:(id)a3 subSamplePredicate:(id)a4 title:(id)a5;
- (void)_callUpdateHandler;
- (void)_handleQueryResultsForSampleType:(id)a3 results:(id)a4;
- (void)_requestNextPageOfData;
- (void)_requestNextPageOfDataForSampleType:(id)a3;
- (void)_resetAllData;
- (void)_stopAllQueries;
- (void)deleteObjectsAtIndexPath:(id)a3 healthStore:(id)a4 options:(unint64_t)a5 completion:(id)a6;
- (void)setDefaultQueryPredicate:(id)a3;
- (void)startCollectingDataWithUpdateHandler:(id)a3;
- (void)stopCollectingData;
- (void)updateController:(id)a3 didReceiveUpdateForType:(id)a4 samplesAdded:(id)a5 objectsRemoved:(id)a6 recoveringFromError:(BOOL)a7;
- (void)viewControllerWantsDataIncludingDate:(id)a3;
@end

@implementation WDSampleListDataProvider

- (WDSampleListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = WDSampleListDataProvider;
  v9 = [(WDSampleListDataProvider *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_displayType, a3);
    objc_storeWeak(&v10->_profile, v8);
    v11 = objc_alloc_init(MEMORY[0x277CCD9F8]);
    samples = v10->_samples;
    v10->_samples = v11;

    v13 = v10->_samples;
    v14 = [(WDSampleListDataProvider *)v10 _samplesSortDescriptor];
    [(HKSortedSampleArray *)v13 setSortDescriptor:v14];

    v10->_didFetchInitialData = 0;
  }

  return v10;
}

- (id)_defaultPredicateWithPredicateForType:(id)a3
{
  v4 = [(WDSampleListDataProvider *)self predicateForType:a3];
  v5 = [(WDSampleListDataProvider *)self defaultQueryPredicate];
  v6 = WDPredicateMatchingPredicates(v4, v5);

  return v6;
}

- (void)setDefaultQueryPredicate:(id)a3
{
  objc_storeStrong(&self->_defaultQueryPredicate, a3);
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x277CCD8C8]);
  v7 = MEMORY[0x277CBEB98];
  v11 = [(HKDisplayType *)self->_displayType sampleType];
  v8 = [v7 setWithObject:v11];
  v9 = [v6 initWithPredicate:v5 dataTypes:v8];
  defaultQueryPredicateFilter = self->_defaultQueryPredicateFilter;
  self->_defaultQueryPredicateFilter = v9;
}

- (BOOL)hasCompleteDataSet
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(NSDictionary *)self->_pagingContexts count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = self->_pagingContexts;
    v4 = [(NSDictionary *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [(NSDictionary *)self->_pagingContexts objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i), v13];
          if ([v8 isFetchingData])
          {

LABEL_15:
            v10 = 0;
            goto LABEL_16;
          }

          v9 = [v8 requiresPaging];

          if (v9)
          {
            goto LABEL_15;
          }
        }

        v5 = [(NSDictionary *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v10 = 1;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 1;
    }

LABEL_16:
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)titleForSection:(unint64_t)a3
{
  if ([(HKSortedSampleArray *)self->_samples count]< 1)
  {
    v5 = &stru_28641D9B8;
  }

  else
  {
    v4 = [(WDSampleListDataProvider *)self unitController];
    v5 = [v4 localizedLongDisplayNameForDisplayType:self->_displayType];
  }

  return v5;
}

- (id)secondaryTextForObject:(id)a3
{
  v3 = [a3 endDate];
  v4 = HKFormattedStringForDate();

  return v4;
}

- (void)startCollectingDataWithUpdateHandler:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x253092270]();
  updateCallback = self->_updateCallback;
  self->_updateCallback = v5;

  if (self->_didFetchInitialData)
  {
    v4[2](v4);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained updateController];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(WDSampleListDataProvider *)self sampleTypes];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 addObserver:self forType:*(*(&v15 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [(WDSampleListDataProvider *)self _requestNextPageOfData];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)stopCollectingData
{
  v18 = *MEMORY[0x277D85DE8];
  updateCallback = self->_updateCallback;
  self->_updateCallback = 0;

  [(WDSampleListDataProvider *)self _stopAllQueries];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(WDSampleListDataProvider *)self sampleTypes];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        v11 = [WeakRetained updateController];
        [v11 removeObserver:self forType:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_stopAllQueries
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(WDSampleListDataProvider *)self sampleTypes];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(WDSampleListDataProvider *)self _pagingContextForSampleType:*(*(&v12 + 1) + 8 * v7)];
        v9 = [v8 currentDataFetcher];

        if (v9)
        {
          v10 = [v8 currentDataFetcher];
          [v10 stop];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_resetAllData
{
  [(WDSampleListDataProvider *)self _stopAllQueries];
  pagingContexts = self->_pagingContexts;
  self->_pagingContexts = 0;

  samples = self->_samples;

  [(HKSortedSampleArray *)samples removeAllSamples];
}

- (BOOL)canEditRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if (v5 >= [(WDSampleListDataProvider *)self numberOfSections])
  {
    v7 = 0;
  }

  else
  {
    v6 = [v4 row];
    v7 = v6 < -[WDSampleListDataProvider numberOfObjectsForSection:](self, "numberOfObjectsForSection:", [v4 section]);
  }

  return v7;
}

- (void)deleteObjectsAtIndexPath:(id)a3 healthStore:(id)a4 options:(unint64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v12 row];
  v14 = [v12 section];

  v15 = [(WDSampleListDataProvider *)self objectAtIndex:v13 forSection:v14];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__WDSampleListDataProvider_deleteObjectsAtIndexPath_healthStore_options_completion___block_invoke;
  v17[3] = &unk_2796E76A8;
  v18 = v10;
  v16 = v10;
  [v15 deleteObjectWithHealthStore:v11 options:a5 completion:v17];
}

uint64_t __84__WDSampleListDataProvider_deleteObjectsAtIndexPath_healthStore_options_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)viewControllerForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [v4 section];

  v7 = [(WDSampleListDataProvider *)self objectAtIndex:v5 forSection:v6];
  v8 = objc_alloc(MEMORY[0x277D12818]);
  v9 = [(WDSampleListDataProvider *)self profileName];
  v10 = [v8 initWithSample:v7 usingInsetStyling:1 profileName:v9 delegate:self];

  return v10;
}

- (HKHealthStore)healthStore
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained healthStore];

  return v3;
}

- (id)displayTypeController
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained displayTypeController];

  return v3;
}

- (id)unitController
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained unitController];

  return v3;
}

- (id)defaultPredicateForSampleType:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained displayTypeController];

  v7 = [v6 displayTypeForObjectType:v4];

  v8 = objc_loadWeakRetained(&self->_profile);
  v9 = [v8 unitController];
  v10 = [v7 wd_listViewControllerDataProviderWithProfile:v8 unitController:v9];

  v11 = [v10 defaultQueryPredicate];

  return v11;
}

- (id)viewControllerForSampleType:(id)a3 subSamplePredicate:(id)a4 title:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [WeakRetained displayTypeController];

  v13 = [v12 displayTypeForObjectType:v10];

  v14 = objc_loadWeakRetained(&self->_profile);
  v15 = [v14 unitController];
  v16 = [v13 wd_listViewControllerDataProviderWithProfile:v14 unitController:v15 isHierarchical:0];

  v17 = [v16 defaultQueryPredicate];
  v18 = HKUIPredicateMatchingPredicates();

  [v16 setDefaultQueryPredicate:v18];
  v19 = [WDDataListViewController alloc];
  v20 = objc_loadWeakRetained(&self->_profile);
  v21 = [(WDDataListViewController *)v19 initWithDisplayType:v13 profile:v20 dataProvider:v16 usingInsetStyling:1];

  [(WDDataListViewController *)v21 setTitle:v8];

  return v21;
}

- (id)accessViewControllerForSample:(id)a3 healthStore:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[WDAppAccessListViewController alloc] initWithSample:v6 healthStore:v5];

  return v7;
}

- (void)viewControllerWantsDataIncludingDate:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(WDSampleListDataProvider *)self _resetAllData];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(WDSampleListDataProvider *)self sampleTypes];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(WDSampleListDataProvider *)self _pagingContextForSampleType:v10];
        if (v4)
        {
          v12 = [(WDSampleListDataProvider *)self queryDateForSelectedDate:v4];
          [v11 setFetchUntilDate:v12];
        }

        if (!self->_updateCallback)
        {

          goto LABEL_13;
        }

        [(WDSampleListDataProvider *)self _requestNextPageOfDataForSampleType:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_requestNextPageOfData
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(WDSampleListDataProvider *)self sampleTypes];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(WDSampleListDataProvider *)self _requestNextPageOfDataForSampleType:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_pagingContextForSampleType:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  pagingContexts = self->_pagingContexts;
  if (!pagingContexts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(WDSampleListDataProvider *)self sampleTypes];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = objc_alloc_init(_WDSampleListDataProviderPagingContext);
          [(_WDSampleListDataProviderPagingContext *)v13 setRequiresPaging:1];
          [(NSDictionary *)v6 setObject:v13 forKeyedSubscript:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v14 = self->_pagingContexts;
    self->_pagingContexts = v6;

    pagingContexts = self->_pagingContexts;
  }

  v15 = [(NSDictionary *)pagingContexts objectForKeyedSubscript:v4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)createQueryForSampleType:(id)a3 predicate:(id)a4 limit:(int64_t)a5 sortDescriptors:(id)a6 resultsHandler:(id)a7
{
  v11 = MEMORY[0x277CCD8D0];
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [[v11 alloc] initWithSampleType:v15 predicate:v14 limit:a5 sortDescriptors:v13 resultsHandler:v12];

  return v16;
}

- (void)_requestNextPageOfDataForSampleType:(id)a3
{
  v29[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WDSampleListDataProvider *)self _pagingContextForSampleType:v4];
  if (([v5 isFetchingData] & 1) != 0 || !objc_msgSend(v5, "requiresPaging"))
  {
    goto LABEL_11;
  }

  v6 = [(WDSampleListDataProvider *)self _defaultPredicateWithPredicateForType:v4];
  v7 = [v5 earliestProcessedSampleDate];
  if (v7)
  {
    v8 = [(WDSampleListDataProvider *)self _UUIDsForSamplesWithEndDate:v7];
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@", *MEMORY[0x277CCC6C8], v7];
    v10 = [MEMORY[0x277CCD838] predicateForObjectsWithUUIDs:v8];
    v11 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v10];

    v12 = HKUIPredicateMatchingPredicates();

    v13 = HKUIPredicateMatchingPredicates();

    v6 = v11;
LABEL_7:

    v6 = v13;
    goto LABEL_8;
  }

  v14 = [v5 fetchUntilDate];

  if (v14)
  {
    v8 = [v5 fetchUntilDate];
    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", *MEMORY[0x277CCC6C8], v8];
    v13 = HKUIPredicateMatchingPredicates();
    goto LABEL_7;
  }

LABEL_8:
  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD38] ascending:0];
  v29[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __64__WDSampleListDataProvider__requestNextPageOfDataForSampleType___block_invoke;
  v27[3] = &unk_2796E8270;
  v27[4] = self;
  v17 = v4;
  v28 = v17;
  v18 = MEMORY[0x253092270](v27);
  v19 = [(WDSampleListDataProvider *)self createDataFetcherForSampleType:v17 predicate:v6 limit:200 sortDescriptors:v16 resultsHandler:v18];
  if (!v19)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __64__WDSampleListDataProvider__requestNextPageOfDataForSampleType___block_invoke_317;
    v25[3] = &unk_2796E8298;
    v26 = v18;
    v20 = [(WDSampleListDataProvider *)self createQueryForSampleType:v17 predicate:v6 limit:200 sortDescriptors:v16 resultsHandler:v25];
    v21 = objc_alloc(MEMORY[0x277D12A20]);
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v23 = [WeakRetained healthStore];
    v19 = [v21 initWithHealthStore:v23 query:v20];
  }

  [v5 setFetchingData:1];
  [v5 setCurrentDataFetcher:v19];
  [v19 start];

LABEL_11:
  v24 = *MEMORY[0x277D85DE8];
}

void __64__WDSampleListDataProvider__requestNextPageOfDataForSampleType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__WDSampleListDataProvider__requestNextPageOfDataForSampleType___block_invoke_2;
  v10[3] = &unk_2796E7148;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t __64__WDSampleListDataProvider__requestNextPageOfDataForSampleType___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 32) = 1;
  if (*(a1 + 40))
  {
    _HKInitializeLogging();
    v2 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = *(a1 + 32);
      v8 = 138412802;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_error_impl(&dword_251E85000, v2, OS_LOG_TYPE_ERROR, "%@: Error fetching samples of type (%@): %@", &v8, 0x20u);
    }
  }

  result = [*(a1 + 32) _handleQueryResultsForSampleType:*(a1 + 48) results:*(a1 + 56)];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleQueryResultsForSampleType:(id)a3 results:(id)a4
{
  v14 = a4;
  samples = self->_samples;
  v7 = a3;
  [(HKSortedSampleArray *)samples insertSamples:v14];
  v8 = [v14 lastObject];
  v9 = [v8 endDate];

  v10 = [(WDSampleListDataProvider *)self _pagingContextForSampleType:v7];

  [v10 setCurrentDataFetcher:0];
  [v10 setFetchingData:0];
  v11 = [v10 fetchUntilDate];
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = [v14 count] == 200;
  }

  [v10 setRequiresPaging:v12];

  [v10 setFetchUntilDate:0];
  if (v9)
  {
    [v10 setEarliestProcessedSampleDate:v9];
  }

  else
  {
    v13 = [v10 earliestProcessedSampleDate];
    [v10 setEarliestProcessedSampleDate:v13];
  }

  [(WDSampleListDataProvider *)self _callUpdateHandler];
}

- (id)_UUIDsForSamplesWithEndDate:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(HKSortedSampleArray *)self->_samples allSamples];
  v7 = [v6 reverseObjectEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 endDate];
        if (HKUIObjectIsLarger())
        {

          goto LABEL_13;
        }

        if ([v13 isEqualToDate:v4])
        {
          v14 = [v12 UUID];
          [v5 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_callUpdateHandler
{
  updateCallback = self->_updateCallback;
  if (updateCallback)
  {
    updateCallback[2]();
  }
}

- (void)updateController:(id)a3 didReceiveUpdateForType:(id)a4 samplesAdded:(id)a5 objectsRemoved:(id)a6 recoveringFromError:(BOOL)a7
{
  v7 = a7;
  v27 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = [(WDSampleListDataProvider *)self _handleObjectsRemoved:a6];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * v17);
        defaultQueryPredicateFilter = self->_defaultQueryPredicateFilter;
        if (!defaultQueryPredicateFilter || [(HKSampleListDataProviderFilter *)defaultQueryPredicateFilter acceptsDataObject:*(*(&v22 + 1) + 8 * v17)])
        {
          [v12 addObject:v18];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  if (((v11 | [(HKSortedSampleArray *)self->_samples insertSamples:v12]) & 1) != 0 || v7)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __117__WDSampleListDataProvider_updateController_didReceiveUpdateForType_samplesAdded_objectsRemoved_recoveringFromError___block_invoke;
    v21[3] = &unk_2796E82C0;
    v21[4] = self;
    [(WDSampleListDataProvider *)self refineSamplesWithCompletion:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __117__WDSampleListDataProvider_updateController_didReceiveUpdateForType_samplesAdded_objectsRemoved_recoveringFromError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__WDSampleListDataProvider_updateController_didReceiveUpdateForType_samplesAdded_objectsRemoved_recoveringFromError___block_invoke_2;
  block[3] = &unk_2796E6C00;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __117__WDSampleListDataProvider_updateController_didReceiveUpdateForType_samplesAdded_objectsRemoved_recoveringFromError___block_invoke_2(void *a1)
{
  if (a1[4])
  {
    [*(a1[5] + 72) removeSamplesWithUUIDs:?];
  }

  if (a1[6])
  {
    [*(a1[5] + 72) insertSamples:?];
  }

  v2 = a1[5];

  return [v2 _callUpdateHandler];
}

- (BOOL)_handleObjectsRemoved:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) UUID];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(HKSortedSampleArray *)self->_samples removeSamplesWithUUIDs:v5];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (WDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (id)textForObject:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)customCellForObject:(id)a3 indexPath:(id)a4 tableView:(id)a5
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end