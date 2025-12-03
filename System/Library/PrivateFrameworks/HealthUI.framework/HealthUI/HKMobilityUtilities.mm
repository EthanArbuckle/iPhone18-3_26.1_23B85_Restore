@interface HKMobilityUtilities
+ (BOOL)_valueRangeMin:(double *)min max:(double *)max forChartData:(id)data;
+ (BOOL)chartDataSpansMultipleClassifications:(id)classifications;
+ (id)_localizedStringForClassification:(int64_t)classification narrow:(BOOL)narrow;
+ (id)generateAppleWalkingSteadinessDataSourceForTimeScope:(int64_t)scope displayType:(id)type healthStore:(id)store quantityType:(id)quantityType unitController:(id)controller;
+ (id)generateAppleWalkingSteadinessSeriesForTimeScope:(int64_t)scope displayType:(id)type color:(id)color;
+ (id)localizedDescriptionForClassification:(int64_t)classification;
+ (id)localizedTitleForWalkingSteadinessEventCategoryValue:(int64_t)value;
+ (int64_t)classificationForAppleWalkingSteadinessQuantity:(id)quantity;
+ (int64_t)classificationForAppleWalkingSteadinessValue:(double)value;
@end

@implementation HKMobilityUtilities

+ (int64_t)classificationForAppleWalkingSteadinessValue:(double)value
{
  v5 = MEMORY[0x1E696C348];
  percentUnit = [MEMORY[0x1E696C510] percentUnit];
  v7 = [v5 quantityWithUnit:percentUnit doubleValue:value];

  v8 = [self classificationForAppleWalkingSteadinessQuantity:v7];
  return v8;
}

+ (int64_t)classificationForAppleWalkingSteadinessQuantity:(id)quantity
{
  quantityCopy = quantity;
  errorOut = 0;
  classificationOut = 0;
  v6 = HKAppleWalkingSteadinessClassificationForQuantity(quantityCopy, &classificationOut, &errorOut);
  v7 = errorOut;
  if (!v6)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x1E696B980];
    if (os_log_type_enabled(*MEMORY[0x1E696B980], OS_LOG_TYPE_FAULT))
    {
      [(HKMobilityUtilities *)v8 classificationForAppleWalkingSteadinessQuantity:quantityCopy, v7];
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKMobilityUtilities.m" lineNumber:47 description:@"Unable to classify provided quantity or value"];
  }

  v10 = classificationOut;
  if (!classificationOut)
  {
    [(HKMobilityUtilities *)a2 classificationForAppleWalkingSteadinessQuantity:self, &classificationOut, &v14];
    v10 = v14;
  }

  return v10;
}

+ (id)localizedDescriptionForClassification:(int64_t)classification
{
  if ((classification - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E81B90D8[classification - 1];
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-WalkingSteadiness"];
  }

  return v5;
}

+ (id)_localizedStringForClassification:(int64_t)classification narrow:(BOOL)narrow
{
  narrowCopy = narrow;
  switch(classification)
  {
    case 3:
      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v6 = v5;
      v7 = @"APPLE_WALKING_STEADINESS_CLASSIFICATION_VERY_LOW";
      v8 = @"APPLE_WALKING_STEADINESS_CLASSIFICATION_NARROW_VERY_LOW";
      goto LABEL_7;
    case 2:
      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v6 = v5;
      v7 = @"APPLE_WALKING_STEADINESS_CLASSIFICATION_LOW";
      v8 = @"APPLE_WALKING_STEADINESS_CLASSIFICATION_NARROW_LOW";
      goto LABEL_7;
    case 1:
      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v6 = v5;
      v7 = @"APPLE_WALKING_STEADINESS_CLASSIFICATION_OK";
      v8 = @"APPLE_WALKING_STEADINESS_CLASSIFICATION_NARROW_OK";
LABEL_7:
      if (narrowCopy)
      {
        v9 = v8;
      }

      else
      {
        v9 = v7;
      }

      v10 = [v5 localizedStringForKey:v9 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-WalkingSteadiness"];

      goto LABEL_12;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

+ (id)localizedTitleForWalkingSteadinessEventCategoryValue:(int64_t)value
{
  if (value > 2)
  {
    if (value == 3)
    {
      v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v5 = v4;
      v6 = @"WALKING_STEADINESS_EVENT_VALUE_REPEAT_LOW";
      goto LABEL_13;
    }

    if (value == 4)
    {
      v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v5 = v4;
      v6 = @"WALKING_STEADINESS_EVENT_VALUE_REPEAT_VERY_LOW";
      goto LABEL_13;
    }
  }

  else
  {
    if (value == 1)
    {
      v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v5 = v4;
      v6 = @"WALKING_STEADINESS_EVENT_VALUE_INITIAL_LOW";
      goto LABEL_13;
    }

    if (value == 2)
    {
      v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v5 = v4;
      v6 = @"WALKING_STEADINESS_EVENT_VALUE_INITIAL_VERY_LOW";
LABEL_13:
      v8 = [v4 localizedStringForKey:v6 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-WalkingSteadiness"];

      goto LABEL_14;
    }
  }

  _HKInitializeLogging();
  v7 = *MEMORY[0x1E696B980];
  if (os_log_type_enabled(*MEMORY[0x1E696B980], OS_LOG_TYPE_FAULT))
  {
    [(HKMobilityUtilities *)value localizedTitleForWalkingSteadinessEventCategoryValue:v7];
  }

  v8 = &stru_1F42FFBE0;
LABEL_14:

  return v8;
}

+ (id)generateAppleWalkingSteadinessSeriesForTimeScope:(int64_t)scope displayType:(id)type color:(id)color
{
  typeCopy = type;
  colorCopy = color;
  v9 = [HKAppleWalkingSteadinessAxis standardAxisWithDisplayType:typeCopy];
  if (scope == 3)
  {
    v10 = [typeCopy generateScatterPlotSeriesWithColor:colorCopy];
  }

  else
  {
    if (scope <= 2)
    {
      hk_wholeNumberFormatter = [MEMORY[0x1E696ADA0] hk_wholeNumberFormatter];
      v12 = [typeCopy generateDistributionSeriesWithColor:colorCopy numberFormatter:hk_wholeNumberFormatter lineWidth:0 hasMinMaxOverlay:10.0];

      [v12 setHollowLineRatio:0.6];
      goto LABEL_7;
    }

    v10 = [[HKJulianIndexedSevenDayQuantitySeries alloc] initWithColor:colorCopy lineWidth:8.0 hollowLineRatio:0.5];
  }

  v12 = v10;
LABEL_7:
  [v12 setYAxis:v9];

  return v12;
}

+ (id)generateAppleWalkingSteadinessDataSourceForTimeScope:(int64_t)scope displayType:(id)type healthStore:(id)store quantityType:(id)quantityType unitController:(id)controller
{
  typeCopy = type;
  storeCopy = store;
  quantityTypeCopy = quantityType;
  controllerCopy = controller;
  v15 = [controllerCopy unitForDisplayType:typeCopy];
  v16 = v15;
  if (scope == 3)
  {
    v17 = [[HKQuantityTypeDataSource alloc] initWithUnitController:controllerCopy options:2 displayType:typeCopy healthStore:storeCopy];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __128__HKMobilityUtilities_generateAppleWalkingSteadinessDataSourceForTimeScope_displayType_healthStore_quantityType_unitController___block_invoke;
    v23[3] = &unk_1E81B9070;
    v24 = v16;
    [(HKQuantityTypeDataSource *)v17 setUserInfoCreationBlock:v23];
    v18 = v24;
  }

  else
  {
    if (scope <= 2)
    {
      v17 = [[HKQuantityDistributionDataSource alloc] initWithQuantityType:quantityTypeCopy unitController:controllerCopy healthStore:storeCopy contextStyle:0 predicate:0 options:1 baseDisplayType:typeCopy specificStartDate:0 specificEndDate:0 userInfoCreationBlock:&__block_literal_global_54];
      goto LABEL_7;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __128__HKMobilityUtilities_generateAppleWalkingSteadinessDataSourceForTimeScope_displayType_healthStore_quantityType_unitController___block_invoke_3;
    aBlock[3] = &unk_1E81B90B8;
    v22 = v15;
    v19 = _Block_copy(aBlock);
    v17 = [[HKJulianIndexedSevenDayQuantityDataSource alloc] initWithDisplayType:typeCopy healthStore:storeCopy quantityType:quantityTypeCopy unitController:controllerCopy intervalUserInfoCreationBlock:v19];

    v18 = v22;
  }

LABEL_7:

  return v17;
}

HKInteractiveChartAppleWalkingSteadinessData *__128__HKMobilityUtilities_generateAppleWalkingSteadinessDataSourceForTimeScope_displayType_healthStore_quantityType_unitController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(HKInteractiveChartAppleWalkingSteadinessData);
  v5 = [v3 averageQuantity];
  [v5 doubleValueForUnit:*(a1 + 32)];
  [(HKInteractiveChartSinglePointData *)v4 setValue:?];

  v6 = [v3 recordCount];
  [(HKInteractiveChartSinglePointData *)v4 setRecordCount:v6];

  return v4;
}

HKInteractiveChartAppleWalkingSteadinessData *__128__HKMobilityUtilities_generateAppleWalkingSteadinessDataSourceForTimeScope_displayType_healthStore_quantityType_unitController___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_alloc_init(HKInteractiveChartAppleWalkingSteadinessData);
  v7 = [v5 averageValue];
  [v7 doubleValueForUnit:v4];
  [(HKInteractiveChartSinglePointData *)v6 setValue:?];

  v8 = [v5 minimumValue];
  [v8 doubleValueForUnit:v4];
  [(HKInteractiveChartSinglePointData *)v6 setMinValue:?];

  v9 = [v5 maximumValue];

  [v9 doubleValueForUnit:v4];
  [(HKInteractiveChartSinglePointData *)v6 setMaxValue:?];

  [(HKInteractiveChartSinglePointData *)v6 setUnit:v4];
  [(HKInteractiveChartSinglePointData *)v6 setRepresentsRange:1];
  [(HKInteractiveChartSinglePointData *)v6 setRecordCount:1];

  return v6;
}

HKInteractiveChartAppleWalkingSteadinessData *__128__HKMobilityUtilities_generateAppleWalkingSteadinessDataSourceForTimeScope_displayType_healthStore_quantityType_unitController___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(HKInteractiveChartAppleWalkingSteadinessData);
  [v3 doubleValueForUnit:*(a1 + 32)];
  v6 = v5;

  [(HKInteractiveChartSinglePointData *)v4 setValue:v6];
  [(HKInteractiveChartSinglePointData *)v4 setRecordCount:1];

  return v4;
}

+ (BOOL)chartDataSpansMultipleClassifications:(id)classifications
{
  v7 = 0.0;
  v8 = 0.0;
  v4 = [self _valueRangeMin:&v8 max:&v7 forChartData:classifications];
  if (v4)
  {
    v5 = [self classificationForAppleWalkingSteadinessValue:v8];
    LOBYTE(v4) = v5 != [self classificationForAppleWalkingSteadinessValue:v7];
  }

  return v4;
}

+ (BOOL)_valueRangeMin:(double *)min max:(double *)max forChartData:(id)data
{
  v26 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v8 = [dataCopy count];
  if (v8)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = dataCopy;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      v13 = 1.79769313e308;
      v14 = -1.79769313e308;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if ([v16 representsRange])
          {
            [v16 minValue];
          }

          else
          {
            [v16 value];
          }

          v18 = v17;
          if ([v16 representsRange])
          {
            [v16 maxValue];
          }

          else
          {
            [v16 value];
          }

          if (v13 > v18)
          {
            v13 = v18;
          }

          if (v14 < v19)
          {
            v14 = v19;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    else
    {
      v13 = 1.79769313e308;
      v14 = -1.79769313e308;
    }

    if (min)
    {
      *min = v13;
    }

    if (max)
    {
      *max = v14;
    }
  }

  return v8 != 0;
}

+ (void)classificationForAppleWalkingSteadinessQuantity:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 debugDescription];
  v7 = [a3 localizedDescription];
  v8 = 138740227;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_fault_impl(&dword_1C3942000, v5, OS_LOG_TYPE_FAULT, "Unable to classify provided quantity or value: (%{sensitive}@) %@", &v8, 0x16u);
}

+ (void)classificationForAppleWalkingSteadinessQuantity:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"HKMobilityUtilities.m" lineNumber:48 description:@"Invalid walking steadiness classification value"];

  *a4 = *a3;
}

+ (void)localizedTitleForWalkingSteadinessEventCategoryValue:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_1C3942000, a2, OS_LOG_TYPE_FAULT, "Unable to localize walking steadiness event category value: %llu", &v2, 0xCu);
}

@end