@interface HKInteractiveChartOxygenSaturationFormatter
- (HKInteractiveChartOxygenSaturationFormatter)initWithStatisticsType:(int64_t)a3;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
@end

@implementation HKInteractiveChartOxygenSaturationFormatter

- (HKInteractiveChartOxygenSaturationFormatter)initWithStatisticsType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HKInteractiveChartOxygenSaturationFormatter;
  result = [(HKInteractiveChartOxygenSaturationFormatter *)&v5 init];
  if (result)
  {
    result->_airPressureStatisticsType = a3;
  }

  return result;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v12.receiver = self;
    v12.super_class = HKInteractiveChartOxygenSaturationFormatter;
    v8 = [(HKInteractiveChartGenericStatFormatter *)&v12 formattedSelectedRangeLabelDataWithChartData:v7 context:a4];
    if ([(HKInteractiveChartOxygenSaturationFormatter *)self airPressureStatisticsType]== 21)
    {
      v9 = [(HKInteractiveChartOxygenSaturationFormatter *)self airPressureStatisticsType];
      v10 = [v8 firstObject];
      [v10 setStatisticsType:v9];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

@end