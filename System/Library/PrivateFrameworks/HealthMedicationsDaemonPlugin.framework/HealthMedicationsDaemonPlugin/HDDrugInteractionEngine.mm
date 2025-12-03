@interface HDDrugInteractionEngine
+ (BOOL)_drugInteractionClassWithRelationshipsFromClass:(void *)class ontologyTransaction:(void *)transaction drugInteractionClassOut:(void *)out error:;
+ (BOOL)_interactionClassForLifestyleFactor:(void *)factor ontologyTransaction:(void *)transaction interactionClassCache:(void *)cache interactionClassOut:(void *)out error:;
+ (BOOL)_interactionClassForLifestyleFactorConceptIdentifier:(void *)identifier ontologyTransaction:(void *)transaction interactionClassOut:(void *)out error:;
+ (BOOL)_interactionResultForFirstMedication:(void *)medication secondMedication:(void *)secondMedication ontologyTransaction:(void *)transaction interactionClassCache:(void *)cache interactionResultOut:(uint64_t *)out error:;
+ (BOOL)_interactionResultForMedication:(uint64_t)medication lifestyleFactor:(void *)factor ontologyTransaction:(void *)transaction interactionClassCache:(void *)cache interactionResultOut:(uint64_t *)out error:;
+ (BOOL)interactionClassForLifestyleFactor:(unint64_t)factor profile:(id)profile interactionClassOut:(id *)out error:(id *)error;
+ (BOOL)interactionResultForFirstInteractionClass:(id)class secondInteractionClass:(id)interactionClass profile:(id)profile interactionResultOut:(id *)out error:(id *)error;
+ (BOOL)interactionResultForFirstMedication:(id)medication secondMedication:(id)secondMedication profile:(id)profile interactionResultOut:(id *)out error:(id *)error;
+ (BOOL)interactionResultForMedication:(id)medication lifestyleFactor:(unint64_t)factor profile:(id)profile interactionResultOut:(id *)out error:(id *)error;
+ (HDDrugInteractionClass)_drugInteractionClassForConcept:(void *)concept ancestorIdentifier:;
+ (NSObject)_interactionClassConceptsForConcept:(void *)concept ontologyTransaction:(void *)transaction error:;
+ (id)_fetchKnownConceptWithIdentifier:(void *)identifier ontologyTransaction:(void *)transaction errorOut:;
+ (id)_interactionClassConceptsForConceptWithIdentifier:(void *)identifier ontologyTransaction:(void *)transaction error:;
+ (id)_interactionClassesForConceptWithIdentifier:(void *)identifier ontologyTransaction:(uint64_t *)transaction error:;
+ (id)_interactionClassesForConceptWithIdentifier:(void *)identifier ontologyTransaction:(void *)transaction interactionClassCache:(uint64_t *)cache error:;
+ (id)_interactionClassesForMedication:(void *)medication ontologyTransaction:(void *)transaction interactionClassCache:(uint64_t *)cache error:;
+ (id)_interactionResultsForFirstInteractionClassSet:(void *)set secondInteractionClassSet:(void *)classSet ontologyTransaction:(void *)transaction error:;
+ (id)_interactionResultsForInteractionClasses:(uint64_t)classes lifestyleFactor:(void *)factor ontologyTransaction:(void *)transaction interactionClassCache:(void *)cache error:;
+ (id)_interactionResultsForInteractionClasses:(void *)classes ontologyTransaction:(void *)transaction error:;
+ (id)_interactionResultsForMedications:(void *)medications lifestyleFactors:(void *)factors ontologyTransaction:(void *)transaction interactionClassCache:(void *)cache medicationsUserDefaults:(uint64_t *)defaults error:;
+ (id)_numberOfInteractionsForConceptWithIdentifier:(void *)identifier ontologyTransaction:(void *)transaction error:;
+ (id)interactionClassesForConceptWithIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)interactionClassesForMedication:(id)medication profile:(id)profile error:(id *)error;
+ (id)interactionResultsForInteractionClasses:(id)classes profile:(id)profile error:(id *)error;
+ (id)interactionResultsForMedications:(id)medications lifestyleFactors:(id)factors profile:(id)profile error:(id *)error;
+ (id)numberOfInteractionsForConceptWithIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)numberOfInteractionsForMedication:(id)medication profile:(id)profile error:(id *)error;
+ (uint64_t)_allAreOntologyBackedMedications:(uint64_t)medications;
+ (uint64_t)_conceptForIdentifier:(void *)identifier ontologyTransaction:(void *)transaction conceptOut:(void *)out errorOut:;
+ (uint64_t)_drugInteractionResultForConceptWithIdentifier:(void *)identifier firstInteractionClass:(void *)class secondInteractionClass:(void *)interactionClass ontologyTransaction:(NSObject *)transaction interactionResultOut:(void *)out error:;
+ (uint64_t)_interactionResultForFirstInteractionClass:(void *)class secondInteractionClass:(void *)interactionClass ontologyTransaction:(NSObject *)transaction interactionResultOut:(void *)out error:;
+ (uint64_t)_severityConceptForConceptWithIdentifier:(void *)identifier ontologyTransaction:(void *)transaction severityConceptOut:(uint64_t)out error:;
+ (uint64_t)_severityForConceptWithIdentifier:(void *)identifier ontologyTransaction:(NSObject *)transaction severityOut:(uint64_t)out error:;
@end

@implementation HDDrugInteractionEngine

+ (id)interactionClassesForConceptWithIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  if (!identifierCopy)
  {
    +[HDDrugInteractionEngine interactionClassesForConceptWithIdentifier:profile:error:];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__5;
  v21 = __Block_byref_object_dispose__5;
  v22 = 0;
  ontologyDatabase = [profileCopy ontologyDatabase];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__HDDrugInteractionEngine_interactionClassesForConceptWithIdentifier_profile_error___block_invoke;
  v14[3] = &unk_2796CDAA8;
  v16 = &v17;
  v10 = identifierCopy;
  v15 = v10;
  v11 = [ontologyDatabase performTransactionWithError:error transactionHandler:v14];

  if (v11)
  {
    v12 = v18[5];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v12;
}

BOOL __84__HDDrugInteractionEngine_interactionClassesForConceptWithIdentifier_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = [HDDrugInteractionEngine _interactionClassesForConceptWithIdentifier:a2 ontologyTransaction:a3 error:?];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

+ (id)_interactionClassesForConceptWithIdentifier:(void *)identifier ontologyTransaction:(uint64_t *)transaction error:
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a2;
  identifierCopy = identifier;
  v8 = objc_opt_self();
  if (!v6)
  {
    +[HDDrugInteractionEngine _interactionClassesForConceptWithIdentifier:ontologyTransaction:error:];
  }

  v9 = [HDDrugInteractionEngine _interactionClassConceptsForConceptWithIdentifier:v6 ontologyTransaction:identifierCopy error:transaction];
  v10 = v9;
  if (v9)
  {
    if ([v9 count])
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __97__HDDrugInteractionEngine__interactionClassesForConceptWithIdentifier_ontologyTransaction_error___block_invoke;
      v17[3] = &unk_2796CDB70;
      v18 = v6;
      v11 = [v10 hk_map:v17];
    }

    else
    {
      _HKInitializeLogging();
      v13 = HKLogMedication();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v20 = v8;
        v21 = 2114;
        v22 = v6;
        _os_log_impl(&dword_25181C000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Found 0 interaction class concepts for product identifier: %{public}@", buf, 0x16u);
      }

      v11 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogMedication();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = *transaction;
      *buf = 138543874;
      v20 = v8;
      v21 = 2114;
      v22 = v6;
      v23 = 2114;
      v24 = v16;
      _os_log_error_impl(&dword_25181C000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] Could not get interaction concepts for identifier: %{public}@, error: %{public}@", buf, 0x20u);
    }

    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)interactionClassesForMedication:(id)medication profile:(id)profile error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  medicationCopy = medication;
  profileCopy = profile;
  if (!medicationCopy)
  {
    +[HDDrugInteractionEngine interactionClassesForMedication:profile:error:];
  }

  firstOntologyCoding = [medicationCopy firstOntologyCoding];

  if (!firstOntologyCoding)
  {
    +[HDDrugInteractionEngine interactionClassesForMedication:profile:error:];
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5;
  v24 = __Block_byref_object_dispose__5;
  v25 = 0;
  ontologyDatabase = [profileCopy ontologyDatabase];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__HDDrugInteractionEngine_interactionClassesForMedication_profile_error___block_invoke;
  v17[3] = &unk_2796CDAA8;
  v19 = &v20;
  v11 = medicationCopy;
  v18 = v11;
  v12 = [ontologyDatabase performTransactionWithError:error transactionHandler:v17];

  if (v12)
  {
    v13 = v21[5];
  }

  else
  {
    _HKInitializeLogging();
    v14 = HKLogMedication();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      HKSensitiveLogItem();
      objc_claimAutoreleasedReturnValue();
      +[HDDrugInteractionEngine interactionClassesForMedication:profile:error:];
    }

    v13 = 0;
  }

  _Block_object_dispose(&v20, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

BOOL __73__HDDrugInteractionEngine_interactionClassesForMedication_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a2;
  v7 = objc_alloc_init(v5);
  v8 = [HDDrugInteractionEngine _interactionClassesForMedication:v6 ontologyTransaction:v7 interactionClassCache:a3 error:?];

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(*(a1 + 40) + 8) + 40) != 0;
  return v11;
}

+ (id)_interactionClassesForMedication:(void *)medication ontologyTransaction:(void *)transaction interactionClassCache:(uint64_t *)cache error:
{
  v8 = a2;
  transactionCopy = transaction;
  medicationCopy = medication;
  objc_opt_self();
  if (!v8)
  {
    +[HDDrugInteractionEngine _interactionClassesForMedication:ontologyTransaction:interactionClassCache:error:];
  }

  firstConceptIdentifier = [v8 firstConceptIdentifier];
  v12 = [HDDrugInteractionEngine _interactionClassesForConceptWithIdentifier:firstConceptIdentifier ontologyTransaction:medicationCopy interactionClassCache:transactionCopy error:cache];

  return v12;
}

+ (BOOL)interactionClassForLifestyleFactor:(unint64_t)factor profile:(id)profile interactionClassOut:(id *)out error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  ontologyDatabase = [profileCopy ontologyDatabase];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __96__HDDrugInteractionEngine_interactionClassForLifestyleFactor_profile_interactionClassOut_error___block_invoke;
  v15[3] = &unk_2796CDAD0;
  v15[4] = &v16;
  v15[5] = factor;
  v11 = [ontologyDatabase performTransactionWithError:error transactionHandler:v15];

  if (v11)
  {
    if (out)
    {
      *out = v17[5];
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogMedication();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      HKStringFromDrugInteractionLifestyleFactor();
      objc_claimAutoreleasedReturnValue();
      +[HDDrugInteractionEngine interactionClassForLifestyleFactor:profile:interactionClassOut:error:];
    }
  }

  _Block_object_dispose(&v16, 8);

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL __96__HDDrugInteractionEngine_interactionClassForLifestyleFactor_profile_interactionClassOut_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = [HDDrugInteractionEngine _interactionClassForLifestyleFactor:v5 ontologyTransaction:a2 interactionClassCache:0 interactionClassOut:&obj error:a3];
  objc_storeStrong((v6 + 40), obj);
  return v7;
}

+ (BOOL)_interactionClassForLifestyleFactor:(void *)factor ontologyTransaction:(void *)transaction interactionClassCache:(void *)cache interactionClassOut:(void *)out error:
{
  factorCopy = factor;
  transactionCopy = transaction;
  objc_opt_self();
  v11 = HKConceptIdentifierForDrugInteractionLifestyleFactor();
  v12 = [transactionCopy objectForKeyedSubscript:v11];
  anyObject = [v12 anyObject];

  if (anyObject)
  {
    if (!cache)
    {
      v15 = 1;
      goto LABEL_11;
    }

    v14 = anyObject;
    v15 = 1;
    goto LABEL_9;
  }

  v20 = 0;
  v15 = [HDDrugInteractionEngine _interactionClassForLifestyleFactorConceptIdentifier:v11 ontologyTransaction:factorCopy interactionClassOut:&v20 error:out];
  v16 = v20;
  anyObject = v16;
  if (v15 && v16)
  {
    v17 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v16, 0}];
    [transactionCopy setObject:v17 forKeyedSubscript:v11];
  }

  if (cache)
  {
    v18 = anyObject;
LABEL_9:
    *cache = anyObject;
  }

LABEL_11:

  return v15;
}

+ (id)numberOfInteractionsForConceptWithIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  profileCopy = profile;
  if (!identifierCopy)
  {
    +[HDDrugInteractionEngine numberOfInteractionsForConceptWithIdentifier:profile:error:];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = 0;
  ontologyDatabase = [profileCopy ontologyDatabase];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__HDDrugInteractionEngine_numberOfInteractionsForConceptWithIdentifier_profile_error___block_invoke;
  v16[3] = &unk_2796CDAA8;
  v18 = &v19;
  v10 = identifierCopy;
  v17 = v10;
  v11 = [ontologyDatabase performTransactionWithError:error transactionHandler:v16];

  if (v11)
  {
    v12 = v20[5];
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogMedication();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      HKSensitiveLogItem();
      objc_claimAutoreleasedReturnValue();
      +[HDDrugInteractionEngine numberOfInteractionsForConceptWithIdentifier:profile:error:];
    }

    v12 = 0;
  }

  _Block_object_dispose(&v19, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

BOOL __86__HDDrugInteractionEngine_numberOfInteractionsForConceptWithIdentifier_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [HDDrugInteractionEngine _numberOfInteractionsForConceptWithIdentifier:a2 ontologyTransaction:a3 error:?];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

+ (id)_numberOfInteractionsForConceptWithIdentifier:(void *)identifier ontologyTransaction:(void *)transaction error:
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a2;
  identifierCopy = identifier;
  objc_opt_self();
  if (!v6)
  {
    +[HDDrugInteractionEngine _numberOfInteractionsForConceptWithIdentifier:ontologyTransaction:error:];
  }

  v8 = [HDDrugInteractionEngine _interactionClassConceptsForConceptWithIdentifier:v6 ontologyTransaction:identifierCopy error:transaction];
  v9 = v8;
  if (v8)
  {
    v21 = identifierCopy;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    allObjects = [v8 allObjects];
    v11 = [allObjects countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(allObjects);
          }

          relationships = [*(*(&v22 + 1) + 8 * i) relationships];
          v17 = [relationships hk_filter:&__block_literal_global_7];

          v13 += [v17 count];
        }

        v12 = [allObjects countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
    identifierCopy = v21;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)numberOfInteractionsForMedication:(id)medication profile:(id)profile error:(id *)error
{
  medicationCopy = medication;
  profileCopy = profile;
  if (!medicationCopy)
  {
    +[HDDrugInteractionEngine numberOfInteractionsForMedication:profile:error:];
  }

  firstConceptIdentifier = [medicationCopy firstConceptIdentifier];

  if (!firstConceptIdentifier)
  {
    +[HDDrugInteractionEngine numberOfInteractionsForMedication:profile:error:];
  }

  firstConceptIdentifier2 = [medicationCopy firstConceptIdentifier];
  v11 = [HDDrugInteractionEngine numberOfInteractionsForConceptWithIdentifier:firstConceptIdentifier2 profile:profileCopy error:error];

  return v11;
}

+ (BOOL)interactionResultForFirstInteractionClass:(id)class secondInteractionClass:(id)interactionClass profile:(id)profile interactionResultOut:(id *)out error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  classCopy = class;
  interactionClassCopy = interactionClass;
  profileCopy = profile;
  if (!classCopy)
  {
    +[HDDrugInteractionEngine interactionResultForFirstInteractionClass:secondInteractionClass:profile:interactionResultOut:error:];
  }

  if (!interactionClassCopy)
  {
    +[HDDrugInteractionEngine interactionResultForFirstInteractionClass:secondInteractionClass:profile:interactionResultOut:error:];
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__5;
  v34 = __Block_byref_object_dispose__5;
  v35 = 0;
  ontologyDatabase = [profileCopy ontologyDatabase];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __127__HDDrugInteractionEngine_interactionResultForFirstInteractionClass_secondInteractionClass_profile_interactionResultOut_error___block_invoke;
  v26[3] = &unk_2796CDAF8;
  v16 = classCopy;
  v27 = v16;
  v17 = interactionClassCopy;
  v28 = v17;
  v29 = &v30;
  v18 = [ontologyDatabase performTransactionWithError:error transactionHandler:v26];

  if (v18)
  {
    if (out)
    {
      *out = v31[5];
    }
  }

  else
  {
    _HKInitializeLogging();
    v19 = HKLogMedication();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      identifier = [v16 identifier];
      identifier2 = [v17 identifier];
      v24 = HKSensitiveLogItem();
      v25 = HKSensitiveLogItem();
      *buf = 138544386;
      selfCopy = self;
      v38 = 2114;
      v39 = identifier;
      v40 = 2114;
      v41 = identifier2;
      v42 = 2112;
      v43 = v24;
      v44 = 2112;
      v45 = v25;
      _os_log_error_impl(&dword_25181C000, v19, OS_LOG_TYPE_ERROR, "[%{public}@] Could not get interaction result for 1st interaction class identifier: %{public}@, 2nd interaction class identifier: %{public}@, 1st class: %@, 2nd class: %@", buf, 0x34u);
    }
  }

  _Block_object_dispose(&v30, 8);
  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __127__HDDrugInteractionEngine_interactionResultForFirstInteractionClass_secondInteractionClass_profile_interactionResultOut_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = [HDDrugInteractionEngine _interactionResultForFirstInteractionClass:v5 secondInteractionClass:v6 ontologyTransaction:a2 interactionResultOut:&obj error:a3];
  objc_storeStrong((v7 + 40), obj);
  return v8;
}

+ (uint64_t)_interactionResultForFirstInteractionClass:(void *)class secondInteractionClass:(void *)interactionClass ontologyTransaction:(NSObject *)transaction interactionResultOut:(void *)out error:
{
  v92 = *MEMORY[0x277D85DE8];
  v10 = a2;
  classCopy = class;
  interactionClassCopy = interactionClass;
  v13 = objc_opt_self();
  if (v10)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[HDDrugInteractionEngine _interactionResultForFirstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:];
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  +[HDDrugInteractionEngine _interactionResultForFirstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:];
LABEL_3:
  identifier = [v10 identifier];
  identifier2 = [classCopy identifier];
  v16 = [identifier isEqual:identifier2];

  if (v16)
  {
    _HKInitializeLogging();
    v17 = HKLogMedication();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

    if (v18)
    {
      v19 = HKLogMedication();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        identifier3 = [v10 identifier];
        *buf = 138543618;
        v85 = v13;
        v86 = 2114;
        v87 = identifier3;
        _os_log_impl(&dword_25181C000, v19, OS_LOG_TYPE_INFO, "[%{public}@] Detected interaction class check against itself, skipping: %{public}@", buf, 0x16u);
      }
    }

    if (transaction)
    {
      *transaction = 0;
    }

    v21 = 1;
  }

  else
  {
    v83 = 0;
    v22 = [HDDrugInteractionEngine _drugInteractionClassWithRelationshipsFromClass:v10 ontologyTransaction:interactionClassCopy drugInteractionClassOut:&v83 error:out];
    v23 = v83;
    v24 = v23;
    if (v22 && v23)
    {
      v82 = 0;
      v25 = [HDDrugInteractionEngine _drugInteractionClassWithRelationshipsFromClass:classCopy ontologyTransaction:interactionClassCopy drugInteractionClassOut:&v82 error:out];
      v26 = v82;
      v27 = v26;
      if (v25 && v26)
      {
        v70 = v24;
        relationships = [v24 relationships];
        v29 = [relationships hk_filter:&__block_literal_global_389];

        v69 = v27;
        relationships2 = [v27 relationships];
        v31 = [relationships2 hk_filter:&__block_literal_global_391];

        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v32 = v29;
        v63 = [v32 countByEnumeratingWithState:&v78 objects:v91 count:16];
        v71 = v31;
        if (v63)
        {
          v33 = *v79;
          v66 = classCopy;
          v67 = v10;
          v68 = interactionClassCopy;
          outCopy = out;
          transactionCopy = transaction;
          v59 = v13;
          v60 = *v79;
          v65 = v32;
          do
          {
            v34 = 0;
            do
            {
              if (*v79 != v33)
              {
                objc_enumerationMutation(v32);
              }

              v64 = v34;
              v35 = *(*(&v78 + 1) + 8 * v34);
              v74 = 0u;
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              obj = v31;
              v36 = [obj countByEnumeratingWithState:&v74 objects:v90 count:16];
              if (v36)
              {
                v37 = v36;
                v38 = *v75;
                while (2)
                {
                  for (i = 0; i != v37; ++i)
                  {
                    if (*v75 != v38)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v40 = *(*(&v74 + 1) + 8 * i);
                    destination = [v35 destination];
                    identifier4 = [destination identifier];
                    rawIdentifier = [identifier4 rawIdentifier];
                    destination2 = [v40 destination];
                    identifier5 = [destination2 identifier];
                    rawIdentifier2 = [identifier5 rawIdentifier];

                    if (rawIdentifier == rawIdentifier2)
                    {
                      destination3 = [v35 destination];
                      identifier6 = [destination3 identifier];
                      v73 = 0;
                      classCopy = v66;
                      v10 = v67;
                      interactionClassCopy = v68;
                      v21 = [HDDrugInteractionEngine _drugInteractionResultForConceptWithIdentifier:identifier6 firstInteractionClass:v67 secondInteractionClass:v66 ontologyTransaction:v68 interactionResultOut:&v73 error:outCopy];
                      v47 = v73;

                      _HKInitializeLogging();
                      v50 = HKLogMedication();
                      v51 = v50;
                      if (v21)
                      {
                        v52 = os_log_type_enabled(v50, OS_LOG_TYPE_INFO);

                        v32 = v65;
                        if (v52)
                        {
                          v53 = HKLogMedication();
                          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                          {
                            identifier7 = [v47 identifier];
                            v55 = HKSensitiveLogItem();
                            *buf = 138543874;
                            v85 = v59;
                            v86 = 2114;
                            v87 = identifier7;
                            v88 = 2112;
                            v89 = v55;
                            _os_log_impl(&dword_25181C000, v53, OS_LOG_TYPE_INFO, "[%{public}@] Found drug interaction with identifier: %{public}@, interaction: %@", buf, 0x20u);
                          }
                        }

                        interactionClassCopy = v68;
                        if (transactionCopy)
                        {
                          v56 = v47;
                          *transactionCopy = v47;
                        }
                      }

                      else
                      {
                        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                        {
                          +[HDDrugInteractionEngine _interactionResultForFirstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:];
                        }

                        v32 = v65;
                      }

                      goto LABEL_50;
                    }
                  }

                  v37 = [obj countByEnumeratingWithState:&v74 objects:v90 count:16];
                  if (v37)
                  {
                    continue;
                  }

                  break;
                }
              }

              v34 = v64 + 1;
              classCopy = v66;
              v10 = v67;
              interactionClassCopy = v68;
              transaction = transactionCopy;
              v32 = v65;
              v31 = v71;
              v33 = v60;
            }

            while (v64 + 1 != v63);
            v63 = [v65 countByEnumeratingWithState:&v78 objects:v91 count:16];
          }

          while (v63);
        }

        v47 = 0;
        if (transaction)
        {
          *transaction = 0;
        }

        v21 = 1;
LABEL_50:
        v27 = v69;
        v24 = v70;
      }

      else
      {
        _HKInitializeLogging();
        v32 = HKLogMedication();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          +[HDDrugInteractionEngine _interactionResultForFirstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:];
        }

        v47 = 0;
        v21 = 0;
      }
    }

    else
    {
      _HKInitializeLogging();
      v27 = HKLogMedication();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[HDDrugInteractionEngine _interactionResultForFirstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:];
      }

      v47 = 0;
      v21 = 0;
    }
  }

  v57 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (id)interactionResultsForInteractionClasses:(id)classes profile:(id)profile error:(id *)error
{
  classesCopy = classes;
  profileCopy = profile;
  if (!classesCopy)
  {
    +[HDDrugInteractionEngine interactionResultsForInteractionClasses:profile:error:];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__5;
  v21 = __Block_byref_object_dispose__5;
  v22 = 0;
  ontologyDatabase = [profileCopy ontologyDatabase];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__HDDrugInteractionEngine_interactionResultsForInteractionClasses_profile_error___block_invoke;
  v14[3] = &unk_2796CDAA8;
  v16 = &v17;
  v10 = classesCopy;
  v15 = v10;
  v11 = [ontologyDatabase performTransactionWithError:error transactionHandler:v14];

  if (v11)
  {
    v12 = v18[5];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v12;
}

BOOL __81__HDDrugInteractionEngine_interactionResultsForInteractionClasses_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [HDDrugInteractionEngine _interactionResultsForInteractionClasses:a2 ontologyTransaction:a3 error:?];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

+ (id)_interactionResultsForInteractionClasses:(void *)classes ontologyTransaction:(void *)transaction error:
{
  v6 = a2;
  classesCopy = classes;
  objc_opt_self();
  if (!v6)
  {
    +[HDDrugInteractionEngine _interactionResultsForInteractionClasses:ontologyTransaction:error:];
  }

  allObjects = [v6 allObjects];
  v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([allObjects count])
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v20 = v9 + 1;
      if ([allObjects count] > (v9 + 1))
      {
        break;
      }

LABEL_11:
      ++v10;
      ++v9;
      if ([allObjects count] <= v20)
      {
        goto LABEL_12;
      }
    }

    v11 = v10;
    while (1)
    {
      v12 = [allObjects objectAtIndexedSubscript:v9];
      v13 = [allObjects objectAtIndexedSubscript:v11];
      v22 = 0;
      v14 = [HDDrugInteractionEngine _interactionResultForFirstInteractionClass:v12 secondInteractionClass:v13 ontologyTransaction:classesCopy interactionResultOut:&v22 error:transaction];
      v15 = v22;

      if (!v14)
      {
        break;
      }

      if (v15)
      {
        [v21 addObject:v15];
      }

      if ([allObjects count] <= ++v11)
      {
        goto LABEL_11;
      }
    }

    v17 = 0;
    v16 = v21;
  }

  else
  {
LABEL_12:
    v16 = v21;
    v17 = v21;
  }

  return v17;
}

+ (BOOL)interactionResultForFirstMedication:(id)medication secondMedication:(id)secondMedication profile:(id)profile interactionResultOut:(id *)out error:(id *)error
{
  medicationCopy = medication;
  secondMedicationCopy = secondMedication;
  profileCopy = profile;
  if (medicationCopy)
  {
    if (secondMedicationCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[HDDrugInteractionEngine interactionResultForFirstMedication:secondMedication:profile:interactionResultOut:error:];
    if (secondMedicationCopy)
    {
      goto LABEL_3;
    }
  }

  +[HDDrugInteractionEngine interactionResultForFirstMedication:secondMedication:profile:interactionResultOut:error:];
LABEL_3:
  firstOntologyCoding = [medicationCopy firstOntologyCoding];

  if (!firstOntologyCoding)
  {
    +[HDDrugInteractionEngine interactionResultForFirstMedication:secondMedication:profile:interactionResultOut:error:];
  }

  firstOntologyCoding2 = [secondMedicationCopy firstOntologyCoding];

  if (!firstOntologyCoding2)
  {
    +[HDDrugInteractionEngine interactionResultForFirstMedication:secondMedication:profile:interactionResultOut:error:];
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__5;
  v30 = __Block_byref_object_dispose__5;
  v31 = 0;
  ontologyDatabase = [profileCopy ontologyDatabase];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __115__HDDrugInteractionEngine_interactionResultForFirstMedication_secondMedication_profile_interactionResultOut_error___block_invoke;
  v22[3] = &unk_2796CDAF8;
  v17 = medicationCopy;
  v23 = v17;
  v18 = secondMedicationCopy;
  v24 = v18;
  v25 = &v26;
  v19 = [ontologyDatabase performTransactionWithError:error transactionHandler:v22];

  if (out)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    *out = v27[5];
  }

  _Block_object_dispose(&v26, 8);
  return v19;
}

BOOL __115__HDDrugInteractionEngine_interactionResultForFirstMedication_secondMedication_profile_interactionResultOut_error___block_invoke(void *a1, void *a2, uint64_t *a3)
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a2;
  v7 = objc_alloc_init(v5);
  v8 = a1[4];
  v9 = a1[5];
  v10 = *(a1[6] + 8);
  obj = *(v10 + 40);
  v11 = [HDDrugInteractionEngine _interactionResultForFirstMedication:v8 secondMedication:v9 ontologyTransaction:v6 interactionClassCache:v7 interactionResultOut:&obj error:a3];

  objc_storeStrong((v10 + 40), obj);
  return v11;
}

+ (BOOL)_interactionResultForFirstMedication:(void *)medication secondMedication:(void *)secondMedication ontologyTransaction:(void *)transaction interactionClassCache:(void *)cache interactionResultOut:(uint64_t *)out error:
{
  v12 = a2;
  medicationCopy = medication;
  secondMedicationCopy = secondMedication;
  transactionCopy = transaction;
  objc_opt_self();
  if (v12)
  {
    if (medicationCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[HDDrugInteractionEngine _interactionResultForFirstMedication:secondMedication:ontologyTransaction:interactionClassCache:interactionResultOut:error:];
    if (medicationCopy)
    {
      goto LABEL_3;
    }
  }

  +[HDDrugInteractionEngine _interactionResultForFirstMedication:secondMedication:ontologyTransaction:interactionClassCache:interactionResultOut:error:];
LABEL_3:
  v16 = [HDDrugInteractionEngine _interactionClassesForMedication:v12 ontologyTransaction:secondMedicationCopy interactionClassCache:transactionCopy error:out];
  v17 = v16;
  if (v16)
  {
    if ([v16 count])
    {
      v18 = [HDDrugInteractionEngine _interactionClassesForMedication:medicationCopy ontologyTransaction:secondMedicationCopy interactionClassCache:transactionCopy error:out];
      v19 = v18;
      if (!v18)
      {
        v22 = 0;
        goto LABEL_17;
      }

      if (![v18 count])
      {
        v22 = 1;
        goto LABEL_17;
      }

      v20 = [HDDrugInteractionEngine _interactionResultsForFirstInteractionClassSet:v17 secondInteractionClassSet:v19 ontologyTransaction:secondMedicationCopy error:out];
      v21 = v20;
      v22 = v20 != 0;
      if (!v20)
      {
LABEL_12:

LABEL_17:
        goto LABEL_18;
      }

      if ([v20 count])
      {
        v28 = objc_alloc(MEMORY[0x277D11550]);
        firstConceptIdentifier = [v12 firstConceptIdentifier];
        firstConceptIdentifier2 = [medicationCopy firstConceptIdentifier];
        v23 = [v28 initWithFirstConceptIdentifier:firstConceptIdentifier secondConceptIdentifier:firstConceptIdentifier2 interactionType:1 interactions:v21];

        if (!cache)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      else
      {
        v23 = 0;
        if (!cache)
        {
          goto LABEL_11;
        }
      }

      v24 = v23;
      *cache = v23;
      goto LABEL_11;
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

LABEL_18:

  return v22;
}

+ (BOOL)interactionResultForMedication:(id)medication lifestyleFactor:(unint64_t)factor profile:(id)profile interactionResultOut:(id *)out error:(id *)error
{
  medicationCopy = medication;
  profileCopy = profile;
  if (!medicationCopy)
  {
    +[HDDrugInteractionEngine interactionResultForMedication:lifestyleFactor:profile:interactionResultOut:error:];
  }

  firstOntologyCoding = [medicationCopy firstOntologyCoding];

  if (!firstOntologyCoding)
  {
    +[HDDrugInteractionEngine interactionResultForMedication:lifestyleFactor:profile:interactionResultOut:error:];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5;
  v27 = __Block_byref_object_dispose__5;
  v28 = 0;
  ontologyDatabase = [profileCopy ontologyDatabase];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __109__HDDrugInteractionEngine_interactionResultForMedication_lifestyleFactor_profile_interactionResultOut_error___block_invoke;
  v19[3] = &unk_2796CDB20;
  v15 = medicationCopy;
  v21 = &v23;
  factorCopy = factor;
  v20 = v15;
  v16 = [ontologyDatabase performTransactionWithError:error transactionHandler:v19];

  if (out)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    *out = v24[5];
  }

  _Block_object_dispose(&v23, 8);
  return v16;
}

BOOL __109__HDDrugInteractionEngine_interactionResultForMedication_lifestyleFactor_profile_interactionResultOut_error___block_invoke(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1[6];
  v6 = a1[4];
  v7 = *(a1[5] + 8);
  obj = *(v7 + 40);
  v8 = [HDDrugInteractionEngine _interactionResultForMedication:v6 lifestyleFactor:v5 ontologyTransaction:a2 interactionClassCache:0 interactionResultOut:&obj error:a3];
  objc_storeStrong((v7 + 40), obj);
  return v8;
}

+ (BOOL)_interactionResultForMedication:(uint64_t)medication lifestyleFactor:(void *)factor ontologyTransaction:(void *)transaction interactionClassCache:(void *)cache interactionResultOut:(uint64_t *)out error:
{
  v12 = a2;
  factorCopy = factor;
  transactionCopy = transaction;
  objc_opt_self();
  if (!v12)
  {
    +[HDDrugInteractionEngine _interactionResultForMedication:lifestyleFactor:ontologyTransaction:interactionClassCache:interactionResultOut:error:];
  }

  v15 = [HDDrugInteractionEngine _interactionClassesForMedication:v12 ontologyTransaction:factorCopy interactionClassCache:transactionCopy error:out];
  v16 = v15;
  if (v15)
  {
    if ([v15 count])
    {
      v17 = [HDDrugInteractionEngine _interactionResultsForInteractionClasses:v16 lifestyleFactor:medication ontologyTransaction:factorCopy interactionClassCache:transactionCopy error:out];
      v18 = v17;
      v19 = v17 != 0;
      if (v17)
      {
        if ([v17 count])
        {
          v20 = HKConceptIdentifierForDrugInteractionLifestyleFactor();
          v21 = objc_alloc(MEMORY[0x277D11550]);
          firstConceptIdentifier = [v12 firstConceptIdentifier];
          v23 = [v21 initWithFirstConceptIdentifier:firstConceptIdentifier secondConceptIdentifier:v20 interactionType:2 interactions:v18];

          if (cache)
          {
            v24 = v23;
            *cache = v23;
          }
        }

        else if (cache)
        {
          *cache = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)interactionResultsForMedications:(id)medications lifestyleFactors:(id)factors profile:(id)profile error:(id *)error
{
  medicationsCopy = medications;
  factorsCopy = factors;
  profileCopy = profile;
  if (!medicationsCopy)
  {
    +[HDDrugInteractionEngine interactionResultsForMedications:lifestyleFactors:profile:error:];
  }

  if (([(HDDrugInteractionEngine *)self _allAreOntologyBackedMedications:medicationsCopy]& 1) == 0)
  {
    +[HDDrugInteractionEngine interactionResultsForMedications:lifestyleFactors:profile:error:];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__5;
  v29 = __Block_byref_object_dispose__5;
  v30 = 0;
  ontologyDatabase = [profileCopy ontologyDatabase];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __91__HDDrugInteractionEngine_interactionResultsForMedications_lifestyleFactors_profile_error___block_invoke;
  v20[3] = &unk_2796CDB48;
  v14 = profileCopy;
  v21 = v14;
  v24 = &v25;
  v15 = medicationsCopy;
  v22 = v15;
  v16 = factorsCopy;
  v23 = v16;
  v17 = [ontologyDatabase performTransactionWithError:error transactionHandler:v20];

  if (v17)
  {
    v18 = v26[5];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v25, 8);

  return v18;
}

+ (uint64_t)_allAreOntologyBackedMedications:(uint64_t)medications
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 hk_allObjectsPassTestWithError:0 test:&__block_literal_global_470];

  return v3;
}

BOOL __91__HDDrugInteractionEngine_interactionResultsForMedications_lifestyleFactors_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a2;
  v7 = objc_alloc_init(v5);
  v8 = [*(a1 + 32) healthMedicationsProfileExtension];
  v9 = [v8 medicationUserDefaults];

  v10 = [HDDrugInteractionEngine _interactionResultsForMedications:*(a1 + 48) lifestyleFactors:v6 ontologyTransaction:v7 interactionClassCache:v9 medicationsUserDefaults:a3 error:?];

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(*(a1 + 56) + 8) + 40) != 0;
  return v13;
}

+ (id)_interactionResultsForMedications:(void *)medications lifestyleFactors:(void *)factors ontologyTransaction:(void *)transaction interactionClassCache:(void *)cache medicationsUserDefaults:(uint64_t *)defaults error:
{
  v80 = *MEMORY[0x277D85DE8];
  v11 = a2;
  medicationsCopy = medications;
  factorsCopy = factors;
  transactionCopy = transaction;
  cacheCopy = cache;
  v59 = objc_opt_self();
  if (!v11)
  {
    +[HDDrugInteractionEngine _interactionResultsForMedications:lifestyleFactors:ontologyTransaction:interactionClassCache:medicationsUserDefaults:error:];
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  allObjects = [v11 allObjects];
  if ([allObjects count])
  {
    v16 = 0;
    v55 = 1;
    *&v15 = 138543874;
    v51 = v15;
    v61 = v14;
    v53 = cacheCopy;
    v54 = v11;
    while (1)
    {
      v17 = [allObjects objectAtIndexedSubscript:{v16, v51}];
      if (![cacheCopy BOOLForKey:@"MedicationsInteractionsWithSelfAllowed"])
      {
        goto LABEL_13;
      }

      _HKInitializeLogging();
      v18 = HKLogMedication();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v73 = v59;
        _os_log_impl(&dword_25181C000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Checking medications for interactions with self", buf, 0xCu);
      }

      v70 = 0;
      v19 = [HDDrugInteractionEngine _interactionResultForFirstMedication:v17 secondMedication:v17 ontologyTransaction:factorsCopy interactionClassCache:transactionCopy interactionResultOut:&v70 error:defaults];
      v20 = v70;
      v21 = v20;
      if (!v19)
      {
        goto LABEL_38;
      }

      if (v20)
      {
        _HKInitializeLogging();
        v22 = HKLogMedication();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v14 count] + 1;
          firstConceptIdentifier = [v17 firstConceptIdentifier];
          *buf = v51;
          v73 = v59;
          v74 = 2050;
          v75 = v23;
          v76 = 2114;
          v77 = firstConceptIdentifier;
          _os_log_impl(&dword_25181C000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Found medication #%{public}lu interaction: Inter-medication interaction with identifier: %{public}@", buf, 0x20u);

          v14 = v61;
        }

        v56 = v21;
        [v14 addObject:v21];
      }

      else
      {
LABEL_13:
        v56 = 0;
      }

      v52 = v16 + 1;
      if ([allObjects count] > v16 + 1)
      {
        break;
      }

LABEL_22:
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = medicationsCopy;
      v34 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
      v14 = v61;
      if (v34)
      {
        v35 = v34;
        v36 = *v66;
        while (2)
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v66 != v36)
            {
              objc_enumerationMutation(obj);
            }

            unsignedIntValue = [*(*(&v65 + 1) + 8 * i) unsignedIntValue];
            v64 = 0;
            v39 = [HDDrugInteractionEngine _interactionResultForMedication:v17 lifestyleFactor:unsignedIntValue ontologyTransaction:factorsCopy interactionClassCache:transactionCopy interactionResultOut:&v64 error:defaults];
            v40 = v64;
            v41 = v40;
            if (!v39)
            {

              v48 = 0;
              cacheCopy = v53;
              v11 = v54;
              goto LABEL_39;
            }

            if (v40)
            {
              _HKInitializeLogging();
              v42 = HKLogMedication();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v43 = [v14 count];
                v44 = factorsCopy;
                v45 = v43 + 1;
                firstConceptIdentifier2 = [v17 firstConceptIdentifier];
                v47 = HKConceptIdentifierForDrugInteractionLifestyleFactor();
                *buf = 138544130;
                v73 = v59;
                v74 = 2050;
                v75 = v45;
                factorsCopy = v44;
                v14 = v61;
                v76 = 2114;
                v77 = firstConceptIdentifier2;
                v78 = 2114;
                v79 = v47;
                _os_log_impl(&dword_25181C000, v42, OS_LOG_TYPE_DEFAULT, "[%{public}@] Found medication #%{public}lu interaction: Between identifier: %{public}@ and identifier: %{public}@", buf, 0x2Au);
              }

              [v14 addObject:v41];
            }
          }

          v35 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
          if (v35)
          {
            continue;
          }

          break;
        }
      }

      v11 = v54;
      ++v55;
      v16 = v52;
      cacheCopy = v53;
      if ([allObjects count] <= v52)
      {
        goto LABEL_35;
      }
    }

    v25 = v55;
    while (1)
    {
      v26 = [allObjects objectAtIndexedSubscript:v25];
      v69 = 0;
      v27 = [HDDrugInteractionEngine _interactionResultForFirstMedication:v17 secondMedication:v26 ontologyTransaction:factorsCopy interactionClassCache:transactionCopy interactionResultOut:&v69 error:defaults];
      v28 = v69;
      v29 = v28;
      if (!v27)
      {
        break;
      }

      if (v28)
      {
        _HKInitializeLogging();
        v30 = HKLogMedication();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v61 count] + 1;
          firstConceptIdentifier3 = [v17 firstConceptIdentifier];
          firstConceptIdentifier4 = [v26 firstConceptIdentifier];
          *buf = 138544130;
          v73 = v59;
          v74 = 2050;
          v75 = v31;
          v76 = 2114;
          v77 = firstConceptIdentifier3;
          v78 = 2114;
          v79 = firstConceptIdentifier4;
          _os_log_impl(&dword_25181C000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Found medication #%{public}lu interaction: Between identifier: %{public}@ and identifier: %{public}@", buf, 0x2Au);
        }

        [v61 addObject:v29];
      }

      if ([allObjects count] <= ++v25)
      {
        goto LABEL_22;
      }
    }

    cacheCopy = v53;
    v11 = v54;
    v14 = v61;
    v21 = v56;
LABEL_38:

    v48 = 0;
  }

  else
  {
LABEL_35:
    v48 = v14;
  }

LABEL_39:

  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

+ (id)_interactionClassesForConceptWithIdentifier:(void *)identifier ontologyTransaction:(void *)transaction interactionClassCache:(uint64_t *)cache error:
{
  v8 = a2;
  identifierCopy = identifier;
  transactionCopy = transaction;
  objc_opt_self();
  if (!v8)
  {
    +[HDDrugInteractionEngine _interactionClassesForConceptWithIdentifier:ontologyTransaction:interactionClassCache:error:];
  }

  v11 = [transactionCopy objectForKeyedSubscript:v8];
  if (!v11)
  {
    v11 = [HDDrugInteractionEngine _interactionClassesForConceptWithIdentifier:v8 ontologyTransaction:identifierCopy error:cache];
    if (v11)
    {
      [transactionCopy setObject:v11 forKeyedSubscript:v8];
    }
  }

  v12 = v11;

  return v12;
}

+ (id)_interactionClassConceptsForConceptWithIdentifier:(void *)identifier ontologyTransaction:(void *)transaction error:
{
  v6 = a2;
  identifierCopy = identifier;
  objc_opt_self();
  if (!v6)
  {
    +[HDDrugInteractionEngine _interactionClassConceptsForConceptWithIdentifier:ontologyTransaction:error:];
  }

  v15 = 0;
  v8 = [HDDrugInteractionEngine _conceptForIdentifier:v6 ontologyTransaction:identifierCopy conceptOut:&v15 errorOut:transaction];
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      v11 = [HDDrugInteractionEngine _interactionClassConceptsForConcept:v9 ontologyTransaction:identifierCopy error:transaction];
LABEL_6:
      v12 = v11;
      goto LABEL_10;
    }

    if (!*transaction)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB98]);
      goto LABEL_6;
    }

    _HKInitializeLogging();
    v13 = HKLogMedication();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[HDDrugInteractionEngine _interactionClassConceptsForConceptWithIdentifier:ontologyTransaction:error:];
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogMedication();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[HDDrugInteractionEngine _interactionClassConceptsForConceptWithIdentifier:ontologyTransaction:error:];
    }
  }

  v12 = 0;
LABEL_10:

  return v12;
}

+ (HDDrugInteractionClass)_drugInteractionClassForConcept:(void *)concept ancestorIdentifier:
{
  conceptCopy = concept;
  v5 = a2;
  objc_opt_self();
  if (!v5)
  {
    +[HDDrugInteractionEngine _drugInteractionClassForConcept:ancestorIdentifier:];
  }

  v6 = [HDDrugInteractionClass alloc];
  localizedPreferredName = [v5 localizedPreferredName];
  relationships = [v5 relationships];
  identifier = [v5 identifier];
  validInRegions = [v5 validInRegions];

  v11 = [(HDDrugInteractionClass *)v6 initWithName:localizedPreferredName relationships:relationships ancestorIdentifier:conceptCopy ontologyIdentifier:identifier validRegionCodes:validInRegions];

  return v11;
}

+ (BOOL)_interactionClassForLifestyleFactorConceptIdentifier:(void *)identifier ontologyTransaction:(void *)transaction interactionClassOut:(void *)out error:
{
  v8 = a2;
  identifierCopy = identifier;
  objc_opt_self();
  v10 = [HDDrugInteractionEngine _fetchKnownConceptWithIdentifier:v8 ontologyTransaction:identifierCopy errorOut:out];

  if (v10)
  {
    v11 = [HDDrugInteractionEngine _drugInteractionClassForConcept:v10 ancestorIdentifier:v8];
    if (transaction)
    {
      v11 = v11;
      *transaction = v11;
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogMedication();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[HDDrugInteractionEngine _interactionClassForLifestyleFactorConceptIdentifier:ontologyTransaction:interactionClassOut:error:];
    }
  }

  return v10 != 0;
}

+ (id)_fetchKnownConceptWithIdentifier:(void *)identifier ontologyTransaction:(void *)transaction errorOut:
{
  v6 = a2;
  identifierCopy = identifier;
  objc_opt_self();
  if (!v6)
  {
    +[HDDrugInteractionEngine _fetchKnownConceptWithIdentifier:ontologyTransaction:errorOut:];
  }

  profile = [identifierCopy profile];
  ontologyConceptManager = [profile ontologyConceptManager];
  v15 = 0;
  v10 = [ontologyConceptManager conceptForIdentifier:v6 options:1 transaction:identifierCopy error:&v15];

  v11 = v15;
  if (v10)
  {
    v12 = v10;
    goto LABEL_12;
  }

  if (v11)
  {
    v11 = v11;
LABEL_8:
    if (transaction)
    {
      v13 = v11;
      *transaction = v11;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_12;
  }

  v11 = [MEMORY[0x277CCA9B8] hk_error:118 format:{@"Did not find expected concept in ontology with identifier %@", v6}];
  if (v11)
  {
    goto LABEL_8;
  }

LABEL_12:

  return v10;
}

+ (BOOL)_drugInteractionClassWithRelationshipsFromClass:(void *)class ontologyTransaction:(void *)transaction drugInteractionClassOut:(void *)out error:
{
  v8 = a2;
  classCopy = class;
  v10 = objc_opt_self();
  if (!v8)
  {
    +[HDDrugInteractionEngine _drugInteractionClassWithRelationshipsFromClass:ontologyTransaction:drugInteractionClassOut:error:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (transaction)
    {
      v11 = v8;
      *transaction = v8;
    }

    v12 = 1;
  }

  else
  {
    identifier = [v8 identifier];
    v14 = [HDDrugInteractionEngine _fetchKnownConceptWithIdentifier:identifier ontologyTransaction:classCopy errorOut:out];

    v12 = v14 != 0;
    if (v14)
    {
      ancestorIdentifier = [v8 ancestorIdentifier];
      v16 = [HDDrugInteractionEngine _drugInteractionClassForConcept:v14 ancestorIdentifier:ancestorIdentifier];

      if (transaction)
      {
        v17 = v16;
        *transaction = v16;
      }
    }

    else
    {
      _HKInitializeLogging();
      v18 = HKLogMedication();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [HDDrugInteractionEngine _drugInteractionClassWithRelationshipsFromClass:v10 ontologyTransaction:v8 drugInteractionClassOut:? error:?];
      }
    }
  }

  return v12;
}

+ (uint64_t)_drugInteractionResultForConceptWithIdentifier:(void *)identifier firstInteractionClass:(void *)class secondInteractionClass:(void *)interactionClass ontologyTransaction:(NSObject *)transaction interactionResultOut:(void *)out error:
{
  v12 = a2;
  identifierCopy = identifier;
  classCopy = class;
  interactionClassCopy = interactionClass;
  objc_opt_self();
  if (!v12)
  {
    +[HDDrugInteractionEngine _drugInteractionResultForConceptWithIdentifier:firstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:];
  }

  v16 = [HDDrugInteractionEngine _fetchKnownConceptWithIdentifier:v12 ontologyTransaction:interactionClassCopy errorOut:out];
  if (v16)
  {
    v32 = 0;
    v17 = [HDDrugInteractionEngine _severityForConceptWithIdentifier:v12 ontologyTransaction:interactionClassCopy severityOut:&v32 error:out];
    v18 = v32;
    if (v17)
    {
      transactionCopy = transaction;
      v30 = identifierCopy;
      v19 = MEMORY[0x277D103C8];
      identifier = [v16 identifier];
      v31 = 0;
      v21 = [v19 localizedEducationContentForConceptWithIdentifier:identifier ontologyTransaction:interactionClassCopy localizedEducationContentOut:&v31 error:out];
      v22 = v31;

      if (v21)
      {
        v23 = objc_alloc(MEMORY[0x277D11518]);
        validInRegions = [v16 validInRegions];
        v25 = v23;
        identifierCopy = v30;
        v26 = [v25 initWithFirstInteractionClass:v30 secondInteractionClass:classCopy severity:v18 educationContent:v22 ontologyIdentifier:v12 validRegionCodes:validInRegions];

        if (transactionCopy)
        {
          v27 = v26;
          *transactionCopy = v26;
        }
      }

      else
      {
        _HKInitializeLogging();
        v26 = HKLogMedication();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          +[HDDrugInteractionEngine _drugInteractionResultForConceptWithIdentifier:firstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:];
        }

        identifierCopy = v30;
      }
    }

    else
    {
      _HKInitializeLogging();
      v22 = HKLogMedication();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        +[HDDrugInteractionEngine _drugInteractionResultForConceptWithIdentifier:firstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:];
      }

      v21 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = HKLogMedication();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[HDDrugInteractionEngine _drugInteractionResultForConceptWithIdentifier:firstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:];
    }

    v21 = 0;
  }

  return v21;
}

+ (id)_interactionResultsForInteractionClasses:(uint64_t)classes lifestyleFactor:(void *)factor ontologyTransaction:(void *)transaction interactionClassCache:(void *)cache error:
{
  v10 = a2;
  factorCopy = factor;
  transactionCopy = transaction;
  v13 = v10;
  v14 = transactionCopy;
  objc_opt_self();
  if (!v10)
  {
    +[HDDrugInteractionEngine _interactionResultsForInteractionClasses:lifestyleFactor:ontologyTransaction:interactionClassCache:error:];
  }

  allObjects = [v10 allObjects];
  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v27 = 0;
  v25 = v14;
  v17 = [HDDrugInteractionEngine _interactionClassForLifestyleFactor:classes ontologyTransaction:factorCopy interactionClassCache:v14 interactionClassOut:&v27 error:cache];
  v18 = v27;
  v19 = 0;
  if (v17)
  {
    if ([allObjects count])
    {
      v20 = 0;
      while (1)
      {
        v21 = [allObjects objectAtIndexedSubscript:v20];
        v26 = 0;
        v22 = [HDDrugInteractionEngine _interactionResultForFirstInteractionClass:v21 secondInteractionClass:v18 ontologyTransaction:factorCopy interactionResultOut:&v26 error:cache];
        v23 = v26;

        if (!v22)
        {
          break;
        }

        if (v23)
        {
          [v16 addObject:v23];
        }

        if ([allObjects count] <= ++v20)
        {
          goto LABEL_10;
        }
      }

      v19 = 0;
    }

    else
    {
LABEL_10:
      v19 = v16;
    }

    v13 = v10;
  }

  return v19;
}

+ (id)_interactionResultsForFirstInteractionClassSet:(void *)set secondInteractionClassSet:(void *)classSet ontologyTransaction:(void *)transaction error:
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a2;
  setCopy = set;
  classSetCopy = classSet;
  objc_opt_self();
  if (v8)
  {
    if (setCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[HDDrugInteractionEngine _interactionResultsForFirstInteractionClassSet:secondInteractionClassSet:ontologyTransaction:error:];
    if (setCopy)
    {
      goto LABEL_3;
    }
  }

  +[HDDrugInteractionEngine _interactionResultsForFirstInteractionClassSet:secondInteractionClassSet:ontologyTransaction:error:];
LABEL_3:
  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = v8;
  v29 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v29)
  {
    v13 = *v39;
    v31 = v12;
    v32 = setCopy;
    v28 = *v39;
    do
    {
      v14 = 0;
      do
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v12);
        }

        v30 = v14;
        v15 = *(*(&v38 + 1) + 8 * v14);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v16 = setCopy;
        v17 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v35;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v35 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v34 + 1) + 8 * i);
              v33 = 0;
              v22 = [HDDrugInteractionEngine _interactionResultForFirstInteractionClass:v15 secondInteractionClass:v21 ontologyTransaction:classSetCopy interactionResultOut:&v33 error:transaction];
              v23 = v33;
              v24 = v23;
              if (!v22)
              {

                v12 = v31;
                v25 = 0;
                setCopy = v32;
                goto LABEL_22;
              }

              if (v23)
              {
                [v11 addObject:v23];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v14 = v30 + 1;
        v12 = v31;
        setCopy = v32;
        v13 = v28;
      }

      while (v30 + 1 != v29);
      v29 = [v31 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v29);
  }

  v25 = v11;
LABEL_22:

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (uint64_t)_conceptForIdentifier:(void *)identifier ontologyTransaction:(void *)transaction conceptOut:(void *)out errorOut:
{
  v8 = a2;
  identifierCopy = identifier;
  objc_opt_self();
  if (!v8)
  {
    +[HDDrugInteractionEngine _conceptForIdentifier:ontologyTransaction:conceptOut:errorOut:];
  }

  profile = [identifierCopy profile];
  ontologyConceptManager = [profile ontologyConceptManager];
  v19 = 0;
  v12 = [ontologyConceptManager conceptForIdentifier:v8 options:1 transaction:identifierCopy error:&v19];

  v13 = v19;
  if (v12)
  {
    if (transaction)
    {
      v14 = v12;
      *transaction = v12;
    }

    goto LABEL_11;
  }

  if (!v13)
  {
LABEL_11:
    v17 = 1;
    goto LABEL_12;
  }

  _HKInitializeLogging();
  v15 = HKLogMedication();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    +[HDDrugInteractionEngine _conceptForIdentifier:ontologyTransaction:conceptOut:errorOut:];
  }

  if (out)
  {
    v16 = v13;
    v17 = 0;
    *out = v13;
  }

  else
  {
    _HKLogDroppedError();
    v17 = 0;
  }

LABEL_12:

  return v17;
}

+ (uint64_t)_severityConceptForConceptWithIdentifier:(void *)identifier ontologyTransaction:(void *)transaction severityConceptOut:(uint64_t)out error:
{
  v8 = a2;
  identifierCopy = identifier;
  objc_opt_self();
  if (!v8)
  {
    +[HDDrugInteractionEngine _severityConceptForConceptWithIdentifier:ontologyTransaction:severityConceptOut:error:];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v10 = [MEMORY[0x277D103B8] predicateMatchingConceptsWithRelationshipType:799 withSubjectId:v8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __113__HDDrugInteractionEngine__severityConceptForConceptWithIdentifier_ontologyTransaction_severityConceptOut_error___block_invoke;
  v13[3] = &unk_2796CDBB8;
  v13[4] = &v14;
  v11 = [MEMORY[0x277D103B8] enumerateConceptsMatchingPredicate:v10 options:1 limit:1 transaction:identifierCopy error:out enumerationHandler:v13];
  if (transaction)
  {
    *transaction = v15[5];
  }

  _Block_object_dispose(&v14, 8);
  return v11;
}

+ (uint64_t)_severityForConceptWithIdentifier:(void *)identifier ontologyTransaction:(NSObject *)transaction severityOut:(uint64_t)out error:
{
  v8 = a2;
  identifierCopy = identifier;
  objc_opt_self();
  if (!v8)
  {
    +[HDDrugInteractionEngine _severityForConceptWithIdentifier:ontologyTransaction:severityOut:error:];
  }

  v28 = 0;
  v10 = [HDDrugInteractionEngine _severityConceptForConceptWithIdentifier:v8 ontologyTransaction:identifierCopy severityConceptOut:&v28 error:out];
  v11 = v28;
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    _HKInitializeLogging();
    v16 = HKLogMedication();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[HDDrugInteractionEngine _severityForConceptWithIdentifier:ontologyTransaction:severityOut:error:];
    }

    goto LABEL_11;
  }

  if (!v11)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:out code:1003 format:{@"Could not find severity concept with identifier: %@", v8}];
    _HKInitializeLogging();
    v16 = HKLogMedication();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[HDDrugInteractionEngine _severityForConceptWithIdentifier:ontologyTransaction:severityOut:error:];
    }

    goto LABEL_11;
  }

  identifier = [v11 identifier];
  rawIdentifier = [identifier rawIdentifier];

  if (rawIdentifier != 650)
  {
    identifier2 = [v12 identifier];
    rawIdentifier2 = [identifier2 rawIdentifier];

    if (rawIdentifier2 == 651)
    {
      v15 = 2;
      goto LABEL_18;
    }

    identifier3 = [v12 identifier];
    rawIdentifier3 = [identifier3 rawIdentifier];

    if (rawIdentifier3 == 652)
    {
      v15 = 3;
      goto LABEL_18;
    }

    identifier4 = [v12 identifier];
    rawIdentifier4 = [identifier4 rawIdentifier];

    if (rawIdentifier4 == 653)
    {
      v15 = 4;
      goto LABEL_18;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:out code:1003 format:{@"Could not determine correct severity type for severity concept with identifier: %@", v8}];
    _HKInitializeLogging();
    v16 = HKLogMedication();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[HDDrugInteractionEngine _severityForConceptWithIdentifier:ontologyTransaction:severityOut:error:];
    }

LABEL_11:
    v17 = 0;
    goto LABEL_21;
  }

  v15 = 1;
LABEL_18:
  v24 = objc_alloc(MEMORY[0x277D11520]);
  validInRegions = [v12 validInRegions];
  v16 = [v24 initWithSeverityLevel:v15 validRegionCodes:validInRegions];

  if (transaction)
  {
    v26 = v16;
    *transaction = v16;
  }

  v17 = 1;
LABEL_21:

  return v17;
}

+ (NSObject)_interactionClassConceptsForConcept:(void *)concept ontologyTransaction:(void *)transaction error:
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a2;
  conceptCopy = concept;
  v6 = objc_opt_self();
  if (!v5)
  {
    +[HDDrugInteractionEngine _interactionClassConceptsForConcept:ontologyTransaction:error:];
  }

  v7 = v5;
  relationships = [v7 relationships];
  if (relationships && (v9 = relationships, [v7 relationships], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v9, v11))
  {
    v51 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v12 = [MEMORY[0x277CBEB98] setWithArray:&unk_2863C2C48];
    v13 = 0x277CBE000uLL;
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v14 addObject:v7];
    v50 = v14;
    if ([v14 count])
    {
      v15 = 0;
      v46 = v7;
      do
      {
        v43 = v15;
        v16 = v50;
        v17 = [v50 copy];
        v50 = objc_alloc_init(*(v13 + 2840));

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v18 = v17;
        v44 = [v18 countByEnumeratingWithState:&v56 objects:v61 count:16];
        if (v44)
        {
          v19 = *v57;
          v47 = v18;
          v42 = *v57;
          do
          {
            v20 = 0;
            do
            {
              if (*v57 != v19)
              {
                objc_enumerationMutation(v18);
              }

              v45 = v20;
              v21 = *(*(&v56 + 1) + 8 * v20);
              v52 = 0u;
              v53 = 0u;
              v54 = 0u;
              v55 = 0u;
              relationships2 = [v21 relationships];
              v23 = [relationships2 countByEnumeratingWithState:&v52 objects:v60 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v53;
                while (2)
                {
                  for (i = 0; i != v24; ++i)
                  {
                    if (*v53 != v25)
                    {
                      objc_enumerationMutation(relationships2);
                    }

                    v27 = *(*(&v52 + 1) + 8 * i);
                    v28 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v27, "type")}];
                    v29 = [v12 containsObject:v28];

                    if (v29)
                    {
                      destination = [v27 destination];
                      if (([destination relationshipsAreLoaded] & 1) == 0)
                      {
                        identifier = [destination identifier];
                        v32 = [HDDrugInteractionEngine _fetchKnownConceptWithIdentifier:identifier ontologyTransaction:conceptCopy errorOut:transaction];

                        destination = v32;
                        if (!v32)
                        {
                          _HKInitializeLogging();
                          v39 = HKLogMedication();
                          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                          {
                            +[HDDrugInteractionEngine _interactionClassConceptsForConcept:ontologyTransaction:error:];
                          }

                          v35 = 0;
                          v7 = v46;
                          goto LABEL_40;
                        }
                      }

                      if ([v27 type] == 996)
                      {
                        v33 = v51;
                      }

                      else
                      {
                        v33 = v50;
                      }

                      [v33 addObject:destination];
                    }
                  }

                  v24 = [relationships2 countByEnumeratingWithState:&v52 objects:v60 count:16];
                  if (v24)
                  {
                    continue;
                  }

                  break;
                }
              }

              v20 = v45 + 1;
              v13 = 0x277CBE000;
              v18 = v47;
              v19 = v42;
            }

            while (v45 + 1 != v44);
            v44 = [v47 countByEnumeratingWithState:&v56 objects:v61 count:16];
          }

          while (v44);
        }

        if ([v50 count])
        {
          v34 = v43 >= 6;
        }

        else
        {
          v34 = 1;
        }

        v15 = v43 + 1;
        v7 = v46;
      }

      while (!v34);
    }

    v35 = v51;
LABEL_40:
  }

  else
  {
    v36 = MEMORY[0x277CCA9B8];
    identifier2 = [v7 identifier];
    identifier3 = [v7 identifier];
    [v36 hk_assignError:transaction code:1003 format:{@"Could not find any relationships for concept: %@ with starting concept: %@", identifier2, identifier3}];

    _HKInitializeLogging();
    v51 = HKLogMedication();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [HDDrugInteractionEngine _interactionClassConceptsForConcept:v6 ontologyTransaction:v7 error:?];
    }

    v35 = 0;
  }

  v40 = *MEMORY[0x277D85DE8];

  return v35;
}

BOOL __60__HDDrugInteractionEngine__allAreOntologyBackedMedications___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 firstOntologyCoding];
  v3 = v2 != 0;

  return v3;
}

+ (void)interactionClassesForConceptWithIdentifier:profile:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"identifier != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_interactionClassesForConceptWithIdentifier:ontologyTransaction:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"identifier != nil" object:? file:? lineNumber:? description:?];
}

+ (void)interactionClassesForMedication:profile:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"medication != nil" object:? file:? lineNumber:? description:?];
}

+ (void)interactionClassesForMedication:profile:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"medication.firstOntologyCoding != nil" object:? file:? lineNumber:? description:?];
}

+ (void)interactionClassesForMedication:profile:error:.cold.3()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_8_0(&dword_25181C000, "[%{public}@] Could not get interaction classes for medication: %{public}@", v4, v5);
}

+ (void)_interactionClassesForMedication:ontologyTransaction:interactionClassCache:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"medication != nil" object:? file:? lineNumber:? description:?];
}

+ (void)interactionClassForLifestyleFactor:profile:interactionClassOut:error:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_8_0(&dword_25181C000, "[%{public}@] Could not get interaction class for lifestyle factor: %{public}@", v4, v5);
}

+ (void)numberOfInteractionsForConceptWithIdentifier:profile:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"identifier != nil" object:? file:? lineNumber:? description:?];
}

+ (void)numberOfInteractionsForConceptWithIdentifier:profile:error:.cold.2()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_8_0(&dword_25181C000, "[%{public}@] Could not get number of interactions for concept with identifier: %{public}@", v4, v5);
}

+ (void)_numberOfInteractionsForConceptWithIdentifier:ontologyTransaction:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"identifier != nil" object:? file:? lineNumber:? description:?];
}

+ (void)numberOfInteractionsForMedication:profile:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"medication != nil" object:? file:? lineNumber:? description:?];
}

+ (void)numberOfInteractionsForMedication:profile:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"medication.firstConceptIdentifier != nil" object:? file:? lineNumber:? description:?];
}

+ (void)interactionResultForFirstInteractionClass:secondInteractionClass:profile:interactionResultOut:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"firstInteractionClass != nil" object:? file:? lineNumber:? description:?];
}

+ (void)interactionResultForFirstInteractionClass:secondInteractionClass:profile:interactionResultOut:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"secondInteractionClass != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_interactionResultForFirstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"firstInteractionClass != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_interactionResultForFirstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"secondInteractionClass != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_interactionResultForFirstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 identifier];
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_interactionResultForFirstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:.cold.4()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 identifier];
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_interactionResultForFirstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:.cold.5()
{
  OUTLINED_FUNCTION_4();
  v9 = *MEMORY[0x277D85DE8];
  v1 = [v0 destination];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)interactionResultsForInteractionClasses:profile:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"interactionClasses != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_interactionResultsForInteractionClasses:ontologyTransaction:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"interactionClasses != nil" object:? file:? lineNumber:? description:?];
}

+ (void)interactionResultForFirstMedication:secondMedication:profile:interactionResultOut:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"firstMedication != nil" object:? file:? lineNumber:? description:?];
}

+ (void)interactionResultForFirstMedication:secondMedication:profile:interactionResultOut:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"secondMedication != nil" object:? file:? lineNumber:? description:?];
}

+ (void)interactionResultForFirstMedication:secondMedication:profile:interactionResultOut:error:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"firstMedication.firstOntologyCoding != nil" object:? file:? lineNumber:? description:?];
}

+ (void)interactionResultForFirstMedication:secondMedication:profile:interactionResultOut:error:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"secondMedication.firstOntologyCoding != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_interactionResultForFirstMedication:secondMedication:ontologyTransaction:interactionClassCache:interactionResultOut:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"firstMedication != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_interactionResultForFirstMedication:secondMedication:ontologyTransaction:interactionClassCache:interactionResultOut:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"secondMedication != nil" object:? file:? lineNumber:? description:?];
}

+ (void)interactionResultForMedication:lifestyleFactor:profile:interactionResultOut:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"medication != nil" object:? file:? lineNumber:? description:?];
}

+ (void)interactionResultForMedication:lifestyleFactor:profile:interactionResultOut:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"medication.firstOntologyCoding != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_interactionResultForMedication:lifestyleFactor:ontologyTransaction:interactionClassCache:interactionResultOut:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"medication != nil" object:? file:? lineNumber:? description:?];
}

+ (void)interactionResultsForMedications:lifestyleFactors:profile:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"medications != nil" object:? file:? lineNumber:? description:?];
}

+ (void)interactionResultsForMedications:lifestyleFactors:profile:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[self _allAreOntologyBackedMedications:medications]" object:? file:? lineNumber:? description:?];
}

+ (void)_interactionResultsForMedications:lifestyleFactors:ontologyTransaction:interactionClassCache:medicationsUserDefaults:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"medications != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_interactionClassesForConceptWithIdentifier:ontologyTransaction:interactionClassCache:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"identifier != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_interactionClassConceptsForConceptWithIdentifier:ontologyTransaction:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"identifier != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_interactionClassConceptsForConceptWithIdentifier:ontologyTransaction:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Could not get interaction class for identifier: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_interactionClassConceptsForConceptWithIdentifier:ontologyTransaction:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Found no concept in ontology for concept identifier: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_drugInteractionClassForConcept:ancestorIdentifier:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"ontologyConcept != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_interactionClassForLifestyleFactorConceptIdentifier:ontologyTransaction:interactionClassOut:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Could not get interaction class for lifestyle factor concept identifier: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_fetchKnownConceptWithIdentifier:ontologyTransaction:errorOut:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"identifier != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_drugInteractionClassWithRelationshipsFromClass:ontologyTransaction:drugInteractionClassOut:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"drugInteractionClass != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_drugInteractionClassWithRelationshipsFromClass:(uint64_t)a1 ontologyTransaction:(void *)a2 drugInteractionClassOut:error:.cold.2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a2 identifier];
  v3 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)_drugInteractionResultForConceptWithIdentifier:firstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"identifier != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_drugInteractionResultForConceptWithIdentifier:firstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Could not load severity concept for drug interaction with identifier: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_drugInteractionResultForConceptWithIdentifier:firstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Could not load localized education concept for drug interaction with identifier: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_drugInteractionResultForConceptWithIdentifier:firstInteractionClass:secondInteractionClass:ontologyTransaction:interactionResultOut:error:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Could not load interaction concept for drug interaction with identifier: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_interactionResultsForInteractionClasses:lifestyleFactor:ontologyTransaction:interactionClassCache:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"interactionClasses != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_interactionResultsForFirstInteractionClassSet:secondInteractionClassSet:ontologyTransaction:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"firstInteractionClassSet" object:? file:? lineNumber:? description:?];
}

+ (void)_interactionResultsForFirstInteractionClassSet:secondInteractionClassSet:ontologyTransaction:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"secondInteractionClassSet" object:? file:? lineNumber:? description:?];
}

+ (void)_conceptForIdentifier:ontologyTransaction:conceptOut:errorOut:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"identifier != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_conceptForIdentifier:ontologyTransaction:conceptOut:errorOut:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Could not find concept in ontology database for concept with identifier: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_severityConceptForConceptWithIdentifier:ontologyTransaction:severityConceptOut:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"identifier != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_severityForConceptWithIdentifier:ontologyTransaction:severityOut:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"identifier != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_severityForConceptWithIdentifier:ontologyTransaction:severityOut:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Could not load concept with identifier: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_severityForConceptWithIdentifier:ontologyTransaction:severityOut:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Could not determine correct severity type for severity concept with identifier: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_severityForConceptWithIdentifier:ontologyTransaction:severityOut:error:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Could not find severity concept with identifier: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_interactionClassConceptsForConcept:ontologyTransaction:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"startingConcept != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_interactionClassConceptsForConcept:ontologyTransaction:error:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x277D85DE8];
  [v0 type];
  v1 = [0 identifier];
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_interactionClassConceptsForConcept:(uint64_t)a1 ontologyTransaction:(void *)a2 error:.cold.3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a2 identifier];
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

@end