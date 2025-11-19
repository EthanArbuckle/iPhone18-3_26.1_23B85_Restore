@interface _HKBloodGlucosePercentInRangeContext
- (_HKBloodGlucosePercentInRangeContext)initWithBaseDisplayType:(id)a3 classification:(int64_t)a4 overlayChartController:(id)a5 unitController:(id)a6 displayTypeController:(id)a7;
- (double)_fractionForClassificationFromUserInfo:(id)a3;
- (id)_buildAccessibilityIdentifier;
- (id)_buildTitleString;
- (id)_fractionRangeFromChartPoints:(id)a3;
- (id)_stringFromFractionRange:(id)a3;
- (id)_stringFromFractionRangeBound:(id)a3;
- (void)_updateContextItemFromChartPoints:(id)a3;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation _HKBloodGlucosePercentInRangeContext

- (_HKBloodGlucosePercentInRangeContext)initWithBaseDisplayType:(id)a3 classification:(int64_t)a4 overlayChartController:(id)a5 unitController:(id)a6 displayTypeController:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = _HKBloodGlucosePercentInRangeContext;
  v17 = [(_HKBloodGlucosePercentInRangeContext *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_baseDisplayType, a3);
    v18->_classification = a4;
    objc_storeStrong(&v18->_overlayChartController, a5);
    objc_storeStrong(&v18->_unitController, a6);
    objc_storeStrong(&v18->_displayTypeController, a7);
    lastUpdatedItem = v18->_lastUpdatedItem;
    v18->_lastUpdatedItem = 0;

    v20 = [MEMORY[0x1E696ADA0] hk_percentDecimalNumberFormatter];
    v21 = [v20 copy];
    percentageFormatter = v18->_percentageFormatter;
    v18->_percentageFormatter = v21;

    [(_HKBloodGlucosePercentInRangeContext *)v18 _updateContextItemFromChartPoints:MEMORY[0x1E695E0F0]];
  }

  return v18;
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v11 = a7;
  overlayChartController = self->_overlayChartController;
  baseDisplayType = self->_baseDisplayType;
  v14 = a3;
  v15 = [(HKInteractiveChartDisplayType *)baseDisplayType graphSeriesForTimeScope:a5];
  v16 = [v14 startDate];
  v17 = [v14 endDate];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __123___HKBloodGlucosePercentInRangeContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
  v19[3] = &unk_1E81B62D8;
  v19[4] = self;
  v20 = v11;
  v18 = v11;
  [(HKInteractiveChartOverlayViewController *)overlayChartController cachedDataForCustomGraphSeries:v15 timeScope:a5 resolution:a6 startDate:v16 endDate:v17 completion:v19];
}

- (void)_updateContextItemFromChartPoints:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HKDisplayTypeContextItem);
  v6 = [(_HKBloodGlucosePercentInRangeContext *)self _buildTitleString];
  [(HKDisplayTypeContextItem *)v5 setTitle:v6];

  v7 = [(_HKBloodGlucosePercentInRangeContext *)self _buildAccessibilityIdentifier];
  [(HKDisplayTypeContextItem *)v5 setAccessibilityIdentifier:v7];

  v21 = [(_HKBloodGlucosePercentInRangeContext *)self _fractionRangeFromChartPoints:v4];

  if (v21)
  {
    v8 = [(_HKBloodGlucosePercentInRangeContext *)self _stringFromFractionRange:v21];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v9 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  unitController = self->_unitController;
  v11 = [MEMORY[0x1E696C510] percentUnit];
  v12 = [(HKUnitPreferenceController *)unitController localizedDisplayNameForUnit:v11 value:0];

  v13 = MEMORY[0x1E696AEC0];
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"PERCENTAGE_QUANTITY_TYPE_DISPLAY_FORMAT %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v16 = [v13 stringWithFormat:v15, v8, v12];
  [(HKDisplayTypeContextItem *)v5 setValue:v16];

  [(HKDisplayTypeContextItem *)v5 setUnit:v12];
  [(HKDisplayTypeContextItem *)v5 setIsUnitIncludedInValue:1];
  [(HKDisplayTypeContextItem *)v5 setUseTightSpacingBetweenValueAndUnit:1];
  v17 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
  v18 = [HKUIMetricColors defaultContextViewColorsUsingColor:v17];
  [(HKDisplayTypeContextItem *)v5 setMetricColors:v18];

  v19 = +[HKUIMetricColors vitalsColors];
  [(HKDisplayTypeContextItem *)v5 setSelectedMetricColors:v19];

  lastUpdatedItem = self->_lastUpdatedItem;
  self->_lastUpdatedItem = v5;
}

- (id)_buildTitleString
{
  v3 = [(HKDisplayTypeController *)self->_displayTypeController displayTypeWithIdentifier:&unk_1F4382398];
  v4 = [(HKUnitPreferenceController *)self->_unitController unitForDisplayType:v3];
  v5 = [(HKUnitPreferenceController *)self->_unitController localizedDisplayNameForDisplayType:v3];
  v6 = 0;
  classification = self->_classification;
  if (classification > 1)
  {
    if (classification == 2)
    {
      v25 = MEMORY[0x1E696AEC0];
      v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v14 = [v8 localizedStringForKey:@"GLUCOSE_OVERLAY_PERCENT_IN_RANGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v6 = [v25 stringWithFormat:v14];
      goto LABEL_12;
    }

    if (classification != 3)
    {
      goto LABEL_13;
    }

    v8 = [MEMORY[0x1E696C350] ATTDEuglycemicRangeWithUnit:v4];
    v10 = [v8 maximum];
    [v10 doubleValueForUnit:v4];
    v12 = v11;

    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    v14 = HKFormattedStringFromValue(v13, v3, self->_unitController, 0, 0);

    v15 = MEMORY[0x1E696AEC0];
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = v16;
    v18 = @"GLUCOSE_OVERLAY_PERCENT_ABOVE_RANGE";
  }

  else
  {
    if (classification)
    {
      if (classification != 1)
      {
        goto LABEL_13;
      }

      v8 = [MEMORY[0x1E696C350] ATTDEuglycemicRangeWithUnit:v4];
      v9 = [v8 minimum];
    }

    else
    {
      v8 = [MEMORY[0x1E696C350] ATTDLevel2HypoglycemicRangeWithUnit:v4];
      v9 = [v8 maximum];
    }

    v19 = v9;
    [v9 doubleValueForUnit:v4];
    v21 = v20;

    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
    v14 = HKFormattedStringFromValue(v22, v3, self->_unitController, 0, 0);

    v15 = MEMORY[0x1E696AEC0];
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = v16;
    v18 = @"GLUCOSE_OVERLAY_PERCENT_BELOW_RANGE";
  }

  v23 = [v16 localizedStringForKey:v18 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v24 = HKFormatValueAndUnit(v14, v5);
  v6 = [v15 stringWithFormat:v23, v24];

LABEL_12:
LABEL_13:

  return v6;
}

- (id)_buildAccessibilityIdentifier
{
  classification = self->_classification;
  if (classification > 3)
  {
    v3 = @"UnknownBloodGlucoseLevel";
  }

  else
  {
    v3 = off_1E81B6340[classification];
  }

  return [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:v3];
}

- (id)_stringFromFractionRange:(id)a3
{
  v4 = a3;
  v5 = [v4 minValue];
  v6 = [(_HKBloodGlucosePercentInRangeContext *)self _stringFromFractionRangeBound:v5];

  v7 = [v4 maxValue];

  v8 = [(_HKBloodGlucosePercentInRangeContext *)self _stringFromFractionRangeBound:v7];

  if ([v6 isEqualToString:v8])
  {
    v9 = v6;
  }

  else
  {
    v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v11 = [v10 localizedStringForKey:@"OVERLAY_RANGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:v11, v6, v8];
  }

  return v9;
}

- (id)_stringFromFractionRangeBound:(id)a3
{
  v4 = a3;
  [v4 doubleValue];
  v7 = 0;
  if (v5 > 0.0)
  {
    [v4 doubleValue];
    if (v6 < 0.01)
    {
      v7 = 1;
    }
  }

  [(NSNumberFormatter *)self->_percentageFormatter setMaximumFractionDigits:v7];
  v8 = [(NSNumberFormatter *)self->_percentageFormatter stringFromNumber:v4];

  return v8;
}

- (id)_fractionRangeFromChartPoints:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 count])
  {
    v17 = 0;
    goto LABEL_21;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v6)
  {
    v17 = 0;
    goto LABEL_20;
  }

  v7 = v6;
  v8 = *v21;
  v9 = 1.79769313e308;
  v10 = 2.22507386e-308;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v20 + 1) + 8 * i);
      v13 = [v12 userInfo];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15 = [v12 userInfo];
        [(_HKBloodGlucosePercentInRangeContext *)self _fractionForClassificationFromUserInfo:v15];
        if (v16 < v9)
        {
          v9 = v16;
        }

        if (v16 > v10)
        {
          v10 = v16;
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v7);

  v17 = 0;
  if (v9 != 1.79769313e308 && v10 != 2.22507386e-308)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    v17 = [HKValueRange valueRangeWithMinValue:v5 maxValue:v18];

LABEL_20:
  }

LABEL_21:

  return v17;
}

- (double)_fractionForClassificationFromUserInfo:(id)a3
{
  v5 = a3;
  v6 = v5;
  classification = self->_classification;
  if ((classification - 2) < 2 || classification == 0)
  {
    [v5 fractionForClassification:?];
    v3 = v9;
  }

  else if (classification == 1)
  {
    [v5 fractionForClassification:?];
    v11 = v10;
    [v6 fractionForClassification:0];
    v3 = v11 + v12;
  }

  return v3;
}

@end