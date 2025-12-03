@interface _ActivityRemoteDataGathererManager
+ (void)gatherDataWithActivitySummaryDataProvider:(id)provider monthDateInterval:(id)interval sixMonthDateInterval:(id)dateInterval completion:(id)completion;
@end

@implementation _ActivityRemoteDataGathererManager

+ (void)gatherDataWithActivitySummaryDataProvider:(id)provider monthDateInterval:(id)interval sixMonthDateInterval:(id)dateInterval completion:(id)completion
{
  providerCopy = provider;
  intervalCopy = interval;
  dateIntervalCopy = dateInterval;
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __130___ActivityRemoteDataGathererManager_gatherDataWithActivitySummaryDataProvider_monthDateInterval_sixMonthDateInterval_completion___block_invoke;
  v17[3] = &unk_1E81B5FD0;
  v18 = providerCopy;
  v19 = intervalCopy;
  v20 = dateIntervalCopy;
  v21 = completionCopy;
  v13 = completionCopy;
  v14 = dateIntervalCopy;
  v15 = intervalCopy;
  v16 = providerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v17);
}

@end