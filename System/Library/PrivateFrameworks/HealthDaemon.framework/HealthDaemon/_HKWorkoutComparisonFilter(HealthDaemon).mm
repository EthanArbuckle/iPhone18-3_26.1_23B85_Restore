@interface _HKWorkoutComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKWorkoutComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v5 = a3;
  v6 = [a1 keyPath];
  v7 = [v6 isEqualToString:*MEMORY[0x277CCC828]];

  if (v7)
  {
    if (!a1)
    {
      goto LABEL_17;
    }

    [a1 operatorType];
    v8 = HDSQLiteComparisonTypeForPredicateOperator();
    v9 = [a1 value];
    [v9 doubleValue];
    v10 = HDWorkoutEntityPredicateForDuration(v8);
LABEL_16:
    a1 = v10;

    goto LABEL_17;
  }

  v11 = [a1 keyPath];
  v12 = [v11 isEqualToString:*MEMORY[0x277CCC850]];

  if (v12)
  {
    if (!a1)
    {
      goto LABEL_17;
    }

    [a1 operatorType];
    v13 = HDSQLiteComparisonTypeForPredicateOperator();
    v9 = [a1 value];
    v10 = HDWorkoutEntityPredicateForTotalDistance(v13, v9);
    goto LABEL_16;
  }

  v14 = [a1 keyPath];
  v15 = [v14 isEqualToString:*MEMORY[0x277CCC858]];

  if (v15)
  {
    if (!a1)
    {
      goto LABEL_17;
    }

    [a1 operatorType];
    v16 = HDSQLiteComparisonTypeForPredicateOperator();
    v9 = [a1 value];
    v10 = HDWorkoutEntityPredicateForTotalEnergyBurned(v16, v9);
    goto LABEL_16;
  }

  v17 = [a1 keyPath];
  v18 = [v17 isEqualToString:*MEMORY[0x277CCC860]];

  if (v18)
  {
    if (!a1)
    {
      goto LABEL_17;
    }

    [a1 operatorType];
    v19 = HDSQLiteComparisonTypeForPredicateOperator();
    v9 = [a1 value];
    v10 = HDWorkoutEntityPredicateForTotalFlightsClimbed(v19, v9);
    goto LABEL_16;
  }

  v20 = [a1 keyPath];
  v21 = [v20 isEqualToString:*MEMORY[0x277CCC868]];

  if (v21)
  {
    if (!a1)
    {
      goto LABEL_17;
    }

    [a1 operatorType];
    v22 = HDSQLiteComparisonTypeForPredicateOperator();
    v9 = [a1 value];
    v10 = HDWorkoutEntityPredicateForTotalSwimmingStrokeCount(v22, v9);
    goto LABEL_16;
  }

  v24 = [a1 keyPath];
  v25 = [v24 isEqualToString:*MEMORY[0x277CCC870]];

  if (v25)
  {
    v26 = [(_HKWorkoutComparisonFilter *)a1 _predicateForWorkoutActivityType];
  }

  else
  {
    v27 = [a1 keyPath];
    v28 = [v27 isEqualToString:*MEMORY[0x277CCDF80]];

    if (v28)
    {
      v26 = [(_HKWorkoutComparisonFilter *)a1 _predicateForGoal];
    }

    else
    {
      v29 = [a1 keyPath];
      v30 = [v29 isEqualToString:*MEMORY[0x277CCDF88]];

      if (v30)
      {
        v26 = [(_HKWorkoutComparisonFilter *)a1 _predicateForGoalType];
      }

      else
      {
        v31 = [a1 keyPath];
        v32 = [v31 hasPrefix:*MEMORY[0x277CCC848]];

        if (v32)
        {
          v26 = [(_HKWorkoutComparisonFilter *)a1 _predicateForSumQuantity];
        }

        else
        {
          v33 = [a1 keyPath];
          v34 = [v33 hasPrefix:*MEMORY[0x277CCC840]];

          if (v34)
          {
            v26 = [(_HKWorkoutComparisonFilter *)a1 _predicateForMinimumQuantity];
          }

          else
          {
            v35 = [a1 keyPath];
            v36 = [v35 hasPrefix:*MEMORY[0x277CCC838]];

            if (v36)
            {
              v26 = [(_HKWorkoutComparisonFilter *)a1 _predicateForMaximumQuantity];
            }

            else
            {
              v37 = [a1 keyPath];
              v38 = [v37 hasPrefix:*MEMORY[0x277CCC820]];

              if (v38)
              {
                v26 = [(_HKWorkoutComparisonFilter *)a1 _predicateForAverageQuantity];
              }

              else
              {
                v39 = [a1 keyPath];
                v40 = [v39 isEqualToString:*MEMORY[0x277CCC7D8]];

                if (v40)
                {
                  [(_HKWorkoutComparisonFilter *)a1 _predicateForWorkoutActivityWithProfile:v5];
                }

                else
                {
                  v41 = [MEMORY[0x277CCA890] currentHandler];
                  [v41 handleFailureInMethod:a2 object:a1 file:@"_HKWorkoutComparisonFilter+HealthDaemon.m" lineNumber:80 description:@"Unreachable code has been executed"];

                  [MEMORY[0x277D10B70] falsePredicate];
                }
                v26 = ;
              }
            }
          }
        }
      }
    }
  }

  a1 = v26;
LABEL_17:

  return a1;
}

@end