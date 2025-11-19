@interface HKInteractiveChartInsulinFormatter
- (id)_formattedSelectedRangeLabelDataWithChartData:(id)a3 items:(id)a4;
- (id)_formattedStringWithBasalValue:(double)a3 bolusValue:(double)a4;
- (id)_formattedStringWithValue:(double)a3 unit:(id)a4 deliveryReason:(int64_t)a5;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
@end

@implementation HKInteractiveChartInsulinFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v5 = a3;
  v6 = [(HKInteractiveChartGenericStatFormatter *)self configuredStatItems];
  v7 = [(HKInteractiveChartInsulinFormatter *)self _formattedSelectedRangeLabelDataWithChartData:v5 items:v6];

  return v7;
}

- (id)_formattedSelectedRangeLabelDataWithChartData:(id)a3 items:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 count])
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v44 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v54;
      v11 = 0.0;
      v12 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v54 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v53 + 1) + 8 * i);
          [v14 basalValue];
          v12 = v12 + v15;
          [v14 bolusValue];
          v11 = v11 + v16;
        }

        v9 = [v7 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
      v12 = 0.0;
    }

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = [MEMORY[0x1E696C510] internationalUnit];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v43 = v6;
    obj = v6;
    v19 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v50;
      v45 = *v50;
      v47 = v17;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v50 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = __ROR8__([*(*(&v49 + 1) + 8 * j) integerValue] - 8, 3);
          if (v23 > 7)
          {
            if (v23 == 8)
            {
              if ([v7 count] <= 1)
              {
                v35 = 0;
              }

              else
              {
                v35 = 3;
              }

              v36 = [[HKSelectedRangeData alloc] initWithStatisticsType:v35];
              [(HKSelectedRangeData *)v36 setDataType:3];
              v37 = -[HKInteractiveChartDataFormatter attributedStringWithValue:unit:showUnit:](self, "attributedStringWithValue:unit:showUnit:", v18, 1, v12 / [v7 count]);
              [(HKSelectedRangeData *)v36 setAttributedString:v37];

              v38 = [MEMORY[0x1E696AD98] numberWithDouble:{v12 / objc_msgSend(v7, "count")}];
              [(HKSelectedRangeData *)v36 setValueAsNumber:v38];

              [v47 addObject:v36];
              v17 = v47;
              v24 = [[HKSelectedRangeData alloc] initWithStatisticsType:v35];

              [(HKSelectedRangeData *)v24 setDataType:4];
              v21 = v45;
              v39 = -[HKInteractiveChartDataFormatter attributedStringWithValue:unit:showUnit:](self, "attributedStringWithValue:unit:showUnit:", v18, 1, v11 / [v7 count]);
              [(HKSelectedRangeData *)v24 setAttributedString:v39];

              v40 = MEMORY[0x1E696AD98];
              v27 = v11 / [v7 count];
              v26 = v40;
            }

            else
            {
              if (v23 != 9)
              {
                continue;
              }

              if ([v7 count] <= 1)
              {
                v28 = 0;
              }

              else
              {
                v28 = 5;
              }

              v29 = [[HKSelectedRangeData alloc] initWithStatisticsType:v28];
              [(HKSelectedRangeData *)v29 setDataType:3];
              v30 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:v18 unit:1 showUnit:v12];
              [(HKSelectedRangeData *)v29 setAttributedString:v30];

              v31 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
              [(HKSelectedRangeData *)v29 setValueAsNumber:v31];

              [v47 addObject:v29];
              v17 = v47;
              v24 = [[HKSelectedRangeData alloc] initWithStatisticsType:v28];

              [(HKSelectedRangeData *)v24 setDataType:4];
              v21 = v45;
              v32 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:v18 unit:1 showUnit:v11];
              [(HKSelectedRangeData *)v24 setAttributedString:v32];

              v26 = MEMORY[0x1E696AD98];
              v27 = v11;
            }
          }

          else if (v23)
          {
            if (v23 != 1)
            {
              continue;
            }

            v24 = [[HKSelectedRangeData alloc] initWithStatisticsType:5];
            [(HKSelectedRangeData *)v24 setDataType:5];
            v25 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:v18 unit:1 showUnit:v11 + v12];
            [(HKSelectedRangeData *)v24 setAttributedString:v25];

            v26 = MEMORY[0x1E696AD98];
            v27 = v11 + v12;
          }

          else
          {
            v24 = [[HKSelectedRangeData alloc] initWithStatisticsType:3];
            v33 = (v11 + v12) / [v7 count];
            [(HKSelectedRangeData *)v24 setDataType:5];
            v34 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:v18 unit:1 showUnit:v33];
            [(HKSelectedRangeData *)v24 setAttributedString:v34];

            v26 = MEMORY[0x1E696AD98];
            v27 = v33;
          }

          v41 = [v26 numberWithDouble:v27];
          [(HKSelectedRangeData *)v24 setValueAsNumber:v41];

          [v17 addObject:v24];
        }

        v20 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v20);
    }

    v6 = v43;
    v5 = v44;
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  return v17;
}

- (id)_formattedStringWithBasalValue:(double)a3 bolusValue:(double)a4
{
  v17[3] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696C510] internationalUnit];
  v8 = [(HKInteractiveChartInsulinFormatter *)self _formattedStringWithValue:v7 unit:1 deliveryReason:a3];
  v9 = objc_alloc(MEMORY[0x1E696AAB0]);
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"CHART_COMMA_SEPARATOR" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v12 = [v9 initWithString:v11];

  v13 = [(HKInteractiveChartInsulinFormatter *)self _formattedStringWithValue:v7 unit:2 deliveryReason:a4];
  v17[0] = v8;
  v17[1] = v12;
  v17[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v15 = HKUIJoinAttributedStringsForLocale(v14);

  return v15;
}

- (id)_formattedStringWithValue:(double)a3 unit:(id)a4 deliveryReason:(int64_t)a5
{
  v40[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [(HKInteractiveChartDataFormatter *)self displayType];
  v10 = [v9 presentation];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v35 = [v10 adjustedValueForDaemonValue:v11];

  v12 = [(HKInteractiveChartDataFormatter *)self displayType];
  v13 = [(HKInteractiveChartDataFormatter *)self unitController];
  v34 = HKFormattedStringFromValue(v35, v12, v13, 0, 0);

  v14 = [(HKInteractiveChartDataFormatter *)self unitController];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v16 = [v14 localizedDisplayNameForUnit:v8 value:v15];

  v39 = *MEMORY[0x1E69DB648];
  v17 = v39;
  v18 = [(HKInteractiveChartDataFormatter *)self minorFont];
  v40[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];

  v20 = objc_alloc(MEMORY[0x1E696AAB0]);
  v37 = v17;
  v21 = [(HKInteractiveChartDataFormatter *)self majorFont];
  v38 = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v23 = [v20 initWithString:v34 attributes:v22];

  v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v16 attributes:v19];
  v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v19];
  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSULIN_DELIVERY_REASON_%zd", a5];
  v27 = objc_alloc(MEMORY[0x1E696AAB0]);
  v28 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v29 = [v28 localizedStringForKey:v26 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v30 = [v27 initWithString:v29 attributes:v19];

  v36[0] = v23;
  v36[1] = v24;
  v36[2] = v25;
  v36[3] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
  v32 = HKUIJoinAttributedStringsForLocale(v31);

  return v32;
}

@end