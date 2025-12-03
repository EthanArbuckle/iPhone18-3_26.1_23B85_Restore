@interface HDHealthRecordClinicalItem
- (HDHealthRecordClinicalItem)initWithRepresentedResource:(id)resource clinicalType:(id)type rulesVersion:(id)version;
- (id)_medicalRecordPropertyArrayFromKey:(id)key expectedClass:(Class)class error:(id *)error;
- (id)_medicalRecordPropertyFromKey:(id)key expectedClass:(Class)class error:(id *)error;
- (id)correspondingClinicalTypeWithError:(id *)error;
- (id)medicalRecordPropertyValueForKey:(id)key expectedClass:(Class)class isArray:(BOOL)array error:(id *)error;
- (void)assignExtractedMedicalRecord:(id)record;
@end

@implementation HDHealthRecordClinicalItem

- (HDHealthRecordClinicalItem)initWithRepresentedResource:(id)resource clinicalType:(id)type rulesVersion:(id)version
{
  resourceCopy = resource;
  typeCopy = type;
  versionCopy = version;
  v27.receiver = self;
  v27.super_class = HDHealthRecordClinicalItem;
  v12 = [(HDHealthRecordClinicalItem *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_representedResource, resource);
    jSONObject = [resourceCopy JSONObject];
    v15 = [jSONObject copy];
    originalAttributes = v13->_originalAttributes;
    v13->_originalAttributes = v15;

    v17 = [typeCopy copy];
    clinicalType = v13->_clinicalType;
    v13->_clinicalType = v17;

    v19 = [versionCopy copy];
    rulesVersion = v13->_rulesVersion;
    v13->_rulesVersion = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    medicalRecordProperties = v13->_medicalRecordProperties;
    v13->_medicalRecordProperties = v21;

    country = [resourceCopy country];
    v24 = [country copy];
    country = v13->_country;
    v13->_country = v24;
  }

  return v13;
}

- (id)correspondingClinicalTypeWithError:(id *)error
{
  if (!self->_extractedMedicalRecord)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"can only determine corresponding clinical types after medical record extraction has produced a medical record"];
    v6 = 0;
    goto LABEL_21;
  }

  type = [(HDHealthRecordClinicalType *)self->_clinicalType type];
  v6 = 0;
  if (type <= 4)
  {
    if (type <= 1)
    {
      if (type)
      {
        if (type != 1)
        {
          goto LABEL_21;
        }

        clinicalNoteRecordType = [MEMORY[0x277CCD118] clinicalNoteRecordType];
      }

      else
      {
        clinicalNoteRecordType = [MEMORY[0x277CCD118] allergyRecordType];
      }
    }

    else if (type == 2)
    {
      clinicalNoteRecordType = [MEMORY[0x277CCD118] conditionRecordType];
    }

    else
    {
      if (type == 3)
      {
        [MEMORY[0x277CCD118] coverageRecordType];
      }

      else
      {
        [MEMORY[0x277CCD118] immunizationRecordType];
      }
      clinicalNoteRecordType = ;
    }

    goto LABEL_20;
  }

  if ((type - 5) < 3)
  {
    clinicalNoteRecordType = [MEMORY[0x277CCD118] medicationRecordType];
LABEL_20:
    v6 = clinicalNoteRecordType;
    goto LABEL_21;
  }

  if (type != 8)
  {
    if (type != 11)
    {
      goto LABEL_21;
    }

    clinicalNoteRecordType = [MEMORY[0x277CCD118] procedureRecordType];
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
      if (error)
      {
        v18 = v14;
        v6 = 0;
        *error = v14;
        goto LABEL_34;
      }

      _HKLogDroppedError();
    }

LABEL_33:
    v6 = 0;
    goto LABEL_34;
  }

  category = [v10 category];
  v14 = HKDiagnosticTestResultCategoryFromNSString();

  if (!v14 || (HKClinicalTypeForDiagnosticTestResultCategory(), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = MEMORY[0x277CCA9B8];
    category2 = [v10 category];
    [v16 hk_assignError:error code:3 format:{@"unsupported Observation category: %@", category2}];

    goto LABEL_33;
  }

  v6 = v15;
LABEL_34:

LABEL_21:

  return v6;
}

- (void)assignExtractedMedicalRecord:(id)record
{
  recordCopy = record;
  if (self->_extractedMedicalRecord)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      [HDHealthRecordClinicalItem assignExtractedMedicalRecord:v5];
    }
  }

  [(HDHealthRecordClinicalItem *)self setExtractedMedicalRecord:recordCopy];
}

- (id)_medicalRecordPropertyFromKey:(id)key expectedClass:(Class)class error:(id *)error
{
  v21[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v9 = [(NSMutableDictionary *)self->_medicalRecordProperties objectForKeyedSubscript:keyCopy];
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      goto LABEL_10;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected %@ but found %@", class, objc_opt_class()];
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v20[0] = @"propertyName";
    v20[1] = v13;
    v21[0] = keyCopy;
    v21[1] = v11;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v15 = [v12 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:202 userInfo:v14];

    v16 = v15;
    if (v16)
    {
      if (error)
      {
        v17 = v16;
        *error = v16;
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

- (id)_medicalRecordPropertyArrayFromKey:(id)key expectedClass:(Class)class error:(id *)error
{
  v40[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v9 = [(NSMutableDictionary *)self->_medicalRecordProperties objectForKeyedSubscript:keyCopy];
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
                v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"array contents expected %@ but found %@", class, objc_opt_class(), v32];
                v24 = MEMORY[0x277CCA9B8];
                v25 = *MEMORY[0x277CCA450];
                v36[0] = @"propertyName";
                v36[1] = v25;
                v37[0] = keyCopy;
                v37[1] = v23;
                v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
                v27 = [v24 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:203 userInfo:v26];

                v28 = v27;
                if (v28)
                {
                  if (error)
                  {
                    v29 = v28;
                    *error = v28;
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
      v40[0] = keyCopy;
      v40[1] = v10;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
      v21 = [v18 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:202 userInfo:v20];

      v11 = v21;
      if (v11)
      {
        if (error)
        {
          v22 = v11;
          *error = v11;
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

- (id)medicalRecordPropertyValueForKey:(id)key expectedClass:(Class)class isArray:(BOOL)array error:(id *)error
{
  if (array)
  {
    [(HDHealthRecordClinicalItem *)self _medicalRecordPropertyArrayFromKey:key expectedClass:class error:error];
  }

  else
  {
    [(HDHealthRecordClinicalItem *)self _medicalRecordPropertyFromKey:key expectedClass:class error:error];
  }
  v6 = ;

  return v6;
}

@end