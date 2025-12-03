@interface HKInteractiveChartOxygenSaturationFormatter
- (HKInteractiveChartOxygenSaturationFormatter)initWithStatisticsType:(int64_t)type;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
@end

@implementation HKInteractiveChartOxygenSaturationFormatter

- (HKInteractiveChartOxygenSaturationFormatter)initWithStatisticsType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = HKInteractiveChartOxygenSaturationFormatter;
  result = [(HKInteractiveChartOxygenSaturationFormatter *)&v5 init];
  if (result)
  {
    result->_airPressureStatisticsType = type;
  }

  return result;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  dataCopy = data;
  v7 = dataCopy;
  if (dataCopy && [dataCopy count])
  {
    v12.receiver = self;
    v12.super_class = HKInteractiveChartOxygenSaturationFormatter;
    v8 = [(HKInteractiveChartGenericStatFormatter *)&v12 formattedSelectedRangeLabelDataWithChartData:v7 context:context];
    if ([(HKInteractiveChartOxygenSaturationFormatter *)self airPressureStatisticsType]== 21)
    {
      airPressureStatisticsType = [(HKInteractiveChartOxygenSaturationFormatter *)self airPressureStatisticsType];
      firstObject = [v8 firstObject];
      [firstObject setStatisticsType:airPressureStatisticsType];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

@end