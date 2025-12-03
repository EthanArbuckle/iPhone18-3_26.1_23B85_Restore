@interface _HKWorkoutActivityComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKWorkoutActivityComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  selfCopy = self;
  keyPath = [self keyPath];
  v5 = [keyPath isEqualToString:*MEMORY[0x277CCC7E8]];

  if (v5)
  {
    if (!selfCopy)
    {
      goto LABEL_9;
    }

    [selfCopy operatorType];
    v6 = HDSQLiteComparisonTypeForPredicateOperator();
    value = [selfCopy value];
    [value doubleValue];
    v8 = HDWorkoutActivityEntityPredicateForDuration(v6);
    goto LABEL_4;
  }

  keyPath2 = [selfCopy keyPath];
  v10 = [keyPath2 isEqualToString:*MEMORY[0x277CCC818]];

  if (v10)
  {
    if (selfCopy)
    {
      value2 = [selfCopy value];
      selfCopy = HDWorkoutActivityEntityPredicateForActivityType([value2 integerValue]);
    }

    goto LABEL_9;
  }

  keyPath3 = [selfCopy keyPath];
  v14 = [keyPath3 isEqualToString:*MEMORY[0x277CCC808]];

  if (v14)
  {
    if (!selfCopy)
    {
      goto LABEL_9;
    }

    [selfCopy operatorType];
    v15 = HDSQLiteComparisonTypeForPredicateOperator();
    value = [selfCopy value];
    v8 = HDWorkoutActivityEntityPredicateForStartDate(v15);
    goto LABEL_4;
  }

  keyPath4 = [selfCopy keyPath];
  v17 = [keyPath4 isEqualToString:*MEMORY[0x277CCC7F0]];

  if (v17)
  {
    if (!selfCopy)
    {
      goto LABEL_9;
    }

    [selfCopy operatorType];
    v18 = HDSQLiteComparisonTypeForPredicateOperator();
    value = [selfCopy value];
    v8 = HDWorkoutActivityEntityPredicateForEndDate(v18);
LABEL_4:
    selfCopy = v8;
LABEL_5:

    goto LABEL_9;
  }

  keyPath5 = [selfCopy keyPath];
  v20 = [keyPath5 hasPrefix:*MEMORY[0x277CCC810]];

  if (v20)
  {
    if (selfCopy)
    {
      value = [selfCopy value];
      quantityType = [selfCopy quantityType];
      selfCopy = +[HDWorkoutStatisticsPredicate predicateForSumQuantity:quantityType:operatorType:](HDWorkoutStatisticsPredicate, "predicateForSumQuantity:quantityType:operatorType:", value, quantityType, [selfCopy operatorType]);

      goto LABEL_5;
    }
  }

  else
  {
    keyPath6 = [selfCopy keyPath];
    v23 = [keyPath6 hasPrefix:*MEMORY[0x277CCC800]];

    if (v23)
    {
      _predicateForMinimumQuantity = [(_HKWorkoutComparisonFilter *)selfCopy _predicateForMinimumQuantity];
    }

    else
    {
      keyPath7 = [selfCopy keyPath];
      v26 = [keyPath7 hasPrefix:*MEMORY[0x277CCC7F8]];

      if (v26)
      {
        _predicateForMinimumQuantity = [(_HKWorkoutComparisonFilter *)selfCopy _predicateForMaximumQuantity];
      }

      else
      {
        keyPath8 = [selfCopy keyPath];
        v28 = [keyPath8 hasPrefix:*MEMORY[0x277CCC7E0]];

        if (v28)
        {
          [(_HKWorkoutComparisonFilter *)selfCopy _predicateForAverageQuantity];
        }

        else
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"_HKWorkoutActivityComparisonFilter+HealthDaemon.m" lineNumber:43 description:@"Unreachable code has been executed"];

          [MEMORY[0x277D10B70] falsePredicate];
        }
        _predicateForMinimumQuantity = ;
      }
    }

    selfCopy = _predicateForMinimumQuantity;
  }

LABEL_9:

  return selfCopy;
}

@end