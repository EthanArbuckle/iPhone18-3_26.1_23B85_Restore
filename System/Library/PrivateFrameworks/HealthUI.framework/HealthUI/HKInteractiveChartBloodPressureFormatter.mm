@interface HKInteractiveChartBloodPressureFormatter
- (BOOL)_higherMaximum:(id)maximum currentMaximum:(id)currentMaximum;
- (BOOL)_isRepresentedBySingleChartPoint:(id)point;
- (BOOL)_lowerMinimum:(id)minimum currentMinimum:(id)currentMinimum;
- (id)_formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
- (id)_formattedStringWithAverage:(id)average displayUnit:(BOOL)unit;
- (id)_formattedStringWithRange:(id)range displayUnit:(BOOL)unit;
- (id)_stringFromRange:(id)range numberFormatter:(id)formatter displayType:(id)type unitController:(id)controller;
- (id)formattedSelectedAverageLabelDataWithChartData:(id)data context:(int64_t)context;
@end

@implementation HKInteractiveChartBloodPressureFormatter

- (id)_formattedStringWithRange:(id)range displayUnit:(BOOL)unit
{
  unitCopy = unit;
  v39[2] = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  unitController = [(HKInteractiveChartDataFormatter *)self unitController];
  displayType = [(HKInteractiveChartDataFormatter *)self displayType];
  v9 = [unitController unitForDisplayType:displayType];

  displayType2 = [(HKInteractiveChartDataFormatter *)self displayType];
  v34 = v9;
  v11 = [displayType2 hk_numberFormatterForUnit:v9];

  displayType3 = [(HKInteractiveChartDataFormatter *)self displayType];
  unitController2 = [(HKInteractiveChartDataFormatter *)self unitController];
  v14 = [(HKInteractiveChartBloodPressureFormatter *)self _stringFromRange:rangeCopy numberFormatter:v11 displayType:displayType3 unitController:unitController2];

  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  v16 = *MEMORY[0x1E69DB648];
  v38[0] = *MEMORY[0x1E69DB648];
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  v39[0] = majorFont;
  v18 = *MEMORY[0x1E69DB650];
  v38[1] = *MEMORY[0x1E69DB650];
  hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v39[1] = hk_chartLollipopValueColor;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v21 = [v15 initWithString:v14 attributes:v20];

  unitController3 = [(HKInteractiveChartDataFormatter *)self unitController];
  displayType4 = [(HKInteractiveChartDataFormatter *)self displayType];
  v24 = HKUIUnitDisplayName(unitController3, displayType4, &unk_1F43824D0);

  if (unitCopy && [v24 length])
  {
    v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    v26 = objc_alloc(MEMORY[0x1E696AAB0]);
    v36[0] = v16;
    minorFont = [(HKInteractiveChartDataFormatter *)self minorFont];
    v36[1] = v18;
    v37[0] = minorFont;
    hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
    v37[1] = hk_chartLollipopLabelColor;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
    v30 = [v26 initWithString:v24 attributes:v29];

    v35[0] = v21;
    v35[1] = v25;
    v35[2] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
    v32 = HKUIJoinAttributedStringsForLocale(v31);
  }

  else
  {
    v32 = v21;
  }

  return v32;
}

- (BOOL)_lowerMinimum:(id)minimum currentMinimum:(id)currentMinimum
{
  minimumCopy = minimum;
  currentMinimumCopy = currentMinimum;
  v7 = currentMinimumCopy;
  if (minimumCopy)
  {
    if (currentMinimumCopy)
    {
      v8 = [minimumCopy compare:currentMinimumCopy] == -1;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_higherMaximum:(id)maximum currentMaximum:(id)currentMaximum
{
  maximumCopy = maximum;
  currentMaximumCopy = currentMaximum;
  v7 = currentMaximumCopy;
  if (maximumCopy)
  {
    if (currentMaximumCopy)
    {
      v8 = [maximumCopy compare:currentMaximumCopy] == 1;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  v59 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = dataCopy;
  if (dataCopy && [dataCopy count])
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v6;
    v52 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    v49 = v6;
    v7 = 0;
    v8 = 0;
    if (!v52)
    {
      goto LABEL_28;
    }

    v51 = *v54;
    while (1)
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v54 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v53 + 1) + 8 * i);
        systolicRange = [v10 systolicRange];
        v12 = systolicRange;
        if (v8)
        {
          minValue = [systolicRange minValue];
          minValue2 = [v8 minValue];
          v15 = [(HKInteractiveChartBloodPressureFormatter *)self _lowerMinimum:minValue currentMinimum:minValue2];

          if (v15)
          {
            systolicRange2 = [v10 systolicRange];
            minValue3 = [systolicRange2 minValue];
            [v8 setMinValue:minValue3];
          }

          systolicRange3 = [v10 systolicRange];
          maxValue = [systolicRange3 maxValue];
          maxValue2 = [v8 maxValue];
          v21 = [(HKInteractiveChartBloodPressureFormatter *)self _higherMaximum:maxValue currentMaximum:maxValue2];

          if (v21)
          {
            systolicRange4 = [v10 systolicRange];
            maxValue3 = [systolicRange4 maxValue];
            [v8 setMaxValue:maxValue3];
LABEL_15:
          }
        }

        else
        {

          if (v12)
          {
            systolicRange4 = [v10 systolicRange];
            maxValue3 = [systolicRange4 minValue];
            systolicRange5 = [v10 systolicRange];
            maxValue4 = [systolicRange5 maxValue];
            v8 = [HKValueRange valueRangeWithMinValue:maxValue3 maxValue:maxValue4];

            goto LABEL_15;
          }

          v8 = 0;
        }

        diastolicRange = [v10 diastolicRange];
        v27 = diastolicRange;
        if (v7)
        {
          minValue4 = [diastolicRange minValue];
          minValue5 = [v7 minValue];
          v30 = [(HKInteractiveChartBloodPressureFormatter *)self _lowerMinimum:minValue4 currentMinimum:minValue5];

          if (v30)
          {
            diastolicRange2 = [v10 diastolicRange];
            minValue6 = [diastolicRange2 minValue];
            [v7 setMinValue:minValue6];
          }

          diastolicRange3 = [v10 diastolicRange];
          maxValue5 = [diastolicRange3 maxValue];
          maxValue6 = [v7 maxValue];
          v36 = [(HKInteractiveChartBloodPressureFormatter *)self _higherMaximum:maxValue5 currentMaximum:maxValue6];

          if (v36)
          {
            diastolicRange4 = [v10 diastolicRange];
            maxValue7 = [diastolicRange4 maxValue];
            [v7 setMaxValue:maxValue7];
LABEL_24:

            continue;
          }
        }

        else
        {

          if (v27)
          {
            diastolicRange4 = [v10 diastolicRange];
            maxValue7 = [diastolicRange4 minValue];
            diastolicRange5 = [v10 diastolicRange];
            maxValue8 = [diastolicRange5 maxValue];
            v7 = [HKValueRange valueRangeWithMinValue:maxValue7 maxValue:maxValue8];

            goto LABEL_24;
          }

          v7 = 0;
        }
      }

      v52 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (!v52)
      {
LABEL_28:

        v41 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
        [(HKSelectedRangeData *)v41 setDataType:1];
        v42 = [(HKInteractiveChartBloodPressureFormatter *)self _formattedStringWithRange:v8 displayUnit:0];
        [(HKSelectedRangeData *)v41 setAttributedString:v42];

        maxValue9 = [v8 maxValue];
        [(HKSelectedRangeData *)v41 setValueAsNumber:maxValue9];

        v44 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
        [(HKSelectedRangeData *)v44 setDataType:2];
        v45 = [(HKInteractiveChartBloodPressureFormatter *)self _formattedStringWithRange:v7 displayUnit:1];
        [(HKSelectedRangeData *)v44 setAttributedString:v45];

        maxValue10 = [v7 maxValue];
        [(HKSelectedRangeData *)v44 setValueAsNumber:maxValue10];

        v57[0] = v41;
        v57[1] = v44;
        v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];

        v6 = v49;
        goto LABEL_30;
      }
    }
  }

  v47 = MEMORY[0x1E695E0F0];
LABEL_30:

  return v47;
}

- (id)formattedSelectedAverageLabelDataWithChartData:(id)data context:(int64_t)context
{
  v43 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v8 = dataCopy;
  if (dataCopy && [dataCopy count])
  {
    if (context)
    {
      if (context == 1)
      {
        v4 = [(HKInteractiveChartBloodPressureFormatter *)self _formattedSelectedRangeLabelDataWithChartData:v8 context:1];
      }
    }

    else
    {
      v10 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
      v11 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
      if ([v8 count] < 2)
      {
        firstObject = [v8 firstObject];
        systolicAverage = [firstObject systolicAverage];

        if (systolicAverage)
        {
          systolicAverage = [firstObject systolicAverage];
        }

        diastolicAverage = [firstObject diastolicAverage];

        if (diastolicAverage)
        {
          diastolicAverage = [firstObject diastolicAverage];
        }

        systolicRange = [firstObject systolicRange];
        v30 = [(HKInteractiveChartBloodPressureFormatter *)self _isRepresentedBySingleChartPoint:systolicRange];

        if (v30)
        {
          v31 = 1;
        }

        else
        {
          v31 = 40;
        }

        [(HKSelectedRangeData *)v10 setDataType:v31];
        diastolicRange = [firstObject diastolicRange];
        v33 = [(HKInteractiveChartBloodPressureFormatter *)self _isRepresentedBySingleChartPoint:diastolicRange];

        if (v33)
        {
          v34 = 2;
        }

        else
        {
          v34 = 41;
        }

        [(HKSelectedRangeData *)v11 setDataType:v34];
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v12 = v8;
        v13 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v38;
          v16 = 0.0;
          v17 = 0.0;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v38 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v19 = *(*(&v37 + 1) + 8 * i);
              systolicAverage2 = [v19 systolicAverage];

              if (systolicAverage2)
              {
                systolicAverage3 = [v19 systolicAverage];
                [systolicAverage3 doubleValue];
                v16 = v16 + v22;
              }

              diastolicAverage2 = [v19 diastolicAverage];

              if (diastolicAverage2)
              {
                diastolicAverage3 = [v19 diastolicAverage];
                [diastolicAverage3 doubleValue];
                v17 = v17 + v25;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
          }

          while (v14);
        }

        else
        {
          v16 = 0.0;
          v17 = 0.0;
        }

        systolicAverage = [MEMORY[0x1E696AD98] numberWithInt:{(v16 / objc_msgSend(v12, "count"))}];
        diastolicAverage = [MEMORY[0x1E696AD98] numberWithInt:{(v17 / objc_msgSend(v12, "count"))}];
        [(HKSelectedRangeData *)v10 setDataType:40];
        [(HKSelectedRangeData *)v11 setDataType:41];
      }

      v35 = [(HKInteractiveChartBloodPressureFormatter *)self _formattedStringWithAverage:systolicAverage displayUnit:0, v37];
      [(HKSelectedRangeData *)v10 setAttributedString:v35];

      [(HKSelectedRangeData *)v10 setValueAsNumber:systolicAverage];
      v36 = [(HKInteractiveChartBloodPressureFormatter *)self _formattedStringWithAverage:diastolicAverage displayUnit:1];
      [(HKSelectedRangeData *)v11 setAttributedString:v36];

      [(HKSelectedRangeData *)v11 setValueAsNumber:systolicAverage];
      v41[0] = v10;
      v41[1] = v11;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (BOOL)_isRepresentedBySingleChartPoint:(id)point
{
  pointCopy = point;
  displayType = [(HKInteractiveChartDataFormatter *)self displayType];
  presentation = [displayType presentation];
  minValue = [pointCopy minValue];
  v8 = [presentation adjustedValueForDaemonValue:minValue];

  displayType2 = [(HKInteractiveChartDataFormatter *)self displayType];
  presentation2 = [displayType2 presentation];
  maxValue = [pointCopy maxValue];

  v12 = [presentation2 adjustedValueForDaemonValue:maxValue];

  v16 = 0;
  if (v8)
  {
    if (v12)
    {
      [v8 doubleValue];
      v14 = v13;
      [v12 doubleValue];
      if (vabdd_f64(v14, v15) < 0.00000011920929)
      {
        v16 = 1;
      }
    }
  }

  return v16;
}

- (id)_formattedStringWithAverage:(id)average displayUnit:(BOOL)unit
{
  unitCopy = unit;
  v39[2] = *MEMORY[0x1E69E9840];
  averageCopy = average;
  unitController = [(HKInteractiveChartDataFormatter *)self unitController];
  displayType = [(HKInteractiveChartDataFormatter *)self displayType];
  v9 = [unitController unitForDisplayType:displayType];

  displayType2 = [(HKInteractiveChartDataFormatter *)self displayType];
  v34 = v9;
  v11 = [displayType2 hk_numberFormatterForUnit:v9];

  displayType3 = [(HKInteractiveChartDataFormatter *)self displayType];
  unitController2 = [(HKInteractiveChartDataFormatter *)self unitController];
  v14 = [v11 stringFromNumber:averageCopy displayType:displayType3 unitController:unitController2];

  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  v16 = *MEMORY[0x1E69DB648];
  v38[0] = *MEMORY[0x1E69DB648];
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  v39[0] = majorFont;
  v18 = *MEMORY[0x1E69DB650];
  v38[1] = *MEMORY[0x1E69DB650];
  hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v39[1] = hk_chartLollipopValueColor;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v21 = [v15 initWithString:v14 attributes:v20];

  unitController3 = [(HKInteractiveChartDataFormatter *)self unitController];
  displayType4 = [(HKInteractiveChartDataFormatter *)self displayType];
  v24 = HKUIUnitDisplayName(unitController3, displayType4, &unk_1F43824D0);

  if (unitCopy && [v24 length])
  {
    v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    v26 = objc_alloc(MEMORY[0x1E696AAB0]);
    v36[0] = v16;
    minorFont = [(HKInteractiveChartDataFormatter *)self minorFont];
    v36[1] = v18;
    v37[0] = minorFont;
    hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
    v37[1] = hk_chartLollipopLabelColor;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
    v30 = [v26 initWithString:v24 attributes:v29];

    v35[0] = v21;
    v35[1] = v25;
    v35[2] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
    v32 = HKUIJoinAttributedStringsForLocale(v31);
  }

  else
  {
    v32 = v21;
  }

  return v32;
}

- (id)_stringFromRange:(id)range numberFormatter:(id)formatter displayType:(id)type unitController:(id)controller
{
  rangeCopy = range;
  formatterCopy = formatter;
  typeCopy = type;
  controllerCopy = controller;
  v13 = HKLocalizedNoDataString();
  if (rangeCopy)
  {
    presentation = [typeCopy presentation];
    minValue = [rangeCopy minValue];
    v16 = [presentation adjustedValueForDaemonValue:minValue];

    presentation2 = [typeCopy presentation];
    maxValue = [rangeCopy maxValue];
    v19 = [presentation2 adjustedValueForDaemonValue:maxValue];

    if (v16)
    {
      if (v19)
      {
        [v16 doubleValue];
        v21 = v20;
        [v19 doubleValue];
        v23 = vabdd_f64(v21, v22);
        v24 = [formatterCopy stringFromNumber:v16 displayType:typeCopy unitController:controllerCopy];
        if (v23 >= 0.00000011920929)
        {
          v25 = [formatterCopy stringFromNumber:v19 displayType:typeCopy unitController:controllerCopy];
          v30 = MEMORY[0x1E696AEC0];
          v32 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v26 = [v32 localizedStringForKey:@"RANGE_STRING %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
          v31 = [v30 stringWithFormat:v26, v24, v25];

          v13 = v24;
          v24 = v31;
        }

        goto LABEL_10;
      }

      v27 = formatterCopy;
      v28 = v16;
    }

    else
    {
      if (!v19)
      {
LABEL_11:

        goto LABEL_12;
      }

      v27 = formatterCopy;
      v28 = v19;
    }

    v24 = [v27 stringFromNumber:v28 displayType:typeCopy unitController:controllerCopy];
LABEL_10:

    v13 = v24;
    goto LABEL_11;
  }

LABEL_12:

  return v13;
}

@end