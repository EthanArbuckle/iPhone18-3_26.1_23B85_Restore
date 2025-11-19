@interface FIUIFormattingManager
- (FIUIFormattingManager)init;
- (FIUIFormattingManager)initWithUnitManager:(id)a3;
- (id)localizedCompactGoalDescriptionForGoalType:(unint64_t)a3 goalValue:(double)a4 activityType:(id)a5;
- (id)localizedDepthUnit:(unint64_t)a3;
- (id)localizedGoalDescriptionForDive:(id)a3 outValue:(id *)a4;
- (id)localizedGoalDescriptionForGoalType:(unint64_t)a3 goalValue:(double)a4 activityType:(id)a5;
- (id)localizedGoalDescriptionForWorkout:(id)a3 withValue:(id *)a4 appendActivityType:(BOOL)a5;
- (id)localizedGoalUnitForWorkout:(id)a3;
- (id)localizedGoalValueForWorkout:(id)a3;
- (id)localizedPaceAndUnitStringForSpeed:(double)a3 activityType:(id)a4;
- (id)localizedPaceValueForSplit:(id)a3 activityType:(id)a4;
- (id)localizedSpeedUnitStringForActivityType:(id)a3;
- (id)localizedTitleForSplit:(id)a3 unit:(id)a4 lapIndex:(int64_t)a5 useShortFormat:(BOOL)a6;
- (id)localizedZeroDepthWithOutValue:(id *)a3;
@end

@implementation FIUIFormattingManager

- (FIUIFormattingManager)init
{
  v3 = objc_alloc_init(MEMORY[0x1E696C1C0]);
  v4 = [[FIUIUnitManager alloc] initWithHealthStore:v3];
  v5 = [(FIUIFormattingManager *)self initWithUnitManager:v4];

  return v5;
}

- (FIUIFormattingManager)initWithUnitManager:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = FIUIFormattingManager;
  v6 = [(FIUIFormattingManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_unitManager, a3);
    v8 = objc_alloc(MEMORY[0x1E699C9D0]);
    v9 = [v5 unitManager];
    v10 = [v8 initWithUnitManager:v9];
    formattingManager = v7->_formattingManager;
    v7->_formattingManager = v10;

    v12 = [[FIUIDepthFormatter alloc] initWithUnitManager:v5];
    depthFormatter = v7->_depthFormatter;
    v7->_depthFormatter = v12;
  }

  return v7;
}

- (id)localizedPaceAndUnitStringForSpeed:(double)a3 activityType:(id)a4
{
  formattingManager = self->_formattingManager;
  v6 = [a4 workoutActivityType];
  v7 = [(FIFormattingManager *)formattingManager localizedPaceAndUnitStringForSpeed:v6 activityType:a3];

  return v7;
}

- (id)localizedSpeedUnitStringForActivityType:(id)a3
{
  formattingManager = self->_formattingManager;
  v4 = [a3 workoutActivityType];
  v5 = [(FIFormattingManager *)formattingManager localizedSpeedUnitStringForActivityType:v4];

  return v5;
}

- (id)localizedGoalDescriptionForWorkout:(id)a3 withValue:(id *)a4 appendActivityType:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if ([v8 workoutActivityType] == 84)
  {
    [(FIUIFormattingManager *)self localizedGoalDescriptionForDive:v8 outValue:a4];
  }

  else
  {
    [(FIFormattingManager *)self->_formattingManager localizedGoalDescriptionForWorkout:v8 withValue:a4 appendActivityType:v5];
  }
  v9 = ;

  return v9;
}

- (id)localizedGoalValueForWorkout:(id)a3
{
  v4 = a3;
  if ([v4 workoutActivityType] == 84)
  {
    v5 = [(FIUIDepthFormatter *)self->_depthFormatter formatGoalValueForDive:v4];

    v6 = [v5 formattedString];
    v4 = v5;
  }

  else
  {
    v6 = [(FIFormattingManager *)self->_formattingManager localizedGoalValueForWorkout:v4];
  }

  return v6;
}

- (id)localizedGoalUnitForWorkout:(id)a3
{
  v4 = a3;
  if ([v4 workoutActivityType] == 84)
  {
    v5 = [(FIUIUnitManager *)self->_unitManager userDepthHKUnit];
    v6 = [MEMORY[0x1E696C510] meterUnit];
    if (v5 == v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    v8 = [(FIUIFormattingManager *)self localizedDepthUnit:v7];
  }

  else
  {
    v8 = [(FIFormattingManager *)self->_formattingManager localizedGoalUnitForWorkout:v4];
  }

  v9 = v8;

  return v9;
}

- (id)localizedCompactGoalDescriptionForGoalType:(unint64_t)a3 goalValue:(double)a4 activityType:(id)a5
{
  formattingManager = self->_formattingManager;
  v8 = [a5 workoutActivityType];
  v9 = [(FIFormattingManager *)formattingManager localizedCompactGoalDescriptionForGoalType:a3 goalValue:v8 activityType:a4];

  return v9;
}

- (id)localizedGoalDescriptionForGoalType:(unint64_t)a3 goalValue:(double)a4 activityType:(id)a5
{
  formattingManager = self->_formattingManager;
  v8 = [a5 workoutActivityType];
  v9 = [(FIFormattingManager *)formattingManager localizedGoalDescriptionForGoalType:a3 goalValue:v8 activityType:a4];

  return v9;
}

- (id)localizedPaceValueForSplit:(id)a3 activityType:(id)a4
{
  formattingManager = self->_formattingManager;
  v6 = a4;
  v7 = [a3 workoutSplit];
  v8 = [v6 workoutActivityType];

  v9 = [(FIFormattingManager *)formattingManager localizedPaceValueForSplit:v7 activityType:v8];

  return v9;
}

- (id)localizedTitleForSplit:(id)a3 unit:(id)a4 lapIndex:(int64_t)a5 useShortFormat:(BOOL)a6
{
  v6 = a6;
  formattingManager = self->_formattingManager;
  v10 = a4;
  v11 = [a3 workoutSplit];
  v12 = [(FIFormattingManager *)formattingManager localizedTitleForSplit:v11 unit:v10 lapIndex:a5 useShortFormat:v6];

  return v12;
}

- (id)localizedGoalDescriptionForDive:(id)a3 outValue:(id *)a4
{
  v5 = [(FIUIDepthFormatter *)self->_depthFormatter formatGoalValueForDive:a3];
  *a4 = [v5 valueString];
  v6 = [v5 formattedString];

  return v6;
}

- (id)localizedZeroDepthWithOutValue:(id *)a3
{
  v4 = [(FIUIDepthFormatter *)self->_depthFormatter formatZeroDepth];
  *a3 = [v4 valueString];
  v5 = [v4 formattedString];

  return v5;
}

- (id)localizedDepthUnit:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 5;
  }

  v4 = [(FIUIFormattingManager *)self localizedShortUnitStringForDistanceUnit:v3];
  v5 = [v4 localizedUppercaseString];

  return v5;
}

@end