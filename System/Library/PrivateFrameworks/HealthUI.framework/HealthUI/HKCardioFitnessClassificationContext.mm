@interface HKCardioFitnessClassificationContext
@end

@implementation HKCardioFitnessClassificationContext

void __124___HKCardioFitnessClassificationContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a4;
  if (a3)
  {
    v10 = [a2 hk_map:&__block_literal_global_22];
    v11 = [HKCardioFitnessUtilities cardioFitnessLevelDataForChartData:v10];
    v12 = v11;
    if (v11)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __124___HKCardioFitnessClassificationContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_3;
      v13[3] = &unk_1E81B5AD0;
      v13[4] = *(a1 + 32);
      v14 = v11;
      dispatch_async(MEMORY[0x1E69E96A0], v13);
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a3, v9, v7, v8);
}

id __124___HKCardioFitnessClassificationContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v2 userInfo];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __124___HKCardioFitnessClassificationContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 contextDidUpdate:*(a1 + 32) withCardioFitnessLevelData:*(a1 + 40)];
}

@end