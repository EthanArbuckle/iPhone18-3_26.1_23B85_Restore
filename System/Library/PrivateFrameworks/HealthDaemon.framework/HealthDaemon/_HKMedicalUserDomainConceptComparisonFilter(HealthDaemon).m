@interface _HKMedicalUserDomainConceptComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKMedicalUserDomainConceptComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a1 keyPath];
  v7 = [v6 isEqualToString:*MEMORY[0x277CCC688]];

  if (v7)
  {
    if (!a1)
    {
      goto LABEL_19;
    }

    v8 = [a1 operatorType];
    v9 = [a1 value];
    v10 = v9;
    if (v8 == 10)
    {
      HDMedicalUserDomainConceptEntityPredicateForCategoryTypes(v9);
    }

    else
    {
      HDMedicalUserDomainConceptEntityPredicateForCategoryType(v9, [a1 operatorType] == 4);
    }

    v11 = LABEL_5:;
    a1 = v11;
    goto LABEL_18;
  }

  v12 = [a1 keyPath];
  v13 = [v12 isEqualToString:*MEMORY[0x277CCC6F0]];

  if (v13)
  {
    if (!a1)
    {
      goto LABEL_19;
    }

    v14 = [a1 operatorType];
    v15 = [a1 value];
    v10 = v15;
    if (v14 == 10)
    {
      HDMedicalUserDomainConceptEntityPredicateForMedicalRecordWithUUIDs(v15);
    }

    else
    {
      HDMedicalUserDomainConceptEntityPredicateForMedicalRecordWithUUID(v15, [a1 operatorType] == 4);
    }

    goto LABEL_5;
  }

  v16 = [a1 keyPath];
  v17 = [v16 isEqualToString:*MEMORY[0x277CCC7B0]];

  if (!v17)
  {
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:a2 object:a1 file:@"_HKMedicalUserDomainConceptComparisonFilter+HealthDaemon.m" lineNumber:34 description:@"Unreachable code has been executed"];

    a1 = [MEMORY[0x277D10B70] falsePredicate];
    goto LABEL_19;
  }

  v10 = v5;
  if (a1)
  {
    v18 = [a1 value];
    v39 = 0;
    v19 = v10;
    v20 = v18;
    v21 = [HDConceptResolutionConfiguration alloc];
    v22 = [v20 countryCode];
    v23 = -[HDConceptResolutionConfiguration initWithCountryCode:recordCategoryType:options:](v21, "initWithCountryCode:recordCategoryType:options:", v22, [v20 recordCategoryType], 0);

    v24 = [v19 internalContentDatabaseManager];

    v25 = [v20 codingCollection];

    v26 = [v24 conceptForCodingCollection:v25 configuration:v23 error:&v39];

    v27 = v39;
    if (v26)
    {
      v28 = v26;
      v29 = [v19 internalContentDatabaseManager];
      v40 = 0;
      v41 = 0;
      v30 = [v29 grouperConceptForOntologyConcept:v28 grouperConceptOut:&v41 error:&v40];

      v31 = v41;
      v32 = v40;
      if (v30)
      {
        v33 = [v31 coding];
        a1 = HDUserDomainConceptEntityPredicateForMedicalCoding(v33);
      }

      else
      {
        _HKInitializeLogging();
        v38 = HKLogHealthOntology();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v43 = a1;
          v44 = 2114;
          v45 = v32;
          _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "%{public}@: Error loading relationships for concept: %{public}@", buf, 0x16u);
        }

        a1 = [MEMORY[0x277D10B70] falsePredicate];
      }
    }

    else
    {
      _HKInitializeLogging();
      v37 = HKLogHealthOntology();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543875;
        v43 = a1;
        v44 = 2113;
        v45 = v20;
        v46 = 2114;
        v47 = v27;
        _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "%{public}@: Failed to perform concept resolution for concept resolution definition: %{private}@ with error: %{public}@", buf, 0x20u);
      }

      a1 = [MEMORY[0x277D10B70] falsePredicate];
    }
  }

LABEL_18:

LABEL_19:
  v35 = *MEMORY[0x277D85DE8];

  return a1;
}

@end