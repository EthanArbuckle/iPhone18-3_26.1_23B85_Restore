@interface HKAxisLabelDimensionInteger
- (double)niceStepSizeLargerThan:(double)than;
- (id)formatterForLabelStepSize:(double)size;
@end

@implementation HKAxisLabelDimensionInteger

- (double)niceStepSizeLargerThan:(double)than
{
  if (than == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v4 = floor(log10(fabs(than)));
    if (v4 >= 0.0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0.0;
    }
  }

  v6 = __exp10(v5);
  v7 = than / v6;
  v8 = 5.0;
  if (v7 >= 5.0)
  {
    v8 = 1.0;
    v6 = __exp10(v5 + 1.0);
  }

  else if (v7 < 2.0)
  {
    if (v7 >= 1.0)
    {
      v8 = 2.0;
    }

    else
    {
      v8 = 1.0;
    }
  }

  return v8 * v6;
}

- (id)formatterForLabelStepSize:(double)size
{
  v5.receiver = self;
  v5.super_class = HKAxisLabelDimensionInteger;
  v3 = [(HKAxisLabelDimensionScalar *)&v5 formatterForLabelStepSize:size];
  [v3 setMinimumFractionDigits:0];
  [v3 setMaximumFractionDigits:0];

  return v3;
}

@end