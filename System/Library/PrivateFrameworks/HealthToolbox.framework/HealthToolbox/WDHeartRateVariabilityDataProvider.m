@interface WDHeartRateVariabilityDataProvider
- (void)deleteObjectsAtIndexPath:(id)a3 healthStore:(id)a4 options:(unint64_t)a5 completion:(id)a6;
@end

@implementation WDHeartRateVariabilityDataProvider

- (void)deleteObjectsAtIndexPath:(id)a3 healthStore:(id)a4 options:(unint64_t)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v12 row];
  v14 = [v12 section];

  v17 = [(WDSampleListDataProvider *)self objectAtIndex:v13 forSection:v14];
  v15 = MEMORY[0x277CCD528];
  v16 = [(WDSampleListDataProvider *)self defaultQueryPredicate];
  [v15 deleteHRVSample:v17 healthStore:v11 predicate:v16 options:v6 & 2 completion:v10];
}

@end