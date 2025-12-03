@interface HKInteractiveChartCategoryValueFormatter
- (HKInteractiveChartCategoryValueFormatter)initWithLocalizedCategoryName:(id)name;
- (id)_formattedStringWithCount:(int64_t)count;
- (id)_formattedStringWithText:(id)text;
- (id)_formattedStringWithValue:(int64_t)value useColorAttributes:(BOOL)attributes;
- (id)_uniqueChartPoints:(id)points;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
@end

@implementation HKInteractiveChartCategoryValueFormatter

- (HKInteractiveChartCategoryValueFormatter)initWithLocalizedCategoryName:(id)name
{
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = HKInteractiveChartCategoryValueFormatter;
  v5 = [(HKInteractiveChartCategoryValueFormatter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HKInteractiveChartCategoryValueFormatter *)v5 setLocalizedCategoryName:nameCopy];
  }

  return v6;
}

- (id)_formattedStringWithValue:(int64_t)value useColorAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  v22[2] = *MEMORY[0x1E69E9840];
  displayType = [(HKInteractiveChartDataFormatter *)self displayType];
  hk_enumeratedValueLabels = [displayType hk_enumeratedValueLabels];

  if (attributesCopy)
  {
    v21[0] = *MEMORY[0x1E69DB648];
    majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
    v22[0] = majorFont;
    v21[1] = *MEMORY[0x1E69DB650];
    hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
    v22[1] = hk_chartLollipopValueColor;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  }

  else
  {
    v19 = *MEMORY[0x1E69DB648];
    majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
    v20 = majorFont;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  }

  if (hk_enumeratedValueLabels)
  {
    v12 = objc_alloc(MEMORY[0x1E696AAB0]);
    displayName = [MEMORY[0x1E696AD98] numberWithInteger:value];
    v14 = [hk_enumeratedValueLabels objectForKeyedSubscript:displayName];
    v15 = [v12 initWithString:v14 attributes:v11];
  }

  else
  {
    displayType2 = [(HKInteractiveChartDataFormatter *)self displayType];
    localization = [displayType2 localization];
    displayName = [localization displayName];

    v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:displayName attributes:v11];
  }

  return v15;
}

- (id)_formattedStringWithCount:(int64_t)count
{
  v31[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"ENTRIES_NUMBERLESS_VALUE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  v8 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v6, count];
  v29 = *MEMORY[0x1E69DB648];
  v9 = v29;
  minorFont = [(HKInteractiveChartDataFormatter *)self minorFont];
  v31[0] = minorFont;
  v30 = *MEMORY[0x1E69DB650];
  v11 = v30;
  hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  v31[1] = hk_chartLollipopLabelColor;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v29 count:2];
  v14 = [v7 initWithString:v8 attributes:v13];

  v15 = HKIntegerFormatter();
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:count];
  v17 = [v15 stringFromNumber:v16];

  v18 = objc_alloc(MEMORY[0x1E696AAB0]);
  v27[0] = v9;
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  v27[1] = v11;
  v28[0] = majorFont;
  hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v28[1] = hk_chartLollipopValueColor;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v22 = [v18 initWithString:v17 attributes:v21];

  v26[0] = v22;
  v26[1] = v14;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v24 = HKUIJoinAttributedStringsWithFormat(v23, @"%1$@ %2$@");

  return v24;
}

- (id)_formattedStringWithText:(id)text
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AAB0];
  textCopy = text;
  v6 = [v4 alloc];
  v12[0] = *MEMORY[0x1E69DB648];
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  v13[0] = majorFont;
  v12[1] = *MEMORY[0x1E69DB650];
  hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v13[1] = hk_chartLollipopValueColor;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithString:textCopy attributes:v9];

  return v10;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  v23[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = dataCopy;
  if (dataCopy && [dataCopy count])
  {
    v8 = [(HKInteractiveChartCategoryValueFormatter *)self _uniqueChartPoints:v7];
    displayType = [(HKInteractiveChartDataFormatter *)self displayType];
    hk_enumeratedValueLabels = [displayType hk_enumeratedValueLabels];

    if ([v8 count] == 1)
    {
      v11 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
      if (hk_enumeratedValueLabels)
      {
        firstObject = [v8 firstObject];
        v13 = -[HKInteractiveChartCategoryValueFormatter _formattedStringWithValue:useColorAttributes:](self, "_formattedStringWithValue:useColorAttributes:", [firstObject value], 1);
        [(HKSelectedRangeData *)v11 setAttributedString:v13];

        displayType2 = [(HKInteractiveChartDataFormatter *)self displayType];
        displayCategory = [displayType2 displayCategory];
        categoryID = [displayCategory categoryID];

        if (categoryID == 26)
        {
          [(HKSelectedRangeData *)v11 setStatisticsType:20];
        }
      }

      else
      {
        firstObject = [(HKInteractiveChartCategoryValueFormatter *)self localizedCategoryName];
        v21 = [(HKInteractiveChartCategoryValueFormatter *)self _formattedStringWithText:firstObject];
        [(HKSelectedRangeData *)v11 setAttributedString:v21];
      }
    }

    else
    {
      if ([v8 count] > 1 || context == 1)
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

      firstObject = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
      [(HKSelectedRangeData *)v11 setValueAsNumber:firstObject];
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

- (id)_uniqueChartPoints:(id)points
{
  v19 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = pointsCopy;
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