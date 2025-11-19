@interface FIUIWorkoutSegment
+ (id)_decimalNumberFormatter;
- (id)description;
- (id)formattedActiveEnergyValueForUnit:(id)a3;
- (id)formattedDistanceValueForUnit:(id)a3;
- (id)formattedDurationValueWithFormattingManager:(id)a3;
- (id)formattedPaceUsingFormatType:(int64_t)a3 formattingManager:(id)a4 distanceType:(unint64_t)a5;
@end

@implementation FIUIWorkoutSegment

- (id)formattedDurationValueWithFormattingManager:(id)a3
{
  v4 = a3;
  [(FIUIWorkoutSegment *)self elapsedTime];
  v5 = [v4 stringWithDuration:3 durationFormat:?];

  return v5;
}

- (id)formattedActiveEnergyValueForUnit:(id)a3
{
  v4 = a3;
  v5 = [(FIUIWorkoutSegment *)self activeEnergy];
  [v5 doubleValueForUnit:v4];
  v7 = v6;

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v9 = [FIUIFormattingManager stringWithNumber:v8 decimalPrecision:1];

  return v9;
}

+ (id)_decimalNumberFormatter
{
  if (_decimalNumberFormatter_onceToken != -1)
  {
    +[FIUIWorkoutSegment _decimalNumberFormatter];
  }

  v3 = _decimalNumberFormatter_formatter;

  return v3;
}

uint64_t __45__FIUIWorkoutSegment__decimalNumberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _decimalNumberFormatter_formatter;
  _decimalNumberFormatter_formatter = v0;

  [_decimalNumberFormatter_formatter setMinimumFractionDigits:0];
  [_decimalNumberFormatter_formatter setMaximumFractionDigits:2];
  v2 = _decimalNumberFormatter_formatter;

  return [v2 setNumberStyle:1];
}

- (id)formattedDistanceValueForUnit:(id)a3
{
  v4 = a3;
  v5 = [(FIUIWorkoutSegment *)self distance];
  [v5 doubleValueForUnit:v4];
  v7 = v6;

  v8 = [objc_opt_class() _decimalNumberFormatter];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v10 = [v8 stringFromNumber:v9];

  return v10;
}

- (id)formattedPaceUsingFormatType:(int64_t)a3 formattingManager:(id)a4 distanceType:(unint64_t)a5
{
  v8 = a4;
  [(FIUIWorkoutSegment *)self elapsedTime];
  v10 = v9;
  if (fabs(v9) < 2.22044605e-16)
  {
    v11 = [(FIUIWorkoutSegment *)self endDate];
    v12 = [(FIUIWorkoutSegment *)self startDate];
    [v11 timeIntervalSinceDate:v12];
    v10 = v13;
  }

  v14 = [(FIUIWorkoutSegment *)self distance];
  v15 = [v8 localizedPaceStringWithDistance:v14 overDuration:a3 paceFormat:a5 distanceType:v10];

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = FIUIWorkoutSegment;
  v4 = [(FIUIWorkoutSegment *)&v14 description];
  v5 = MEMORY[0x1E696AD98];
  [(FIUIWorkoutSegment *)self elapsedTime];
  v7 = [v5 numberWithDouble:v6 / 60.0];
  v8 = [MEMORY[0x1E696C510] kilocalorieUnit];
  v9 = [(FIUIWorkoutSegment *)self formattedActiveEnergyValueForUnit:v8];
  v10 = [MEMORY[0x1E696C510] mileUnit];
  v11 = [(FIUIWorkoutSegment *)self formattedDistanceValueForUnit:v10];
  v12 = [v3 stringWithFormat:@"%@: Duration: %@ min Energy: %@; Distance: %@", v4, v7, v9, v11];;

  return v12;
}

@end