@interface HKAbstractFixedAxisScalingRule
- (HKAbstractFixedAxisScalingRule)init;
- (id)_valueRangeForZoomLevel:(int64_t)level;
- (id)yValueRangeForRange:(id)range zoomLevel:(int64_t)level;
@end

@implementation HKAbstractFixedAxisScalingRule

- (HKAbstractFixedAxisScalingRule)init
{
  v3.receiver = self;
  v3.super_class = HKAbstractFixedAxisScalingRule;
  result = [(HKAbstractFixedAxisScalingRule *)&v3 init];
  if (result)
  {
    result->_shouldExpandBoundsForOutliers = 1;
  }

  return result;
}

- (id)yValueRangeForRange:(id)range zoomLevel:(int64_t)level
{
  rangeCopy = range;
  v7 = [(HKAbstractFixedAxisScalingRule *)self _valueRangeForZoomLevel:level];
  v8 = v7;
  if (self->_shouldExpandBoundsForOutliers)
  {
    [v7 unionRange:rangeCopy];
  }

  minimumValue = self->_minimumValue;
  if (minimumValue)
  {
    minValue = [v8 minValue];
    v11 = [(NSNumber *)minimumValue compare:minValue];

    if (v11 == 1)
    {
      [v8 setMinValue:self->_minimumValue];
    }
  }

  maximumValue = self->_maximumValue;
  if (maximumValue)
  {
    maxValue = [v8 maxValue];
    v14 = [(NSNumber *)maximumValue compare:maxValue];

    if (v14 == -1)
    {
      [v8 setMaxValue:self->_maximumValue];
    }
  }

  return v8;
}

- (id)_valueRangeForZoomLevel:(int64_t)level
{
  axisBoundsOverrides = self->_axisBoundsOverrides;
  if (!axisBoundsOverrides || ([MEMORY[0x1E696AD98] numberWithInteger:level], v5 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKeyedSubscript:](axisBoundsOverrides, "objectForKeyedSubscript:", v5), v6 = objc_claimAutoreleasedReturnValue(), v5, (defaultAxisBounds = v6) == 0))
  {
    v6 = 0;
    defaultAxisBounds = self->_defaultAxisBounds;
  }

  v8 = defaultAxisBounds;

  v9 = [(HKValueRange *)v8 copy];

  return v9;
}

@end