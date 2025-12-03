@interface HKInteractiveChartBloodGlucosePercentInRangeFormatter
- (HKInteractiveChartBloodGlucosePercentInRangeFormatter)init;
- (double)_fractionForHighlightedClassificationFromDataPoint:(id)point;
- (id)_overallFractionInEuglycemiaForChartData:(id)data;
- (id)_rangeOfFractionInHighlightedClassificationForChartData:(id)data;
- (id)_stringFromFraction:(id)fraction;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
- (int64_t)_selectedRangeDataTypeForContext:(int64_t)context;
@end

@implementation HKInteractiveChartBloodGlucosePercentInRangeFormatter

- (HKInteractiveChartBloodGlucosePercentInRangeFormatter)init
{
  v7.receiver = self;
  v7.super_class = HKInteractiveChartBloodGlucosePercentInRangeFormatter;
  v2 = [(HKInteractiveChartBloodGlucosePercentInRangeFormatter *)&v7 init];
  if (v2)
  {
    hk_percentDecimalNumberFormatter = [MEMORY[0x1E696ADA0] hk_percentDecimalNumberFormatter];
    v4 = [hk_percentDecimalNumberFormatter copy];
    percentageFormatter = v2->_percentageFormatter;
    v2->_percentageFormatter = v4;
  }

  return v2;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  v48[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = dataCopy;
  if (!dataCopy || ![dataCopy count])
  {
    v10 = MEMORY[0x1E695E0F0];
    goto LABEL_14;
  }

  if (context != 1)
  {
    v11 = [(HKInteractiveChartBloodGlucosePercentInRangeFormatter *)self _rangeOfFractionInHighlightedClassificationForChartData:v7];
    minValue = [v11 minValue];
    v13 = [(HKInteractiveChartBloodGlucosePercentInRangeFormatter *)self _stringFromFraction:minValue];

    maxValue = [v11 maxValue];
    v15 = [(HKInteractiveChartBloodGlucosePercentInRangeFormatter *)self _stringFromFraction:maxValue];

    if ([v13 isEqualToString:v15])
    {
      minValue2 = [v11 minValue];
      v9 = v13;
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v18 = [v17 localizedStringForKey:@"OVERLAY_RANGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v9 = [v16 stringWithFormat:v18, v13, v15];

      minValue2 = 0;
    }

    if (!v9)
    {
      goto LABEL_6;
    }

LABEL_12:
    unitController = [(HKInteractiveChartDataFormatter *)self unitController];
    percentUnit = [MEMORY[0x1E696C510] percentUnit];
    v40 = [unitController localizedDisplayNameForUnit:percentUnit value:0];

    v21 = objc_alloc(MEMORY[0x1E696AAB0]);
    contextCopy = context;
    v22 = minValue2;
    v46 = *MEMORY[0x1E69DB648];
    v23 = v46;
    majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
    v48[0] = majorFont;
    v47 = *MEMORY[0x1E69DB650];
    v25 = v47;
    hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
    v48[1] = hk_chartLollipopValueColor;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v46 count:2];
    v28 = [v21 initWithString:v9 attributes:v27];

    v29 = objc_alloc(MEMORY[0x1E696AAB0]);
    v44[0] = v23;
    minValue2 = v22;
    minorFont = [(HKInteractiveChartDataFormatter *)self minorFont];
    v44[1] = v25;
    v45[0] = minorFont;
    hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
    v45[1] = hk_chartLollipopLabelColor;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
    v33 = [v29 initWithString:v40 attributes:v32];

    v34 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
    [(HKSelectedRangeData *)v34 setDataType:[(HKInteractiveChartBloodGlucosePercentInRangeFormatter *)self _selectedRangeDataTypeForContext:contextCopy]];
    v43[0] = v28;
    v43[1] = v33;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v36 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v37 = [v36 localizedStringForKey:@"PERCENTAGE_QUANTITY_TYPE_DISPLAY_FORMAT %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v38 = HKUIJoinAttributedStringsWithFormat(v35, v37);
    [(HKSelectedRangeData *)v34 setAttributedString:v38];

    [(HKSelectedRangeData *)v34 setValueAsNumber:minValue2];
    v42 = v34;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];

    goto LABEL_13;
  }

  minValue2 = [(HKInteractiveChartBloodGlucosePercentInRangeFormatter *)self _overallFractionInEuglycemiaForChartData:v7];
  if (minValue2)
  {
    v9 = [(HKInteractiveChartBloodGlucosePercentInRangeFormatter *)self _stringFromFraction:minValue2];
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

- (id)_overallFractionInEuglycemiaForChartData:(id)data
{
  v16 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [dataCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(dataCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v6 += [v9 countForClassification:2];
        v5 += [v9 totalCount];
      }

      v4 = [dataCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)_rangeOfFractionInHighlightedClassificationForChartData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [dataCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(dataCopy);
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

      v6 = [dataCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (double)_fractionForHighlightedClassificationFromDataPoint:(id)point
{
  pointCopy = point;
  v6 = pointCopy;
  highlightedClassification = self->_highlightedClassification;
  if ((highlightedClassification - 2) < 2 || highlightedClassification == 0)
  {
    [pointCopy fractionForClassification:?];
    v3 = v9;
  }

  else if (highlightedClassification == 1)
  {
    [pointCopy fractionForClassification:?];
    v11 = v10;
    [v6 fractionForClassification:0];
    v3 = v11 + v12;
  }

  return v3;
}

- (id)_stringFromFraction:(id)fraction
{
  fractionCopy = fraction;
  [fractionCopy doubleValue];
  v7 = 0;
  if (v5 > 0.0)
  {
    [fractionCopy doubleValue];
    if (v6 < 0.01)
    {
      v7 = 1;
    }
  }

  [(NSNumberFormatter *)self->_percentageFormatter setMaximumFractionDigits:v7];
  v8 = [(NSNumberFormatter *)self->_percentageFormatter stringFromNumber:fractionCopy];

  return v8;
}

- (int64_t)_selectedRangeDataTypeForContext:(int64_t)context
{
  if (context == 1)
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