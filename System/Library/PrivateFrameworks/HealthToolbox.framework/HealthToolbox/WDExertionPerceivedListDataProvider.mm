@interface WDExertionPerceivedListDataProvider
- (id)createDataFetcherForSampleType:(id)a3 predicate:(id)a4 limit:(int64_t)a5 sortDescriptors:(id)a6 resultsHandler:(id)a7;
@end

@implementation WDExertionPerceivedListDataProvider

- (id)createDataFetcherForSampleType:(id)a3 predicate:(id)a4 limit:(int64_t)a5 sortDescriptors:(id)a6 resultsHandler:(id)a7
{
  v11 = a4;
  v12 = a6;
  v13 = a7;
  if ([(WDExertionPerceivedListDataProvider *)self shouldDisplayAllSamples])
  {
    v14 = 0;
  }

  else
  {
    v15 = [WDExertionDataFetcher alloc];
    v16 = [(WDSampleListDataProvider *)self healthStore];
    v14 = [(WDExertionDataFetcher *)v15 initWithHealthStore:v16 predicate:v11 exertionTypeCode:304 limit:a5 sortDescriptors:v12 resultsHandler:v13];
  }

  return v14;
}

@end