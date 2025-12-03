@interface _HKComparisonFilter(HealthDaemon)
- (id)simplePredicate;
- (uint64_t)propertyForKeyPath;
@end

@implementation _HKComparisonFilter(HealthDaemon)

- (id)simplePredicate
{
  selfCopy = self;
  operatorType = [self operatorType];
  if (operatorType <= 5)
  {
    if (operatorType < 6)
    {
      if (!selfCopy)
      {
        goto LABEL_22;
      }

      v5 = MEMORY[0x277D10B18];
      propertyForKeyPath = [selfCopy propertyForKeyPath];
      value = [selfCopy value];
      [selfCopy operatorType];
      v8 = [v5 predicateWithProperty:propertyForKeyPath value:value comparisonType:HDSQLiteComparisonTypeForPredicateOperator()];
LABEL_21:
      selfCopy = v8;

      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (operatorType <= 8)
  {
    if (operatorType != 6)
    {
      if (operatorType == 7)
      {
        if (!selfCopy)
        {
          goto LABEL_22;
        }

        v13 = MEMORY[0x277D10B18];
        propertyForKeyPath = [selfCopy propertyForKeyPath];
        value = [selfCopy value];
        v8 = [v13 predicateWithProperty:propertyForKeyPath likePattern:value];
      }

      else
      {
        if (!selfCopy)
        {
          goto LABEL_22;
        }

        v9 = MEMORY[0x277D10B18];
        propertyForKeyPath = [selfCopy propertyForKeyPath];
        value = [selfCopy value];
        v8 = [v9 predicateWithProperty:propertyForKeyPath beginsWithString:value];
      }

      goto LABEL_21;
    }

LABEL_15:
    if (!selfCopy)
    {
      goto LABEL_22;
    }

    v11 = MEMORY[0x277D10B28];
    propertyForKeyPath = [selfCopy propertyForKeyPath];
    value = [selfCopy value];
    v8 = [v11 containsPredicateWithProperty:propertyForKeyPath values:value];
    goto LABEL_21;
  }

  switch(operatorType)
  {
    case 9:
      if (!selfCopy)
      {
        goto LABEL_22;
      }

      v12 = MEMORY[0x277D10B18];
      propertyForKeyPath = [selfCopy propertyForKeyPath];
      value = [selfCopy value];
      v8 = [v12 predicateWithProperty:propertyForKeyPath endsWithString:value];
      goto LABEL_21;
    case 10:
      goto LABEL_15;
    case 99:
      if (!selfCopy)
      {
        goto LABEL_22;
      }

      v10 = MEMORY[0x277D10B18];
      propertyForKeyPath = [selfCopy propertyForKeyPath];
      value = [selfCopy value];
      v8 = [v10 predicateWithProperty:propertyForKeyPath containsString:value];
      goto LABEL_21;
  }

LABEL_25:
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"HKFilter+HealthDaemon.m" lineNumber:130 description:@"Unreachable code has been executed"];

  selfCopy = [MEMORY[0x277D10B70] falsePredicate];
LABEL_22:

  return selfCopy;
}

- (uint64_t)propertyForKeyPath
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end