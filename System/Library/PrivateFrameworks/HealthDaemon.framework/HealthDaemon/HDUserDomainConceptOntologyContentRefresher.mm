@interface HDUserDomainConceptOntologyContentRefresher
+ (BOOL)_determineIfEligibleForRefreshAndPerformRefreshOperationForConcept:(id)concept profile:(id)profile ontologyTransaction:(id)transaction outRefreshedUserDomainConcept:(id *)domainConcept error:(id *)error;
+ (id)_refreshUserDomainConcept:(id)concept withOntologyConcept:(id)ontologyConcept codings:(id)codings ontologyTransaction:(id)transaction error:(id *)error;
+ (id)propertyCollectionWithOntologyConcept:(id)concept ontologyTransaction:(id)transaction error:(id *)error;
+ (id)refreshOntologyContentForUserDomainConcept:(id)concept profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (int64_t)_isAbleToPromoteConceptToGrouper:(id)grouper ontologyTransaction:(id)transaction error:(id *)error;
+ (int64_t)_isAbleToUpdateUserDomainConcept:(id)concept outAdditionalCodings:(id *)codings outConceptToRefreshWith:(id *)with ontologyTransaction:(id)transaction error:(id *)error;
+ (int64_t)_loadMercuryConceptForRefreshFromUserDomainConcept:(id)concept ontologyCoding:(id)coding outConcept:(id *)outConcept ontologyTransaction:(id)transaction error:(id *)error;
+ (int64_t)_performAutomaticGrouperPromotionForConcept:(id)concept userDomainConcept:(id)domainConcept outConcept:(id *)outConcept ontologyTransaction:(id)transaction error:(id *)error;
@end

@implementation HDUserDomainConceptOntologyContentRefresher

+ (id)refreshOntologyContentForUserDomainConcept:(id)concept profile:(id)profile transaction:(id)transaction error:(id *)error
{
  conceptCopy = concept;
  profileCopy = profile;
  transactionCopy = transaction;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__12;
  v28 = __Block_byref_object_dispose__12;
  v29 = 0;
  internalContentDatabaseManager = [profileCopy internalContentDatabaseManager];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __116__HDUserDomainConceptOntologyContentRefresher_refreshOntologyContentForUserDomainConcept_profile_transaction_error___block_invoke;
  v19[3] = &unk_278615208;
  selfCopy = self;
  v14 = conceptCopy;
  v20 = v14;
  v15 = profileCopy;
  v21 = v15;
  v22 = &v24;
  LODWORD(error) = [internalContentDatabaseManager performTransactionWithDatabaseTransaction:transactionCopy error:error transactionHandler:v19];

  if (error)
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

+ (id)propertyCollectionWithOntologyConcept:(id)concept ontologyTransaction:(id)transaction error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (BOOL)_determineIfEligibleForRefreshAndPerformRefreshOperationForConcept:(id)concept profile:(id)profile ontologyTransaction:(id)transaction outRefreshedUserDomainConcept:(id *)domainConcept error:(id *)error
{
  conceptCopy = concept;
  profileCopy = profile;
  transactionCopy = transaction;
  v26 = 0;
  v27 = 0;
  v15 = [self _isAbleToUpdateUserDomainConcept:conceptCopy outAdditionalCodings:&v27 outConceptToRefreshWith:&v26 ontologyTransaction:transactionCopy error:error];
  v16 = v27;
  v17 = v26;
  if (v15 == 1)
  {
    v18 = [self _refreshUserDomainConcept:conceptCopy withOntologyConcept:v17 codings:v16 ontologyTransaction:transactionCopy error:error];
    v19 = v18;
    if (v18 && (v18 == conceptCopy || ([transactionCopy databaseTransaction], v20 = objc_claimAutoreleasedReturnValue(), v25 = +[HDUserDomainConceptEntity storeUserDomainConcept:method:profile:transaction:error:](HDUserDomainConceptEntity, "storeUserDomainConcept:method:profile:transaction:error:", v19, 3, profileCopy, v20, error), v20, v25)))
    {
      if (domainConcept)
      {
        v21 = v19;
        *domainConcept = v19;
      }

      v22 = [self performAdditionalCleanupAfterRefreshingUserDomainConcept:v19 profile:profileCopy ontologyTransaction:transactionCopy error:error];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    if (domainConcept)
    {
      v23 = conceptCopy;
      *domainConcept = conceptCopy;
    }

    v22 = v15 == 2;
  }

  return v22;
}

+ (int64_t)_isAbleToUpdateUserDomainConcept:(id)concept outAdditionalCodings:(id *)codings outConceptToRefreshWith:(id *)with ontologyTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  conceptCopy = concept;
  firstOntologyCoding = [conceptCopy firstOntologyCoding];
  if (firstOntologyCoding)
  {
    v15 = [self _loadMercuryConceptForRefreshFromUserDomainConcept:conceptCopy ontologyCoding:firstOntologyCoding outConcept:with ontologyTransaction:transactionCopy error:error];
  }

  else
  {
    v15 = [self resolveOntologyConceptForRefreshFromUserDomainConceptWithoutOntologyCoding:conceptCopy outAdditionalCodings:codings outConceptToRefreshWith:with ontologyTransaction:transactionCopy error:error];
  }

  v16 = v15;

  return v16;
}

+ (int64_t)_loadMercuryConceptForRefreshFromUserDomainConcept:(id)concept ontologyCoding:(id)coding outConcept:(id *)outConcept ontologyTransaction:(id)transaction error:(id *)error
{
  conceptCopy = concept;
  transactionCopy = transaction;
  v14 = MEMORY[0x277CCD1D0];
  codingCopy = coding;
  v16 = [v14 alloc];
  code = [codingCopy code];

  v18 = [v16 initWithRawIdentifier:{objc_msgSend(code, "integerValue")}];
  internalContentDatabaseManager = [transactionCopy internalContentDatabaseManager];
  v26 = 0;
  v20 = [internalContentDatabaseManager conceptForIdentifier:v18 options:4 error:&v26];
  v21 = v26;

  if (v20)
  {
    if ([self supportsAutomaticGrouperPromotion])
    {
      v22 = [self _performAutomaticGrouperPromotionForConcept:v20 userDomainConcept:conceptCopy outConcept:outConcept ontologyTransaction:transactionCopy error:error];
    }

    else
    {
      if (outConcept)
      {
        v24 = v20;
        *outConcept = v20;
      }

      v22 = 1;
    }
  }

  else if (v21)
  {
    if (error)
    {
      v23 = v21;
      v22 = 0;
      *error = v21;
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

+ (int64_t)_performAutomaticGrouperPromotionForConcept:(id)concept userDomainConcept:(id)domainConcept outConcept:(id *)outConcept ontologyTransaction:(id)transaction error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  domainConceptCopy = domainConcept;
  transactionCopy = transaction;
  v15 = [self _isAbleToPromoteConceptToGrouper:conceptCopy ontologyTransaction:transactionCopy error:error];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_20;
  }

  if (v15 != 2)
  {
    internalContentDatabaseManager = [transactionCopy internalContentDatabaseManager];
    v35 = 0;
    v24 = [objc_opt_class() grouperConceptForOntologyConcept:conceptCopy ontologyTransaction:transactionCopy grouperConceptOut:&v35 error:error];
    v25 = v35;
    v26 = v25;
    v16 = 0;
    if (v24)
    {
      if (outConcept)
      {
        v27 = v25;
        *outConcept = v26;
      }

      if (v26 == conceptCopy)
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
          uUID = [domainConceptCopy UUID];
          hk_shortRepresentation = [uUID hk_shortRepresentation];
          *buf = 138543618;
          selfCopy2 = self;
          v38 = 2114;
          v39 = hk_shortRepresentation;
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
      uUID2 = [domainConceptCopy UUID];
      hk_shortRepresentation2 = [uUID2 hk_shortRepresentation];
      *buf = 138543618;
      selfCopy2 = self;
      v38 = 2114;
      v39 = hk_shortRepresentation2;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_INFO, "%{public}@: UDC %{public}@ is already a grouper concept, so we will not proceed with promoting it, even though this generator class supports automatic grouper promotion.", buf, 0x16u);
    }
  }

  if (outConcept)
  {
    v22 = conceptCopy;
    *outConcept = conceptCopy;
  }

  v16 = 1;
LABEL_20:

  v33 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (int64_t)_isAbleToPromoteConceptToGrouper:(id)grouper ontologyTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  grouperCopy = grouper;
  internalContentDatabaseManager = [transactionCopy internalContentDatabaseManager];
  v10 = [objc_opt_class() doesConceptGroupOtherConcepts:grouperCopy ontologyTransaction:transactionCopy error:error];

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

+ (id)_refreshUserDomainConcept:(id)concept withOntologyConcept:(id)ontologyConcept codings:(id)codings ontologyTransaction:(id)transaction error:(id *)error
{
  v72 = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  ontologyConceptCopy = ontologyConcept;
  codingsCopy = codings;
  v15 = [self propertyCollectionWithOntologyConcept:ontologyConceptCopy ontologyTransaction:transaction error:error];
  if (!v15)
  {
    v25 = 0;
    goto LABEL_31;
  }

  v16 = conceptCopy;
  v17 = v16;
  if ([v15 count] >= 1)
  {
    propertyCollection = [v16 propertyCollection];
    v19 = [MEMORY[0x277CCDB28] propertyCollectionByMergingCollection:propertyCollection otherCollection:v15 options:1];
    v17 = v16;
    if (v19 != propertyCollection)
    {
      _HKInitializeLogging();
      v20 = HKLogHealthOntology();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);

      if (v21)
      {
        v22 = HKLogHealthOntology();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          uUID = [v16 UUID];
          hk_shortRepresentation = [uUID hk_shortRepresentation];
          propertyCollection2 = [v16 propertyCollection];
          *buf = 138544130;
          selfCopy2 = self;
          v62 = 2114;
          v63 = hk_shortRepresentation;
          v64 = 2048;
          v65 = [propertyCollection2 count];
          v66 = 2048;
          v67 = [v19 count];
          _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_INFO, "%{public}@: Update UDC %{public}@ with new property collection (%ld -> %ld)", buf, 0x2Au);
        }
      }

      properties = [v19 properties];
      v17 = [v16 copyUserDomainConceptBySettingProperties:properties];
    }
  }

  if (![v16 isAdHocUserDomainConcept] || !objc_msgSend(ontologyConceptCopy, "isAdHoc"))
  {
    v26 = objc_alloc(MEMORY[0x277CBEB58]);
    coding = [ontologyConceptCopy coding];
    v28 = [v26 initWithObjects:{coding, 0}];

    if (codingsCopy && [ontologyConceptCopy isAdHoc])
    {
      [v28 addObjectsFromArray:codingsCopy];
    }

    codingCollection = [v17 codingCollection];
    codingsSet = [codingCollection codingsSet];
    v31 = codingsSet;
    v59 = codingsCopy;
    if (codingsSet == v28)
    {
    }

    else
    {
      if (!v28)
      {

LABEL_24:
        v38 = conceptCopy;
        _HKInitializeLogging();
        v39 = HKLogHealthOntology();
        v40 = os_log_type_enabled(v39, OS_LOG_TYPE_INFO);

        if (v40)
        {
          v41 = HKLogHealthOntology();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            uUID2 = [v17 UUID];
            hk_shortRepresentation2 = [uUID2 hk_shortRepresentation];
            codingCollection2 = [v17 codingCollection];
            codingsSet2 = [codingCollection2 codingsSet];
            allObjects = [codingsSet2 allObjects];
            v42 = [allObjects componentsJoinedByString:{@", "}];
            codingCollection3 = [v17 codingCollection];
            v49 = [codingCollection3 count];
            allObjects2 = [v28 allObjects];
            v44 = [allObjects2 componentsJoinedByString:{@", "}];
            v45 = [v28 count];
            *buf = 138544642;
            selfCopy2 = self;
            v62 = 2114;
            v63 = hk_shortRepresentation2;
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

        allObjects3 = [v28 allObjects];
        v25 = [v17 userDomainConceptByReplacingCodings:allObjects3];

        conceptCopy = v38;
        goto LABEL_29;
      }

      codingCollection4 = [v17 codingCollection];
      [codingCollection4 codingsSet];
      v33 = v15;
      v34 = ontologyConceptCopy;
      selfCopy3 = self;
      v37 = v36 = conceptCopy;
      v57 = [v37 isEqualToSet:v28];

      conceptCopy = v36;
      self = selfCopy3;
      ontologyConceptCopy = v34;
      v15 = v33;

      if (!v57)
      {
        goto LABEL_24;
      }
    }

    v25 = v17;
LABEL_29:

    codingsCopy = v59;
    goto LABEL_30;
  }

  v25 = v17;
LABEL_30:

LABEL_31:
  v47 = *MEMORY[0x277D85DE8];

  return v25;
}

@end