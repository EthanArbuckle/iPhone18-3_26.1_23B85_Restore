@interface HKCountCurrentValueDataProvider
- (HKCountCurrentValueDataProvider)initWithHealthStore:(id)a3 updateController:(id)a4 dateCache:(id)a5 displayType:(id)a6 countStyle:(int64_t)a7;
- (id)_countAllSamplesQueryWithCompletion:(id)a3;
- (id)_dataProviderValueForCount:(id)a3 sampleDate:(id)a4;
- (id)_mostRecentValueQueryWithCompletion:(id)a3;
- (id)fetchOperationWithCompletion:(id)a3;
- (void)_countFromDate:(id)a3 toDate:(id)a4 completion:(id)a5;
- (void)_dataProviderValueFromMostRecentSample:(id)a3 completion:(id)a4;
@end

@implementation HKCountCurrentValueDataProvider

- (HKCountCurrentValueDataProvider)initWithHealthStore:(id)a3 updateController:(id)a4 dateCache:(id)a5 displayType:(id)a6 countStyle:(int64_t)a7
{
  v9.receiver = self;
  v9.super_class = HKCountCurrentValueDataProvider;
  result = [(HKValueDataProvider *)&v9 initWithHealthStore:a3 updateController:a4 dateCache:a5 displayType:a6];
  if (result)
  {
    result->_countStyle = a7;
  }

  return result;
}

- (id)fetchOperationWithCompletion:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKValueDataProvider *)self healthStore];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(HKValueDataProvider *)self displayType];
  v8 = [v7 localization];
  v9 = [v8 displayName];
  v10 = [v6 stringWithFormat:@"CurrentValueCount(%@)", v9];

  v11 = [[HKHealthQueryFetchOperation alloc] initWithHealthStore:v5 operationDescription:v10 completion:v4];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__HKCountCurrentValueDataProvider_fetchOperationWithCompletion___block_invoke;
  aBlock[3] = &unk_1E81B7C58;
  v23 = v4;
  v12 = v11;
  v22 = v12;
  v13 = v4;
  v14 = _Block_copy(aBlock);
  v15 = [(HKCountCurrentValueDataProvider *)self countStyle];
  if (v15 == 1)
  {
    v16 = [(HKCountCurrentValueDataProvider *)self _countAllSamplesQueryWithCompletion:v14];
  }

  else
  {
    if (v15)
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

- (id)_mostRecentValueQueryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKValueDataProvider *)self displayType];
  v6 = [v5 sampleType];

  v7 = MEMORY[0x1E696C1C0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__HKCountCurrentValueDataProvider__mostRecentValueQueryWithCompletion___block_invoke;
  v11[3] = &unk_1E81B7C80;
  v11[4] = self;
  v12 = v4;
  v8 = v4;
  v9 = [v7 queryForMostRecentSampleOfType:v6 predicate:0 completion:v11];

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

- (void)_dataProviderValueFromMostRecentSample:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [a3 endDate];
    v8 = HKCalendarDateTransformNone();
    v9 = HKStartOfRollingDayForDate(v7, v8);

    v10 = HKEndOfRollingDayWithStart(v9);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__HKCountCurrentValueDataProvider__dataProviderValueFromMostRecentSample_completion___block_invoke;
    v12[3] = &unk_1E81B7CA8;
    v13 = v7;
    v14 = v6;
    v12[4] = self;
    v11 = v7;
    [(HKCountCurrentValueDataProvider *)self _countFromDate:v9 toDate:v10 completion:v12];
  }

  else
  {
    v9 = objc_alloc_init(HKDataProviderNoDataCurrentValue);
    (*(v6 + 2))(v6, v9, 0);
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

- (id)_dataProviderValueForCount:(id)a3 sampleDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [[HKGenericDataProviderCurrentValue alloc] initWithValue:v5];
    [(HKGenericDataProviderCurrentValue *)v7 setDate:v6];
  }

  else
  {
    v7 = objc_alloc_init(HKDataProviderNoDataCurrentValue);
  }

  return v7;
}

- (void)_countFromDate:(id)a3 toDate:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HKValueDataProvider *)self displayType];
  v12 = [v11 defaultValuePredicate];

  v13 = [MEMORY[0x1E696C378] predicateForSamplesWithStartDate:v10 endDate:v9 options:0];

  v14 = objc_alloc(MEMORY[0x1E696C3C8]);
  v15 = [(HKValueDataProvider *)self displayType];
  v16 = [v15 sampleType];
  v17 = HKUIPredicateMatchingPredicates(v12, v13);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68__HKCountCurrentValueDataProvider__countFromDate_toDate_completion___block_invoke;
  v21[3] = &unk_1E81B7CD0;
  v22 = v8;
  v18 = v8;
  v19 = [v14 initWithSampleType:v16 predicate:v17 limit:0 sortDescriptors:0 resultsHandler:v21];

  v20 = [(HKValueDataProvider *)self healthStore];
  [v20 executeQuery:v19];
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

- (id)_countAllSamplesQueryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKValueDataProvider *)self displayType];
  v6 = [v5 defaultValuePredicate];

  v7 = [(HKValueDataProvider *)self displayType];
  v8 = [v7 sampleType];

  v9 = objc_alloc(MEMORY[0x1E696C3B0]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__HKCountCurrentValueDataProvider__countAllSamplesQueryWithCompletion___block_invoke;
  v14[3] = &unk_1E81B7CF8;
  v15 = v8;
  v16 = self;
  v17 = v4;
  v10 = v4;
  v11 = v8;
  v12 = [v9 initWithSampleType:v11 predicate:v6 resultsHandler:v14];

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