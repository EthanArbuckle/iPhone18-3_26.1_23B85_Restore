@interface HKInteractiveChartTrendOverlayFormatter
- (BOOL)_displayTypeIsSleep;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
@end

@implementation HKInteractiveChartTrendOverlayFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  v16[1] = *MEMORY[0x1E69E9840];
  firstObject = [data firstObject];
  if (firstObject)
  {
    v6 = [[HKSelectedRangeData alloc] initWithStatisticsType:3];
    _displayTypeIsSleep = [(HKInteractiveChartTrendOverlayFormatter *)self _displayTypeIsSleep];
    [firstObject minValue];
    v9 = v8;
    unit = [firstObject unit];
    v11 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:unit unit:!_displayTypeIsSleep showUnit:v9];
    [(HKSelectedRangeData *)v6 setAttributedString:v11];

    [(HKSelectedRangeData *)v6 setDataType:0];
    v12 = MEMORY[0x1E696AD98];
    [firstObject minValue];
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
  displayType = [(HKInteractiveChartDataFormatter *)self displayType];

  if (displayType)
  {
    displayType2 = [(HKInteractiveChartDataFormatter *)self displayType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    displayType3 = [(HKInteractiveChartDataFormatter *)self displayType];
    v7 = displayType3;
    if (isKindOfClass)
    {
      baseDisplayType = [displayType3 baseDisplayType];
      displayType = [baseDisplayType displayTypeIdentifier];
    }

    else
    {
      displayType = [displayType3 displayTypeIdentifier];
    }

    LOBYTE(displayType) = displayType == 63;
  }

  return displayType;
}

@end