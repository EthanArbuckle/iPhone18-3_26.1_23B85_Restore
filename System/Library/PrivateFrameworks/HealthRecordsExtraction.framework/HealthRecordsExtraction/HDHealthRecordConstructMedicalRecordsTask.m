@interface HDHealthRecordConstructMedicalRecordsTask
+ (BOOL)_extractKeyPathsWithClinicalItem:(id)a3 ruleset:(id)a4;
+ (BOOL)_unresolvableReferencesPresentInClinicalItem:(id)a3;
+ (BOOL)_unsupportedModifierExtensionsPresentInClinicalItem:(id)a3;
- (BOOL)_collectMedicalRecordPropertiesWithError:(id *)a3;
- (HDHealthRecordConstructMedicalRecordsTask)initWithProcessingContext:(id)a3;
- (id)_medicalRecordWithClinicalItem:(id)a3 clinicalType:(int64_t)a4 ruleset:(id)a5 error:(id *)a6;
- (id)_unknownMedicalRecordWithClinicalItem:(id)a3 ruleset:(id)a4 error:(id *)a5;
@end

@implementation HDHealthRecordConstructMedicalRecordsTask

- (HDHealthRecordConstructMedicalRecordsTask)initWithProcessingContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HDHealthRecordConstructMedicalRecordsTask;
  v6 = [(HDHealthRecordConstructMedicalRecordsTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processingContext, a3);
  }

  return v7;
}

- (BOOL)_collectMedicalRecordPropertiesWithError:(id *)a3
{
  v5 = [(HDHealthRecordProcessingContext *)self->_processingContext extractionRuleset];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__HDHealthRecordConstructMedicalRecordsTask__collectMedicalRecordPropertiesWithError___block_invoke;
  v12[3] = &unk_2796E2B48;
  v12[4] = self;
  v6 = v5;
  v13 = v6;
  v14 = &v16;
  v15 = &v22;
  [HDHealthRecordClinicalType enumerateClinicalTypesUsingBlock:v12];
  v7 = *(v23 + 24);
  if ((v7 & 1) == 0)
  {
    v8 = v17[5];
    v9 = v8;
    if (v8)
    {
      if (a3)
      {
        v10 = v8;
        *a3 = v9;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v7;
}

void __86__HDHealthRecordConstructMedicalRecordsTask__collectMedicalRecordPropertiesWithError___block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [*(a1[4] + 8) extractedClinicalItemsForClinicalType:a2];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  v8 = *v30;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v30 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v29 + 1) + 8 * i);
      v11 = a1[4];
      if ([objc_opt_class() _extractKeyPathsWithClinicalItem:v10 ruleset:a1[5]])
      {
        v12 = a1[4];
        v13 = a1[5];
        v14 = *(a1[6] + 8);
        obj = 0;
        v15 = [v12 _medicalRecordWithClinicalItem:v10 clinicalType:a2 ruleset:v13 error:&obj];
        objc_storeStrong((v14 + 40), obj);
        if ([v15 enteredInError] & 1) == 0 && ((v16 = a1[4], (objc_msgSend(objc_opt_class(), "_unsupportedModifierExtensionsPresentInClinicalItem:", v10)) || (v17 = a1[4], objc_msgSend(objc_opt_class(), "_unresolvableReferencesPresentInClinicalItem:", v10))))
        {
        }

        else if (v15)
        {
          goto LABEL_14;
        }
      }

      v18 = a1[4];
      v19 = a1[5];
      v20 = *(a1[6] + 8);
      v27 = 0;
      v15 = [v18 _unknownMedicalRecordWithClinicalItem:v10 ruleset:v19 error:&v27];
      objc_storeStrong((v20 + 40), v27);
      if (!v15)
      {
        *(*(a1[7] + 8) + 24) = 0;
        *a3 = 1;
        goto LABEL_20;
      }

LABEL_14:
      [v10 assignExtractedMedicalRecord:v15];
      v21 = *(a1[4] + 8);
      v22 = [v10 representedResource];
      v23 = *(a1[6] + 8);
      v26 = *(v23 + 40);
      LOBYTE(v21) = [v21 didProcessMedicalRecord:v15 forResource:v22 error:&v26];
      objc_storeStrong((v23 + 40), v26);

      if ((v21 & 1) == 0)
      {
        *(*(a1[7] + 8) + 24) = 0;
        *a3 = 1;

        goto LABEL_20;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_20:

  v24 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_unsupportedModifierExtensionsPresentInClinicalItem:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 representedResource];

  if (v5)
  {
    v6 = [HDFHIRExtensionProcessor alloc];
    v7 = [v4 representedResource];
    v8 = [(HDFHIRExtensionProcessor *)v6 initWithResource:v7];

    v39 = 0;
    v9 = [(HDFHIRExtensionProcessor *)v8 findUnsupportedModifierExtensions:&v39];
    v10 = v39;
    if (v9)
    {
      if ([v9 count])
      {
        v30 = *MEMORY[0x277D122E8];
        v11 = [v4 medicalRecordPropertyValueForKey:*MEMORY[0x277D122E8] expectedClass:objc_opt_class() isArray:0 error:0];
        v12 = v11;
        v33 = v4;
        v32 = v10;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = objc_alloc_init(MEMORY[0x277D12388]);
        }

        v17 = v13;

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v31 = v9;
        obj = v9;
        v18 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v36;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v36 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v35 + 1) + 8 * i);
              v23 = [v22 keyPath];
              v24 = [v22 extensionElement];
              v25 = [v24 URI];
              v26 = [v23 stringByAppendingFormat:@".%@", v25];

              v27 = [MEMORY[0x277D12390] extractionFailureRecordWithCode:2 propertyName:0 resourceKeyPath:v26];
              [v17 addFailureRecord:v27];
            }

            v19 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
          }

          while (v19);
        }

        v4 = v33;
        [v33 setMedicalRecordPropertyValue:v17 forKey:v30];

        v15 = 1;
        v10 = v32;
        v9 = v31;
        goto LABEL_21;
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
      {
        [(HDHealthRecordConstructMedicalRecordsTask *)v16 _unsupportedModifierExtensionsPresentInClinicalItem:a1];
      }
    }

    v15 = 0;
LABEL_21:

    goto LABEL_22;
  }

  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC2C0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
  {
    [(HDHealthRecordConstructMedicalRecordsTask *)v14 _unsupportedModifierExtensionsPresentInClinicalItem:a1];
  }

  v15 = 0;
LABEL_22:

  v28 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (BOOL)_unresolvableReferencesPresentInClinicalItem:(id)a3
{
  v4 = a3;
  v5 = [v4 representedResource];

  if (!v5)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      [(HDHealthRecordConstructMedicalRecordsTask *)v14 _unsupportedModifierExtensionsPresentInClinicalItem:a1];
    }

    goto LABEL_8;
  }

  v6 = [v4 representedResource];
  v7 = [v6 extractionHints];

  if ((v7 & 2) == 0)
  {
    v8 = [v4 representedResource];
    v9 = [v8 extractionHints];

    if ((v9 & 1) == 0)
    {
LABEL_8:
      v15 = 0;
      goto LABEL_11;
    }
  }

  v10 = *MEMORY[0x277D122E8];
  v11 = [v4 medicalRecordPropertyValueForKey:*MEMORY[0x277D122E8] expectedClass:objc_opt_class() isArray:0 error:0];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277D12388]);
  }

  v16 = v13;

  v17 = [MEMORY[0x277D12390] extractionFailureRecordWithCode:7 propertyName:0 resourceKeyPath:0];
  [v16 addFailureRecord:v17];
  [v4 setMedicalRecordPropertyValue:v16 forKey:v10];

  v15 = 1;
LABEL_11:

  return v15;
}

+ (BOOL)_extractKeyPathsWithClinicalItem:(id)a3 ruleset:(id)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v48 = a4;
  v6 = [v48 rulesetForClinicalType:{objc_msgSend(v5, "type")}];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277D12388]);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v8 = [v6 medicalRecordProperties];
    v9 = [v8 allKeys];

    obj = v9;
    v52 = [v9 countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v52)
    {
      v51 = *v64;
      v50 = v6;
      v56 = v7;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v64 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v63 + 1) + 8 * i);
          v12 = [v6 medicalRecordProperties];
          v57 = v11;
          v13 = [v12 objectForKeyedSubscript:v11];

          if (v13)
          {
            v54 = i;
            v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v53 = v13;
            v14 = v13;
            v15 = [v14 countByEnumeratingWithState:&v59 objects:v69 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v60;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v60 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v59 + 1) + 8 * j);
                  v20 = objc_autoreleasePoolPush();
                  v58 = 0;
                  v21 = [v5 candidateValueForKeyPath:v19 error:&v58];
                  v22 = v58;
                  v23 = v22;
                  if (v21)
                  {
                    v24 = 1;
                  }

                  else
                  {
                    v24 = v22 == 0;
                  }

                  if (v24)
                  {
                    if (v21)
                    {
                      [v55 addObject:v21];
                    }
                  }

                  else
                  {
                    v25 = v5;
                    _HKInitializeLogging();
                    v26 = *MEMORY[0x277CCC2C0];
                    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      v68 = v23;
                      _os_log_error_impl(&dword_251CC8000, v26, OS_LOG_TYPE_ERROR, "ConstructMedicalRecordsTask keypath extraction error %{public}@", buf, 0xCu);
                    }

                    v28 = [MEMORY[0x277D12390] extractionFailureRecordWithCode:4 propertyName:v57 resourceKeyPath:v19];
                    [v56 addFailureRecord:v28];

                    v5 = v25;
                  }

                  objc_autoreleasePoolPop(v20);
                }

                v16 = [v14 countByEnumeratingWithState:&v59 objects:v69 count:16];
              }

              while (v16);
            }

            v7 = v56;
            if ([v55 count] >= 2)
            {
              v29 = [MEMORY[0x277D12390] extractionFailureRecordWithCode:5 propertyName:v57 resourceKeyPath:0];
              [v56 addFailureRecord:v29];
            }

            v30 = [v56 failureRecords];
            v31 = [v30 count];

            v6 = v50;
            if (!v31)
            {
              v32 = [v55 firstObject];
              [v5 setMedicalRecordPropertyValue:v32 forKey:v57];
            }

            v13 = v53;
            i = v54;
          }
        }

        v52 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v52);
    }

    v33 = [v7 failureRecords];
    v34 = [v33 count];
    v35 = v34 == 0;

    if (v34)
    {
      v36 = *MEMORY[0x277D122E8];
      v37 = [v5 medicalRecordPropertyValueForKey:*MEMORY[0x277D122E8] expectedClass:objc_opt_class() isArray:0 error:0];

      if (v37)
      {
        [(HDHealthRecordConstructMedicalRecordsTask *)a1 _extractKeyPathsWithClinicalItem:v5 ruleset:v36, a2];
      }

      [v5 setMedicalRecordPropertyValue:v7 forKey:v36];
    }
  }

  else
  {
    v38 = [MEMORY[0x277D12390] extractionFailureRecordWithCode:3 propertyName:0 resourceKeyPath:0];
    v39 = *MEMORY[0x277D122E8];
    v40 = [v5 medicalRecordPropertyValueForKey:*MEMORY[0x277D122E8] expectedClass:objc_opt_class() isArray:0 error:0];
    v41 = v40;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = objc_alloc_init(MEMORY[0x277D12388]);
    }

    v43 = v42;

    [v43 addFailureRecord:v38];
    [v5 setMedicalRecordPropertyValue:v43 forKey:v39];

    v35 = 0;
  }

  v44 = *MEMORY[0x277D85DE8];
  return v35;
}

- (id)_unknownMedicalRecordWithClinicalItem:(id)a3 ruleset:(id)a4 error:(id *)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 medicalRecordPropertyValueForKey:*MEMORY[0x277D122E8] expectedClass:objc_opt_class() isArray:0 error:0];
  v40 = v7;
  [v7 rulesetForClinicalType:{objc_msgSend(v6, "type")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v38 = v47 = 0u;
  v9 = [v38 displayNameKeyPaths];
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v45;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v44 + 1) + 8 * v13);
        v43 = 0;
        v15 = [v6 candidateValueForKeyPath:v14 error:&v43];
        v16 = v43;
        v17 = v16;
        if (v15)
        {
          v18 = 1;
        }

        else
        {
          v18 = v16 == 0;
        }

        if (v18)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            if (v15)
            {
              [v6 setMedicalRecordPropertyValue:v15 forKey:@"displayName"];
            }

            goto LABEL_23;
          }
        }

        else
        {
          _HKInitializeLogging();
          v19 = *MEMORY[0x277CCC2C0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v49 = v17;
            _os_log_error_impl(&dword_251CC8000, v19, OS_LOG_TYPE_ERROR, "ConstructMedicalRecordsTask unknown medical record display name extraction error %{public}@", buf, 0xCu);
          }

          v21 = [MEMORY[0x277D12390] extractionFailureRecordWithCode:4 propertyName:@"displayName" resourceKeyPath:v14];
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x277D12388]);
          }

          [v8 addFailureRecord:v21];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_23:
  v42 = 0;
  v22 = [v6 medicalRecordPropertyValueForKey:@"enteredInError" expectedClass:objc_opt_class() isArray:0 error:&v42];
  v23 = v42;
  v24 = v23;
  if (!v22)
  {
    if (v23)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
      {
        [HDHealthRecordConstructMedicalRecordsTask _unknownMedicalRecordWithClinicalItem:ruleset:error:];
      }
    }

    v25 = [v6 representedResource];
    v26 = [v25 JSONObject];

    v41 = v24;
    v27 = [HDHealthRecordsExtractionUtilities wasEnteredInError:v26 error:&v41];
    v28 = v41;

    if (!v27)
    {
      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
      {
        [HDHealthRecordConstructMedicalRecordsTask _unknownMedicalRecordWithClinicalItem:v29 ruleset:? error:?];
      }

      v27 = &unk_28641A290;
    }

    [v6 setMedicalRecordPropertyValue:v27 forKey:@"enteredInError"];

    v24 = v28;
  }

  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v8)
  {
    v31 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v8 encodeWithCoder:v31];
    v32 = [v31 encodedData];
    if (v32)
    {
      [v30 setObject:v32 forKeyedSubscript:*MEMORY[0x277CCDFF0]];
    }
  }

  if ([v30 count])
  {
    v33 = v30;
  }

  else
  {
    v33 = 0;
  }

  [v6 assignMedicalRecordMetadata:v33];
  _HKInitializeLogging();
  v34 = *MEMORY[0x277CCC2C0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
  {
    [HDHealthRecordConstructMedicalRecordsTask _unknownMedicalRecordWithClinicalItem:v34 ruleset:v6 error:?];
  }

  v35 = [MEMORY[0x277CCDAC8] medicalRecordFromClinicalItem:v6 error:a5];

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)_medicalRecordWithClinicalItem:(id)a3 clinicalType:(int64_t)a4 ruleset:(id)a5 error:(id *)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v47 = 0;
  v11 = [objc_msgSend(v9 "medicalRecordClass")];
  v12 = v47;
  if (v11)
  {
    v13 = v11;
    goto LABEL_26;
  }

  v40 = v10;
  v36 = *MEMORY[0x277D122E8];
  v14 = [v9 medicalRecordPropertyValueForKey:*MEMORY[0x277D122E8] expectedClass:objc_opt_class() isArray:0 error:0];
  v15 = v14;
  v41 = v9;
  v38 = self;
  v39 = a6;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x277D12388]);
  }

  v17 = v16;

  v37 = v12;
  v18 = [v12 userInfo];
  v19 = [v18 objectForKeyedSubscript:@"conversionErrors"];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v19;
  v20 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v44;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v44 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v43 + 1) + 8 * i);
        v25 = [v24 userInfo];
        v26 = [v25 objectForKeyedSubscript:@"propertyName"];

        v27 = @"UnknownPropertyName";
        if (v26)
        {
          v27 = v26;
        }

        v28 = v27;

        v29 = [v24 domain];
        v30 = [v29 isEqualToString:@"HDHealthRecordsServiceErrorDomain"];

        if (v30)
        {
          if ([v24 code] == 204)
          {
            v31 = 6;
            goto LABEL_23;
          }

          if ([v24 code] == 202)
          {
            v31 = 8;
            goto LABEL_23;
          }

          if ([v24 code] == 203)
          {
            v31 = 9;
            goto LABEL_23;
          }

          _HKInitializeLogging();
          v32 = *MEMORY[0x277CCC2C0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v49 = v24;
            _os_log_error_impl(&dword_251CC8000, v32, OS_LOG_TYPE_ERROR, "ConstructMedicalRecordsTask medical record creation, unexpected error %{public}@", buf, 0xCu);
          }
        }

        v31 = 1;
LABEL_23:
        v33 = [MEMORY[0x277D12390] extractionFailureRecordWithCode:v31 propertyName:v28 resourceKeyPath:0];
        [v17 addFailureRecord:v33];
      }

      v21 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v21);
  }

  v9 = v41;
  [v41 setMedicalRecordPropertyValue:v17 forKey:v36];
  v10 = v40;
  v13 = [(HDHealthRecordConstructMedicalRecordsTask *)v38 _unknownMedicalRecordWithClinicalItem:v41 ruleset:v40 error:v39];

  v12 = v37;
  v11 = 0;
LABEL_26:

  v34 = *MEMORY[0x277D85DE8];

  return v13;
}

@end