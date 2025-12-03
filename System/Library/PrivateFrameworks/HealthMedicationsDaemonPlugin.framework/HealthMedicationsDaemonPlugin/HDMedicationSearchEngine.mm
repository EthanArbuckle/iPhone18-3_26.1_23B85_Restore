@interface HDMedicationSearchEngine
+ (BOOL)_inflateFirstConcept:(id *)concept predicate:(id)predicate relationshipTypes:(id)types maximumDepth:(int64_t)depth ontologyTransaction:(id)transaction errorOut:(id *)out;
+ (BOOL)_medicationClusterFromMachineReadableCode:(id)code codeAttributeType:(int64_t)type searchResultOut:(id *)out ontologyTransaction:(id)transaction errorOut:(id *)errorOut;
+ (BOOL)_medicationSearchResultForFirstConcept:(id *)concept predicate:(id)predicate ontologyTransaction:(id)transaction errorOut:(id *)out;
+ (BOOL)medicationCluster:(id *)cluster machineReadableCode:(id)code codeAttributeType:(int64_t)type profile:(id)profile errorOut:(id *)out;
+ (id)_attributeTypesForInflation;
+ (id)_genericProductForClinicalProduct:(id)product ontologyTransaction:(id)transaction error:(id *)error;
+ (id)_importEligibleMedicationConceptsSinceDate:(id)date limit:(int64_t)limit profile:(id)profile errorOut:(id *)out;
+ (id)_medicationClustersFromScanResult:(id)result limit:(int64_t)limit ontologyTransaction:(id)transaction errorOut:(id *)out;
+ (id)_medicationClustersFromTextSearchTokens:(id)tokens limit:(int64_t)limit ontologyTransaction:(id)transaction errorOut:(id *)out;
+ (id)_medicationSearchResultForClinicalProduct:(id)product ontologyTransaction:(id)transaction errorOut:(id *)out;
+ (id)_medicationSearchResultForSpecificProduct:(id)product ontologyTransaction:(id)transaction errorOut:(id *)out;
+ (id)_relationshipsForInflation;
+ (id)_resolveIndividualRxNormConceptsFromMedicalRecordsCodings:(id)codings profile:(id)profile error:(id *)error;
+ (id)hkt_genericMedicationWithClinicalProductConcept:(id)concept profile:(id)profile errorOut:(id *)out;
+ (id)medicationClustersForCHRImportWithExistingMedications:(id)medications sinceDate:(id)date limit:(int64_t)limit profile:(id)profile errorOut:(id *)out;
+ (id)medicationClustersFromScanResult:(id)result limit:(int64_t)limit profile:(id)profile errorOut:(id *)out;
+ (id)medicationClustersFromTextSearchTokens:(id)tokens limit:(int64_t)limit profile:(id)profile errorOut:(id *)out;
@end

@implementation HDMedicationSearchEngine

+ (id)medicationClustersFromScanResult:(id)result limit:(int64_t)limit profile:(id)profile errorOut:(id *)out
{
  resultCopy = result;
  profileCopy = profile;
  if (!resultCopy)
  {
    [HDMedicationSearchEngine medicationClustersFromScanResult:a2 limit:self profile:? errorOut:?];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__9;
  v26 = __Block_byref_object_dispose__9;
  v27 = 0;
  ontologyDatabase = [profileCopy ontologyDatabase];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__HDMedicationSearchEngine_medicationClustersFromScanResult_limit_profile_errorOut___block_invoke;
  v18[3] = &unk_2796CE238;
  v20 = &v22;
  v14 = resultCopy;
  v19 = v14;
  limitCopy = limit;
  v15 = [ontologyDatabase performTransactionWithError:out transactionHandler:v18];

  if (v15)
  {
    v16 = v23[5];
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v22, 8);

  return v16;
}

BOOL __84__HDMedicationSearchEngine_medicationClustersFromScanResult_limit_profile_errorOut___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [HDMedicationSearchEngine _medicationClustersFromScanResult:a1[4] limit:a1[6] ontologyTransaction:a2 errorOut:a3];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(a1[5] + 8) + 40) != 0;
}

+ (BOOL)medicationCluster:(id *)cluster machineReadableCode:(id)code codeAttributeType:(int64_t)type profile:(id)profile errorOut:(id *)out
{
  codeCopy = code;
  profileCopy = profile;
  v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_2863C2CF0];
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:type];
  v17 = [v15 containsObject:v16];

  if (v17)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__9;
    v30 = __Block_byref_object_dispose__9;
    v31 = 0;
    ontologyDatabase = [profileCopy ontologyDatabase];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __101__HDMedicationSearchEngine_medicationCluster_machineReadableCode_codeAttributeType_profile_errorOut___block_invoke;
    v22[3] = &unk_2796CDB20;
    v24 = &v26;
    typeCopy = type;
    v23 = codeCopy;
    v19 = [ontologyDatabase performTransactionWithError:out transactionHandler:v22];

    if (cluster)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      *cluster = v27[5];
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:out invalidArgument:@"codeAttributeType" class:self selector:a2];
    v19 = 0;
  }

  return v19;
}

BOOL __101__HDMedicationSearchEngine_medicationCluster_machineReadableCode_codeAttributeType_profile_errorOut___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[6];
  v5 = a1[4];
  v6 = *(a1[5] + 8);
  obj = *(v6 + 40);
  v7 = [HDMedicationSearchEngine _medicationClusterFromMachineReadableCode:v5 codeAttributeType:v4 searchResultOut:&obj ontologyTransaction:a2 errorOut:a3];
  objc_storeStrong((v6 + 40), obj);
  return v7;
}

+ (id)medicationClustersFromTextSearchTokens:(id)tokens limit:(int64_t)limit profile:(id)profile errorOut:(id *)out
{
  tokensCopy = tokens;
  profileCopy = profile;
  if (!tokensCopy)
  {
    [HDMedicationSearchEngine medicationClustersFromTextSearchTokens:a2 limit:self profile:? errorOut:?];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__9;
  v26 = __Block_byref_object_dispose__9;
  v27 = 0;
  ontologyDatabase = [profileCopy ontologyDatabase];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__HDMedicationSearchEngine_medicationClustersFromTextSearchTokens_limit_profile_errorOut___block_invoke;
  v18[3] = &unk_2796CE238;
  v20 = &v22;
  v14 = tokensCopy;
  v19 = v14;
  limitCopy = limit;
  v15 = [ontologyDatabase performTransactionWithError:out transactionHandler:v18];

  if (v15)
  {
    v16 = v23[5];
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v22, 8);

  return v16;
}

BOOL __90__HDMedicationSearchEngine_medicationClustersFromTextSearchTokens_limit_profile_errorOut___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [HDMedicationSearchEngine _medicationClustersFromTextSearchTokens:a1[4] limit:a1[6] ontologyTransaction:a2 errorOut:a3];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(a1[5] + 8) + 40) != 0;
}

+ (id)medicationClustersForCHRImportWithExistingMedications:(id)medications sinceDate:(id)date limit:(int64_t)limit profile:(id)profile errorOut:(id *)out
{
  v50 = *MEMORY[0x277D85DE8];
  medicationsCopy = medications;
  v48 = 0;
  dateCopy = date;
  profileCopy = profile;
  v32 = [self _importEligibleMedicationConceptsSinceDate:dateCopy limit:limit profile:? errorOut:?];
  v33 = 0;
  if (v33)
  {
    if (out)
    {
      v12 = v33;
      v13 = 0;
      *out = v33;
    }

    else
    {
      _HKLogDroppedError();
      v13 = 0;
    }
  }

  else
  {
    v14 = [v32 hk_map:&__block_literal_global_11];
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__9;
    v46 = __Block_byref_object_dispose__9;
    v47 = 0;
    ontologyDatabase = [profileCopy ontologyDatabase];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __115__HDMedicationSearchEngine_medicationClustersForCHRImportWithExistingMedications_sinceDate_limit_profile_errorOut___block_invoke_2;
    v38[3] = &unk_2796CE238;
    v40 = &v42;
    v28 = v14;
    v39 = v28;
    limitCopy = limit;
    v16 = [ontologyDatabase performTransactionWithError:out transactionHandler:v38];

    if (v16)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v17 = [MEMORY[0x277CBEB98] setWithArray:medicationsCopy];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v18 = v43[5];
      v19 = [v18 countByEnumeratingWithState:&v34 objects:v49 count:16];
      if (v19)
      {
        v20 = *v35;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v35 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v34 + 1) + 8 * i);
            specificProduct = [v22 specificProduct];
            identifier = [specificProduct identifier];
            v25 = [v17 containsObject:identifier];

            if ((v25 & 1) == 0)
            {
              [v13 addObject:v22];
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v34 objects:v49 count:16];
        }

        while (v19);
      }
    }

    else
    {
      v13 = 0;
    }

    _Block_object_dispose(&v42, 8);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v13;
}

BOOL __115__HDMedicationSearchEngine_medicationClustersForCHRImportWithExistingMedications_sinceDate_limit_profile_errorOut___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [HDMedicationSearchEngine _medicationClustersFromScanResult:a1[4] limit:a1[6] ontologyTransaction:a2 errorOut:a3];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(a1[5] + 8) + 40) != 0;
}

+ (BOOL)_medicationClusterFromMachineReadableCode:(id)code codeAttributeType:(int64_t)type searchResultOut:(id *)out ontologyTransaction:(id)transaction errorOut:(id *)errorOut
{
  v12 = MEMORY[0x277D10B70];
  v13 = MEMORY[0x277D103B8];
  transactionCopy = transaction;
  v15 = [v13 predicateMatchingConceptsWithAttributeType:type attributeValue:code];
  _predicateForConceptsNotExcludedFromSearch = [self _predicateForConceptsNotExcludedFromSearch];
  v17 = [v12 compoundPredicateWithPredicate:v15 otherPredicate:_predicateForConceptsNotExcludedFromSearch];

  LOBYTE(errorOut) = [self _medicationSearchResultForFirstConcept:out predicate:v17 ontologyTransaction:transactionCopy errorOut:errorOut];
  return errorOut;
}

+ (id)_medicationClustersFromScanResult:(id)result limit:(int64_t)limit ontologyTransaction:(id)transaction errorOut:(id *)out
{
  v50 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  transactionCopy = transaction;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = 0u;
  v42 = 0u;
  if (limit <= 1)
  {
    limitCopy = 1;
  }

  else
  {
    limitCopy = limit;
  }

  v43 = 0uLL;
  v44 = 0uLL;
  v13 = resultCopy;
  v14 = limitCopy;
  v15 = v13;
  v40 = [v13 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v40)
  {
    v39 = *v42;
    v38 = v14;
LABEL_6:
    v16 = 0;
    while (1)
    {
      if (*v42 != v39)
      {
        objc_enumerationMutation(v15);
      }

      v17 = *(*(&v41 + 1) + 8 * v16);
      if ([v11 count] == v14)
      {
        break;
      }

      v18 = [objc_alloc(MEMORY[0x277CCD1D0]) initWithRawIdentifier:{objc_msgSend(v17, "integerValue")}];
      profile = [transactionCopy profile];
      ontologyConceptManager = [profile ontologyConceptManager];
      v21 = [ontologyConceptManager conceptForIdentifier:v18 options:1 transaction:transactionCopy error:out];

      if (v21)
      {
        if ([v21 isExcludedFromSearch])
        {
          _HKInitializeLogging();
          v22 = HKLogMedication();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            selfCopy3 = self;
            v47 = 2112;
            v48 = v18;
            v23 = v22;
            v24 = "[%{public}@] Attempted to seach for med excluded from search with ID: %@";
LABEL_16:
            _os_log_error_impl(&dword_25181C000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x16u);
          }
        }

        else
        {
          v25 = v11;
          v26 = v15;
          relationships = [v21 relationships];
          if (relationships && (v28 = relationships, [v21 relationships], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "count"), v29, v28, v30))
          {
            if ([v21 meds_isSpecificProduct])
            {
              v31 = [self _medicationSearchResultForSpecificProduct:v21 ontologyTransaction:transactionCopy errorOut:out];
              v15 = v26;
              v11 = v25;
              v14 = v38;
              if (!v31)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v15 = v26;
              v11 = v25;
              v14 = v38;
              if (![v21 meds_isClinicalProduct])
              {
                goto LABEL_29;
              }

              v31 = [self _medicationSearchResultForClinicalProduct:v21 ontologyTransaction:transactionCopy errorOut:out];
              if (!v31)
              {
                goto LABEL_29;
              }
            }

            v22 = v31;
            [v11 addObject:v31];
          }

          else
          {
            v32 = MEMORY[0x277CCA9B8];
            identifier = [v21 identifier];
            [v32 hk_assignError:out code:1003 format:{@"Could not find any relationships for concept: %@ ", identifier}];

            _HKInitializeLogging();
            v22 = HKLogMedication();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              identifier2 = [v21 identifier];
              *buf = 138543618;
              selfCopy3 = self;
              v47 = 2114;
              v48 = identifier2;
              _os_log_error_impl(&dword_25181C000, v22, OS_LOG_TYPE_ERROR, "[%{public}@] Could not find any relationships for concept: %{public}@", buf, 0x16u);
            }

            v15 = v26;
            v11 = v25;
            v14 = v38;
          }
        }
      }

      else
      {
        _HKInitializeLogging();
        v22 = HKLogMedication();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy3 = self;
          v47 = 2114;
          v48 = v18;
          v23 = v22;
          v24 = "[%{public}@] Could not find a concept: %{public}@";
          goto LABEL_16;
        }
      }

LABEL_29:
      if (v40 == ++v16)
      {
        v40 = [v15 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v40)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_medicationClustersFromTextSearchTokens:(id)tokens limit:(int64_t)limit ontologyTransaction:(id)transaction errorOut:(id *)out
{
  v78 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  transactionCopy = transaction;
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [objc_alloc(MEMORY[0x277CCD1D0]) initWithRawIdentifier:841];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [MEMORY[0x277D103B8] predicateMatchingConceptsWithRelationshipType:1015 withObjectId:v8];
  [v10 addObject:v11];

  v59 = v8;
  v12 = [MEMORY[0x277D103B8] predicateMatchingConceptsWithRelationshipType:1015 withObjectId:v8];
  [v9 addObject:v12];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v13 = tokensCopy;
  v14 = [v13 countByEnumeratingWithState:&v64 objects:v77 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v65;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v65 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v64 + 1) + 8 * i);
        v19 = [MEMORY[0x277D103B8] predicateMatchingConceptsWithAttributeType:960 beingsWithAttributeValue:v18];
        v20 = [MEMORY[0x277D103B8] predicateMatchingConceptsWithAttributeType:960 likeAttributeValue:v18];
        [v9 addObject:v20];
        [v10 addObject:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v64 objects:v77 count:16];
    }

    while (v15);
  }

  v21 = MEMORY[0x277D10B20];
  v22 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v9];
  v76 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
  v24 = [v21 predicateMatchingAllPredicates:v23];

  v25 = MEMORY[0x277D10B20];
  v26 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v10];
  v75 = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
  v28 = [v25 predicateMatchingAllPredicates:v27];

  v58 = v28;
  if ([v13 count] >= 2)
  {
    v29 = [v13 componentsJoinedByString:@" "];
    v30 = MEMORY[0x277D10B20];
    v31 = [MEMORY[0x277D103B8] predicateMatchingConceptsWithAttributeType:960 beingsWithAttributeValue:v29];
    v74[0] = v31;
    [MEMORY[0x277D103B8] predicateMatchingConceptsWithRelationshipType:1015 withObjectId:v59];
    v33 = v32 = v24;
    v74[1] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
    v35 = [v30 predicateMatchingAllPredicates:v34];

    v24 = v32;
    [v61 addObject:v35];

    v28 = v58;
  }

  [v61 addObject:v28];
  v54 = v24;
  [v61 addObject:v24];
  v36 = MEMORY[0x277D10B70];
  v37 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v61];
  _predicateForConceptsNotExcludedFromSearch = [self _predicateForConceptsNotExcludedFromSearch];
  v39 = [v36 compoundPredicateWithPredicate:v37 otherPredicate:_predicateForConceptsNotExcludedFromSearch];

  v40 = [v13 componentsJoinedByString:@" | "];
  v41 = HKSensitiveLogItem();

  _relationshipsForInflation = [self _relationshipsForInflation];
  CFAbsoluteTimeGetCurrent();
  v43 = MEMORY[0x277D103B8];
  _attributeTypesForInflation = [self _attributeTypesForInflation];
  v45 = [v43 inflateGraphWithRootConceptsPredicate:v39 limit:limit maximumDepth:4 attributeTypes:_attributeTypesForInflation relationshipTypes:_relationshipsForInflation ontologyTransaction:transactionCopy error:out];

  if (v45)
  {
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __103__HDMedicationSearchEngine__medicationClustersFromTextSearchTokens_limit_ontologyTransaction_errorOut___block_invoke;
    v62[3] = &unk_2796CE280;
    v63 = _relationshipsForInflation;
    v46 = [v45 hk_map:v62];
    _HKInitializeLogging();
    v47 = HKLogMedication();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_INFO);

    if (v48)
    {
      v49 = HKLogMedication();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        CFAbsoluteTimeGetCurrent();
        v50 = HKDiagnosticStringFromDuration();
        *buf = 138543874;
        selfCopy = self;
        v70 = 2114;
        v71 = v41;
        v72 = 2114;
        v73 = v50;
        _os_log_impl(&dword_25181C000, v49, OS_LOG_TYPE_INFO, "[%{public}@] EXPANDED sub-graph for matches for tokens: [%{public}@] in %{public}@", buf, 0x20u);
      }
    }

    v51 = v63;
  }

  else
  {
    _HKInitializeLogging();
    v51 = HKLogMedication();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationSearchEngine _medicationClustersFromTextSearchTokens:self limit:v13 ontologyTransaction:v51 errorOut:?];
    }

    v46 = 0;
  }

  v52 = *MEMORY[0x277D85DE8];

  return v46;
}

id __103__HDMedicationSearchEngine__medicationClustersFromTextSearchTokens_limit_ontologyTransaction_errorOut___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D115B0];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 identifier];
  v7 = [v6 numberRepresentation];
  v8 = [v5 initWithSeedHgId:v7 specificProduct:v4 traversedRelationships:*(a1 + 32) traversedDepth:4];

  return v8;
}

+ (id)_relationshipsForInflation
{
  v2 = objc_alloc_init(MEMORY[0x277CCD698]);
  [v2 addInteger:798];
  [v2 addInteger:809];
  [v2 addInteger:985];
  [v2 addInteger:952];
  [v2 addInteger:982];
  [v2 addInteger:983];
  [v2 addInteger:797];
  [v2 addInteger:981];
  [v2 addInteger:980];
  [v2 addInteger:1015];
  [v2 addInteger:1013];

  return v2;
}

+ (id)_attributeTypesForInflation
{
  v2 = objc_alloc_init(MEMORY[0x277CCD698]);
  [v2 addInteger:1012];
  [v2 addInteger:960];
  [v2 addInteger:961];
  [v2 addInteger:962];
  [v2 addInteger:984];
  [v2 addInteger:796];
  [v2 addInteger:795];

  return v2;
}

+ (id)_medicationSearchResultForSpecificProduct:(id)product ontologyTransaction:(id)transaction errorOut:(id *)out
{
  productCopy = product;
  v9 = MEMORY[0x277D103B8];
  transactionCopy = transaction;
  identifier = [productCopy identifier];
  v12 = [v9 predicateMatchingConceptWithID:identifier];

  v19 = 0;
  LODWORD(identifier) = [self _medicationSearchResultForFirstConcept:&v19 predicate:v12 ontologyTransaction:transactionCopy errorOut:out];

  v13 = v19;
  v14 = v13;
  v15 = 0;
  if (identifier)
  {
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      identifier2 = [productCopy identifier];
      [v16 hk_assignError:out code:118 format:{@"Unable to get search result for specific product %@", identifier2}];

      v15 = 0;
    }
  }

  return v15;
}

+ (BOOL)_medicationSearchResultForFirstConcept:(id *)concept predicate:(id)predicate ontologyTransaction:(id)transaction errorOut:(id *)out
{
  transactionCopy = transaction;
  predicateCopy = predicate;
  _relationshipsForInflation = [self _relationshipsForInflation];
  v20 = 0;
  v13 = [self _inflateFirstConcept:&v20 predicate:predicateCopy relationshipTypes:_relationshipsForInflation maximumDepth:4 ontologyTransaction:transactionCopy errorOut:out];

  v14 = v20;
  v15 = v14;
  if (v13 && concept && v14)
  {
    v16 = objc_alloc(MEMORY[0x277D115B0]);
    identifier = [v15 identifier];
    numberRepresentation = [identifier numberRepresentation];
    *concept = [v16 initWithSeedHgId:numberRepresentation specificProduct:v15 traversedRelationships:_relationshipsForInflation traversedDepth:4];
  }

  return v13;
}

+ (BOOL)_inflateFirstConcept:(id *)concept predicate:(id)predicate relationshipTypes:(id)types maximumDepth:(int64_t)depth ontologyTransaction:(id)transaction errorOut:(id *)out
{
  v14 = MEMORY[0x277D103B8];
  transactionCopy = transaction;
  typesCopy = types;
  predicateCopy = predicate;
  _attributeTypesForInflation = [self _attributeTypesForInflation];
  v19 = [v14 inflateGraphWithRootConceptsPredicate:predicateCopy limit:1 maximumDepth:depth attributeTypes:_attributeTypesForInflation relationshipTypes:typesCopy ontologyTransaction:transactionCopy error:out];

  if (v19)
  {
    v20 = [v19 count];
    if (concept)
    {
      if (v20)
      {
        *concept = [v19 firstObject];
      }
    }
  }

  return v19 != 0;
}

+ (id)_medicationSearchResultForClinicalProduct:(id)product ontologyTransaction:(id)transaction errorOut:(id *)out
{
  transactionCopy = transaction;
  v9 = [self _genericProductForClinicalProduct:product ontologyTransaction:transactionCopy error:out];
  if (v9)
  {
    v10 = [self _medicationSearchResultForSpecificProduct:v9 ontologyTransaction:transactionCopy errorOut:out];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_genericProductForClinicalProduct:(id)product ontologyTransaction:(id)transaction error:(id *)error
{
  productCopy = product;
  transactionCopy = transaction;
  if (!productCopy)
  {
    [HDMedicationSearchEngine _genericProductForClinicalProduct:a2 ontologyTransaction:self error:?];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__9;
  v31 = __Block_byref_object_dispose__9;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = 0;
  v11 = MEMORY[0x277D103B8];
  identifier = [productCopy identifier];
  v13 = [v11 predicateMatchingConceptsWithRelationshipType:798 withObjectId:identifier];

  v14 = *MEMORY[0x277D10C08];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __88__HDMedicationSearchEngine__genericProductForClinicalProduct_ontologyTransaction_error___block_invoke;
  v20[3] = &unk_2796CE2A8;
  v20[4] = &v21;
  v20[5] = &v27;
  if ([MEMORY[0x277D103B8] enumerateConceptsMatchingPredicate:v13 options:0 limit:v14 transaction:transactionCopy error:error enumerationHandler:v20])
  {
    v15 = v28[5];
    if (v15 || (objc_storeStrong(v28 + 5, v22[5]), (v15 = v28[5]) != 0))
    {
      v16 = v15;
      goto LABEL_9;
    }

    v17 = MEMORY[0x277CCA9B8];
    identifier2 = [productCopy identifier];
    [v17 hk_assignError:error code:118 format:{@"Unable to get generic product for clinical product %@", identifier2}];
  }

  v16 = 0;
LABEL_9:

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v16;
}

uint64_t __88__HDMedicationSearchEngine__genericProductForClinicalProduct_ontologyTransaction_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (!v7)
  {
    objc_storeStrong(v6, a2);
  }

  v8 = [v4 isGeneric];
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  return v8 ^ 1u;
}

+ (id)_importEligibleMedicationConceptsSinceDate:(id)date limit:(int64_t)limit profile:(id)profile errorOut:(id *)out
{
  dateCopy = date;
  profileCopy = profile;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__9;
  v29 = __Block_byref_object_dispose__9;
  v30 = 0;
  v12 = MEMORY[0x277D10770];
  database = [profileCopy database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __94__HDMedicationSearchEngine__importEligibleMedicationConceptsSinceDate_limit_profile_errorOut___block_invoke;
  v19[3] = &unk_2796CE2F8;
  v14 = dateCopy;
  v20 = v14;
  v15 = profileCopy;
  selfCopy = self;
  limitCopy = limit;
  v21 = v15;
  v22 = &v25;
  LODWORD(out) = [v12 performReadTransactionWithHealthDatabase:database error:out block:v19];

  if (out)
  {
    v16 = v26[5];
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  _Block_object_dispose(&v25, 8);

  return v17;
}

uint64_t __94__HDMedicationSearchEngine__importEligibleMedicationConceptsSinceDate_limit_profile_errorOut___block_invoke(void *a1, void *a2, void *a3)
{
  v53[2] = *MEMORY[0x277D85DE8];
  v43 = a2;
  v4 = a1[4];
  v5 = HDMedicalRecordEntityPredicateForSortDate();
  v6 = [MEMORY[0x277CCD720] medicationOrderTypeForIdentifier:*MEMORY[0x277CCC408]];
  v53[0] = v6;
  v7 = [MEMORY[0x277CCD720] medicationRecordTypeForIdentifier:*MEMORY[0x277CCC410]];
  v53[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __94__HDMedicationSearchEngine__importEligibleMedicationConceptsSinceDate_limit_profile_errorOut___block_invoke_2;
  v46[3] = &unk_2796CE2D0;
  v42 = v5;
  v47 = v42;
  v9 = [v8 hk_map:v46];

  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCC3C0] ascending:0];
  v11 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v12 = objc_alloc(MEMORY[0x277D10780]);
  v52 = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
  v41 = v9;
  v14 = [v12 initWithQueryDescriptors:v9 includeDeletedObjects:0 anchor:0 sortDescriptors:v13 bufferSize:10 profile:a1[5]];

  v45 = 0;
  LODWORD(v12) = [v14 advanceWithError:&v45];
  v15 = v45;
  if (v12)
  {
    *&v16 = 138543618;
    v39 = v16;
    while (1)
    {
      v17 = [v14 object];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v17 primaryConcept];
        if ([v18 isAdHoc])
        {
        }

        else
        {
          v19 = [v17 primaryConcept];
          v20 = [v19 isNebulous];

          if ((v20 & 1) == 0)
          {
            v24 = [v17 primaryConcept];
            v23 = [v24 identifier];
            [v11 addObject:v23];
            goto LABEL_15;
          }
        }

        v21 = a1[7];
        v22 = a1[5];
        v44 = 0;
        v23 = [v21 _resolveIndividualRxNormConceptsFromMedicalRecordsCodings:v17 profile:v22 error:&v44];
        v24 = v44;
        if (v23)
        {
          if ([v23 count])
          {
            [v11 addObjectsFromArray:v23];
          }

LABEL_15:

          v26 = [v11 count];
          v27 = a1[8];

          if (v26 >= v27)
          {
            break;
          }

          goto LABEL_16;
        }

        _HKInitializeLogging();
        v25 = HKLogMedication();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v30 = a1[7];
          *buf = v39;
          v49 = v30;
          v50 = 2114;
          v51 = v24;
          _os_log_error_impl(&dword_25181C000, v25, OS_LOG_TYPE_ERROR, "[%{public}@]: unable to resolve individual RxNorm codes. Error: %{public}@", buf, 0x16u);
        }
      }

LABEL_16:
      v45 = v15;
      v28 = [v14 advanceWithError:&v45];
      v29 = v45;

      v15 = v29;
      if ((v28 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  v29 = v15;
LABEL_19:
  if (v29 && ([v29 hk_isHealthKitErrorWithCode:900] & 1) == 0)
  {
    _HKInitializeLogging();
    v35 = HKLogConceptIndex();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      __94__HDMedicationSearchEngine__importEligibleMedicationConceptsSinceDate_limit_profile_errorOut___block_invoke_cold_1(v29, v35);
    }

    if (a3)
    {
      v36 = v29;
      v34 = 0;
      *a3 = v29;
    }

    else
    {
      _HKLogDroppedError();
      v34 = 0;
    }
  }

  else
  {
    v31 = [v11 array];
    v32 = *(a1[6] + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v31;

    v34 = 1;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v34;
}

id __94__HDMedicationSearchEngine__importEligibleMedicationConceptsSinceDate_limit_profile_errorOut___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D10820];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277CBEB98] setWithObject:v4];

  v7 = [v5 initWithSampleTypes:v6 encodingOptions:0 restrictedSourceEntities:0 authorizationFilter:0 samplePredicate:*(a1 + 32)];

  return v7;
}

+ (id)_resolveIndividualRxNormConceptsFromMedicalRecordsCodings:(id)codings profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  medicalRecordCodings = [codings medicalRecordCodings];
  v9 = [medicalRecordCodings hk_filter:&__block_literal_global_388];

  if ([v9 count])
  {
    v10 = [v9 hk_map:&__block_literal_global_394];
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = MEMORY[0x277D103B8];
    v13 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v10];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __100__HDMedicationSearchEngine__resolveIndividualRxNormConceptsFromMedicalRecordsCodings_profile_error___block_invoke_3;
    v18[3] = &unk_2796CE360;
    v14 = v11;
    v19 = v14;
    v15 = [v12 enumerateConceptsMatchingPredicate:v13 profile:profileCopy error:error enumerationHandler:v18];

    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  return v16;
}

BOOL __100__HDMedicationSearchEngine__resolveIndividualRxNormConceptsFromMedicalRecordsCodings_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 codingSystem];
  v4 = [v3 identifier];
  if ([v4 isEqualToString:@"http://www.nlm.nih.gov/research/umls/rxnorm"])
  {
    v5 = [v2 code];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __100__HDMedicationSearchEngine__resolveIndividualRxNormConceptsFromMedicalRecordsCodings_profile_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D103B8];
  v3 = [a2 code];
  v4 = [v2 predicateMatchingConceptsWithAttributeType:1008 attributeValue:v3];

  return v4;
}

uint64_t __100__HDMedicationSearchEngine__resolveIndividualRxNormConceptsFromMedicalRecordsCodings_profile_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 hk_addNonNilObject:v3];

  return 1;
}

+ (id)hkt_genericMedicationWithClinicalProductConcept:(id)concept profile:(id)profile errorOut:(id *)out
{
  conceptCopy = concept;
  profileCopy = profile;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__9;
  v23 = __Block_byref_object_dispose__9;
  v24 = 0;
  ontologyDatabase = [profileCopy ontologyDatabase];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__HDMedicationSearchEngine_hkt_genericMedicationWithClinicalProductConcept_profile_errorOut___block_invoke;
  v15[3] = &unk_2796CE238;
  v17 = &v19;
  selfCopy = self;
  v11 = conceptCopy;
  v16 = v11;
  LODWORD(out) = [ontologyDatabase performTransactionWithError:out transactionHandler:v15];

  if (out)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

BOOL __93__HDMedicationSearchEngine_hkt_genericMedicationWithClinicalProductConcept_profile_errorOut___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 48) _genericProductForClinicalProduct:*(a1 + 32) ontologyTransaction:a2 error:a3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

+ (void)medicationClustersFromScanResult:(uint64_t)a1 limit:(uint64_t)a2 profile:errorOut:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMedicationSearchEngine.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"scanResult != nil"}];
}

+ (void)medicationClustersFromTextSearchTokens:(uint64_t)a1 limit:(uint64_t)a2 profile:errorOut:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMedicationSearchEngine.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"tokens != nil"}];
}

+ (void)_medicationClustersFromTextSearchTokens:(os_log_t)log limit:ontologyTransaction:errorOut:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_25181C000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to query concepts using tokens: [%{public}@]", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)_genericProductForClinicalProduct:(uint64_t)a1 ontologyTransaction:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMedicationSearchEngine.m" lineNumber:387 description:{@"Invalid parameter not satisfying: %@", @"clinicalProduct != nil"}];
}

void __94__HDMedicationSearchEngine__importEligibleMedicationConceptsSinceDate_limit_profile_errorOut___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HKSensitiveLogItem();
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_25181C000, a2, OS_LOG_TYPE_ERROR, "Failed to iterate medical records: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end