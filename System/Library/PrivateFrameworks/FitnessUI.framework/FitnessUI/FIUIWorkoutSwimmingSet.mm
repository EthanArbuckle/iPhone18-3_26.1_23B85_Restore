@interface FIUIWorkoutSwimmingSet
+ (id)_decimalNumberFormatter;
- (double)_activeDuration;
- (double)_restingDuration;
- (id)description;
- (id)formattedActiveDurationWithFormattingManager:(id)a3;
- (id)formattedDistanceValueWithFormattingManager:(id)a3;
- (id)formattedDominantStrokeStyle;
- (id)formattedPaceUsingFormatType:(int64_t)a3 formattingManager:(id)a4;
- (id)formattedRestDurationWithFormattingManager:(id)a3;
- (id)formattedStrokeCountUsingFormatType:(int64_t)a3 formattingManager:(id)a4;
@end

@implementation FIUIWorkoutSwimmingSet

- (double)_activeDuration
{
  v3 = [(FIUIWorkoutSwimmingSet *)self movementEndDate];
  v4 = [(FIUIWorkoutSwimmingSet *)self startDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (double)_restingDuration
{
  v3 = [(FIUIWorkoutSwimmingSet *)self endDate];
  v4 = [(FIUIWorkoutSwimmingSet *)self movementEndDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (id)formattedActiveDurationWithFormattingManager:(id)a3
{
  v4 = a3;
  [(FIUIWorkoutSwimmingSet *)self _activeDuration];
  v5 = [v4 stringWithDuration:3 durationFormat:?];

  return v5;
}

- (id)formattedRestDurationWithFormattingManager:(id)a3
{
  v4 = a3;
  [(FIUIWorkoutSwimmingSet *)self _restingDuration];
  v5 = [v4 stringWithDuration:3 durationFormat:?];

  return v5;
}

+ (id)_decimalNumberFormatter
{
  if (_decimalNumberFormatter_onceToken_0 != -1)
  {
    +[FIUIWorkoutSwimmingSet _decimalNumberFormatter];
  }

  v3 = _decimalNumberFormatter_formatter_0;

  return v3;
}

uint64_t __49__FIUIWorkoutSwimmingSet__decimalNumberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _decimalNumberFormatter_formatter_0;
  _decimalNumberFormatter_formatter_0 = v0;

  [_decimalNumberFormatter_formatter_0 setMinimumFractionDigits:0];
  [_decimalNumberFormatter_formatter_0 setMaximumFractionDigits:2];
  v2 = _decimalNumberFormatter_formatter_0;

  return [v2 setNumberStyle:1];
}

- (id)formattedDistanceValueWithFormattingManager:(id)a3
{
  v4 = a3;
  v5 = [(FIUIWorkoutSwimmingSet *)self distance];
  v6 = [MEMORY[0x1E696C510] meterUnit];
  [v5 doubleValueForUnit:v6];
  v7 = [v4 localizedStringWithDistanceInMeters:3 distanceType:1 unitStyle:?];

  return v7;
}

- (id)formattedPaceUsingFormatType:(int64_t)a3 formattingManager:(id)a4
{
  v6 = a4;
  [(FIUIWorkoutSwimmingSet *)self _activeDuration];
  v8 = v7;
  v9 = [(FIUIWorkoutSwimmingSet *)self distance];
  v10 = [v6 localizedSwimmingPaceStringWithDistance:v9 overDuration:a3 paceFormat:v8];

  return v10;
}

- (id)formattedStrokeCountUsingFormatType:(int64_t)a3 formattingManager:(id)a4
{
  v6 = a4;
  v7 = [(FIUIWorkoutSwimmingSet *)self strokeCount];
  v8 = [(FIUIWorkoutSwimmingSet *)self distance];
  v9 = [v6 localizedStrokeCountStringWithCount:v7 overDistance:v8 paceFormat:a3];

  return v9;
}

- (id)formattedDominantStrokeStyle
{
  [(FIUIWorkoutSwimmingSet *)self dominantStrokeStyle];

  return FIUILocalizedStrokeStyleName();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = FIUIWorkoutSwimmingSet;
  v4 = [(FIUIWorkoutSwimmingSet *)&v12 description];
  v5 = [(FIUIWorkoutSwimmingSet *)self startDate];
  v6 = [(FIUIWorkoutSwimmingSet *)self endDate];
  v7 = [(FIUIWorkoutSwimmingSet *)self distance];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FIUIWorkoutSwimmingSet strokeCount](self, "strokeCount")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FIUIWorkoutSwimmingSet dominantStrokeStyle](self, "dominantStrokeStyle")}];
  v10 = [v3 stringWithFormat:@"%@: Start: %@ End: %@; Distance: %@; Stroke Count: %@; Stroke Style: %@", v4, v5, v6, v7, v8, v9];;

  return v10;
}

@end