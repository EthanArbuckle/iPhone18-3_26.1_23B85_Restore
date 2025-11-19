@interface HKInteractiveChartCategoryValueFormatter
- (HKInteractiveChartCategoryValueFormatter)initWithLocalizedCategoryName:(id)a3;
- (id)_formattedStringWithCount:(int64_t)a3;
- (id)_formattedStringWithText:(id)a3;
- (id)_formattedStringWithValue:(int64_t)a3 useColorAttributes:(BOOL)a4;
- (id)_uniqueChartPoints:(id)a3;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
@end

@implementation HKInteractiveChartCategoryValueFormatter

- (HKInteractiveChartCategoryValueFormatter)initWithLocalizedCategoryName:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HKInteractiveChartCategoryValueFormatter;
  v5 = [(HKInteractiveChartCategoryValueFormatter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HKInteractiveChartCategoryValueFormatter *)v5 setLocalizedCategoryName:v4];
  }

  return v6;
}

- (id)_formattedStringWithValue:(int64_t)a3 useColorAttributes:(BOOL)a4
{
  v4 = a4;
  v22[2] = *MEMORY[0x1E69E9840];
  v7 = [(HKInteractiveChartDataFormatter *)self displayType];
  v8 = [v7 hk_enumeratedValueLabels];

  if (v4)
  {
    v21[0] = *MEMORY[0x1E69DB648];
    v9 = [(HKInteractiveChartDataFormatter *)self majorFont];
    v22[0] = v9;
    v21[1] = *MEMORY[0x1E69DB650];
    v10 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
    v22[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  }

  else
  {
    v19 = *MEMORY[0x1E69DB648];
    v9 = [(HKInteractiveChartDataFormatter *)self majorFont];
    v20 = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  }

  if (v8)
  {
    v12 = objc_alloc(MEMORY[0x1E696AAB0]);
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v14 = [v8 objectForKeyedSubscript:v13];
    v15 = [v12 initWithString:v14 attributes:v11];
  }

  else
  {
    v16 = [(HKInteractiveChartDataFormatter *)self displayType];
    v17 = [v16 localization];
    v13 = [v17 displayName];

    v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v13 attributes:v11];
  }

  return v15;
}

- (id)_formattedStringWithCount:(int64_t)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"ENTRIES_NUMBERLESS_VALUE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  v8 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v6, a3];
  v29 = *MEMORY[0x1E69DB648];
  v9 = v29;
  v10 = [(HKInteractiveChartDataFormatter *)self minorFont];
  v31[0] = v10;
  v30 = *MEMORY[0x1E69DB650];
  v11 = v30;
  v12 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  v31[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v29 count:2];
  v14 = [v7 initWithString:v8 attributes:v13];

  v15 = HKIntegerFormatter();
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v17 = [v15 stringFromNumber:v16];

  v18 = objc_alloc(MEMORY[0x1E696AAB0]);
  v27[0] = v9;
  v19 = [(HKInteractiveChartDataFormatter *)self majorFont];
  v27[1] = v11;
  v28[0] = v19;
  v20 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v28[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v22 = [v18 initWithString:v17 attributes:v21];

  v26[0] = v22;
  v26[1] = v14;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v24 = HKUIJoinAttributedStringsWithFormat(v23, @"%1$@ %2$@");

  return v24;
}

- (id)_formattedStringWithText:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AAB0];
  v5 = a3;
  v6 = [v4 alloc];
  v12[0] = *MEMORY[0x1E69DB648];
  v7 = [(HKInteractiveChartDataFormatter *)self majorFont];
  v13[0] = v7;
  v12[1] = *MEMORY[0x1E69DB650];
  v8 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithString:v5 attributes:v9];

  return v10;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = [(HKInteractiveChartCategoryValueFormatter *)self _uniqueChartPoints:v7];
    v9 = [(HKInteractiveChartDataFormatter *)self displayType];
    v10 = [v9 hk_enumeratedValueLabels];

    if ([v8 count] == 1)
    {
      v11 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
      if (v10)
      {
        v12 = [v8 firstObject];
        v13 = -[HKInteractiveChartCategoryValueFormatter _formattedStringWithValue:useColorAttributes:](self, "_formattedStringWithValue:useColorAttributes:", [v12 value], 1);
        [(HKSelectedRangeData *)v11 setAttributedString:v13];

        v14 = [(HKInteractiveChartDataFormatter *)self displayType];
        v15 = [v14 displayCategory];
        v16 = [v15 categoryID];

        if (v16 == 26)
        {
          [(HKSelectedRangeData *)v11 setStatisticsType:20];
        }
      }

      else
      {
        v12 = [(HKInteractiveChartCategoryValueFormatter *)self localizedCategoryName];
        v21 = [(HKInteractiveChartCategoryValueFormatter *)self _formattedStringWithText:v12];
        [(HKSelectedRangeData *)v11 setAttributedString:v21];
      }
    }

    else
    {
      if ([v8 count] > 1 || a4 == 1)
      {
        v19 = 5;
      }

      else
      {
        v19 = 0;
      }

      v11 = [[HKSelectedRangeData alloc] initWithStatisticsType:v19];
      v20 = -[HKInteractiveChartCategoryValueFormatter _formattedStringWithCount:](self, "_formattedStringWithCount:", [v8 count]);
      [(HKSelectedRangeData *)v11 setAttributedString:v20];

      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
      [(HKSelectedRangeData *)v11 setValueAsNumber:v12];
    }

    v23[0] = v11;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  return v17;
}

- (id)_uniqueChartPoints:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          if (([v5 containsObject:{v12, v14}] & 1) == 0)
          {
            [v4 addObject:v12];
            [v5 addObject:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v4;
}

@end