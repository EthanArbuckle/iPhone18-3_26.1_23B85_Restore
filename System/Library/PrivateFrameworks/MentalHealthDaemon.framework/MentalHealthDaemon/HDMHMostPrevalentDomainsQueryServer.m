@interface HDMHMostPrevalentDomainsQueryServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
- (BOOL)_queue_surfaceMostPrevalentDomainsWithError:(id *)a3;
- (HDMHMostPrevalentDomainsQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)objectTypes;
- (void)_queue_start;
@end

@implementation HDMHMostPrevalentDomainsQueryServer

- (HDMHMostPrevalentDomainsQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = HDMHMostPrevalentDomainsQueryServer;
  v12 = [(HDQueryServer *)&v15 initWithUUID:a3 configuration:v11 client:a5 delegate:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, a4);
  }

  return v13;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = [v6 entitlements];
  v8 = *MEMORY[0x277CCC8B0];
  v9 = [v7 hasEntitlement:*MEMORY[0x277CCC8B0]];

  if (v9 & 1) != 0 || ([v6 entitlements], v10 = objc_claimAutoreleasedReturnValue(), v11 = *MEMORY[0x277CCC898], v12 = objc_msgSend(v10, "hasPrivateAccessEntitlementWithIdentifier:", *MEMORY[0x277CCC898]), v10, (v12))
  {
    v13 = 1;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:4 format:{@"Missing required entitlement: %@ for core apps or %@ for second-party access.", v8, v11}];
    v13 = 0;
  }

  return v13;
}

- (id)objectTypes
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [MEMORY[0x277CCD8D8] stateOfMindType];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (void)_queue_start
{
  v38 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = HDMHMostPrevalentDomainsQueryServer;
  [(HDQueryServer *)&v32 _queue_start];
  v3 = [(HDQueryServer *)self clientProxy];
  v4 = [v3 remoteObjectProxy];

  v5 = [(HDQueryServer *)self client];
  v6 = [v5 authorizationOracle];
  v7 = [(HDMHMostPrevalentDomainsQueryServer *)self objectTypes];
  v31 = 0;
  v8 = [v6 authorizationStatusRecordsForTypes:v7 error:&v31];
  v9 = v31;

  if (!v8)
  {
    v20 = [(HDQueryServer *)self queryUUID];
    [v4 client_deliverError:v9 forQuery:v20];
    goto LABEL_19;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [v8 allValues];
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (!v11)
  {

LABEL_18:
    v20 = [MEMORY[0x277D106B8] contextForReadingProtectedData];
    v21 = [(HDQueryServer *)self profile];
    v22 = [v21 database];
    v25[4] = self;
    v26 = v9;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __51__HDMHMostPrevalentDomainsQueryServer__queue_start__block_invoke;
    v25[3] = &unk_2798AABE8;
    [v22 performTransactionWithContext:v20 error:&v26 block:v25 inaccessibilityHandler:0];
    v23 = v26;

    v9 = v23;
    goto LABEL_19;
  }

  v12 = v11;
  v13 = *v28;
  v14 = 1;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v28 != v13)
      {
        objc_enumerationMutation(v10);
      }

      if (v14)
      {
        v14 = [*(*(&v27 + 1) + 8 * i) canRead];
      }

      else
      {
        v14 = 0;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v27 objects:v37 count:16];
  }

  while (v12);

  if (v14)
  {
    goto LABEL_18;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = objc_opt_class();
    *buf = 138543618;
    v34 = v18;
    v35 = 2114;
    v36 = v8;
    v19 = v18;
    _os_log_impl(&dword_258977000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Avoiding exposing health data due to missing authorization: %{public}@", buf, 0x16u);
  }

  v20 = [(HDQueryServer *)self queryUUID];
  [v4 client_deliverMostPrevalentDomains:0 queryUUID:v20];
LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_surfaceMostPrevalentDomainsWithError:(id *)a3
{
  v4 = [(HDQueryServer *)self clientProxy];
  v5 = [v4 remoteObjectProxy];

  v6 = [HDMHDaySummaryEnumerator alloc];
  v7 = [(HDQueryServer *)self profile];
  v8 = [(HKMHCountBasedQueryConfiguration *)self->_configuration dayIndexRange];
  v10 = v9;
  v11 = [(HKMHCountBasedQueryConfiguration *)self->_configuration gregorianCalendar];
  v12 = [(HDQueryServer *)self predicateForQueryClient];
  LOBYTE(v30) = 1;
  v13 = [(HDMHDaySummaryEnumerator *)v6 initWithProfile:v7 dayIndexRange:v8 gregorianCalendar:v10 predicate:v11 pendingDailyStateOfMind:v12 ascending:0, v30];

  v14 = objc_alloc_init(HDMHMostPrevalentDomainsBuilder);
  v34 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __83__HDMHMostPrevalentDomainsQueryServer__queue_surfaceMostPrevalentDomainsWithError___block_invoke;
  v32[3] = &unk_2798AADC0;
  v32[4] = self;
  v15 = v14;
  v33 = v15;
  v16 = [(HDMHDaySummaryEnumerator *)v13 enumerateWithError:&v34 handler:v32];
  v17 = v34;
  v18 = objc_alloc(MEMORY[0x277D28088]);
  v19 = [(HDMHMostPrevalentDomainsBuilder *)v15 mostPrevalentUnpleasantDomains];
  v20 = [(HDMHMostPrevalentDomainsBuilder *)v15 mostPrevalentPleasantDomains];
  v21 = [(HKMHCountBasedQueryConfiguration *)self->_configuration dayIndexRange];
  v23 = [v18 initWithMostUnpleasantDomains:v19 mostPleasantDomains:v20 dayIndexRange:{v21, v22}];

  v24 = [(HDQueryServer *)self queryUUID];
  if (v16)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  [v5 client_deliverMostPrevalentDomains:v25 queryUUID:v24];

  v26 = v17;
  v27 = v26;
  if (v26)
  {
    if (a3)
    {
      v28 = v26;
      *a3 = v27;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v16;
}

void __83__HDMHMostPrevalentDomainsQueryServer__queue_surfaceMostPrevalentDomainsWithError___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (([*(a1 + 32) _shouldStopProcessingQuery] & 1) != 0 || objc_msgSend(*(a1 + 32), "_shouldSuspendQuery"))
  {
    if (a3)
    {
      *a3 = 1;
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v5 momentaryStatesOfMind];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(a1 + 40) addStateOfMind:*(*(&v13 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    v11 = [v5 dailyStateOfMind];
    if (v11)
    {
      [*(a1 + 40) addStateOfMind:v11];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end