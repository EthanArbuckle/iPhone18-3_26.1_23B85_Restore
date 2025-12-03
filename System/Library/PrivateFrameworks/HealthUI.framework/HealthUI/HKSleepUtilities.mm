@interface HKSleepUtilities
+ (CGSize)_barCornerRadiusForCurrentDevice;
+ (double)somnogramBackgroundOpacityWithIsDarkMode:(BOOL)mode isHighContrast:(BOOL)contrast isGrayScale:(BOOL)scale;
+ (id)_findOrCreateSleepChartCacheForSleepDisplayType:(id)type cacheIdentifier:(id)identifier cacheController:(id)controller dataSourceProvider:(id)provider;
+ (id)_generateComparisonSleepSeriesForTimeScope:(int64_t)scope;
+ (id)_generateDailyTimePeriodSeriesForTimeScope:(int64_t)scope;
+ (id)_generateDailyTimePeriodSeriesWithSchedulesForTimeScope:(int64_t)scope;
+ (id)_generateDurationSleepGoalSeriesForTimeScope:(int64_t)scope;
+ (id)_generateDurationSleepSeriesForTimeScope:(int64_t)scope;
+ (id)_generateSleepStageDurationSeriesForTimeScope:(int64_t)scope;
+ (id)_generateSleepStageSeriesForTimeScope:(int64_t)scope;
+ (id)_goalLineMarkerStyle;
+ (id)_goalLineStrokeStyle;
+ (id)_gradientFillColorForSleepAnalysis:(int64_t)analysis gradientPosition:(double)position;
+ (id)_lessSaturatedColorWithColor:(id)color;
+ (id)_scheduleMarkerStyleWithColor:(id)color;
+ (id)_seriesStrokeStyle;
+ (id)_sleepSeriesAxisForSleepSeries:(id)series sleepSeriesType:(int64_t)type sleepDisplayType:(id)displayType unitController:(id)controller numericAxisConfigurationOverrides:(id)overrides;
+ (id)_sleepSeriesForType:(int64_t)type timeScope:(int64_t)scope;
+ (id)buildSleepChartCachesWithDisplayType:(id)type dataSourceProvider:(id)provider cacheController:(id)controller healthStore:(id)store;
+ (id)buildSleepGraphSeriesForSleepSeriesType:(int64_t)type sleepDisplayType:(id)displayType unitController:(id)controller numericAxisConfigurationOverrides:(id)overrides timeScope:(int64_t)scope;
+ (id)buildSleepGraphSeriesMappingWithSleepSeriesType:(int64_t)type sleepDisplayType:(id)displayType unitController:(id)controller numericAxisConfigurationOverrides:(id)overrides;
+ (id)fillStyleForSleepCategoryValue:(int64_t)value isActive:(BOOL)active;
+ (id)localizedInfographicDescriptionForCategoryValue:(int64_t)value;
+ (id)localizedInfographicTitleForCategoryValue:(int64_t)value;
+ (id)noonAlignedXValueForChartPointInfoProvider:(id)provider;
+ (id)sleepDisplayTypesWithHealthStore:(id)store sleepDisplayType:(id)type unitController:(id)controller displayTypeController:(id)typeController chartCacheController:(id)cacheController sleepChartFormatter:(id)formatter sleepSeriesType:(int64_t)seriesType sleepChartCaches:(id)self0 customSleepSeries:(id)self1 isStackedChart:(BOOL)self2;
+ (id)sleepDisplayTypesWithHealthStore:(id)store sleepDisplayType:(id)type unitController:(id)controller displayTypeController:(id)typeController chartCacheController:(id)cacheController sleepChartFormatter:(id)formatter sleepSeriesType:(int64_t)seriesType sleepChartCaches:(id)self0 customSleepSeriesMapping:(id)self1 isStackedChart:(BOOL)self2;
+ (id)sleepDurationNoDataRange;
+ (id)sleepStageContextTitleForSleepValue:(int64_t)value timeScope:(int64_t)scope;
+ (id)sleepStageFillStylesWithActiveSleepStage:(id)stage;
+ (id)standardXValueForChartPointInfoProvider:(id)provider;
+ (id)verticalNumericalAxisWithConfigurationOverrides:(id)overrides;
+ (int64_t)_axisPurposeForSleepSeriesType:(int64_t)type;
+ (void)_applyModificationsToSleepSeries:(id)series sleepSeriesType:(int64_t)type sleepDisplayType:(id)displayType timeScope:(int64_t)scope unitController:(id)controller numericAxisConfigurationOverrides:(id)overrides;
@end

@implementation HKSleepUtilities

+ (id)localizedInfographicTitleForCategoryValue:(int64_t)value
{
  v3 = &stru_1F42FFBE0;
  if (value > 3)
  {
    if (value == 4)
    {
      v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v5 = v4;
      v6 = @"ASLEEP_DEEP";
    }

    else
    {
      if (value != 5)
      {
        goto LABEL_12;
      }

      v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v5 = v4;
      v6 = @"ASLEEP_REM";
    }

    goto LABEL_10;
  }

  if (value != 2)
  {
    if (value != 3)
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

+ (id)localizedInfographicDescriptionForCategoryValue:(int64_t)value
{
  if ((value - 2) > 3)
  {
    v5 = &stru_1F42FFBE0;
  }

  else
  {
    v3 = off_1E81B8AC0[value - 2];
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
  }

  return v5;
}

+ (id)standardXValueForChartPointInfoProvider:(id)provider
{
  providerCopy = provider;
  calendar = [providerCopy calendar];
  dateInterval = [providerCopy dateInterval];

  startDate = [dateInterval startDate];
  endDate = [dateInterval endDate];
  v8 = HKDateMid();

  v9 = [v8 hk_morningIndexWithCalendar:calendar];
  v10 = [MEMORY[0x1E695DF00] hk_sleepDayStartForMorningIndex:v9 + 1 calendar:calendar];

  return v10;
}

+ (id)noonAlignedXValueForChartPointInfoProvider:(id)provider
{
  providerCopy = provider;
  calendar = [providerCopy calendar];
  v5 = [HKSleepUtilities standardXValueForChartPointInfoProvider:providerCopy];

  v6 = [calendar hk_nearestNoonBeforeDateOrEqualToDate:v5];

  return v6;
}

+ (id)sleepStageContextTitleForSleepValue:(int64_t)value timeScope:(int64_t)scope
{
  if (value > 2)
  {
    switch(value)
    {
      case 3:
        v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        if (scope == 6)
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
        if (scope == 6)
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
        if (scope == 6)
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

  if (value >= 2)
  {
    if (value != 2)
    {
      goto LABEL_23;
    }

    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    if (scope == 6)
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

+ (id)verticalNumericalAxisWithConfigurationOverrides:(id)overrides
{
  overridesCopy = overrides;
  v4 = objc_alloc_init(HKSolidFillStyle);
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(HKSolidFillStyle *)v4 setColor:systemBackgroundColor];

  v6 = objc_alloc_init(HKAxisStyle);
  hk_chartAxisLabelColor = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
  hk_chartAxisLabelFont = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
  v9 = [HKAxisLabelStyle labelStyleWithColor:hk_chartAxisLabelColor font:hk_chartAxisLabelFont horizontalAlignment:2 verticalAlignment:2];
  [(HKAxisStyle *)v6 setLabelStyle:v9];

  [(HKAxisStyle *)v6 setTickPositions:1];
  hk_chartGrayGraphColor = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v11 = [HKStrokeStyle strokeStyleWithColor:hk_chartGrayGraphColor lineWidth:2.0];
  [(HKAxisStyle *)v6 setAxisLineStyle:v11];

  [(HKAxisStyle *)v6 setFillStyle:v4];
  [(HKAxisStyle *)v6 setFillInnerPadding:10.0];
  [(HKAxisStyle *)v6 setFillOuterPadding:15.0];
  [(HKAxisStyle *)v6 setLocation:1];
  [(HKAxisStyle *)v6 setShowGridLines:1];
  hk_chartGrayGraphColor2 = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v13 = [hk_chartGrayGraphColor2 colorWithAlphaComponent:0.5];
  v14 = [HKStrokeStyle strokeStyleWithColor:v13 lineWidth:HKUIOnePixel()];
  [(HKAxisStyle *)v6 setGridLineStyle:v14];

  v15 = objc_alloc_init(HKNumericAxisConfiguration);
  [(HKAxisConfiguration *)v15 setPreferredStyle:v6];
  if (overridesCopy)
  {
    [(HKNumericAxisConfiguration *)v15 applyOverridesFromNumericAxisConfiguration:overridesCopy];
  }

  v16 = [[HKNumericAxis alloc] initWithConfiguration:v15];

  return v16;
}

+ (id)sleepDisplayTypesWithHealthStore:(id)store sleepDisplayType:(id)type unitController:(id)controller displayTypeController:(id)typeController chartCacheController:(id)cacheController sleepChartFormatter:(id)formatter sleepSeriesType:(int64_t)seriesType sleepChartCaches:(id)self0 customSleepSeries:(id)self1 isStackedChart:(BOOL)self2
{
  v31[4] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  typeCopy = type;
  controllerCopy = controller;
  typeControllerCopy = typeController;
  cacheControllerCopy = cacheController;
  formatterCopy = formatter;
  cachesCopy = caches;
  seriesCopy = series;
  v25 = seriesCopy;
  if (seriesCopy)
  {
    v30[0] = &unk_1F4383AF0;
    v30[1] = &unk_1F4383B08;
    v31[0] = seriesCopy;
    v31[1] = seriesCopy;
    v30[2] = &unk_1F4383B20;
    v30[3] = &unk_1F4383B38;
    v31[2] = seriesCopy;
    v31[3] = seriesCopy;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];
  }

  else
  {
    v26 = 0;
  }

  LOBYTE(v29) = chart;
  v27 = [HKSleepUtilities sleepDisplayTypesWithHealthStore:storeCopy sleepDisplayType:typeCopy unitController:controllerCopy displayTypeController:typeControllerCopy chartCacheController:cacheControllerCopy sleepChartFormatter:formatterCopy sleepSeriesType:seriesType sleepChartCaches:cachesCopy customSleepSeriesMapping:v26 isStackedChart:v29];

  return v27;
}

+ (id)sleepDisplayTypesWithHealthStore:(id)store sleepDisplayType:(id)type unitController:(id)controller displayTypeController:(id)typeController chartCacheController:(id)cacheController sleepChartFormatter:(id)formatter sleepSeriesType:(int64_t)seriesType sleepChartCaches:(id)self0 customSleepSeriesMapping:(id)self1 isStackedChart:(BOOL)self2
{
  v50[1] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  typeCopy = type;
  controllerCopy = controller;
  typeControllerCopy = typeController;
  cacheControllerCopy = cacheController;
  formatterCopy = formatter;
  cachesCopy = caches;
  mappingCopy = mapping;
  if (chart)
  {
    v21 = +[HKOverlayContextUtilities stackedAxisConfiguration];
  }

  else
  {
    v21 = 0;
  }

  v34 = v21;
  if (mappingCopy)
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __221__HKSleepUtilities_sleepDisplayTypesWithHealthStore_sleepDisplayType_unitController_displayTypeController_chartCacheController_sleepChartFormatter_sleepSeriesType_sleepChartCaches_customSleepSeriesMapping_isStackedChart___block_invoke;
    v44[3] = &unk_1E81B89E0;
    selfCopy = self;
    seriesTypeCopy = seriesType;
    v45 = typeCopy;
    v46 = controllerCopy;
    v47 = v21;
    [mappingCopy enumerateKeysAndObjectsUsingBlock:v44];
    v22 = mappingCopy;
  }

  else
  {
    v22 = [self buildSleepGraphSeriesMappingWithSleepSeriesType:seriesType sleepDisplayType:typeCopy unitController:controllerCopy numericAxisConfigurationOverrides:v21];
  }

  v23 = [cachesCopy objectForKeyedSubscript:@"HKSleepChartCacheIdentifierSleepConsistency"];
  if ((seriesType & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v24 = [cachesCopy objectForKeyedSubscript:@"HKSleepChartCacheIdentifierSleepStages"];

    v23 = v24;
  }

  if (!v23)
  {
    [HKSleepUtilities sleepDisplayTypesWithHealthStore:a2 sleepDisplayType:self unitController:? displayTypeController:? chartCacheController:? sleepChartFormatter:? sleepSeriesType:? sleepChartCaches:? customSleepSeriesMapping:? isStackedChart:?];
  }

  v25 = MEMORY[0x1E695DFD8];
  allValues = [v22 allValues];
  v27 = [v25 setWithArray:allValues];

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __221__HKSleepUtilities_sleepDisplayTypesWithHealthStore_sleepDisplayType_unitController_displayTypeController_chartCacheController_sleepChartFormatter_sleepSeriesType_sleepChartCaches_customSleepSeriesMapping_isStackedChart___block_invoke_2;
  v40[3] = &unk_1E81B8A08;
  chartCopy = chart;
  v41 = v23;
  v42 = typeCopy;
  v28 = typeCopy;
  v29 = v23;
  [v27 enumerateObjectsUsingBlock:v40];
  v30 = [[HKInteractiveChartDisplayType alloc] initWithBaseDisplayType:v28 valueFormatter:formatterCopy dataTypeCode:63 seriesForTimeScopeMapping:v22];
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

+ (id)buildSleepGraphSeriesMappingWithSleepSeriesType:(int64_t)type sleepDisplayType:(id)displayType unitController:(id)controller numericAxisConfigurationOverrides:(id)overrides
{
  v31[4] = *MEMORY[0x1E69E9840];
  displayTypeCopy = displayType;
  controllerCopy = controller;
  overridesCopy = overrides;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __134__HKSleepUtilities_buildSleepGraphSeriesMappingWithSleepSeriesType_sleepDisplayType_unitController_numericAxisConfigurationOverrides___block_invoke;
  v24 = &unk_1E81B8A30;
  selfCopy = self;
  typeCopy = type;
  v25 = displayTypeCopy;
  v26 = controllerCopy;
  v27 = overridesCopy;
  v13 = overridesCopy;
  v14 = controllerCopy;
  v15 = displayTypeCopy;
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

+ (id)buildSleepGraphSeriesForSleepSeriesType:(int64_t)type sleepDisplayType:(id)displayType unitController:(id)controller numericAxisConfigurationOverrides:(id)overrides timeScope:(int64_t)scope
{
  overridesCopy = overrides;
  controllerCopy = controller;
  displayTypeCopy = displayType;
  v15 = [self _sleepSeriesForType:type timeScope:scope];
  [self _applyModificationsToSleepSeries:v15 sleepSeriesType:type sleepDisplayType:displayTypeCopy timeScope:scope unitController:controllerCopy numericAxisConfigurationOverrides:overridesCopy];

  return v15;
}

+ (void)_applyModificationsToSleepSeries:(id)series sleepSeriesType:(int64_t)type sleepDisplayType:(id)displayType timeScope:(int64_t)scope unitController:(id)controller numericAxisConfigurationOverrides:(id)overrides
{
  seriesCopy = series;
  v15 = [self _sleepSeriesAxisForSleepSeries:seriesCopy sleepSeriesType:type sleepDisplayType:displayType unitController:controller numericAxisConfigurationOverrides:overrides];
  [seriesCopy setYAxis:v15];

  v16 = [HKSleepAnalysisDataSourceContext sleepAnalysisDataSourceContextWithChartType:type timeScope:scope];
  [seriesCopy setSeriesDataSourceContext:v16];
}

+ (id)_sleepSeriesAxisForSleepSeries:(id)series sleepSeriesType:(int64_t)type sleepDisplayType:(id)displayType unitController:(id)controller numericAxisConfigurationOverrides:(id)overrides
{
  seriesCopy = series;
  overridesCopy = overrides;
  controllerCopy = controller;
  displayTypeCopy = displayType;
  v16 = [self _axisPurposeForSleepSeriesType:type];
  v17 = objc_alloc_init(HKNumericAxisConfiguration);
  [(HKAxisConfiguration *)v17 setMaxLabels:8];
  v18 = [HKChartAxisDimensionFactory dimensionWithPurpose:v16 displayType:displayTypeCopy unitController:controllerCopy];

  [(HKNumericAxisConfiguration *)v17 setLabelDimension:v18];
  if (overridesCopy)
  {
    [(HKNumericAxisConfiguration *)v17 applyOverridesFromNumericAxisConfiguration:overridesCopy];
  }

  if ([seriesCopy conformsToProtocol:&unk_1F43B0B88])
  {
    [(HKAxisConfiguration *)v17 setLabelDataSource:seriesCopy];
  }

  v19 = [HKSleepUtilities verticalNumericalAxisWithConfigurationOverrides:v17];

  return v19;
}

+ (id)_findOrCreateSleepChartCacheForSleepDisplayType:(id)type cacheIdentifier:(id)identifier cacheController:(id)controller dataSourceProvider:(id)provider
{
  typeCopy = type;
  identifierCopy = identifier;
  controllerCopy = controller;
  providerCopy = provider;
  v13 = [controllerCopy findCustomCachesForDisplayType:typeCopy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __119__HKSleepUtilities__findOrCreateSleepChartCacheForSleepDisplayType_cacheIdentifier_cacheController_dataSourceProvider___block_invoke;
  v19[3] = &unk_1E81B8A58;
  v14 = identifierCopy;
  v20 = v14;
  v15 = [v13 hk_firstObjectPassingTest:v19];
  if (!v15)
  {
    v15 = objc_alloc_init(HKChartCache);
    v16 = providerCopy[2](providerCopy);
    [(HKChartCache *)v15 setDataSource:v16];

    v17 = +[HKOutstandingFetchOperationManager sharedOperationManager];
    [(HKChartCache *)v15 setOperationManager:v17];

    [controllerCopy addCustomChartCache:v15 forDisplayType:typeCopy];
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

+ (id)buildSleepChartCachesWithDisplayType:(id)type dataSourceProvider:(id)provider cacheController:(id)controller healthStore:(id)store
{
  typeCopy = type;
  providerCopy = provider;
  storeCopy = store;
  v13 = MEMORY[0x1E695DF90];
  controllerCopy = controller;
  dictionary = [v13 dictionary];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __104__HKSleepUtilities_buildSleepChartCachesWithDisplayType_dataSourceProvider_cacheController_healthStore___block_invoke;
  v33[3] = &unk_1E81B8A80;
  v16 = providerCopy;
  v34 = v16;
  v17 = storeCopy;
  v35 = v17;
  v18 = typeCopy;
  v36 = v18;
  v19 = [self _findOrCreateSleepChartCacheForSleepDisplayType:v18 cacheIdentifier:@"HKSleepChartCacheIdentifierSleepConsistency" cacheController:controllerCopy dataSourceProvider:v33];
  [dictionary setObject:v19 forKeyedSubscript:@"HKSleepChartCacheIdentifierSleepConsistency"];
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
  v23 = [self _findOrCreateSleepChartCacheForSleepDisplayType:v20 cacheIdentifier:@"HKSleepChartCacheIdentifierSleepStages" cacheController:controllerCopy dataSourceProvider:&v26];

  [dictionary setObject:v23 forKeyedSubscript:{@"HKSleepChartCacheIdentifierSleepStages", v26, v27, v28, v29}];
  v24 = [dictionary copy];

  return v24;
}

+ (id)_sleepSeriesForType:(int64_t)type timeScope:(int64_t)scope
{
  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {
        v4 = [self _generateDailyTimePeriodSeriesForTimeScope:scope];
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_18;
        }

        v4 = [self _generateDurationSleepGoalSeriesForTimeScope:scope];
      }
    }

    else
    {
      v4 = [self _generateDurationSleepSeriesForTimeScope:scope];
    }
  }

  else if (type > 4)
  {
    if (type == 5)
    {
      v4 = [self _generateSleepStageDurationSeriesForTimeScope:scope];
    }

    else
    {
      if (type != 6)
      {
        goto LABEL_18;
      }

      v4 = [self _generateComparisonSleepSeriesForTimeScope:scope];
    }
  }

  else
  {
    if (type == 3)
    {
      [self _generateDailyTimePeriodSeriesWithSchedulesForTimeScope:scope];
    }

    else
    {
      [self _generateSleepStageSeriesForTimeScope:scope];
    }
    v4 = ;
  }

  a2 = v4;
LABEL_18:

  return a2;
}

+ (int64_t)_axisPurposeForSleepSeriesType:(int64_t)type
{
  if ((type - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1C3D5D538[type - 1];
  }
}

+ (id)_generateDailyTimePeriodSeriesForTimeScope:(int64_t)scope
{
  v28[2] = *MEMORY[0x1E69E9840];
  hk_sleepInBedColor = [MEMORY[0x1E69DC888] hk_sleepInBedColor];
  v28[0] = hk_sleepInBedColor;
  hk_sleepAsleepColor = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
  v28[1] = hk_sleepAsleepColor;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];

  hk_sleepInactiveInBedColor = [MEMORY[0x1E69DC888] hk_sleepInactiveInBedColor];
  v27[0] = hk_sleepInactiveInBedColor;
  hk_sleepInactiveAsleepColor = [MEMORY[0x1E69DC888] hk_sleepInactiveAsleepColor];
  v27[1] = hk_sleepInactiveAsleepColor;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];

  v11 = off_1E81B2E68;
  if (scope != 6)
  {
    v11 = off_1E81B2E70;
  }

  v12 = objc_alloc_init(*v11);
  _seriesStrokeStyle = [self _seriesStrokeStyle];
  [v12 setStrokeStyle:_seriesStrokeStyle];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v15 = [HKStrokeStyle strokeStyleWithColor:clearColor lineWidth:2.0];
  [v12 setTiledStrokeStyle:v15];

  v16 = 1.0;
  v17 = 1.0;
  if (scope == 6)
  {
    [self _barCornerRadiusForCurrentDevice];
  }

  [v12 setCornerRadii:{v17, v16}];
  v18 = [self _fillStylesFromColors:v7];
  [v12 setDefaultFillStyles:v18];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __63__HKSleepUtilities__generateDailyTimePeriodSeriesForTimeScope___block_invoke;
  v26[3] = &__block_descriptor_40_e17__16__0__UIColor_8l;
  v26[4] = self;
  v19 = [v7 hk_map:v26];
  v20 = [self _fillStylesFromColors:v19];
  [v12 setHighlightedFillStyles:v20];

  v21 = [self _fillStylesFromColors:v10];
  [v12 setInactiveFillStyles:v21];

  v22 = [HKNumericMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:0 axisRangeOverrides:14400.0];
  v23 = [HKValueRange valueRangeWithMinValue:&unk_1F4383B50 maxValue:&unk_1F4383B68];
  [v22 setAxisBounds:v23];

  [v12 setAxisScalingRule:v22];
  v24 = HKCalendarDateTransformPreceding6PM();
  [v12 setStartOfDayTransform:v24];

  return v12;
}

+ (id)_generateSleepStageSeriesForTimeScope:(int64_t)scope
{
  v41[5] = *MEMORY[0x1E69E9840];
  hk_sleepAwakeColor = [MEMORY[0x1E69DC888] hk_sleepAwakeColor];
  v41[0] = hk_sleepAwakeColor;
  hk_sleepAsleepREMColor = [MEMORY[0x1E69DC888] hk_sleepAsleepREMColor];
  v41[1] = hk_sleepAsleepREMColor;
  hk_sleepAsleepCoreColor = [MEMORY[0x1E69DC888] hk_sleepAsleepCoreColor];
  v41[2] = hk_sleepAsleepCoreColor;
  hk_sleepAsleepDeepColor = [MEMORY[0x1E69DC888] hk_sleepAsleepDeepColor];
  v41[3] = hk_sleepAsleepDeepColor;
  hk_sleepAsleepColor = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
  v41[4] = hk_sleepAsleepColor;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:5];

  hk_sleepInactiveAwakeColor = [MEMORY[0x1E69DC888] hk_sleepInactiveAwakeColor];
  v40[0] = hk_sleepInactiveAwakeColor;
  hk_sleepInactiveAsleepREMColor = [MEMORY[0x1E69DC888] hk_sleepInactiveAsleepREMColor];
  v40[1] = hk_sleepInactiveAsleepREMColor;
  hk_sleepInactiveAsleepCoreColor = [MEMORY[0x1E69DC888] hk_sleepInactiveAsleepCoreColor];
  v40[2] = hk_sleepInactiveAsleepCoreColor;
  hk_sleepInactiveAsleepDeepColor = [MEMORY[0x1E69DC888] hk_sleepInactiveAsleepDeepColor];
  v40[3] = hk_sleepInactiveAsleepDeepColor;
  hk_sleepInactiveAsleepColor = [MEMORY[0x1E69DC888] hk_sleepInactiveAsleepColor];
  v40[4] = hk_sleepInactiveAsleepColor;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:5];

  if (scope == 6)
  {
    v16 = objc_alloc_init(HKSleepStageDaySeries);
    [(HKSleepStageDaySeries *)v16 setCornerRadii:5.0, 5.0];
    hk_chartAxisLabelFont = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
    [(HKSleepStageDaySeries *)v16 setSleepStageLabelFont:hk_chartAxisLabelFont];

    hk_chartLightGrayTextColor = [MEMORY[0x1E69DC888] hk_chartLightGrayTextColor];
    [(HKSleepStageDaySeries *)v16 setSleepStageLabelColor:hk_chartLightGrayTextColor];

    v19 = [HKSleepUtilities sleepStageFillStylesWithActiveSleepStage:0];
    [(HKSleepStageDaySeries *)v16 setSleepStageFillStyles:v19];

    v20 = [self _gradientFillColorForSleepAnalysis:2 gradientPosition:0.2];
    v39[0] = v20;
    v21 = [self _gradientFillColorForSleepAnalysis:5 gradientPosition:0.35];
    v39[1] = v21;
    v22 = [self _gradientFillColorForSleepAnalysis:3 gradientPosition:0.66];
    v39[2] = v22;
    v23 = [self _gradientFillColorForSleepAnalysis:4 gradientPosition:0.85];
    v39[3] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];

    v25 = [[HKMultiGradientFillStyle alloc] initWithColors:v24];
    [(HKSleepStageDaySeries *)v16 setSleepStageBackgroundFillStyle:v25];

    v26 = objc_alloc_init(HKSolidFillStyle);
    hk_sleepInactiveInBedColor = [MEMORY[0x1E69DC888] hk_sleepInactiveInBedColor];
    [(HKSolidFillStyle *)v26 setColor:hk_sleepInactiveInBedColor];

    [(HKSleepStageDaySeries *)v16 setSleepStageBackgroundInactiveFillStyle:v26];
    v28 = v38;
  }

  else
  {
    v16 = objc_alloc_init(HKSleepStageSeries);
    _seriesStrokeStyle = [self _seriesStrokeStyle];
    [(HKSleepStageDaySeries *)v16 setStrokeStyle:_seriesStrokeStyle];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v31 = [HKStrokeStyle strokeStyleWithColor:clearColor lineWidth:2.0];
    [(HKSleepStageDaySeries *)v16 setTiledStrokeStyle:v31];

    [(HKSleepStageDaySeries *)v16 setCornerRadii:1.0, 1.0];
    v28 = v38;
    v32 = [self _fillStylesFromColors:v38];
    [(HKSleepStageDaySeries *)v16 setDefaultFillStyles:v32];

    v33 = [self _fillStylesFromColors:v38];
    [(HKSleepStageDaySeries *)v16 setHighlightedFillStyles:v33];

    v34 = [self _fillStylesFromColors:v15];
    [(HKSleepStageDaySeries *)v16 setInactiveFillStyles:v34];

    v35 = [self _fillStylesFromColors:v38];
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

+ (id)_generateSleepStageDurationSeriesForTimeScope:(int64_t)scope
{
  v15[5] = *MEMORY[0x1E69E9840];
  hk_sleepAwakeColor = [MEMORY[0x1E69DC888] hk_sleepAwakeColor];
  hk_sleepAsleepREMColor = [MEMORY[0x1E69DC888] hk_sleepAsleepREMColor];
  v15[1] = hk_sleepAsleepREMColor;
  hk_sleepAsleepCoreColor = [MEMORY[0x1E69DC888] hk_sleepAsleepCoreColor];
  v15[2] = hk_sleepAsleepCoreColor;
  hk_sleepAsleepDeepColor = [MEMORY[0x1E69DC888] hk_sleepAsleepDeepColor];
  v15[3] = hk_sleepAsleepDeepColor;
  hk_sleepInactiveInBedColor = [MEMORY[0x1E69DC888] hk_sleepInactiveInBedColor];
  v15[4] = hk_sleepInactiveInBedColor;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:5];

  v11 = off_1E81B2E90;
  if (scope != 6)
  {
    v11 = off_1E81B2E98;
  }

  v12 = objc_alloc_init(*v11);
  [v12 setCornerRadii:{1.0, 1.0}];
  v13 = [self _fillStylesFromColors:v10];
  [v12 setSleepStageFillStyles:v13];

  [v12 setGoalLineStrokeStyle:0];
  [v12 setGoalLineMarkerStyle:0];
  [v12 setTiledStrokeStyle:0];
  [v12 setUnselectedStrokeStyle:0];

  return v12;
}

+ (id)sleepStageFillStylesWithActiveSleepStage:(id)stage
{
  v17[6] = *MEMORY[0x1E69E9840];
  v3 = stage == 0;
  integerValue = [stage integerValue];
  v5 = integerValue == 2 || v3;
  v6 = integerValue == 5 || v3;
  v7 = integerValue == 3 || v3;
  v8 = integerValue == 4 || v3;
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

+ (id)_gradientFillColorForSleepAnalysis:(int64_t)analysis gradientPosition:(double)position
{
  currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v7 = [currentTraitCollection accessibilityContrast] == 1;

  currentTraitCollection2 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v9 = [currentTraitCollection2 userInterfaceStyle] == 2;

  [HKSleepUtilities somnogramBackgroundOpacityWithIsDarkMode:v9 isHighContrast:v7 isGrayScale:0];
  v11 = v10;
  v12 = [MEMORY[0x1E69DC888] hk_sleepColorForSleepAnalysis:analysis];
  v13 = [v12 colorWithAlphaComponent:v11];

  v14 = [HKMultiGradientFillColor alloc];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:position];
  v16 = [(HKMultiGradientFillColor *)v14 initWithColor:v13 location:v15];

  return v16;
}

+ (CGSize)_barCornerRadiusForCurrentDevice
{
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  if ([mEMORY[0x1E696C608] isiPad])
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

+ (id)fillStyleForSleepCategoryValue:(int64_t)value isActive:(BOOL)active
{
  v6 = objc_alloc_init(HKSolidFillStyle);
  if (active)
  {
    [MEMORY[0x1E69DC888] hk_sleepColorForSleepAnalysis:value];
  }

  else
  {
    [MEMORY[0x1E69DC888] hk_sleepInactiveColorForSleepAnalysis:value];
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

+ (double)somnogramBackgroundOpacityWithIsDarkMode:(BOOL)mode isHighContrast:(BOOL)contrast isGrayScale:(BOOL)scale
{
  if (scale)
  {
    result = 0.35;
    goto LABEL_8;
  }

  if (!mode)
  {
    result = 0.45;
LABEL_8:
    if (!contrast)
    {
      return 0.25;
    }

    return result;
  }

  result = 0.5;
  if (contrast)
  {
    return 0.75;
  }

  return result;
}

+ (id)_generateDailyTimePeriodSeriesWithSchedulesForTimeScope:(int64_t)scope
{
  v5 = [self _generateDailyTimePeriodSeriesForTimeScope:?];
  v6 = MEMORY[0x1E695E0F0];
  [v5 setDefaultFillStyles:MEMORY[0x1E695E0F0]];
  [v5 setHighlightedFillStyles:v6];
  [v5 setInactiveFillStyles:v6];
  [v5 setStrokeStyle:0];
  [v5 setTiledStrokeStyle:0];
  _goalLineStrokeStyle = [self _goalLineStrokeStyle];
  [v5 setGoalLineStrokeStyle:_goalLineStrokeStyle];

  if (scope == 6)
  {
    [v5 setUpperGoalLineMarkerStyle:0];
    [v5 setLowerGoalLineMarkerStyle:0];
  }

  else
  {
    hk_sleepAsleepColor = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
    v9 = [self _scheduleMarkerStyleWithColor:hk_sleepAsleepColor];
    [v5 setLowerGoalLineMarkerStyle:v9];

    hk_sleepAsleepColor2 = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
    v11 = [self _scheduleMarkerStyleWithColor:hk_sleepAsleepColor2];
    [v5 setUpperGoalLineMarkerStyle:v11];
  }

  return v5;
}

+ (id)_generateComparisonSleepSeriesForTimeScope:(int64_t)scope
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (scope == 6)
  {
    v4 = objc_alloc_init(HKSleepComparisonDaySeries);
    [self _barCornerRadiusForCurrentDevice];
    [(HKSleepComparisonDaySeries *)v4 setCornerRadii:?];
    v5 = [self fillStyleForSleepCategoryValue:0 isActive:1];
    v14[0] = v5;
    v6 = [self fillStyleForSleepCategoryValue:_HKCategoryValueSleepAnalysisDefaultAsleepValue() isActive:1];
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
    v4 = [self _generateDailyTimePeriodSeriesForTimeScope:?];
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
  hourUnit = [MEMORY[0x1E696C510] hourUnit];
  v4 = [v2 quantityWithUnit:hourUnit doubleValue:0.0];

  v5 = MEMORY[0x1E696C348];
  hourUnit2 = [MEMORY[0x1E696C510] hourUnit];
  v7 = [v5 quantityWithUnit:hourUnit2 doubleValue:12.0];

  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];

  return v8;
}

+ (id)_generateDurationSleepSeriesForTimeScope:(int64_t)scope
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = off_1E81B2E50;
  if (scope == 6)
  {
    v3 = off_1E81B2E48;
  }

  v4 = objc_alloc_init(*v3);
  axisScalingRule = [v4 axisScalingRule];
  v6 = [axisScalingRule conformsToProtocol:&unk_1F44340C0];

  if (v6)
  {
    v7 = +[HKSleepUtilities sleepDurationNoDataRange];
    axisScalingRule2 = [v4 axisScalingRule];
    [axisScalingRule2 setNoDataAxisBounds:v7];
  }

  [v4 setGoalLineStrokeStyle:0];
  [v4 setGoalLineMarkerStyle:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v10 = [HKStrokeStyle strokeStyleWithColor:clearColor lineWidth:3.0];
  [v4 setTiledStrokeStyle:v10];

  v11 = objc_alloc_init(HKStrokeStyle);
  v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  [(HKStrokeStyle *)v11 setStrokeColor:v12];

  [(HKStrokeStyle *)v11 setLineWidth:3.0];
  [(HKStrokeStyle *)v11 setBlendMode:22];
  [v4 setUnselectedStrokeStyle:v11];
  [v4 setCornerRadii:{1.0, 1.0}];
  v13 = objc_alloc_init(HKSolidFillStyle);
  hk_sleepAsleepColor = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
  [(HKSolidFillStyle *)v13 setColor:hk_sleepAsleepColor];

  v15 = objc_alloc_init(HKSolidFillStyle);
  hk_sleepInBedColor = [MEMORY[0x1E69DC888] hk_sleepInBedColor];
  [(HKSolidFillStyle *)v15 setColor:hk_sleepInBedColor];

  v25[0] = v13;
  v25[1] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  [v4 setDefaultFillStyles:v17];

  v18 = objc_alloc_init(HKSolidFillStyle);
  hk_sleepInactiveAsleepColor = [MEMORY[0x1E69DC888] hk_sleepInactiveAsleepColor];
  [(HKSolidFillStyle *)v18 setColor:hk_sleepInactiveAsleepColor];

  v20 = objc_alloc_init(HKSolidFillStyle);
  hk_sleepInactiveInBedColor = [MEMORY[0x1E69DC888] hk_sleepInactiveInBedColor];
  [(HKSolidFillStyle *)v20 setColor:hk_sleepInactiveInBedColor];

  v24[0] = v18;
  v24[1] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  [v4 setInactiveFillStyles:v22];

  return v4;
}

+ (id)_generateDurationSleepGoalSeriesForTimeScope:(int64_t)scope
{
  if (scope == 6)
  {
    v4 = objc_alloc_init(HKSleepDurationDaySeries);
    _goalLineStrokeStyle = [self _goalLineStrokeStyle];
    [(HKSleepDurationSeries *)v4 setGoalLineStrokeStyle:_goalLineStrokeStyle];

    [(HKBarSeries *)v4 setTiledStrokeStyle:0];
    [(HKSleepDurationSeries *)v4 setDefaultFillStyles:0];
    [(HKSleepDurationSeries *)v4 setGoalLineMarkerStyle:0];
  }

  else
  {
    v4 = objc_alloc_init(HKSleepDurationSeries);
    _goalLineStrokeStyle2 = [self _goalLineStrokeStyle];
    [(HKSleepDurationSeries *)v4 setGoalLineStrokeStyle:_goalLineStrokeStyle2];

    [(HKBarSeries *)v4 setTiledStrokeStyle:0];
    [(HKSleepDurationSeries *)v4 setDefaultFillStyles:0];
    _goalLineMarkerStyle = [self _goalLineMarkerStyle];
    [(HKSleepDurationSeries *)v4 setGoalLineMarkerStyle:_goalLineMarkerStyle];
  }

  return v4;
}

+ (id)_goalLineStrokeStyle
{
  hk_sleepAsleepColor = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
  v3 = [HKStrokeStyle strokeStyleWithColor:hk_sleepAsleepColor lineWidth:2.0];

  [v3 setDashStyle:0];

  return v3;
}

+ (id)_scheduleMarkerStyleWithColor:(id)color
{
  colorCopy = color;
  v4 = [[HKLineSeriesPointMarkerStyle alloc] initWithColor:colorCopy radius:1 style:4.0];

  return v4;
}

+ (id)_goalLineMarkerStyle
{
  v2 = [HKLineSeriesPointMarkerStyle alloc];
  hk_sleepAsleepColor = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
  v4 = [(HKLineSeriesPointMarkerStyle *)v2 initWithColor:hk_sleepAsleepColor radius:1 style:4.0];

  return v4;
}

+ (id)_lessSaturatedColorWithColor:(id)color
{
  v8 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0.0;
  [color getHue:&v8 saturation:&v7 brightness:&v6 alpha:&v5];
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