@interface HKInteractiveChartTrendOverlayFormatter
- (BOOL)_displayTypeIsSleep;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
@end

@implementation HKInteractiveChartTrendOverlayFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = [a3 firstObject];
  if (v5)
  {
    v6 = [[HKSelectedRangeData alloc] initWithStatisticsType:3];
    v7 = [(HKInteractiveChartTrendOverlayFormatter *)self _displayTypeIsSleep];
    [v5 minValue];
    v9 = v8;
    v10 = [v5 unit];
    v11 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:v10 unit:!v7 showUnit:v9];
    [(HKSelectedRangeData *)v6 setAttributedString:v11];

    [(HKSelectedRangeData *)v6 setDataType:0];
    v12 = MEMORY[0x1E696AD98];
    [v5 minValue];
    v13 = [v12 numberWithDouble:?];
    [(HKSelectedRangeData *)v6 setValueAsNumber:v13];

    v16[0] = v6;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

- (BOOL)_displayTypeIsSleep
{
  v3 = [(HKInteractiveChartDataFormatter *)self displayType];

  if (v3)
  {
    v4 = [(HKInteractiveChartDataFormatter *)self displayType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v6 = [(HKInteractiveChartDataFormatter *)self displayType];
    v7 = v6;
    if (isKindOfClass)
    {
      v8 = [v6 baseDisplayType];
      v3 = [v8 displayTypeIdentifier];
    }

    else
    {
      v3 = [v6 displayTypeIdentifier];
    }

    LOBYTE(v3) = v3 == 63;
  }

  return v3;
}

@end