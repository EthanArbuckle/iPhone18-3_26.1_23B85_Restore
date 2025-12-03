@interface _HKWorkoutComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKWorkoutComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v5 = a3;
  keyPath = [self keyPath];
  v7 = [keyPath isEqualToString:*MEMORY[0x277CCC828]];

  if (v7)
  {
    if (!self)
    {
      goto LABEL_17;
    }

    [self operatorType];
    v8 = HDSQLiteComparisonTypeForPredicateOperator();
    value = [self value];
    [value doubleValue];
    v10 = HDWorkoutEntityPredicateForDuration(v8);
LABEL_16:
    self = v10;

    goto LABEL_17;
  }

  keyPath2 = [self keyPath];
  v12 = [keyPath2 isEqualToString:*MEMORY[0x277CCC850]];

  if (v12)
  {
    if (!self)
    {
      goto LABEL_17;
    }

    [self operatorType];
    v13 = HDSQLiteComparisonTypeForPredicateOperator();
    value = [self value];
    v10 = HDWorkoutEntityPredicateForTotalDistance(v13, value);
    goto LABEL_16;
  }

  keyPath3 = [self keyPath];
  v15 = [keyPath3 isEqualToString:*MEMORY[0x277CCC858]];

  if (v15)
  {
    if (!self)
    {
      goto LABEL_17;
    }

    [self operatorType];
    v16 = HDSQLiteComparisonTypeForPredicateOperator();
    value = [self value];
    v10 = HDWorkoutEntityPredicateForTotalEnergyBurned(v16, value);
    goto LABEL_16;
  }

  keyPath4 = [self keyPath];
  v18 = [keyPath4 isEqualToString:*MEMORY[0x277CCC860]];

  if (v18)
  {
    if (!self)
    {
      goto LABEL_17;
    }

    [self operatorType];
    v19 = HDSQLiteComparisonTypeForPredicateOperator();
    value = [self value];
    v10 = HDWorkoutEntityPredicateForTotalFlightsClimbed(v19, value);
    goto LABEL_16;
  }

  keyPath5 = [self keyPath];
  v21 = [keyPath5 isEqualToString:*MEMORY[0x277CCC868]];

  if (v21)
  {
    if (!self)
    {
      goto LABEL_17;
    }

    [self operatorType];
    v22 = HDSQLiteComparisonTypeForPredicateOperator();
    value = [self value];
    v10 = HDWorkoutEntityPredicateForTotalSwimmingStrokeCount(v22, value);
    goto LABEL_16;
  }

  keyPath6 = [self keyPath];
  v25 = [keyPath6 isEqualToString:*MEMORY[0x277CCC870]];

  if (v25)
  {
    _predicateForWorkoutActivityType = [(_HKWorkoutComparisonFilter *)self _predicateForWorkoutActivityType];
  }

  else
  {
    keyPath7 = [self keyPath];
    v28 = [keyPath7 isEqualToString:*MEMORY[0x277CCDF80]];

    if (v28)
    {
      _predicateForWorkoutActivityType = [(_HKWorkoutComparisonFilter *)self _predicateForGoal];
    }

    else
    {
      keyPath8 = [self keyPath];
      v30 = [keyPath8 isEqualToString:*MEMORY[0x277CCDF88]];

      if (v30)
      {
        _predicateForWorkoutActivityType = [(_HKWorkoutComparisonFilter *)self _predicateForGoalType];
      }

      else
      {
        keyPath9 = [self keyPath];
        v32 = [keyPath9 hasPrefix:*MEMORY[0x277CCC848]];

        if (v32)
        {
          _predicateForWorkoutActivityType = [(_HKWorkoutComparisonFilter *)self _predicateForSumQuantity];
        }

        else
        {
          keyPath10 = [self keyPath];
          v34 = [keyPath10 hasPrefix:*MEMORY[0x277CCC840]];

          if (v34)
          {
            _predicateForWorkoutActivityType = [(_HKWorkoutComparisonFilter *)self _predicateForMinimumQuantity];
          }

          else
          {
            keyPath11 = [self keyPath];
            v36 = [keyPath11 hasPrefix:*MEMORY[0x277CCC838]];

            if (v36)
            {
              _predicateForWorkoutActivityType = [(_HKWorkoutComparisonFilter *)self _predicateForMaximumQuantity];
            }

            else
            {
              keyPath12 = [self keyPath];
              v38 = [keyPath12 hasPrefix:*MEMORY[0x277CCC820]];

              if (v38)
              {
                _predicateForWorkoutActivityType = [(_HKWorkoutComparisonFilter *)self _predicateForAverageQuantity];
              }

              else
              {
                keyPath13 = [self keyPath];
                v40 = [keyPath13 isEqualToString:*MEMORY[0x277CCC7D8]];

                if (v40)
                {
                  [(_HKWorkoutComparisonFilter *)self _predicateForWorkoutActivityWithProfile:v5];
                }

                else
                {
                  currentHandler = [MEMORY[0x277CCA890] currentHandler];
                  [currentHandler handleFailureInMethod:a2 object:self file:@"_HKWorkoutComparisonFilter+HealthDaemon.m" lineNumber:80 description:@"Unreachable code has been executed"];

                  [MEMORY[0x277D10B70] falsePredicate];
                }
                _predicateForWorkoutActivityType = ;
              }
            }
          }
        }
      }
    }
  }

  self = _predicateForWorkoutActivityType;
LABEL_17:

  return self;
}

@end