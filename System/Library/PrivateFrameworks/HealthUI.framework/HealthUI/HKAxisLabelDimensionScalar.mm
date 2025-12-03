@interface HKAxisLabelDimensionScalar
+ (int64_t)_fractionDigitsForStep:(double)step;
- (double)niceStepSizeLargerThan:(double)than;
- (double)ticksPerStepSize:(double)size;
- (id)formatterForLabelStepSize:(double)size;
- (id)stringForLocation:(id)location formatterForStepSize:(id)size;
@end

@implementation HKAxisLabelDimensionScalar

- (double)niceStepSizeLargerThan:(double)than
{
  if (than == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = floor(log10(fabs(than)));
  }

  v5 = __exp10(v4);
  v6 = than / v5;
  v7 = 5.0;
  if (v6 >= 5.0)
  {
    v7 = 1.0;
    v5 = __exp10(v4 + 1.0);
  }

  else if (v6 < 2.5)
  {
    if (v6 >= 2.0)
    {
      v7 = 2.5;
    }

    else
    {
      v7 = 2.0;
    }
  }

  return v7 * v5;
}

- (double)ticksPerStepSize:(double)size
{
  if (size == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = floor(log10(fabs(size)));
  }

  v5 = size / __exp10(v4);
  result = 5.0;
  if (fabs(v5 + -5.0) >= 0.00000001 && fabs(v5 + -2.5) > 0.00000001)
  {
    return 4.0;
  }

  return result;
}

- (id)formatterForLabelStepSize:(double)size
{
  v3 = [HKAxisLabelDimensionScalar _fractionDigitsForStep:size];
  v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v4 setNumberStyle:1];
  [v4 setUsesGroupingSeparator:1];
  [v4 setMinimumFractionDigits:v3];
  [v4 setMaximumFractionDigits:v3];

  return v4;
}

- (id)stringForLocation:(id)location formatterForStepSize:(id)size
{
  sizeCopy = size;
  v6 = [sizeCopy stringFromNumber:location];
  v7 = [sizeCopy stringFromNumber:&unk_1F4384980];
  if ([v6 isEqualToString:v7])
  {
    v8 = [sizeCopy stringFromNumber:&unk_1F4384990];

    v6 = v8;
  }

  return v6;
}

+ (int64_t)_fractionDigitsForStep:(double)step
{
  if (step == 0.0)
  {
    return 0;
  }

  v5 = fabs(step);
  if (v5 >= 1.0)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v8 setNumberStyle:1];
    v3 = 0;
    while (1)
    {
      [v8 setMinimumFractionDigits:v3];
      [v8 setMaximumFractionDigits:v3];
      v9 = [MEMORY[0x1E696AD98] numberWithDouble:step];
      v10 = [v8 stringFromNumber:v9];

      v11 = [v8 numberFromString:v10];
      v12 = v11;
      if (!v11)
      {
        break;
      }

      [v11 doubleValue];
      if (vabdd_f64(step, v13) < 1.0e-10)
      {
        break;
      }

      ++v3;

      if (v3 == 15)
      {
        goto LABEL_11;
      }
    }

LABEL_11:
  }

  else
  {
    v7 = floor(log10(v5));
    return [self _fractionDigitsForStep:v5 / __exp10(v7)] + rint(-v7);
  }

  return v3;
}

@end