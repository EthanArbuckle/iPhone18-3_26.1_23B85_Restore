@interface HKCardioFitnessUtilities
+ (id)_localizationKeyForCardioFitnessLevel:(int64_t)a3 keyVariant:(id)a4;
+ (id)cardioFitnessInteractiveChartViewControllerWithDisplayDate:(id)a3 applicationItems:(id)a4 preferredOverlay:(int64_t)a5 analyticsDelegate:(id)a6 restorationUserActivity:(id)a7 trendModel:(id)a8 factorDisplayTypes:(id)a9 additionalChartOptions:(unint64_t)a10;
+ (id)cardioFitnessLevelDataForChartData:(id)a3;
+ (id)cardioFitnessLookupPropertiesForChartData:(id)a3;
+ (id)classificationIdentifierForIndex:(int64_t)a3;
+ (id)effectiveChartPointDateWithStatisticsInterval:(id)a3 startDate:(id)a4 endDate:(id)a5;
+ (id)localizedStringForCardioFitnessDescription:(int64_t)a3 age:(int64_t)a4;
+ (id)localizedStringForCardioFitnessLevel:(int64_t)a3;
+ (id)localizedStringForCardioFitnessLevelName:(int64_t)a3;
+ (id)localizedStringForCardioFitnessTitle:(int64_t)a3;
+ (id)vo2MaxInteractiveChartViewControllerWithDisplayDate:(id)a3 applicationItems:(id)a4 restorationUserActivity:(id)a5 trendModel:(id)a6 factorDisplayTypes:(id)a7 additionalChartOptions:(unint64_t)a8;
@end

@implementation HKCardioFitnessUtilities

+ (id)_localizationKeyForCardioFitnessLevel:(int64_t)a3 keyVariant:(id)a4
{
  v5 = a4;
  if ((a3 + 1) > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(__CFString *)off_1E81B77E0[a3 + 1] stringByReplacingOccurrencesOfString:@"%@" withString:v5];
  }

  return v6;
}

+ (id)localizedStringForCardioFitnessLevel:(int64_t)a3
{
  v3 = [a1 localizationKeyForCardioFitnessLevel:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-CardioFitness"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)localizedStringForCardioFitnessTitle:(int64_t)a3
{
  v3 = [a1 _localizationKeyForCardioFitnessLevel:a3 keyVariant:@"TITLE"];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-CardioFitness"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)classificationIdentifierForIndex:(int64_t)a3
{
  if ((a3 + 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E81B7808[a3 + 1];
  }
}

+ (id)localizedStringForCardioFitnessLevelName:(int64_t)a3
{
  v3 = [a1 _localizationKeyForCardioFitnessLevel:a3 keyVariant:@"LEVEL_NAME"];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-CardioFitness"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)localizedStringForCardioFitnessDescription:(int64_t)a3 age:(int64_t)a4
{
  if (a4 <= 59)
  {
    v4 = @"DESCRIPTION";
  }

  else
  {
    v4 = @"DESCRIPTION_OLDER";
  }

  v5 = [a1 _localizationKeyForCardioFitnessLevel:a3 keyVariant:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:v5 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-CardioFitness"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)cardioFitnessLookupPropertiesForChartData:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v20;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        [v10 value];
        v8 = v8 + v11;
        v7 = v7 + [v10 age];
      }

      v5 += v4;
      v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
    if (v5)
    {
      v12 = v8 / v5;
      v13 = v7 / v5;
      v14 = [v3 lastObject];
      v15 = [v14 unit];
      v16 = [v14 biologicalSex];
      v4 = objc_alloc_init(MEMORY[0x1E696BF80]);
      [v4 setBiologicalSex:v16];
      [v4 setAge:vcvtad_u64_f64(v13)];
      v17 = [MEMORY[0x1E696C348] quantityWithUnit:v15 doubleValue:v12];
      [v4 setVo2MaxQuantity:v17];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)cardioFitnessLevelDataForChartData:(id)a3
{
  v4 = [a1 cardioFitnessLookupPropertiesForChartData:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 vo2MaxQuantity];
    v7 = [v5 vo2MaxQuantity];
    v8 = [v7 _unit];
    [v6 doubleValueForUnit:v8];
    v10 = v9;

    v11 = [a1 cardioFitnessDataForVO2Max:objc_msgSend(v5 biologicalSex:"biologicalSex") age:{objc_msgSend(v5, "age"), v10}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)effectiveChartPointDateWithStatisticsInterval:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v7 = a4;
  v8 = a5;
  [a3 hk_approximateDuration];
  if (v9 <= *MEMORY[0x1E696B510])
  {
    v10 = HKUIMidDate(v7, v8);
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  return v11;
}

+ (id)cardioFitnessInteractiveChartViewControllerWithDisplayDate:(id)a3 applicationItems:(id)a4 preferredOverlay:(int64_t)a5 analyticsDelegate:(id)a6 restorationUserActivity:(id)a7 trendModel:(id)a8 factorDisplayTypes:(id)a9 additionalChartOptions:(unint64_t)a10
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a4;
  v21 = a3;
  v22 = [[HKOverlayRoomCardioFitnessViewController alloc] initWithDisplayDate:v21 applicationItems:v20 mode:1 preferredOverlay:a5 analyticsDelegate:v19 interactiveChartOptions:0 trendModel:v17 factorDisplayTypes:v16];

  [(HKOverlayRoomViewController *)v22 setRestorationUserActivity:v18];
  [(HKOverlayRoomViewController *)v22 setAdditionalChartOptions:a10];

  return v22;
}

+ (id)vo2MaxInteractiveChartViewControllerWithDisplayDate:(id)a3 applicationItems:(id)a4 restorationUserActivity:(id)a5 trendModel:(id)a6 factorDisplayTypes:(id)a7 additionalChartOptions:(unint64_t)a8
{
  v32[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [v14 displayTypeController];
  v19 = [v18 displayTypeWithIdentifier:&unk_1F43826B0];

  if (v16 || v17 && [v17 count])
  {
    v20 = [[HKOverlayRoomFactorAndTrendViewController alloc] initWithBaseChartDisplayType:v19 trendModel:v16 factorDisplayTypes:v17 displayDate:v13 applicationItems:v14 mode:1 timeScopeRanges:0 initialTimeScope:8 wrappedOverlay:0 overrideFirstWeekday:-1 overrideCalendar:0 additionalChartOptions:a8];
    [(HKOverlayRoomViewController *)v20 setRestorationUserActivity:v15];
  }

  else
  {
    v29 = [HKInteractiveChartViewController alloc];
    v32[0] = v19;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    v30 = [v14 healthStore];
    v21 = [v14 unitController];
    [v14 dateCache];
    v22 = v31 = v13;
    [v14 chartDataCacheController];
    v23 = v28 = v15;
    v24 = [v14 timeScopeController];
    v25 = [v14 sampleDateRangeController];
    v20 = -[HKInteractiveChartViewController initWithDisplayTypes:healthStore:unitPreferenceController:dateCache:chartDataCacheController:selectedTimeScopeController:sampleTypeDateRangeController:initialXValue:currentCalendarOverride:options:](v29, "initWithDisplayTypes:healthStore:unitPreferenceController:dateCache:chartDataCacheController:selectedTimeScopeController:sampleTypeDateRangeController:initialXValue:currentCalendarOverride:options:", v27, v30, v21, v22, v23, v24, v25, v31, 0, [v19 hk_interactiveChartOptions]);

    v15 = v28;
    v13 = v31;
  }

  return v20;
}

@end