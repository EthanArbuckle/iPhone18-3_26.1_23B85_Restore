@interface _HKCompoundFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKCompoundFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [a1 subfilters];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v25 + 1) + 8 * i) predicateWithProfile:v5];
        if (!v12)
        {
          _HKInitializeLogging();
          v16 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            v23 = v16;
            v24 = HKLogSafeDescription();
            *buf = 138543362;
            v30 = v24;
            _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "Unable to construct predicate for filter: %{public}@", buf, 0xCu);
          }

          v17 = [MEMORY[0x277D10B70] falsePredicate];

          goto LABEL_21;
        }

        v13 = v12;
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = [a1 compoundPredicateType];
  if (v14)
  {
    if (v14 == 2)
    {
      v15 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v6];
    }

    else
    {
      if (v14 == 1)
      {
        [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v6];
      }

      else
      {
        v20 = [MEMORY[0x277CCA890] currentHandler];
        [v20 handleFailureInMethod:a2 object:a1 file:@"HKFilter+HealthDaemon.m" lineNumber:73 description:@"Unreachable code has been executed"];

        [MEMORY[0x277D10B70] falsePredicate];
      }
      v15 = ;
    }

    v17 = v15;
  }

  else
  {
    v18 = MEMORY[0x277D10B20];
    v19 = [v6 lastObject];
    v17 = [v18 negatedPredicate:v19];
  }

LABEL_21:

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

@end