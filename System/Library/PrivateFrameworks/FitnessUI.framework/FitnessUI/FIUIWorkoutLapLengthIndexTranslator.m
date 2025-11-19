@interface FIUIWorkoutLapLengthIndexTranslator
- (FIUIWorkoutLapLengthIndexTranslator)initWithDistanceUnit:(id)a3;
- (double)valueForIndex:(int64_t)a3;
- (double)valueTranslatedFromDistanceUnit:(double)a3;
- (double)valueTranslatedIntoDistanceUnit:(double)a3;
- (int64_t)indexForValue:(double)a3;
@end

@implementation FIUIWorkoutLapLengthIndexTranslator

- (FIUIWorkoutLapLengthIndexTranslator)initWithDistanceUnit:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FIUIWorkoutLapLengthIndexTranslator;
  v6 = [(FIUIWorkoutLapLengthIndexTranslator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_distanceUnit, a3);
  }

  return v7;
}

- (double)valueTranslatedIntoDistanceUnit:(double)a3
{
  v5 = [(FIUIWorkoutLapLengthIndexTranslator *)self distanceUnit];
  v6 = [MEMORY[0x1E696C510] meterUnit];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [(FIUIWorkoutLapLengthIndexTranslator *)self distanceUnit];
    v9 = [MEMORY[0x1E696C510] yardUnit];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      return a3 * 0.9144;
    }

    else
    {
      v11 = MEMORY[0x1E696C348];
      v12 = [(FIUIWorkoutLapLengthIndexTranslator *)self distanceUnit];
      v13 = [v11 quantityWithUnit:v12 doubleValue:a3];

      v14 = [MEMORY[0x1E696C510] meterUnit];
      [v13 doubleValueForUnit:v14];
      a3 = v15;
    }
  }

  return a3;
}

- (double)valueTranslatedFromDistanceUnit:(double)a3
{
  v5 = [(FIUIWorkoutLapLengthIndexTranslator *)self distanceUnit];
  v6 = [MEMORY[0x1E696C510] meterUnit];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [(FIUIWorkoutLapLengthIndexTranslator *)self distanceUnit];
    v9 = [MEMORY[0x1E696C510] yardUnit];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      return a3 / 0.9144;
    }

    else
    {
      v11 = MEMORY[0x1E696C348];
      v12 = [MEMORY[0x1E696C510] meterUnit];
      v13 = [v11 quantityWithUnit:v12 doubleValue:a3];

      v14 = [(FIUIWorkoutLapLengthIndexTranslator *)self distanceUnit];
      [v13 doubleValueForUnit:v14];
      a3 = v15;
    }
  }

  return a3;
}

- (double)valueForIndex:(int64_t)a3
{
  v3 = a3;
  if (a3 > 34)
  {
    v3 = a3 + -1.0;
  }

  if (a3 == 34)
  {
    v3 = 33.3333333;
  }

  [(FIUIWorkoutLapLengthIndexTranslator *)self valueTranslatedIntoDistanceUnit:v3];
  return result;
}

- (int64_t)indexForValue:(double)a3
{
  [(FIUIWorkoutLapLengthIndexTranslator *)self valueTranslatedFromDistanceUnit:a3];
  if (fabs(v3 + -33.3333333) < 0.01)
  {
    return 34;
  }

  v5 = round(v3);
  if (v3 >= 33.3333333)
  {
    return (v5 + 1.0);
  }

  else
  {
    return v5;
  }
}

@end