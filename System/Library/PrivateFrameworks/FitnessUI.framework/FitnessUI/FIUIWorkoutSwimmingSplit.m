@interface FIUIWorkoutSwimmingSplit
- (double)_fractionToFillTotalSplitDistance;
- (double)durationScaledToFillSplit;
- (id)description;
- (id)formattedPaceWithFormattingManager:(id)a3;
- (id)formattedStrokeCount;
@end

@implementation FIUIWorkoutSwimmingSplit

- (double)_fractionToFillTotalSplitDistance
{
  v3 = [(FIUIWorkoutSwimmingSplit *)self splitDistance];
  [(FIUIWorkoutSwimmingSplit *)self distanceInUserUnit];
  return v3 / v4;
}

- (double)durationScaledToFillSplit
{
  [(FIUIWorkoutSwimmingSplit *)self duration];
  v4 = v3;
  [(FIUIWorkoutSwimmingSplit *)self _fractionToFillTotalSplitDistance];
  return v4 * v5;
}

- (id)formattedStrokeCount
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FIUIWorkoutSwimmingSplit strokeCountScaledToFillSplit](self, "strokeCountScaledToFillSplit")}];
  v3 = [FIUIFormattingManager stringWithNumber:v2 decimalPrecision:1];

  return v3;
}

- (id)formattedPaceWithFormattingManager:(id)a3
{
  v4 = a3;
  [(FIUIWorkoutSwimmingSplit *)self durationScaledToFillSplit];
  v5 = [v4 stringWithDuration:1 durationFormat:?];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = FIUIWorkoutSwimmingSplit;
  v4 = [(FIUIWorkoutSwimmingSplit *)&v11 description];
  v5 = MEMORY[0x1E696AD98];
  [(FIUIWorkoutSwimmingSplit *)self duration];
  v6 = [v5 numberWithDouble:?];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FIUIWorkoutSwimmingSplit splitDistance](self, "splitDistance")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FIUIWorkoutSwimmingSplit strokeCount](self, "strokeCount")}];
  v9 = [v3 stringWithFormat:@"%@: %@ seconds, %@ m/yd, %@ strokes", v4, v6, v7, v8];

  return v9;
}

@end