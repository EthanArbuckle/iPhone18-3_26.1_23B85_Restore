@interface HKSleepApneaUtilities
+ (id)averageBreathingDisturbancesForChartData:(id)a3;
+ (id)localizedTitleForBreathingDisturbances:(id)a3;
+ (id)localizedTitleForBreathingDisturbancesClassification:(int64_t)a3;
+ (id)mostFrequentBreathingDisturbancesClassificationForChartData:(id)a3;
@end

@implementation HKSleepApneaUtilities

+ (id)localizedTitleForBreathingDisturbancesClassification:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = @"SLEEP_BREATHING_DISTURBANCES_CLASSIFICATION_ELEVATED";
  }

  else
  {
    v4 = @"SLEEP_BREATHING_DISTURBANCES_CLASSIFICATION_NOT_ELEVATED";
  }

  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v5 localizedStringForKey:v4 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Nebula"];

LABEL_6:

  return v3;
}

+ (id)localizedTitleForBreathingDisturbances:(id)a3
{
  v4 = HKAppleSleepingBreathingDisturbancesClassificationForQuantity();
  v5 = [a1 localizedTitleForBreathingDisturbancesClassification:{objc_msgSend(v4, "integerValue")}];

  return v5;
}

+ (id)averageBreathingDisturbancesForChartData:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v19;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          [v11 value];
          v9 = v9 + v12 * [v11 recordCount];
          v7 += [v11 recordCount];
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
      v13 = v7;
    }

    else
    {
      v9 = 0.0;
      v13 = 0.0;
    }

    v15 = MEMORY[0x1E696C348];
    v16 = [MEMORY[0x1E696C510] countUnit];
    v14 = [v15 quantityWithUnit:v16 doubleValue:v9 / v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)mostFrequentBreathingDisturbancesClassificationForChartData:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__HKSleepApneaUtilities_mostFrequentBreathingDisturbancesClassificationForChartData___block_invoke;
    aBlock[3] = &unk_1E81B5DA8;
    v9 = v3;
    v4 = _Block_copy(aBlock);
    v5 = v4[2](v4, 0);
    if (v4[2](v4, 1) >= v5)
    {
      v6 = &unk_1F43821B8;
    }

    else
    {
      v6 = &unk_1F43821D0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __85__HKSleepApneaUtilities_mostFrequentBreathingDisturbancesClassificationForChartData___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__HKSleepApneaUtilities_mostFrequentBreathingDisturbancesClassificationForChartData___block_invoke_2;
  v6[3] = &__block_descriptor_40_e43_B16__0__HKInteractiveChartSinglePointData_8l;
  v6[4] = a2;
  v3 = [v2 hk_filter:v6];
  v4 = [v3 count];

  return v4;
}

uint64_t __85__HKSleepApneaUtilities_mostFrequentBreathingDisturbancesClassificationForChartData___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696C348];
  v4 = MEMORY[0x1E696C510];
  v5 = a2;
  v6 = [v4 countUnit];
  [v5 value];
  v8 = v7;

  v9 = [v3 quantityWithUnit:v6 doubleValue:v8];

  v10 = HKAppleSleepingBreathingDisturbancesClassificationForQuantity();
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v12 = [v10 isEqual:v11];

  return v12;
}

@end