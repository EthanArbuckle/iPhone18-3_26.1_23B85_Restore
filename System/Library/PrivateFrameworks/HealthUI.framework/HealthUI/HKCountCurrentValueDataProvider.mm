@interface HKCountCurrentValueDataProvider
- (HKCountCurrentValueDataProvider)initWithHealthStore:(id)store updateController:(id)controller dateCache:(id)cache displayType:(id)type countStyle:(int64_t)style;
- (id)_countAllSamplesQueryWithCompletion:(id)completion;
- (id)_dataProviderValueForCount:(id)count sampleDate:(id)date;
- (id)_mostRecentValueQueryWithCompletion:(id)completion;
- (id)fetchOperationWithCompletion:(id)completion;
- (void)_countFromDate:(id)date toDate:(id)toDate completion:(id)completion;
- (void)_dataProviderValueFromMostRecentSample:(id)sample completion:(id)completion;
@end

@implementation HKCountCurrentValueDataProvider

- (HKCountCurrentValueDataProvider)initWithHealthStore:(id)store updateController:(id)controller dateCache:(id)cache displayType:(id)type countStyle:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = HKCountCurrentValueDataProvider;
  result = [(HKValueDataProvider *)&v9 initWithHealthStore:store updateController:controller dateCache:cache displayType:type];
  if (result)
  {
    result->_countStyle = style;
  }

  return result;
}

- (id)fetchOperationWithCompletion:(id)completion
{
  v24[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  healthStore = [(HKValueDataProvider *)self healthStore];
  v6 = MEMORY[0x1E696AEC0];
  displayType = [(HKValueDataProvider *)self displayType];
  localization = [displayType localization];
  displayName = [localization displayName];
  v10 = [v6 stringWithFormat:@"CurrentValueCount(%@)", displayName];

  v11 = [[HKHealthQueryFetchOperation alloc] initWithHealthStore:healthStore operationDescription:v10 completion:completionCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__HKCountCurrentValueDataProvider_fetchOperationWithCompletion___block_invoke;
  aBlock[3] = &unk_1E81B7C58;
  v23 = completionCopy;
  v12 = v11;
  v22 = v12;
  v13 = completionCopy;
  v14 = _Block_copy(aBlock);
  countStyle = [(HKCountCurrentValueDataProvider *)self countStyle];
  if (countStyle == 1)
  {
    v16 = [(HKCountCurrentValueDataProvider *)self _countAllSamplesQueryWithCompletion:v14];
  }

  else
  {
    if (countStyle)
    {
      v17 = 0;
      goto LABEL_7;
    }

    v16 = [(HKCountCurrentValueDataProvider *)self _mostRecentValueQueryWithCompletion:v14];
  }

  v17 = v16;
LABEL_7:
  v24[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [(HKHealthQueryFetchOperation *)v12 setQueries:v18];

  v19 = v12;
  return v12;
}

void __64__HKCountCurrentValueDataProvider_fetchOperationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
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
  v11[2] = __71__HKCountCurrentValueDataProvider__mostRecentValueQueryWithCompletion___block_invoke;
  v11[3] = &unk_1E81B7C80;
  v11[4] = self;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = [v7 queryForMostRecentSampleOfType:sampleType predicate:0 completion:v11];

  return v9;
}

uint64_t __71__HKCountCurrentValueDataProvider__mostRecentValueQueryWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12[2] = __85__HKCountCurrentValueDataProvider__dataProviderValueFromMostRecentSample_completion___block_invoke;
    v12[3] = &unk_1E81B7CA8;
    v13 = endDate;
    v14 = completionCopy;
    v12[4] = self;
    v11 = endDate;
    [(HKCountCurrentValueDataProvider *)self _countFromDate:v9 toDate:v10 completion:v12];
  }

  else
  {
    v9 = objc_alloc_init(HKDataProviderNoDataCurrentValue);
    (*(completionCopy + 2))(completionCopy, v9, 0);
  }
}

void __85__HKCountCurrentValueDataProvider__dataProviderValueFromMostRecentSample_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[5];
  v4 = a1[6];
  v6 = a1[4];
  v7 = a3;
  v8 = [v6 _dataProviderValueForCount:a2 sampleDate:v5];
  (*(v4 + 16))(v4, v8, v7);
}

- (id)_dataProviderValueForCount:(id)count sampleDate:(id)date
{
  countCopy = count;
  dateCopy = date;
  if (countCopy)
  {
    v7 = [[HKGenericDataProviderCurrentValue alloc] initWithValue:countCopy];
    [(HKGenericDataProviderCurrentValue *)v7 setDate:dateCopy];
  }

  else
  {
    v7 = objc_alloc_init(HKDataProviderNoDataCurrentValue);
  }

  return v7;
}

- (void)_countFromDate:(id)date toDate:(id)toDate completion:(id)completion
{
  completionCopy = completion;
  toDateCopy = toDate;
  dateCopy = date;
  displayType = [(HKValueDataProvider *)self displayType];
  defaultValuePredicate = [displayType defaultValuePredicate];

  v13 = [MEMORY[0x1E696C378] predicateForSamplesWithStartDate:dateCopy endDate:toDateCopy options:0];

  v14 = objc_alloc(MEMORY[0x1E696C3C8]);
  displayType2 = [(HKValueDataProvider *)self displayType];
  sampleType = [displayType2 sampleType];
  v17 = HKUIPredicateMatchingPredicates(defaultValuePredicate, v13);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68__HKCountCurrentValueDataProvider__countFromDate_toDate_completion___block_invoke;
  v21[3] = &unk_1E81B7CD0;
  v22 = completionCopy;
  v18 = completionCopy;
  v19 = [v14 initWithSampleType:sampleType predicate:v17 limit:0 sortDescriptors:0 resultsHandler:v21];

  healthStore = [(HKValueDataProvider *)self healthStore];
  [healthStore executeQuery:v19];
}

void __68__HKCountCurrentValueDataProvider__countFromDate_toDate_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = a4;
    v9 = [v6 numberWithUnsignedInteger:{objc_msgSend(a3, "count")}];
    (*(v4 + 16))(v4);
  }

  else
  {
    v8 = *(v4 + 16);
    v9 = a4;
    v8(v4, 0);
  }
}

- (id)_countAllSamplesQueryWithCompletion:(id)completion
{
  completionCopy = completion;
  displayType = [(HKValueDataProvider *)self displayType];
  defaultValuePredicate = [displayType defaultValuePredicate];

  displayType2 = [(HKValueDataProvider *)self displayType];
  sampleType = [displayType2 sampleType];

  v9 = objc_alloc(MEMORY[0x1E696C3B0]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__HKCountCurrentValueDataProvider__countAllSamplesQueryWithCompletion___block_invoke;
  v14[3] = &unk_1E81B7CF8;
  v15 = sampleType;
  selfCopy = self;
  v17 = completionCopy;
  v10 = completionCopy;
  v11 = sampleType;
  v12 = [v9 initWithSampleType:v11 predicate:defaultValuePredicate resultsHandler:v14];

  return v12;
}

void __71__HKCountCurrentValueDataProvider__countAllSamplesQueryWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    v6 = *(a1 + 32);
    v7 = a4;
    v11 = [a3 objectForKeyedSubscript:v6];
    v8 = [*(a1 + 40) _dataProviderValueForCount:? sampleDate:?];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(v9 + 16);
    v11 = a4;
    v10(v9, 0);
  }
}

@end