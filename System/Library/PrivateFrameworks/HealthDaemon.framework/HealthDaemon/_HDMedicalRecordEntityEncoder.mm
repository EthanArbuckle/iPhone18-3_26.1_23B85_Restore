@interface _HDMedicalRecordEntityEncoder
+ (void)_resetConceptIndexDueToError:(void *)a3 profile:;
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (_HDMedicalRecordEntityEncoder)initWithHealthEntityClass:(Class)a3 profile:(id)a4 transaction:(id)a5 purpose:(int64_t)a6 encodingOptions:(id)a7 authorizationFilter:(id)a8;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)orderedProperties;
@end

@implementation _HDMedicalRecordEntityEncoder

- (_HDMedicalRecordEntityEncoder)initWithHealthEntityClass:(Class)a3 profile:(id)a4 transaction:(id)a5 purpose:(int64_t)a6 encodingOptions:(id)a7 authorizationFilter:(id)a8
{
  v14 = a7;
  v18.receiver = self;
  v18.super_class = _HDMedicalRecordEntityEncoder;
  v15 = [(HDEntityEncoder *)&v18 initWithHealthEntityClass:a3 profile:a4 transaction:a5 purpose:a6 encodingOptions:v14 authorizationFilter:a8];
  if (v15)
  {
    v16 = [v14 objectForKeyedSubscript:@"SkipApplyingConceptIndex"];
    v15->_skipApplyingConceptIndex = [v16 BOOLValue];
  }

  return v15;
}

- (id)orderedProperties
{
  v9[12] = *MEMORY[0x277D85DE8];
  v9[0] = @"note";
  v9[1] = @"entered_in_error";
  v9[2] = @"modified_date";
  v9[3] = @"fhir_identifier";
  v9[4] = @"original_fhir_resource_rowid";
  v9[5] = @"original_signed_clinical_data_rowid";
  v9[6] = @"locale";
  v9[7] = @"extraction_version";
  v9[8] = @"sort_date";
  v9[9] = @"sort_date_key_path";
  v9[10] = @"country";
  v9[11] = @"state";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:12];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD5F8]) _init];

  return v3;
}

- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v72 = *MEMORY[0x277D85DE8];
  v9 = [(_HDMedicalRecordEntityEncoder *)self createBareObjectWithRow:a4];
  if ([(_HDMedicalRecordEntityEncoder *)self applyPropertiesToObject:v9 persistentID:a3 row:a4 error:a5])
  {
    if (self->_skipApplyingConceptIndex)
    {
LABEL_36:
      v35 = v9;
      goto LABEL_45;
    }

    v10 = [(HDEntityEncoder *)self profile];
    v50 = 0;
    v11 = v9;
    v12 = v10;
    v13 = objc_opt_self();
    v49 = v11;
    v14 = [v11 UUID];
    v15 = [HDConceptIndexEntity conceptIndexEntriesForSampleUUID:v14 type:0 profile:v12 error:&v50];

    if (v15)
    {
      v48 = [v12 internalContentDatabaseManager];
      if (![v15 count] || v48)
      {
        if ([v15 count])
        {
          v47 = [v15 hk_mapToSet:&__block_literal_global_174];
          if ([v47 count] == 1)
          {
            obja = [v47 anyObject];
            v17 = MEMORY[0x277CBEB98];
            v18 = [v15 hk_map:&__block_literal_global_460];
            v19 = [v17 setWithArray:v18];

            v62 = 0;
            v63 = &v62;
            v64 = 0x3032000000;
            v65 = __Block_byref_object_copy__142;
            v66 = __Block_byref_object_dispose__142;
            v67 = 0;
            v20 = [v12 internalContentDatabaseManager];
            v60 = v13;
            v61 = 0;
            v55[0] = MEMORY[0x277D85DD0];
            v55[1] = 3221225472;
            v55[2] = __74___HDMedicalRecordEntityEncoder__applyConceptIndexToObject_profile_error___block_invoke_3;
            v55[3] = &unk_278626C80;
            v59 = &v62;
            v56 = v15;
            v42 = v19;
            v57 = v42;
            v44 = obja;
            v58 = v44;
            LOBYTE(v18) = [v20 performTransactionWithError:&v61 transactionHandler:v55];
            v43 = v61;

            if (v18)
            {
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              obj = v63[5];
              v21 = [obj countByEnumeratingWithState:&v51 objects:buf count:16];
              if (v21)
              {
                v22 = *v52;
LABEL_13:
                v23 = 0;
                while (1)
                {
                  if (*v52 != v22)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v24 = *(*(&v51 + 1) + 8 * v23);
                  v25 = [v63[5] objectForKeyedSubscript:{v24, v42}];
                  v16 = [v49 applyConcepts:v25 forKeyPath:v24 error:&v50];

                  if (!v16)
                  {
                    break;
                  }

                  if (v21 == ++v23)
                  {
                    v21 = [obj countByEnumeratingWithState:&v51 objects:buf count:16];
                    LOBYTE(v16) = 1;
                    if (v21)
                    {
                      goto LABEL_13;
                    }

                    break;
                  }
                }
              }

              else
              {
                LOBYTE(v16) = 1;
              }

              v33 = obj;
            }

            else
            {
              if ([v43 hk_isHealthKitErrorWithCode:1001])
              {
                [(_HDMedicalRecordEntityEncoder *)v13 _resetConceptIndexDueToError:v43 profile:v12];
              }

              v30 = v43;
              if (v30)
              {
                v31 = v30;
                v32 = v30;
                LOBYTE(v16) = 0;
                v33 = v31;
                v50 = v31;
              }

              else
              {
                v33 = 0;
                LOBYTE(v16) = 0;
              }
            }

            _Block_object_dispose(&v62, 8);
            v27 = v42;
          }

          else
          {
            v26 = [MEMORY[0x277CCA9B8] hk_error:1001 format:@"Concept index spans multiple ontology versions."];
            [(_HDMedicalRecordEntityEncoder *)v13 _resetConceptIndexDueToError:v26 profile:v12];
            v27 = v26;
            if (v27)
            {
              v28 = v27;
              v29 = v27;
              LOBYTE(v16) = 0;
              v27 = v28;
              v50 = v28;
              v44 = v28;
            }

            else
            {
              LOBYTE(v16) = 0;
              v44 = 0;
            }
          }
        }

        else
        {
          LOBYTE(v16) = 1;
        }
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:&v50 code:3 format:@"Unable to lookup concepts without a ContentDatabaseManager"];
        LOBYTE(v16) = 0;
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }

    v34 = v50;
    if (v16)
    {

      goto LABEL_36;
    }

    _HKInitializeLogging();
    v36 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      *buf = 134349314;
      v69 = a3;
      v70 = 2114;
      v71 = v34;
      _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "Failed to apply concept index to medical record entity with persistent ID %{public}lld: %{public}@", buf, 0x16u);
    }

    v37 = v34;
    v38 = v37;
    if (v37)
    {
      if (a5)
      {
        v39 = v37;
        *a5 = v38;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v35 = 0;
LABEL_45:

  v40 = *MEMORY[0x277D85DE8];

  return v35;
}

+ (void)_resetConceptIndexDueToError:(void *)a3 profile:
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  _HKInitializeLogging();
  v6 = HKLogHealthOntology();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = HKSensitiveLogItem();
    v10 = 138543362;
    v11 = v9;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Resetting concept index due to error %{public}@", &v10, 0xCu);
  }

  v7 = [v5 conceptIndexManager];

  [v7 resetWithReindex];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  LODWORD(a4) = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (a4)
  {
    v12 = HDSQLiteColumnWithNameAsString();
    [v10 _setNote:v12];

    [v10 _setEnteredInError:HDSQLiteColumnWithNameAsBoolean()];
    v13 = HDSQLiteColumnWithNameAsDate();
    [v10 _setModifiedDate:v13];

    [v10 _setExtractionVersion:HDSQLiteColumnWithNameAsInt64()];
    v14 = HDSQLiteColumnWithNameAsString();
    v40 = 0;
    v15 = [MEMORY[0x277CCD3B8] FHIRIdentifierWithString:v14 error:&v40];
    v16 = v40;
    v39 = v16;
    if (v15)
    {
      v17 = [objc_alloc(MEMORY[0x277CCD600]) initWithFHIRIdentifier:v15];
      [v10 _setOriginIdentifier:v17];
LABEL_4:

      v18 = HDSQLiteColumnWithNameAsString();
      if (v18)
      {
        v19 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v18];
        [v10 _setLocale:v19];
      }

      v20 = HDSQLiteColumnWithNameAsDate();
      v21 = HDSQLiteColumnWithNameAsString();
      v22 = v21;
      if (v20 && v21)
      {
        v23 = [MEMORY[0x277CCD900] semanticDateWithKeyPath:v21 date:v20];
        [v10 _setSortDate:v23];
      }

      v24 = HDSQLiteColumnWithNameAsString();
      if (v24)
      {
        [v10 _setCountry:v24];
      }

      else
      {
        _HKInitializeLogging();
        v31 = *MEMORY[0x277CCC2C0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "Attempting to apply properties to HDMedicalRecord, but country was nil", buf, 2u);
        }
      }

      [v10 _setState:HDSQLiteColumnWithNameAsInt64()];

      v25 = 1;
      goto LABEL_18;
    }

    v26 = v16;
    v27 = HDSQLiteColumnWithNameAsInt64();
    if (v27 < 1)
    {
      _HKInitializeLogging();
      v34 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
      {
        v36 = v34;
        v37 = objc_opt_class();
        *buf = 138543618;
        v42 = v37;
        v43 = 2114;
        v44 = v26;
        v38 = v37;
        _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "%{public}@ invalid origin identifier, error: %{public}@", buf, 0x16u);
      }

      v18 = v26;
      if (v18)
      {
        if (a6)
        {
          v35 = v18;
          v25 = 0;
          *a6 = v18;
LABEL_18:

          goto LABEL_19;
        }

        _HKLogDroppedError();
      }
    }

    else
    {
      v28 = v27;
      v18 = [(HDSQLiteEntity *)[HDOriginalSignedClinicalDataRecordEntity alloc] initWithPersistentID:v27];
      v29 = [(HDEntityEncoder *)self database];
      v17 = [(HDSQLiteEntity *)v18 UUIDForProperty:@"sync_identifier" database:v29];

      if (v17)
      {

        v30 = [objc_alloc(MEMORY[0x277CCD600]) initWithSignedClinicalDataRecordIdentifier:v17];
        [v10 _setOriginIdentifier:v30];

        goto LABEL_4;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:a6 code:100 format:{@"There is no original signed clinical data record with persistent id %lld", v28}];
    }

    v25 = 0;
    goto LABEL_18;
  }

  v25 = 0;
LABEL_19:

  v32 = *MEMORY[0x277D85DE8];
  return v25;
}

@end