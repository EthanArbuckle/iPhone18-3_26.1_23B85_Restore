@interface HKAbstractMinimumRangeScalingRule
- (HKAbstractMinimumRangeScalingRule)init;
- (double)_rangeForZoomLevel:(int64_t)level;
- (id)yValueRangeForRange:(id)range zoomLevel:(int64_t)level;
@end

@implementation HKAbstractMinimumRangeScalingRule

- (HKAbstractMinimumRangeScalingRule)init
{
  v3.receiver = self;
  v3.super_class = HKAbstractMinimumRangeScalingRule;
  return [(HKAbstractMinimumRangeScalingRule *)&v3 init];
}

- (id)yValueRangeForRange:(id)range zoomLevel:(int64_t)level
{
  rangeCopy = range;
  minValue = [rangeCopy minValue];
  [minValue doubleValue];
  v9 = v8;

  maxValue = [rangeCopy maxValue];

  [maxValue doubleValue];
  v12 = v11;

  [(HKAbstractMinimumRangeScalingRule *)self _rangeForZoomLevel:level];
  v14 = v13;
  anchorValue = self->_anchorValue;
  if (anchorValue)
  {
    [(NSNumber *)anchorValue doubleValue];
    v17 = v12 - v16;
    if (v12 - v16 < v16 - v9)
    {
      v17 = v16 - v9;
    }

    if (v17 < 0.0)
    {
      v17 = 0.0;
    }

    v9 = v16 - v17;
    v12 = v16 + v17;
  }

  axisBounds = self->_axisBounds;
  if (axisBounds)
  {
    minValue2 = [(HKValueRange *)axisBounds minValue];
    maxValue2 = [(HKValueRange *)self->_axisBounds maxValue];
    if (minValue2)
    {
      [minValue2 doubleValue];
      if (v9 < v21)
      {
        v9 = v21;
      }
    }

    if (maxValue2)
    {
      [maxValue2 doubleValue];
      if (v12 >= v22)
      {
        v12 = v22;
      }
    }
  }

  else
  {
    maxValue2 = 0;
    minValue2 = 0;
  }

  if (v12 - v9 < v14)
  {
    v23 = (v14 - (v12 - v9)) * 0.5;
    v9 = v9 - v23;
    v12 = v12 + v23;
    if (minValue2)
    {
      [minValue2 doubleValue];
      if (v9 < v24)
      {
        [minValue2 doubleValue];
        v26 = vabdd_f64(v9, v25);
        v9 = v9 + v26;
        v12 = v12 + v26;
      }
    }

    if (maxValue2)
    {
      [maxValue2 doubleValue];
      if (v12 > v27)
      {
        [maxValue2 doubleValue];
        v29 = vabdd_f64(v12, v28);
        v9 = v9 - v29;
        v12 = v12 - v29;
      }
    }
  }

  v30 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v31 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v32 = [HKValueRange valueRangeWithMinValue:v30 maxValue:v31];

  return v32;
}

- (double)_rangeForZoomLevel:(int64_t)level
{
  axisRangeOverrides = self->_axisRangeOverrides;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:level];
  v6 = [(NSDictionary *)axisRangeOverrides objectForKeyedSubscript:v5];

  if (v6)
  {
    [v6 doubleValue];
    defaultYAxisRange = v7;
  }

  else
  {
    defaultYAxisRange = self->_defaultYAxisRange;
  }

  return defaultYAxisRange;
}

@end