@interface HKActivitySummary(Fitness)
- (uint64_t)isNoticeablyDifferentFromActivitySummary:()Fitness comparingGoalTypes:userActiveEnergyBurnedUnit:requiredDelta:;
@end

@implementation HKActivitySummary(Fitness)

- (uint64_t)isNoticeablyDifferentFromActivitySummary:()Fitness comparingGoalTypes:userActiveEnergyBurnedUnit:requiredDelta:
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v10)
  {
    goto LABEL_26;
  }

  if (v11 && ([v11 containsObject:&unk_285E6A008] & 1) == 0)
  {
    if (![v11 containsObject:&unk_285E6A020])
    {
      goto LABEL_19;
    }

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  if ([self activityMoveMode] == 2)
  {
    minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
  }

  else
  {
    minuteUnit = v12;
  }

  v15 = minuteUnit;
  if ([self activityMoveMode] == 2)
  {
    [self appleMoveTime];
  }

  else
  {
    [self activeEnergyBurned];
  }
  v16 = ;
  if ([self activityMoveMode] == 2)
  {
    [v10 appleMoveTime];
  }

  else
  {
    [v10 activeEnergyBurned];
  }
  v17 = ;
  [v16 doubleValueForUnit:v15];
  v19 = v18;
  [v17 doubleValueForUnit:v15];
  v20 = v19;
  *&v21 = v21;
  *&v19 = vabds_f32(floorf(v20), floorf(*&v21));

  if (*&v19 >= a2)
  {
    goto LABEL_26;
  }

  if (v13)
  {
    v22 = 1;
    goto LABEL_21;
  }

LABEL_19:
  if (![v11 containsObject:&unk_285E6A038])
  {
    goto LABEL_23;
  }

  v22 = 0;
LABEL_21:
  minuteUnit2 = [MEMORY[0x277CCDAB0] minuteUnit];
  appleExerciseTime = [self appleExerciseTime];
  [appleExerciseTime doubleValueForUnit:minuteUnit2];
  v26 = v25;

  appleExerciseTime2 = [v10 appleExerciseTime];
  [appleExerciseTime2 doubleValueForUnit:minuteUnit2];
  v29 = v28;

  v30 = v26;
  v31 = v29;
  *&v26 = vabds_f32(floorf(v30), floorf(v31));

  if (*&v26 >= a2)
  {
    goto LABEL_26;
  }

  if (v22)
  {
LABEL_24:
    countUnit = [MEMORY[0x277CCDAB0] countUnit];
    appleStandHours = [self appleStandHours];
    [appleStandHours doubleValueForUnit:countUnit];
    v35 = v34;

    appleStandHours2 = [v10 appleStandHours];
    [appleStandHours2 doubleValueForUnit:countUnit];
    v38 = v37;

    v39 = v35;
    v40 = v38;
    *&v35 = vabds_f32(floorf(v39), floorf(v40));

    if (*&v35 < a2)
    {
      goto LABEL_25;
    }

LABEL_26:
    v41 = 1;
    goto LABEL_27;
  }

LABEL_23:
  if ([v11 containsObject:&unk_285E6A050])
  {
    goto LABEL_24;
  }

LABEL_25:
  v41 = 0;
LABEL_27:

  return v41;
}

@end