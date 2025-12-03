@interface HKMostRecentTimePeriodCurrentValueDataProvider
- (id)_mostRecentValueQueryWithCompletion:(id)completion;
- (id)_queryDateRangeFromSampleDate:(id)date;
- (id)fetchOperationWithCompletion:(id)completion;
- (void)_dataProviderValueFromMostRecentSample:(id)sample completion:(id)completion;
- (void)_totalDurationFromDate:(id)date toDate:(id)toDate completion:(id)completion;
@end

@implementation HKMostRecentTimePeriodCurrentValueDataProvider

- (id)fetchOperationWithCompletion:(id)completion
{
  v19[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  healthStore = [(HKValueDataProvider *)self healthStore];
  v6 = MEMORY[0x1E696AEC0];
  displayType = [(HKValueDataProvider *)self displayType];
  localization = [displayType localization];
  displayName = [localization displayName];
  v10 = [v6 stringWithFormat:@"MostRecentTimePeriod(%@)", displayName];

  v11 = [[HKHealthQueryFetchOperation alloc] initWithHealthStore:healthStore operationDescription:v10 completion:completionCopy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__HKMostRecentTimePeriodCurrentValueDataProvider_fetchOperationWithCompletion___block_invoke;
  v17[3] = &unk_1E81B8198;
  v12 = v11;
  v18 = v12;
  v13 = [(HKMostRecentTimePeriodCurrentValueDataProvider *)self _mostRecentValueQueryWithCompletion:v17];
  v19[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [(HKHealthQueryFetchOperation *)v12 setQueries:v14];

  v15 = v12;
  return v12;
}

- (id)_mostRecentValueQueryWithCompletion:(id)completion
{
  completionCopy = completion;
  displayType = [(HKValueDataProvider *)self displayType];
  sampleType = [displayType sampleType];

  displayType2 = [(HKValueDataProvider *)self displayType];
  defaultValuePredicate = [displayType2 defaultValuePredicate];

  v9 = MEMORY[0x1E696C1C0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__HKMostRecentTimePeriodCurrentValueDataProvider__mostRecentValueQueryWithCompletion___block_invoke;
  v13[3] = &unk_1E81B7C80;
  v13[4] = self;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = [v9 queryForMostRecentSampleOfType:sampleType predicate:defaultValuePredicate completion:v13];

  return v11;
}

uint64_t __86__HKMostRecentTimePeriodCurrentValueDataProvider__mostRecentValueQueryWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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

- (id)_queryDateRangeFromSampleDate:(id)date
{
  dateCopy = date;
  displayType = [(HKValueDataProvider *)self displayType];
  hk_startOfDayTransform = [displayType hk_startOfDayTransform];

  v7 = HKStartOfRollingDayForDate(dateCopy, hk_startOfDayTransform);

  v8 = HKEndOfRollingDayWithStart(v7);
  dateCache = [(HKValueDataProvider *)self dateCache];
  v10 = [dateCache startOfRollingDay:hk_startOfDayTransform];

  dateCache2 = [(HKValueDataProvider *)self dateCache];
  v12 = [dateCache2 endOfRollingDay:hk_startOfDayTransform];

  v13 = HKUIObjectMin(v10, v7);

  v14 = HKUIObjectMin(v12, v8);

  v15 = [HKValueRange valueRangeWithMinValue:v13 maxValue:v14];

  return v15;
}

- (void)_dataProviderValueFromMostRecentSample:(id)sample completion:(id)completion
{
  completionCopy = completion;
  if (sample)
  {
    endDate = [sample endDate];
    v8 = [(HKMostRecentTimePeriodCurrentValueDataProvider *)self _queryDateRangeFromSampleDate:endDate];
    minValue = [(HKDataProviderNoDataCurrentValue *)v8 minValue];
    maxValue = [(HKDataProviderNoDataCurrentValue *)v8 maxValue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __100__HKMostRecentTimePeriodCurrentValueDataProvider__dataProviderValueFromMostRecentSample_completion___block_invoke;
    v12[3] = &unk_1E81B81C0;
    v13 = endDate;
    v14 = completionCopy;
    v11 = endDate;
    [(HKMostRecentTimePeriodCurrentValueDataProvider *)self _totalDurationFromDate:minValue toDate:maxValue completion:v12];
  }

  else
  {
    v8 = objc_alloc_init(HKDataProviderNoDataCurrentValue);
    (*(completionCopy + 2))(completionCopy, v8, 0);
  }
}

void __100__HKMostRecentTimePeriodCurrentValueDataProvider__dataProviderValueFromMostRecentSample_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v6 = a4;
  if (v8)
  {
    v7 = [[HKGenericDataProviderCurrentValue alloc] initWithValue:v8];
    [(HKGenericDataProviderCurrentValue *)v7 setDate:*(a1 + 32)];
  }

  else
  {
    v7 = objc_alloc_init(HKDataProviderNoDataCurrentValue);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_totalDurationFromDate:(id)date toDate:(id)toDate completion:(id)completion
{
  v30[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  toDateCopy = toDate;
  completionCopy = completion;
  v24 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*MEMORY[0x1E696BE38] ascending:1];
  displayType = [(HKValueDataProvider *)self displayType];
  defaultValuePredicate = [displayType defaultValuePredicate];

  v12 = [MEMORY[0x1E696C378] predicateForSamplesWithStartDate:dateCopy endDate:toDateCopy options:0];
  v13 = objc_alloc(MEMORY[0x1E696C3C8]);
  displayType2 = [(HKValueDataProvider *)self displayType];
  sampleType = [displayType2 sampleType];
  v16 = v12;
  v17 = HKUIPredicateMatchingPredicates(defaultValuePredicate, v12);
  v30[0] = v24;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __91__HKMostRecentTimePeriodCurrentValueDataProvider__totalDurationFromDate_toDate_completion___block_invoke;
  v26[3] = &unk_1E81B5A88;
  v27 = dateCopy;
  v28 = toDateCopy;
  v29 = completionCopy;
  v19 = completionCopy;
  v20 = toDateCopy;
  v21 = dateCopy;
  v22 = [v13 initWithSampleType:sampleType predicate:v17 limit:0 sortDescriptors:v18 resultsHandler:v26];

  healthStore = [(HKValueDataProvider *)self healthStore];
  [healthStore executeQuery:v22];
}

void __91__HKMostRecentTimePeriodCurrentValueDataProvider__totalDurationFromDate_toDate_completion___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = a4;
  v6 = [MEMORY[0x1E696C660] coalesceTimePeriodsFromSamples:a3 strictStartDate:a1[4] strictEndDate:a1[5]];
  [MEMORY[0x1E696C660] totalDurationFromCoalescedDateIntervals:v6];
  v7 = a1[6];
  if (v8 <= 0.0)
  {
    (*(v7 + 16))(v7, 0, 0, v10);
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    (*(v7 + 16))(v7, v9, 0, v10);
  }
}

@end