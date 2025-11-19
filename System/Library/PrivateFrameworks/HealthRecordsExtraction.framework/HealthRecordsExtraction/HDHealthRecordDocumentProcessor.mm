@interface HDHealthRecordDocumentProcessor
- (HDHealthRecordDocumentProcessor)initWithConfiguration:(id)a3;
- (id)_resourceObjectsBatchedPerFHIRRelease:(id)a3;
- (id)compareExistingPatientResourceData:(id)a3 incomingPatientResourceData:(id)a4 error:(id *)a5;
- (id)extractAttachmentContentFromFHIRResource:(id)a3 error:(id *)a4;
- (id)processExtractionRequest:(id)a3 error:(id *)a4;
- (id)processOptInRequest:(id)a3 redactor:(id)a4 error:(id *)a5;
- (id)processReferenceExtractionRequest:(id)a3 error:(id *)a4;
@end

@implementation HDHealthRecordDocumentProcessor

- (HDHealthRecordDocumentProcessor)initWithConfiguration:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(HDHealthRecordDocumentProcessor *)a2 initWithConfiguration:?];
  }

  v10.receiver = self;
  v10.super_class = HDHealthRecordDocumentProcessor;
  v7 = [(HDHealthRecordDocumentProcessor *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_configuration, a3);
  }

  return v8;
}

- (id)processExtractionRequest:(id)a3 error:(id *)a4
{
  v74[3] = *MEMORY[0x277D85DE8];
  v40 = a3;
  v74[0] = objc_opt_class();
  v74[1] = objc_opt_class();
  v74[2] = objc_opt_class();
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:3];
  v5 = [v40 resources];
  v6 = [(HDHealthRecordDocumentProcessor *)self _resourceObjectsBatchedPerFHIRRelease:v5];

  v47 = objc_alloc_init(HKHealthRecordsExtractor);
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x2810000000;
  v69[3] = "";
  v70 = 0;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v8 = v6;
  v35 = [v8 countByEnumeratingWithState:&v65 objects:v73 count:16];
  v41 = v8;
  if (v35)
  {
    v36 = *v66;
    while (2)
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v66 != v36)
        {
          objc_enumerationMutation(v8);
        }

        v37 = *(*(&v65 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:?];
        v10 = [v9 mutableCopy];

        v11 = dispatch_group_create();
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v12 = [v10 copy];
        v13 = [v12 countByEnumeratingWithState:&v61 objects:v72 count:16];
        if (v13)
        {
          v14 = *v62;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v62 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v61 + 1) + 8 * j);
              dispatch_group_enter(v11);
              v54[0] = MEMORY[0x277D85DD0];
              v54[1] = 3221225472;
              v54[2] = __66__HDHealthRecordDocumentProcessor_processExtractionRequest_error___block_invoke;
              v54[3] = &unk_2796E2AF8;
              v60 = v69;
              v55 = v7;
              v56 = v10;
              v57 = v16;
              v58 = self;
              v59 = v11;
              [(HKHealthRecordsExtractor *)v47 extractResource:v16 completion:v54];
            }

            v13 = [v12 countByEnumeratingWithState:&v61 objects:v72 count:16];
          }

          while (v13);
        }

        dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
        if ([v10 count])
        {
          v38 = [(HDHealthRecordDocumentTypeConfiguration *)self->_configuration extractionRulesetForRelease:v37];
          if (!v38)
          {
            [MEMORY[0x277CCA9B8] hk_assignError:a4 code:100 format:{@"HDHealthRecordDocumentProcessor: No extraction ruleset is available for release %@", v37}];
LABEL_36:

            v27 = 0;
            goto LABEL_37;
          }

          v46 = [[HDHealthRecordProcessingContext alloc] initWithRuleset:v38 resources:v10];
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          obj = v39;
          v17 = [obj countByEnumeratingWithState:&v50 objects:v71 count:16];
          if (v17)
          {
            v45 = *v51;
            while (2)
            {
              v44 = v17;
              for (k = 0; k != v44; ++k)
              {
                if (*v51 != v45)
                {
                  objc_enumerationMutation(obj);
                }

                v19 = *(*(&v50 + 1) + 8 * k);
                v20 = objc_autoreleasePoolPush();
                v21 = [[v19 alloc] initWithProcessingContext:v46];
                if (([v21 conformsToProtocol:&unk_28641D570] & 1) == 0)
                {
                  v24 = [MEMORY[0x277CCA890] currentHandler];
                  [v24 handleFailureInMethod:a2 object:self file:@"HDHealthRecordDocumentProcessor.m" lineNumber:105 description:{@"HDHealthRecordDocumentProcessor: Trying to run invalid task instance, must conform to HDHealthRecordPipelineTask"}];
                }

                v49 = 0;
                v22 = [v21 processWithError:&v49];
                v23 = v49;

                objc_autoreleasePoolPop(v20);
                if ((v22 & 1) == 0)
                {
                  v28 = v23;
                  v29 = v28;
                  if (v28)
                  {
                    if (a4)
                    {
                      v30 = v28;
                      *a4 = v29;
                    }

                    else
                    {
                      _HKLogDroppedError();
                    }
                  }

                  goto LABEL_35;
                }
              }

              v17 = [obj countByEnumeratingWithState:&v50 objects:v71 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v48 = 0;
          v25 = [(HDHealthRecordProcessingContext *)v46 createExtractionResultWithError:&v48];
          obj = v48;
          if (!v25)
          {
            v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"HDHealthRecordDocumentProcessor: Failed to create extraction result for release %@", v37];
            [MEMORY[0x277CCA9B8] hk_assignError:a4 code:100 description:v29 underlyingError:obj];
LABEL_35:

            goto LABEL_36;
          }

          v26 = [v25 items];
          [v7 addObjectsFromArray:v26];
        }

        v8 = v41;
      }

      v35 = [v41 countByEnumeratingWithState:&v65 objects:v73 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  v27 = [objc_alloc(MEMORY[0x277D12358]) initWithItems:v7];
LABEL_37:

  _Block_object_dispose(v69, 8);
  v31 = *MEMORY[0x277D85DE8];

  return v27;
}

void __66__HDHealthRecordDocumentProcessor_processExtractionRequest_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    os_unfair_lock_lock((*(*(a1 + 72) + 8) + 32));
    [*(a1 + 32) addObject:v5];
    [*(a1 + 40) removeObject:*(a1 + 48)];
    os_unfair_lock_unlock((*(*(a1 + 72) + 8) + 32));
  }

  else if (v6)
  {
    if (([v6 hk_isHealthKitErrorWithCode:125] & 1) == 0)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
      {
        __66__HDHealthRecordDocumentProcessor_processExtractionRequest_error___block_invoke_cold_1(a1, v8);
      }
    }
  }

  dispatch_group_leave(*(a1 + 64));
}

- (id)compareExistingPatientResourceData:(id)a3 incomingPatientResourceData:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(HKHealthRecordsExtractor);
  v10 = [(HKHealthRecordsExtractor *)v9 comparePatientResourceDataWithExisting:v8 incoming:v7 error:a5];

  return v10;
}

- (id)extractAttachmentContentFromFHIRResource:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HKFHIRAttachmentContentExtractor);
  v7 = [(HKFHIRAttachmentContentExtractor *)v6 extractAttachmentContentFromFHIRResource:v5 error:a4];

  return v7;
}

- (id)processReferenceExtractionRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  configuration = self->_configuration;
  v8 = [v6 FHIRRelease];
  v9 = [(HDHealthRecordDocumentTypeConfiguration *)configuration extractionRulesetForRelease:v8];

  if (v9)
  {
    v10 = [[HDHealthRecordFindReferencesTask alloc] initWithRuleset:v9];
    v11 = [(HDHealthRecordFindReferencesTask *)v10 processResourcesForReferenceExtractionRequest:v6 error:a4];
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v10 = [v6 FHIRRelease];
    [v12 hk_assignError:a4 code:3 format:{@"FHIR release %@ is not supported for reference extraction", v10}];
    v11 = 0;
  }

  return v11;
}

- (id)processOptInRequest:(id)a3 redactor:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 resources];
  v11 = [v10 count];

  if (v11)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__0;
    v30 = __Block_byref_object_dispose__0;
    v31 = 0;
    v12 = [v8 resources];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __70__HDHealthRecordDocumentProcessor_processOptInRequest_redactor_error___block_invoke;
    v21 = &unk_2796E2B20;
    v22 = self;
    v23 = v9;
    v24 = &v32;
    v25 = &v26;
    v13 = [v12 hk_map:&v18];

    if (*(v33 + 24) == 1)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a5 code:100 description:@"Error during redaction" underlyingError:{v27[5], v18, v19, v20, v21, v22}];
      v14 = 0;
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277D12350]);
      v16 = [(HDHealthRecordDocumentProcessor *)self extractionRulesetVersion:v18];
      v14 = [v15 initWithRedactedResources:v13 rulesVersion:v16];
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 description:@"no resources to process"];
    v14 = 0;
  }

  return v14;
}

id __70__HDHealthRecordDocumentProcessor_processOptInRequest_redactor_error___block_invoke(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 FHIRVersion];
  v5 = [v4 FHIRRelease];

  v6 = [*(a1[4] + 8) extractionRulesetForRelease:v5];
  v7 = [v6 rulesetForFHIRResourceObject:v3];
  v8 = [v7 redactionRules];
  if (!v8)
  {
    v13 = 0;
    goto LABEL_16;
  }

  v9 = [v3 JSONObject];
  v10 = a1[5];
  v26 = 0;
  v11 = [HDHRSDataCollectionScrubber scrubberForResource:v9 redactor:v10 rules:v8 error:&v26];
  v12 = v26;

  if (v11)
  {
    v24 = v5;
    v23 = [v11 generateRedactedResource];
    v13 = [MEMORY[0x277D123C0] resourceObjectWithFHIRJSONObject:v3 redactedJSONObject:? error:?];
    v14 = v12;
    v25 = v12;

    if (!v13)
    {
      *(*(a1[6] + 8) + 24) = 1;
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
      {
        __70__HDHealthRecordDocumentProcessor_processOptInRequest_redactor_error___block_invoke_cold_1(a1 + 4, v15);
      }

      v16 = *(a1[7] + 8);
      v18 = *(v16 + 40);
      v17 = (v16 + 40);
      if (!v18)
      {
        objc_storeStrong(v17, v14);
      }
    }

    v19 = v23;
    v5 = v24;
    v12 = v25;
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      __70__HDHealthRecordDocumentProcessor_processOptInRequest_redactor_error___block_invoke_cold_2(a1 + 4, v20);
    }

    v21 = *(a1[7] + 8);
    if (*(v21 + 40))
    {
      v13 = 0;
      goto LABEL_15;
    }

    v12 = v12;
    v13 = 0;
    v19 = *(v21 + 40);
    *(v21 + 40) = v12;
  }

LABEL_15:
LABEL_16:

  return v13;
}

- (id)_resourceObjectsBatchedPerFHIRRelease:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 FHIRVersion];
        v12 = [v11 FHIRRelease];

        v13 = [v4 objectForKeyedSubscript:v12];
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v4 setObject:v13 forKeyedSubscript:v12];
        }

        [v13 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end