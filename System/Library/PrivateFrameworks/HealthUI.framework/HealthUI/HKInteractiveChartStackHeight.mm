@interface HKInteractiveChartStackHeight
- (HKInteractiveChartStackHeight)initWithKind:(unint64_t)kind heightValue:(double)value;
- (id)debugDescription;
@end

@implementation HKInteractiveChartStackHeight

- (HKInteractiveChartStackHeight)initWithKind:(unint64_t)kind heightValue:(double)value
{
  v7.receiver = self;
  v7.super_class = HKInteractiveChartStackHeight;
  result = [(HKInteractiveChartStackHeight *)&v7 init];
  if (result)
  {
    result->_kind = kind;
    result->_heightValue = value;
  }

  return result;
}

- (id)debugDescription
{
  kind = [(HKInteractiveChartStackHeight *)self kind];
  v4 = @"Unknown";
  if (kind == 1)
  {
    v4 = @"Points";
  }

  if (kind)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Ratio";
  }

  v6 = MEMORY[0x1E696AEC0];
  [(HKInteractiveChartStackHeight *)self heightValue];
  return [v6 stringWithFormat:@"%lg %@", v7, v5];
}

HKInteractiveChartStackHeight *__53__HKInteractiveChartStackHeight_percentStackHeights___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HKInteractiveChartStackHeight alloc];
  [v2 doubleValue];
  v5 = v4;

  v6 = [(HKInteractiveChartStackHeight *)v3 initWithKind:0 heightValue:v5];

  return v6;
}

@end