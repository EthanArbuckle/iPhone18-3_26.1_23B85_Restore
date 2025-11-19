@interface HKInteractiveChartBaselineRelativeData
- (HKInteractiveChartBaselineRelativeData)init;
- (id)description;
@end

@implementation HKInteractiveChartBaselineRelativeData

- (HKInteractiveChartBaselineRelativeData)init
{
  v5.receiver = self;
  v5.super_class = HKInteractiveChartBaselineRelativeData;
  v2 = [(HKInteractiveChartBaselineRelativeData *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HKInteractiveChartBaselineRelativeData *)v2 setRelativeValueState:0];
  }

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v6.receiver = self;
  v6.super_class = HKInteractiveChartBaselineRelativeData;
  v3 = [(HKInteractiveChartSinglePointData *)&v6 description];
  v4 = [v2 stringWithFormat:@"%@ (relative)", v3];

  return v4;
}

@end