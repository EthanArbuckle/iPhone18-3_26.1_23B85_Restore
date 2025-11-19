@interface WDSampleListStatisticsDataProvider
- (WDSampleListStatisticsDataProvider)initWithDisplayType:(id)a3 profile:(id)a4;
- (double)customCellHeight;
- (double)customEstimatedCellHeight;
- (id)_predicateForTheLastMonth;
- (id)_statisticsAtIndexPath:(id)a3;
- (id)customCellForObject:(id)a3 indexPath:(id)a4 tableView:(id)a5;
- (id)sampleTypes;
- (id)secondaryTextForObject:(id)a3;
- (id)textForObject:(id)a3;
- (id)titleForSection:(unint64_t)a3;
- (id)viewControllerForItemAtIndexPath:(id)a3;
- (unint64_t)_statisticsOptionsForSampleType:(id)a3;
- (void)_handleResultsCollection:(id)a3 fromQuery:(id)a4 sampleType:(id)a5 areComplete:(BOOL)a6 withError:(id)a7 updateHandler:(id)a8;
- (void)_startCompleteDataStatisticsCollectionQueryForSampleType:(id)a3 updateHandler:(id)a4;
- (void)_startPartialDataStatisticsCollectionQueryForSampleType:(id)a3 updateHandler:(id)a4;
- (void)deleteAllData;
- (void)deleteObjectsAtIndexPath:(id)a3 healthStore:(id)a4 options:(unint64_t)a5 completion:(id)a6;
- (void)startCollectingDataWithUpdateHandler:(id)a3;
- (void)stopCollectingData;
@end

@implementation WDSampleListStatisticsDataProvider

- (WDSampleListStatisticsDataProvider)initWithDisplayType:(id)a3 profile:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = WDSampleListStatisticsDataProvider;
  v9 = [(WDSampleListStatisticsDataProvider *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_displayType, a3);
    v11 = [v8 unitController];
    unitController = v10->_unitController;
    v10->_unitController = v11;

    v13 = [MEMORY[0x277CBEB18] array];
    activeDataQueries = v10->_activeDataQueries;
    v10->_activeDataQueries = v13;

    v15 = [MEMORY[0x277CBEB58] set];
    activeQueryTypes = v10->_activeQueryTypes;
    v10->_activeQueryTypes = v15;

    objc_storeStrong(&v10->_profile, a4);
    v10->_hasDetailViewController = 1;
  }

  return v10;
}

- (id)sampleTypes
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(WDSampleListStatisticsDataProvider *)self displayType];
  v3 = [v2 sampleType];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_statisticsAtIndexPath:(id)a3
{
  data = self->_data;
  v4 = [a3 row];

  return [(NSMutableArray *)data objectAtIndexedSubscript:v4];
}

- (id)titleForSection:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_data count])
  {
    v4 = [(HKUnitPreferenceController *)self->_unitController localizedLongDisplayNameForDisplayType:self->_displayType];
  }

  else
  {
    v4 = &stru_28641D9B8;
  }

  return v4;
}

- (id)secondaryTextForObject:(id)a3
{
  v3 = a3;
  v4 = HKPriorYearsDateFormatterNoTime();
  v5 = [v3 startDate];

  v6 = [v4 stringFromDate:v5];

  return v6;
}

- (void)_handleResultsCollection:(id)a3 fromQuery:(id)a4 sampleType:(id)a5 areComplete:(BOOL)a6 withError:(id)a7 updateHandler:(id)a8
{
  v10 = a6;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  if (!v16)
  {
    v22 = [a3 statistics];
    v23 = [v22 sortedArrayUsingComparator:&__block_literal_global_11];
    v24 = [v23 mutableCopy];

    if (v10)
    {
      [(WDSampleListStatisticsDataProvider *)self setData:v24];
      if (!v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      [v24 removeLastObject];
      [(WDSampleListStatisticsDataProvider *)self setData:v24];
      if (!v17 || ![v24 count])
      {
        goto LABEL_16;
      }
    }

    v17[2](v17);
LABEL_16:

    goto LABEL_17;
  }

  v18 = [v16 hk_isDatabaseAccessibilityError];
  _HKInitializeLogging();
  v19 = HKLogWellnessDashboard();
  v20 = v19;
  if (!v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [WDSampleListStatisticsDataProvider _handleResultsCollection:fromQuery:sampleType:areComplete:withError:updateHandler:];
    }

    goto LABEL_11;
  }

  v21 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

  if (v21)
  {
    v20 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [WDSampleListStatisticsDataProvider _handleResultsCollection:fromQuery:sampleType:areComplete:withError:updateHandler:];
    }

LABEL_11:
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__WDSampleListStatisticsDataProvider__handleResultsCollection_fromQuery_sampleType_areComplete_withError_updateHandler___block_invoke;
  block[3] = &unk_2796E6C00;
  block[4] = self;
  v26 = v14;
  v27 = v15;
  dispatch_async(MEMORY[0x277D85CD0], block);

LABEL_17:
}

void __120__WDSampleListStatisticsDataProvider__handleResultsCollection_fromQuery_sampleType_areComplete_withError_updateHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeDataQueries];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) activeQueryTypes];
  [v3 removeObject:*(a1 + 48)];
}

uint64_t __120__WDSampleListStatisticsDataProvider__handleResultsCollection_fromQuery_sampleType_areComplete_withError_updateHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)startCollectingDataWithUpdateHandler:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(WDSampleListStatisticsDataProvider *)self setHasCompleteDataSet:0];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_activeDataQueries;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [(WDSampleListStatisticsDataProvider *)self profile];
        v12 = [v11 healthStore];
        [v12 stopQuery:v10];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [(WDSampleListStatisticsDataProvider *)self sampleTypes];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(WDSampleListStatisticsDataProvider *)self _startPartialDataStatisticsCollectionQueryForSampleType:v18 updateHandler:v4];
        }

        else
        {
          _HKInitializeLogging();
          v19 = HKLogWellnessDashboard();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v30 = self;
            v31 = 2114;
            v32 = v18;
            _os_log_error_impl(&dword_251E85000, v19, OS_LOG_TYPE_ERROR, "Data provider %{public}@ can only show hierarchical data on quantity types. Encountered type %{public}@. Skipping.", buf, 0x16u);
          }
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_statisticsOptionsForSampleType:(id)a3
{
  v3 = [a3 aggregationStyle];
  v4 = 12;
  if (v3 == 3)
  {
    v4 = 66;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 16;
  }
}

- (void)stopCollectingData
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(WDProfile *)self->_profile healthStore];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_activeDataQueries;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 stopQuery:{*(*(&v10 + 1) + 8 * v8++), v10}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_activeDataQueries removeAllObjects];
  [(NSMutableSet *)self->_activeQueryTypes removeAllObjects];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllData
{
  v3 = [MEMORY[0x277CBEB18] array];
  data = self->_data;
  self->_data = v3;

  MEMORY[0x2821F96F8](v3, data);
}

- (void)deleteObjectsAtIndexPath:(id)a3 healthStore:(id)a4 options:(unint64_t)a5 completion:(id)a6
{
  v24 = a5;
  v35 = *MEMORY[0x277D85DE8];
  v26 = a4;
  v25 = a6;
  v9 = -[NSMutableArray objectAtIndexedSubscript:](self->_data, "objectAtIndexedSubscript:", [a3 row]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(WDSampleListStatisticsDataProvider *)self sampleTypes];
  v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v23 = *v31;
    do
    {
      v12 = 0;
      do
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * v12);
        v14 = [(WDSampleListStatisticsDataProvider *)self defaultQueryPredicate];
        v15 = MEMORY[0x277CCD838];
        v16 = [v9 startDate];
        v17 = [v9 endDate];
        v18 = [v15 predicateForSamplesWithStartDate:v16 endDate:v17 options:0];

        v19 = WDPredicateMatchingPredicates(v14, v18);

        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __94__WDSampleListStatisticsDataProvider_deleteObjectsAtIndexPath_healthStore_options_completion___block_invoke;
        v27[3] = &unk_2796E80F8;
        v27[4] = self;
        v27[5] = v13;
        v28 = v19;
        v29 = v25;
        v20 = v19;
        [v26 deleteObjectsOfType:v13 predicate:v20 options:v24 & 2 withCompletion:v27];

        ++v12;
      }

      while (v11 != v12);
      v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v11);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __94__WDSampleListStatisticsDataProvider_deleteObjectsAtIndexPath_healthStore_options_completion___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __94__WDSampleListStatisticsDataProvider_deleteObjectsAtIndexPath_healthStore_options_completion___block_invoke_cold_1(a1, v5, v6);
    }
  }

  (*(a1[7] + 16))();
}

- (id)viewControllerForItemAtIndexPath:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(WDSampleListStatisticsDataProvider *)self displayType];
  profile = self->_profile;
  v7 = [(WDProfile *)profile unitController];
  v8 = [v5 wd_listViewControllerDataProviderWithProfile:profile unitController:v7 isHierarchical:0];

  data = self->_data;
  v10 = [v4 row];

  v11 = [(NSMutableArray *)data objectAtIndexedSubscript:v10];
  v12 = MEMORY[0x277CCD838];
  v13 = [v11 startDate];
  v14 = [v11 endDate];
  v15 = [v12 predicateForSamplesWithStartDate:v13 endDate:v14 options:0];

  v16 = [(WDSampleListStatisticsDataProvider *)self defaultQueryPredicate];
  v17 = HKUIPredicateMatchingPredicates();

  [v8 setDefaultQueryPredicate:v17];
  v18 = [WDDataListViewController alloc];
  v19 = [(WDSampleListStatisticsDataProvider *)self displayType];
  v20 = [(WDDataListViewController *)v18 initWithDisplayType:v19 profile:self->_profile dataProvider:v8 usingInsetStyling:1];

  return v20;
}

- (void)_startPartialDataStatisticsCollectionQueryForSampleType:(id)a3 updateHandler:(id)a4
{
  v38[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setDay:1];
  v9 = [(WDSampleListStatisticsDataProvider *)self defaultQueryPredicate];
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x277CCA920];
    v38[0] = v9;
    v12 = [(WDSampleListStatisticsDataProvider *)self _predicateForTheLastMonth];
    v38[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v14 = [v11 andPredicateWithSubpredicates:v13];
  }

  else
  {
    v14 = [(WDSampleListStatisticsDataProvider *)self _predicateForTheLastMonth];
  }

  v15 = objc_alloc(MEMORY[0x277CCDA60]);
  v16 = [(WDSampleListStatisticsDataProvider *)self _statisticsOptionsForSampleType:v6];
  v17 = [MEMORY[0x277CBEA80] currentCalendar];
  v18 = [MEMORY[0x277CBEAA8] date];
  v19 = [v17 startOfDayForDate:v18];
  v20 = [v15 initWithQuantityType:v6 quantitySamplePredicate:v14 options:v16 anchorDate:v19 intervalComponents:v8];

  objc_initWeak(&location, self);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __108__WDSampleListStatisticsDataProvider__startPartialDataStatisticsCollectionQueryForSampleType_updateHandler___block_invoke;
  v33[3] = &unk_2796E8120;
  objc_copyWeak(&v36, &location);
  v21 = v6;
  v34 = v21;
  v22 = v7;
  v35 = v22;
  [v20 setInitialResultsHandler:v33];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __108__WDSampleListStatisticsDataProvider__startPartialDataStatisticsCollectionQueryForSampleType_updateHandler___block_invoke_3;
  v29[3] = &unk_2796E8148;
  objc_copyWeak(&v32, &location);
  v23 = v21;
  v30 = v23;
  v24 = v22;
  v31 = v24;
  [v20 setStatisticsUpdateHandler:v29];
  v25 = [(WDSampleListStatisticsDataProvider *)self profile];
  v26 = [v25 healthStore];
  [v26 executeQuery:v20];

  v27 = [(WDSampleListStatisticsDataProvider *)self activeDataQueries];
  [v27 addObject:v20];

  [(NSMutableSet *)self->_activeQueryTypes addObject:v23];
  objc_destroyWeak(&v32);

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);

  v28 = *MEMORY[0x277D85DE8];
}

void __108__WDSampleListStatisticsDataProvider__startPartialDataStatisticsCollectionQueryForSampleType_updateHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleResultsCollection:v8 fromQuery:v7 sampleType:*(a1 + 32) areComplete:0 withError:v9 updateHandler:*(a1 + 40)];

  v11 = objc_loadWeakRetained((a1 + 48));
  v12 = [v11 profile];
  v13 = [v12 healthStore];
  [v13 stopQuery:v7];

  v14 = [MEMORY[0x277CCABD8] mainQueue];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __108__WDSampleListStatisticsDataProvider__startPartialDataStatisticsCollectionQueryForSampleType_updateHandler___block_invoke_2;
  v20 = &unk_2796E6DE0;
  objc_copyWeak(&v22, (a1 + 48));
  v15 = v7;
  v21 = v15;
  [v14 addOperationWithBlock:&v17];

  v16 = objc_loadWeakRetained((a1 + 48));
  [v16 _startCompleteDataStatisticsCollectionQueryForSampleType:*(a1 + 32) updateHandler:{*(a1 + 40), v17, v18, v19, v20}];

  objc_destroyWeak(&v22);
}

void __108__WDSampleListStatisticsDataProvider__startPartialDataStatisticsCollectionQueryForSampleType_updateHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained activeDataQueries];
  [v2 removeObject:*(a1 + 32)];
}

void __108__WDSampleListStatisticsDataProvider__startPartialDataStatisticsCollectionQueryForSampleType_updateHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleResultsCollection:v9 fromQuery:v10 sampleType:*(a1 + 32) areComplete:1 withError:v8 updateHandler:*(a1 + 40)];
}

- (void)_startCompleteDataStatisticsCollectionQueryForSampleType:(id)a3 updateHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setDay:1];
  v9 = objc_alloc(MEMORY[0x277CCDA60]);
  v10 = [(WDSampleListStatisticsDataProvider *)self defaultQueryPredicate];
  v11 = [(WDSampleListStatisticsDataProvider *)self _statisticsOptionsForSampleType:v6];
  v12 = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [v12 startOfDayForDate:v13];
  v15 = [v9 initWithQuantityType:v6 quantitySamplePredicate:v10 options:v11 anchorDate:v14 intervalComponents:v8];

  objc_initWeak(location, self);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __109__WDSampleListStatisticsDataProvider__startCompleteDataStatisticsCollectionQueryForSampleType_updateHandler___block_invoke;
  v30[3] = &unk_2796E8120;
  objc_copyWeak(&v33, location);
  v16 = v6;
  v31 = v16;
  v17 = v7;
  v32 = v17;
  [v15 setInitialResultsHandler:v30];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __109__WDSampleListStatisticsDataProvider__startCompleteDataStatisticsCollectionQueryForSampleType_updateHandler___block_invoke_2;
  v26[3] = &unk_2796E8148;
  objc_copyWeak(&v29, location);
  v18 = v16;
  v27 = v18;
  v19 = v17;
  v28 = v19;
  [v15 setStatisticsUpdateHandler:v26];
  v20 = [(WDSampleListStatisticsDataProvider *)self profile];
  v21 = [v20 healthStore];
  [v21 executeQuery:v15];

  v22 = [MEMORY[0x277CCABD8] mainQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __109__WDSampleListStatisticsDataProvider__startCompleteDataStatisticsCollectionQueryForSampleType_updateHandler___block_invoke_3;
  v24[3] = &unk_2796E6BD8;
  v24[4] = self;
  v23 = v15;
  v25 = v23;
  [v22 addOperationWithBlock:v24];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v33);
  objc_destroyWeak(location);
}

void __109__WDSampleListStatisticsDataProvider__startCompleteDataStatisticsCollectionQueryForSampleType_updateHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setHasCompleteDataSet:1];

  v11 = objc_loadWeakRetained((a1 + 48));
  [v11 _handleResultsCollection:v8 fromQuery:v9 sampleType:*(a1 + 32) areComplete:1 withError:v7 updateHandler:*(a1 + 40)];
}

void __109__WDSampleListStatisticsDataProvider__startCompleteDataStatisticsCollectionQueryForSampleType_updateHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleResultsCollection:v9 fromQuery:v10 sampleType:*(a1 + 32) areComplete:1 withError:v8 updateHandler:*(a1 + 40)];
}

void __109__WDSampleListStatisticsDataProvider__startCompleteDataStatisticsCollectionQueryForSampleType_updateHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) activeDataQueries];
  [v2 addObject:*(a1 + 40)];
}

- (id)_predicateForTheLastMonth
{
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [v3 dateByAddingUnit:8 value:-1 toDate:v2 options:1];

  v5 = [MEMORY[0x277CCD838] predicateForSamplesWithStartDate:v4 endDate:v2 options:0];

  return v5;
}

- (id)textForObject:(id)a3
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

- (double)customCellHeight
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5();
  return 0.0;
}

- (double)customEstimatedCellHeight
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5();
  return 0.0;
}

- (id)customCellForObject:(id)a3 indexPath:(id)a4 tableView:(id)a5
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

- (void)_handleResultsCollection:fromQuery:sampleType:areComplete:withError:updateHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(&dword_251E85000, v0, OS_LOG_TYPE_ERROR, "Data provider %@ stats collection quey initial handler returned error: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_handleResultsCollection:fromQuery:sampleType:areComplete:withError:updateHandler:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(&dword_251E85000, v0, OS_LOG_TYPE_DEBUG, "Data provider %@ stats collection quey initial handler returned error: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __94__WDSampleListStatisticsDataProvider_deleteObjectsAtIndexPath_healthStore_options_completion___block_invoke_cold_1(void *a1, uint64_t a2, os_log_t log)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v7 = 138544130;
  v8 = v3;
  v9 = 2114;
  v10 = v4;
  v11 = 2114;
  v12 = v5;
  v13 = 2114;
  v14 = a2;
  _os_log_error_impl(&dword_251E85000, log, OS_LOG_TYPE_ERROR, "%{public}@: Error deleting objects of type %{public}@ with predicate %{public}@: %{public}@", &v7, 0x2Au);
  v6 = *MEMORY[0x277D85DE8];
}

@end