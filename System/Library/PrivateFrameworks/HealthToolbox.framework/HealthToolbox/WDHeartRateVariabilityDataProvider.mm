@interface WDHeartRateVariabilityDataProvider
- (void)deleteObjectsAtIndexPath:(id)path healthStore:(id)store options:(unint64_t)options completion:(id)completion;
@end

@implementation WDHeartRateVariabilityDataProvider

- (void)deleteObjectsAtIndexPath:(id)path healthStore:(id)store options:(unint64_t)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  storeCopy = store;
  pathCopy = path;
  v13 = [pathCopy row];
  section = [pathCopy section];

  v17 = [(WDSampleListDataProvider *)self objectAtIndex:v13 forSection:section];
  v15 = MEMORY[0x277CCD528];
  defaultQueryPredicate = [(WDSampleListDataProvider *)self defaultQueryPredicate];
  [v15 deleteHRVSample:v17 healthStore:storeCopy predicate:defaultQueryPredicate options:optionsCopy & 2 completion:completionCopy];
}

@end