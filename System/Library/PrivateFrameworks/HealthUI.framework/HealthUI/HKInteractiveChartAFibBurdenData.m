@interface HKInteractiveChartAFibBurdenData
- (HKInteractiveChartAFibBurdenData)init;
- (id)description;
@end

@implementation HKInteractiveChartAFibBurdenData

- (HKInteractiveChartAFibBurdenData)init
{
  v5.receiver = self;
  v5.super_class = HKInteractiveChartAFibBurdenData;
  v2 = [(HKInteractiveChartAFibBurdenData *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HKInteractiveChartAFibBurdenData *)v2 setClampsLowerData:0];
  }

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v6.receiver = self;
  v6.super_class = HKInteractiveChartAFibBurdenData;
  v3 = [(HKInteractiveChartSinglePointData *)&v6 description];
  v4 = [v2 stringWithFormat:@"%@, AFib Burden", v3];

  return v4;
}

@end