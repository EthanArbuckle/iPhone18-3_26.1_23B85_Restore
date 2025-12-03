@interface HKCumulativeSumCurrentValueDataProvider
- (id)_mostRecentValueQueryWithCompletion:(id)completion;
- (id)fetchOperationWithCompletion:(id)completion;
- (void)_dataProviderValueFromMostRecentSample:(id)sample completion:(id)completion;
- (void)_sumFromDate:(id)date toDate:(id)toDate completion:(id)completion;
@end

@implementation HKCumulativeSumCurrentValueDataProvider

- (id)fetchOperationWithCompletion:(id)completion
{
  v21[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  healthStore = [(HKValueDataProvider *)self healthStore];
  v6 = MEMORY[0x1E696AEC0];
  displayType = [(HKValueDataProvider *)self displayType];
  localization = [displayType localization];
  displayName = [localization displayName];
  v10 = [v6 stringWithFormat:@"MostRecentSum(%@)", displayName];

  v11 = [[HKHealthQueryFetchOperation alloc] initWithHealthStore:healthStore operationDescription:v10 completion:completionCopy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__HKCumulativeSumCurrentValueDataProvider_fetchOperationWithCompletion___block_invoke;
  v18[3] = &unk_1E81B7C58;
  v20 = completionCopy;
  v12 = v11;
  v19 = v12;
  v13 = completionCopy;
  v14 = [(HKCumulativeSumCurrentValueDataProvider *)self _mostRecentValueQueryWithCompletion:v18];
  v21[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [(HKHealthQueryFetchOperation *)v12 setQueries:v15];

  v16 = v12;
  return v12;
}

void __72__HKCumulativeSumCurrentValueDataProvider_fetchOperationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v5 + 16);
  v8 = a3;
  v9 = a2;
  v7(v5, v6, v9, v8);
  [*(a1 + 32) completedWithResults:v9 error:v8];
}

- (id)_mostRecentValueQueryWithCompletion:(id)completion
{
  completionCopy = completion;
  displayType = [(HKValueDataProvider *)self displayType];
  sampleType = [displayType sampleType];

  v7 = MEMORY[0x1E696C1C0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__HKCumulativeSumCurrentValueDataProvider__mostRecentValueQueryWithCompletion___block_invoke;
  v11[3] = &unk_1E81B7C80;
  v11[4] = self;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = [v7 queryForMostRecentSampleOfType:sampleType predicate:0 completion:v11];

  return v9;
}

uint64_t __79__HKCumulativeSumCurrentValueDataProvider__mostRecentValueQueryWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) _dataProviderValueFromMostRecentSample:a2 completion:*(a1 + 40)];
  }
}

- (void)_dataProviderValueFromMostRecentSample:(id)sample completion:(id)completion
{
  completionCopy = completion;
  if (sample)
  {
    endDate = [sample endDate];
    v8 = HKCalendarDateTransformNone();
    v9 = HKStartOfRollingDayForDate(endDate, v8);

    v10 = HKEndOfRollingDayWithStart(v9);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __93__HKCumulativeSumCurrentValueDataProvider__dataProviderValueFromMostRecentSample_completion___block_invoke;
    v12[3] = &unk_1E81B84B8;
    v13 = endDate;
    v14 = completionCopy;
    v11 = endDate;
    [(HKCumulativeSumCurrentValueDataProvider *)self _sumFromDate:v9 toDate:v10 completion:v12];
  }

  else
  {
    v9 = objc_alloc_init(HKDataProviderNoDataCurrentValue);
    (*(completionCopy + 2))(completionCopy, v9, 0);
  }
}

void __93__HKCumulativeSumCurrentValueDataProvider__dataProviderValueFromMostRecentSample_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 sumQuantity];
  if (v5)
  {
    v6 = [[HKGenericQuantityDataProviderCurrentValue alloc] initWithQuantity:v5];
    [(HKGenericQuantityDataProviderCurrentValue *)v6 setDate:*(a1 + 32)];
  }

  else
  {
    v6 = objc_alloc_init(HKDataProviderNoDataCurrentValue);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_sumFromDate:(id)date toDate:(id)toDate completion:(id)completion
{
  completionCopy = completion;
  toDateCopy = toDate;
  dateCopy = date;
  displayType = [(HKValueDataProvider *)self displayType];
  sampleType = [displayType sampleType];
  v13 = objc_alloc(MEMORY[0x1E696C4E0]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__HKCumulativeSumCurrentValueDataProvider__sumFromDate_toDate_completion___block_invoke;
  v20[3] = &unk_1E81B84E0;
  v21 = completionCopy;
  v14 = completionCopy;
  v15 = [v13 initWithQuantityType:sampleType quantitySamplePredicate:0 options:16 completionHandler:v20];
  displayType2 = [(HKValueDataProvider *)self displayType];
  behavior = [displayType2 behavior];
  [v15 setMergeStrategy:{objc_msgSend(behavior, "statisticsMergeStrategy")}];

  v18 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:dateCopy endDate:toDateCopy];
  [v15 _setDateInterval:v18];

  healthStore = [(HKValueDataProvider *)self healthStore];
  [healthStore executeQuery:v15];
}

@end