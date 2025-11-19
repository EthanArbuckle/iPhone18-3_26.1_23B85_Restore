@interface _HKWorkoutActivityComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKWorkoutActivityComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v3 = a1;
  v4 = [a1 keyPath];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCC7E8]];

  if (v5)
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    [v3 operatorType];
    v6 = HDSQLiteComparisonTypeForPredicateOperator();
    v7 = [v3 value];
    [v7 doubleValue];
    v8 = HDWorkoutActivityEntityPredicateForDuration(v6);
    goto LABEL_4;
  }

  v9 = [v3 keyPath];
  v10 = [v9 isEqualToString:*MEMORY[0x277CCC818]];

  if (v10)
  {
    if (v3)
    {
      v11 = [v3 value];
      v3 = HDWorkoutActivityEntityPredicateForActivityType([v11 integerValue]);
    }

    goto LABEL_9;
  }

  v13 = [v3 keyPath];
  v14 = [v13 isEqualToString:*MEMORY[0x277CCC808]];

  if (v14)
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    [v3 operatorType];
    v15 = HDSQLiteComparisonTypeForPredicateOperator();
    v7 = [v3 value];
    v8 = HDWorkoutActivityEntityPredicateForStartDate(v15);
    goto LABEL_4;
  }

  v16 = [v3 keyPath];
  v17 = [v16 isEqualToString:*MEMORY[0x277CCC7F0]];

  if (v17)
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    [v3 operatorType];
    v18 = HDSQLiteComparisonTypeForPredicateOperator();
    v7 = [v3 value];
    v8 = HDWorkoutActivityEntityPredicateForEndDate(v18);
LABEL_4:
    v3 = v8;
LABEL_5:

    goto LABEL_9;
  }

  v19 = [v3 keyPath];
  v20 = [v19 hasPrefix:*MEMORY[0x277CCC810]];

  if (v20)
  {
    if (v3)
    {
      v7 = [v3 value];
      v21 = [v3 quantityType];
      v3 = +[HDWorkoutStatisticsPredicate predicateForSumQuantity:quantityType:operatorType:](HDWorkoutStatisticsPredicate, "predicateForSumQuantity:quantityType:operatorType:", v7, v21, [v3 operatorType]);

      goto LABEL_5;
    }
  }

  else
  {
    v22 = [v3 keyPath];
    v23 = [v22 hasPrefix:*MEMORY[0x277CCC800]];

    if (v23)
    {
      v24 = [(_HKWorkoutComparisonFilter *)v3 _predicateForMinimumQuantity];
    }

    else
    {
      v25 = [v3 keyPath];
      v26 = [v25 hasPrefix:*MEMORY[0x277CCC7F8]];

      if (v26)
      {
        v24 = [(_HKWorkoutComparisonFilter *)v3 _predicateForMaximumQuantity];
      }

      else
      {
        v27 = [v3 keyPath];
        v28 = [v27 hasPrefix:*MEMORY[0x277CCC7E0]];

        if (v28)
        {
          [(_HKWorkoutComparisonFilter *)v3 _predicateForAverageQuantity];
        }

        else
        {
          v29 = [MEMORY[0x277CCA890] currentHandler];
          [v29 handleFailureInMethod:a2 object:v3 file:@"_HKWorkoutActivityComparisonFilter+HealthDaemon.m" lineNumber:43 description:@"Unreachable code has been executed"];

          [MEMORY[0x277D10B70] falsePredicate];
        }
        v24 = ;
      }
    }

    v3 = v24;
  }

LABEL_9:

  return v3;
}

@end