@interface HKSleepDurationAverageSeries
@end

@implementation HKSleepDurationAverageSeries

void __75___HKSleepDurationAverageSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v7 userInfo];
    v6 = [*(a1 + 32) averageValueType];
    [v5 setAnnotationOptions:HKSleepChartPointFormatterOptionsForSleepAnalysis(v6)];
  }
}

@end