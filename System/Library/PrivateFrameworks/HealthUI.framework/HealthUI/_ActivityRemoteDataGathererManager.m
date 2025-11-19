@interface _ActivityRemoteDataGathererManager
+ (void)gatherDataWithActivitySummaryDataProvider:(id)a3 monthDateInterval:(id)a4 sixMonthDateInterval:(id)a5 completion:(id)a6;
@end

@implementation _ActivityRemoteDataGathererManager

+ (void)gatherDataWithActivitySummaryDataProvider:(id)a3 monthDateInterval:(id)a4 sixMonthDateInterval:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __130___ActivityRemoteDataGathererManager_gatherDataWithActivitySummaryDataProvider_monthDateInterval_sixMonthDateInterval_completion___block_invoke;
  v17[3] = &unk_1E81B5FD0;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v17);
}

@end