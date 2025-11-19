@interface _HKWorkoutComparisonFilter
- (id)_predicateForAverageQuantity;
- (id)_predicateForGoal;
- (id)_predicateForGoalType;
- (id)_predicateForMaximumQuantity;
- (id)_predicateForMinimumQuantity;
- (id)_predicateForSumQuantity;
- (id)_predicateForWorkoutActivityType;
- (id)_predicateForWorkoutActivityWithProfile:(id)a1;
@end

@implementation _HKWorkoutComparisonFilter

- (id)_predicateForWorkoutActivityType
{
  if (a1)
  {
    v1 = [a1 value];
    v2 = HDWorkoutEntityPredicateForWorkoutActivityType([v1 integerValue]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_predicateForGoal
{
  if (a1)
  {
    [a1 operatorType];
    v2 = HDSQLiteComparisonTypeForPredicateOperator();
    v3 = [a1 value];
    v4 = 0;
    while (1)
    {
      v5 = qword_229167628[v4];
      if (_HKWorkoutGoalTypeAcceptsQuantity())
      {
        break;
      }

      if (++v4 == 4)
      {
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"_HKWorkoutGoalType _HKGoalTypeForQuantity(HKQuantity * _Nullable __strong)"];
        [v6 handleFailureInFunction:v7 file:@"_HKWorkoutComparisonFilter+HealthDaemon.m" lineNumber:40 description:@"Unreachable code has been executed"];

        v5 = 0;
        break;
      }
    }

    v8 = HDWorkoutEntityPredicateForWorkoutGoal(v2, v5, v3);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_predicateForGoalType
{
  v1 = a1;
  if (a1)
  {
    [a1 operatorType];
    v2 = HDSQLiteComparisonTypeForPredicateOperator();
    v3 = [v1 value];
    v1 = HDWorkoutEntityPredicateForWorkoutGoalType(v2, [v3 integerValue]);
  }

  return v1;
}

- (id)_predicateForSumQuantity
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 value];
    v3 = [v1 quantityType];
    v1 = +[HDWorkoutStatisticsPredicate predicateForSumQuantity:quantityType:operatorType:](HDWorkoutStatisticsPredicate, "predicateForSumQuantity:quantityType:operatorType:", v2, v3, [v1 operatorType]);
  }

  return v1;
}

- (id)_predicateForMinimumQuantity
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 value];
    v3 = [v1 quantityType];
    v1 = +[HDWorkoutStatisticsPredicate predicateForMinimumQuantity:quantityType:operatorType:](HDWorkoutStatisticsPredicate, "predicateForMinimumQuantity:quantityType:operatorType:", v2, v3, [v1 operatorType]);
  }

  return v1;
}

- (id)_predicateForMaximumQuantity
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 value];
    v3 = [v1 quantityType];
    v1 = +[HDWorkoutStatisticsPredicate predicateForMaximumQuantity:quantityType:operatorType:](HDWorkoutStatisticsPredicate, "predicateForMaximumQuantity:quantityType:operatorType:", v2, v3, [v1 operatorType]);
  }

  return v1;
}

- (id)_predicateForAverageQuantity
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 value];
    v3 = [v1 quantityType];
    v1 = +[HDWorkoutStatisticsPredicate predicateForAverageQuantity:quantityType:operatorType:](HDWorkoutStatisticsPredicate, "predicateForAverageQuantity:quantityType:operatorType:", v2, v3, [v1 operatorType]);
  }

  return v1;
}

- (id)_predicateForWorkoutActivityWithProfile:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 subFilter];
    v5 = [v4 predicateWithProfile:v3];

    v2 = [HDWorkoutActivityPredicate predicateForSubPredicate:v5];
  }

  return v2;
}

@end