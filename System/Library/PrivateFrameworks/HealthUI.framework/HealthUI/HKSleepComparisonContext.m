@interface HKSleepComparisonContext
@end

@implementation HKSleepComparisonContext

HKInteractiveChartSinglePointEventIdentifierData *__151___HKSleepComparisonContext__generateSleepDistributionDisplayTypeForStackedSampleType_currentCalendarOverride_overlayChartController_applicationItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    v9 = a3;
    v10 = a2;
    v6 = objc_alloc_init(HKInteractiveChartSinglePointEventIdentifierData);
    v11 = [v10 minimumValue];
    [v11 doubleValueForUnit:v9];
    [(HKInteractiveChartSinglePointData *)v6 setMinValue:?];

    v12 = [v10 maximumValue];
    [v12 doubleValueForUnit:v9];
    [(HKInteractiveChartSinglePointData *)v6 setMaxValue:?];

    [(HKInteractiveChartSinglePointData *)v6 setUnit:v9];
    [(HKInteractiveChartSinglePointData *)v6 setRepresentsRange:1];
    v13 = [v10 contextIdentifiers];

    [(HKInteractiveChartSinglePointEventIdentifierData *)v6 setIdentifiers:v13];
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = objc_alloc_init(HKInteractiveChartSinglePointData);
    v7 = [v5 minimumValue];
    [v7 doubleValueForUnit:v4];
    [(HKInteractiveChartSinglePointData *)v6 setMinValue:?];

    v8 = [v5 maximumValue];

    [v8 doubleValueForUnit:v4];
    [(HKInteractiveChartSinglePointData *)v6 setMaxValue:?];

    [(HKInteractiveChartSinglePointData *)v6 setUnit:v4];
    [(HKInteractiveChartSinglePointData *)v6 setRepresentsRange:1];
  }

  return v6;
}

@end