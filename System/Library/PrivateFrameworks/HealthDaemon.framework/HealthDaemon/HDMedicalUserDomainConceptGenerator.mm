@interface HDMedicalUserDomainConceptGenerator
+ (BOOL)generateUserDomainConceptForMedicalRecord:(id)a3 entityPersistentID:(id)a4 insertionContext:(id)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8;
+ (BOOL)remapMedicalRecordsIfNeededForUserDomainConcept:(id)a3 shouldExcludeExistingConcept:(BOOL)a4 profile:(id)a5 ontologyTransaction:(id)a6 error:(id *)a7;
+ (id)_fetchGroupByConceptAndLoadRelationshipsWith:(void *)a3 codings:(void *)a4 ontologyTransaction:(uint64_t)a5 error:;
+ (id)_fetchUserDomainConceptForMedicalRecord:(void *)a3 existingUserDomainConcept:(int)a4 shouldExcludeExistingUserDomainConcept:(void *)a5 profile:(void *)a6 ontologyTransaction:(char *)a7 outShouldUpdateNewUserDomainConcept:(uint64_t)a8 error:;
+ (id)propertyCollectionWithOntologyConcept:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5;
+ (int64_t)resolveOntologyConceptForRefreshFromUserDomainConceptWithoutOntologyCoding:(id)a3 outAdditionalCodings:(id *)a4 outConceptToRefreshWith:(id *)a5 ontologyTransaction:(id)a6 error:(id *)a7;
@end

@implementation HDMedicalUserDomainConceptGenerator

+ (BOOL)generateUserDomainConceptForMedicalRecord:(id)a3 entityPersistentID:(id)a4 insertionContext:(id)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if ([objc_opt_class() groupsByUserDomainConcept])
  {
    v36 = a8;
    v16 = v12;
    v17 = v14;
    v18 = v15;
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
    v20 = [v17 internalContentDatabaseManager];
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
    LOBYTE(v17) = [v20 performTransactionWithDatabaseTransaction:v18 error:a8 transactionHandler:v37];

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

    if (v26 && (!v25 || [HDUserDomainConceptEntity storeUserDomainConcept:v26 method:2 profile:v22 transaction:v18 error:a8]))
    {
      v35 = v13;
      v27 = v18;
      v28 = v26;
      objc_opt_self();
      v29 = [v27 protectedDatabase];
      v30 = [v28 UUID];

      v31 = HDDataEntityPredicateForDataUUID();
      v32 = [(HDSQLiteEntity *)HDMedicalUserDomainConceptEntity anyInDatabase:v29 predicate:v31 error:a8];

      if (v32)
      {
        v33 = v35;
        v24 = +[HDMedicalUserDomainConceptMappingEntity insertUserDomainConceptID:medicalRecordID:transaction:error:](HDMedicalUserDomainConceptMappingEntity, "insertUserDomainConceptID:medicalRecordID:transaction:error:", [v32 persistentID], objc_msgSend(v35, "integerValue"), v27, v36);
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

+ (BOOL)remapMedicalRecordsIfNeededForUserDomainConcept:(id)a3 shouldExcludeExistingConcept:(BOOL)a4 profile:(id)a5 ontologyTransaction:(id)a6 error:(id *)a7
{
  v40[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = HDMedicalRecordEntityPredicateForMedicalUserDomainConcept(v12);
  v16 = [v14 databaseTransaction];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __150__HDMedicalUserDomainConceptGenerator_remapMedicalRecordsIfNeededForUserDomainConcept_shouldExcludeExistingConcept_profile_ontologyTransaction_error___block_invoke;
  v31[3] = &unk_278627690;
  v36 = a4;
  v32 = v12;
  v33 = v13;
  v34 = v14;
  v35 = a1;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = v18;
  v21 = v31;
  v22 = v16;
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
  LOBYTE(a7) = [v25 enumeratePersistentIDsAndProperties:v26 error:a7 enumerationHandler:v37];

  v29 = *MEMORY[0x277D85DE8];
  return a7;
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

+ (id)propertyCollectionWithOntologyConcept:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5
{
  v27 = a5;
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v29 = a4;
  v28 = [v29 internalContentDatabaseManager];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = v6;
  obj = [v6 attributes];
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
        v16 = [v15 isDeleted];
        v17 = MEMORY[0x277CCDAF8];
        if (v16)
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
  v22 = [v30 identifier];
  v32 = 0;
  LODWORD(v21) = [v21 localizedEducationContentForConceptWithIdentifier:v22 ontologyTransaction:v29 localizedEducationContentOut:&v32 error:v27];
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

+ (int64_t)resolveOntologyConceptForRefreshFromUserDomainConceptWithoutOntologyCoding:(id)a3 outAdditionalCodings:(id *)a4 outConceptToRefreshWith:(id *)a5 ontologyTransaction:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a6;
  v13 = [MEMORY[0x277CCD5D0] adHocConceptSystem];
  v14 = [v11 codingCollection];
  v15 = [v14 codingsExcludingCodingSystem:v13];

  if ([v15 count])
  {
    v35 = a5;
    v36 = a7;
    v34 = a4;
    v16 = v11;
    v17 = v12;
    v18 = v15;
    v19 = objc_opt_self();
    v20 = [v16 categoryTypes];
    v21 = [v20 firstObject];

    v37 = v13;
    v38 = v12;
    if (v21)
    {
      v22 = [v21 longLongValue];
    }

    else
    {
      v22 = 8;
    }

    v24 = [v16 countryCode];
    v25 = *MEMORY[0x277CCBBC8];
    if (!v24)
    {
      v26 = *MEMORY[0x277CCBBC8];
    }

    v27 = HKCurrentLocaleCountryCodeIfUnknown();

    v28 = [[HDConceptResolutionConfiguration alloc] initWithCountryCode:v27 recordCategoryType:v22 options:0];
    v29 = [(HDMedicalUserDomainConceptGenerator *)v19 _fetchGroupByConceptAndLoadRelationshipsWith:v28 codings:v18 ontologyTransaction:v17 error:v36];

    if (v29)
    {
      v30 = [v29 isAdHoc];
      v13 = v37;
      if (v34 && v30)
      {
        v31 = v18;
        *v34 = v18;
      }

      v12 = v38;
      if (v35)
      {
        v32 = v29;
        *v35 = v29;
      }

      v23 = 1;
    }

    else
    {
      v23 = 0;
      v13 = v37;
      v12 = v38;
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

+ (id)_fetchUserDomainConceptForMedicalRecord:(void *)a3 existingUserDomainConcept:(int)a4 shouldExcludeExistingUserDomainConcept:(void *)a5 profile:(void *)a6 ontologyTransaction:(char *)a7 outShouldUpdateNewUserDomainConcept:(uint64_t)a8 error:
{
  v115 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v107 = a3;
  v105 = a5;
  v14 = a6;
  v15 = objc_opt_self();
  v16 = v14;
  v17 = v13;
  v18 = objc_opt_self();
  v19 = [HDConceptResolutionConfiguration alloc];
  v20 = [v17 country];
  v21 = HKCurrentLocaleCountryCodeIfUnknown();
  v22 = -[HDConceptResolutionConfiguration initWithCountryCode:recordCategoryType:options:](v19, "initWithCountryCode:recordCategoryType:options:", v21, [v17 recordCategoryType], 0);

  v23 = MEMORY[0x277CCD5C8];
  v24 = [MEMORY[0x277CCD5D0] adHocConceptSystem];
  v25 = [v17 medicalRecordCodings];

  v26 = [v23 stripCodingsMatchingSystem:v24 fromCodings:v25];

  v106 = [(HDMedicalUserDomainConceptGenerator *)v18 _fetchGroupByConceptAndLoadRelationshipsWith:v22 codings:v26 ontologyTransaction:v16 error:a8];

  if (!v106)
  {
    v29 = 0;
    goto LABEL_60;
  }

  if (!v107 || (a4 & 1) != 0)
  {
LABEL_29:
    if (a4)
    {
      v42 = v107;
    }

    else
    {
      v42 = 0;
    }

    v94 = v106;
    v100 = v42;
    v102 = v17;
    v93 = v16;
    v43 = v105;
    v90 = objc_opt_self();
    v92 = [v94 coding];
    v44 = [v102 country];
    v91 = HKCurrentLocaleCountryCodeIfUnknown();

    v45 = objc_alloc(MEMORY[0x277CBEB18]);
    v46 = HDUserDomainConceptEntityPredicateForMedicalCoding(v92);
    v108[0] = v46;
    v47 = HDMedicalUserDomainConceptEntityPredicateForCountryCode(v91);
    v108[1] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:2];
    v97 = [v45 initWithArray:v48];

    if (v100)
    {
      v49 = [v100 UUID];
      v50 = HDUserDomainConceptEntityPredicateForConceptUUID(v49, 0);
      [v97 addObject:v50];
    }

    v51 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v97];
    v52 = [v93 databaseTransaction];
    v104 = v51;
    v53 = v43;
    v54 = v52;
    objc_opt_self();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v112 = __Block_byref_object_copy__148;
    v113 = __Block_byref_object_dispose__148;
    v114 = 0;
    v55 = [objc_alloc(MEMORY[0x277D10B68]) initWithExpression:@"creation_date" ascending:1];
    v56 = [v53 userDomainConceptManager];
    v110 = v55;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v110 count:1];
    v109[0] = MEMORY[0x277D85DD0];
    v109[1] = 3221225472;
    v109[2] = __130__HDMedicalUserDomainConceptGenerator__oldestUserDomainConceptForPredicate_profile_transaction_medicalUserDomainConceptOut_error___block_invoke;
    v109[3] = &unk_2786276E0;
    v109[4] = buf;
    v58 = [v56 enumerateUserDomainConceptsWithPredicate:v104 limit:1 orderingTerms:v57 error:a8 enumerationHandler:v109];

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
      v62 = [v61 categoryTypes];
      v63 = [v62 containsObject:v89];

      if (v63)
      {
        v64 = 0;
LABEL_55:
        if (a7)
        {
          *a7 = v64;
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
        v82 = [v73 UUID];
        v83 = [v82 hk_shortRepresentation];
        v84 = [v102 UUID];
        v85 = [v84 hk_shortRepresentation];
        *buf = 138543874;
        *&buf[4] = v90;
        *&buf[12] = 2114;
        *&buf[14] = v83;
        *&buf[22] = 2114;
        v112 = v85;
        _os_log_impl(&dword_228986000, v65, OS_LOG_TYPE_INFO, "%{public}@: Updated UDC %{public}@ for medical record %{public}@ with new category type", buf, 0x20u);
      }
    }

    else
    {
      v65 = [v90 propertyCollectionWithOntologyConcept:v94 ontologyTransaction:v93 error:a8];
      if (!v65)
      {
        v61 = 0;
LABEL_58:

        v29 = v61;
        goto LABEL_59;
      }

      v88 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v92, 0}];
      if ([v94 isAdHoc])
      {
        v66 = MEMORY[0x277CCD5C8];
        v67 = [MEMORY[0x277CCD5D0] adHocConceptSystem];
        v68 = [v102 medicalRecordCodings];
        v69 = [v66 stripCodingsMatchingSystem:v67 fromCodings:v68];

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
          v76 = [v73 UUID];
          v77 = [v76 hk_shortRepresentation];
          v78 = [v102 UUID];
          v79 = [v78 hk_shortRepresentation];
          *buf = 138543874;
          *&buf[4] = v90;
          *&buf[12] = 2114;
          *&buf[14] = v77;
          *&buf[22] = 2114;
          v112 = v79;
          _os_log_impl(&dword_228986000, v75, OS_LOG_TYPE_INFO, "%{public}@: Created a new UDC %{public}@ for medical record %{public}@", buf, 0x20u);
        }
      }
    }

    goto LABEL_54;
  }

  v27 = [v107 firstOntologyCoding];
  v103 = [v107 firstAdhocCoding];
  v101 = [v106 coding];
  if (!(v27 | v103))
  {
    _HKInitializeLogging();
    v28 = HKLogHealthOntology();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = v107;
      _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "%{public}@ was not able to find either an ontology coding or an adhoc coding on User Domain Concept %{public}@", buf, 0x16u);
    }

    goto LABEL_20;
  }

  if (v27)
  {
    v98 = [v27 code];
    v30 = [v101 code];
    v31 = v98;
    if (v98 != v30)
    {
      v32 = [v101 code];
      if (v32)
      {
        v33 = [v27 code];
        v34 = [v101 code];
        goto LABEL_17;
      }

      goto LABEL_23;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!v103)
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
        v39 = [v17 UUID];
        v40 = [v39 hk_shortRepresentation];
        v99 = [v107 UUID];
        v41 = [v99 hk_shortRepresentation];
        *buf = 138543874;
        *&buf[4] = v15;
        *&buf[12] = 2114;
        *&buf[14] = v40;
        *&buf[22] = 2114;
        v112 = v41;
        _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_INFO, "%{public}@: Medical record %{public}@ no longer maps to UDC %{public}@", buf, 0x20u);
      }
    }

    goto LABEL_29;
  }

  v98 = [v103 code];
  v30 = [v101 code];
  v31 = v98;
  if (v98 == v30)
  {
    goto LABEL_19;
  }

  v32 = [v101 code];
  if (!v32)
  {
LABEL_23:

    goto LABEL_24;
  }

  v33 = [v103 code];
  v34 = [v101 code];
LABEL_17:
  v35 = v34;
  v96 = [v33 isEqual:v34];

  if (!v96)
  {
    goto LABEL_24;
  }

LABEL_20:
  if (a7)
  {
    *a7 = 0;
  }

  v29 = v107;

LABEL_60:
  v86 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)_fetchGroupByConceptAndLoadRelationshipsWith:(void *)a3 codings:(void *)a4 ontologyTransaction:(uint64_t)a5 error:
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  objc_opt_self();
  v11 = [v8 internalContentDatabaseManager];
  v12 = [MEMORY[0x277CCD5C8] collectionWithCodings:v9];

  v13 = [v11 conceptForCodingCollection:v12 configuration:v10 error:a5];

  v14 = [v13 identifier];

  if (v14)
  {
    v15 = [v8 internalContentDatabaseManager];
    v16 = [v15 conceptForIdentifier:v14 options:5 error:a5];

    if (v16)
    {
      v17 = [v16 groupByConcept];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
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