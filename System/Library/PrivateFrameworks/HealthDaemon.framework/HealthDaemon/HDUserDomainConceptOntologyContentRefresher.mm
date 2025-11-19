@interface HDUserDomainConceptOntologyContentRefresher
+ (BOOL)_determineIfEligibleForRefreshAndPerformRefreshOperationForConcept:(id)a3 profile:(id)a4 ontologyTransaction:(id)a5 outRefreshedUserDomainConcept:(id *)a6 error:(id *)a7;
+ (id)_refreshUserDomainConcept:(id)a3 withOntologyConcept:(id)a4 codings:(id)a5 ontologyTransaction:(id)a6 error:(id *)a7;
+ (id)propertyCollectionWithOntologyConcept:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5;
+ (id)refreshOntologyContentForUserDomainConcept:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (int64_t)_isAbleToPromoteConceptToGrouper:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5;
+ (int64_t)_isAbleToUpdateUserDomainConcept:(id)a3 outAdditionalCodings:(id *)a4 outConceptToRefreshWith:(id *)a5 ontologyTransaction:(id)a6 error:(id *)a7;
+ (int64_t)_loadMercuryConceptForRefreshFromUserDomainConcept:(id)a3 ontologyCoding:(id)a4 outConcept:(id *)a5 ontologyTransaction:(id)a6 error:(id *)a7;
+ (int64_t)_performAutomaticGrouperPromotionForConcept:(id)a3 userDomainConcept:(id)a4 outConcept:(id *)a5 ontologyTransaction:(id)a6 error:(id *)a7;
@end

@implementation HDUserDomainConceptOntologyContentRefresher

+ (id)refreshOntologyContentForUserDomainConcept:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__12;
  v28 = __Block_byref_object_dispose__12;
  v29 = 0;
  v13 = [v11 internalContentDatabaseManager];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __116__HDUserDomainConceptOntologyContentRefresher_refreshOntologyContentForUserDomainConcept_profile_transaction_error___block_invoke;
  v19[3] = &unk_278615208;
  v23 = a1;
  v14 = v10;
  v20 = v14;
  v15 = v11;
  v21 = v15;
  v22 = &v24;
  LODWORD(a6) = [v13 performTransactionWithDatabaseTransaction:v12 error:a6 transactionHandler:v19];

  if (a6)
  {
    v16 = v25[5];
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  _Block_object_dispose(&v24, 8);

  return v17;
}

uint64_t __116__HDUserDomainConceptOntologyContentRefresher_refreshOntologyContentForUserDomainConcept_profile_transaction_error___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = [v6 _determineIfEligibleForRefreshAndPerformRefreshOperationForConcept:v4 profile:v5 ontologyTransaction:a2 outRefreshedUserDomainConcept:&obj error:a3];
  objc_storeStrong((v7 + 40), obj);
  return v8;
}

+ (id)propertyCollectionWithOntologyConcept:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (BOOL)_determineIfEligibleForRefreshAndPerformRefreshOperationForConcept:(id)a3 profile:(id)a4 ontologyTransaction:(id)a5 outRefreshedUserDomainConcept:(id *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v26 = 0;
  v27 = 0;
  v15 = [a1 _isAbleToUpdateUserDomainConcept:v12 outAdditionalCodings:&v27 outConceptToRefreshWith:&v26 ontologyTransaction:v14 error:a7];
  v16 = v27;
  v17 = v26;
  if (v15 == 1)
  {
    v18 = [a1 _refreshUserDomainConcept:v12 withOntologyConcept:v17 codings:v16 ontologyTransaction:v14 error:a7];
    v19 = v18;
    if (v18 && (v18 == v12 || ([v14 databaseTransaction], v20 = objc_claimAutoreleasedReturnValue(), v25 = +[HDUserDomainConceptEntity storeUserDomainConcept:method:profile:transaction:error:](HDUserDomainConceptEntity, "storeUserDomainConcept:method:profile:transaction:error:", v19, 3, v13, v20, a7), v20, v25)))
    {
      if (a6)
      {
        v21 = v19;
        *a6 = v19;
      }

      v22 = [a1 performAdditionalCleanupAfterRefreshingUserDomainConcept:v19 profile:v13 ontologyTransaction:v14 error:a7];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    if (a6)
    {
      v23 = v12;
      *a6 = v12;
    }

    v22 = v15 == 2;
  }

  return v22;
}

+ (int64_t)_isAbleToUpdateUserDomainConcept:(id)a3 outAdditionalCodings:(id *)a4 outConceptToRefreshWith:(id *)a5 ontologyTransaction:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a3;
  v14 = [v13 firstOntologyCoding];
  if (v14)
  {
    v15 = [a1 _loadMercuryConceptForRefreshFromUserDomainConcept:v13 ontologyCoding:v14 outConcept:a5 ontologyTransaction:v12 error:a7];
  }

  else
  {
    v15 = [a1 resolveOntologyConceptForRefreshFromUserDomainConceptWithoutOntologyCoding:v13 outAdditionalCodings:a4 outConceptToRefreshWith:a5 ontologyTransaction:v12 error:a7];
  }

  v16 = v15;

  return v16;
}

+ (int64_t)_loadMercuryConceptForRefreshFromUserDomainConcept:(id)a3 ontologyCoding:(id)a4 outConcept:(id *)a5 ontologyTransaction:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a6;
  v14 = MEMORY[0x277CCD1D0];
  v15 = a4;
  v16 = [v14 alloc];
  v17 = [v15 code];

  v18 = [v16 initWithRawIdentifier:{objc_msgSend(v17, "integerValue")}];
  v19 = [v13 internalContentDatabaseManager];
  v26 = 0;
  v20 = [v19 conceptForIdentifier:v18 options:4 error:&v26];
  v21 = v26;

  if (v20)
  {
    if ([a1 supportsAutomaticGrouperPromotion])
    {
      v22 = [a1 _performAutomaticGrouperPromotionForConcept:v20 userDomainConcept:v12 outConcept:a5 ontologyTransaction:v13 error:a7];
    }

    else
    {
      if (a5)
      {
        v24 = v20;
        *a5 = v20;
      }

      v22 = 1;
    }
  }

  else if (v21)
  {
    if (a7)
    {
      v23 = v21;
      v22 = 0;
      *a7 = v21;
    }

    else
    {
      _HKLogDroppedError();
      v22 = 0;
    }
  }

  else
  {
    v22 = 2;
  }

  return v22;
}

+ (int64_t)_performAutomaticGrouperPromotionForConcept:(id)a3 userDomainConcept:(id)a4 outConcept:(id *)a5 ontologyTransaction:(id)a6 error:(id *)a7
{
  v40 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [a1 _isAbleToPromoteConceptToGrouper:v12 ontologyTransaction:v14 error:a7];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_20;
  }

  if (v15 != 2)
  {
    v23 = [v14 internalContentDatabaseManager];
    v35 = 0;
    v24 = [objc_opt_class() grouperConceptForOntologyConcept:v12 ontologyTransaction:v14 grouperConceptOut:&v35 error:a7];
    v25 = v35;
    v26 = v25;
    v16 = 0;
    if (v24)
    {
      if (a5)
      {
        v27 = v25;
        *a5 = v26;
      }

      if (v26 == v12)
      {
        goto LABEL_18;
      }

      _HKInitializeLogging();
      v28 = HKLogHealthOntology();
      v16 = 1;
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);

      if (v29)
      {
        v30 = HKLogHealthOntology();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = [v13 UUID];
          v32 = [v31 hk_shortRepresentation];
          *buf = 138543618;
          v37 = a1;
          v38 = 2114;
          v39 = v32;
          _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_INFO, "%{public}@: UDC %{public}@ will be refreshed with a new mercury grouper concept, since this generator class supports automatic grouper concept promotion.", buf, 0x16u);
        }

LABEL_18:
        v16 = 1;
      }
    }

    goto LABEL_20;
  }

  _HKInitializeLogging();
  v17 = HKLogHealthOntology();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

  if (v18)
  {
    v19 = HKLogHealthOntology();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v13 UUID];
      v21 = [v20 hk_shortRepresentation];
      *buf = 138543618;
      v37 = a1;
      v38 = 2114;
      v39 = v21;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_INFO, "%{public}@: UDC %{public}@ is already a grouper concept, so we will not proceed with promoting it, even though this generator class supports automatic grouper promotion.", buf, 0x16u);
    }
  }

  if (a5)
  {
    v22 = v12;
    *a5 = v12;
  }

  v16 = 1;
LABEL_20:

  v33 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (int64_t)_isAbleToPromoteConceptToGrouper:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 internalContentDatabaseManager];
  v10 = [objc_opt_class() doesConceptGroupOtherConcepts:v8 ontologyTransaction:v7 error:a5];

  v11 = 1;
  if (v10 != 2)
  {
    v11 = 2;
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_refreshUserDomainConcept:(id)a3 withOntologyConcept:(id)a4 codings:(id)a5 ontologyTransaction:(id)a6 error:(id *)a7
{
  v72 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [a1 propertyCollectionWithOntologyConcept:v13 ontologyTransaction:a6 error:a7];
  if (!v15)
  {
    v25 = 0;
    goto LABEL_31;
  }

  v16 = v12;
  v17 = v16;
  if ([v15 count] >= 1)
  {
    v18 = [v16 propertyCollection];
    v19 = [MEMORY[0x277CCDB28] propertyCollectionByMergingCollection:v18 otherCollection:v15 options:1];
    v17 = v16;
    if (v19 != v18)
    {
      _HKInitializeLogging();
      v20 = HKLogHealthOntology();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);

      if (v21)
      {
        v22 = HKLogHealthOntology();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v56 = [v16 UUID];
          v23 = [v56 hk_shortRepresentation];
          v54 = [v16 propertyCollection];
          *buf = 138544130;
          v61 = a1;
          v62 = 2114;
          v63 = v23;
          v64 = 2048;
          v65 = [v54 count];
          v66 = 2048;
          v67 = [v19 count];
          _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_INFO, "%{public}@: Update UDC %{public}@ with new property collection (%ld -> %ld)", buf, 0x2Au);
        }
      }

      v24 = [v19 properties];
      v17 = [v16 copyUserDomainConceptBySettingProperties:v24];
    }
  }

  if (![v16 isAdHocUserDomainConcept] || !objc_msgSend(v13, "isAdHoc"))
  {
    v26 = objc_alloc(MEMORY[0x277CBEB58]);
    v27 = [v13 coding];
    v28 = [v26 initWithObjects:{v27, 0}];

    if (v14 && [v13 isAdHoc])
    {
      [v28 addObjectsFromArray:v14];
    }

    v29 = [v17 codingCollection];
    v30 = [v29 codingsSet];
    v31 = v30;
    v59 = v14;
    if (v30 == v28)
    {
    }

    else
    {
      if (!v28)
      {

LABEL_24:
        v38 = v12;
        _HKInitializeLogging();
        v39 = HKLogHealthOntology();
        v40 = os_log_type_enabled(v39, OS_LOG_TYPE_INFO);

        if (v40)
        {
          v41 = HKLogHealthOntology();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v58 = [v17 UUID];
            v50 = [v58 hk_shortRepresentation];
            v55 = [v17 codingCollection];
            v53 = [v55 codingsSet];
            v52 = [v53 allObjects];
            v42 = [v52 componentsJoinedByString:{@", "}];
            v51 = [v17 codingCollection];
            v49 = [v51 count];
            v43 = [v28 allObjects];
            v44 = [v43 componentsJoinedByString:{@", "}];
            v45 = [v28 count];
            *buf = 138544642;
            v61 = a1;
            v62 = 2114;
            v63 = v50;
            v64 = 2112;
            v65 = v42;
            v66 = 2048;
            v67 = v49;
            v68 = 2112;
            v69 = v44;
            v70 = 2048;
            v71 = v45;
            _os_log_impl(&dword_228986000, v41, OS_LOG_TYPE_INFO, "%{public}@: Update UDC %{public}@ with new medical codings set[%@]%ld -> set[%@]%ld", buf, 0x3Eu);
          }
        }

        v46 = [v28 allObjects];
        v25 = [v17 userDomainConceptByReplacingCodings:v46];

        v12 = v38;
        goto LABEL_29;
      }

      v32 = [v17 codingCollection];
      [v32 codingsSet];
      v33 = v15;
      v34 = v13;
      v35 = a1;
      v37 = v36 = v12;
      v57 = [v37 isEqualToSet:v28];

      v12 = v36;
      a1 = v35;
      v13 = v34;
      v15 = v33;

      if (!v57)
      {
        goto LABEL_24;
      }
    }

    v25 = v17;
LABEL_29:

    v14 = v59;
    goto LABEL_30;
  }

  v25 = v17;
LABEL_30:

LABEL_31:
  v47 = *MEMORY[0x277D85DE8];

  return v25;
}

@end