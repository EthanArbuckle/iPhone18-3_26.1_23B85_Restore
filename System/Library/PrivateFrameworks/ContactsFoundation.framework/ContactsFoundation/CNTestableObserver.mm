@interface CNTestableObserver
+ (id)observerWithScheduler:(id)a3;
- (CNTestableObserver)initWithScheduler:(id)a3;
- (NSArray)resultValues;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)a3;
- (void)observerDidReceiveResult:(id)a3;
@end

@implementation CNTestableObserver

+ (id)observerWithScheduler:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithScheduler:v4];

  return v5;
}

- (CNTestableObserver)initWithScheduler:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CNTestableObserver;
  v6 = [(CNTestableObserver *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduler, a3);
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
  v2 = [(CNTestableObserver *)self results];
  v3 = [v2 _cn_filter:CNObservedResultIsResultFilter];
  v4 = [v3 _cn_map:CNObservedResultValueTransform];

  return v4;
}

- (void)observerDidReceiveResult:(id)a3
{
  enforcement = self->_enforcement;
  v5 = a3;
  [(CNObservableContractEnforcement *)enforcement observerDidReceiveResult:v5];
  results = self->_results;
  v7 = [CNObservedResult resultWithTime:[(CNVirtualScheduler *)self->_scheduler clock] value:v5];

  [(NSMutableArray *)results addObject:v7];
}

- (void)observerDidComplete
{
  [(CNObservableContractEnforcement *)self->_enforcement observerDidComplete];
  results = self->_results;
  v4 = [CNObservedResult completionResultWithTime:[(CNVirtualScheduler *)self->_scheduler clock]];
  [(NSMutableArray *)results addObject:v4];
}

- (void)observerDidFailWithError:(id)a3
{
  enforcement = self->_enforcement;
  v5 = a3;
  [(CNObservableContractEnforcement *)enforcement observerDidFailWithError:v5];
  results = self->_results;
  v7 = [CNObservedResult failureWithError:v5 time:[(CNVirtualScheduler *)self->_scheduler clock]];

  [(NSMutableArray *)results addObject:v7];
}

@end