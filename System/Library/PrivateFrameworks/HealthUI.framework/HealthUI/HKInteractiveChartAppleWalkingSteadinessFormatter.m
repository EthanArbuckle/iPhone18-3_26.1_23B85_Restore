@interface HKInteractiveChartAppleWalkingSteadinessFormatter
- (id)_formattedCurrentValueForChartData:(id)a3 context:(int64_t)a4;
- (id)attributedStringWithValue:(double)a3 unit:(id)a4 showUnit:(BOOL)a5;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
- (id)selectedRangeSeparatorString;
@end

@implementation HKInteractiveChartAppleWalkingSteadinessFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = [(HKInteractiveChartAppleWalkingSteadinessFormatter *)self _formattedCurrentValueForChartData:v7 context:a4];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)_formattedCurrentValueForChartData:(id)a3 context:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [HKMobilityUtilities chartDataSpansMultipleClassifications:v6];
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
    v11 = [(HKInteractiveChartGenericStatFormatter *)&v14 formattedSelectedRangeLabelDataWithChartData:v6 context:a4];
    v12 = [v11 firstObject];
    [v12 setStatisticsType:v10];
    [v12 setDataType:0];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = HKInteractiveChartAppleWalkingSteadinessFormatter;
    v11 = [(HKInteractiveChartGenericStatFormatter *)&v15 formattedSelectedRangeLabelDataWithChartData:v6 context:a4];
  }

  return v11;
}

- (id)attributedStringWithValue:(double)a3 unit:(id)a4 showUnit:(BOOL)a5
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = [HKMobilityUtilities localizedTitleForClassification:[HKMobilityUtilities classificationForAppleWalkingSteadinessValue:a4, a5, a3]];
  v12[0] = *MEMORY[0x1E69DB648];
  v7 = [(HKInteractiveChartDataFormatter *)self majorFont];
  v13[0] = v7;
  v12[1] = *MEMORY[0x1E69DB650];
  v8 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v13[1] = v8;
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