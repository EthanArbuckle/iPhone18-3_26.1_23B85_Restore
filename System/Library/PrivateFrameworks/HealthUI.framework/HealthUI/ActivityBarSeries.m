@interface ActivityBarSeries
@end

@implementation ActivityBarSeries

void __77___ActivityBarSeries_updateLegendsForTimeScope_range_drawingDuringScrolling___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a3)
  {
    v29 = a1;
    v30 = v8;
    v10 = objc_alloc_init(_GoalDetailCollator);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      v15 = -1;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          v18 = [v17 userInfo];
          [(_GoalDetailCollator *)v10 processCoordinateUserInfo:v18];

          v19 = [v17 userInfo];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v21 = [v17 userInfo];
            v15 = [v21 activityValue];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = -1;
    }

    if ((*(v29 + 40) & 0xFFFFFFFFFFFFFFFELL) == 6)
    {
      WeakRetained = objc_loadWeakRetained((*(v29 + 32) + 296));
      v23 = [WeakRetained activitySummaryForCurrentRange];

      v24 = [*(v29 + 32) unitPreferenceController];
      v25 = [(_GoalDetailCollator *)v10 activitySummaryDetailStringWithActivitySummary:v23 unitPreferenceController:v24 activityValue:v15 displayTypeController:*(*(v29 + 32) + 304)];
    }

    else
    {
      v25 = [(_GoalDetailCollator *)v10 detailStringWithTimeScope:?];
    }

    v9 = v30;
    if (v25 && [v25 length])
    {
      v26 = objc_alloc_init(HKLegendEntry);
      [(HKLegendEntry *)v26 setTitle:v25];
      v27 = [MEMORY[0x1E69DC888] hk_activityLegendLabelColor];
      [(HKLegendEntry *)v26 setLabelColor:v27];

      v35 = v26;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
      [*(v29 + 32) setDetailLegendEntries:v28];
    }

    else
    {
      [*(v29 + 32) setDetailLegendEntries:MEMORY[0x1E695E0F0]];
    }

    [*(v29 + 32) setLastLegendUpdateTime:*(v29 + 48)];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogWellnessDashboard();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      __77___ActivityBarSeries_updateLegendsForTimeScope_range_drawingDuringScrolling___block_invoke_cold_1(v9, &v10->super);
    }
  }
}

void __119___ActivityBarSeries_drawWithBlockCoordinates_visibleBarCount_pointTransform_context_axisRect_seriesRenderingDelegate___block_invoke(uint64_t a1, void *a2, _OWORD *a3)
{
  v5 = a2;
  [v5 min];
  v7 = v6;
  v9 = v8;
  [v5 max];
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + 80);
  if (*(a1 + 72) - v7 <= v14 && v7 - *(a1 + 88) <= v14)
  {
    v15 = *(a1 + 32);
    v16 = [v5 userInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v18 = [v5 userInfo];
      if ([v18 hasActivityGoal] && (objc_msgSend(v18, "activityValueGoalMet") & 1) == 0)
      {
        v19 = *(a1 + 40);

        v15 = v19;
      }

      if ([v18 activityPaused])
      {
        v20 = *(a1 + 48);

        v15 = v20;
      }
    }

    if (*(a1 + 168) == 1)
    {
      v21 = a3[1];
      v37[0] = *a3;
      v37[1] = v21;
      v22 = *(a1 + 112);
      v36[0] = *(a1 + 96);
      v36[1] = v22;
      v23 = *(a1 + 144);
      v36[2] = *(a1 + 128);
      v36[3] = v23;
      if (HKGraphSeriesDataPointPathInRangeInclusive(v37, v36))
      {
        v24 = *(a1 + 56);

        v15 = v24;
      }
    }

    if (v7 - v11 >= 0.0)
    {
      v25 = v7 - v11;
    }

    else
    {
      v25 = -(v7 - v11);
    }

    if (v9 - v13 >= 0.0)
    {
      v26 = v9 - v13;
    }

    else
    {
      v26 = -(v9 - v13);
    }

    v27 = v11;
    v28 = v13;
    v38 = CGRectStandardize(*(&v25 - 2));
    v39 = CGRectOffset(v38, *(a1 + 160) * -0.5, 0.0);
    x = v39.origin.x;
    y = v39.origin.y;
    height = v39.size.height;
    v32 = *(a1 + 160) + v39.size.width;
    [*(a1 + 64) cornerRadii];
    v35 = [HKBarSeries barSeriesRoundedRect:3 byRoundingCorners:x cornerRadii:y, v32, height, v33, v34];
    [v15 appendPath:v35];
  }
}

void __77___ActivityBarSeries_updateLegendsForTimeScope_range_drawingDuringScrolling___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Unable to determine points for chart legend update: %@", &v2, 0xCu);
}

@end