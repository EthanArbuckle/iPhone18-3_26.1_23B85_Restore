@interface WDElectrocardiogramFilterDataProvider
+ (id)_atrialFibrillationClassificationPredicateWithClassifications:(id)a3;
+ (id)_atrialFibrillationClassificationPredicateWithValues:(id)a3;
+ (id)cellTitleForType:(int64_t)a3;
+ (id)viewControllerTitleForType:(int64_t)a3;
- (WDElectrocardiogramFilterDataProvider)initWithProfile:(id)a3 delegate:(id)a4;
- (WDElectrocardiogramFilterDataProviderDelegate)delegate;
- (WDProfile)profile;
- (id)_atrialFibrillationClassificationsWithActiveAlgorithmVersion:(int64_t)a3;
- (id)_countQueriesForFilterTypes:(id)a3;
- (id)_countQueryForType:(int64_t)a3;
- (id)_filterTypesForActiveAlgorithmVersion:(int64_t)a3;
- (id)_highLowHeartRateClassificationsWithActiveAlgorithmVersion:(int64_t)a3;
- (id)_inconclusiveClassificationsWithActiveAlgorithmVersion:(int64_t)a3;
- (id)displayStringCountForType:(int64_t)a3;
- (id)electrocardiogramPredicateForType:(int64_t)a3;
- (int64_t)_rQueue_countForType:(int64_t)a3;
- (int64_t)countForType:(int64_t)a3;
- (int64_t)filterTypeCount;
- (void)_rQueue_notifyDelegateDidUpdateCountForType:(int64_t)a3;
- (void)_rQueue_setCount:(int64_t)a3 forType:(int64_t)a4;
- (void)_safelyStopQuery:(id)a3;
- (void)_stopQueries;
- (void)start;
- (void)stop;
- (void)updateController:(id)a3 didReceiveUpdateForType:(id)a4 samplesAdded:(id)a5 objectsRemoved:(id)a6 recoveringFromError:(BOOL)a7;
@end

@implementation WDElectrocardiogramFilterDataProvider

- (WDElectrocardiogramFilterDataProvider)initWithProfile:(id)a3 delegate:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = WDElectrocardiogramFilterDataProvider;
  v8 = [(WDElectrocardiogramFilterDataProvider *)&v30 init];
  v9 = v8;
  if (!v8)
  {
LABEL_6:
    v25 = v9;
    goto LABEL_10;
  }

  objc_storeWeak(&v8->_profile, v6);
  objc_storeWeak(&v9->_delegate, v7);
  v10 = MEMORY[0x277CCD380];
  v11 = [v6 healthStore];
  v29 = 0;
  v12 = [v10 versionWithHealthStore:v11 error:&v29];
  v13 = v29;

  if (v12)
  {
    v14 = [v12 integerValue];
    v9->_activeAlgorithmVersion = v14;
    v15 = [(WDElectrocardiogramFilterDataProvider *)v9 _filterTypesForActiveAlgorithmVersion:v14];
    filterTypes = v9->_filterTypes;
    v9->_filterTypes = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    counts = v9->_counts;
    v9->_counts = v17;

    v19 = HKCreateSerialDispatchQueue();
    clientQueue = v9->_clientQueue;
    v9->_clientQueue = v19;

    v21 = HKCreateSerialDispatchQueue();
    resourceQueue = v9->_resourceQueue;
    v9->_resourceQueue = v21;

    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      activeAlgorithmVersion = v9->_activeAlgorithmVersion;
      *buf = 138543618;
      v32 = v9;
      v33 = 1024;
      v34 = activeAlgorithmVersion;
      _os_log_impl(&dword_251E85000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Initialized with alg ver: %i.", buf, 0x12u);
    }

    goto LABEL_6;
  }

  _HKInitializeLogging();
  v26 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [WDElectrocardiogramFilterDataProvider initWithProfile:v13 delegate:v26];
  }

  v25 = 0;
LABEL_10:

  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

- (int64_t)filterTypeCount
{
  v2 = [(WDElectrocardiogramFilterDataProvider *)self filterTypes];
  v3 = [v2 count];

  return v3;
}

- (void)start
{
  v23 = *MEMORY[0x277D85DE8];
  [(WDElectrocardiogramFilterDataProvider *)self stop];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(WDElectrocardiogramFilterDataProvider *)self setCounts:v3];

  v4 = [(WDElectrocardiogramFilterDataProvider *)self profile];
  v5 = [v4 updateController];
  v6 = [MEMORY[0x277CCD3A8] electrocardiogramType];
  [v5 addObserver:self forType:v6];

  v7 = [(WDElectrocardiogramFilterDataProvider *)self filterTypes];
  v8 = [(WDElectrocardiogramFilterDataProvider *)self _countQueriesForFilterTypes:v7];
  [(WDElectrocardiogramFilterDataProvider *)self setCountQueries:v8];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(WDElectrocardiogramFilterDataProvider *)self countQueries];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = [(WDElectrocardiogramFilterDataProvider *)self profile];
        v16 = [v15 healthStore];
        [v16 executeQuery:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v3 = [(WDElectrocardiogramFilterDataProvider *)self profile];
  v4 = [v3 updateController];
  v5 = [MEMORY[0x277CCD3A8] electrocardiogramType];
  [v4 removeObserver:self forType:v5];

  [(WDElectrocardiogramFilterDataProvider *)self _stopQueries];
}

- (int64_t)countForType:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(WDElectrocardiogramFilterDataProvider *)self resourceQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WDElectrocardiogramFilterDataProvider_countForType___block_invoke;
  block[3] = &unk_2796E6E30;
  block[4] = self;
  block[5] = &v9;
  block[6] = a3;
  dispatch_sync(v5, block);

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __54__WDElectrocardiogramFilterDataProvider_countForType___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _rQueue_countForType:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)displayStringCountForType:(int64_t)a3
{
  v3 = [(WDElectrocardiogramFilterDataProvider *)self countForType:a3];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = &stru_28641D9B8;
  }

  else
  {
    v5 = v3;
    v6 = HKIntegerFormatter();
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    v4 = [v6 stringFromNumber:v7];
  }

  return v4;
}

- (void)updateController:(id)a3 didReceiveUpdateForType:(id)a4 samplesAdded:(id)a5 objectsRemoved:(id)a6 recoveringFromError:(BOOL)a7
{
  v7 = a7;
  v16 = a5;
  v11 = a6;
  v12 = MEMORY[0x277CCD3A8];
  v13 = a4;
  v14 = [v12 electrocardiogramType];
  v15 = [v13 isEqual:v14];

  if (v15 && ([v16 count] || objc_msgSend(v11, "count") || v7))
  {
    [(WDElectrocardiogramFilterDataProvider *)self start];
  }
}

+ (id)cellTitleForType:(int64_t)a3
{
  if (a3 <= 5)
  {
    v4 = off_2796E6EE8[a3];
    v5 = WDBundle();
    v6 = [v5 localizedStringForKey:v4 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
    v3 = HKConditionallyRedactedHeartRhythmString();
  }

  return v3;
}

+ (id)viewControllerTitleForType:(int64_t)a3
{
  if (a3 <= 5)
  {
    v4 = off_2796E6F18[a3];
    v5 = WDBundle();
    v6 = [v5 localizedStringForKey:v4 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
    v3 = HKConditionallyRedactedHeartRhythmString();
  }

  return v3;
}

- (id)electrocardiogramPredicateForType:(int64_t)a3
{
  v3 = 0;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v6 = [(WDElectrocardiogramFilterDataProvider *)self _highLowHeartRateClassificationsWithActiveAlgorithmVersion:[(WDElectrocardiogramFilterDataProvider *)self activeAlgorithmVersion]];
        break;
      case 4:
        v6 = [(WDElectrocardiogramFilterDataProvider *)self _inconclusiveClassificationsWithActiveAlgorithmVersion:[(WDElectrocardiogramFilterDataProvider *)self activeAlgorithmVersion]];
        break;
      case 5:
        v4 = objc_opt_class();
        v5 = 1;
        goto LABEL_13;
      default:
        goto LABEL_14;
    }

LABEL_11:
    v7 = v6;
    v3 = [objc_opt_class() _atrialFibrillationClassificationPredicateWithClassifications:v6];

    goto LABEL_14;
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      goto LABEL_14;
    }

    v6 = [(WDElectrocardiogramFilterDataProvider *)self _atrialFibrillationClassificationsWithActiveAlgorithmVersion:[(WDElectrocardiogramFilterDataProvider *)self activeAlgorithmVersion]];
    goto LABEL_11;
  }

  v4 = objc_opt_class();
  v5 = 3;
LABEL_13:
  v3 = [v4 _atrialFibrillationClassificationPredicateWithValue:v5];
LABEL_14:

  return v3;
}

- (id)_atrialFibrillationClassificationsWithActiveAlgorithmVersion:(int64_t)a3
{
  if (a3 == 1)
  {
    return &unk_28642DE88;
  }

  else
  {
    return &unk_28642DEA0;
  }
}

- (id)_highLowHeartRateClassificationsWithActiveAlgorithmVersion:(int64_t)a3
{
  if (a3 == 1)
  {
    return &unk_28642DEB8;
  }

  else
  {
    return &unk_28642DED0;
  }
}

- (id)_inconclusiveClassificationsWithActiveAlgorithmVersion:(int64_t)a3
{
  if (a3 == 1)
  {
    return &unk_28642DEE8;
  }

  else
  {
    return &unk_28642DF00;
  }
}

+ (id)_atrialFibrillationClassificationPredicateWithValues:(id)a3
{
  v3 = [a3 hk_map:&__block_literal_global_0];
  v4 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v3];

  return v4;
}

uint64_t __94__WDElectrocardiogramFilterDataProvider__atrialFibrillationClassificationPredicateWithValues___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCD838];
  v3 = [a2 integerValue];

  return [v2 predicateForElectrocardiogramsWithPrivateClassification:v3];
}

+ (id)_atrialFibrillationClassificationPredicateWithClassifications:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = objc_opt_class();
  v6 = v5;
  if (v4 == 1)
  {
    v7 = [v3 firstObject];

    v8 = [v6 _atrialFibrillationClassificationPredicateWithValue:{objc_msgSend(v7, "integerValue")}];
    v3 = v7;
  }

  else
  {
    v8 = [v5 _atrialFibrillationClassificationPredicateWithValues:v3];
  }

  return v8;
}

- (id)_filterTypesForActiveAlgorithmVersion:(int64_t)a3
{
  if (a3 == 1)
  {
    return &unk_28642DF18;
  }

  else
  {
    return &unk_28642DF30;
  }
}

- (id)_countQueriesForFilterTypes:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = -[WDElectrocardiogramFilterDataProvider _countQueryForType:](self, "_countQueryForType:", [*(*(&v14 + 1) + 8 * i) integerValue]);
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_countQueryForType:(int64_t)a3
{
  v5 = [MEMORY[0x277CCD3A8] electrocardiogramType];
  v6 = [(WDElectrocardiogramFilterDataProvider *)self electrocardiogramPredicateForType:a3];
  v7 = objc_alloc(MEMORY[0x277CCD8B0]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__WDElectrocardiogramFilterDataProvider__countQueryForType___block_invoke;
  v11[3] = &unk_2796E6EA0;
  v12 = v5;
  v13 = a3;
  v11[4] = self;
  v8 = v5;
  v9 = [v7 initWithSampleType:v8 predicate:v6 resultsHandler:v11];

  return v9;
}

void __60__WDElectrocardiogramFilterDataProvider__countQueryForType___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    _HKInitializeLogging();
    v10 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __60__WDElectrocardiogramFilterDataProvider__countQueryForType___block_invoke_cold_1(a1, v9, v10);
    }
  }

  else if (v8)
  {
    v11 = [*(a1 + 32) resourceQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__WDElectrocardiogramFilterDataProvider__countQueryForType___block_invoke_385;
    v14[3] = &unk_2796E6E78;
    v14[4] = *(a1 + 32);
    v15 = v8;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v16 = v12;
    v17 = v13;
    dispatch_async(v11, v14);
  }
}

uint64_t __60__WDElectrocardiogramFilterDataProvider__countQueryForType___block_invoke_385(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  [v2 _rQueue_setCount:objc_msgSend(v3 forType:{"integerValue"), *(a1 + 56)}];

  v4 = *(a1 + 32);
  v5 = *(a1 + 56);

  return [v4 _rQueue_notifyDelegateDidUpdateCountForType:v5];
}

- (void)_stopQueries
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(WDElectrocardiogramFilterDataProvider *)self countQueries];
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

        [(WDElectrocardiogramFilterDataProvider *)self _safelyStopQuery:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_safelyStopQuery:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(WDElectrocardiogramFilterDataProvider *)self profile];
    v5 = [v6 healthStore];
    [v5 stopQuery:v4];
  }
}

- (void)_rQueue_notifyDelegateDidUpdateCountForType:(int64_t)a3
{
  v5 = [(WDElectrocardiogramFilterDataProvider *)self resourceQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(WDElectrocardiogramFilterDataProvider *)self _rQueue_countForType:a3];
  v7 = [(WDElectrocardiogramFilterDataProvider *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__WDElectrocardiogramFilterDataProvider__rQueue_notifyDelegateDidUpdateCountForType___block_invoke;
  block[3] = &unk_2796E6EC8;
  block[4] = self;
  block[5] = v6;
  block[6] = a3;
  dispatch_async(v7, block);
}

void __85__WDElectrocardiogramFilterDataProvider__rQueue_notifyDelegateDidUpdateCountForType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 electrocardiogramFilterDataProvider:*(a1 + 32) didUpdateCount:*(a1 + 40) type:*(a1 + 48)];
}

- (int64_t)_rQueue_countForType:(int64_t)a3
{
  v5 = [(WDElectrocardiogramFilterDataProvider *)self resourceQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(WDElectrocardiogramFilterDataProvider *)self counts];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = [(WDElectrocardiogramFilterDataProvider *)self counts];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [v11 integerValue];

  return v12;
}

- (void)_rQueue_setCount:(int64_t)a3 forType:(int64_t)a4
{
  v7 = [(WDElectrocardiogramFilterDataProvider *)self resourceQueue];
  dispatch_assert_queue_V2(v7);

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8 = [(WDElectrocardiogramFilterDataProvider *)self counts];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v8 setObject:v10 forKeyedSubscript:v9];
}

- (WDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (WDElectrocardiogramFilterDataProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithProfile:(uint64_t)a1 delegate:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_251E85000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch active algorithm version with error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __60__WDElectrocardiogramFilterDataProvider__countQueryForType___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v5 = 134349314;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_251E85000, log, OS_LOG_TYPE_ERROR, "Failed to fetch count for type: %{public}ld, error: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end