@interface HKLevelCategoryChartPoint
- (NSString)description;
- (id)allYValues;
@end

@implementation HKLevelCategoryChartPoint

- (id)allYValues
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self->_yValue)
  {
    v4[0] = self->_yValue;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = HKLevelCategoryChartPoint;
  v4 = [(HKLevelCategoryChartPoint *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ { %@->%@ %@ %ld}", v4, self->_startDate, self->_endDate, self->_yValue, self->_pointStyle];

  return v5;
}

@end