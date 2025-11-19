@interface HKSleepUtilities
+ (CGSize)_barCornerRadiusForCurrentDevice;
+ (double)somnogramBackgroundOpacityWithIsDarkMode:(BOOL)a3 isHighContrast:(BOOL)a4 isGrayScale:(BOOL)a5;
+ (id)_findOrCreateSleepChartCacheForSleepDisplayType:(id)a3 cacheIdentifier:(id)a4 cacheController:(id)a5 dataSourceProvider:(id)a6;
+ (id)_generateComparisonSleepSeriesForTimeScope:(int64_t)a3;
+ (id)_generateDailyTimePeriodSeriesForTimeScope:(int64_t)a3;
+ (id)_generateDailyTimePeriodSeriesWithSchedulesForTimeScope:(int64_t)a3;
+ (id)_generateDurationSleepGoalSeriesForTimeScope:(int64_t)a3;
+ (id)_generateDurationSleepSeriesForTimeScope:(int64_t)a3;
+ (id)_generateSleepStageDurationSeriesForTimeScope:(int64_t)a3;
+ (id)_generateSleepStageSeriesForTimeScope:(int64_t)a3;
+ (id)_goalLineMarkerStyle;
+ (id)_goalLineStrokeStyle;
+ (id)_gradientFillColorForSleepAnalysis:(int64_t)a3 gradientPosition:(double)a4;
+ (id)_lessSaturatedColorWithColor:(id)a3;
+ (id)_scheduleMarkerStyleWithColor:(id)a3;
+ (id)_seriesStrokeStyle;
+ (id)_sleepSeriesAxisForSleepSeries:(id)a3 sleepSeriesType:(int64_t)a4 sleepDisplayType:(id)a5 unitController:(id)a6 numericAxisConfigurationOverrides:(id)a7;
+ (id)_sleepSeriesForType:(int64_t)a3 timeScope:(int64_t)a4;
+ (id)buildSleepChartCachesWithDisplayType:(id)a3 dataSourceProvider:(id)a4 cacheController:(id)a5 healthStore:(id)a6;
+ (id)buildSleepGraphSeriesForSleepSeriesType:(int64_t)a3 sleepDisplayType:(id)a4 unitController:(id)a5 numericAxisConfigurationOverrides:(id)a6 timeScope:(int64_t)a7;
+ (id)buildSleepGraphSeriesMappingWithSleepSeriesType:(int64_t)a3 sleepDisplayType:(id)a4 unitController:(id)a5 numericAxisConfigurationOverrides:(id)a6;
+ (id)fillStyleForSleepCategoryValue:(int64_t)a3 isActive:(BOOL)a4;
+ (id)localizedInfographicDescriptionForCategoryValue:(int64_t)a3;
+ (id)localizedInfographicTitleForCategoryValue:(int64_t)a3;
+ (id)noonAlignedXValueForChartPointInfoProvider:(id)a3;
+ (id)sleepDisplayTypesWithHealthStore:(id)a3 sleepDisplayType:(id)a4 unitController:(id)a5 displayTypeController:(id)a6 chartCacheController:(id)a7 sleepChartFormatter:(id)a8 sleepSeriesType:(int64_t)a9 sleepChartCaches:(id)a10 customSleepSeries:(id)a11 isStackedChart:(BOOL)a12;
+ (id)sleepDisplayTypesWithHealthStore:(id)a3 sleepDisplayType:(id)a4 unitController:(id)a5 displayTypeController:(id)a6 chartCacheController:(id)a7 sleepChartFormatter:(id)a8 sleepSeriesType:(int64_t)a9 sleepChartCaches:(id)a10 customSleepSeriesMapping:(id)a11 isStackedChart:(BOOL)a12;
+ (id)sleepDurationNoDataRange;
+ (id)sleepStageContextTitleForSleepValue:(int64_t)a3 timeScope:(int64_t)a4;
+ (id)sleepStageFillStylesWithActiveSleepStage:(id)a3;
+ (id)standardXValueForChartPointInfoProvider:(id)a3;
+ (id)verticalNumericalAxisWithConfigurationOverrides:(id)a3;
+ (int64_t)_axisPurposeForSleepSeriesType:(int64_t)a3;
+ (void)_applyModificationsToSleepSeries:(id)a3 sleepSeriesType:(int64_t)a4 sleepDisplayType:(id)a5 timeScope:(int64_t)a6 unitController:(id)a7 numericAxisConfigurationOverrides:(id)a8;
@end

@implementation HKSleepUtilities

+ (id)localizedInfographicTitleForCategoryValue:(int64_t)a3
{
  v3 = &stru_1F42FFBE0;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v5 = v4;
      v6 = @"ASLEEP_DEEP";
    }

    else
    {
      if (a3 != 5)
      {
        goto LABEL_12;
      }

      v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v5 = v4;
      v6 = @"ASLEEP_REM";
    }

    goto LABEL_10;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      goto LABEL_12;
    }

    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = v4;
    v6 = @"ASLEEP_CORE";
LABEL_10:
    v7 = @"HealthUI-Localizable-Acacia";
    goto LABEL_11;
  }

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = v4;
  v6 = @"AWAKE";
  v7 = @"HealthUI-Localizable";
LABEL_11:
  v3 = [v4 localizedStringForKey:v6 value:&stru_1F42FFBE0 table:v7];

LABEL_12:

  return v3;
}

+ (id)localizedInfographicDescriptionForCategoryValue:(int64_t)a3
{
  if ((a3 - 2) > 3)
  {
    v5 = &stru_1F42FFBE0;
  }

  else
  {
    v3 = off_1E81B8AC0[a3 - 2];
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
  }

  return v5;
}

+ (id)standardXValueForChartPointInfoProvider:(id)a3
{
  v3 = a3;
  v4 = [v3 calendar];
  v5 = [v3 dateInterval];

  v6 = [v5 startDate];
  v7 = [v5 endDate];
  v8 = HKDateMid();

  v9 = [v8 hk_morningIndexWithCalendar:v4];
  v10 = [MEMORY[0x1E695DF00] hk_sleepDayStartForMorningIndex:v9 + 1 calendar:v4];

  return v10;
}

+ (id)noonAlignedXValueForChartPointInfoProvider:(id)a3
{
  v3 = a3;
  v4 = [v3 calendar];
  v5 = [HKSleepUtilities standardXValueForChartPointInfoProvider:v3];

  v6 = [v4 hk_nearestNoonBeforeDateOrEqualToDate:v5];

  return v6;
}

+ (id)sleepStageContextTitleForSleepValue:(int64_t)a3 timeScope:(int64_t)a4
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        if (a4 == 6)
        {
          v8 = @"STAGES_OVERLAY_CONTEXT_CORE";
        }

        else
        {
          v8 = @"STAGES_OVERLAY_CONTEXT_AVERAGE_CORE";
        }

        break;
      case 4:
        v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        if (a4 == 6)
        {
          v8 = @"STAGES_OVERLAY_CONTEXT_DEEP";
        }

        else
        {
          v8 = @"STAGES_OVERLAY_CONTEXT_AVERAGE_DEEP";
        }

        break;
      case 5:
        v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        if (a4 == 6)
        {
          v8 = @"STAGES_OVERLAY_CONTEXT_REM";
        }

        else
        {
          v8 = @"STAGES_OVERLAY_CONTEXT_AVERAGE_REM";
        }

        break;
      default:
        goto LABEL_23;
    }

LABEL_22:
    v4 = [v7 localizedStringForKey:v8 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];

    goto LABEL_23;
  }

  if (a3 >= 2)
  {
    if (a3 != 2)
    {
      goto LABEL_23;
    }

    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    if (a4 == 6)
    {
      v8 = @"STAGES_OVERLAY_CONTEXT_AWAKE";
    }

    else
    {
      v8 = @"STAGES_OVERLAY_CONTEXT_AVERAGE_AWAKE";
    }

    goto LABEL_22;
  }

  _HKInitializeLogging();
  v6 = *MEMORY[0x1E696B998];
  if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_ERROR))
  {
    [HKSleepUtilities sleepStageContextTitleForSleepValue:v6 timeScope:?];
  }

  v4 = &stru_1F42FFBE0;
LABEL_23:

  return v4;
}

+ (id)verticalNumericalAxisWithConfigurationOverrides:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HKSolidFillStyle);
  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(HKSolidFillStyle *)v4 setColor:v5];

  v6 = objc_alloc_init(HKAxisStyle);
  v7 = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
  v8 = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
  v9 = [HKAxisLabelStyle labelStyleWithColor:v7 font:v8 horizontalAlignment:2 verticalAlignment:2];
  [(HKAxisStyle *)v6 setLabelStyle:v9];

  [(HKAxisStyle *)v6 setTickPositions:1];
  v10 = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v11 = [HKStrokeStyle strokeStyleWithColor:v10 lineWidth:2.0];
  [(HKAxisStyle *)v6 setAxisLineStyle:v11];

  [(HKAxisStyle *)v6 setFillStyle:v4];
  [(HKAxisStyle *)v6 setFillInnerPadding:10.0];
  [(HKAxisStyle *)v6 setFillOuterPadding:15.0];
  [(HKAxisStyle *)v6 setLocation:1];
  [(HKAxisStyle *)v6 setShowGridLines:1];
  v12 = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v13 = [v12 colorWithAlphaComponent:0.5];
  v14 = [HKStrokeStyle strokeStyleWithColor:v13 lineWidth:HKUIOnePixel()];
  [(HKAxisStyle *)v6 setGridLineStyle:v14];

  v15 = objc_alloc_init(HKNumericAxisConfiguration);
  [(HKAxisConfiguration *)v15 setPreferredStyle:v6];
  if (v3)
  {
    [(HKNumericAxisConfiguration *)v15 applyOverridesFromNumericAxisConfiguration:v3];
  }

  v16 = [[HKNumericAxis alloc] initWithConfiguration:v15];

  return v16;
}

+ (id)sleepDisplayTypesWithHealthStore:(id)a3 sleepDisplayType:(id)a4 unitController:(id)a5 displayTypeController:(id)a6 chartCacheController:(id)a7 sleepChartFormatter:(id)a8 sleepSeriesType:(int64_t)a9 sleepChartCaches:(id)a10 customSleepSeries:(id)a11 isStackedChart:(BOOL)a12
{
  v31[4] = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  v24 = a11;
  v25 = v24;
  if (v24)
  {
    v30[0] = &unk_1F4383AF0;
    v30[1] = &unk_1F4383B08;
    v31[0] = v24;
    v31[1] = v24;
    v30[2] = &unk_1F4383B20;
    v30[3] = &unk_1F4383B38;
    v31[2] = v24;
    v31[3] = v24;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];
  }

  else
  {
    v26 = 0;
  }

  LOBYTE(v29) = a12;
  v27 = [HKSleepUtilities sleepDisplayTypesWithHealthStore:v17 sleepDisplayType:v18 unitController:v19 displayTypeController:v20 chartCacheController:v21 sleepChartFormatter:v22 sleepSeriesType:a9 sleepChartCaches:v23 customSleepSeriesMapping:v26 isStackedChart:v29];

  return v27;
}

+ (id)sleepDisplayTypesWithHealthStore:(id)a3 sleepDisplayType:(id)a4 unitController:(id)a5 displayTypeController:(id)a6 chartCacheController:(id)a7 sleepChartFormatter:(id)a8 sleepSeriesType:(int64_t)a9 sleepChartCaches:(id)a10 customSleepSeriesMapping:(id)a11 isStackedChart:(BOOL)a12
{
  v50[1] = *MEMORY[0x1E69E9840];
  v38 = a3;
  v18 = a4;
  v39 = a5;
  v37 = a6;
  v36 = a7;
  v35 = a8;
  v19 = a10;
  v20 = a11;
  if (a12)
  {
    v21 = +[HKOverlayContextUtilities stackedAxisConfiguration];
  }

  else
  {
    v21 = 0;
  }

  v34 = v21;
  if (v20)
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __221__HKSleepUtilities_sleepDisplayTypesWithHealthStore_sleepDisplayType_unitController_displayTypeController_chartCacheController_sleepChartFormatter_sleepSeriesType_sleepChartCaches_customSleepSeriesMapping_isStackedChart___block_invoke;
    v44[3] = &unk_1E81B89E0;
    v48 = a1;
    v49 = a9;
    v45 = v18;
    v46 = v39;
    v47 = v21;
    [v20 enumerateKeysAndObjectsUsingBlock:v44];
    v22 = v20;
  }

  else
  {
    v22 = [a1 buildSleepGraphSeriesMappingWithSleepSeriesType:a9 sleepDisplayType:v18 unitController:v39 numericAxisConfigurationOverrides:v21];
  }

  v23 = [v19 objectForKeyedSubscript:@"HKSleepChartCacheIdentifierSleepConsistency"];
  if ((a9 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v24 = [v19 objectForKeyedSubscript:@"HKSleepChartCacheIdentifierSleepStages"];

    v23 = v24;
  }

  if (!v23)
  {
    [HKSleepUtilities sleepDisplayTypesWithHealthStore:a2 sleepDisplayType:a1 unitController:? displayTypeController:? chartCacheController:? sleepChartFormatter:? sleepSeriesType:? sleepChartCaches:? customSleepSeriesMapping:? isStackedChart:?];
  }

  v25 = MEMORY[0x1E695DFD8];
  v26 = [v22 allValues];
  v27 = [v25 setWithArray:v26];

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __221__HKSleepUtilities_sleepDisplayTypesWithHealthStore_sleepDisplayType_unitController_displayTypeController_chartCacheController_sleepChartFormatter_sleepSeriesType_sleepChartCaches_customSleepSeriesMapping_isStackedChart___block_invoke_2;
  v40[3] = &unk_1E81B8A08;
  v43 = a12;
  v41 = v23;
  v42 = v18;
  v28 = v18;
  v29 = v23;
  [v27 enumerateObjectsUsingBlock:v40];
  v30 = [[HKInteractiveChartDisplayType alloc] initWithBaseDisplayType:v28 valueFormatter:v35 dataTypeCode:63 seriesForTimeScopeMapping:v22];
  v50[0] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];

  return v31;
}

void __221__HKSleepUtilities_sleepDisplayTypesWithHealthStore_sleepDisplayType_unitController_displayTypeController_chartCacheController_sleepChartFormatter_sleepSeriesType_sleepChartCaches_customSleepSeriesMapping_isStackedChart___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[4];
  v8 = a3;
  [v5 _applyModificationsToSleepSeries:v8 sleepSeriesType:v6 sleepDisplayType:v7 timeScope:objc_msgSend(a2 unitController:"intValue") numericAxisConfigurationOverrides:{a1[5], a1[6]}];
}

void __221__HKSleepUtilities_sleepDisplayTypesWithHealthStore_sleepDisplayType_unitController_displayTypeController_chartCacheController_sleepChartFormatter_sleepSeriesType_sleepChartCaches_customSleepSeriesMapping_isStackedChart___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_alloc_init(HKCacheBackedChartSeriesDataSource);
  [(HKCacheBackedChartSeriesDataSource *)v3 setChartCache:*(a1 + 32)];
  [v7 setDataSource:v3];
  if (*(a1 + 48) == 1)
  {
    v4 = [v7 yAxis];
    if (v4)
    {
      v5 = [*(a1 + 40) localization];
      v6 = [v5 shortenedDisplayName];
      [HKOverlayContextUtilities setStackedSeriesLegend:v7 title:v6];
    }
  }
}

+ (id)buildSleepGraphSeriesMappingWithSleepSeriesType:(int64_t)a3 sleepDisplayType:(id)a4 unitController:(id)a5 numericAxisConfigurationOverrides:(id)a6
{
  v31[4] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __134__HKSleepUtilities_buildSleepGraphSeriesMappingWithSleepSeriesType_sleepDisplayType_unitController_numericAxisConfigurationOverrides___block_invoke;
  v24 = &unk_1E81B8A30;
  v28 = a1;
  v29 = a3;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  v16 = _Block_copy(&v21);
  v17 = v16[2](v16, 5);
  v18 = v16[2](v16, 6);
  v30[0] = &unk_1F4383AF0;
  v30[1] = &unk_1F4383B08;
  v31[0] = v18;
  v31[1] = v17;
  v30[2] = &unk_1F4383B20;
  v30[3] = &unk_1F4383B38;
  v31[2] = v17;
  v31[3] = v17;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:{4, v21, v22, v23, v24}];

  return v19;
}

+ (id)buildSleepGraphSeriesForSleepSeriesType:(int64_t)a3 sleepDisplayType:(id)a4 unitController:(id)a5 numericAxisConfigurationOverrides:(id)a6 timeScope:(int64_t)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [a1 _sleepSeriesForType:a3 timeScope:a7];
  [a1 _applyModificationsToSleepSeries:v15 sleepSeriesType:a3 sleepDisplayType:v14 timeScope:a7 unitController:v13 numericAxisConfigurationOverrides:v12];

  return v15;
}

+ (void)_applyModificationsToSleepSeries:(id)a3 sleepSeriesType:(int64_t)a4 sleepDisplayType:(id)a5 timeScope:(int64_t)a6 unitController:(id)a7 numericAxisConfigurationOverrides:(id)a8
{
  v14 = a3;
  v15 = [a1 _sleepSeriesAxisForSleepSeries:v14 sleepSeriesType:a4 sleepDisplayType:a5 unitController:a7 numericAxisConfigurationOverrides:a8];
  [v14 setYAxis:v15];

  v16 = [HKSleepAnalysisDataSourceContext sleepAnalysisDataSourceContextWithChartType:a4 timeScope:a6];
  [v14 setSeriesDataSourceContext:v16];
}

+ (id)_sleepSeriesAxisForSleepSeries:(id)a3 sleepSeriesType:(int64_t)a4 sleepDisplayType:(id)a5 unitController:(id)a6 numericAxisConfigurationOverrides:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = [a1 _axisPurposeForSleepSeriesType:a4];
  v17 = objc_alloc_init(HKNumericAxisConfiguration);
  [(HKAxisConfiguration *)v17 setMaxLabels:8];
  v18 = [HKChartAxisDimensionFactory dimensionWithPurpose:v16 displayType:v15 unitController:v14];

  [(HKNumericAxisConfiguration *)v17 setLabelDimension:v18];
  if (v13)
  {
    [(HKNumericAxisConfiguration *)v17 applyOverridesFromNumericAxisConfiguration:v13];
  }

  if ([v12 conformsToProtocol:&unk_1F43B0B88])
  {
    [(HKAxisConfiguration *)v17 setLabelDataSource:v12];
  }

  v19 = [HKSleepUtilities verticalNumericalAxisWithConfigurationOverrides:v17];

  return v19;
}

+ (id)_findOrCreateSleepChartCacheForSleepDisplayType:(id)a3 cacheIdentifier:(id)a4 cacheController:(id)a5 dataSourceProvider:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v11 findCustomCachesForDisplayType:v9];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __119__HKSleepUtilities__findOrCreateSleepChartCacheForSleepDisplayType_cacheIdentifier_cacheController_dataSourceProvider___block_invoke;
  v19[3] = &unk_1E81B8A58;
  v14 = v10;
  v20 = v14;
  v15 = [v13 hk_firstObjectPassingTest:v19];
  if (!v15)
  {
    v15 = objc_alloc_init(HKChartCache);
    v16 = v12[2](v12);
    [(HKChartCache *)v15 setDataSource:v16];

    v17 = +[HKOutstandingFetchOperationManager sharedOperationManager];
    [(HKChartCache *)v15 setOperationManager:v17];

    [v11 addCustomChartCache:v15 forDisplayType:v9];
  }

  return v15;
}

uint64_t __119__HKSleepUtilities__findOrCreateSleepChartCacheForSleepDisplayType_cacheIdentifier_cacheController_dataSourceProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 dataSource];
    v7 = [v6 cacheIdentifier];
    v8 = [v7 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)buildSleepChartCachesWithDisplayType:(id)a3 dataSourceProvider:(id)a4 cacheController:(id)a5 healthStore:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = MEMORY[0x1E695DF90];
  v14 = a5;
  v15 = [v13 dictionary];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __104__HKSleepUtilities_buildSleepChartCachesWithDisplayType_dataSourceProvider_cacheController_healthStore___block_invoke;
  v33[3] = &unk_1E81B8A80;
  v16 = v11;
  v34 = v16;
  v17 = v12;
  v35 = v17;
  v18 = v10;
  v36 = v18;
  v19 = [a1 _findOrCreateSleepChartCacheForSleepDisplayType:v18 cacheIdentifier:@"HKSleepChartCacheIdentifierSleepConsistency" cacheController:v14 dataSourceProvider:v33];
  [v15 setObject:v19 forKeyedSubscript:@"HKSleepChartCacheIdentifierSleepConsistency"];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __104__HKSleepUtilities_buildSleepChartCachesWithDisplayType_dataSourceProvider_cacheController_healthStore___block_invoke_2;
  v29 = &unk_1E81B8A80;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = [a1 _findOrCreateSleepChartCacheForSleepDisplayType:v20 cacheIdentifier:@"HKSleepChartCacheIdentifierSleepStages" cacheController:v14 dataSourceProvider:&v26];

  [v15 setObject:v23 forKeyedSubscript:{@"HKSleepChartCacheIdentifierSleepStages", v26, v27, v28, v29}];
  v24 = [v15 copy];

  return v24;
}

+ (id)_sleepSeriesForType:(int64_t)a3 timeScope:(int64_t)a4
{
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v4 = [a1 _generateDailyTimePeriodSeriesForTimeScope:a4];
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_18;
        }

        v4 = [a1 _generateDurationSleepGoalSeriesForTimeScope:a4];
      }
    }

    else
    {
      v4 = [a1 _generateDurationSleepSeriesForTimeScope:a4];
    }
  }

  else if (a3 > 4)
  {
    if (a3 == 5)
    {
      v4 = [a1 _generateSleepStageDurationSeriesForTimeScope:a4];
    }

    else
    {
      if (a3 != 6)
      {
        goto LABEL_18;
      }

      v4 = [a1 _generateComparisonSleepSeriesForTimeScope:a4];
    }
  }

  else
  {
    if (a3 == 3)
    {
      [a1 _generateDailyTimePeriodSeriesWithSchedulesForTimeScope:a4];
    }

    else
    {
      [a1 _generateSleepStageSeriesForTimeScope:a4];
    }
    v4 = ;
  }

  a2 = v4;
LABEL_18:

  return a2;
}

+ (int64_t)_axisPurposeForSleepSeriesType:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1C3D5D538[a3 - 1];
  }
}

+ (id)_generateDailyTimePeriodSeriesForTimeScope:(int64_t)a3
{
  v28[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69DC888] hk_sleepInBedColor];
  v28[0] = v5;
  v6 = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
  v28[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];

  v8 = [MEMORY[0x1E69DC888] hk_sleepInactiveInBedColor];
  v27[0] = v8;
  v9 = [MEMORY[0x1E69DC888] hk_sleepInactiveAsleepColor];
  v27[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];

  v11 = off_1E81B2E68;
  if (a3 != 6)
  {
    v11 = off_1E81B2E70;
  }

  v12 = objc_alloc_init(*v11);
  v13 = [a1 _seriesStrokeStyle];
  [v12 setStrokeStyle:v13];

  v14 = [MEMORY[0x1E69DC888] clearColor];
  v15 = [HKStrokeStyle strokeStyleWithColor:v14 lineWidth:2.0];
  [v12 setTiledStrokeStyle:v15];

  v16 = 1.0;
  v17 = 1.0;
  if (a3 == 6)
  {
    [a1 _barCornerRadiusForCurrentDevice];
  }

  [v12 setCornerRadii:{v17, v16}];
  v18 = [a1 _fillStylesFromColors:v7];
  [v12 setDefaultFillStyles:v18];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __63__HKSleepUtilities__generateDailyTimePeriodSeriesForTimeScope___block_invoke;
  v26[3] = &__block_descriptor_40_e17__16__0__UIColor_8l;
  v26[4] = a1;
  v19 = [v7 hk_map:v26];
  v20 = [a1 _fillStylesFromColors:v19];
  [v12 setHighlightedFillStyles:v20];

  v21 = [a1 _fillStylesFromColors:v10];
  [v12 setInactiveFillStyles:v21];

  v22 = [HKNumericMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:0 axisRangeOverrides:14400.0];
  v23 = [HKValueRange valueRangeWithMinValue:&unk_1F4383B50 maxValue:&unk_1F4383B68];
  [v22 setAxisBounds:v23];

  [v12 setAxisScalingRule:v22];
  v24 = HKCalendarDateTransformPreceding6PM();
  [v12 setStartOfDayTransform:v24];

  return v12;
}

+ (id)_generateSleepStageSeriesForTimeScope:(int64_t)a3
{
  v41[5] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69DC888] hk_sleepAwakeColor];
  v41[0] = v5;
  v6 = [MEMORY[0x1E69DC888] hk_sleepAsleepREMColor];
  v41[1] = v6;
  v7 = [MEMORY[0x1E69DC888] hk_sleepAsleepCoreColor];
  v41[2] = v7;
  v8 = [MEMORY[0x1E69DC888] hk_sleepAsleepDeepColor];
  v41[3] = v8;
  v9 = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
  v41[4] = v9;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:5];

  v10 = [MEMORY[0x1E69DC888] hk_sleepInactiveAwakeColor];
  v40[0] = v10;
  v11 = [MEMORY[0x1E69DC888] hk_sleepInactiveAsleepREMColor];
  v40[1] = v11;
  v12 = [MEMORY[0x1E69DC888] hk_sleepInactiveAsleepCoreColor];
  v40[2] = v12;
  v13 = [MEMORY[0x1E69DC888] hk_sleepInactiveAsleepDeepColor];
  v40[3] = v13;
  v14 = [MEMORY[0x1E69DC888] hk_sleepInactiveAsleepColor];
  v40[4] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:5];

  if (a3 == 6)
  {
    v16 = objc_alloc_init(HKSleepStageDaySeries);
    [(HKSleepStageDaySeries *)v16 setCornerRadii:5.0, 5.0];
    v17 = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
    [(HKSleepStageDaySeries *)v16 setSleepStageLabelFont:v17];

    v18 = [MEMORY[0x1E69DC888] hk_chartLightGrayTextColor];
    [(HKSleepStageDaySeries *)v16 setSleepStageLabelColor:v18];

    v19 = [HKSleepUtilities sleepStageFillStylesWithActiveSleepStage:0];
    [(HKSleepStageDaySeries *)v16 setSleepStageFillStyles:v19];

    v20 = [a1 _gradientFillColorForSleepAnalysis:2 gradientPosition:0.2];
    v39[0] = v20;
    v21 = [a1 _gradientFillColorForSleepAnalysis:5 gradientPosition:0.35];
    v39[1] = v21;
    v22 = [a1 _gradientFillColorForSleepAnalysis:3 gradientPosition:0.66];
    v39[2] = v22;
    v23 = [a1 _gradientFillColorForSleepAnalysis:4 gradientPosition:0.85];
    v39[3] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];

    v25 = [[HKMultiGradientFillStyle alloc] initWithColors:v24];
    [(HKSleepStageDaySeries *)v16 setSleepStageBackgroundFillStyle:v25];

    v26 = objc_alloc_init(HKSolidFillStyle);
    v27 = [MEMORY[0x1E69DC888] hk_sleepInactiveInBedColor];
    [(HKSolidFillStyle *)v26 setColor:v27];

    [(HKSleepStageDaySeries *)v16 setSleepStageBackgroundInactiveFillStyle:v26];
    v28 = v38;
  }

  else
  {
    v16 = objc_alloc_init(HKSleepStageSeries);
    v29 = [a1 _seriesStrokeStyle];
    [(HKSleepStageDaySeries *)v16 setStrokeStyle:v29];

    v30 = [MEMORY[0x1E69DC888] clearColor];
    v31 = [HKStrokeStyle strokeStyleWithColor:v30 lineWidth:2.0];
    [(HKSleepStageDaySeries *)v16 setTiledStrokeStyle:v31];

    [(HKSleepStageDaySeries *)v16 setCornerRadii:1.0, 1.0];
    v28 = v38;
    v32 = [a1 _fillStylesFromColors:v38];
    [(HKSleepStageDaySeries *)v16 setDefaultFillStyles:v32];

    v33 = [a1 _fillStylesFromColors:v38];
    [(HKSleepStageDaySeries *)v16 setHighlightedFillStyles:v33];

    v34 = [a1 _fillStylesFromColors:v15];
    [(HKSleepStageDaySeries *)v16 setInactiveFillStyles:v34];

    v35 = [a1 _fillStylesFromColors:v38];
    [(HKSleepStageDaySeries *)v16 setSleepStageFillStyles:v35];

    v24 = [HKNumericMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:0 axisRangeOverrides:14400.0];
    v36 = [HKValueRange valueRangeWithMinValue:&unk_1F4383B50 maxValue:&unk_1F4383B68];
    [v24 setAxisBounds:v36];

    [(HKGraphSeries *)v16 setAxisScalingRule:v24];
    v26 = HKCalendarDateTransformPreceding6PM();
    [(HKSleepStageDaySeries *)v16 setStartOfDayTransform:v26];
  }

  return v16;
}

+ (id)_generateSleepStageDurationSeriesForTimeScope:(int64_t)a3
{
  v15[5] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69DC888] hk_sleepAwakeColor];
  v6 = [MEMORY[0x1E69DC888] hk_sleepAsleepREMColor];
  v15[1] = v6;
  v7 = [MEMORY[0x1E69DC888] hk_sleepAsleepCoreColor];
  v15[2] = v7;
  v8 = [MEMORY[0x1E69DC888] hk_sleepAsleepDeepColor];
  v15[3] = v8;
  v9 = [MEMORY[0x1E69DC888] hk_sleepInactiveInBedColor];
  v15[4] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:5];

  v11 = off_1E81B2E90;
  if (a3 != 6)
  {
    v11 = off_1E81B2E98;
  }

  v12 = objc_alloc_init(*v11);
  [v12 setCornerRadii:{1.0, 1.0}];
  v13 = [a1 _fillStylesFromColors:v10];
  [v12 setSleepStageFillStyles:v13];

  [v12 setGoalLineStrokeStyle:0];
  [v12 setGoalLineMarkerStyle:0];
  [v12 setTiledStrokeStyle:0];
  [v12 setUnselectedStrokeStyle:0];

  return v12;
}

+ (id)sleepStageFillStylesWithActiveSleepStage:(id)a3
{
  v17[6] = *MEMORY[0x1E69E9840];
  v3 = a3 == 0;
  v4 = [a3 integerValue];
  v5 = v4 == 2 || v3;
  v6 = v4 == 5 || v3;
  v7 = v4 == 3 || v3;
  v8 = v4 == 4 || v3;
  v9 = [HKSleepUtilities fillStyleForSleepCategoryValue:2 isActive:v5];
  v17[0] = v9;
  v10 = [HKSleepUtilities fillStyleForSleepCategoryValue:5 isActive:v6];
  v17[1] = v10;
  v11 = [HKSleepUtilities fillStyleForSleepCategoryValue:3 isActive:v7];
  v17[2] = v11;
  v12 = [HKSleepUtilities fillStyleForSleepCategoryValue:4 isActive:v8];
  v17[3] = v12;
  v13 = [HKSleepUtilities fillStyleForSleepCategoryValue:0 isActive:v3];
  v17[4] = v13;
  v14 = [HKSleepUtilities fillStyleForSleepCategoryValue:1 isActive:v3];
  v17[5] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:6];

  return v15;
}

+ (id)_gradientFillColorForSleepAnalysis:(int64_t)a3 gradientPosition:(double)a4
{
  v6 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v7 = [v6 accessibilityContrast] == 1;

  v8 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v9 = [v8 userInterfaceStyle] == 2;

  [HKSleepUtilities somnogramBackgroundOpacityWithIsDarkMode:v9 isHighContrast:v7 isGrayScale:0];
  v11 = v10;
  v12 = [MEMORY[0x1E69DC888] hk_sleepColorForSleepAnalysis:a3];
  v13 = [v12 colorWithAlphaComponent:v11];

  v14 = [HKMultiGradientFillColor alloc];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v16 = [(HKMultiGradientFillColor *)v14 initWithColor:v13 location:v15];

  return v16;
}

+ (CGSize)_barCornerRadiusForCurrentDevice
{
  v2 = [MEMORY[0x1E696C608] sharedBehavior];
  if ([v2 isiPad])
  {
    v3 = 3.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = v3;
  v5 = v3;
  result.height = v5;
  result.width = v4;
  return result;
}

+ (id)fillStyleForSleepCategoryValue:(int64_t)a3 isActive:(BOOL)a4
{
  v6 = objc_alloc_init(HKSolidFillStyle);
  if (a4)
  {
    [MEMORY[0x1E69DC888] hk_sleepColorForSleepAnalysis:a3];
  }

  else
  {
    [MEMORY[0x1E69DC888] hk_sleepInactiveColorForSleepAnalysis:a3];
  }
  v7 = ;
  [(HKSolidFillStyle *)v6 setColor:v7];

  return v6;
}

HKSolidFillStyle *__42__HKSleepUtilities__fillStylesFromColors___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(HKSolidFillStyle);
  [(HKSolidFillStyle *)v3 setColor:v2];

  return v3;
}

+ (double)somnogramBackgroundOpacityWithIsDarkMode:(BOOL)a3 isHighContrast:(BOOL)a4 isGrayScale:(BOOL)a5
{
  if (a5)
  {
    result = 0.35;
    goto LABEL_8;
  }

  if (!a3)
  {
    result = 0.45;
LABEL_8:
    if (!a4)
    {
      return 0.25;
    }

    return result;
  }

  result = 0.5;
  if (a4)
  {
    return 0.75;
  }

  return result;
}

+ (id)_generateDailyTimePeriodSeriesWithSchedulesForTimeScope:(int64_t)a3
{
  v5 = [a1 _generateDailyTimePeriodSeriesForTimeScope:?];
  v6 = MEMORY[0x1E695E0F0];
  [v5 setDefaultFillStyles:MEMORY[0x1E695E0F0]];
  [v5 setHighlightedFillStyles:v6];
  [v5 setInactiveFillStyles:v6];
  [v5 setStrokeStyle:0];
  [v5 setTiledStrokeStyle:0];
  v7 = [a1 _goalLineStrokeStyle];
  [v5 setGoalLineStrokeStyle:v7];

  if (a3 == 6)
  {
    [v5 setUpperGoalLineMarkerStyle:0];
    [v5 setLowerGoalLineMarkerStyle:0];
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
    v9 = [a1 _scheduleMarkerStyleWithColor:v8];
    [v5 setLowerGoalLineMarkerStyle:v9];

    v10 = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
    v11 = [a1 _scheduleMarkerStyleWithColor:v10];
    [v5 setUpperGoalLineMarkerStyle:v11];
  }

  return v5;
}

+ (id)_generateComparisonSleepSeriesForTimeScope:(int64_t)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (a3 == 6)
  {
    v4 = objc_alloc_init(HKSleepComparisonDaySeries);
    [a1 _barCornerRadiusForCurrentDevice];
    [(HKSleepComparisonDaySeries *)v4 setCornerRadii:?];
    v5 = [a1 fillStyleForSleepCategoryValue:0 isActive:1];
    v14[0] = v5;
    v6 = [a1 fillStyleForSleepCategoryValue:_HKCategoryValueSleepAnalysisDefaultAsleepValue() isActive:1];
    v14[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    [(HKSleepComparisonDaySeries *)v4 setDefaultFillStyles:v7];

    v8 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:43200.0];
    v10 = [HKValueRange valueRangeWithMinValue:v8 maxValue:v9];

    v11 = [HKNumericFixedAxisScalingRule ruleWithDefaultAxisBounds:v10 axisBoundsOverrides:0];
  }

  else
  {
    v4 = [a1 _generateDailyTimePeriodSeriesForTimeScope:?];
    v10 = [HKValueRange valueRangeWithMinValue:&unk_1F4383B50 maxValue:&unk_1F4384920];
    v11 = [HKNumericMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:0 axisRangeOverrides:3600.0];
  }

  v12 = v11;
  [v11 setNoDataAxisBounds:v10];
  [(HKGraphSeries *)v4 setAxisScalingRule:v12];

  return v4;
}

+ (id)sleepDurationNoDataRange
{
  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] hourUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];

  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] hourUnit];
  v7 = [v5 quantityWithUnit:v6 doubleValue:12.0];

  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];

  return v8;
}

+ (id)_generateDurationSleepSeriesForTimeScope:(int64_t)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = off_1E81B2E50;
  if (a3 == 6)
  {
    v3 = off_1E81B2E48;
  }

  v4 = objc_alloc_init(*v3);
  v5 = [v4 axisScalingRule];
  v6 = [v5 conformsToProtocol:&unk_1F44340C0];

  if (v6)
  {
    v7 = +[HKSleepUtilities sleepDurationNoDataRange];
    v8 = [v4 axisScalingRule];
    [v8 setNoDataAxisBounds:v7];
  }

  [v4 setGoalLineStrokeStyle:0];
  [v4 setGoalLineMarkerStyle:0];
  v9 = [MEMORY[0x1E69DC888] clearColor];
  v10 = [HKStrokeStyle strokeStyleWithColor:v9 lineWidth:3.0];
  [v4 setTiledStrokeStyle:v10];

  v11 = objc_alloc_init(HKStrokeStyle);
  v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  [(HKStrokeStyle *)v11 setStrokeColor:v12];

  [(HKStrokeStyle *)v11 setLineWidth:3.0];
  [(HKStrokeStyle *)v11 setBlendMode:22];
  [v4 setUnselectedStrokeStyle:v11];
  [v4 setCornerRadii:{1.0, 1.0}];
  v13 = objc_alloc_init(HKSolidFillStyle);
  v14 = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
  [(HKSolidFillStyle *)v13 setColor:v14];

  v15 = objc_alloc_init(HKSolidFillStyle);
  v16 = [MEMORY[0x1E69DC888] hk_sleepInBedColor];
  [(HKSolidFillStyle *)v15 setColor:v16];

  v25[0] = v13;
  v25[1] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  [v4 setDefaultFillStyles:v17];

  v18 = objc_alloc_init(HKSolidFillStyle);
  v19 = [MEMORY[0x1E69DC888] hk_sleepInactiveAsleepColor];
  [(HKSolidFillStyle *)v18 setColor:v19];

  v20 = objc_alloc_init(HKSolidFillStyle);
  v21 = [MEMORY[0x1E69DC888] hk_sleepInactiveInBedColor];
  [(HKSolidFillStyle *)v20 setColor:v21];

  v24[0] = v18;
  v24[1] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  [v4 setInactiveFillStyles:v22];

  return v4;
}

+ (id)_generateDurationSleepGoalSeriesForTimeScope:(int64_t)a3
{
  if (a3 == 6)
  {
    v4 = objc_alloc_init(HKSleepDurationDaySeries);
    v5 = [a1 _goalLineStrokeStyle];
    [(HKSleepDurationSeries *)v4 setGoalLineStrokeStyle:v5];

    [(HKBarSeries *)v4 setTiledStrokeStyle:0];
    [(HKSleepDurationSeries *)v4 setDefaultFillStyles:0];
    [(HKSleepDurationSeries *)v4 setGoalLineMarkerStyle:0];
  }

  else
  {
    v4 = objc_alloc_init(HKSleepDurationSeries);
    v6 = [a1 _goalLineStrokeStyle];
    [(HKSleepDurationSeries *)v4 setGoalLineStrokeStyle:v6];

    [(HKBarSeries *)v4 setTiledStrokeStyle:0];
    [(HKSleepDurationSeries *)v4 setDefaultFillStyles:0];
    v7 = [a1 _goalLineMarkerStyle];
    [(HKSleepDurationSeries *)v4 setGoalLineMarkerStyle:v7];
  }

  return v4;
}

+ (id)_goalLineStrokeStyle
{
  v2 = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
  v3 = [HKStrokeStyle strokeStyleWithColor:v2 lineWidth:2.0];

  [v3 setDashStyle:0];

  return v3;
}

+ (id)_scheduleMarkerStyleWithColor:(id)a3
{
  v3 = a3;
  v4 = [[HKLineSeriesPointMarkerStyle alloc] initWithColor:v3 radius:1 style:4.0];

  return v4;
}

+ (id)_goalLineMarkerStyle
{
  v2 = [HKLineSeriesPointMarkerStyle alloc];
  v3 = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
  v4 = [(HKLineSeriesPointMarkerStyle *)v2 initWithColor:v3 radius:1 style:4.0];

  return v4;
}

+ (id)_lessSaturatedColorWithColor:(id)a3
{
  v8 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0.0;
  [a3 getHue:&v8 saturation:&v7 brightness:&v6 alpha:&v5];
  v3 = [MEMORY[0x1E69DC888] colorWithHue:v8 saturation:v7 * 0.5 brightness:v6 alpha:v5];

  return v3;
}

+ (id)_seriesStrokeStyle
{
  v2 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  v3 = [HKStrokeStyle strokeStyleWithColor:v2 lineWidth:2.0];
  [v3 setBlendMode:22];

  return v3;
}

+ (void)sleepStageContextTitleForSleepValue:(void *)a1 timeScope:.cold.1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1C3942000, v1, OS_LOG_TYPE_ERROR, "%{public}@: Can't create stage context title for unsupported sleep category value", &v4, 0xCu);
}

+ (void)sleepDisplayTypesWithHealthStore:(uint64_t)a1 sleepDisplayType:(uint64_t)a2 unitController:displayTypeController:chartCacheController:sleepChartFormatter:sleepSeriesType:sleepChartCaches:customSleepSeriesMapping:isStackedChart:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepUtilities.m" lineNumber:216 description:@"Sleep chart cache should not be nil!"];
}

@end