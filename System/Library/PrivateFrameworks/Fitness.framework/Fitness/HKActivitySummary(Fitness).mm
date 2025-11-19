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

  if ([a1 activityMoveMode] == 2)
  {
    v14 = [MEMORY[0x277CCDAB0] minuteUnit];
  }

  else
  {
    v14 = v12;
  }

  v15 = v14;
  if ([a1 activityMoveMode] == 2)
  {
    [a1 appleMoveTime];
  }

  else
  {
    [a1 activeEnergyBurned];
  }
  v16 = ;
  if ([a1 activityMoveMode] == 2)
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
  v23 = [MEMORY[0x277CCDAB0] minuteUnit];
  v24 = [a1 appleExerciseTime];
  [v24 doubleValueForUnit:v23];
  v26 = v25;

  v27 = [v10 appleExerciseTime];
  [v27 doubleValueForUnit:v23];
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
    v32 = [MEMORY[0x277CCDAB0] countUnit];
    v33 = [a1 appleStandHours];
    [v33 doubleValueForUnit:v32];
    v35 = v34;

    v36 = [v10 appleStandHours];
    [v36 doubleValueForUnit:v32];
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