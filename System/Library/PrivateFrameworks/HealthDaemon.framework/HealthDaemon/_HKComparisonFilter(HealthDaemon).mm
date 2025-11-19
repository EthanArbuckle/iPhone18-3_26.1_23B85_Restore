@interface _HKComparisonFilter(HealthDaemon)
- (id)simplePredicate;
- (uint64_t)propertyForKeyPath;
@end

@implementation _HKComparisonFilter(HealthDaemon)

- (id)simplePredicate
{
  v3 = a1;
  v4 = [a1 operatorType];
  if (v4 <= 5)
  {
    if (v4 < 6)
    {
      if (!v3)
      {
        goto LABEL_22;
      }

      v5 = MEMORY[0x277D10B18];
      v6 = [v3 propertyForKeyPath];
      v7 = [v3 value];
      [v3 operatorType];
      v8 = [v5 predicateWithProperty:v6 value:v7 comparisonType:HDSQLiteComparisonTypeForPredicateOperator()];
LABEL_21:
      v3 = v8;

      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (v4 <= 8)
  {
    if (v4 != 6)
    {
      if (v4 == 7)
      {
        if (!v3)
        {
          goto LABEL_22;
        }

        v13 = MEMORY[0x277D10B18];
        v6 = [v3 propertyForKeyPath];
        v7 = [v3 value];
        v8 = [v13 predicateWithProperty:v6 likePattern:v7];
      }

      else
      {
        if (!v3)
        {
          goto LABEL_22;
        }

        v9 = MEMORY[0x277D10B18];
        v6 = [v3 propertyForKeyPath];
        v7 = [v3 value];
        v8 = [v9 predicateWithProperty:v6 beginsWithString:v7];
      }

      goto LABEL_21;
    }

LABEL_15:
    if (!v3)
    {
      goto LABEL_22;
    }

    v11 = MEMORY[0x277D10B28];
    v6 = [v3 propertyForKeyPath];
    v7 = [v3 value];
    v8 = [v11 containsPredicateWithProperty:v6 values:v7];
    goto LABEL_21;
  }

  switch(v4)
  {
    case 9:
      if (!v3)
      {
        goto LABEL_22;
      }

      v12 = MEMORY[0x277D10B18];
      v6 = [v3 propertyForKeyPath];
      v7 = [v3 value];
      v8 = [v12 predicateWithProperty:v6 endsWithString:v7];
      goto LABEL_21;
    case 10:
      goto LABEL_15;
    case 99:
      if (!v3)
      {
        goto LABEL_22;
      }

      v10 = MEMORY[0x277D10B18];
      v6 = [v3 propertyForKeyPath];
      v7 = [v3 value];
      v8 = [v10 predicateWithProperty:v6 containsString:v7];
      goto LABEL_21;
  }

LABEL_25:
  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:v3 file:@"HKFilter+HealthDaemon.m" lineNumber:130 description:@"Unreachable code has been executed"];

  v3 = [MEMORY[0x277D10B70] falsePredicate];
LABEL_22:

  return v3;
}

- (uint64_t)propertyForKeyPath
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end