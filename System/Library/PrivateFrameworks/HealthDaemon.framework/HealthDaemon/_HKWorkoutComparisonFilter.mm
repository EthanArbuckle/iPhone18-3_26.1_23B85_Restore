@interface _HKWorkoutComparisonFilter
- (id)_predicateForAverageQuantity;
- (id)_predicateForGoal;
- (id)_predicateForGoalType;
- (id)_predicateForMaximumQuantity;
- (id)_predicateForMinimumQuantity;
- (id)_predicateForSumQuantity;
- (id)_predicateForWorkoutActivityType;
- (id)_predicateForWorkoutActivityWithProfile:(id)profile;
@end

@implementation _HKWorkoutComparisonFilter

- (id)_predicateForWorkoutActivityType
{
  if (self)
  {
    value = [self value];
    v2 = HDWorkoutEntityPredicateForWorkoutActivityType([value integerValue]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_predicateForGoal
{
  if (self)
  {
    [self operatorType];
    v2 = HDSQLiteComparisonTypeForPredicateOperator();
    value = [self value];
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
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"_HKWorkoutGoalType _HKGoalTypeForQuantity(HKQuantity * _Nullable __strong)"];
        [currentHandler handleFailureInFunction:v7 file:@"_HKWorkoutComparisonFilter+HealthDaemon.m" lineNumber:40 description:@"Unreachable code has been executed"];

        v5 = 0;
        break;
      }
    }

    v8 = HDWorkoutEntityPredicateForWorkoutGoal(v2, v5, value);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_predicateForGoalType
{
  selfCopy = self;
  if (self)
  {
    [self operatorType];
    v2 = HDSQLiteComparisonTypeForPredicateOperator();
    value = [selfCopy value];
    selfCopy = HDWorkoutEntityPredicateForWorkoutGoalType(v2, [value integerValue]);
  }

  return selfCopy;
}

- (id)_predicateForSumQuantity
{
  selfCopy = self;
  if (self)
  {
    value = [self value];
    quantityType = [selfCopy quantityType];
    selfCopy = +[HDWorkoutStatisticsPredicate predicateForSumQuantity:quantityType:operatorType:](HDWorkoutStatisticsPredicate, "predicateForSumQuantity:quantityType:operatorType:", value, quantityType, [selfCopy operatorType]);
  }

  return selfCopy;
}

- (id)_predicateForMinimumQuantity
{
  selfCopy = self;
  if (self)
  {
    value = [self value];
    quantityType = [selfCopy quantityType];
    selfCopy = +[HDWorkoutStatisticsPredicate predicateForMinimumQuantity:quantityType:operatorType:](HDWorkoutStatisticsPredicate, "predicateForMinimumQuantity:quantityType:operatorType:", value, quantityType, [selfCopy operatorType]);
  }

  return selfCopy;
}

- (id)_predicateForMaximumQuantity
{
  selfCopy = self;
  if (self)
  {
    value = [self value];
    quantityType = [selfCopy quantityType];
    selfCopy = +[HDWorkoutStatisticsPredicate predicateForMaximumQuantity:quantityType:operatorType:](HDWorkoutStatisticsPredicate, "predicateForMaximumQuantity:quantityType:operatorType:", value, quantityType, [selfCopy operatorType]);
  }

  return selfCopy;
}

- (id)_predicateForAverageQuantity
{
  selfCopy = self;
  if (self)
  {
    value = [self value];
    quantityType = [selfCopy quantityType];
    selfCopy = +[HDWorkoutStatisticsPredicate predicateForAverageQuantity:quantityType:operatorType:](HDWorkoutStatisticsPredicate, "predicateForAverageQuantity:quantityType:operatorType:", value, quantityType, [selfCopy operatorType]);
  }

  return selfCopy;
}

- (id)_predicateForWorkoutActivityWithProfile:(id)profile
{
  profileCopy = profile;
  if (profile)
  {
    v3 = a2;
    subFilter = [profileCopy subFilter];
    v5 = [subFilter predicateWithProfile:v3];

    profileCopy = [HDWorkoutActivityPredicate predicateForSubPredicate:v5];
  }

  return profileCopy;
}

@end