@interface _GoalDetailCollator
- (_GoalDetailCollator)init;
- (id)activitySummaryDetailStringWithActivitySummary:(id)a3 unitPreferenceController:(id)a4 activityValue:(int64_t)a5 displayTypeController:(id)a6;
- (id)detailStringWithTimeScope:(int64_t)a3;
- (void)processCoordinateUserInfo:(id)a3;
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

- (void)processCoordinateUserInfo:(id)a3
{
  v28 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v28;
  if (isKindOfClass)
  {
    v6 = v28;
    v7 = [v6 activitySummaryData];
    if ([v6 activityPaused])
    {
LABEL_18:

      v5 = v28;
      goto LABEL_19;
    }

    v8 = [v6 activityValue];
    v9 = 0;
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v21 = [v7 appleExerciseTime];
        v9 = [v21 _unit];

        v22 = [v7 appleExerciseTime];
        [v22 doubleValueForUnit:v9];
        v13 = v23;

        v14 = [v7 exerciseTimeGoal];
        goto LABEL_12;
      }

      if (v8 == 3)
      {
        v15 = [v7 appleStandHours];
        v9 = [v15 _unit];

        v16 = [v7 appleStandHours];
        [v16 doubleValueForUnit:v9];
        v13 = v17;

        v14 = [v7 standHoursGoal];
        goto LABEL_12;
      }
    }

    else
    {
      if (!v8)
      {
        v18 = [v7 activeEnergyBurned];
        v9 = [v18 _unit];

        v19 = [v7 activeEnergyBurned];
        [v19 doubleValueForUnit:v9];
        v13 = v20;

        v14 = [v7 activeEnergyBurnedGoal];
        goto LABEL_12;
      }

      if (v8 == 1)
      {
        v10 = [v7 appleMoveTime];
        v9 = [v10 _unit];

        v11 = [v7 appleMoveTime];
        [v11 doubleValueForUnit:v9];
        v13 = v12;

        v14 = [v7 appleMoveTimeGoal];
LABEL_12:
        v24 = v14;
        [v14 doubleValueForUnit:v9];
        v26 = v25;

        if (v9)
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

- (id)activitySummaryDetailStringWithActivitySummary:(id)a3 unitPreferenceController:(id)a4 activityValue:(int64_t)a5 displayTypeController:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = &stru_1F42FFBE0;
  if (a5 <= 1)
  {
    if (!a5)
    {
      v29 = _DisplayTypeForActivityValue(0, v11);
      v14 = [v10 unitForDisplayType:v29];

      v30 = [v9 activeEnergyBurned];
      v17 = _HKWorkoutFlooredValueForQuantity();

      v31 = [v9 activeEnergyBurnedGoal];
      v24 = _HKWorkoutFlooredValueForQuantity();
      goto LABEL_12;
    }

    if (a5 != 1)
    {
      goto LABEL_17;
    }

    v13 = [v9 appleMoveTime];
    v14 = [v13 _unit];

    v15 = [v9 appleMoveTime];
    [v15 doubleValueForUnit:v14];
    v17 = v16;

    v18 = [v9 appleMoveTimeGoal];
LABEL_11:
    v31 = v18;
    [v18 doubleValueForUnit:v14];
    v24 = v35;
LABEL_12:

    if (!v14)
    {
      goto LABEL_17;
    }

    v36 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
    v28 = [v10 localizedDisplayNameForUnit:v14 value:v36];

    v47 = v11;
    if (!a5)
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

    v11 = v47;
    goto LABEL_17;
  }

  if (a5 == 2)
  {
    v32 = [v9 appleExerciseTime];
    v14 = [v32 _unit];

    v33 = [v9 appleExerciseTime];
    [v33 doubleValueForUnit:v14];
    v17 = v34;

    v18 = [v9 exerciseTimeGoal];
    goto LABEL_11;
  }

  if (a5 == 3)
  {
    v19 = [v9 appleStandHours];
    v14 = [v19 _unit];

    v20 = [v9 appleStandHours];
    [v20 doubleValueForUnit:v14];
    v17 = v21;

    v22 = [v9 standHoursGoal];
    [v22 doubleValueForUnit:v14];
    v24 = v23;

    if (v14)
    {
      v47 = v11;
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

- (id)detailStringWithTimeScope:(int64_t)a3
{
  if (self->_entryCount < 1)
  {
    goto LABEL_5;
  }

  if (a3 > 8)
  {
    v3 = 0;
  }

  else
  {
    if (((1 << a3) & 0xF) != 0 || ((1 << a3) & 0x1C0) != 0)
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