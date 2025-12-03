@interface _GoalDetailCollator
- (_GoalDetailCollator)init;
- (id)activitySummaryDetailStringWithActivitySummary:(id)summary unitPreferenceController:(id)controller activityValue:(int64_t)value displayTypeController:(id)typeController;
- (id)detailStringWithTimeScope:(int64_t)scope;
- (void)processCoordinateUserInfo:(id)info;
@end

@implementation _GoalDetailCollator

- (_GoalDetailCollator)init
{
  v3.receiver = self;
  v3.super_class = _GoalDetailCollator;
  result = [(_GoalDetailCollator *)&v3 init];
  if (result)
  {
    result->_entryCount = 0;
    result->_entriesExceedingGoal = 0;
    result->_totalPercentFromGoal = 0.0;
  }

  return result;
}

- (void)processCoordinateUserInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = infoCopy;
  if (isKindOfClass)
  {
    v6 = infoCopy;
    activitySummaryData = [v6 activitySummaryData];
    if ([v6 activityPaused])
    {
LABEL_18:

      v5 = infoCopy;
      goto LABEL_19;
    }

    activityValue = [v6 activityValue];
    _unit = 0;
    if (activityValue > 1)
    {
      if (activityValue == 2)
      {
        appleExerciseTime = [activitySummaryData appleExerciseTime];
        _unit = [appleExerciseTime _unit];

        appleExerciseTime2 = [activitySummaryData appleExerciseTime];
        [appleExerciseTime2 doubleValueForUnit:_unit];
        v13 = v23;

        exerciseTimeGoal = [activitySummaryData exerciseTimeGoal];
        goto LABEL_12;
      }

      if (activityValue == 3)
      {
        appleStandHours = [activitySummaryData appleStandHours];
        _unit = [appleStandHours _unit];

        appleStandHours2 = [activitySummaryData appleStandHours];
        [appleStandHours2 doubleValueForUnit:_unit];
        v13 = v17;

        exerciseTimeGoal = [activitySummaryData standHoursGoal];
        goto LABEL_12;
      }
    }

    else
    {
      if (!activityValue)
      {
        activeEnergyBurned = [activitySummaryData activeEnergyBurned];
        _unit = [activeEnergyBurned _unit];

        activeEnergyBurned2 = [activitySummaryData activeEnergyBurned];
        [activeEnergyBurned2 doubleValueForUnit:_unit];
        v13 = v20;

        exerciseTimeGoal = [activitySummaryData activeEnergyBurnedGoal];
        goto LABEL_12;
      }

      if (activityValue == 1)
      {
        appleMoveTime = [activitySummaryData appleMoveTime];
        _unit = [appleMoveTime _unit];

        appleMoveTime2 = [activitySummaryData appleMoveTime];
        [appleMoveTime2 doubleValueForUnit:_unit];
        v13 = v12;

        exerciseTimeGoal = [activitySummaryData appleMoveTimeGoal];
LABEL_12:
        v24 = exerciseTimeGoal;
        [exerciseTimeGoal doubleValueForUnit:_unit];
        v26 = v25;

        if (_unit)
        {
          ++self->_entryCount;
          if (v26 > 0.0)
          {
            v27 = v13 / v26 + -1.0;
            if (v27 >= 0.0)
            {
              ++self->_entriesExceedingGoal;
            }

            self->_totalPercentFromGoal = v27 + self->_totalPercentFromGoal;
          }
        }
      }
    }

    goto LABEL_18;
  }

LABEL_19:

  MEMORY[0x1EEE66BB8](isKindOfClass, v5);
}

- (id)activitySummaryDetailStringWithActivitySummary:(id)summary unitPreferenceController:(id)controller activityValue:(int64_t)value displayTypeController:(id)typeController
{
  summaryCopy = summary;
  controllerCopy = controller;
  typeControllerCopy = typeController;
  v12 = &stru_1F42FFBE0;
  if (value <= 1)
  {
    if (!value)
    {
      v29 = _DisplayTypeForActivityValue(0, typeControllerCopy);
      _unit = [controllerCopy unitForDisplayType:v29];

      activeEnergyBurned = [summaryCopy activeEnergyBurned];
      v17 = _HKWorkoutFlooredValueForQuantity();

      activeEnergyBurnedGoal = [summaryCopy activeEnergyBurnedGoal];
      v24 = _HKWorkoutFlooredValueForQuantity();
      goto LABEL_12;
    }

    if (value != 1)
    {
      goto LABEL_17;
    }

    appleMoveTime = [summaryCopy appleMoveTime];
    _unit = [appleMoveTime _unit];

    appleMoveTime2 = [summaryCopy appleMoveTime];
    [appleMoveTime2 doubleValueForUnit:_unit];
    v17 = v16;

    appleMoveTimeGoal = [summaryCopy appleMoveTimeGoal];
LABEL_11:
    activeEnergyBurnedGoal = appleMoveTimeGoal;
    [appleMoveTimeGoal doubleValueForUnit:_unit];
    v24 = v35;
LABEL_12:

    if (!_unit)
    {
      goto LABEL_17;
    }

    v36 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
    v28 = [controllerCopy localizedDisplayNameForUnit:_unit value:v36];

    v47 = typeControllerCopy;
    if (!value)
    {
      v37 = HKActiveEnergyIntegerNumberFormatter();
      goto LABEL_16;
    }

LABEL_14:
    v37 = HKIntegerFormatter();
LABEL_16:
    v38 = v37;
    v39 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
    v40 = [v38 stringFromNumber:v39];

    v41 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
    v42 = [v38 stringFromNumber:v41];

    v43 = MEMORY[0x1E696AEC0];
    v44 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v45 = [v44 localizedStringForKey:@"ACTIVITY_GOAL_IN_LEGEND %@ %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v12 = [v43 stringWithFormat:v45, v40, v42, v28];

    typeControllerCopy = v47;
    goto LABEL_17;
  }

  if (value == 2)
  {
    appleExerciseTime = [summaryCopy appleExerciseTime];
    _unit = [appleExerciseTime _unit];

    appleExerciseTime2 = [summaryCopy appleExerciseTime];
    [appleExerciseTime2 doubleValueForUnit:_unit];
    v17 = v34;

    appleMoveTimeGoal = [summaryCopy exerciseTimeGoal];
    goto LABEL_11;
  }

  if (value == 3)
  {
    appleStandHours = [summaryCopy appleStandHours];
    _unit = [appleStandHours _unit];

    appleStandHours2 = [summaryCopy appleStandHours];
    [appleStandHours2 doubleValueForUnit:_unit];
    v17 = v21;

    standHoursGoal = [summaryCopy standHoursGoal];
    [standHoursGoal doubleValueForUnit:_unit];
    v24 = v23;

    if (_unit)
    {
      v47 = typeControllerCopy;
      v25 = MEMORY[0x1E696AEC0];
      v26 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v27 = [v26 localizedStringForKey:@"HOURS_MEDIUM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v28 = [v25 localizedStringWithFormat:v27];

      goto LABEL_14;
    }
  }

LABEL_17:

  return v12;
}

- (id)detailStringWithTimeScope:(int64_t)scope
{
  if (self->_entryCount < 1)
  {
    goto LABEL_5;
  }

  if (scope > 8)
  {
    v3 = 0;
  }

  else
  {
    if (((1 << scope) & 0xF) != 0 || ((1 << scope) & 0x1C0) != 0)
    {
LABEL_5:
      v3 = &stru_1F42FFBE0;
      goto LABEL_6;
    }

    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:@"DAYS_EXCEEDING_GOAL %ld %ld" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v3 = [v6 localizedStringWithFormat:v8, self->_entriesExceedingGoal, self->_entryCount];
  }

LABEL_6:

  return v3;
}

@end