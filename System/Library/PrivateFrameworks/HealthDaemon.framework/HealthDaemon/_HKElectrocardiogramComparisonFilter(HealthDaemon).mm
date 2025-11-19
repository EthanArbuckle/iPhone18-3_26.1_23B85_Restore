@interface _HKElectrocardiogramComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKElectrocardiogramComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v3 = a1;
  v4 = [a1 keyPath];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCC660]];

  if (!v5)
  {
    v8 = [v3 keyPath];
    v9 = [v8 isEqualToString:*MEMORY[0x277CCDF68]];

    if (v9)
    {
      if (!v3)
      {
        goto LABEL_31;
      }

      if ([v3 operatorType] == 4)
      {
        v10 = [v3 value];
        v11 = [v10 integerValue];
        v12 = 1;
LABEL_18:
        v21 = HDECGEntityPredicateForPrivateClassification(v11, v12);
LABEL_27:
        v3 = v21;

        goto LABEL_31;
      }

      if ([v3 operatorType] == 5)
      {
        v10 = [v3 value];
        v11 = [v10 integerValue];
        v12 = 0;
        goto LABEL_18;
      }

      v22 = [MEMORY[0x277CCA890] currentHandler];
      v23 = v22;
      v24 = sel__predicateForPrivateECGClassification;
      v25 = v3;
      v26 = 51;
    }

    else
    {
      v13 = [v3 keyPath];
      v14 = [v13 isEqualToString:*MEMORY[0x277CCC6B8]];

      if (v14)
      {
        if (!v3)
        {
          goto LABEL_31;
        }

        if ([v3 operatorType] == 4)
        {
          v10 = [v3 value];
          v15 = [v10 integerValue];
          v16 = 1;
        }

        else
        {
          if ([v3 operatorType] != 5)
          {
            v22 = [MEMORY[0x277CCA890] currentHandler];
            v23 = v22;
            v24 = sel__predicateForPublicECGClassification;
            v25 = v3;
            v26 = 62;
            goto LABEL_30;
          }

          v10 = [v3 value];
          v15 = [v10 integerValue];
          v16 = 0;
        }

        v21 = HDECGEntityPredicateForPublicClassification(v15, v16);
        goto LABEL_27;
      }

      v17 = [v3 keyPath];
      v18 = [v17 isEqualToString:*MEMORY[0x277CCC6C0]];

      if (v18)
      {
        if (!v3)
        {
          goto LABEL_31;
        }

        if ([v3 operatorType] == 4)
        {
          v10 = [v3 value];
          v19 = [v10 integerValue];
          v20 = 1;
        }

        else
        {
          if ([v3 operatorType] != 5)
          {
            v22 = [MEMORY[0x277CCA890] currentHandler];
            v23 = v22;
            v24 = sel__predicateForSymptomsStatus;
            v25 = v3;
            v26 = 73;
            goto LABEL_30;
          }

          v10 = [v3 value];
          v19 = [v10 integerValue];
          v20 = 0;
        }

        v21 = HDECGEntityPredicateForSymptomsStatus(v19, v20);
        goto LABEL_27;
      }

      v22 = [MEMORY[0x277CCA890] currentHandler];
      v23 = v22;
      v24 = a2;
      v25 = v3;
      v26 = 34;
    }

LABEL_30:
    [v22 handleFailureInMethod:v24 object:v25 file:@"_HKElectrocardiogramComparisonFilter+HealthDaemon.m" lineNumber:v26 description:@"Unreachable code has been executed"];

    v3 = [MEMORY[0x277D10B70] falsePredicate];
    goto LABEL_31;
  }

  if (v3)
  {
    [v3 operatorType];
    v6 = HDSQLiteComparisonTypeForPredicateOperator();
    v7 = [v3 value];
    v3 = HDECGEntityPredicateForAverageHeartRate(v6, v7);
  }

LABEL_31:

  return v3;
}

@end