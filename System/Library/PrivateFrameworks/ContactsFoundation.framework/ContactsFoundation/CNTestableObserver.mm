@interface CNTestableObserver
+ (id)observerWithScheduler:(id)scheduler;
- (CNTestableObserver)initWithScheduler:(id)scheduler;
- (NSArray)resultValues;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)error;
- (void)observerDidReceiveResult:(id)result;
@end

@implementation CNTestableObserver

+ (id)observerWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v5 = [[self alloc] initWithScheduler:schedulerCopy];

  return v5;
}

- (CNTestableObserver)initWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v14.receiver = self;
  v14.super_class = CNTestableObserver;
  v6 = [(CNTestableObserver *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduler, scheduler);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    results = v7->_results;
    v7->_results = v8;

    v10 = objc_alloc_init(CNObservableContractEnforcement);
    enforcement = v7->_enforcement;
    v7->_enforcement = v10;

    v12 = v7;
  }

  return v7;
}

- (NSArray)resultValues
{
  results = [(CNTestableObserver *)self results];
  v3 = [results _cn_filter:CNObservedResultIsResultFilter];
  v4 = [v3 _cn_map:CNObservedResultValueTransform];

  return v4;
}

- (void)observerDidReceiveResult:(id)result
{
  enforcement = self->_enforcement;
  resultCopy = result;
  [(CNObservableContractEnforcement *)enforcement observerDidReceiveResult:resultCopy];
  results = self->_results;
  v7 = [CNObservedResult resultWithTime:[(CNVirtualScheduler *)self->_scheduler clock] value:resultCopy];

  [(NSMutableArray *)results addObject:v7];
}

- (void)observerDidComplete
{
  [(CNObservableContractEnforcement *)self->_enforcement observerDidComplete];
  results = self->_results;
  v4 = [CNObservedResult completionResultWithTime:[(CNVirtualScheduler *)self->_scheduler clock]];
  [(NSMutableArray *)results addObject:v4];
}

- (void)observerDidFailWithError:(id)error
{
  enforcement = self->_enforcement;
  errorCopy = error;
  [(CNObservableContractEnforcement *)enforcement observerDidFailWithError:errorCopy];
  results = self->_results;
  v7 = [CNObservedResult failureWithError:errorCopy time:[(CNVirtualScheduler *)self->_scheduler clock]];

  [(NSMutableArray *)results addObject:v7];
}

@end