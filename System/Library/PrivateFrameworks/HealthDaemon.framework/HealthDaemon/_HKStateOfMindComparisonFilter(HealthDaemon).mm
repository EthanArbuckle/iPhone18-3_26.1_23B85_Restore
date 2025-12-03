@interface _HKStateOfMindComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKStateOfMindComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  selfCopy = self;
  keyPath = [self keyPath];
  v5 = [keyPath isEqualToString:*MEMORY[0x277CCC790]];

  if (v5)
  {
    if (!selfCopy)
    {
      goto LABEL_25;
    }

    value = [selfCopy value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__predicateForReflectiveInterval object:selfCopy file:@"_HKStateOfMindComparisonFilter+HealthDaemon.m" lineNumber:39 description:@"Reflective interval should be NSInteger as an NSNumber"];
    }

    value2 = [selfCopy value];
    if ([selfCopy operatorType] == 4)
    {
      integerValue = [value2 integerValue];
      v10 = 1;
    }

    else
    {
      if ([selfCopy operatorType] != 5)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:sel__predicateForReflectiveInterval object:selfCopy file:@"_HKStateOfMindComparisonFilter+HealthDaemon.m" lineNumber:50 description:@"Unreachable code has been executed"];

        falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
        goto LABEL_24;
      }

      integerValue = [value2 integerValue];
      v10 = 0;
    }

    falsePredicate = [HDStateOfMindEntity predicateForReflectiveInterval:integerValue equals:v10];
LABEL_24:
    selfCopy = falsePredicate;

    goto LABEL_25;
  }

  keyPath2 = [selfCopy keyPath];
  v12 = [keyPath2 isEqualToString:*MEMORY[0x277CCC798]];

  if (v12)
  {
    if (!selfCopy)
    {
      goto LABEL_25;
    }

    value3 = [selfCopy value];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if ((v14 & 1) == 0)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:sel__predicateForValence object:selfCopy file:@"_HKStateOfMindComparisonFilter+HealthDaemon.m" lineNumber:54 description:@"Valence should be double as an NSNumber"];
    }

    value2 = [selfCopy value];
    [selfCopy operatorType];
    v15 = HDSQLiteComparisonTypeForPredicateOperator();
    [value2 doubleValue];
    falsePredicate = [HDStateOfMindEntity predicateForValence:v15 comparisonType:?];
    goto LABEL_24;
  }

  keyPath3 = [selfCopy keyPath];
  v18 = [keyPath3 isEqualToString:*MEMORY[0x277CCC788]];

  if (!v18)
  {
    keyPath4 = [selfCopy keyPath];
    v23 = [keyPath4 isEqualToString:*MEMORY[0x277CCC780]];

    if (v23)
    {
      if (!selfCopy)
      {
        goto LABEL_25;
      }

      value4 = [selfCopy value];
      objc_opt_class();
      v25 = objc_opt_isKindOfClass();

      value5 = [selfCopy value];
      value2 = value5;
      if (v25)
      {
        falsePredicate = +[HDStateOfMindEntity predicateForDomain:](HDStateOfMindEntity, "predicateForDomain:", [value5 integerValue]);
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
      }

      else
      {
        value6 = [selfCopy value];
        objc_opt_class();
        v39 = objc_opt_isKindOfClass();

        if ((v39 & 1) == 0)
        {
          currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
          v30 = currentHandler4;
          v31 = sel__predicateForDomains;
          v32 = selfCopy;
          v33 = 80;
          goto LABEL_29;
        }
      }

      value7 = [selfCopy value];
      v37 = [HDStateOfMindEntity predicateForDomains:value7];
      goto LABEL_38;
    }

    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    v30 = currentHandler4;
    v31 = a2;
    v32 = selfCopy;
    v33 = 33;
LABEL_29:
    [currentHandler4 handleFailureInMethod:v31 object:v32 file:@"_HKStateOfMindComparisonFilter+HealthDaemon.m" lineNumber:v33 description:@"Unreachable code has been executed"];

    selfCopy = [MEMORY[0x277D10B70] falsePredicate];
    goto LABEL_25;
  }

  if (!selfCopy)
  {
    goto LABEL_25;
  }

  value8 = [selfCopy value];
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  value9 = [selfCopy value];
  value2 = value9;
  if (v20)
  {
    falsePredicate = +[HDStateOfMindEntity predicateForLabel:](HDStateOfMindEntity, "predicateForLabel:", [value9 integerValue]);
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    value10 = [selfCopy value];
    objc_opt_class();
    v35 = objc_opt_isKindOfClass();

    if (v35)
    {
      goto LABEL_35;
    }

    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    v30 = currentHandler4;
    v31 = sel__predicateForLabels;
    v32 = selfCopy;
    v33 = 69;
    goto LABEL_29;
  }

LABEL_35:
  value7 = [selfCopy value];
  v37 = [HDStateOfMindEntity predicateForLabels:value7];
LABEL_38:
  selfCopy = v37;

LABEL_25:

  return selfCopy;
}

@end