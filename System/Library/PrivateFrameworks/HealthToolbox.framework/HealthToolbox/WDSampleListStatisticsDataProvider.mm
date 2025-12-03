@interface WDSampleListStatisticsDataProvider
- (WDSampleListStatisticsDataProvider)initWithDisplayType:(id)type profile:(id)profile;
- (double)customCellHeight;
- (double)customEstimatedCellHeight;
- (id)_predicateForTheLastMonth;
- (id)_statisticsAtIndexPath:(id)path;
- (id)customCellForObject:(id)object indexPath:(id)path tableView:(id)view;
- (id)sampleTypes;
- (id)secondaryTextForObject:(id)object;
- (id)textForObject:(id)object;
- (id)titleForSection:(unint64_t)section;
- (id)viewControllerForItemAtIndexPath:(id)path;
- (unint64_t)_statisticsOptionsForSampleType:(id)type;
- (void)_handleResultsCollection:(id)collection fromQuery:(id)query sampleType:(id)type areComplete:(BOOL)complete withError:(id)error updateHandler:(id)handler;
- (void)_startCompleteDataStatisticsCollectionQueryForSampleType:(id)type updateHandler:(id)handler;
- (void)_startPartialDataStatisticsCollectionQueryForSampleType:(id)type updateHandler:(id)handler;
- (void)deleteAllData;
- (void)deleteObjectsAtIndexPath:(id)path healthStore:(id)store options:(unint64_t)options completion:(id)completion;
- (void)startCollectingDataWithUpdateHandler:(id)handler;
- (void)stopCollectingData;
@end

@implementation WDSampleListStatisticsDataProvider

- (WDSampleListStatisticsDataProvider)initWithDisplayType:(id)type profile:(id)profile
{
  typeCopy = type;
  profileCopy = profile;
  v18.receiver = self;
  v18.super_class = WDSampleListStatisticsDataProvider;
  v9 = [(WDSampleListStatisticsDataProvider *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_displayType, type);
    unitController = [profileCopy unitController];
    unitController = v10->_unitController;
    v10->_unitController = unitController;

    array = [MEMORY[0x277CBEB18] array];
    activeDataQueries = v10->_activeDataQueries;
    v10->_activeDataQueries = array;

    v15 = [MEMORY[0x277CBEB58] set];
    activeQueryTypes = v10->_activeQueryTypes;
    v10->_activeQueryTypes = v15;

    objc_storeStrong(&v10->_profile, profile);
    v10->_hasDetailViewController = 1;
  }

  return v10;
}

- (id)sampleTypes
{
  v7[1] = *MEMORY[0x277D85DE8];
  displayType = [(WDSampleListStatisticsDataProvider *)self displayType];
  sampleType = [displayType sampleType];
  v7[0] = sampleType;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_statisticsAtIndexPath:(id)path
{
  data = self->_data;
  v4 = [path row];

  return [(NSMutableArray *)data objectAtIndexedSubscript:v4];
}

- (id)titleForSection:(unint64_t)section
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

- (id)secondaryTextForObject:(id)object
{
  objectCopy = object;
  v4 = HKPriorYearsDateFormatterNoTime();
  startDate = [objectCopy startDate];

  v6 = [v4 stringFromDate:startDate];

  return v6;
}

- (void)_handleResultsCollection:(id)collection fromQuery:(id)query sampleType:(id)type areComplete:(BOOL)complete withError:(id)error updateHandler:(id)handler
{
  completeCopy = complete;
  queryCopy = query;
  typeCopy = type;
  errorCopy = error;
  handlerCopy = handler;
  if (!errorCopy)
  {
    statistics = [collection statistics];
    v23 = [statistics sortedArrayUsingComparator:&__block_literal_global_11];
    v24 = [v23 mutableCopy];

    if (completeCopy)
    {
      [(WDSampleListStatisticsDataProvider *)self setData:v24];
      if (!handlerCopy)
      {
        goto LABEL_16;
      }
    }

    else
    {
      [v24 removeLastObject];
      [(WDSampleListStatisticsDataProvider *)self setData:v24];
      if (!handlerCopy || ![v24 count])
      {
        goto LABEL_16;
      }
    }

    handlerCopy[2](handlerCopy);
LABEL_16:

    goto LABEL_17;
  }

  hk_isDatabaseAccessibilityError = [errorCopy hk_isDatabaseAccessibilityError];
  _HKInitializeLogging();
  v19 = HKLogWellnessDashboard();
  v20 = v19;
  if (!hk_isDatabaseAccessibilityError)
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
  v26 = queryCopy;
  v27 = typeCopy;
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

- (void)startCollectingDataWithUpdateHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
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
        profile = [(WDSampleListStatisticsDataProvider *)self profile];
        healthStore = [profile healthStore];
        [healthStore stopQuery:v10];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  sampleTypes = [(WDSampleListStatisticsDataProvider *)self sampleTypes];
  v14 = [sampleTypes countByEnumeratingWithState:&v21 objects:v33 count:16];
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
          objc_enumerationMutation(sampleTypes);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(WDSampleListStatisticsDataProvider *)self _startPartialDataStatisticsCollectionQueryForSampleType:v18 updateHandler:handlerCopy];
        }

        else
        {
          _HKInitializeLogging();
          v19 = HKLogWellnessDashboard();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            selfCopy = self;
            v31 = 2114;
            v32 = v18;
            _os_log_error_impl(&dword_251E85000, v19, OS_LOG_TYPE_ERROR, "Data provider %{public}@ can only show hierarchical data on quantity types. Encountered type %{public}@. Skipping.", buf, 0x16u);
          }
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [sampleTypes countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_statisticsOptionsForSampleType:(id)type
{
  aggregationStyle = [type aggregationStyle];
  v4 = 12;
  if (aggregationStyle == 3)
  {
    v4 = 66;
  }

  if (aggregationStyle)
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
  healthStore = [(WDProfile *)self->_profile healthStore];
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

        [healthStore stopQuery:{*(*(&v10 + 1) + 8 * v8++), v10}];
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
  array = [MEMORY[0x277CBEB18] array];
  data = self->_data;
  self->_data = array;

  MEMORY[0x2821F96F8](array, data);
}

- (void)deleteObjectsAtIndexPath:(id)path healthStore:(id)store options:(unint64_t)options completion:(id)completion
{
  optionsCopy = options;
  v35 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  completionCopy = completion;
  v9 = -[NSMutableArray objectAtIndexedSubscript:](self->_data, "objectAtIndexedSubscript:", [path row]);
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
        defaultQueryPredicate = [(WDSampleListStatisticsDataProvider *)self defaultQueryPredicate];
        v15 = MEMORY[0x277CCD838];
        startDate = [v9 startDate];
        endDate = [v9 endDate];
        v18 = [v15 predicateForSamplesWithStartDate:startDate endDate:endDate options:0];

        v19 = WDPredicateMatchingPredicates(defaultQueryPredicate, v18);

        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __94__WDSampleListStatisticsDataProvider_deleteObjectsAtIndexPath_healthStore_options_completion___block_invoke;
        v27[3] = &unk_2796E80F8;
        v27[4] = self;
        v27[5] = v13;
        v28 = v19;
        v29 = completionCopy;
        v20 = v19;
        [storeCopy deleteObjectsOfType:v13 predicate:v20 options:optionsCopy & 2 withCompletion:v27];

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

- (id)viewControllerForItemAtIndexPath:(id)path
{
  pathCopy = path;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  displayType = [(WDSampleListStatisticsDataProvider *)self displayType];
  profile = self->_profile;
  unitController = [(WDProfile *)profile unitController];
  v8 = [displayType wd_listViewControllerDataProviderWithProfile:profile unitController:unitController isHierarchical:0];

  data = self->_data;
  v10 = [pathCopy row];

  v11 = [(NSMutableArray *)data objectAtIndexedSubscript:v10];
  v12 = MEMORY[0x277CCD838];
  startDate = [v11 startDate];
  endDate = [v11 endDate];
  v15 = [v12 predicateForSamplesWithStartDate:startDate endDate:endDate options:0];

  defaultQueryPredicate = [(WDSampleListStatisticsDataProvider *)self defaultQueryPredicate];
  v17 = HKUIPredicateMatchingPredicates();

  [v8 setDefaultQueryPredicate:v17];
  v18 = [WDDataListViewController alloc];
  displayType2 = [(WDSampleListStatisticsDataProvider *)self displayType];
  v20 = [(WDDataListViewController *)v18 initWithDisplayType:displayType2 profile:self->_profile dataProvider:v8 usingInsetStyling:1];

  return v20;
}

- (void)_startPartialDataStatisticsCollectionQueryForSampleType:(id)type updateHandler:(id)handler
{
  v38[2] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setDay:1];
  defaultQueryPredicate = [(WDSampleListStatisticsDataProvider *)self defaultQueryPredicate];
  v10 = defaultQueryPredicate;
  if (defaultQueryPredicate)
  {
    v11 = MEMORY[0x277CCA920];
    v38[0] = defaultQueryPredicate;
    _predicateForTheLastMonth = [(WDSampleListStatisticsDataProvider *)self _predicateForTheLastMonth];
    v38[1] = _predicateForTheLastMonth;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    _predicateForTheLastMonth2 = [v11 andPredicateWithSubpredicates:v13];
  }

  else
  {
    _predicateForTheLastMonth2 = [(WDSampleListStatisticsDataProvider *)self _predicateForTheLastMonth];
  }

  v15 = objc_alloc(MEMORY[0x277CCDA60]);
  v16 = [(WDSampleListStatisticsDataProvider *)self _statisticsOptionsForSampleType:typeCopy];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v19 = [currentCalendar startOfDayForDate:date];
  v20 = [v15 initWithQuantityType:typeCopy quantitySamplePredicate:_predicateForTheLastMonth2 options:v16 anchorDate:v19 intervalComponents:v8];

  objc_initWeak(&location, self);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __108__WDSampleListStatisticsDataProvider__startPartialDataStatisticsCollectionQueryForSampleType_updateHandler___block_invoke;
  v33[3] = &unk_2796E8120;
  objc_copyWeak(&v36, &location);
  v21 = typeCopy;
  v34 = v21;
  v22 = handlerCopy;
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
  profile = [(WDSampleListStatisticsDataProvider *)self profile];
  healthStore = [profile healthStore];
  [healthStore executeQuery:v20];

  activeDataQueries = [(WDSampleListStatisticsDataProvider *)self activeDataQueries];
  [activeDataQueries addObject:v20];

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

- (void)_startCompleteDataStatisticsCollectionQueryForSampleType:(id)type updateHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setDay:1];
  v9 = objc_alloc(MEMORY[0x277CCDA60]);
  defaultQueryPredicate = [(WDSampleListStatisticsDataProvider *)self defaultQueryPredicate];
  v11 = [(WDSampleListStatisticsDataProvider *)self _statisticsOptionsForSampleType:typeCopy];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v14 = [currentCalendar startOfDayForDate:date];
  v15 = [v9 initWithQuantityType:typeCopy quantitySamplePredicate:defaultQueryPredicate options:v11 anchorDate:v14 intervalComponents:v8];

  objc_initWeak(location, self);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __109__WDSampleListStatisticsDataProvider__startCompleteDataStatisticsCollectionQueryForSampleType_updateHandler___block_invoke;
  v30[3] = &unk_2796E8120;
  objc_copyWeak(&v33, location);
  v16 = typeCopy;
  v31 = v16;
  v17 = handlerCopy;
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
  profile = [(WDSampleListStatisticsDataProvider *)self profile];
  healthStore = [profile healthStore];
  [healthStore executeQuery:v15];

  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __109__WDSampleListStatisticsDataProvider__startCompleteDataStatisticsCollectionQueryForSampleType_updateHandler___block_invoke_3;
  v24[3] = &unk_2796E6BD8;
  v24[4] = self;
  v23 = v15;
  v25 = v23;
  [mainQueue addOperationWithBlock:v24];

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
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [currentCalendar dateByAddingUnit:8 value:-1 toDate:date options:1];

  v5 = [MEMORY[0x277CCD838] predicateForSamplesWithStartDate:v4 endDate:date options:0];

  return v5;
}

- (id)textForObject:(id)object
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

- (id)customCellForObject:(id)object indexPath:(id)path tableView:(id)view
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