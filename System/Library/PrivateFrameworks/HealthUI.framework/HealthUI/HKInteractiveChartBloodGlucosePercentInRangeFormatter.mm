@interface HKInteractiveChartBloodGlucosePercentInRangeFormatter
- (HKInteractiveChartBloodGlucosePercentInRangeFormatter)init;
- (double)_fractionForHighlightedClassificationFromDataPoint:(id)a3;
- (id)_overallFractionInEuglycemiaForChartData:(id)a3;
- (id)_rangeOfFractionInHighlightedClassificationForChartData:(id)a3;
- (id)_stringFromFraction:(id)a3;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
- (int64_t)_selectedRangeDataTypeForContext:(int64_t)a3;
@end

@implementation HKInteractiveChartBloodGlucosePercentInRangeFormatter

- (HKInteractiveChartBloodGlucosePercentInRangeFormatter)init
{
  v7.receiver = self;
  v7.super_class = HKInteractiveChartBloodGlucosePercentInRangeFormatter;
  v2 = [(HKInteractiveChartBloodGlucosePercentInRangeFormatter *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696ADA0] hk_percentDecimalNumberFormatter];
    v4 = [v3 copy];
    percentageFormatter = v2->_percentageFormatter;
    v2->_percentageFormatter = v4;
  }

  return v2;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v48[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    v10 = MEMORY[0x1E695E0F0];
    goto LABEL_14;
  }

  if (a4 != 1)
  {
    v11 = [(HKInteractiveChartBloodGlucosePercentInRangeFormatter *)self _rangeOfFractionInHighlightedClassificationForChartData:v7];
    v12 = [v11 minValue];
    v13 = [(HKInteractiveChartBloodGlucosePercentInRangeFormatter *)self _stringFromFraction:v12];

    v14 = [v11 maxValue];
    v15 = [(HKInteractiveChartBloodGlucosePercentInRangeFormatter *)self _stringFromFraction:v14];

    if ([v13 isEqualToString:v15])
    {
      v8 = [v11 minValue];
      v9 = v13;
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v18 = [v17 localizedStringForKey:@"OVERLAY_RANGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v9 = [v16 stringWithFormat:v18, v13, v15];

      v8 = 0;
    }

    if (!v9)
    {
      goto LABEL_6;
    }

LABEL_12:
    v19 = [(HKInteractiveChartDataFormatter *)self unitController];
    v20 = [MEMORY[0x1E696C510] percentUnit];
    v40 = [v19 localizedDisplayNameForUnit:v20 value:0];

    v21 = objc_alloc(MEMORY[0x1E696AAB0]);
    v41 = a4;
    v22 = v8;
    v46 = *MEMORY[0x1E69DB648];
    v23 = v46;
    v24 = [(HKInteractiveChartDataFormatter *)self majorFont];
    v48[0] = v24;
    v47 = *MEMORY[0x1E69DB650];
    v25 = v47;
    v26 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
    v48[1] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v46 count:2];
    v28 = [v21 initWithString:v9 attributes:v27];

    v29 = objc_alloc(MEMORY[0x1E696AAB0]);
    v44[0] = v23;
    v8 = v22;
    v30 = [(HKInteractiveChartDataFormatter *)self minorFont];
    v44[1] = v25;
    v45[0] = v30;
    v31 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
    v45[1] = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
    v33 = [v29 initWithString:v40 attributes:v32];

    v34 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
    [(HKSelectedRangeData *)v34 setDataType:[(HKInteractiveChartBloodGlucosePercentInRangeFormatter *)self _selectedRangeDataTypeForContext:v41]];
    v43[0] = v28;
    v43[1] = v33;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v36 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v37 = [v36 localizedStringForKey:@"PERCENTAGE_QUANTITY_TYPE_DISPLAY_FORMAT %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v38 = HKUIJoinAttributedStringsWithFormat(v35, v37);
    [(HKSelectedRangeData *)v34 setAttributedString:v38];

    [(HKSelectedRangeData *)v34 setValueAsNumber:v8];
    v42 = v34;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];

    goto LABEL_13;
  }

  v8 = [(HKInteractiveChartBloodGlucosePercentInRangeFormatter *)self _overallFractionInEuglycemiaForChartData:v7];
  if (v8)
  {
    v9 = [(HKInteractiveChartBloodGlucosePercentInRangeFormatter *)self _stringFromFraction:v8];
    if (v9)
    {
      goto LABEL_12;
    }
  }

LABEL_6:
  v10 = MEMORY[0x1E695E0F0];
LABEL_13:

LABEL_14:

  return v10;
}

- (id)_overallFractionInEuglycemiaForChartData:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v6 += [v9 countForClassification:2];
        v5 += [v9 totalCount];
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
    if (v5)
    {
      v4 = [MEMORY[0x1E696AD98] numberWithDouble:v6 / v5];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)_rangeOfFractionInHighlightedClassificationForChartData:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = 1.79769313e308;
    v9 = 2.22507386e-308;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(HKInteractiveChartBloodGlucosePercentInRangeFormatter *)self _fractionForHighlightedClassificationFromDataPoint:*(*(&v16 + 1) + 8 * i)];
        if (v11 < v8)
        {
          v8 = v11;
        }

        if (v11 > v9)
        {
          v9 = v11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1.79769313e308;
    v9 = 2.22507386e-308;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v14 = [HKValueRange valueRangeWithMinValue:v12 maxValue:v13];

  return v14;
}

- (double)_fractionForHighlightedClassificationFromDataPoint:(id)a3
{
  v5 = a3;
  v6 = v5;
  highlightedClassification = self->_highlightedClassification;
  if ((highlightedClassification - 2) < 2 || highlightedClassification == 0)
  {
    [v5 fractionForClassification:?];
    v3 = v9;
  }

  else if (highlightedClassification == 1)
  {
    [v5 fractionForClassification:?];
    v11 = v10;
    [v6 fractionForClassification:0];
    v3 = v11 + v12;
  }

  return v3;
}

- (id)_stringFromFraction:(id)a3
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

- (int64_t)_selectedRangeDataTypeForContext:(int64_t)a3
{
  if (a3 == 1)
  {
    return 22;
  }

  highlightedClassification = self->_highlightedClassification;
  v5 = highlightedClassification - 1;
  v6 = highlightedClassification + 20;
  if (v5 >= 3)
  {
    return 20;
  }

  else
  {
    return v6;
  }
}

@end