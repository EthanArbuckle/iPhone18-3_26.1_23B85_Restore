@interface HKQuerySampleListDataFetcher
- (HKQuerySampleListDataFetcher)initWithHealthStore:(id)store query:(id)query;
- (void)stop;
@end

@implementation HKQuerySampleListDataFetcher

- (HKQuerySampleListDataFetcher)initWithHealthStore:(id)store query:(id)query
{
  storeCopy = store;
  queryCopy = query;
  v12.receiver = self;
  v12.super_class = HKQuerySampleListDataFetcher;
  v9 = [(HKQuerySampleListDataFetcher *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthStore, store);
    objc_storeStrong(&v10->_query, query);
  }

  return v10;
}

- (void)stop
{
  [(HKHealthStore *)self->_healthStore stopQuery:self->_query];
  healthStore = self->_healthStore;
  self->_healthStore = 0;

  query = self->_query;
  self->_query = 0;
}

@end