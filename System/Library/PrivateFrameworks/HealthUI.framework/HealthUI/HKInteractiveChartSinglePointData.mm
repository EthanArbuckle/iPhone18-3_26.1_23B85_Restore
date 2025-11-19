@interface HKInteractiveChartSinglePointData
- (NSString)description;
- (double)maxValue;
- (double)minValue;
@end

@implementation HKInteractiveChartSinglePointData

- (double)minValue
{
  v2 = 40;
  if (!self->_representsRange)
  {
    v2 = 16;
  }

  return *(&self->super.isa + v2);
}

- (double)maxValue
{
  v2 = 48;
  if (!self->_representsRange)
  {
    v2 = 16;
  }

  return *(&self->super.isa + v2);
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_representsRange)
  {
    [(HKInteractiveChartSinglePointData *)self minValue];
    v5 = v4;
    [(HKInteractiveChartSinglePointData *)self maxValue];
    v7 = v6;
    v8 = [(HKInteractiveChartSinglePointData *)self unit];
    v9 = [v8 unitString];
    [v3 stringWithFormat:@"HKInteractiveChartSinglePointData(%lg - %lg, %@)", v5, v7, v9];
  }

  else
  {
    [(HKInteractiveChartSinglePointData *)self value];
    v11 = v10;
    v8 = [(HKInteractiveChartSinglePointData *)self unit];
    v9 = [v8 unitString];
    [v3 stringWithFormat:@"HKInteractiveChartSinglePointData(%lg, %@)", v11, v9, v14];
  }
  v12 = ;

  return v12;
}

@end