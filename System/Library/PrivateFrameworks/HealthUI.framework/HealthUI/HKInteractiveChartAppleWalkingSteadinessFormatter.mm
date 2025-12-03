@interface HKInteractiveChartAppleWalkingSteadinessFormatter
- (id)_formattedCurrentValueForChartData:(id)data context:(int64_t)context;
- (id)attributedStringWithValue:(double)value unit:(id)unit showUnit:(BOOL)showUnit;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
- (id)selectedRangeSeparatorString;
@end

@implementation HKInteractiveChartAppleWalkingSteadinessFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  dataCopy = data;
  v7 = dataCopy;
  if (dataCopy && [dataCopy count])
  {
    v8 = [(HKInteractiveChartAppleWalkingSteadinessFormatter *)self _formattedCurrentValueForChartData:v7 context:context];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)_formattedCurrentValueForChartData:(id)data context:(int64_t)context
{
  dataCopy = data;
  firstObject = [dataCopy firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [HKMobilityUtilities chartDataSpansMultipleClassifications:dataCopy];
    if (v8)
    {
      v9 = &unk_1F4381288;
    }

    else
    {
      v9 = &unk_1F43812A0;
    }

    if (v8)
    {
      v10 = 26;
    }

    else
    {
      v10 = 25;
    }

    [(HKInteractiveChartGenericStatFormatter *)self setOverrideStatFormatterItemOptions:v9];
    v14.receiver = self;
    v14.super_class = HKInteractiveChartAppleWalkingSteadinessFormatter;
    v11 = [(HKInteractiveChartGenericStatFormatter *)&v14 formattedSelectedRangeLabelDataWithChartData:dataCopy context:context];
    firstObject2 = [v11 firstObject];
    [firstObject2 setStatisticsType:v10];
    [firstObject2 setDataType:0];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = HKInteractiveChartAppleWalkingSteadinessFormatter;
    v11 = [(HKInteractiveChartGenericStatFormatter *)&v15 formattedSelectedRangeLabelDataWithChartData:dataCopy context:context];
  }

  return v11;
}

- (id)attributedStringWithValue:(double)value unit:(id)unit showUnit:(BOOL)showUnit
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = [HKMobilityUtilities localizedTitleForClassification:[HKMobilityUtilities classificationForAppleWalkingSteadinessValue:unit, showUnit, value]];
  v12[0] = *MEMORY[0x1E69DB648];
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  v13[0] = majorFont;
  v12[1] = *MEMORY[0x1E69DB650];
  hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v13[1] = hk_chartLollipopValueColor;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:v9];

  return v10;
}

- (id)selectedRangeSeparatorString
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"RANGE_STROKE_SEPARATOR" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

@end