@interface _HDMedicalRecordEntityEncoder
+ (void)_resetConceptIndexDueToError:(void *)error profile:;
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (_HDMedicalRecordEntityEncoder)initWithHealthEntityClass:(Class)class profile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)orderedProperties;
@end

@implementation _HDMedicalRecordEntityEncoder

- (_HDMedicalRecordEntityEncoder)initWithHealthEntityClass:(Class)class profile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  optionsCopy = options;
  v18.receiver = self;
  v18.super_class = _HDMedicalRecordEntityEncoder;
  v15 = [(HDEntityEncoder *)&v18 initWithHealthEntityClass:class profile:profile transaction:transaction purpose:purpose encodingOptions:optionsCopy authorizationFilter:filter];
  if (v15)
  {
    v16 = [optionsCopy objectForKeyedSubscript:@"SkipApplyingConceptIndex"];
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
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCD5F8]) _init];

  return _init;
}

- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v72 = *MEMORY[0x277D85DE8];
  v9 = [(_HDMedicalRecordEntityEncoder *)self createBareObjectWithRow:row];
  if ([(_HDMedicalRecordEntityEncoder *)self applyPropertiesToObject:v9 persistentID:d row:row error:error])
  {
    if (self->_skipApplyingConceptIndex)
    {
LABEL_36:
      v35 = v9;
      goto LABEL_45;
    }

    profile = [(HDEntityEncoder *)self profile];
    v50 = 0;
    v11 = v9;
    v12 = profile;
    v13 = objc_opt_self();
    v49 = v11;
    uUID = [v11 UUID];
    v15 = [HDConceptIndexEntity conceptIndexEntriesForSampleUUID:uUID type:0 profile:v12 error:&v50];

    if (v15)
    {
      internalContentDatabaseManager = [v12 internalContentDatabaseManager];
      if (![v15 count] || internalContentDatabaseManager)
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
            internalContentDatabaseManager2 = [v12 internalContentDatabaseManager];
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
            LOBYTE(v18) = [internalContentDatabaseManager2 performTransactionWithError:&v61 transactionHandler:v55];
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
      dCopy = d;
      v70 = 2114;
      v71 = v34;
      _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "Failed to apply concept index to medical record entity with persistent ID %{public}lld: %{public}@", buf, 0x16u);
    }

    v37 = v34;
    v38 = v37;
    if (v37)
    {
      if (error)
      {
        v39 = v37;
        *error = v38;
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

+ (void)_resetConceptIndexDueToError:(void *)error profile:
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  errorCopy = error;
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

  conceptIndexManager = [errorCopy conceptIndexManager];

  [conceptIndexManager resetWithReindex];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  LODWORD(d) = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (d)
  {
    v12 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setNote:v12];

    [objectCopy _setEnteredInError:HDSQLiteColumnWithNameAsBoolean()];
    v13 = HDSQLiteColumnWithNameAsDate();
    [objectCopy _setModifiedDate:v13];

    [objectCopy _setExtractionVersion:HDSQLiteColumnWithNameAsInt64()];
    v14 = HDSQLiteColumnWithNameAsString();
    v40 = 0;
    v15 = [MEMORY[0x277CCD3B8] FHIRIdentifierWithString:v14 error:&v40];
    v16 = v40;
    v39 = v16;
    if (v15)
    {
      v17 = [objc_alloc(MEMORY[0x277CCD600]) initWithFHIRIdentifier:v15];
      [objectCopy _setOriginIdentifier:v17];
LABEL_4:

      v18 = HDSQLiteColumnWithNameAsString();
      if (v18)
      {
        v19 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v18];
        [objectCopy _setLocale:v19];
      }

      v20 = HDSQLiteColumnWithNameAsDate();
      v21 = HDSQLiteColumnWithNameAsString();
      v22 = v21;
      if (v20 && v21)
      {
        v23 = [MEMORY[0x277CCD900] semanticDateWithKeyPath:v21 date:v20];
        [objectCopy _setSortDate:v23];
      }

      v24 = HDSQLiteColumnWithNameAsString();
      if (v24)
      {
        [objectCopy _setCountry:v24];
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

      [objectCopy _setState:HDSQLiteColumnWithNameAsInt64()];

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
        if (error)
        {
          v35 = v18;
          v25 = 0;
          *error = v18;
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
      database = [(HDEntityEncoder *)self database];
      v17 = [(HDSQLiteEntity *)v18 UUIDForProperty:@"sync_identifier" database:database];

      if (v17)
      {

        v30 = [objc_alloc(MEMORY[0x277CCD600]) initWithSignedClinicalDataRecordIdentifier:v17];
        [objectCopy _setOriginIdentifier:v30];

        goto LABEL_4;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"There is no original signed clinical data record with persistent id %lld", v28}];
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