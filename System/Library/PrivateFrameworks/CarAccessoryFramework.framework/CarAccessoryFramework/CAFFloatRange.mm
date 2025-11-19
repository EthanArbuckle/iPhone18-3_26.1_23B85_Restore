@interface CAFFloatRange
- (BOOL)valueIsInRange:(float)a3;
- (float)limitedValueForValue:(float)a3;
- (float)maximumValue;
- (float)minimumValue;
- (float)stepValue;
- (float)valueRoundedToNearestStepValue:(float)a3;
- (id)rangeDescription;
@end

@implementation CAFFloatRange

- (float)minimumValue
{
  v2 = [(CAFRange *)self minimum];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)maximumValue
{
  v2 = [(CAFRange *)self maximum];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)stepValue
{
  v2 = [(CAFRange *)self step];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (id)rangeDescription
{
  v3 = MEMORY[0x277CCACA8];
  [(CAFFloatRange *)self minimumValue];
  v5 = v4;
  [(CAFFloatRange *)self maximumValue];
  v7 = v6;
  [(CAFFloatRange *)self stepValue];
  return [v3 stringWithFormat:@"[%g..%g]x%g", *&v5, *&v7, v8];
}

- (BOOL)valueIsInRange:(float)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  LOBYTE(self) = [(CAFRange *)self isInRange:v4];

  return self;
}

- (float)valueRoundedToNearestStepValue:(float)a3
{
  [(CAFFloatRange *)self stepValue];
  if (v5 >= 0.0)
  {
    [(CAFFloatRange *)self stepValue];
    if (v6 <= 0.00000011921)
    {
      return a3;
    }
  }

  [(CAFFloatRange *)self minimumValue];
  v8 = a3 - v7;
  [(CAFFloatRange *)self stepValue];
  v10 = vcvtas_u32_f32(v8 / v9);
  [(CAFFloatRange *)self minimumValue];
  v12 = v11;
  [(CAFFloatRange *)self stepValue];
  return v12 + (v10 * v13);
}

- (float)limitedValueForValue:(float)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v5 = [(CAFRange *)self limitedToRange:v4];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

@end