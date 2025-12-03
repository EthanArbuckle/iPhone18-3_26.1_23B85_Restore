@interface HDHealthRecordConstructClinicalRecordsTask
- (BOOL)_applyReferenceRulesToClinicalItem:(id)item ruleset:(id)ruleset error:(id *)error;
- (BOOL)_isEligibleClinicalItem:(id)item error:(id *)error;
- (BOOL)processWithError:(id *)error;
- (HDHealthRecordConstructClinicalRecordsTask)init;
- (HDHealthRecordConstructClinicalRecordsTask)initWithProcessingContext:(id)context;
- (id)_clinicalRecordWithClinicalItem:(id)item resourceObject:(id)object error:(id *)error;
@end

@implementation HDHealthRecordConstructClinicalRecordsTask

- (HDHealthRecordConstructClinicalRecordsTask)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDHealthRecordConstructClinicalRecordsTask)initWithProcessingContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = HDHealthRecordConstructClinicalRecordsTask;
  v6 = [(HDHealthRecordConstructClinicalRecordsTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processingContext, context);
  }

  return v7;
}

- (BOOL)processWithError:(id *)error
{
  extractionRuleset = [(HDHealthRecordProcessingContext *)self->_processingContext extractionRuleset];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HDHealthRecordConstructClinicalRecordsTask_processWithError___block_invoke;
  v8[3] = &unk_2796E2A88;
  v9 = extractionRuleset;
  v10 = a2;
  v8[4] = self;
  v6 = extractionRuleset;
  [HDHealthRecordClinicalType enumerateClinicalTypesUsingBlock:v8];

  return 1;
}

void __63__HDHealthRecordConstructClinicalRecordsTask_processWithError___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1;
  v54 = *MEMORY[0x277D85DE8];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v3 = a1 + 4;
  obj = [*(a1[4] + 8) extractedClinicalItemsForClinicalType:a2];
  v4 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v44;
    v8 = MEMORY[0x277CCC2C0];
    *&v5 = 138543362;
    v35 = v5;
    v36 = v2;
    do
    {
      v9 = 0;
      v37 = v6;
      do
      {
        if (*v44 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v43 + 1) + 8 * v9);
        v11 = *v3;
        v42 = 0;
        v12 = [v11 _isEligibleClinicalItem:v10 error:{&v42, v35}];
        v13 = v42;
        v14 = v13;
        if (v12)
        {
          v15 = [v10 extractedMedicalRecord];
          if (!v15)
          {
            __63__HDHealthRecordConstructClinicalRecordsTask_processWithError___block_invoke_cold_2(v2 + 6, v3);
          }

          v16 = v2[4];
          v17 = v2[5];
          v41 = v14;
          v18 = [v16 _applyReferenceRulesToClinicalItem:v10 ruleset:v17 error:&v41];
          v19 = v41;

          if (v18)
          {
            v20 = [v10 APIResource];
            if (v20)
            {
              v21 = *v3;
              v40 = 0;
              v22 = [v21 _clinicalRecordWithClinicalItem:v10 resourceObject:v20 error:&v40];
              v23 = v40;
              v24 = v23;
              if (v22)
              {
                v25 = *(*v3 + 8);
                v39 = 0;
                v26 = [v25 didProcessClinicalRecord:v22 forMedicalRecord:v15 error:&v39];
                v27 = v39;
                if ((v26 & 1) == 0)
                {
                  _HKInitializeLogging();
                  v28 = *MEMORY[0x277CCC2C0];
                  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
                  {
                    *buf = v35;
                    v52 = v27;
                    _os_log_error_impl(&dword_251CC8000, v28, OS_LOG_TYPE_ERROR, "[ConstructClinicalRecordsTask] Failed to mark clinical record sample as processed: %{public}@", buf, 0xCu);
                  }
                }
              }

              else if (v23)
              {
                _HKInitializeLogging();
                v33 = *MEMORY[0x277CCC2C0];
                if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
                {
                  *buf = v35;
                  v52 = v24;
                  _os_log_error_impl(&dword_251CC8000, v33, OS_LOG_TYPE_ERROR, "[ConstructClinicalRecordsTask] Unable to create clinical record sample: %{public}@", buf, 0xCu);
                }
              }

              v2 = v36;
            }

            else
            {
              _HKInitializeLogging();
              v32 = *MEMORY[0x277CCC2C0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
              {
                __63__HDHealthRecordConstructClinicalRecordsTask_processWithError___block_invoke_cold_3(&v47, v32, v10, &v48);
              }
            }
          }

          else
          {
            _HKInitializeLogging();
            v31 = *MEMORY[0x277CCC2C0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
            {
              *buf = v35;
              v52 = v19;
              _os_log_error_impl(&dword_251CC8000, v31, OS_LOG_TYPE_ERROR, "[ConstructClinicalRecordsTask] Error applying reference rules to clinical item: %{public}@", buf, 0xCu);
            }
          }

          v6 = v37;
        }

        else
        {
          if (v13)
          {
            _HKInitializeLogging();
            v29 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
            {
              *buf = v35;
              v52 = v14;
              _os_log_error_impl(&dword_251CC8000, v29, OS_LOG_TYPE_ERROR, "[ConstructClinicalRecordsTask] Error getting eligibility info from clinical item: %{public}@", buf, 0xCu);
            }
          }

          _HKInitializeLogging();
          v30 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
          {
            __63__HDHealthRecordConstructClinicalRecordsTask_processWithError___block_invoke_cold_1(&v49, v30, v10, &v50);
          }

          v19 = v14;
        }

        ++v9;
        v8 = MEMORY[0x277CCC2C0];
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v6);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isEligibleClinicalItem:(id)item error:(id *)error
{
  itemCopy = item;
  extractedMedicalRecord = [itemCopy extractedMedicalRecord];

  if (!extractedMedicalRecord)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      [HDHealthRecordConstructClinicalRecordsTask _isEligibleClinicalItem:v12 error:?];
    }

    goto LABEL_7;
  }

  extractedMedicalRecord2 = [itemCopy extractedMedicalRecord];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 || ([itemCopy extractedMedicalRecord], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "enteredInError"), v8, (v9))
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  extractedMedicalRecord3 = [itemCopy extractedMedicalRecord];
  v11 = [extractedMedicalRecord3 state] != 1;

LABEL_8:
  return v11;
}

- (BOOL)_applyReferenceRulesToClinicalItem:(id)item ruleset:(id)ruleset error:(id *)error
{
  v100 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  rulesetCopy = ruleset;
  v8 = [rulesetCopy rulesetForClinicalType:{objc_msgSend(itemCopy, "type")}];
  v61 = v8;
  if (!v8)
  {
    v49 = [MEMORY[0x277D12390] extractionFailureRecordWithCode:3 propertyName:0 resourceKeyPath:0];
    v50 = objc_alloc_init(MEMORY[0x277D12388]);
    [v50 addFailureRecord:v49];
    [itemCopy setMedicalRecordPropertyValue:v50 forKey:*MEMORY[0x277D122E8]];

    v48 = 0;
LABEL_39:
    v53 = rulesetCopy;
    goto LABEL_42;
  }

  aPIReferenceRules = [v8 APIReferenceRules];
  v10 = [aPIReferenceRules count];

  representedResource = [itemCopy representedResource];
  v12 = representedResource;
  if (!v10)
  {
    v51 = representedResource;
    v52 = [representedResource copy];
    [itemCopy setAPIResource:v52];

    v48 = 1;
    goto LABEL_39;
  }

  v13 = [HDFHIRReferenceProcessor resourcesContainedInResource:representedResource error:error];
  v58 = v13;
  v59 = v12;
  if (v13)
  {
    v14 = v13;
    errorCopy = error;
    v57 = itemCopy;
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __95__HDHealthRecordConstructClinicalRecordsTask__applyReferenceRulesToClinicalItem_ruleset_error___block_invoke;
    v90[3] = &unk_2796E2AB0;
    v64 = v12;
    v91 = v64;
    v70 = [v14 hk_map:v90];
    v74 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v75 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = [v61 APIReferenceRules];
    v65 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
    if (v65)
    {
      v63 = *v87;
      do
      {
        for (i = 0; i != v65; ++i)
        {
          if (*v87 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v86 + 1) + 8 * i);
          [v16 appliesTo];
          v76 = v16;
          keyPath = [v16 keyPath];
          jSONObject = [v64 JSONObject];
          v85 = 0;
          v19 = [HDFHIRReferenceProcessor referencesAtKeyPath:keyPath resourceDictionary:jSONObject error:&v85];
          v20 = v85;

          if (v19)
          {
            v66 = v20;
            v67 = v19;
            v68 = i;
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v69 = v19;
            v72 = [v69 countByEnumeratingWithState:&v81 objects:v94 count:16];
            if (v72)
            {
              v71 = *v82;
              do
              {
                v21 = 0;
                do
                {
                  if (*v82 != v71)
                  {
                    objc_enumerationMutation(v69);
                  }

                  v73 = v21;
                  v22 = *(*(&v81 + 1) + 8 * v21);
                  v77 = 0u;
                  v78 = 0u;
                  v79 = 0u;
                  v80 = 0u;
                  v23 = v70;
                  v24 = [v23 countByEnumeratingWithState:&v77 objects:v93 count:16];
                  if (v24)
                  {
                    v25 = v24;
                    v26 = *v78;
                    do
                    {
                      for (j = 0; j != v25; ++j)
                      {
                        if (*v78 != v26)
                        {
                          objc_enumerationMutation(v23);
                        }

                        v28 = *(*(&v77 + 1) + 8 * j);
                        identifier = [v28 identifier];
                        if ([HDFHIRReferenceProcessor reference:v22 matchesIdentifier:identifier])
                        {
                          disallowedResourceTypes = [v76 disallowedResourceTypes];
                          resourceType = [identifier resourceType];
                          v32 = [disallowedResourceTypes containsObject:resourceType];

                          v33 = v75;
                          if (v32)
                          {
                            goto LABEL_24;
                          }

                          allowedResourceTypes = [v76 allowedResourceTypes];
                          resourceType2 = [identifier resourceType];
                          v36 = [allowedResourceTypes containsObject:resourceType2];

                          v33 = v74;
                          if ((v36 & 1) != 0 || ([v76 allowedResourceTypes], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "containsObject:", @"Any"), v37, v33 = v74, v38))
                          {
LABEL_24:
                            [v33 addObject:v28];
                          }
                        }
                      }

                      v25 = [v23 countByEnumeratingWithState:&v77 objects:v93 count:16];
                    }

                    while (v25);
                  }

                  v21 = v73 + 1;
                }

                while (v73 + 1 != v72);
                v72 = [v69 countByEnumeratingWithState:&v81 objects:v94 count:16];
              }

              while (v72);
            }

            v19 = v67;
            i = v68;
            v20 = v66;
          }

          else
          {
            _HKInitializeLogging();
            v39 = *MEMORY[0x277CCC2C0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
            {
              v40 = v39;
              keyPath2 = [v16 keyPath];
              v42 = HKSensitiveLogItem();
              *buf = 138543618;
              v96 = keyPath2;
              v97 = 2114;
              v98 = v42;
              _os_log_error_impl(&dword_251CC8000, v40, OS_LOG_TYPE_ERROR, "[ConstructClinicalRecordsTask] Error parsing reference(s) at «%{public}@»: %{public}@. Skipping.", buf, 0x16u);
            }
          }
        }

        v65 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
      }

      while (v65);
    }

    [v74 minusSet:v75];
    v43 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"identifier.stringValue" ascending:1];
    v92 = v43;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
    v45 = [v74 sortedArrayUsingDescriptors:v44];
    v46 = [v45 hk_map:&__block_literal_global_0];

    v47 = [HDFHIRReferenceProcessor newResourceFromResource:v64 containingOnlyResources:v46 error:errorCopy];
    v48 = v47 != 0;
    if (v47)
    {
      [v57 setAPIResource:v47];
    }

    itemCopy = v57;
  }

  else
  {
    v48 = 0;
  }

  v53 = rulesetCopy;

LABEL_42:
  v54 = *MEMORY[0x277D85DE8];
  return v48;
}

id __95__HDHealthRecordConstructClinicalRecordsTask__applyReferenceRulesToClinicalItem_ruleset_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D12380];
  v3 = (a1 + 32);
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 FHIRVersion];
  v7 = [*v3 receivedDate];
  v13 = 0;
  v8 = [v2 resourceObjectWithJSONObject:v5 sourceURL:0 FHIRVersion:v6 receivedDate:v7 extractionHints:0 error:&v13];

  v9 = v13;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      __95__HDHealthRecordConstructClinicalRecordsTask__applyReferenceRulesToClinicalItem_ruleset_error___block_invoke_cold_1(v3, v11);
    }
  }

  return v8;
}

- (id)_clinicalRecordWithClinicalItem:(id)item resourceObject:(id)object error:(id *)error
{
  itemCopy = item;
  objectCopy = object;
  v9 = [itemCopy correspondingClinicalTypeWithError:error];
  if (v9)
  {
    identifier = [objectCopy identifier];
    v11 = objc_alloc(MEMORY[0x277CCD3C8]);
    resourceType = [identifier resourceType];
    v10Identifier = [identifier identifier];
    fHIRVersion = [objectCopy FHIRVersion];
    [objectCopy data];
    v15 = v27 = itemCopy;
    sourceURL = [objectCopy sourceURL];
    receivedDate = [objectCopy receivedDate];
    v18 = [v11 initWithResourceType:resourceType identifier:v10Identifier FHIRVersion:fHIRVersion data:v15 sourceURL:sourceURL lastUpdatedDate:receivedDate];

    receivedDate2 = [objectCopy receivedDate];
    v20 = MEMORY[0x277CCD110];
    localDevice = [MEMORY[0x277CCD2E8] localDevice];
    stringValue = [identifier stringValue];
    v23 = [v20 clinicalRecordWithType:v9 startDate:receivedDate2 endDate:receivedDate2 device:localDevice metadata:0 displayName:stringValue FHIRResource:v18];

    itemCopy = v27;
    representedResource = [v27 representedResource];
    firstSeenDate = [representedResource firstSeenDate];
    [v23 _setCreationDate:firstSeenDate];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end