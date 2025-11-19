@interface HKMostRecentValueDataProvider
- (id)_mostRecentValueQueryWithCompletion:(id)a3;
- (id)fetchOperationWithCompletion:(id)a3;
@end

@implementation HKMostRecentValueDataProvider

- (id)fetchOperationWithCompletion:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKValueDataProvider *)self healthStore];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(HKValueDataProvider *)self displayType];
  v8 = [v7 localization];
  v9 = [v8 displayName];
  v10 = [v6 stringWithFormat:@"MostRecentSample(%@)", v9];

  v11 = [[HKHealthQueryFetchOperation alloc] initWithHealthStore:v5 operationDescription:v10 completion:v4];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__HKMostRecentValueDataProvider_fetchOperationWithCompletion___block_invoke;
  v18[3] = &unk_1E81B7C58;
  v20 = v4;
  v12 = v11;
  v19 = v12;
  v13 = v4;
  v14 = [(HKMostRecentValueDataProvider *)self _mostRecentValueQueryWithCompletion:v18];
  v21[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [(HKHealthQueryFetchOperation *)v12 setQueries:v15];

  v16 = v12;
  return v12;
}

void __62__HKMostRecentValueDataProvider_fetchOperationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
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
  v11[2] = __69__HKMostRecentValueDataProvider__mostRecentValueQueryWithCompletion___block_invoke;
  v11[3] = &unk_1E81B8138;
  v12 = v4;
  v8 = v4;
  v9 = [v7 queryForMostRecentSampleOfType:v6 predicate:0 completion:v11];

  return v9;
}

void __69__HKMostRecentValueDataProvider__mostRecentValueQueryWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    if (v9)
    {
      v7 = [v9 dataProviderValue];
    }

    else
    {
      v7 = objc_alloc_init(HKDataProviderNoDataCurrentValue);
    }

    v8 = v7;
    (*(v6 + 16))(v6, v7, 0);
  }
}

@end