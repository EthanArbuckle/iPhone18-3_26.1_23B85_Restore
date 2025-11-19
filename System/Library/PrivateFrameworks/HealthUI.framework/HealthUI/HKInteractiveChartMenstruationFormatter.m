@interface HKInteractiveChartMenstruationFormatter
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
@end

@implementation HKInteractiveChartMenstruationFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v36[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5 || ![v5 count])
  {
    v16 = MEMORY[0x1E695E0F0];
    goto LABEL_27;
  }

  v7 = [(HKInteractiveChartDataFormatter *)self displayType];
  v8 = [v7 hk_enumeratedValueLabels];

  if (v8 && [v6 count] == 1)
  {
    v9 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
    v10 = [v6 firstObject];
    v11 = [(HKInteractiveChartCategoryValueFormatter *)self _formattedStringWithValue:[(HKSelectedRangeData *)v10 value] useColorAttributes:1];
    [(HKSelectedRangeData *)v9 setAttributedString:v11];

    if ([(HKSelectedRangeData *)v10 startOfCycle])
    {
      v12 = 12;
    }

    else
    {
      v12 = 11;
    }

    [(HKSelectedRangeData *)v9 setDataType:v12];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HKSelectedRangeData value](v10, "value")}];
    [(HKSelectedRangeData *)v9 setValueAsNumber:v13];

    v36[0] = v9;
    v14 = MEMORY[0x1E695DEC8];
    v15 = v36;
    goto LABEL_25;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v6;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = 0;
    v22 = *v29;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = [*(*(&v28 + 1) + 8 * i) startOfCycle];
        v20 |= v24;
        v21 |= v24 ^ 1;
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v9 = -[HKInteractiveChartCategoryValueFormatter _formattedStringWithCount:](self, "_formattedStringWithCount:", [v17 count]);
  if ((v21 & 1) != 0 && (v20 & 1) == 0)
  {
    v10 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
    [(HKSelectedRangeData *)v10 setAttributedString:v9];
    [(HKSelectedRangeData *)v10 setDataType:11];
    [(HKSelectedRangeData *)v10 setValueAsNumber:0];
    v34 = v10;
    v14 = MEMORY[0x1E695DEC8];
    v15 = &v34;
LABEL_25:
    v16 = [v14 arrayWithObjects:v15 count:{1, v28}];
    goto LABEL_26;
  }

  v10 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
  [(HKSelectedRangeData *)v10 setAttributedString:v9];
  if (!(v21 & 1 | ((v20 & 1) == 0)))
  {
    [(HKSelectedRangeData *)v10 setDataType:12];
    [(HKSelectedRangeData *)v10 setValueAsNumber:0];
    v33 = v10;
    v14 = MEMORY[0x1E695DEC8];
    v15 = &v33;
    goto LABEL_25;
  }

  [(HKSelectedRangeData *)v10 setDataType:11];
  [(HKSelectedRangeData *)v10 setValueAsNumber:0];
  v25 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
  [(HKSelectedRangeData *)v25 setDataType:12];
  v26 = [(HKInteractiveChartCategoryValueFormatter *)self _formattedStringWithText:@" "];
  [(HKSelectedRangeData *)v25 setAttributedString:v26];

  [(HKSelectedRangeData *)v25 setValueAsNumber:0];
  v32[0] = v10;
  v32[1] = v25;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];

LABEL_26:
LABEL_27:

  return v16;
}

@end