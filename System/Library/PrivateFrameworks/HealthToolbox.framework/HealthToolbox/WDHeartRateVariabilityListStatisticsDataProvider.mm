@interface WDHeartRateVariabilityListStatisticsDataProvider
- (void)deleteObjectsAtIndexPath:(id)path healthStore:(id)store options:(unint64_t)options completion:(id)completion;
@end

@implementation WDHeartRateVariabilityListStatisticsDataProvider

- (void)deleteObjectsAtIndexPath:(id)path healthStore:(id)store options:(unint64_t)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  storeCopy = store;
  v16 = [(WDSampleListStatisticsDataProvider *)self _statisticsAtIndexPath:path];
  v12 = MEMORY[0x277CCD528];
  startDate = [v16 startDate];
  endDate = [v16 endDate];
  defaultQueryPredicate = [(WDSampleListStatisticsDataProvider *)self defaultQueryPredicate];
  [v12 deleteHRVSamplesFromStartDate:startDate endDate:endDate predicate:defaultQueryPredicate options:optionsCopy & 2 healthStore:storeCopy completion:completionCopy];
}

@end