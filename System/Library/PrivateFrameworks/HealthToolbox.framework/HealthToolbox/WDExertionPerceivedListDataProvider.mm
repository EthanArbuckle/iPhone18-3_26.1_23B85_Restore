@interface WDExertionPerceivedListDataProvider
- (id)createDataFetcherForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler;
@end

@implementation WDExertionPerceivedListDataProvider

- (id)createDataFetcherForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  if ([(WDExertionPerceivedListDataProvider *)self shouldDisplayAllSamples])
  {
    v14 = 0;
  }

  else
  {
    v15 = [WDExertionDataFetcher alloc];
    healthStore = [(WDSampleListDataProvider *)self healthStore];
    v14 = [(WDExertionDataFetcher *)v15 initWithHealthStore:healthStore predicate:predicateCopy exertionTypeCode:304 limit:limit sortDescriptors:descriptorsCopy resultsHandler:handlerCopy];
  }

  return v14;
}

@end