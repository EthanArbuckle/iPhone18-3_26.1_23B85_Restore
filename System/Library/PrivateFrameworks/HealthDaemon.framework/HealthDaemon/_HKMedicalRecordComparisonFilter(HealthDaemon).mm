@interface _HKMedicalRecordComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKMedicalRecordComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  keyPath = [self keyPath];
  v5 = [keyPath isEqualToString:*MEMORY[0x277CCC3E0]];

  if (v5)
  {
    value = [self value];
    v7 = HDMedicalRecordEntityPredicateForMedicalUserDomainConcept(value);
LABEL_5:
    falsePredicate = v7;

    goto LABEL_11;
  }

  keyPath2 = [self keyPath];
  v9 = [keyPath2 isEqualToString:*MEMORY[0x277CCC3B8]];

  if (v9)
  {
    value = [self value];
    v7 = HDMedicalRecordEntityPredicateForSignedClinicalDataOriginIdentifier(value);
    goto LABEL_5;
  }

  [self operatorType];
  v11 = HDSQLiteComparisonTypeForPredicateOperator();
  keyPath3 = [self keyPath];
  v13 = [keyPath3 isEqualToString:*MEMORY[0x277CCC3A0]];

  if (v13)
  {
    value2 = [self value];
    v15 = HDMedicalRecordEntityPredicateForModifiedDate(v11);
LABEL_10:
    falsePredicate = v15;

    goto LABEL_11;
  }

  keyPath4 = [self keyPath];
  v17 = [keyPath4 isEqualToString:*MEMORY[0x277CCC3B0]];

  if (v17)
  {
    value2 = [self value];
    v15 = HDMedicalRecordEntityPredicateForOriginType(v11 == 1, [value2 integerValue]);
    goto LABEL_10;
  }

  keyPath5 = [self keyPath];
  v20 = [keyPath5 isEqualToString:*MEMORY[0x277CCC3C0]];

  if (v20)
  {
    value3 = [self value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    value4 = [self value];
    v24 = value4;
    if (isKindOfClass)
    {
      date = [value4 date];

      v24 = date;
    }

    falsePredicate = HDMedicalRecordEntityPredicateForSortDate(v11);
  }

  else
  {
    keyPath6 = [self keyPath];
    v27 = [keyPath6 isEqualToString:*MEMORY[0x277CCC3D8]];

    if (v27)
    {
      value2 = [self value];
      v15 = HDMedicalRecordEntityPredicateForState(v11, [value2 integerValue]);
      goto LABEL_10;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKMedicalRecordComparisonFilter+HealthDaemon.m" lineNumber:46 description:@"Unreachable code has been executed"];

    falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
  }

LABEL_11:

  return falsePredicate;
}

@end