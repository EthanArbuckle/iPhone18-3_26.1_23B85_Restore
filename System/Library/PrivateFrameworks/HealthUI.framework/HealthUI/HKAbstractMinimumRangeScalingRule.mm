@interface HKAbstractMinimumRangeScalingRule
- (HKAbstractMinimumRangeScalingRule)init;
- (double)_rangeForZoomLevel:(int64_t)a3;
- (id)yValueRangeForRange:(id)a3 zoomLevel:(int64_t)a4;
@end

@implementation HKAbstractMinimumRangeScalingRule

- (HKAbstractMinimumRangeScalingRule)init
{
  v3.receiver = self;
  v3.super_class = HKAbstractMinimumRangeScalingRule;
  return [(HKAbstractMinimumRangeScalingRule *)&v3 init];
}

- (id)yValueRangeForRange:(id)a3 zoomLevel:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 minValue];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v6 maxValue];

  [v10 doubleValue];
  v12 = v11;

  [(HKAbstractMinimumRangeScalingRule *)self _rangeForZoomLevel:a4];
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
    v19 = [(HKValueRange *)axisBounds minValue];
    v20 = [(HKValueRange *)self->_axisBounds maxValue];
    if (v19)
    {
      [v19 doubleValue];
      if (v9 < v21)
      {
        v9 = v21;
      }
    }

    if (v20)
    {
      [v20 doubleValue];
      if (v12 >= v22)
      {
        v12 = v22;
      }
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  if (v12 - v9 < v14)
  {
    v23 = (v14 - (v12 - v9)) * 0.5;
    v9 = v9 - v23;
    v12 = v12 + v23;
    if (v19)
    {
      [v19 doubleValue];
      if (v9 < v24)
      {
        [v19 doubleValue];
        v26 = vabdd_f64(v9, v25);
        v9 = v9 + v26;
        v12 = v12 + v26;
      }
    }

    if (v20)
    {
      [v20 doubleValue];
      if (v12 > v27)
      {
        [v20 doubleValue];
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

- (double)_rangeForZoomLevel:(int64_t)a3
{
  axisRangeOverrides = self->_axisRangeOverrides;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
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