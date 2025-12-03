@interface HDMedicalUserDomainConceptGenerator
+ (BOOL)generateUserDomainConceptForMedicalRecord:(id)record entityPersistentID:(id)d insertionContext:(id)context profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (BOOL)remapMedicalRecordsIfNeededForUserDomainConcept:(id)concept shouldExcludeExistingConcept:(BOOL)existingConcept profile:(id)profile ontologyTransaction:(id)transaction error:(id *)error;
+ (id)_fetchGroupByConceptAndLoadRelationshipsWith:(void *)with codings:(void *)codings ontologyTransaction:(uint64_t)transaction error:;
+ (id)_fetchUserDomainConceptForMedicalRecord:(void *)record existingUserDomainConcept:(int)concept shouldExcludeExistingUserDomainConcept:(void *)domainConcept profile:(void *)profile ontologyTransaction:(char *)transaction outShouldUpdateNewUserDomainConcept:(uint64_t)userDomainConcept error:;
+ (id)propertyCollectionWithOntologyConcept:(id)concept ontologyTransaction:(id)transaction error:(id *)error;
+ (int64_t)resolveOntologyConceptForRefreshFromUserDomainConceptWithoutOntologyCoding:(id)coding outAdditionalCodings:(id *)codings outConceptToRefreshWith:(id *)with ontologyTransaction:(id)transaction error:(id *)error;
@end

@implementation HDMedicalUserDomainConceptGenerator

+ (BOOL)generateUserDomainConceptForMedicalRecord:(id)record entityPersistentID:(id)d insertionContext:(id)context profile:(id)profile transaction:(id)transaction error:(id *)error
{
  recordCopy = record;
  dCopy = d;
  profileCopy = profile;
  transactionCopy = transaction;
  if ([objc_opt_class() groupsByUserDomainConcept])
  {
    errorCopy = error;
    v16 = recordCopy;
    v17 = profileCopy;
    v18 = transactionCopy;
    v19 = objc_opt_self();
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__148;
    v51 = __Block_byref_object_dispose__148;
    v52 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    internalContentDatabaseManager = [v17 internalContentDatabaseManager];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __116__HDMedicalUserDomainConceptGenerator__userDomainConceptForMedicalRecord_profile_transaction_shouldUpdateOut_error___block_invoke;
    v37[3] = &unk_2786276B8;
    v40 = &v47;
    v42 = v19;
    v21 = v16;
    v38 = v21;
    v22 = v17;
    v39 = v22;
    v41 = &v43;
    LOBYTE(v17) = [internalContentDatabaseManager performTransactionWithDatabaseTransaction:v18 error:error transactionHandler:v37];

    if (v17)
    {
      v23 = v48[5];
    }

    else
    {
      v23 = 0;
    }

    v25 = *(v44 + 24);
    v26 = v23;

    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v47, 8);

    if (v26 && (!v25 || [HDUserDomainConceptEntity storeUserDomainConcept:v26 method:2 profile:v22 transaction:v18 error:error]))
    {
      v35 = dCopy;
      v27 = v18;
      v28 = v26;
      objc_opt_self();
      protectedDatabase = [v27 protectedDatabase];
      uUID = [v28 UUID];

      v31 = HDDataEntityPredicateForDataUUID();
      v32 = [(HDSQLiteEntity *)HDMedicalUserDomainConceptEntity anyInDatabase:protectedDatabase predicate:v31 error:error];

      if (v32)
      {
        v33 = v35;
        v24 = +[HDMedicalUserDomainConceptMappingEntity insertUserDomainConceptID:medicalRecordID:transaction:error:](HDMedicalUserDomainConceptMappingEntity, "insertUserDomainConceptID:medicalRecordID:transaction:error:", [v32 persistentID], objc_msgSend(v35, "integerValue"), v27, errorCopy);
      }

      else
      {
        v24 = 0;
        v33 = v35;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 1;
  }

  return v24;
}

+ (BOOL)remapMedicalRecordsIfNeededForUserDomainConcept:(id)concept shouldExcludeExistingConcept:(BOOL)existingConcept profile:(id)profile ontologyTransaction:(id)transaction error:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  profileCopy = profile;
  transactionCopy = transaction;
  v15 = HDMedicalRecordEntityPredicateForMedicalUserDomainConcept(conceptCopy);
  databaseTransaction = [transactionCopy databaseTransaction];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __150__HDMedicalUserDomainConceptGenerator_remapMedicalRecordsIfNeededForUserDomainConcept_shouldExcludeExistingConcept_profile_ontologyTransaction_error___block_invoke;
  v31[3] = &unk_278627690;
  existingConceptCopy = existingConcept;
  v32 = conceptCopy;
  v33 = profileCopy;
  v34 = transactionCopy;
  selfCopy = self;
  v17 = transactionCopy;
  v18 = profileCopy;
  v19 = conceptCopy;
  v20 = v18;
  v21 = v31;
  v22 = databaseTransaction;
  v23 = v15;
  objc_opt_self();
  v24 = [v22 databaseForEntityClass:objc_opt_class()];

  v25 = [(HDSQLiteEntity *)HDMedicalRecordEntity queryWithDatabase:v24 predicate:v23];

  v40[0] = @"data_type";
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __117__HDMedicalUserDomainConceptGenerator__enumerateMedicalRecordSamplesWithPredicate_profile_transaction_error_handler___block_invoke;
  v37[3] = &unk_278618880;
  v38 = v20;
  v39 = v21;
  v27 = v21;
  v28 = v20;
  LOBYTE(error) = [v25 enumeratePersistentIDsAndProperties:v26 error:error enumerationHandler:v37];

  v29 = *MEMORY[0x277D85DE8];
  return error;
}

BOOL __150__HDMedicalUserDomainConceptGenerator_remapMedicalRecordsIfNeededForUserDomainConcept_shouldExcludeExistingConcept_profile_ontologyTransaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v71 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 56);
  v8 = MEMORY[0x277CCABB0];
  v9 = a2;
  v10 = [v8 numberWithLongLong:a3];
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = v9;
  v16 = v10;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  v20 = a4;
  v21 = v19;
  v22 = objc_opt_self();
  v62 = 0;
  v23 = [(HDMedicalUserDomainConceptGenerator *)v22 _fetchUserDomainConceptForMedicalRecord:v15 existingUserDomainConcept:v17 shouldExcludeExistingUserDomainConcept:v11 profile:v18 ontologyTransaction:v21 outShouldUpdateNewUserDomainConcept:&v62 error:v20];
  if (v23)
  {
    v61 = v16;
    if (v62 == 1)
    {
      v24 = [v21 databaseTransaction];
      v25 = [HDUserDomainConceptEntity storeUserDomainConcept:v23 method:2 profile:v18 transaction:v24 error:v20];

      if (!v25)
      {
        v29 = 0;
        goto LABEL_15;
      }
    }

    v26 = [v17 UUID];
    v27 = [v23 UUID];
    v28 = [v26 isEqual:v27];

    if (v28)
    {
      v29 = 1;
LABEL_15:
      v16 = v61;
      goto LABEL_20;
    }

    v51 = v20;
    v53 = v18;
    _HKInitializeLogging();
    v30 = HKLogHealthOntology();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);

    v32 = v61;
    if (v31)
    {
      v33 = HKLogHealthOntology();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v59 = [v15 UUID];
        v55 = [v59 hk_shortRepresentation];
        v57 = [v17 UUID];
        v34 = [v57 hk_shortRepresentation];
        v35 = [v23 UUID];
        v36 = [v35 hk_shortRepresentation];
        *buf = 138544130;
        v64 = v22;
        v65 = 2114;
        v66 = v55;
        v67 = 2114;
        v68 = v34;
        v69 = 2114;
        v70 = v36;
        _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_INFO, "%{public}@: Move UDC mapping for record %{public}@, %{public}@ -> %{public}@", buf, 0x2Au);

        v32 = v61;
      }
    }

    v37 = [v21 databaseTransaction];
    v56 = v32;
    v60 = v23;
    v38 = v37;
    v39 = v17;
    objc_opt_self();
    v58 = v38;
    v40 = [v38 protectedDatabase];
    v41 = [v39 UUID];

    v42 = HDDataEntityPredicateForDataUUID();
    v43 = [(HDSQLiteEntity *)HDMedicalUserDomainConceptEntity anyInDatabase:v40 predicate:v42 error:v52];

    v54 = v43;
    if (v43)
    {
      v44 = [v58 protectedDatabase];
      v45 = [v60 UUID];
      v46 = HDDataEntityPredicateForDataUUID();
      v47 = [(HDSQLiteEntity *)HDMedicalUserDomainConceptEntity anyInDatabase:v44 predicate:v46 error:v52];

      if (v47)
      {
        v48 = v58;
        v29 = +[HDMedicalUserDomainConceptMappingEntity updateMappingFromRecordWithPersistentID:withMapToUDCWithPersistentID:toMapToUDCWithPersistentID:transaction:error:](HDMedicalUserDomainConceptMappingEntity, "updateMappingFromRecordWithPersistentID:withMapToUDCWithPersistentID:toMapToUDCWithPersistentID:transaction:error:", [v56 longLongValue], objc_msgSend(v54, "persistentID"), objc_msgSend(v47, "persistentID"), v58, v52);
        v16 = v61;
        v18 = v53;
      }

      else
      {
        v29 = 0;
        v16 = v61;
        v18 = v53;
        v48 = v58;
      }
    }

    else
    {
      v29 = 0;
      v16 = v61;
      v18 = v53;
      v48 = v58;
    }
  }

  else
  {
    v29 = 0;
  }

LABEL_20:

  v49 = *MEMORY[0x277D85DE8];
  return v29;
}

+ (id)propertyCollectionWithOntologyConcept:(id)concept ontologyTransaction:(id)transaction error:(id *)error
{
  errorCopy = error;
  v38 = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  transactionCopy = transaction;
  internalContentDatabaseManager = [transactionCopy internalContentDatabaseManager];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = conceptCopy;
  obj = [conceptCopy attributes];
  v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = 150004;
        if ([v12 type] != 61813)
        {
          if ([v12 type] == 61839)
          {
            v13 = 150005;
          }

          else
          {
            if ([v12 type] != 989)
            {
              continue;
            }

            v13 = 150009;
          }
        }

        v14 = v7;
        v15 = v12;
        isDeleted = [v15 isDeleted];
        v17 = MEMORY[0x277CCDAF8];
        if (isDeleted)
        {
          v18 = v14;
          v19 = [v17 nullPropertyWithType:v13 version:{objc_msgSend(v15, "version")}];
          [v18 addObject:v19];
        }

        else
        {
          v19 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:v13 version:objc_msgSend(v15 BOOLValue:{"version"), objc_msgSend(v15, "BOOLValue")}];
          [v14 addObject:v19];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }

  v20 = [HDOntologyLocalizedStringProvider localizedOntologyPreferredNamesForConcept:v30 withUserDomainConceptPropertyType:160012];
  [v7 addObjectsFromArray:v20];
  v21 = objc_opt_class();
  identifier = [v30 identifier];
  v32 = 0;
  LODWORD(v21) = [v21 localizedEducationContentForConceptWithIdentifier:identifier ontologyTransaction:transactionCopy localizedEducationContentOut:&v32 error:errorCopy];
  v23 = v32;

  v24 = 0;
  if (v21)
  {
    [v7 hk_addNonNilObject:v23];
    v24 = [objc_alloc(MEMORY[0x277CCDB28]) initWithProperties:v7];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (int64_t)resolveOntologyConceptForRefreshFromUserDomainConceptWithoutOntologyCoding:(id)coding outAdditionalCodings:(id *)codings outConceptToRefreshWith:(id *)with ontologyTransaction:(id)transaction error:(id *)error
{
  codingCopy = coding;
  transactionCopy = transaction;
  adHocConceptSystem = [MEMORY[0x277CCD5D0] adHocConceptSystem];
  codingCollection = [codingCopy codingCollection];
  v15 = [codingCollection codingsExcludingCodingSystem:adHocConceptSystem];

  if ([v15 count])
  {
    withCopy = with;
    errorCopy = error;
    codingsCopy = codings;
    v16 = codingCopy;
    v17 = transactionCopy;
    v18 = v15;
    v19 = objc_opt_self();
    categoryTypes = [v16 categoryTypes];
    firstObject = [categoryTypes firstObject];

    v37 = adHocConceptSystem;
    v38 = transactionCopy;
    if (firstObject)
    {
      longLongValue = [firstObject longLongValue];
    }

    else
    {
      longLongValue = 8;
    }

    countryCode = [v16 countryCode];
    v25 = *MEMORY[0x277CCBBC8];
    if (!countryCode)
    {
      v26 = *MEMORY[0x277CCBBC8];
    }

    v27 = HKCurrentLocaleCountryCodeIfUnknown();

    v28 = [[HDConceptResolutionConfiguration alloc] initWithCountryCode:v27 recordCategoryType:longLongValue options:0];
    v29 = [(HDMedicalUserDomainConceptGenerator *)v19 _fetchGroupByConceptAndLoadRelationshipsWith:v28 codings:v18 ontologyTransaction:v17 error:errorCopy];

    if (v29)
    {
      isAdHoc = [v29 isAdHoc];
      adHocConceptSystem = v37;
      if (codingsCopy && isAdHoc)
      {
        v31 = v18;
        *codingsCopy = v18;
      }

      transactionCopy = v38;
      if (withCopy)
      {
        v32 = v29;
        *withCopy = v29;
      }

      v23 = 1;
    }

    else
    {
      v23 = 0;
      adHocConceptSystem = v37;
      transactionCopy = v38;
    }
  }

  else
  {
    v23 = 2;
  }

  return v23;
}

BOOL __116__HDMedicalUserDomainConceptGenerator__userDomainConceptForMedicalRecord_profile_transaction_shouldUpdateOut_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [(HDMedicalUserDomainConceptGenerator *)*(a1 + 64) _fetchUserDomainConceptForMedicalRecord:0 existingUserDomainConcept:0 shouldExcludeExistingUserDomainConcept:*(a1 + 40) profile:a2 ontologyTransaction:(*(*(a1 + 56) + 8) + 24) outShouldUpdateNewUserDomainConcept:a3 error:?];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

+ (id)_fetchUserDomainConceptForMedicalRecord:(void *)record existingUserDomainConcept:(int)concept shouldExcludeExistingUserDomainConcept:(void *)domainConcept profile:(void *)profile ontologyTransaction:(char *)transaction outShouldUpdateNewUserDomainConcept:(uint64_t)userDomainConcept error:
{
  v115 = *MEMORY[0x277D85DE8];
  v13 = a2;
  recordCopy = record;
  domainConceptCopy = domainConcept;
  profileCopy = profile;
  v15 = objc_opt_self();
  v16 = profileCopy;
  v17 = v13;
  v18 = objc_opt_self();
  v19 = [HDConceptResolutionConfiguration alloc];
  country = [v17 country];
  v21 = HKCurrentLocaleCountryCodeIfUnknown();
  v22 = -[HDConceptResolutionConfiguration initWithCountryCode:recordCategoryType:options:](v19, "initWithCountryCode:recordCategoryType:options:", v21, [v17 recordCategoryType], 0);

  v23 = MEMORY[0x277CCD5C8];
  adHocConceptSystem = [MEMORY[0x277CCD5D0] adHocConceptSystem];
  medicalRecordCodings = [v17 medicalRecordCodings];

  v26 = [v23 stripCodingsMatchingSystem:adHocConceptSystem fromCodings:medicalRecordCodings];

  v106 = [(HDMedicalUserDomainConceptGenerator *)v18 _fetchGroupByConceptAndLoadRelationshipsWith:v22 codings:v26 ontologyTransaction:v16 error:userDomainConcept];

  if (!v106)
  {
    v29 = 0;
    goto LABEL_60;
  }

  if (!recordCopy || (concept & 1) != 0)
  {
LABEL_29:
    if (concept)
    {
      v42 = recordCopy;
    }

    else
    {
      v42 = 0;
    }

    v94 = v106;
    v100 = v42;
    v102 = v17;
    v93 = v16;
    v43 = domainConceptCopy;
    v90 = objc_opt_self();
    coding = [v94 coding];
    country2 = [v102 country];
    v91 = HKCurrentLocaleCountryCodeIfUnknown();

    v45 = objc_alloc(MEMORY[0x277CBEB18]);
    v46 = HDUserDomainConceptEntityPredicateForMedicalCoding(coding);
    v108[0] = v46;
    v47 = HDMedicalUserDomainConceptEntityPredicateForCountryCode(v91);
    v108[1] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:2];
    v97 = [v45 initWithArray:v48];

    if (v100)
    {
      uUID = [v100 UUID];
      v50 = HDUserDomainConceptEntityPredicateForConceptUUID(uUID, 0);
      [v97 addObject:v50];
    }

    v51 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v97];
    databaseTransaction = [v93 databaseTransaction];
    v104 = v51;
    v53 = v43;
    v54 = databaseTransaction;
    objc_opt_self();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v112 = __Block_byref_object_copy__148;
    v113 = __Block_byref_object_dispose__148;
    v114 = 0;
    v55 = [objc_alloc(MEMORY[0x277D10B68]) initWithExpression:@"creation_date" ascending:1];
    userDomainConceptManager = [v53 userDomainConceptManager];
    v110 = v55;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v110 count:1];
    v109[0] = MEMORY[0x277D85DD0];
    v109[1] = 3221225472;
    v109[2] = __130__HDMedicalUserDomainConceptGenerator__oldestUserDomainConceptForPredicate_profile_transaction_medicalUserDomainConceptOut_error___block_invoke;
    v109[3] = &unk_2786276E0;
    v109[4] = buf;
    v58 = [userDomainConceptManager enumerateUserDomainConceptsWithPredicate:v104 limit:1 orderingTerms:v57 error:userDomainConcept enumerationHandler:v109];

    if (v58)
    {
      v59 = *(*&buf[8] + 40);
      v60 = v59;
    }

    else
    {
      v59 = 0;
    }

    _Block_object_dispose(buf, 8);
    v61 = v59;

    if (!v58)
    {
      v29 = 0;
LABEL_59:

      goto LABEL_60;
    }

    v89 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v102, "recordCategoryType")}];
    if (v61)
    {
      categoryTypes = [v61 categoryTypes];
      v63 = [categoryTypes containsObject:v89];

      if (v63)
      {
        v64 = 0;
LABEL_55:
        if (transaction)
        {
          *transaction = v64;
        }

        v61 = v61;
        goto LABEL_58;
      }

      v73 = [v61 medicalConceptByAddingCategoryType:{objc_msgSend(v102, "recordCategoryType")}];

      _HKInitializeLogging();
      v80 = HKLogHealthOntology();
      v81 = os_log_type_enabled(v80, OS_LOG_TYPE_INFO);

      if (!v81)
      {
LABEL_54:
        v64 = 1;
        v61 = v73;
        goto LABEL_55;
      }

      v65 = HKLogHealthOntology();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        uUID2 = [v73 UUID];
        hk_shortRepresentation = [uUID2 hk_shortRepresentation];
        uUID3 = [v102 UUID];
        hk_shortRepresentation2 = [uUID3 hk_shortRepresentation];
        *buf = 138543874;
        *&buf[4] = v90;
        *&buf[12] = 2114;
        *&buf[14] = hk_shortRepresentation;
        *&buf[22] = 2114;
        v112 = hk_shortRepresentation2;
        _os_log_impl(&dword_228986000, v65, OS_LOG_TYPE_INFO, "%{public}@: Updated UDC %{public}@ for medical record %{public}@ with new category type", buf, 0x20u);
      }
    }

    else
    {
      v65 = [v90 propertyCollectionWithOntologyConcept:v94 ontologyTransaction:v93 error:userDomainConcept];
      if (!v65)
      {
        v61 = 0;
LABEL_58:

        v29 = v61;
        goto LABEL_59;
      }

      v88 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{coding, 0}];
      if ([v94 isAdHoc])
      {
        v66 = MEMORY[0x277CCD5C8];
        adHocConceptSystem2 = [MEMORY[0x277CCD5D0] adHocConceptSystem];
        medicalRecordCodings2 = [v102 medicalRecordCodings];
        v69 = [v66 stripCodingsMatchingSystem:adHocConceptSystem2 fromCodings:medicalRecordCodings2];

        [v88 addObjectsFromArray:v69];
      }

      v70 = objc_alloc(MEMORY[0x277CCD610]);
      v109[0] = v89;
      v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:1];
      v72 = [objc_alloc(MEMORY[0x277CCD5C8]) initWithCodings:v88];
      v73 = [v70 initWithCategoryTypes:v71 countryCode:v91 codingCollection:v72 propertyCollection:v65];

      _HKInitializeLogging();
      v74 = HKLogHealthOntology();
      LODWORD(v72) = os_log_type_enabled(v74, OS_LOG_TYPE_INFO);

      if (v72)
      {
        v75 = HKLogHealthOntology();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
        {
          uUID4 = [v73 UUID];
          hk_shortRepresentation3 = [uUID4 hk_shortRepresentation];
          uUID5 = [v102 UUID];
          hk_shortRepresentation4 = [uUID5 hk_shortRepresentation];
          *buf = 138543874;
          *&buf[4] = v90;
          *&buf[12] = 2114;
          *&buf[14] = hk_shortRepresentation3;
          *&buf[22] = 2114;
          v112 = hk_shortRepresentation4;
          _os_log_impl(&dword_228986000, v75, OS_LOG_TYPE_INFO, "%{public}@: Created a new UDC %{public}@ for medical record %{public}@", buf, 0x20u);
        }
      }
    }

    goto LABEL_54;
  }

  firstOntologyCoding = [recordCopy firstOntologyCoding];
  firstAdhocCoding = [recordCopy firstAdhocCoding];
  coding2 = [v106 coding];
  if (!(firstOntologyCoding | firstAdhocCoding))
  {
    _HKInitializeLogging();
    v28 = HKLogHealthOntology();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = recordCopy;
      _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "%{public}@ was not able to find either an ontology coding or an adhoc coding on User Domain Concept %{public}@", buf, 0x16u);
    }

    goto LABEL_20;
  }

  if (firstOntologyCoding)
  {
    code = [firstOntologyCoding code];
    code2 = [coding2 code];
    v31 = code;
    if (code != code2)
    {
      code3 = [coding2 code];
      if (code3)
      {
        code4 = [firstOntologyCoding code];
        code5 = [coding2 code];
        goto LABEL_17;
      }

      goto LABEL_23;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!firstAdhocCoding)
  {
LABEL_24:
    _HKInitializeLogging();
    v36 = HKLogHealthOntology();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);

    if (v37)
    {
      v38 = HKLogHealthOntology();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        uUID6 = [v17 UUID];
        hk_shortRepresentation5 = [uUID6 hk_shortRepresentation];
        uUID7 = [recordCopy UUID];
        hk_shortRepresentation6 = [uUID7 hk_shortRepresentation];
        *buf = 138543874;
        *&buf[4] = v15;
        *&buf[12] = 2114;
        *&buf[14] = hk_shortRepresentation5;
        *&buf[22] = 2114;
        v112 = hk_shortRepresentation6;
        _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_INFO, "%{public}@: Medical record %{public}@ no longer maps to UDC %{public}@", buf, 0x20u);
      }
    }

    goto LABEL_29;
  }

  code = [firstAdhocCoding code];
  code2 = [coding2 code];
  v31 = code;
  if (code == code2)
  {
    goto LABEL_19;
  }

  code3 = [coding2 code];
  if (!code3)
  {
LABEL_23:

    goto LABEL_24;
  }

  code4 = [firstAdhocCoding code];
  code5 = [coding2 code];
LABEL_17:
  v35 = code5;
  v96 = [code4 isEqual:code5];

  if (!v96)
  {
    goto LABEL_24;
  }

LABEL_20:
  if (transaction)
  {
    *transaction = 0;
  }

  v29 = recordCopy;

LABEL_60:
  v86 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)_fetchGroupByConceptAndLoadRelationshipsWith:(void *)with codings:(void *)codings ontologyTransaction:(uint64_t)transaction error:
{
  codingsCopy = codings;
  withCopy = with;
  v10 = a2;
  objc_opt_self();
  internalContentDatabaseManager = [codingsCopy internalContentDatabaseManager];
  v12 = [MEMORY[0x277CCD5C8] collectionWithCodings:withCopy];

  v13 = [internalContentDatabaseManager conceptForCodingCollection:v12 configuration:v10 error:transaction];

  identifier = [v13 identifier];

  if (identifier)
  {
    internalContentDatabaseManager2 = [codingsCopy internalContentDatabaseManager];
    v16 = [internalContentDatabaseManager2 conceptForIdentifier:identifier options:5 error:transaction];

    if (v16)
    {
      groupByConcept = [v16 groupByConcept];
    }

    else
    {
      groupByConcept = 0;
    }
  }

  else
  {
    groupByConcept = 0;
  }

  return groupByConcept;
}

uint64_t __117__HDMedicalUserDomainConceptGenerator__enumerateMedicalRecordSamplesWithPredicate_profile_transaction_error_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = HDSQLiteColumnAsInt64();
  if (_HKValidDataTypeCode())
  {
    v9 = [MEMORY[0x277CCD8D8] dataTypeWithCode:v8];
    v10 = [objc_msgSend(v9 "dataObjectClass")];

    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    v17 = @"SkipApplyingConceptIndex";
    v18[0] = MEMORY[0x277CBEC38];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v10 objectWithID:v11 encodingOptions:v12 profile:*(a1 + 32) error:a5];

    if (v13)
    {
      v14 = (*(*(a1 + 40) + 16))();
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:100 format:{@"Type code %ld is not valid", v8}];
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

@end