@interface HDHealthRecordProcessingContext
- (BOOL)didProcessClinicalRecord:(id)record forMedicalRecord:(id)medicalRecord error:(id *)error;
- (BOOL)didProcessMedicalRecord:(id)record forResource:(id)resource error:(id *)error;
- (BOOL)foundResource:(id)resource parentResource:(id)parentResource error:(id *)error;
- (HDHealthRecordProcessingContext)initWithRuleset:(id)ruleset resources:(id)resources;
- (NSArray)resources;
- (id)createExtractionResultWithError:(id *)error;
- (id)extractedClinicalItemsForClinicalType:(int64_t)type;
- (void)setExtractedClinicalItems:(id)items forClinicalType:(int64_t)type;
@end

@implementation HDHealthRecordProcessingContext

- (HDHealthRecordProcessingContext)initWithRuleset:(id)ruleset resources:(id)resources
{
  rulesetCopy = ruleset;
  resourcesCopy = resources;
  v9 = resourcesCopy;
  if (rulesetCopy)
  {
    if (resourcesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HDHealthRecordProcessingContext initWithRuleset:resources:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [HDHealthRecordProcessingContext initWithRuleset:resources:];
LABEL_3:
  v23.receiver = self;
  v23.super_class = HDHealthRecordProcessingContext;
  v10 = [(HDHealthRecordProcessingContext *)&v23 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_extractionRuleset, ruleset);
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v9];
    mutableResources = v11->_mutableResources;
    v11->_mutableResources = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    parentResourcesByResource = v11->_parentResourcesByResource;
    v11->_parentResourcesByResource = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clinicalItemsByType = v11->_clinicalItemsByType;
    v11->_clinicalItemsByType = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    medicalRecordsByOriginalResource = v11->_medicalRecordsByOriginalResource;
    v11->_medicalRecordsByOriginalResource = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clinicalRecordsByMedicalRecord = v11->_clinicalRecordsByMedicalRecord;
    v11->_clinicalRecordsByMedicalRecord = v20;
  }

  return v11;
}

- (id)createExtractionResultWithError:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_medicalRecordsByOriginalResource;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_medicalRecordsByOriginalResource objectForKeyedSubscript:v9];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __67__HDHealthRecordProcessingContext_createExtractionResultWithError___block_invoke;
        v17[3] = &unk_2796E2928;
        v17[4] = self;
        v11 = [v10 hk_map:v17];
        v12 = [objc_alloc(MEMORY[0x277D12360]) initWithOriginalFHIRResource:v9 units:v11 flags:0];
        [v4 addObject:v12];
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v13 = [objc_alloc(MEMORY[0x277D12358]) initWithItems:v4];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id __67__HDHealthRecordProcessingContext_createExtractionResultWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D12368];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:v4];
  v7 = [v5 initWithMedicalRecord:v4 clinicalRecord:v6 downloadableAttachments:0];

  return v7;
}

- (BOOL)foundResource:(id)resource parentResource:(id)parentResource error:(id *)error
{
  resourceCopy = resource;
  parentResourceCopy = parentResource;
  v10 = parentResourceCopy;
  if (resourceCopy)
  {
    if (parentResourceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HDHealthRecordProcessingContext foundResource:parentResource:error:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [HDHealthRecordProcessingContext foundResource:parentResource:error:];
LABEL_3:
  if ([resourceCopy isEqual:v10])
  {
    [HDHealthRecordProcessingContext foundResource:parentResource:error:];
  }

  fHIRVersion = [resourceCopy FHIRVersion];
  fHIRRelease = [fHIRVersion FHIRRelease];

  fHIRRelease2 = [(HDHealthRecordRuleset *)self->_extractionRuleset FHIRRelease];

  if (fHIRRelease == fHIRRelease2)
  {
    [(NSMutableArray *)self->_mutableResources addObject:resourceCopy];
    [(NSMutableDictionary *)self->_parentResourcesByResource setObject:v10 forKeyedSubscript:resourceCopy];
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    fHIRRelease3 = [(HDHealthRecordRuleset *)self->_extractionRuleset FHIRRelease];
    [v14 hk_assignError:error code:3 format:{@"Cannot add resource from release %@ to a processing context associated with release %@", fHIRRelease, fHIRRelease3}];
  }

  return fHIRRelease == fHIRRelease2;
}

- (NSArray)resources
{
  v2 = [(NSMutableArray *)self->_mutableResources copy];

  return v2;
}

- (id)extractedClinicalItemsForClinicalType:(int64_t)type
{
  clinicalItemsByType = self->_clinicalItemsByType;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v5 = [(NSMutableDictionary *)clinicalItemsByType objectForKeyedSubscript:v4];

  return v5;
}

- (void)setExtractedClinicalItems:(id)items forClinicalType:(int64_t)type
{
  v8 = [items copy];
  clinicalItemsByType = self->_clinicalItemsByType;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [(NSMutableDictionary *)clinicalItemsByType setObject:v8 forKeyedSubscript:v7];
}

- (BOOL)didProcessClinicalRecord:(id)record forMedicalRecord:(id)medicalRecord error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  medicalRecordCopy = medicalRecord;
  if (!recordCopy)
  {
    [HDHealthRecordProcessingContext didProcessClinicalRecord:forMedicalRecord:error:];
  }

  if (!medicalRecordCopy)
  {
    [HDHealthRecordProcessingContext didProcessClinicalRecord:forMedicalRecord:error:];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = self->_medicalRecordsByOriginalResource;
  v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(NSMutableDictionary *)self->_medicalRecordsByOriginalResource objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __83__HDHealthRecordProcessingContext_didProcessClinicalRecord_forMedicalRecord_error___block_invoke;
        v22[3] = &unk_2796E2950;
        v15 = medicalRecordCopy;
        v23 = v15;
        fHIRIdentifier = [v14 hk_firstObjectPassingTest:v22];

        if (fHIRIdentifier)
        {

          [(NSMutableDictionary *)self->_clinicalRecordsByMedicalRecord setObject:recordCopy forKeyedSubscript:v15];
          v18 = 1;
          goto LABEL_15;
        }
      }

      v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = MEMORY[0x277CCA9B8];
  fHIRIdentifier = [medicalRecordCopy FHIRIdentifier];
  [v17 hk_assignError:error code:3 format:{@"cannot accept a clinical record without a matching medical record, %@ is unknown to us", fHIRIdentifier}];
  v18 = 0;
LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)didProcessMedicalRecord:(id)record forResource:(id)resource error:(id *)error
{
  recordCopy = record;
  resourceCopy = resource;
  v9 = resourceCopy;
  if (recordCopy)
  {
    if (resourceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HDHealthRecordProcessingContext didProcessMedicalRecord:forResource:error:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [HDHealthRecordProcessingContext didProcessMedicalRecord:forResource:error:];
LABEL_3:
  v10 = [(NSMutableDictionary *)self->_parentResourcesByResource objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12;

  v14 = [(NSMutableDictionary *)self->_medicalRecordsByOriginalResource objectForKeyedSubscript:v13];
  if (v14)
  {
    v15 = v14;
    [v14 addObject:recordCopy];
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{recordCopy, 0}];
    [(NSMutableDictionary *)self->_medicalRecordsByOriginalResource setObject:v15 forKeyedSubscript:v13];
  }

  return 1;
}

@end