@interface HDVerifiableClinicalRecordQueryServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
- (HDVerifiableClinicalRecordQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_start;
@end

@implementation HDVerifiableClinicalRecordQueryServer

- (HDVerifiableClinicalRecordQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v17.receiver = self;
  v17.super_class = HDVerifiableClinicalRecordQueryServer;
  v11 = [(HDQueryServer *)&v17 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = [v10 recordTypes];
    recordTypes = v11->_recordTypes;
    v11->_recordTypes = v12;

    v14 = [v10 sourceTypes];
    sourceTypes = v11->_sourceTypes;
    v11->_sourceTypes = v14;
  }

  return v11;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [a4 entitlements];
  v9 = *MEMORY[0x277CCC1A0];
  v10 = [v8 hasAccessEntitlementWithIdentifier:*MEMORY[0x277CCC1A0]];

  if ((v10 & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:4 format:{@"Missing required entitlement identifier: %@", v9}];
    LOBYTE(v12) = 0;
    goto LABEL_11;
  }

  v11 = [v7 recordTypes];
  v12 = [v11 count];

  if (!v12)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = @"recordTypes must contain at least one type";
LABEL_10:
    [v19 hk_assignError:a5 code:3 description:v20];
    goto LABEL_11;
  }

  v13 = [v7 sourceTypes];
  v12 = [v13 count];

  if (!v12)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = @"sourceTypes must contain at least one type";
    goto LABEL_10;
  }

  v14 = MEMORY[0x277CBEB58];
  v15 = [v7 recordTypes];
  v16 = [v14 setWithArray:v15];

  v17 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCCEA0], *MEMORY[0x277CCCEA8], *MEMORY[0x277CCCEB0], 0}];
  v12 = [v16 hk_intersection:v17];
  v18 = [v12 count];

  LOBYTE(v12) = v18 == 1;
  if (v18 != 1)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 description:@"recordTypes must contain exactly one clinical type"];
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
  v3 = [(HDQueryServer *)self clientProxy];
  v31 = 0;
  if (self)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__133;
    v38 = __Block_byref_object_dispose__133;
    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = [MEMORY[0x277CCDBC0] verifiableClinicalRecordType];
    v5 = [(HDQueryServer *)self profile];
    v6 = [HDSampleEntity entityEnumeratorWithType:v4 profile:v5];

    v7 = [(HDQueryServer *)self filter];
    v8 = [(HDQueryServer *)self profile];
    v9 = [v7 predicateWithProfile:v8];
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
    v18 = [(HDQueryServer *)self queryUUID];
    [v3 client_deliverError:v15 forQuery:v18];
  }

  else
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __53__HDVerifiableClinicalRecordQueryServer__queue_start__block_invoke;
    v28[3] = &unk_278625AC8;
    v29 = v3;
    v30 = self;
    if (self)
    {
      v19 = MEMORY[0x277CCD708];
      v20 = v28;
      v21 = v17;
      v22 = [v19 alloc];
      v23 = [MEMORY[0x277CCDBC0] verifiableClinicalRecordType];
      v24 = [v22 initWithExpectedObjectType:v23];

      [v24 setRecordTypes:self->_recordTypes];
      v25 = [[HDObjectAuthorizationRequestContext alloc] initWithSamples:v21 metadata:v24];

      [(HDObjectAuthorizationRequestContext *)v25 setPersistSession:1];
      [(HDObjectAuthorizationRequestContext *)v25 setPromptWithNoSamples:1];
      v26 = [(HDQueryServer *)self delegate];
      [v26 queryServer:self requestsAuthorizationWithContext:v25 completion:v20];
    }

    v18 = 0;
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