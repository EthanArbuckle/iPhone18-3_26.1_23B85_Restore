@interface FIUIFormattingManager
- (FIUIFormattingManager)init;
- (FIUIFormattingManager)initWithUnitManager:(id)manager;
- (id)localizedCompactGoalDescriptionForGoalType:(unint64_t)type goalValue:(double)value activityType:(id)activityType;
- (id)localizedDepthUnit:(unint64_t)unit;
- (id)localizedGoalDescriptionForDive:(id)dive outValue:(id *)value;
- (id)localizedGoalDescriptionForGoalType:(unint64_t)type goalValue:(double)value activityType:(id)activityType;
- (id)localizedGoalDescriptionForWorkout:(id)workout withValue:(id *)value appendActivityType:(BOOL)type;
- (id)localizedGoalUnitForWorkout:(id)workout;
- (id)localizedGoalValueForWorkout:(id)workout;
- (id)localizedPaceAndUnitStringForSpeed:(double)speed activityType:(id)type;
- (id)localizedPaceValueForSplit:(id)split activityType:(id)type;
- (id)localizedSpeedUnitStringForActivityType:(id)type;
- (id)localizedTitleForSplit:(id)split unit:(id)unit lapIndex:(int64_t)index useShortFormat:(BOOL)format;
- (id)localizedZeroDepthWithOutValue:(id *)value;
@end

@implementation FIUIFormattingManager

- (FIUIFormattingManager)init
{
  v3 = objc_alloc_init(MEMORY[0x1E696C1C0]);
  v4 = [[FIUIUnitManager alloc] initWithHealthStore:v3];
  v5 = [(FIUIFormattingManager *)self initWithUnitManager:v4];

  return v5;
}

- (FIUIFormattingManager)initWithUnitManager:(id)manager
{
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = FIUIFormattingManager;
  v6 = [(FIUIFormattingManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_unitManager, manager);
    v8 = objc_alloc(MEMORY[0x1E699C9D0]);
    unitManager = [managerCopy unitManager];
    v10 = [v8 initWithUnitManager:unitManager];
    formattingManager = v7->_formattingManager;
    v7->_formattingManager = v10;

    v12 = [[FIUIDepthFormatter alloc] initWithUnitManager:managerCopy];
    depthFormatter = v7->_depthFormatter;
    v7->_depthFormatter = v12;
  }

  return v7;
}

- (id)localizedPaceAndUnitStringForSpeed:(double)speed activityType:(id)type
{
  formattingManager = self->_formattingManager;
  workoutActivityType = [type workoutActivityType];
  v7 = [(FIFormattingManager *)formattingManager localizedPaceAndUnitStringForSpeed:workoutActivityType activityType:speed];

  return v7;
}

- (id)localizedSpeedUnitStringForActivityType:(id)type
{
  formattingManager = self->_formattingManager;
  workoutActivityType = [type workoutActivityType];
  v5 = [(FIFormattingManager *)formattingManager localizedSpeedUnitStringForActivityType:workoutActivityType];

  return v5;
}

- (id)localizedGoalDescriptionForWorkout:(id)workout withValue:(id *)value appendActivityType:(BOOL)type
{
  typeCopy = type;
  workoutCopy = workout;
  if ([workoutCopy workoutActivityType] == 84)
  {
    [(FIUIFormattingManager *)self localizedGoalDescriptionForDive:workoutCopy outValue:value];
  }

  else
  {
    [(FIFormattingManager *)self->_formattingManager localizedGoalDescriptionForWorkout:workoutCopy withValue:value appendActivityType:typeCopy];
  }
  v9 = ;

  return v9;
}

- (id)localizedGoalValueForWorkout:(id)workout
{
  workoutCopy = workout;
  if ([workoutCopy workoutActivityType] == 84)
  {
    v5 = [(FIUIDepthFormatter *)self->_depthFormatter formatGoalValueForDive:workoutCopy];

    formattedString = [v5 formattedString];
    workoutCopy = v5;
  }

  else
  {
    formattedString = [(FIFormattingManager *)self->_formattingManager localizedGoalValueForWorkout:workoutCopy];
  }

  return formattedString;
}

- (id)localizedGoalUnitForWorkout:(id)workout
{
  workoutCopy = workout;
  if ([workoutCopy workoutActivityType] == 84)
  {
    userDepthHKUnit = [(FIUIUnitManager *)self->_unitManager userDepthHKUnit];
    meterUnit = [MEMORY[0x1E696C510] meterUnit];
    if (userDepthHKUnit == meterUnit)
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
    v8 = [(FIFormattingManager *)self->_formattingManager localizedGoalUnitForWorkout:workoutCopy];
  }

  v9 = v8;

  return v9;
}

- (id)localizedCompactGoalDescriptionForGoalType:(unint64_t)type goalValue:(double)value activityType:(id)activityType
{
  formattingManager = self->_formattingManager;
  workoutActivityType = [activityType workoutActivityType];
  v9 = [(FIFormattingManager *)formattingManager localizedCompactGoalDescriptionForGoalType:type goalValue:workoutActivityType activityType:value];

  return v9;
}

- (id)localizedGoalDescriptionForGoalType:(unint64_t)type goalValue:(double)value activityType:(id)activityType
{
  formattingManager = self->_formattingManager;
  workoutActivityType = [activityType workoutActivityType];
  v9 = [(FIFormattingManager *)formattingManager localizedGoalDescriptionForGoalType:type goalValue:workoutActivityType activityType:value];

  return v9;
}

- (id)localizedPaceValueForSplit:(id)split activityType:(id)type
{
  formattingManager = self->_formattingManager;
  typeCopy = type;
  workoutSplit = [split workoutSplit];
  workoutActivityType = [typeCopy workoutActivityType];

  v9 = [(FIFormattingManager *)formattingManager localizedPaceValueForSplit:workoutSplit activityType:workoutActivityType];

  return v9;
}

- (id)localizedTitleForSplit:(id)split unit:(id)unit lapIndex:(int64_t)index useShortFormat:(BOOL)format
{
  formatCopy = format;
  formattingManager = self->_formattingManager;
  unitCopy = unit;
  workoutSplit = [split workoutSplit];
  v12 = [(FIFormattingManager *)formattingManager localizedTitleForSplit:workoutSplit unit:unitCopy lapIndex:index useShortFormat:formatCopy];

  return v12;
}

- (id)localizedGoalDescriptionForDive:(id)dive outValue:(id *)value
{
  v5 = [(FIUIDepthFormatter *)self->_depthFormatter formatGoalValueForDive:dive];
  *value = [v5 valueString];
  formattedString = [v5 formattedString];

  return formattedString;
}

- (id)localizedZeroDepthWithOutValue:(id *)value
{
  formatZeroDepth = [(FIUIDepthFormatter *)self->_depthFormatter formatZeroDepth];
  *value = [formatZeroDepth valueString];
  formattedString = [formatZeroDepth formattedString];

  return formattedString;
}

- (id)localizedDepthUnit:(unint64_t)unit
{
  if (unit == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 5;
  }

  v4 = [(FIUIFormattingManager *)self localizedShortUnitStringForDistanceUnit:v3];
  localizedUppercaseString = [v4 localizedUppercaseString];

  return localizedUppercaseString;
}

@end