@interface HKCumulativeSumCurrentValueDataProvider
- (id)_mostRecentValueQueryWithCompletion:(id)a3;
- (id)fetchOperationWithCompletion:(id)a3;
- (void)_dataProviderValueFromMostRecentSample:(id)a3 completion:(id)a4;
- (void)_sumFromDate:(id)a3 toDate:(id)a4 completion:(id)a5;
@end

@implementation HKCumulativeSumCurrentValueDataProvider

- (id)fetchOperationWithCompletion:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKValueDataProvider *)self healthStore];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(HKValueDataProvider *)self displayType];
  v8 = [v7 localization];
  v9 = [v8 displayName];
  v10 = [v6 stringWithFormat:@"MostRecentSum(%@)", v9];

  v11 = [[HKHealthQueryFetchOperation alloc] initWithHealthStore:v5 operationDescription:v10 completion:v4];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__HKCumulativeSumCurrentValueDataProvider_fetchOperationWithCompletion___block_invoke;
  v18[3] = &unk_1E81B7C58;
  v20 = v4;
  v12 = v11;
  v19 = v12;
  v13 = v4;
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

- (id)_mostRecentValueQueryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKValueDataProvider *)self displayType];
  v6 = [v5 sampleType];

  v7 = MEMORY[0x1E696C1C0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__HKCumulativeSumCurrentValueDataProvider__mostRecentValueQueryWithCompletion___block_invoke;
  v11[3] = &unk_1E81B7C80;
  v11[4] = self;
  v12 = v4;
  v8 = v4;
  v9 = [v7 queryForMostRecentSampleOfType:v6 predicate:0 completion:v11];

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
    v12[2] = __93__HKCumulativeSumCurrentValueDataProvider__dataProviderValueFromMostRecentSample_completion___block_invoke;
    v12[3] = &unk_1E81B84B8;
    v13 = v7;
    v14 = v6;
    v11 = v7;
    [(HKCumulativeSumCurrentValueDataProvider *)self _sumFromDate:v9 toDate:v10 completion:v12];
  }

  else
  {
    v9 = objc_alloc_init(HKDataProviderNoDataCurrentValue);
    (*(v6 + 2))(v6, v9, 0);
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

- (void)_sumFromDate:(id)a3 toDate:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HKValueDataProvider *)self displayType];
  v12 = [v11 sampleType];
  v13 = objc_alloc(MEMORY[0x1E696C4E0]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__HKCumulativeSumCurrentValueDataProvider__sumFromDate_toDate_completion___block_invoke;
  v20[3] = &unk_1E81B84E0;
  v21 = v8;
  v14 = v8;
  v15 = [v13 initWithQuantityType:v12 quantitySamplePredicate:0 options:16 completionHandler:v20];
  v16 = [(HKValueDataProvider *)self displayType];
  v17 = [v16 behavior];
  [v15 setMergeStrategy:{objc_msgSend(v17, "statisticsMergeStrategy")}];

  v18 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v10 endDate:v9];
  [v15 _setDateInterval:v18];

  v19 = [(HKValueDataProvider *)self healthStore];
  [v19 executeQuery:v15];
}

@end