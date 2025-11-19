@interface ActivityFactorContext
@end

@implementation ActivityFactorContext

void __109___ActivityFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v52[3] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (a4)
  {
    v11 = *(a1 + 80);
    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) currentCalendar];
    v14 = [HKOverlayRoomFactorContext factorDateIntervalsWithChartPoints:v8 dateInterval:v12 timeScope:v11 calendar:v13 intersection:1];

    v15 = [HKOverlayPillValue alloc];
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [v16 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v18 = [(HKOverlayPillValue *)v15 initWithValueString:v17 unitString:&stru_1F42FFBE0];

    if ([v14 count])
    {
      v19 = [*(a1 + 48) activityCurrentValueView];
      v20 = [v19 computeVisibleSummaryForGraphView:*(a1 + 56) timeScope:*(a1 + 80) filterDateIntervals:v14];

      if (([v20 hasNoData] & 1) == 0)
      {
        v21 = [v20 summaryResult];
        v22 = [v21 isPaused];

        if (v22)
        {
          v23 = [HKOverlayPillValue alloc];
          v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v25 = [v24 localizedStringForKey:@"ACTIVITY_PAUSED_FACTOR" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
          v26 = [(HKOverlayPillValue *)v23 initWithValueString:v25 unitString:&stru_1F42FFBE0];
        }

        else
        {
          v27 = *(a1 + 48);
          v47 = [v20 summaryResult];
          v46 = [v27 _moveStringForSummary:v47];
          v52[0] = v46;
          v45 = [v20 summaryResult];
          v43 = [v45 appleExerciseTime];
          v44 = [v20 summaryResult];
          v42 = [v44 appleExerciseTime];
          v41 = HKLocalizedDisplayStringForAppleExerciseTime(v43, v42, 1, 0);
          v52[1] = v41;
          v40 = [v20 summaryResult];
          v39 = [v40 appleStandHours];
          v28 = [v20 summaryResult];
          v29 = [v28 appleStandHoursGoal];
          v30 = HKLocalizedDisplayStringForAppleStandHours(v39, v29, 1, 0);
          v52[2] = v30;
          v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:3];

          v31 = [*(a1 + 48) activityCurrentValueView];
          v32 = [v31 effectiveUserInterfaceLayoutDirection];

          if (v32 == 1)
          {
            v33 = [v48 reverseObjectEnumerator];
            v34 = [v33 allObjects];
          }

          else
          {
            v34 = v48;
          }

          v49 = v34;
          v35 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v36 = [v35 localizedStringForKey:@"ACTIVITY_FACTOR_DIVIDER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
          v37 = [v34 componentsJoinedByString:v36];

          v26 = [[HKOverlayPillValue alloc] initWithValueString:v37 unitString:&stru_1F42FFBE0];
        }

        v18 = v26;
      }
    }

    v38 = *(a1 + 80);
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __109___ActivityFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_3;
    v50[3] = &unk_1E81B77A0;
    v51 = *(a1 + 64);
    [WeakRetained setLastUpdatedItemFromPillValue:v18 timeScope:v38 completion:v50];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

@end