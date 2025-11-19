@interface HDHealthRecordClinicalItem
- (HDHealthRecordClinicalItem)initWithRepresentedResource:(id)a3 clinicalType:(id)a4 rulesVersion:(id)a5;
- (id)_medicalRecordPropertyArrayFromKey:(id)a3 expectedClass:(Class)a4 error:(id *)a5;
- (id)_medicalRecordPropertyFromKey:(id)a3 expectedClass:(Class)a4 error:(id *)a5;
- (id)correspondingClinicalTypeWithError:(id *)a3;
- (id)medicalRecordPropertyValueForKey:(id)a3 expectedClass:(Class)a4 isArray:(BOOL)a5 error:(id *)a6;
- (void)assignExtractedMedicalRecord:(id)a3;
@end

@implementation HDHealthRecordClinicalItem

- (HDHealthRecordClinicalItem)initWithRepresentedResource:(id)a3 clinicalType:(id)a4 rulesVersion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v27.receiver = self;
  v27.super_class = HDHealthRecordClinicalItem;
  v12 = [(HDHealthRecordClinicalItem *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_representedResource, a3);
    v14 = [v9 JSONObject];
    v15 = [v14 copy];
    originalAttributes = v13->_originalAttributes;
    v13->_originalAttributes = v15;

    v17 = [v10 copy];
    clinicalType = v13->_clinicalType;
    v13->_clinicalType = v17;

    v19 = [v11 copy];
    rulesVersion = v13->_rulesVersion;
    v13->_rulesVersion = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    medicalRecordProperties = v13->_medicalRecordProperties;
    v13->_medicalRecordProperties = v21;

    v23 = [v9 country];
    v24 = [v23 copy];
    country = v13->_country;
    v13->_country = v24;
  }

  return v13;
}

- (id)correspondingClinicalTypeWithError:(id *)a3
{
  if (!self->_extractedMedicalRecord)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 description:@"can only determine corresponding clinical types after medical record extraction has produced a medical record"];
    v6 = 0;
    goto LABEL_21;
  }

  v5 = [(HDHealthRecordClinicalType *)self->_clinicalType type];
  v6 = 0;
  if (v5 <= 4)
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          goto LABEL_21;
        }

        v7 = [MEMORY[0x277CCD118] clinicalNoteRecordType];
      }

      else
      {
        v7 = [MEMORY[0x277CCD118] allergyRecordType];
      }
    }

    else if (v5 == 2)
    {
      v7 = [MEMORY[0x277CCD118] conditionRecordType];
    }

    else
    {
      if (v5 == 3)
      {
        [MEMORY[0x277CCD118] coverageRecordType];
      }

      else
      {
        [MEMORY[0x277CCD118] immunizationRecordType];
      }
      v7 = ;
    }

    goto LABEL_20;
  }

  if ((v5 - 5) < 3)
  {
    v7 = [MEMORY[0x277CCD118] medicationRecordType];
LABEL_20:
    v6 = v7;
    goto LABEL_21;
  }

  if (v5 != 8)
  {
    if (v5 != 11)
    {
      goto LABEL_21;
    }

    v7 = [MEMORY[0x277CCD118] procedureRecordType];
    goto LABEL_20;
  }

  extractedMedicalRecord = self->_extractedMedicalRecord;
  objc_opt_class();
  v10 = HKSafeObject();
  v11 = 0;
  v12 = v11;
  if (!v10)
  {
    v14 = v11;
    if (v14)
    {
      if (a3)
      {
        v18 = v14;
        v6 = 0;
        *a3 = v14;
        goto LABEL_34;
      }

      _HKLogDroppedError();
    }

LABEL_33:
    v6 = 0;
    goto LABEL_34;
  }

  v13 = [v10 category];
  v14 = HKDiagnosticTestResultCategoryFromNSString();

  if (!v14 || (HKClinicalTypeForDiagnosticTestResultCategory(), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = [v10 category];
    [v16 hk_assignError:a3 code:3 format:{@"unsupported Observation category: %@", v17}];

    goto LABEL_33;
  }

  v6 = v15;
LABEL_34:

LABEL_21:

  return v6;
}

- (void)assignExtractedMedicalRecord:(id)a3
{
  v4 = a3;
  if (self->_extractedMedicalRecord)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      [HDHealthRecordClinicalItem assignExtractedMedicalRecord:v5];
    }
  }

  [(HDHealthRecordClinicalItem *)self setExtractedMedicalRecord:v4];
}

- (id)_medicalRecordPropertyFromKey:(id)a3 expectedClass:(Class)a4 error:(id *)a5
{
  v21[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(NSMutableDictionary *)self->_medicalRecordProperties objectForKeyedSubscript:v8];
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      goto LABEL_10;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected %@ but found %@", a4, objc_opt_class()];
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v20[0] = @"propertyName";
    v20[1] = v13;
    v21[0] = v8;
    v21[1] = v11;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v15 = [v12 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:202 userInfo:v14];

    v16 = v15;
    if (v16)
    {
      if (a5)
      {
        v17 = v16;
        *a5 = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v10 = 0;
LABEL_10:

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_medicalRecordPropertyArrayFromKey:(id)a3 expectedClass:(Class)a4 error:(id *)a5
{
  v40[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(NSMutableDictionary *)self->_medicalRecordProperties objectForKeyedSubscript:v8];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      if ([v10 count])
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v32 objects:v38 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v33;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v33 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v32 + 1) + 8 * i);
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"array contents expected %@ but found %@", a4, objc_opt_class(), v32];
                v24 = MEMORY[0x277CCA9B8];
                v25 = *MEMORY[0x277CCA450];
                v36[0] = @"propertyName";
                v36[1] = v25;
                v37[0] = v8;
                v37[1] = v23;
                v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
                v27 = [v24 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:203 userInfo:v26];

                v28 = v27;
                if (v28)
                {
                  if (a5)
                  {
                    v29 = v28;
                    *a5 = v28;
                  }

                  else
                  {
                    _HKLogDroppedError();
                  }
                }

                goto LABEL_25;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v32 objects:v38 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v17 = v11;
      }

      else
      {
        v17 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected array but found %@", objc_opt_class()];
      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v39[0] = @"propertyName";
      v39[1] = v19;
      v40[0] = v8;
      v40[1] = v10;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
      v21 = [v18 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:202 userInfo:v20];

      v11 = v21;
      if (v11)
      {
        if (a5)
        {
          v22 = v11;
          *a5 = v11;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

LABEL_25:
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)medicalRecordPropertyValueForKey:(id)a3 expectedClass:(Class)a4 isArray:(BOOL)a5 error:(id *)a6
{
  if (a5)
  {
    [(HDHealthRecordClinicalItem *)self _medicalRecordPropertyArrayFromKey:a3 expectedClass:a4 error:a6];
  }

  else
  {
    [(HDHealthRecordClinicalItem *)self _medicalRecordPropertyFromKey:a3 expectedClass:a4 error:a6];
  }
  v6 = ;

  return v6;
}

@end