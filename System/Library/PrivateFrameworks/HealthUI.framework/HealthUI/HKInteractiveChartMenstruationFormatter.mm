@interface HKInteractiveChartMenstruationFormatter
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
@end

@implementation HKInteractiveChartMenstruationFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  v36[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = dataCopy;
  if (!dataCopy || ![dataCopy count])
  {
    v16 = MEMORY[0x1E695E0F0];
    goto LABEL_27;
  }

  displayType = [(HKInteractiveChartDataFormatter *)self displayType];
  hk_enumeratedValueLabels = [displayType hk_enumeratedValueLabels];

  if (hk_enumeratedValueLabels && [v6 count] == 1)
  {
    v9 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
    firstObject = [v6 firstObject];
    v11 = [(HKInteractiveChartCategoryValueFormatter *)self _formattedStringWithValue:[(HKSelectedRangeData *)firstObject value] useColorAttributes:1];
    [(HKSelectedRangeData *)v9 setAttributedString:v11];

    if ([(HKSelectedRangeData *)firstObject startOfCycle])
    {
      v12 = 12;
    }

    else
    {
      v12 = 11;
    }

    [(HKSelectedRangeData *)v9 setDataType:v12];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HKSelectedRangeData value](firstObject, "value")}];
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

        startOfCycle = [*(*(&v28 + 1) + 8 * i) startOfCycle];
        v20 |= startOfCycle;
        v21 |= startOfCycle ^ 1;
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
    firstObject = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
    [(HKSelectedRangeData *)firstObject setAttributedString:v9];
    [(HKSelectedRangeData *)firstObject setDataType:11];
    [(HKSelectedRangeData *)firstObject setValueAsNumber:0];
    v34 = firstObject;
    v14 = MEMORY[0x1E695DEC8];
    v15 = &v34;
LABEL_25:
    v16 = [v14 arrayWithObjects:v15 count:{1, v28}];
    goto LABEL_26;
  }

  firstObject = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
  [(HKSelectedRangeData *)firstObject setAttributedString:v9];
  if (!(v21 & 1 | ((v20 & 1) == 0)))
  {
    [(HKSelectedRangeData *)firstObject setDataType:12];
    [(HKSelectedRangeData *)firstObject setValueAsNumber:0];
    v33 = firstObject;
    v14 = MEMORY[0x1E695DEC8];
    v15 = &v33;
    goto LABEL_25;
  }

  [(HKSelectedRangeData *)firstObject setDataType:11];
  [(HKSelectedRangeData *)firstObject setValueAsNumber:0];
  v25 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
  [(HKSelectedRangeData *)v25 setDataType:12];
  v26 = [(HKInteractiveChartCategoryValueFormatter *)self _formattedStringWithText:@" "];
  [(HKSelectedRangeData *)v25 setAttributedString:v26];

  [(HKSelectedRangeData *)v25 setValueAsNumber:0];
  v32[0] = firstObject;
  v32[1] = v25;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];

LABEL_26:
LABEL_27:

  return v16;
}

@end