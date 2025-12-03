@interface HKHistogramChartDataSourceBin
- (HKHistogramChartDataSourceBin)initWithValues:(id)values;
- (NSArray)values;
- (NSNumber)averageValue;
- (NSNumber)maximumValue;
- (NSNumber)minimumValue;
- (NSNumber)sumValue;
@end

@implementation HKHistogramChartDataSourceBin

- (NSArray)values
{
  v2 = [(NSMutableArray *)self->_backingValues copy];

  return v2;
}

- (NSNumber)sumValue
{
  v2 = [(NSMutableArray *)self->_backingValues valueForKeyPath:@"@sum.doubleValue"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &unk_1F4382038;
  }

  v5 = v4;

  return v4;
}

- (NSNumber)averageValue
{
  v2 = [(NSMutableArray *)self->_backingValues valueForKeyPath:@"@avg.doubleValue"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &unk_1F4382038;
  }

  v5 = v4;

  return v4;
}

- (NSNumber)minimumValue
{
  v2 = [(NSMutableArray *)self->_backingValues valueForKeyPath:@"@min.doubleValue"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &unk_1F4382038;
  }

  v5 = v4;

  return v4;
}

- (NSNumber)maximumValue
{
  v2 = [(NSMutableArray *)self->_backingValues valueForKeyPath:@"@max.doubleValue"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &unk_1F4382038;
  }

  v5 = v4;

  return v4;
}

- (HKHistogramChartDataSourceBin)initWithValues:(id)values
{
  valuesCopy = values;
  v9.receiver = self;
  v9.super_class = HKHistogramChartDataSourceBin;
  v5 = [(HKHistogramChartDataSourceBin *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithArray:valuesCopy];
    backingValues = v5->_backingValues;
    v5->_backingValues = v6;
  }

  return v5;
}

@end