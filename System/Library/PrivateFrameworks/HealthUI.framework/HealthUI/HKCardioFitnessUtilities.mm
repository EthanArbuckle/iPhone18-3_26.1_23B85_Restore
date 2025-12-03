@interface HKCardioFitnessUtilities
+ (id)_localizationKeyForCardioFitnessLevel:(int64_t)level keyVariant:(id)variant;
+ (id)cardioFitnessInteractiveChartViewControllerWithDisplayDate:(id)date applicationItems:(id)items preferredOverlay:(int64_t)overlay analyticsDelegate:(id)delegate restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)types additionalChartOptions:(unint64_t)self0;
+ (id)cardioFitnessLevelDataForChartData:(id)data;
+ (id)cardioFitnessLookupPropertiesForChartData:(id)data;
+ (id)classificationIdentifierForIndex:(int64_t)index;
+ (id)effectiveChartPointDateWithStatisticsInterval:(id)interval startDate:(id)date endDate:(id)endDate;
+ (id)localizedStringForCardioFitnessDescription:(int64_t)description age:(int64_t)age;
+ (id)localizedStringForCardioFitnessLevel:(int64_t)level;
+ (id)localizedStringForCardioFitnessLevelName:(int64_t)name;
+ (id)localizedStringForCardioFitnessTitle:(int64_t)title;
+ (id)vo2MaxInteractiveChartViewControllerWithDisplayDate:(id)date applicationItems:(id)items restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)types additionalChartOptions:(unint64_t)options;
@end

@implementation HKCardioFitnessUtilities

+ (id)_localizationKeyForCardioFitnessLevel:(int64_t)level keyVariant:(id)variant
{
  variantCopy = variant;
  if ((level + 1) > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(__CFString *)off_1E81B77E0[level + 1] stringByReplacingOccurrencesOfString:@"%@" withString:variantCopy];
  }

  return v6;
}

+ (id)localizedStringForCardioFitnessLevel:(int64_t)level
{
  v3 = [self localizationKeyForCardioFitnessLevel:level];
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

+ (id)localizedStringForCardioFitnessTitle:(int64_t)title
{
  v3 = [self _localizationKeyForCardioFitnessLevel:title keyVariant:@"TITLE"];
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

+ (id)classificationIdentifierForIndex:(int64_t)index
{
  if ((index + 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E81B7808[index + 1];
  }
}

+ (id)localizedStringForCardioFitnessLevelName:(int64_t)name
{
  v3 = [self _localizationKeyForCardioFitnessLevel:name keyVariant:@"LEVEL_NAME"];
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

+ (id)localizedStringForCardioFitnessDescription:(int64_t)description age:(int64_t)age
{
  if (age <= 59)
  {
    v4 = @"DESCRIPTION";
  }

  else
  {
    v4 = @"DESCRIPTION_OLDER";
  }

  v5 = [self _localizationKeyForCardioFitnessLevel:description keyVariant:v4];
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

+ (id)cardioFitnessLookupPropertiesForChartData:(id)data
{
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [dataCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(dataCopy);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        [v10 value];
        v8 = v8 + v11;
        v7 = v7 + [v10 age];
      }

      v5 += v4;
      v4 = [dataCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
    if (v5)
    {
      v12 = v8 / v5;
      v13 = v7 / v5;
      lastObject = [dataCopy lastObject];
      unit = [lastObject unit];
      biologicalSex = [lastObject biologicalSex];
      v4 = objc_alloc_init(MEMORY[0x1E696BF80]);
      [v4 setBiologicalSex:biologicalSex];
      [v4 setAge:vcvtad_u64_f64(v13)];
      v17 = [MEMORY[0x1E696C348] quantityWithUnit:unit doubleValue:v12];
      [v4 setVo2MaxQuantity:v17];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)cardioFitnessLevelDataForChartData:(id)data
{
  v4 = [self cardioFitnessLookupPropertiesForChartData:data];
  v5 = v4;
  if (v4)
  {
    vo2MaxQuantity = [v4 vo2MaxQuantity];
    vo2MaxQuantity2 = [v5 vo2MaxQuantity];
    _unit = [vo2MaxQuantity2 _unit];
    [vo2MaxQuantity doubleValueForUnit:_unit];
    v10 = v9;

    v11 = [self cardioFitnessDataForVO2Max:objc_msgSend(v5 biologicalSex:"biologicalSex") age:{objc_msgSend(v5, "age"), v10}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)effectiveChartPointDateWithStatisticsInterval:(id)interval startDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  [interval hk_approximateDuration];
  if (v9 <= *MEMORY[0x1E696B510])
  {
    v10 = HKUIMidDate(dateCopy, endDateCopy);
  }

  else
  {
    v10 = endDateCopy;
  }

  v11 = v10;

  return v11;
}

+ (id)cardioFitnessInteractiveChartViewControllerWithDisplayDate:(id)date applicationItems:(id)items preferredOverlay:(int64_t)overlay analyticsDelegate:(id)delegate restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)types additionalChartOptions:(unint64_t)self0
{
  typesCopy = types;
  modelCopy = model;
  activityCopy = activity;
  delegateCopy = delegate;
  itemsCopy = items;
  dateCopy = date;
  v22 = [[HKOverlayRoomCardioFitnessViewController alloc] initWithDisplayDate:dateCopy applicationItems:itemsCopy mode:1 preferredOverlay:overlay analyticsDelegate:delegateCopy interactiveChartOptions:0 trendModel:modelCopy factorDisplayTypes:typesCopy];

  [(HKOverlayRoomViewController *)v22 setRestorationUserActivity:activityCopy];
  [(HKOverlayRoomViewController *)v22 setAdditionalChartOptions:options];

  return v22;
}

+ (id)vo2MaxInteractiveChartViewControllerWithDisplayDate:(id)date applicationItems:(id)items restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)types additionalChartOptions:(unint64_t)options
{
  v32[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  itemsCopy = items;
  activityCopy = activity;
  modelCopy = model;
  typesCopy = types;
  displayTypeController = [itemsCopy displayTypeController];
  v19 = [displayTypeController displayTypeWithIdentifier:&unk_1F43826B0];

  if (modelCopy || typesCopy && [typesCopy count])
  {
    v20 = [[HKOverlayRoomFactorAndTrendViewController alloc] initWithBaseChartDisplayType:v19 trendModel:modelCopy factorDisplayTypes:typesCopy displayDate:dateCopy applicationItems:itemsCopy mode:1 timeScopeRanges:0 initialTimeScope:8 wrappedOverlay:0 overrideFirstWeekday:-1 overrideCalendar:0 additionalChartOptions:options];
    [(HKOverlayRoomViewController *)v20 setRestorationUserActivity:activityCopy];
  }

  else
  {
    v29 = [HKInteractiveChartViewController alloc];
    v32[0] = v19;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    healthStore = [itemsCopy healthStore];
    unitController = [itemsCopy unitController];
    [itemsCopy dateCache];
    v22 = v31 = dateCopy;
    [itemsCopy chartDataCacheController];
    v23 = v28 = activityCopy;
    timeScopeController = [itemsCopy timeScopeController];
    sampleDateRangeController = [itemsCopy sampleDateRangeController];
    v20 = -[HKInteractiveChartViewController initWithDisplayTypes:healthStore:unitPreferenceController:dateCache:chartDataCacheController:selectedTimeScopeController:sampleTypeDateRangeController:initialXValue:currentCalendarOverride:options:](v29, "initWithDisplayTypes:healthStore:unitPreferenceController:dateCache:chartDataCacheController:selectedTimeScopeController:sampleTypeDateRangeController:initialXValue:currentCalendarOverride:options:", v27, healthStore, unitController, v22, v23, timeScopeController, sampleDateRangeController, v31, 0, [v19 hk_interactiveChartOptions]);

    activityCopy = v28;
    dateCopy = v31;
  }

  return v20;
}

@end