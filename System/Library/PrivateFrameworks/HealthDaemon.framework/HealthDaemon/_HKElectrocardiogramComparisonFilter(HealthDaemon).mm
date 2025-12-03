@interface _HKElectrocardiogramComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKElectrocardiogramComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  selfCopy = self;
  keyPath = [self keyPath];
  v5 = [keyPath isEqualToString:*MEMORY[0x277CCC660]];

  if (!v5)
  {
    keyPath2 = [selfCopy keyPath];
    v9 = [keyPath2 isEqualToString:*MEMORY[0x277CCDF68]];

    if (v9)
    {
      if (!selfCopy)
      {
        goto LABEL_31;
      }

      if ([selfCopy operatorType] == 4)
      {
        value = [selfCopy value];
        integerValue = [value integerValue];
        v12 = 1;
LABEL_18:
        v21 = HDECGEntityPredicateForPrivateClassification(integerValue, v12);
LABEL_27:
        selfCopy = v21;

        goto LABEL_31;
      }

      if ([selfCopy operatorType] == 5)
      {
        value = [selfCopy value];
        integerValue = [value integerValue];
        v12 = 0;
        goto LABEL_18;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v23 = currentHandler;
      v24 = sel__predicateForPrivateECGClassification;
      v25 = selfCopy;
      v26 = 51;
    }

    else
    {
      keyPath3 = [selfCopy keyPath];
      v14 = [keyPath3 isEqualToString:*MEMORY[0x277CCC6B8]];

      if (v14)
      {
        if (!selfCopy)
        {
          goto LABEL_31;
        }

        if ([selfCopy operatorType] == 4)
        {
          value = [selfCopy value];
          integerValue2 = [value integerValue];
          v16 = 1;
        }

        else
        {
          if ([selfCopy operatorType] != 5)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            v23 = currentHandler;
            v24 = sel__predicateForPublicECGClassification;
            v25 = selfCopy;
            v26 = 62;
            goto LABEL_30;
          }

          value = [selfCopy value];
          integerValue2 = [value integerValue];
          v16 = 0;
        }

        v21 = HDECGEntityPredicateForPublicClassification(integerValue2, v16);
        goto LABEL_27;
      }

      keyPath4 = [selfCopy keyPath];
      v18 = [keyPath4 isEqualToString:*MEMORY[0x277CCC6C0]];

      if (v18)
      {
        if (!selfCopy)
        {
          goto LABEL_31;
        }

        if ([selfCopy operatorType] == 4)
        {
          value = [selfCopy value];
          integerValue3 = [value integerValue];
          v20 = 1;
        }

        else
        {
          if ([selfCopy operatorType] != 5)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            v23 = currentHandler;
            v24 = sel__predicateForSymptomsStatus;
            v25 = selfCopy;
            v26 = 73;
            goto LABEL_30;
          }

          value = [selfCopy value];
          integerValue3 = [value integerValue];
          v20 = 0;
        }

        v21 = HDECGEntityPredicateForSymptomsStatus(integerValue3, v20);
        goto LABEL_27;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v23 = currentHandler;
      v24 = a2;
      v25 = selfCopy;
      v26 = 34;
    }

LABEL_30:
    [currentHandler handleFailureInMethod:v24 object:v25 file:@"_HKElectrocardiogramComparisonFilter+HealthDaemon.m" lineNumber:v26 description:@"Unreachable code has been executed"];

    selfCopy = [MEMORY[0x277D10B70] falsePredicate];
    goto LABEL_31;
  }

  if (selfCopy)
  {
    [selfCopy operatorType];
    v6 = HDSQLiteComparisonTypeForPredicateOperator();
    value2 = [selfCopy value];
    selfCopy = HDECGEntityPredicateForAverageHeartRate(v6, value2);
  }

LABEL_31:

  return selfCopy;
}

@end