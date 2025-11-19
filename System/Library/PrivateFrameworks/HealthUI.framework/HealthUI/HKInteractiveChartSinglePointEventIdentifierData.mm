@interface HKInteractiveChartSinglePointEventIdentifierData
- (id)description;
@end

@implementation HKInteractiveChartSinglePointEventIdentifierData

- (id)description
{
  v3 = [(HKInteractiveChartSinglePointEventIdentifierData *)self identifiers];

  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v11.receiver = self;
    v11.super_class = HKInteractiveChartSinglePointEventIdentifierData;
    v5 = [(HKInteractiveChartSinglePointData *)&v11 description];
    v6 = [(HKInteractiveChartSinglePointEventIdentifierData *)self identifiers];
    v7 = [v6 description];
    v8 = [v4 stringWithFormat:@"%@, identifiers: %@", v5, v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HKInteractiveChartSinglePointEventIdentifierData;
    v8 = [(HKInteractiveChartSinglePointData *)&v10 description];
  }

  return v8;
}

@end