@interface CNAutocompleteObservableBuilder
+ (id)builderWithSearchType:(unint64_t)a3 scheduler:(id)a4 probeProvider:(id)a5;
- (CNAutocompleteObservableBuilder)initWithBatchingHelper:(id)a3 probeProvider:(id)a4 scheduler:(id)a5;
- (id)combineObservablesInBatch:(id)a3 scheduler:(id)a4;
- (id)makeObservable;
- (id)probeObservable:(id)a3 forPerformanceWithBlock:(id)a4;
- (void)addCachedCalendarServerObservable:(id)a3;
- (void)addCachedDirectoryServerObservable:(id)a3;
- (void)addCalendarServerObservable:(id)a3;
- (void)addContactsObservable:(id)a3;
- (void)addCoreRecentsObservable:(id)a3;
- (void)addDirectoryServerObservable:(id)a3;
- (void)addLocalExtensionObservable:(id)a3;
- (void)addPredictionObservable:(id)a3 doOnTimeout:(id)a4;
- (void)addStewieObservable:(id)a3;
- (void)addSuggestionsObservable:(id)a3;
- (void)addSupplementalObservable:(id)a3;
@end

@implementation CNAutocompleteObservableBuilder

- (id)makeObservable
{
  v3 = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  v4 = [v3 batchedObservables];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__CNAutocompleteObservableBuilder_makeObservable__block_invoke;
  v10[3] = &unk_2781C48B0;
  v10[4] = self;
  v5 = [v4 _cn_map:v10];

  v6 = MEMORY[0x277CFBE60];
  v7 = [(CNAutocompleteObservableBuilder *)self scheduler];
  v8 = [v6 progressiveForkJoin:v5 scheduler:v7];

  return v8;
}

id __49__CNAutocompleteObservableBuilder_makeObservable__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 scheduler];
  v5 = [v2 combineObservablesInBatch:v3 scheduler:v4];

  return v5;
}

+ (id)builderWithSearchType:(unint64_t)a3 scheduler:(id)a4 probeProvider:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [CNAutocompleteObservableBuilderBatchingHelperFactory batchingHelperForSearchType:a3];
  v11 = [[a1 alloc] initWithBatchingHelper:v10 probeProvider:v8 scheduler:v9];

  [v11 setSupplementalResultsUseNetwork:{objc_msgSend(a1, "supplementalResultsUseNetwork:", a3)}];

  return v11;
}

- (CNAutocompleteObservableBuilder)initWithBatchingHelper:(id)a3 probeProvider:(id)a4 scheduler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CNAutocompleteObservableBuilder;
  v12 = [(CNAutocompleteObservableBuilder *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_batchingHelper, a3);
    objc_storeStrong(&v13->_probeProvider, a4);
    objc_storeStrong(&v13->_scheduler, a5);
    v14 = v13;
  }

  return v13;
}

- (id)probeObservable:(id)a3 forPerformanceWithBlock:(id)a4
{
  v4 = a3;
  v5 = MEMORY[0x277CFBE60];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__CNAutocompleteObservableBuilder_probeObservable_forPerformanceWithBlock___block_invoke;
  v9[3] = &unk_2781C4848;
  v10 = v4;
  v6 = v4;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

id __75__CNAutocompleteObservableBuilder_probeObservable_forPerformanceWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CFBE68];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__CNAutocompleteObservableBuilder_probeObservable_forPerformanceWithBlock___block_invoke_2;
  v17[3] = &unk_2781C4820;
  v19 = v20;
  v18 = v3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__CNAutocompleteObservableBuilder_probeObservable_forPerformanceWithBlock___block_invoke_3;
  v15[3] = &unk_2781C3FB0;
  v16 = v18;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __75__CNAutocompleteObservableBuilder_probeObservable_forPerformanceWithBlock___block_invoke_4;
  v13 = &unk_2781C4440;
  v6 = v16;
  v14 = v6;
  v7 = [v5 observerWithResultBlock:v17 completionBlock:v15 failureBlock:&v10];
  v8 = [v4 subscribe:{v7, v10, v11, v12, v13}];

  _Block_object_dispose(v20, 8);

  return v8;
}

void __75__CNAutocompleteObservableBuilder_probeObservable_forPerformanceWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 count];
  [*(a1 + 32) observerDidReceiveResult:v3];
}

- (void)addContactsObservable:(id)a3
{
  v4 = [(CNAutocompleteObservableBuilder *)self probeObservable:a3 forPerformanceWithBlock:&__block_literal_global_18];
  v5 = [(CNAutocompleteObservableBuilder *)self scheduler];
  v7 = [v4 localObservableWithScheduler:v5];

  v6 = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [v6 addContactsObservable:v7];
}

- (void)addCoreRecentsObservable:(id)a3
{
  v4 = [(CNAutocompleteObservableBuilder *)self probeObservable:a3 forPerformanceWithBlock:&__block_literal_global_8_0];
  v5 = [(CNAutocompleteObservableBuilder *)self scheduler];
  v7 = [v4 localObservableWithScheduler:v5];

  v6 = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [v6 addCoreRecentsObservable:v7];
}

- (void)addStewieObservable:(id)a3
{
  v4 = [(CNAutocompleteObservableBuilder *)self probeObservable:a3 forPerformanceWithBlock:&__block_literal_global_10_0];
  v5 = [(CNAutocompleteObservableBuilder *)self scheduler];
  v7 = [v4 localObservableWithScheduler:v5];

  v6 = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [v6 addStewieObservable:v7];
}

- (void)addSuggestionsObservable:(id)a3
{
  v4 = [(CNAutocompleteObservableBuilder *)self probeObservable:a3 forPerformanceWithBlock:&__block_literal_global_12_0];
  v5 = [(CNAutocompleteObservableBuilder *)self scheduler];
  v7 = [v4 localObservableWithScheduler:v5];

  v6 = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [v6 addSuggestionsObservable:v7];
}

- (void)addLocalExtensionObservable:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteObservableBuilder *)self scheduler];
  v7 = [v4 localObservableWithScheduler:v5];

  v6 = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [v6 addLocalExtensionObservable:v7];
}

- (void)addPredictionObservable:(id)a3 doOnTimeout:(id)a4
{
  v6 = a4;
  v7 = [(CNAutocompleteObservableBuilder *)self probeObservable:a3 forPerformanceWithBlock:&__block_literal_global_14];
  v8 = [(CNAutocompleteObservableBuilder *)self scheduler];
  v10 = [v7 localObservableWithScheduler:v8 doOnTimeout:v6];

  v9 = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [v9 addPredictionObservable:v10];
}

- (void)addSupplementalObservable:(id)a3
{
  v4 = [(CNAutocompleteObservableBuilder *)self probeObservable:a3 forPerformanceWithBlock:&__block_literal_global_16_0];
  if ([(CNAutocompleteObservableBuilder *)self supplementalResultsUseNetwork])
  {
    v5 = [(CNAutocompleteObservableBuilder *)self networkActivityDidStartHandler];
    v6 = [(CNAutocompleteObservableBuilder *)self networkActivityDidStopHandler];
    [(CNAutocompleteObservableBuilder *)self networkActivityStartDelay];
    v8 = v7;
    v9 = [(CNAutocompleteObservableBuilder *)self scheduler];
    v11 = [v4 networkObservableWithActivityDidStartHandler:v5 activityDidStopHandler:v6 timeoutDelay:v9 subscriptionDelay:30.0 scheduler:v8];

    v4 = v6;
  }

  else
  {
    v5 = [(CNAutocompleteObservableBuilder *)self scheduler];
    v11 = [v4 localObservableWithScheduler:v5];
  }

  v10 = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [v10 addSupplementalObservable:v11];
}

- (void)addCachedDirectoryServerObservable:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [v5 addCachedDirectoryServerObservable:v4];
}

- (void)addDirectoryServerObservable:(id)a3
{
  v4 = [(CNAutocompleteObservableBuilder *)self probeObservable:a3 forPerformanceWithBlock:&__block_literal_global_18_0];
  v5 = [(CNAutocompleteObservableBuilder *)self networkActivityDidStartHandler];
  v6 = [(CNAutocompleteObservableBuilder *)self networkActivityDidStopHandler];
  [(CNAutocompleteObservableBuilder *)self networkActivityStartDelay];
  v8 = v7;
  v9 = [(CNAutocompleteObservableBuilder *)self scheduler];
  v11 = [v4 networkObservableWithActivityDidStartHandler:v5 activityDidStopHandler:v6 timeoutDelay:v9 subscriptionDelay:30.0 scheduler:v8];

  v10 = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [v10 addDirectoryServerObservable:v11];
}

- (void)addCachedCalendarServerObservable:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteObservableBuilder *)self networkActivityDidStartHandler];
  v6 = [(CNAutocompleteObservableBuilder *)self networkActivityDidStopHandler];
  [(CNAutocompleteObservableBuilder *)self networkActivityStartDelay];
  v8 = v7;
  v9 = [(CNAutocompleteObservableBuilder *)self scheduler];
  v11 = [v4 networkObservableWithActivityDidStartHandler:v5 activityDidStopHandler:v6 timeoutDelay:v9 subscriptionDelay:2.0 scheduler:v8];

  v10 = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [v10 addCachedCalendarServerObservable:v11];
}

- (void)addCalendarServerObservable:(id)a3
{
  v4 = [(CNAutocompleteObservableBuilder *)self probeObservable:a3 forPerformanceWithBlock:&__block_literal_global_20_0];
  v5 = [(CNAutocompleteObservableBuilder *)self networkActivityDidStartHandler];
  v6 = [(CNAutocompleteObservableBuilder *)self networkActivityDidStopHandler];
  [(CNAutocompleteObservableBuilder *)self networkActivityStartDelay];
  v8 = v7;
  v9 = [(CNAutocompleteObservableBuilder *)self scheduler];
  v11 = [v4 networkObservableWithActivityDidStartHandler:v5 activityDidStopHandler:v6 timeoutDelay:v9 subscriptionDelay:30.0 scheduler:v8];

  v10 = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [v10 addCalendarServerObservable:v11];
}

- (id)combineObservablesInBatch:(id)a3 scheduler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [MEMORY[0x277CFBE60] forkJoin:v5 scheduler:v6];
    v8 = [v7 map:&__block_literal_global_23];
  }

  else
  {
    v8 = [MEMORY[0x277CFBE60] emptyObservable];
  }

  return v8;
}

@end