@interface FIUIWorkoutLapLengthIndexTranslator
- (FIUIWorkoutLapLengthIndexTranslator)initWithDistanceUnit:(id)unit;
- (double)valueForIndex:(int64_t)index;
- (double)valueTranslatedFromDistanceUnit:(double)unit;
- (double)valueTranslatedIntoDistanceUnit:(double)unit;
- (int64_t)indexForValue:(double)value;
@end

@implementation FIUIWorkoutLapLengthIndexTranslator

- (FIUIWorkoutLapLengthIndexTranslator)initWithDistanceUnit:(id)unit
{
  unitCopy = unit;
  v9.receiver = self;
  v9.super_class = FIUIWorkoutLapLengthIndexTranslator;
  v6 = [(FIUIWorkoutLapLengthIndexTranslator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_distanceUnit, unit);
  }

  return v7;
}

- (double)valueTranslatedIntoDistanceUnit:(double)unit
{
  distanceUnit = [(FIUIWorkoutLapLengthIndexTranslator *)self distanceUnit];
  meterUnit = [MEMORY[0x1E696C510] meterUnit];
  v7 = [distanceUnit isEqual:meterUnit];

  if ((v7 & 1) == 0)
  {
    distanceUnit2 = [(FIUIWorkoutLapLengthIndexTranslator *)self distanceUnit];
    yardUnit = [MEMORY[0x1E696C510] yardUnit];
    v10 = [distanceUnit2 isEqual:yardUnit];

    if (v10)
    {
      return unit * 0.9144;
    }

    else
    {
      v11 = MEMORY[0x1E696C348];
      distanceUnit3 = [(FIUIWorkoutLapLengthIndexTranslator *)self distanceUnit];
      v13 = [v11 quantityWithUnit:distanceUnit3 doubleValue:unit];

      meterUnit2 = [MEMORY[0x1E696C510] meterUnit];
      [v13 doubleValueForUnit:meterUnit2];
      unit = v15;
    }
  }

  return unit;
}

- (double)valueTranslatedFromDistanceUnit:(double)unit
{
  distanceUnit = [(FIUIWorkoutLapLengthIndexTranslator *)self distanceUnit];
  meterUnit = [MEMORY[0x1E696C510] meterUnit];
  v7 = [distanceUnit isEqual:meterUnit];

  if ((v7 & 1) == 0)
  {
    distanceUnit2 = [(FIUIWorkoutLapLengthIndexTranslator *)self distanceUnit];
    yardUnit = [MEMORY[0x1E696C510] yardUnit];
    v10 = [distanceUnit2 isEqual:yardUnit];

    if (v10)
    {
      return unit / 0.9144;
    }

    else
    {
      v11 = MEMORY[0x1E696C348];
      meterUnit2 = [MEMORY[0x1E696C510] meterUnit];
      v13 = [v11 quantityWithUnit:meterUnit2 doubleValue:unit];

      distanceUnit3 = [(FIUIWorkoutLapLengthIndexTranslator *)self distanceUnit];
      [v13 doubleValueForUnit:distanceUnit3];
      unit = v15;
    }
  }

  return unit;
}

- (double)valueForIndex:(int64_t)index
{
  indexCopy = index;
  if (index > 34)
  {
    indexCopy = index + -1.0;
  }

  if (index == 34)
  {
    indexCopy = 33.3333333;
  }

  [(FIUIWorkoutLapLengthIndexTranslator *)self valueTranslatedIntoDistanceUnit:indexCopy];
  return result;
}

- (int64_t)indexForValue:(double)value
{
  [(FIUIWorkoutLapLengthIndexTranslator *)self valueTranslatedFromDistanceUnit:value];
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