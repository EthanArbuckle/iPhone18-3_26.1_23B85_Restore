@interface HDVerifiableClinicalRecordQueryServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
- (HDVerifiableClinicalRecordQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_start;
@end

@implementation HDVerifiableClinicalRecordQueryServer

- (HDVerifiableClinicalRecordQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = HDVerifiableClinicalRecordQueryServer;
  v11 = [(HDQueryServer *)&v17 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    recordTypes = [configurationCopy recordTypes];
    recordTypes = v11->_recordTypes;
    v11->_recordTypes = recordTypes;

    sourceTypes = [configurationCopy sourceTypes];
    sourceTypes = v11->_sourceTypes;
    v11->_sourceTypes = sourceTypes;
  }

  return v11;
}

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  configurationCopy = configuration;
  entitlements = [client entitlements];
  v9 = *MEMORY[0x277CCC1A0];
  v10 = [entitlements hasAccessEntitlementWithIdentifier:*MEMORY[0x277CCC1A0]];

  if ((v10 & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:4 format:{@"Missing required entitlement identifier: %@", v9}];
    LOBYTE(v12) = 0;
    goto LABEL_11;
  }

  recordTypes = [configurationCopy recordTypes];
  v12 = [recordTypes count];

  if (!v12)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = @"recordTypes must contain at least one type";
LABEL_10:
    [v19 hk_assignError:error code:3 description:v20];
    goto LABEL_11;
  }

  sourceTypes = [configurationCopy sourceTypes];
  v12 = [sourceTypes count];

  if (!v12)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = @"sourceTypes must contain at least one type";
    goto LABEL_10;
  }

  v14 = MEMORY[0x277CBEB58];
  recordTypes2 = [configurationCopy recordTypes];
  v16 = [v14 setWithArray:recordTypes2];

  v17 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCCEA0], *MEMORY[0x277CCCEA8], *MEMORY[0x277CCCEB0], 0}];
  v12 = [v16 hk_intersection:v17];
  v18 = [v12 count];

  LOBYTE(v12) = v18 == 1;
  if (v18 != 1)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"recordTypes must contain exactly one clinical type"];
  }

LABEL_11:
  return v12;
}

uint64_t __78__HDVerifiableClinicalRecordQueryServer__samplesBeforeAuthorizationWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:*(*(a1 + 32) + 208)];
    v9 = MEMORY[0x277CBEB98];
    v10 = [v6 recordTypes];
    v11 = [v9 setWithArray:v10];
    v12 = [v8 isSubsetOfSet:v11];

    v13 = *(*(a1 + 32) + 216);
    v14 = [v6 sourceType];
    v15 = [v13 containsObject:v14];

    if (v12)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:100 format:{@"Expected HKVerifiableClinicalRecord but got %@", objc_opt_class()}];
  }

  return isKindOfClass & 1;
}

- (void)_queue_start
{
  v40[1] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = HDVerifiableClinicalRecordQueryServer;
  [(HDQueryServer *)&v32 _queue_start];
  clientProxy = [(HDQueryServer *)self clientProxy];
  v31 = 0;
  if (self)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__133;
    v38 = __Block_byref_object_dispose__133;
    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    verifiableClinicalRecordType = [MEMORY[0x277CCDBC0] verifiableClinicalRecordType];
    profile = [(HDQueryServer *)self profile];
    v6 = [HDSampleEntity entityEnumeratorWithType:verifiableClinicalRecordType profile:profile];

    filter = [(HDQueryServer *)self filter];
    profile2 = [(HDQueryServer *)self profile];
    v9 = [filter predicateWithProfile:profile2];
    [v6 setPredicate:v9];

    v10 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"relevant_date" entityClass:objc_opt_class() ascending:0];
    v40[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    [v6 setOrderingTerms:v11];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __78__HDVerifiableClinicalRecordQueryServer__samplesBeforeAuthorizationWithError___block_invoke;
    v33[3] = &unk_2786136F0;
    v33[4] = self;
    v33[5] = &v34;
    if ([v6 enumerateWithError:&v31 handler:v33])
    {
      v12 = v35[5];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    _Block_object_dispose(&v34, 8);
    v14 = v31;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = v14;
  v16 = MEMORY[0x277CBEBF8];
  if (v13)
  {
    v16 = v13;
  }

  v17 = v16;

  if (v15)
  {
    queryUUID = [(HDQueryServer *)self queryUUID];
    [clientProxy client_deliverError:v15 forQuery:queryUUID];
  }

  else
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __53__HDVerifiableClinicalRecordQueryServer__queue_start__block_invoke;
    v28[3] = &unk_278625AC8;
    v29 = clientProxy;
    selfCopy = self;
    if (self)
    {
      v19 = MEMORY[0x277CCD708];
      v20 = v28;
      v21 = v17;
      v22 = [v19 alloc];
      verifiableClinicalRecordType2 = [MEMORY[0x277CCDBC0] verifiableClinicalRecordType];
      v24 = [v22 initWithExpectedObjectType:verifiableClinicalRecordType2];

      [v24 setRecordTypes:self->_recordTypes];
      v25 = [[HDObjectAuthorizationRequestContext alloc] initWithSamples:v21 metadata:v24];

      [(HDObjectAuthorizationRequestContext *)v25 setPersistSession:1];
      [(HDObjectAuthorizationRequestContext *)v25 setPromptWithNoSamples:1];
      delegate = [(HDQueryServer *)self delegate];
      [delegate queryServer:self requestsAuthorizationWithContext:v25 completion:v20];
    }

    queryUUID = 0;
    v15 = v29;
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __53__HDVerifiableClinicalRecordQueryServer__queue_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) queryUUID];
  if (v8)
  {
    [v6 client_deliverVerifiableClinicalRecords:v8 queryUUID:v7];
  }

  else
  {
    [v6 client_deliverError:v5 forQuery:v7];
  }
}

@end