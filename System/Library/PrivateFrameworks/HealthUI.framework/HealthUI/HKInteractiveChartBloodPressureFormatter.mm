@interface HKInteractiveChartBloodPressureFormatter
- (BOOL)_higherMaximum:(id)a3 currentMaximum:(id)a4;
- (BOOL)_isRepresentedBySingleChartPoint:(id)a3;
- (BOOL)_lowerMinimum:(id)a3 currentMinimum:(id)a4;
- (id)_formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
- (id)_formattedStringWithAverage:(id)a3 displayUnit:(BOOL)a4;
- (id)_formattedStringWithRange:(id)a3 displayUnit:(BOOL)a4;
- (id)_stringFromRange:(id)a3 numberFormatter:(id)a4 displayType:(id)a5 unitController:(id)a6;
- (id)formattedSelectedAverageLabelDataWithChartData:(id)a3 context:(int64_t)a4;
@end

@implementation HKInteractiveChartBloodPressureFormatter

- (id)_formattedStringWithRange:(id)a3 displayUnit:(BOOL)a4
{
  v4 = a4;
  v39[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(HKInteractiveChartDataFormatter *)self unitController];
  v8 = [(HKInteractiveChartDataFormatter *)self displayType];
  v9 = [v7 unitForDisplayType:v8];

  v10 = [(HKInteractiveChartDataFormatter *)self displayType];
  v34 = v9;
  v11 = [v10 hk_numberFormatterForUnit:v9];

  v12 = [(HKInteractiveChartDataFormatter *)self displayType];
  v13 = [(HKInteractiveChartDataFormatter *)self unitController];
  v14 = [(HKInteractiveChartBloodPressureFormatter *)self _stringFromRange:v6 numberFormatter:v11 displayType:v12 unitController:v13];

  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  v16 = *MEMORY[0x1E69DB648];
  v38[0] = *MEMORY[0x1E69DB648];
  v17 = [(HKInteractiveChartDataFormatter *)self majorFont];
  v39[0] = v17;
  v18 = *MEMORY[0x1E69DB650];
  v38[1] = *MEMORY[0x1E69DB650];
  v19 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v39[1] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v21 = [v15 initWithString:v14 attributes:v20];

  v22 = [(HKInteractiveChartDataFormatter *)self unitController];
  v23 = [(HKInteractiveChartDataFormatter *)self displayType];
  v24 = HKUIUnitDisplayName(v22, v23, &unk_1F43824D0);

  if (v4 && [v24 length])
  {
    v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    v26 = objc_alloc(MEMORY[0x1E696AAB0]);
    v36[0] = v16;
    v27 = [(HKInteractiveChartDataFormatter *)self minorFont];
    v36[1] = v18;
    v37[0] = v27;
    v28 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
    v37[1] = v28;
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

- (BOOL)_lowerMinimum:(id)a3 currentMinimum:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v5 compare:v6] == -1;
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

- (BOOL)_higherMaximum:(id)a3 currentMaximum:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v5 compare:v6] == 1;
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

- (id)_formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
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
        v11 = [v10 systolicRange];
        v12 = v11;
        if (v8)
        {
          v13 = [v11 minValue];
          v14 = [v8 minValue];
          v15 = [(HKInteractiveChartBloodPressureFormatter *)self _lowerMinimum:v13 currentMinimum:v14];

          if (v15)
          {
            v16 = [v10 systolicRange];
            v17 = [v16 minValue];
            [v8 setMinValue:v17];
          }

          v18 = [v10 systolicRange];
          v19 = [v18 maxValue];
          v20 = [v8 maxValue];
          v21 = [(HKInteractiveChartBloodPressureFormatter *)self _higherMaximum:v19 currentMaximum:v20];

          if (v21)
          {
            v22 = [v10 systolicRange];
            v23 = [v22 maxValue];
            [v8 setMaxValue:v23];
LABEL_15:
          }
        }

        else
        {

          if (v12)
          {
            v22 = [v10 systolicRange];
            v23 = [v22 minValue];
            v24 = [v10 systolicRange];
            v25 = [v24 maxValue];
            v8 = [HKValueRange valueRangeWithMinValue:v23 maxValue:v25];

            goto LABEL_15;
          }

          v8 = 0;
        }

        v26 = [v10 diastolicRange];
        v27 = v26;
        if (v7)
        {
          v28 = [v26 minValue];
          v29 = [v7 minValue];
          v30 = [(HKInteractiveChartBloodPressureFormatter *)self _lowerMinimum:v28 currentMinimum:v29];

          if (v30)
          {
            v31 = [v10 diastolicRange];
            v32 = [v31 minValue];
            [v7 setMinValue:v32];
          }

          v33 = [v10 diastolicRange];
          v34 = [v33 maxValue];
          v35 = [v7 maxValue];
          v36 = [(HKInteractiveChartBloodPressureFormatter *)self _higherMaximum:v34 currentMaximum:v35];

          if (v36)
          {
            v37 = [v10 diastolicRange];
            v38 = [v37 maxValue];
            [v7 setMaxValue:v38];
LABEL_24:

            continue;
          }
        }

        else
        {

          if (v27)
          {
            v37 = [v10 diastolicRange];
            v38 = [v37 minValue];
            v39 = [v10 diastolicRange];
            v40 = [v39 maxValue];
            v7 = [HKValueRange valueRangeWithMinValue:v38 maxValue:v40];

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

        v43 = [v8 maxValue];
        [(HKSelectedRangeData *)v41 setValueAsNumber:v43];

        v44 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
        [(HKSelectedRangeData *)v44 setDataType:2];
        v45 = [(HKInteractiveChartBloodPressureFormatter *)self _formattedStringWithRange:v7 displayUnit:1];
        [(HKSelectedRangeData *)v44 setAttributedString:v45];

        v46 = [v7 maxValue];
        [(HKSelectedRangeData *)v44 setValueAsNumber:v46];

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

- (id)formattedSelectedAverageLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (v7 && [v7 count])
  {
    if (a4)
    {
      if (a4 == 1)
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
        v26 = [v8 firstObject];
        v27 = [v26 systolicAverage];

        if (v27)
        {
          v27 = [v26 systolicAverage];
        }

        v28 = [v26 diastolicAverage];

        if (v28)
        {
          v28 = [v26 diastolicAverage];
        }

        v29 = [v26 systolicRange];
        v30 = [(HKInteractiveChartBloodPressureFormatter *)self _isRepresentedBySingleChartPoint:v29];

        if (v30)
        {
          v31 = 1;
        }

        else
        {
          v31 = 40;
        }

        [(HKSelectedRangeData *)v10 setDataType:v31];
        v32 = [v26 diastolicRange];
        v33 = [(HKInteractiveChartBloodPressureFormatter *)self _isRepresentedBySingleChartPoint:v32];

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
              v20 = [v19 systolicAverage];

              if (v20)
              {
                v21 = [v19 systolicAverage];
                [v21 doubleValue];
                v16 = v16 + v22;
              }

              v23 = [v19 diastolicAverage];

              if (v23)
              {
                v24 = [v19 diastolicAverage];
                [v24 doubleValue];
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

        v27 = [MEMORY[0x1E696AD98] numberWithInt:{(v16 / objc_msgSend(v12, "count"))}];
        v28 = [MEMORY[0x1E696AD98] numberWithInt:{(v17 / objc_msgSend(v12, "count"))}];
        [(HKSelectedRangeData *)v10 setDataType:40];
        [(HKSelectedRangeData *)v11 setDataType:41];
      }

      v35 = [(HKInteractiveChartBloodPressureFormatter *)self _formattedStringWithAverage:v27 displayUnit:0, v37];
      [(HKSelectedRangeData *)v10 setAttributedString:v35];

      [(HKSelectedRangeData *)v10 setValueAsNumber:v27];
      v36 = [(HKInteractiveChartBloodPressureFormatter *)self _formattedStringWithAverage:v28 displayUnit:1];
      [(HKSelectedRangeData *)v11 setAttributedString:v36];

      [(HKSelectedRangeData *)v11 setValueAsNumber:v27];
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

- (BOOL)_isRepresentedBySingleChartPoint:(id)a3
{
  v4 = a3;
  v5 = [(HKInteractiveChartDataFormatter *)self displayType];
  v6 = [v5 presentation];
  v7 = [v4 minValue];
  v8 = [v6 adjustedValueForDaemonValue:v7];

  v9 = [(HKInteractiveChartDataFormatter *)self displayType];
  v10 = [v9 presentation];
  v11 = [v4 maxValue];

  v12 = [v10 adjustedValueForDaemonValue:v11];

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

- (id)_formattedStringWithAverage:(id)a3 displayUnit:(BOOL)a4
{
  v4 = a4;
  v39[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(HKInteractiveChartDataFormatter *)self unitController];
  v8 = [(HKInteractiveChartDataFormatter *)self displayType];
  v9 = [v7 unitForDisplayType:v8];

  v10 = [(HKInteractiveChartDataFormatter *)self displayType];
  v34 = v9;
  v11 = [v10 hk_numberFormatterForUnit:v9];

  v12 = [(HKInteractiveChartDataFormatter *)self displayType];
  v13 = [(HKInteractiveChartDataFormatter *)self unitController];
  v14 = [v11 stringFromNumber:v6 displayType:v12 unitController:v13];

  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  v16 = *MEMORY[0x1E69DB648];
  v38[0] = *MEMORY[0x1E69DB648];
  v17 = [(HKInteractiveChartDataFormatter *)self majorFont];
  v39[0] = v17;
  v18 = *MEMORY[0x1E69DB650];
  v38[1] = *MEMORY[0x1E69DB650];
  v19 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v39[1] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v21 = [v15 initWithString:v14 attributes:v20];

  v22 = [(HKInteractiveChartDataFormatter *)self unitController];
  v23 = [(HKInteractiveChartDataFormatter *)self displayType];
  v24 = HKUIUnitDisplayName(v22, v23, &unk_1F43824D0);

  if (v4 && [v24 length])
  {
    v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    v26 = objc_alloc(MEMORY[0x1E696AAB0]);
    v36[0] = v16;
    v27 = [(HKInteractiveChartDataFormatter *)self minorFont];
    v36[1] = v18;
    v37[0] = v27;
    v28 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
    v37[1] = v28;
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

- (id)_stringFromRange:(id)a3 numberFormatter:(id)a4 displayType:(id)a5 unitController:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = HKLocalizedNoDataString();
  if (v9)
  {
    v14 = [v11 presentation];
    v15 = [v9 minValue];
    v16 = [v14 adjustedValueForDaemonValue:v15];

    v17 = [v11 presentation];
    v18 = [v9 maxValue];
    v19 = [v17 adjustedValueForDaemonValue:v18];

    if (v16)
    {
      if (v19)
      {
        [v16 doubleValue];
        v21 = v20;
        [v19 doubleValue];
        v23 = vabdd_f64(v21, v22);
        v24 = [v10 stringFromNumber:v16 displayType:v11 unitController:v12];
        if (v23 >= 0.00000011920929)
        {
          v25 = [v10 stringFromNumber:v19 displayType:v11 unitController:v12];
          v30 = MEMORY[0x1E696AEC0];
          v32 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v26 = [v32 localizedStringForKey:@"RANGE_STRING %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
          v31 = [v30 stringWithFormat:v26, v24, v25];

          v13 = v24;
          v24 = v31;
        }

        goto LABEL_10;
      }

      v27 = v10;
      v28 = v16;
    }

    else
    {
      if (!v19)
      {
LABEL_11:

        goto LABEL_12;
      }

      v27 = v10;
      v28 = v19;
    }

    v24 = [v27 stringFromNumber:v28 displayType:v11 unitController:v12];
LABEL_10:

    v13 = v24;
    goto LABEL_11;
  }

LABEL_12:

  return v13;
}

@end