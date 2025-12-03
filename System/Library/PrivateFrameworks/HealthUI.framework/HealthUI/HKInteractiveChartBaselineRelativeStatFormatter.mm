@interface HKInteractiveChartBaselineRelativeStatFormatter
- (id)_establishingBaselineSelectedRangeData;
- (id)_unavailableSelectedRangeData;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
- (id)unitStringFromUnit:(id)unit number:(id)number;
- (id)valueStringFromNumber:(id)number;
@end

@implementation HKInteractiveChartBaselineRelativeStatFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  v15[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = [dataCopy hk_filter:&__block_literal_global_33];
  if ([v7 count])
  {
    v13.receiver = self;
    v13.super_class = HKInteractiveChartBaselineRelativeStatFormatter;
    v8 = [(HKInteractiveChartGenericStatFormatter *)&v13 formattedSelectedRangeLabelDataWithChartData:v7 context:context];
  }

  else
  {
    if ([dataCopy hk_containsObjectPassingTest:&__block_literal_global_294])
    {
      _establishingBaselineSelectedRangeData = [(HKInteractiveChartBaselineRelativeStatFormatter *)self _establishingBaselineSelectedRangeData];
      v15[0] = _establishingBaselineSelectedRangeData;
      v10 = MEMORY[0x1E695DEC8];
      v11 = v15;
    }

    else
    {
      _establishingBaselineSelectedRangeData = [(HKInteractiveChartBaselineRelativeStatFormatter *)self _unavailableSelectedRangeData];
      v14 = _establishingBaselineSelectedRangeData;
      v10 = MEMORY[0x1E695DEC8];
      v11 = &v14;
    }

    v8 = [v10 arrayWithObjects:v11 count:1];
  }

  return v8;
}

BOOL __104__HKInteractiveChartBaselineRelativeStatFormatter_formattedSelectedRangeLabelDataWithChartData_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 relativeValueState];
  v3 = [v2 integerValue] == 3;

  return v3;
}

BOOL __104__HKInteractiveChartBaselineRelativeStatFormatter_formattedSelectedRangeLabelDataWithChartData_context___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 relativeValueState];
  v3 = [v2 integerValue] == 2;

  return v3;
}

- (id)_establishingBaselineSelectedRangeData
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
  [(HKSelectedRangeData *)v3 setDataType:0];
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"ESTABLISHING_BASELINE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
  v12[0] = *MEMORY[0x1E69DB648];
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  v13[0] = majorFont;
  v12[1] = *MEMORY[0x1E69DB650];
  hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v13[1] = hk_chartLollipopValueColor;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v4 initWithString:v6 attributes:v9];
  [(HKSelectedRangeData *)v3 setAttributedString:v10];

  return v3;
}

- (id)_unavailableSelectedRangeData
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
  [(HKSelectedRangeData *)v3 setDataType:0];
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"NOT_ENOUGH_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
  v12[0] = *MEMORY[0x1E69DB648];
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  v13[0] = majorFont;
  v12[1] = *MEMORY[0x1E69DB650];
  hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v13[1] = hk_chartLollipopValueColor;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v4 initWithString:v6 attributes:v9];
  [(HKSelectedRangeData *)v3 setAttributedString:v10];

  return v3;
}

- (id)valueStringFromNumber:(id)number
{
  numberCopy = number;
  displayType = [(HKInteractiveChartDataFormatter *)self displayType];
  unitController = [(HKInteractiveChartDataFormatter *)self unitController];
  v7 = objc_alloc_init(HKRelativeNumberFormatter);
  v8 = HKFormattedStringFromValue(numberCopy, displayType, unitController, 0, v7);

  return v8;
}

- (id)unitStringFromUnit:(id)unit number:(id)number
{
  numberCopy = number;
  unitController = [(HKInteractiveChartDataFormatter *)self unitController];
  displayType = [(HKInteractiveChartDataFormatter *)self displayType];
  v8 = [unitController localizedDisplayNameForDisplayType:displayType value:numberCopy];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"%@_DEGREES_FROM_BASELINE_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Kali"];
  v12 = [v9 stringWithFormat:v11, v8];

  return v12;
}

@end