@interface ActivityRemoteDataGathererManager
@end

@implementation ActivityRemoteDataGathererManager

void __130___ActivityRemoteDataGathererManager_gatherDataWithActivitySummaryDataProvider_monthDateInterval_sixMonthDateInterval_completion___block_invoke(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__19;
  v18 = __Block_byref_object_dispose__19;
  v19 = 0;
  v2 = [_ActivityRemoteDataGatherer alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __130___ActivityRemoteDataGathererManager_gatherDataWithActivitySummaryDataProvider_monthDateInterval_sixMonthDateInterval_completion___block_invoke_2;
  v11 = &unk_1E81BA6A8;
  v5 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = &v14;
  v6 = [(_ActivityRemoteDataGatherer *)v2 initWithActivitySummaryDataProvider:v3 monthDateInterval:v4 sixMonthDateInterval:v5 completion:&v8];
  v7 = v15[5];
  v15[5] = v6;

  [v15[5] gatherData];
  _Block_object_dispose(&v14, 8);
}

void __130___ActivityRemoteDataGathererManager_gatherDataWithActivitySummaryDataProvider_monthDateInterval_sixMonthDateInterval_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

@end