@interface HKSleepComparisonFactorContext
@end

@implementation HKSleepComparisonFactorContext

void __118___HKSleepComparisonFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v13 = WeakRetained;
  if (a4)
  {
    v14 = [WeakRetained displayType];
    v29 = [HKOverlayPillValueProvidingFactory overlayPillValueProviderForDisplayType:v14 selectedRangeFormatter:0 interfaceLayout:[HKOverlayPillValueProvidingFactory interfaceLayoutForController:*(a1 + 32)]];

    v15 = *(a1 + 72);
    v16 = *(a1 + 40);
    v17 = [*(a1 + 32) currentCalendar];
    v18 = [HKOverlayRoomFactorContext factorDateIntervalsWithChartPoints:v9 dateInterval:v16 timeScope:v15 calendar:v17 intersection:1];

    if ([v18 count])
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 72);
      v21 = *(a1 + 80);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __118___HKSleepComparisonFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_2;
      v32[3] = &unk_1E81BAC88;
      v22 = *(a1 + 56);
      v32[4] = *(a1 + 48);
      v34 = v20;
      v33 = v22;
      [v13 chartPointsForChartPointType:0 dateIntervals:v18 overlayChartController:v19 dateIntervalMustMatchView:0 timeScope:v20 resolution:v21 completion:v32];
    }

    else
    {
      v23 = [v13 displayType];
      v24 = *(a1 + 72);
      v25 = [v13 applicationItems];
      v26 = [v25 unitController];
      v27 = [v29 valueFromChartPoints:MEMORY[0x1E695E0F0] unit:v10 displayType:v23 timeScope:v24 unitPreferenceController:v26];

      v28 = *(a1 + 72);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __118___HKSleepComparisonFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_4;
      v30[3] = &unk_1E81B77A0;
      v31 = *(a1 + 56);
      [v13 setLastUpdatedItemFromPillValue:v27 timeScope:v28 completion:v30];
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __118___HKSleepComparisonFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v15 = [a2 hk_map:&__block_literal_global_75];
    v5 = [*(a1 + 32) sleepChartFormatter];
    v6 = [v5 formattedSelectedRangeLabelDataWithChartData:v15 context:1];

    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v8 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v10 = [v7 initWithString:v9];

    v11 = [v6 lastObject];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 attributedString];

      v10 = v13;
    }

    [*(a1 + 32) _setContextItem:v10 timeScope:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v14 = *(*(a1 + 40) + 16);

    v14();
  }
}

@end