@interface FIUIWorkoutSwimmingSet
+ (id)_decimalNumberFormatter;
- (double)_activeDuration;
- (double)_restingDuration;
- (id)description;
- (id)formattedActiveDurationWithFormattingManager:(id)manager;
- (id)formattedDistanceValueWithFormattingManager:(id)manager;
- (id)formattedDominantStrokeStyle;
- (id)formattedPaceUsingFormatType:(int64_t)type formattingManager:(id)manager;
- (id)formattedRestDurationWithFormattingManager:(id)manager;
- (id)formattedStrokeCountUsingFormatType:(int64_t)type formattingManager:(id)manager;
@end

@implementation FIUIWorkoutSwimmingSet

- (double)_activeDuration
{
  movementEndDate = [(FIUIWorkoutSwimmingSet *)self movementEndDate];
  startDate = [(FIUIWorkoutSwimmingSet *)self startDate];
  [movementEndDate timeIntervalSinceDate:startDate];
  v6 = v5;

  return v6;
}

- (double)_restingDuration
{
  endDate = [(FIUIWorkoutSwimmingSet *)self endDate];
  movementEndDate = [(FIUIWorkoutSwimmingSet *)self movementEndDate];
  [endDate timeIntervalSinceDate:movementEndDate];
  v6 = v5;

  return v6;
}

- (id)formattedActiveDurationWithFormattingManager:(id)manager
{
  managerCopy = manager;
  [(FIUIWorkoutSwimmingSet *)self _activeDuration];
  v5 = [managerCopy stringWithDuration:3 durationFormat:?];

  return v5;
}

- (id)formattedRestDurationWithFormattingManager:(id)manager
{
  managerCopy = manager;
  [(FIUIWorkoutSwimmingSet *)self _restingDuration];
  v5 = [managerCopy stringWithDuration:3 durationFormat:?];

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

- (id)formattedDistanceValueWithFormattingManager:(id)manager
{
  managerCopy = manager;
  distance = [(FIUIWorkoutSwimmingSet *)self distance];
  meterUnit = [MEMORY[0x1E696C510] meterUnit];
  [distance doubleValueForUnit:meterUnit];
  v7 = [managerCopy localizedStringWithDistanceInMeters:3 distanceType:1 unitStyle:?];

  return v7;
}

- (id)formattedPaceUsingFormatType:(int64_t)type formattingManager:(id)manager
{
  managerCopy = manager;
  [(FIUIWorkoutSwimmingSet *)self _activeDuration];
  v8 = v7;
  distance = [(FIUIWorkoutSwimmingSet *)self distance];
  v10 = [managerCopy localizedSwimmingPaceStringWithDistance:distance overDuration:type paceFormat:v8];

  return v10;
}

- (id)formattedStrokeCountUsingFormatType:(int64_t)type formattingManager:(id)manager
{
  managerCopy = manager;
  strokeCount = [(FIUIWorkoutSwimmingSet *)self strokeCount];
  distance = [(FIUIWorkoutSwimmingSet *)self distance];
  v9 = [managerCopy localizedStrokeCountStringWithCount:strokeCount overDistance:distance paceFormat:type];

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
  startDate = [(FIUIWorkoutSwimmingSet *)self startDate];
  endDate = [(FIUIWorkoutSwimmingSet *)self endDate];
  distance = [(FIUIWorkoutSwimmingSet *)self distance];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FIUIWorkoutSwimmingSet strokeCount](self, "strokeCount")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FIUIWorkoutSwimmingSet dominantStrokeStyle](self, "dominantStrokeStyle")}];
  v10 = [v3 stringWithFormat:@"%@: Start: %@ End: %@; Distance: %@; Stroke Count: %@; Stroke Style: %@", v4, startDate, endDate, distance, v8, v9];;

  return v10;
}

@end