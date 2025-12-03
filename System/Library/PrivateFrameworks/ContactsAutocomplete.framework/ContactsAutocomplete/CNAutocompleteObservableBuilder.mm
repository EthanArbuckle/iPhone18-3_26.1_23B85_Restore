@interface CNAutocompleteObservableBuilder
+ (id)builderWithSearchType:(unint64_t)type scheduler:(id)scheduler probeProvider:(id)provider;
- (CNAutocompleteObservableBuilder)initWithBatchingHelper:(id)helper probeProvider:(id)provider scheduler:(id)scheduler;
- (id)combineObservablesInBatch:(id)batch scheduler:(id)scheduler;
- (id)makeObservable;
- (id)probeObservable:(id)observable forPerformanceWithBlock:(id)block;
- (void)addCachedCalendarServerObservable:(id)observable;
- (void)addCachedDirectoryServerObservable:(id)observable;
- (void)addCalendarServerObservable:(id)observable;
- (void)addContactsObservable:(id)observable;
- (void)addCoreRecentsObservable:(id)observable;
- (void)addDirectoryServerObservable:(id)observable;
- (void)addLocalExtensionObservable:(id)observable;
- (void)addPredictionObservable:(id)observable doOnTimeout:(id)timeout;
- (void)addStewieObservable:(id)observable;
- (void)addSuggestionsObservable:(id)observable;
- (void)addSupplementalObservable:(id)observable;
@end

@implementation CNAutocompleteObservableBuilder

- (id)makeObservable
{
  batchingHelper = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  batchedObservables = [batchingHelper batchedObservables];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__CNAutocompleteObservableBuilder_makeObservable__block_invoke;
  v10[3] = &unk_2781C48B0;
  v10[4] = self;
  v5 = [batchedObservables _cn_map:v10];

  v6 = MEMORY[0x277CFBE60];
  scheduler = [(CNAutocompleteObservableBuilder *)self scheduler];
  v8 = [v6 progressiveForkJoin:v5 scheduler:scheduler];

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

+ (id)builderWithSearchType:(unint64_t)type scheduler:(id)scheduler probeProvider:(id)provider
{
  providerCopy = provider;
  schedulerCopy = scheduler;
  v10 = [CNAutocompleteObservableBuilderBatchingHelperFactory batchingHelperForSearchType:type];
  v11 = [[self alloc] initWithBatchingHelper:v10 probeProvider:providerCopy scheduler:schedulerCopy];

  [v11 setSupplementalResultsUseNetwork:{objc_msgSend(self, "supplementalResultsUseNetwork:", type)}];

  return v11;
}

- (CNAutocompleteObservableBuilder)initWithBatchingHelper:(id)helper probeProvider:(id)provider scheduler:(id)scheduler
{
  helperCopy = helper;
  providerCopy = provider;
  schedulerCopy = scheduler;
  v16.receiver = self;
  v16.super_class = CNAutocompleteObservableBuilder;
  v12 = [(CNAutocompleteObservableBuilder *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_batchingHelper, helper);
    objc_storeStrong(&v13->_probeProvider, provider);
    objc_storeStrong(&v13->_scheduler, scheduler);
    v14 = v13;
  }

  return v13;
}

- (id)probeObservable:(id)observable forPerformanceWithBlock:(id)block
{
  observableCopy = observable;
  v5 = MEMORY[0x277CFBE60];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__CNAutocompleteObservableBuilder_probeObservable_forPerformanceWithBlock___block_invoke;
  v9[3] = &unk_2781C4848;
  v10 = observableCopy;
  v6 = observableCopy;
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

- (void)addContactsObservable:(id)observable
{
  v4 = [(CNAutocompleteObservableBuilder *)self probeObservable:observable forPerformanceWithBlock:&__block_literal_global_18];
  scheduler = [(CNAutocompleteObservableBuilder *)self scheduler];
  v7 = [v4 localObservableWithScheduler:scheduler];

  batchingHelper = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [batchingHelper addContactsObservable:v7];
}

- (void)addCoreRecentsObservable:(id)observable
{
  v4 = [(CNAutocompleteObservableBuilder *)self probeObservable:observable forPerformanceWithBlock:&__block_literal_global_8_0];
  scheduler = [(CNAutocompleteObservableBuilder *)self scheduler];
  v7 = [v4 localObservableWithScheduler:scheduler];

  batchingHelper = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [batchingHelper addCoreRecentsObservable:v7];
}

- (void)addStewieObservable:(id)observable
{
  v4 = [(CNAutocompleteObservableBuilder *)self probeObservable:observable forPerformanceWithBlock:&__block_literal_global_10_0];
  scheduler = [(CNAutocompleteObservableBuilder *)self scheduler];
  v7 = [v4 localObservableWithScheduler:scheduler];

  batchingHelper = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [batchingHelper addStewieObservable:v7];
}

- (void)addSuggestionsObservable:(id)observable
{
  v4 = [(CNAutocompleteObservableBuilder *)self probeObservable:observable forPerformanceWithBlock:&__block_literal_global_12_0];
  scheduler = [(CNAutocompleteObservableBuilder *)self scheduler];
  v7 = [v4 localObservableWithScheduler:scheduler];

  batchingHelper = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [batchingHelper addSuggestionsObservable:v7];
}

- (void)addLocalExtensionObservable:(id)observable
{
  observableCopy = observable;
  scheduler = [(CNAutocompleteObservableBuilder *)self scheduler];
  v7 = [observableCopy localObservableWithScheduler:scheduler];

  batchingHelper = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [batchingHelper addLocalExtensionObservable:v7];
}

- (void)addPredictionObservable:(id)observable doOnTimeout:(id)timeout
{
  timeoutCopy = timeout;
  v7 = [(CNAutocompleteObservableBuilder *)self probeObservable:observable forPerformanceWithBlock:&__block_literal_global_14];
  scheduler = [(CNAutocompleteObservableBuilder *)self scheduler];
  v10 = [v7 localObservableWithScheduler:scheduler doOnTimeout:timeoutCopy];

  batchingHelper = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [batchingHelper addPredictionObservable:v10];
}

- (void)addSupplementalObservable:(id)observable
{
  v4 = [(CNAutocompleteObservableBuilder *)self probeObservable:observable forPerformanceWithBlock:&__block_literal_global_16_0];
  if ([(CNAutocompleteObservableBuilder *)self supplementalResultsUseNetwork])
  {
    networkActivityDidStartHandler = [(CNAutocompleteObservableBuilder *)self networkActivityDidStartHandler];
    networkActivityDidStopHandler = [(CNAutocompleteObservableBuilder *)self networkActivityDidStopHandler];
    [(CNAutocompleteObservableBuilder *)self networkActivityStartDelay];
    v8 = v7;
    scheduler = [(CNAutocompleteObservableBuilder *)self scheduler];
    v11 = [v4 networkObservableWithActivityDidStartHandler:networkActivityDidStartHandler activityDidStopHandler:networkActivityDidStopHandler timeoutDelay:scheduler subscriptionDelay:30.0 scheduler:v8];

    v4 = networkActivityDidStopHandler;
  }

  else
  {
    networkActivityDidStartHandler = [(CNAutocompleteObservableBuilder *)self scheduler];
    v11 = [v4 localObservableWithScheduler:networkActivityDidStartHandler];
  }

  batchingHelper = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [batchingHelper addSupplementalObservable:v11];
}

- (void)addCachedDirectoryServerObservable:(id)observable
{
  observableCopy = observable;
  batchingHelper = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [batchingHelper addCachedDirectoryServerObservable:observableCopy];
}

- (void)addDirectoryServerObservable:(id)observable
{
  v4 = [(CNAutocompleteObservableBuilder *)self probeObservable:observable forPerformanceWithBlock:&__block_literal_global_18_0];
  networkActivityDidStartHandler = [(CNAutocompleteObservableBuilder *)self networkActivityDidStartHandler];
  networkActivityDidStopHandler = [(CNAutocompleteObservableBuilder *)self networkActivityDidStopHandler];
  [(CNAutocompleteObservableBuilder *)self networkActivityStartDelay];
  v8 = v7;
  scheduler = [(CNAutocompleteObservableBuilder *)self scheduler];
  v11 = [v4 networkObservableWithActivityDidStartHandler:networkActivityDidStartHandler activityDidStopHandler:networkActivityDidStopHandler timeoutDelay:scheduler subscriptionDelay:30.0 scheduler:v8];

  batchingHelper = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [batchingHelper addDirectoryServerObservable:v11];
}

- (void)addCachedCalendarServerObservable:(id)observable
{
  observableCopy = observable;
  networkActivityDidStartHandler = [(CNAutocompleteObservableBuilder *)self networkActivityDidStartHandler];
  networkActivityDidStopHandler = [(CNAutocompleteObservableBuilder *)self networkActivityDidStopHandler];
  [(CNAutocompleteObservableBuilder *)self networkActivityStartDelay];
  v8 = v7;
  scheduler = [(CNAutocompleteObservableBuilder *)self scheduler];
  v11 = [observableCopy networkObservableWithActivityDidStartHandler:networkActivityDidStartHandler activityDidStopHandler:networkActivityDidStopHandler timeoutDelay:scheduler subscriptionDelay:2.0 scheduler:v8];

  batchingHelper = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [batchingHelper addCachedCalendarServerObservable:v11];
}

- (void)addCalendarServerObservable:(id)observable
{
  v4 = [(CNAutocompleteObservableBuilder *)self probeObservable:observable forPerformanceWithBlock:&__block_literal_global_20_0];
  networkActivityDidStartHandler = [(CNAutocompleteObservableBuilder *)self networkActivityDidStartHandler];
  networkActivityDidStopHandler = [(CNAutocompleteObservableBuilder *)self networkActivityDidStopHandler];
  [(CNAutocompleteObservableBuilder *)self networkActivityStartDelay];
  v8 = v7;
  scheduler = [(CNAutocompleteObservableBuilder *)self scheduler];
  v11 = [v4 networkObservableWithActivityDidStartHandler:networkActivityDidStartHandler activityDidStopHandler:networkActivityDidStopHandler timeoutDelay:scheduler subscriptionDelay:30.0 scheduler:v8];

  batchingHelper = [(CNAutocompleteObservableBuilder *)self batchingHelper];
  [batchingHelper addCalendarServerObservable:v11];
}

- (id)combineObservablesInBatch:(id)batch scheduler:(id)scheduler
{
  batchCopy = batch;
  schedulerCopy = scheduler;
  if ([batchCopy count])
  {
    v7 = [MEMORY[0x277CFBE60] forkJoin:batchCopy scheduler:schedulerCopy];
    emptyObservable = [v7 map:&__block_literal_global_23];
  }

  else
  {
    emptyObservable = [MEMORY[0x277CFBE60] emptyObservable];
  }

  return emptyObservable;
}

@end