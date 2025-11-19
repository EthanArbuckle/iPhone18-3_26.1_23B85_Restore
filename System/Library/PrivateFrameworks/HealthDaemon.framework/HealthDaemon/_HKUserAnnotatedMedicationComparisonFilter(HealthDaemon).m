@interface _HKUserAnnotatedMedicationComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKUserAnnotatedMedicationComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 daemon];
  v6 = [v5 userDomainConceptEntityRegistry];
  v7 = [v6 registeredUserDomainConceptEntityClasses];
  v8 = [v7 hk_map:&__block_literal_global_85];

  v9 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v8];
  v10 = [a1 keyPath];
  LODWORD(v7) = [v10 isEqualToString:*MEMORY[0x277CCCE38]];

  if (v7)
  {
    v11 = MEMORY[0x277D10B70];
    if (a1)
    {
      v12 = [HDUserDomainConceptManager predicateForElementsOfListType:2];
      v13 = [a1 value];
      v14 = [v13 BOOLValue];

      if (v14)
      {
        v15 = [MEMORY[0x277D10B20] negatedPredicate:v12];
      }

      else
      {
        v15 = v12;
      }

      v28 = v15;
    }

    else
    {
      v28 = 0;
    }

    v31 = v11;
  }

  else
  {
    v16 = [a1 keyPath];
    v17 = [v16 isEqual:*MEMORY[0x277CCCE30]];

    if (!v17)
    {
      v30 = 0;
      goto LABEL_26;
    }

    v36 = MEMORY[0x277D10B70];
    v18 = v4;
    if (a1)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = v18;
      v19 = [v18 daemon];
      v20 = [v19 userDomainConceptEntityRegistry];
      v21 = [v20 registeredUserDomainConceptEntityClasses];

      v22 = [v21 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v38;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v37 + 1) + 8 * i);
            v27 = [a1 value];
            v28 = [v26 predicateForHasSchedule:{objc_msgSend(v27, "BOOLValue")}];

            if (v28)
            {

              goto LABEL_23;
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v37 objects:v43 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      _HKInitializeLogging();
      v29 = HKLogHealthOntology();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v42 = a1;
        _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "%{public}@: Was not able to generate predicate for hasSchedule keypath for User Annotated Medications. Likely the medications plugin is not loaded", buf, 0xCu);
      }

      v28 = [MEMORY[0x277D10BA8] truePredicate];
LABEL_23:
      v18 = v35;
      v32 = v36;
    }

    else
    {
      v28 = 0;
      v32 = v36;
    }

    v31 = v32;
  }

  v30 = [v31 compoundPredicateWithPredicate:v9 otherPredicate:v28];

LABEL_26:
  v33 = *MEMORY[0x277D85DE8];

  return v30;
}

@end