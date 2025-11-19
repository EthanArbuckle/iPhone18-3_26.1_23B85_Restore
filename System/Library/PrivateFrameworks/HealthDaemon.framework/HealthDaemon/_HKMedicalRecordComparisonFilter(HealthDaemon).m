@interface _HKMedicalRecordComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKMedicalRecordComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v4 = [a1 keyPath];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCC3E0]];

  if (v5)
  {
    v6 = [a1 value];
    v7 = HDMedicalRecordEntityPredicateForMedicalUserDomainConcept(v6);
LABEL_5:
    v10 = v7;

    goto LABEL_11;
  }

  v8 = [a1 keyPath];
  v9 = [v8 isEqualToString:*MEMORY[0x277CCC3B8]];

  if (v9)
  {
    v6 = [a1 value];
    v7 = HDMedicalRecordEntityPredicateForSignedClinicalDataOriginIdentifier(v6);
    goto LABEL_5;
  }

  [a1 operatorType];
  v11 = HDSQLiteComparisonTypeForPredicateOperator();
  v12 = [a1 keyPath];
  v13 = [v12 isEqualToString:*MEMORY[0x277CCC3A0]];

  if (v13)
  {
    v14 = [a1 value];
    v15 = HDMedicalRecordEntityPredicateForModifiedDate(v11);
LABEL_10:
    v10 = v15;

    goto LABEL_11;
  }

  v16 = [a1 keyPath];
  v17 = [v16 isEqualToString:*MEMORY[0x277CCC3B0]];

  if (v17)
  {
    v14 = [a1 value];
    v15 = HDMedicalRecordEntityPredicateForOriginType(v11 == 1, [v14 integerValue]);
    goto LABEL_10;
  }

  v19 = [a1 keyPath];
  v20 = [v19 isEqualToString:*MEMORY[0x277CCC3C0]];

  if (v20)
  {
    v21 = [a1 value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v23 = [a1 value];
    v24 = v23;
    if (isKindOfClass)
    {
      v25 = [v23 date];

      v24 = v25;
    }

    v10 = HDMedicalRecordEntityPredicateForSortDate(v11);
  }

  else
  {
    v26 = [a1 keyPath];
    v27 = [v26 isEqualToString:*MEMORY[0x277CCC3D8]];

    if (v27)
    {
      v14 = [a1 value];
      v15 = HDMedicalRecordEntityPredicateForState(v11, [v14 integerValue]);
      goto LABEL_10;
    }

    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"_HKMedicalRecordComparisonFilter+HealthDaemon.m" lineNumber:46 description:@"Unreachable code has been executed"];

    v10 = [MEMORY[0x277D10B70] falsePredicate];
  }

LABEL_11:

  return v10;
}

@end