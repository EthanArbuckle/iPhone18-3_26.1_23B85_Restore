@interface WDHeartRateVariabilityListStatisticsDataProvider
- (void)deleteObjectsAtIndexPath:(id)a3 healthStore:(id)a4 options:(unint64_t)a5 completion:(id)a6;
@end

@implementation WDHeartRateVariabilityListStatisticsDataProvider

- (void)deleteObjectsAtIndexPath:(id)a3 healthStore:(id)a4 options:(unint64_t)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v16 = [(WDSampleListStatisticsDataProvider *)self _statisticsAtIndexPath:a3];
  v12 = MEMORY[0x277CCD528];
  v13 = [v16 startDate];
  v14 = [v16 endDate];
  v15 = [(WDSampleListStatisticsDataProvider *)self defaultQueryPredicate];
  [v12 deleteHRVSamplesFromStartDate:v13 endDate:v14 predicate:v15 options:v6 & 2 healthStore:v11 completion:v10];
}

@end