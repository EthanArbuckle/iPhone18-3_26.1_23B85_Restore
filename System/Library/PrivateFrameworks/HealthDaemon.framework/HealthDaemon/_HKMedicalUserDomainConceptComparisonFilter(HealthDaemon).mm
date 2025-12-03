@interface _HKMedicalUserDomainConceptComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKMedicalUserDomainConceptComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  keyPath = [self keyPath];
  v7 = [keyPath isEqualToString:*MEMORY[0x277CCC688]];

  if (v7)
  {
    if (!self)
    {
      goto LABEL_19;
    }

    operatorType = [self operatorType];
    value = [self value];
    v10 = value;
    if (operatorType == 10)
    {
      HDMedicalUserDomainConceptEntityPredicateForCategoryTypes(value);
    }

    else
    {
      HDMedicalUserDomainConceptEntityPredicateForCategoryType(value, [self operatorType] == 4);
    }

    v11 = LABEL_5:;
    self = v11;
    goto LABEL_18;
  }

  keyPath2 = [self keyPath];
  v13 = [keyPath2 isEqualToString:*MEMORY[0x277CCC6F0]];

  if (v13)
  {
    if (!self)
    {
      goto LABEL_19;
    }

    operatorType2 = [self operatorType];
    value2 = [self value];
    v10 = value2;
    if (operatorType2 == 10)
    {
      HDMedicalUserDomainConceptEntityPredicateForMedicalRecordWithUUIDs(value2);
    }

    else
    {
      HDMedicalUserDomainConceptEntityPredicateForMedicalRecordWithUUID(value2, [self operatorType] == 4);
    }

    goto LABEL_5;
  }

  keyPath3 = [self keyPath];
  v17 = [keyPath3 isEqualToString:*MEMORY[0x277CCC7B0]];

  if (!v17)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKMedicalUserDomainConceptComparisonFilter+HealthDaemon.m" lineNumber:34 description:@"Unreachable code has been executed"];

    self = [MEMORY[0x277D10B70] falsePredicate];
    goto LABEL_19;
  }

  v10 = v5;
  if (self)
  {
    value3 = [self value];
    v39 = 0;
    v19 = v10;
    v20 = value3;
    v21 = [HDConceptResolutionConfiguration alloc];
    countryCode = [v20 countryCode];
    v23 = -[HDConceptResolutionConfiguration initWithCountryCode:recordCategoryType:options:](v21, "initWithCountryCode:recordCategoryType:options:", countryCode, [v20 recordCategoryType], 0);

    internalContentDatabaseManager = [v19 internalContentDatabaseManager];

    codingCollection = [v20 codingCollection];

    v26 = [internalContentDatabaseManager conceptForCodingCollection:codingCollection configuration:v23 error:&v39];

    v27 = v39;
    if (v26)
    {
      v28 = v26;
      internalContentDatabaseManager2 = [v19 internalContentDatabaseManager];
      v40 = 0;
      v41 = 0;
      v30 = [internalContentDatabaseManager2 grouperConceptForOntologyConcept:v28 grouperConceptOut:&v41 error:&v40];

      v31 = v41;
      v32 = v40;
      if (v30)
      {
        coding = [v31 coding];
        self = HDUserDomainConceptEntityPredicateForMedicalCoding(coding);
      }

      else
      {
        _HKInitializeLogging();
        v38 = HKLogHealthOntology();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy2 = self;
          v44 = 2114;
          v45 = v32;
          _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "%{public}@: Error loading relationships for concept: %{public}@", buf, 0x16u);
        }

        self = [MEMORY[0x277D10B70] falsePredicate];
      }
    }

    else
    {
      _HKInitializeLogging();
      v37 = HKLogHealthOntology();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543875;
        selfCopy2 = self;
        v44 = 2113;
        v45 = v20;
        v46 = 2114;
        v47 = v27;
        _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "%{public}@: Failed to perform concept resolution for concept resolution definition: %{private}@ with error: %{public}@", buf, 0x20u);
      }

      self = [MEMORY[0x277D10B70] falsePredicate];
    }
  }

LABEL_18:

LABEL_19:
  v35 = *MEMORY[0x277D85DE8];

  return self;
}

@end