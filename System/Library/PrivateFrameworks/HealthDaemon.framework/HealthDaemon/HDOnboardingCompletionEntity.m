@interface HDOnboardingCompletionEntity
+ (BOOL)deleteAllCompletionsForFeatureIdentifier:(id)a3 syncIdentity:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)enumerateAllOnboardingCompletionsWithTransaction:(id)a3 predicate:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (id)_insertEntityWithUUID:(void *)a3 featureIdentifier:(uint64_t)a4 version:(void *)a5 completionDate:(void *)a6 countryCode:(uint64_t)a7 countryCodeProvenance:(void *)a8 modificationDate:(char)a9 deleted:(uint64_t)a10 syncProvenance:(uint64_t)a11 syncIdentity:(void *)a12 transaction:(uint64_t)a13 error:;
+ (id)_onboardingCompletionsForHighestVersion:(void *)a3 featureIdentifier:(void *)a4 transaction:(uint64_t)a5 error:;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)insertCodableOnboardingCompletions:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (id)insertOnboardingCompletion:(id)a3 syncIdentity:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
- (id)onboardingCompletionWithTransaction:(id)a3 error:(id *)a4;
@end

@implementation HDOnboardingCompletionEntity

+ (id)_onboardingCompletionsForHighestVersion:(void *)a3 featureIdentifier:(void *)a4 transaction:(uint64_t)a5 error:
{
  v37[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  objc_opt_self();
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [MEMORY[0x277D10B18] predicateWithProperty:@"feature_identifier" value:v8 comparisonType:1];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __108__HDOnboardingCompletionEntity__onboardingCompletionsForHighestVersion_featureIdentifier_transaction_error___block_invoke;
  v32[3] = &unk_27861F3F8;
  v29 = v9;
  v33 = v29;
  v11 = v7;
  v12 = v10;
  v13 = v32;
  v14 = @"version";
  v15 = objc_opt_self();
  v16 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" value:MEMORY[0x277CBEC28] comparisonType:1];
  if (v12)
  {
    v17 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v16 otherPredicate:v12];

    v16 = v17;
  }

  v18 = [v11 databaseForEntityClass:{v15, v29}];
  v19 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"version" entityClass:v15 ascending:a2 ^ 1u];

  v37[0] = v19;
  v20 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D10A40] entityClass:v15 ascending:a2 ^ 1u];
  v37[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v22 = [v15 queryWithDatabase:v18 predicate:v16 limit:0 orderingTerms:v21 groupBy:0];

  v23 = HDOnboardingCompletionEntityAllProperties();
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __150__HDOnboardingCompletionEntity__enumerateAllOnboardingCompletionModelsWithTransaction_predicate_orderedByProperty_ascending_error_enumerationHandler___block_invoke;
  v34[3] = &unk_278618B48;
  v35 = v13;
  v36 = v15;
  v24 = v13;
  v25 = [v22 enumerateProperties:v23 error:a5 enumerationHandler:v34];

  v26 = 0;
  if (v25)
  {
    v26 = [v30 copy];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

uint64_t __108__HDOnboardingCompletionEntity__onboardingCompletionsForHighestVersion_featureIdentifier_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) lastObject];
  if (v4 && (v5 = [v3 version], v5 != objc_msgSend(v4, "version")))
  {
    v6 = 0;
  }

  else
  {
    [*(a1 + 32) addObject:v3];
    v6 = 1;
  }

  return v6;
}

uint64_t __150__HDOnboardingCompletionEntity__enumerateAllOnboardingCompletionModelsWithTransaction_predicate_orderedByProperty_ascending_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v4 = _OnboardingCompletionFromRow(a3, &v11);
  v5 = v11;
  if (v4)
  {
    v6 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      *buf = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpectedly unable to load onboarding completion: %{public}@", buf, 0x16u);
    }

    v6 = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)enumerateAllOnboardingCompletionsWithTransaction:(id)a3 predicate:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v24[1] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = a4;
  v12 = [a3 databaseForEntityClass:a1];
  v13 = *MEMORY[0x277D10A40];
  v14 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D10A40] entityClass:a1 ascending:1];
  v24[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v16 = [a1 queryWithDatabase:v12 predicate:v11 limit:0 orderingTerms:v15 groupBy:0];

  v17 = HDOnboardingCompletionEntityAllProperties();
  v18 = [v17 arrayByAddingObject:v13];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __116__HDOnboardingCompletionEntity_enumerateAllOnboardingCompletionsWithTransaction_predicate_error_enumerationHandler___block_invoke;
  v22[3] = &unk_2786145A8;
  v23 = v10;
  v19 = v10;
  LOBYTE(a5) = [v16 enumerateProperties:v18 error:a5 enumerationHandler:v22];

  v20 = *MEMORY[0x277D85DE8];
  return a5;
}

uint64_t __116__HDOnboardingCompletionEntity_enumerateAllOnboardingCompletionsWithTransaction_predicate_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  HDSQLiteColumnWithNameAsBoolean();
  v7 = *MEMORY[0x277D10A40];
  HDSQLiteColumnWithNameAsInt64();
  v8 = _OnboardingCompletionFromRow(a3, a4);
  v9 = (*(*(a1 + 32) + 16))();

  return v9;
}

+ (id)insertOnboardingCompletion:(id)a3 syncIdentity:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v56[4] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = v10;
  v13 = v11;
  v14 = objc_opt_self();
  v15 = [v12 countryCode];
  if (v15 && (v16 = v15, v17 = [v12 countryCodeProvenance], v16, !v17))
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a6 code:3 description:@"Country code provenance must be set when saving a country code"];
  }

  else
  {
    v50 = a4;
    v51 = a1;
    v52 = a6;
    v54 = v12;
    v18 = v12;
    [v18 featureIdentifier];
    v19 = v53 = v13;
    v20 = [v18 version];
    v21 = [v18 countryCode];
    v22 = [v18 countryCodeProvenance];

    v23 = MEMORY[0x277D10B20];
    v24 = MEMORY[0x277D10B18];
    v25 = v21;
    v26 = [v24 predicateWithProperty:@"feature_identifier" value:v19 comparisonType:1];
    v56[0] = v26;
    v27 = MEMORY[0x277D10B18];
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:v20];
    v29 = [v27 predicateWithProperty:@"version" value:v28 comparisonType:1];

    v56[1] = v29;
    v30 = [MEMORY[0x277D10B18] predicateWithProperty:@"country_code" value:v25 comparisonType:1];

    v56[2] = v30;
    v31 = MEMORY[0x277D10B18];
    v32 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
    v33 = [v31 predicateWithProperty:@"country_code_provenance" value:v32 comparisonType:1];

    v56[3] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];
    v35 = [v23 predicateMatchingAllPredicates:v34];

    v13 = v53;
    v36 = [v53 databaseForEntityClass:v14];
    v55 = 0;
    v37 = [v14 anyInDatabase:v36 predicate:v35 error:&v55];
    v38 = v55;

    if (v37 || !v38)
    {
      if (!v37)
      {

        v40 = [v18 UUID];
        v41 = [v18 featureIdentifier];
        v42 = [v18 version];
        v43 = [v18 completionDate];
        v44 = [v18 countryCode];
        v45 = [v18 countryCodeProvenance];
        v46 = [MEMORY[0x277CBEAA8] date];
        v47 = [(HDOnboardingCompletionEntity *)v51 _insertEntityWithUUID:v40 featureIdentifier:v41 version:v42 completionDate:v43 countryCode:v44 countryCodeProvenance:v45 modificationDate:v46 deleted:0 syncProvenance:0 syncIdentity:v50 transaction:v53 error:v52];

        v12 = v54;
        goto LABEL_14;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:v52 code:115 description:{@"The user has already completed onboarding for this feature, version, and country"}];
    }

    else if (v52)
    {
      v39 = v38;
      *v52 = v38;
    }

    else
    {
      _HKLogDroppedError();
    }

    v12 = v54;
  }

  v47 = 0;
LABEL_14:

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

+ (id)_insertEntityWithUUID:(void *)a3 featureIdentifier:(uint64_t)a4 version:(void *)a5 completionDate:(void *)a6 countryCode:(uint64_t)a7 countryCodeProvenance:(void *)a8 modificationDate:(char)a9 deleted:(uint64_t)a10 syncProvenance:(uint64_t)a11 syncIdentity:(void *)a12 transaction:(uint64_t)a13 error:
{
  v17 = a2;
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v22 = a12;
  v23 = objc_opt_self();
  v24 = [v22 databaseForEntityClass:v23];

  v25 = HDOnboardingCompletionEntityAllProperties();
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __200__HDOnboardingCompletionEntity__insertEntityWithUUID_featureIdentifier_version_completionDate_countryCode_countryCodeProvenance_modificationDate_deleted_syncProvenance_syncIdentity_transaction_error___block_invoke;
  v35[3] = &unk_27861F420;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v21;
  v41 = a4;
  v45 = a9;
  v42 = a7;
  v43 = a10;
  v44 = a11;
  v26 = v21;
  v27 = v20;
  v28 = v19;
  v29 = v18;
  v30 = v17;
  v31 = [v23 insertOrReplaceEntity:1 database:v24 properties:v25 error:a13 bindingHandler:v35];

  return v31;
}

+ (id)insertCodableOnboardingCompletions:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v95 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v67 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v86 objects:v94 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v87;
    v71 = v11;
    v72 = v10;
    v68 = v12;
    v70 = *v87;
LABEL_3:
    v16 = 0;
    v77 = v14;
    while (1)
    {
      if (*v87 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v86 + 1) + 8 * v16);
      v85 = 0;
      v18 = [v17 isValidWithError:&v85];
      v19 = v85;
      if ((v18 & 1) == 0)
      {
        _HKInitializeLogging();
        v32 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v91 = a1;
          v92 = 2114;
          v93 = v19;
          _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "[%{public}@] Skipping invalid codable: %{public}@", buf, 0x16u);
        }

        goto LABEL_34;
      }

      v20 = [v10 syncIdentityManager];
      v21 = [v20 legacySyncIdentity];

      if ([v17 hasSyncIdentity])
      {
        v22 = [v17 syncIdentity];
        v84 = v19;
        v23 = [HDSyncIdentity syncIdentityWithCodable:v22 error:&v84];
        v24 = v84;
        v25 = v19;
        v19 = v24;

        if (!v23)
        {
          _HKInitializeLogging();
          v59 = *MEMORY[0x277CCC2A0];
          v14 = v77;
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v91 = v19;
            _os_log_fault_impl(&dword_228986000, v59, OS_LOG_TYPE_FAULT, "SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
          }

          v23 = 0;
          goto LABEL_32;
        }

        v26 = v11;
        v27 = [v10 syncIdentityManager];
        v83 = v19;
        v28 = [v27 concreteIdentityForIdentity:v23 shouldCreate:1 transaction:v26 error:&v83];
        v29 = v83;

        if (!v28)
        {
          _HKInitializeLogging();
          v60 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v91 = v29;
            _os_log_fault_impl(&dword_228986000, v60, OS_LOG_TYPE_FAULT, "ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
          }

          v21 = 0;
          v19 = v29;
          v15 = v70;
          v11 = v71;
          v14 = v77;
          v10 = v72;
          goto LABEL_32;
        }

        v21 = v28;
        v30 = v70;
        v11 = v71;
        v19 = v29;
        v31 = v72;
      }

      else
      {
        v30 = v15;
        v31 = v10;
      }

      v81 = v21;
      v80 = [v21 entity];
      v79 = [v80 persistentID];
      v33 = v17;
      v34 = v11;
      v35 = objc_opt_self();
      LODWORD(v36) = [v33 deleted];
      v37 = [v33 decodedUUID];
      v38 = v37;
      v82 = v19;
      if (v37)
      {
        v76 = v37;
        v74 = v34;
        if (v36)
        {
          v39 = v34;
          v40 = v36;
          v41 = v38;
          v42 = objc_opt_self();
          v43 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" value:v41 comparisonType:1];

          v36 = [v39 databaseForEntityClass:v42];
          v44 = a7;
          v45 = [v42 anyInDatabase:v36 predicate:v43 error:a7];

          LOBYTE(v36) = v40;
          v46 = [v45 onboardingCompletionWithTransaction:v39 error:a7];

          v75 = [v46 featureIdentifier];
          v47 = v75;

          v78 = &stru_283BF39C8;
        }

        else
        {
          v50 = [v33 featureIdentifier];
          v75 = [v50 copy];
          v51 = v75;

          v78 = [v33 featureIdentifier];
          v44 = a7;
        }

        v52 = v35;
        v53 = [v33 version];
        v54 = [v33 decodedCompletionDate];
        v55 = [v33 countryCode];
        v56 = [v33 countryCodeProvenance];
        v57 = [v33 decodedModificationDate];
        v65 = v44;
        v34 = v74;
        v58 = [(HDOnboardingCompletionEntity *)v52 _insertEntityWithUUID:v76 featureIdentifier:v78 version:v53 completionDate:v54 countryCode:v55 countryCodeProvenance:v56 modificationDate:v57 deleted:v36 syncProvenance:a4 syncIdentity:v79 transaction:v74 error:v65];

        if ((v36 & 1) == 0)
        {
        }

        v49 = v58 != 0;

        v11 = v71;
        v10 = v72;
        v15 = v70;
        v14 = v77;
        v38 = v76;
        v48 = v75;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a7 code:3 format:@"Cannot insert codable without UUID"];
        v48 = 0;
        v49 = 0;
        v10 = v31;
        v15 = v30;
        v14 = v77;
      }

      v23 = v48;
      if (!v49)
      {

        v12 = v68;
        v62 = 0;
        v61 = v67;
        goto LABEL_38;
      }

      v12 = v68;
      v21 = v81;
      if (v23)
      {
        [v67 addObject:v23];
        v19 = v82;
LABEL_32:

        goto LABEL_33;
      }

      v19 = v82;
LABEL_33:

LABEL_34:
      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v86 objects:v94 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v61 = v67;
  v62 = [v67 copy];
LABEL_38:

  v63 = *MEMORY[0x277D85DE8];

  return v62;
}

void __200__HDOnboardingCompletionEntity__insertEntityWithUUID_featureIdentifier_version_completionDate_countryCode_countryCodeProvenance_modificationDate_deleted_syncProvenance_syncIdentity_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6C00](a2, @"uuid", *(a1 + 32));
  MEMORY[0x22AAC6BD0](a2, @"feature_identifier", *(a1 + 40));
  MEMORY[0x22AAC6B90](a2, @"version", *(a1 + 72));
  MEMORY[0x22AAC6B50](a2, @"completion_date", *(a1 + 48));
  MEMORY[0x22AAC6BD0](a2, @"country_code", *(a1 + 56));
  MEMORY[0x22AAC6B90](a2, @"country_code_provenance", *(a1 + 80));
  MEMORY[0x22AAC6B50](a2, @"mod_date", *(a1 + 64));
  MEMORY[0x22AAC6B30](a2, @"deleted", *(a1 + 104));
  MEMORY[0x22AAC6B90](a2, @"sync_provenance", *(a1 + 88));
  v4 = *(a1 + 96);

  JUMPOUT(0x22AAC6B90);
}

+ (BOOL)deleteAllCompletionsForFeatureIdentifier:(id)a3 syncIdentity:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = [MEMORY[0x277D10B18] predicateWithProperty:@"feature_identifier" equalToValue:a3];
  v11 = [v9 databaseForEntityClass:a1];
  v12 = [a1 queryWithDatabase:v11 predicate:v10];

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v44 = @"uuid";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __104__HDOnboardingCompletionEntity_deleteAllCompletionsForFeatureIdentifier_syncIdentity_transaction_error___block_invoke;
  v38[3] = &unk_27861E4C0;
  v15 = v13;
  v39 = v15;
  v37 = a6;
  LODWORD(v13) = [v12 enumerateProperties:v14 error:a6 enumerationHandler:v38];

  if (v13)
  {
    v16 = v15;
    v35 = v9;
    objc_opt_self();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v16;
    v17 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    v18 = 1;
    if (v17)
    {
      v19 = v17;
      v31 = v12;
      v32 = v10;
      v33 = v9;
      v20 = *v41;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v40 + 1) + 8 * i);
          v23 = v35;
          v24 = v22;
          v25 = objc_opt_self();
          v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
          v27 = [MEMORY[0x277CBEAA8] date];
          v28 = [(HDOnboardingCompletionEntity *)v25 _insertEntityWithUUID:v24 featureIdentifier:&stru_283BF39C8 version:0 completionDate:v26 countryCode:0 countryCodeProvenance:0 modificationDate:v27 deleted:1 syncProvenance:0 syncIdentity:a4 transaction:v23 error:v37];

          if (!v28)
          {
            v18 = 0;
            goto LABEL_13;
          }
        }

        v19 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }

      v18 = 1;
LABEL_13:
      v10 = v32;
      v9 = v33;
      v12 = v31;
    }
  }

  else
  {
    v18 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __104__HDOnboardingCompletionEntity_deleteAllCompletionsForFeatureIdentifier_syncIdentity_transaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsUUID();
  [*(a1 + 32) addObject:v2];

  return 1;
}

- (id)onboardingCompletionWithTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__80;
  v17 = __Block_byref_object_dispose__80;
  v18 = 0;
  v7 = HDOnboardingCompletionEntityAllProperties();
  v8 = [v6 databaseForEntity:self];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HDOnboardingCompletionEntity_onboardingCompletionWithTransaction_error___block_invoke;
  v12[3] = &unk_278618B98;
  v12[4] = &v13;
  LODWORD(a4) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:a4 handler:v12];

  if (a4)
  {
    v9 = v14[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v13, 8);

  return v10;
}

uint64_t __74__HDOnboardingCompletionEntity_onboardingCompletionWithTransaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _OnboardingCompletionFromRow(a3, 0);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[HDOnboardingCompletionEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

@end