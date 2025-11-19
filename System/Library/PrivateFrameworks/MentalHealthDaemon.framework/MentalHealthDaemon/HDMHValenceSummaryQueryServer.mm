@interface HDMHValenceSummaryQueryServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
- (BOOL)_queue_surfaceDaySummariesWithError:(id *)a3;
- (HDMHValenceSummaryQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)objectTypes;
- (void)_queue_start;
@end

@implementation HDMHValenceSummaryQueryServer

- (HDMHValenceSummaryQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = HDMHValenceSummaryQueryServer;
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
  v32.super_class = HDMHValenceSummaryQueryServer;
  [(HDQueryServer *)&v32 _queue_start];
  v3 = [(HDQueryServer *)self clientProxy];
  v4 = [v3 remoteObjectProxy];

  v5 = [(HDQueryServer *)self client];
  v6 = [v5 authorizationOracle];
  v7 = [(HDMHValenceSummaryQueryServer *)self objectTypes];
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
    v25[2] = __45__HDMHValenceSummaryQueryServer__queue_start__block_invoke;
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
  [v4 client_deliverValenceSummary:0 queryUUID:v20];
LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_surfaceDaySummariesWithError:(id *)a3
{
  v5 = [(HDQueryServer *)self clientProxy];
  v6 = [v5 remoteObjectProxy];

  v7 = [HDMHDaySummaryEnumerator alloc];
  v8 = [(HDQueryServer *)self profile];
  v9 = [(HKMHCountBasedQueryConfiguration *)self->_configuration dayIndexRange];
  v11 = v10;
  v12 = [(HKMHCountBasedQueryConfiguration *)self->_configuration gregorianCalendar];
  v13 = [(HDQueryServer *)self predicateForQueryClient];
  LOBYTE(v27) = 1;
  v14 = [(HDMHDaySummaryEnumerator *)v7 initWithProfile:v8 dayIndexRange:v9 gregorianCalendar:v11 predicate:v12 pendingDailyStateOfMind:v13 ascending:0, v27];

  v15 = objc_alloc(MEMORY[0x277D280D8]);
  v16 = [(HKMHCountBasedQueryConfiguration *)self->_configuration dayIndexRange];
  v18 = [v15 initWithDayIndexRange:{v16, v17}];
  v30 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __69__HDMHValenceSummaryQueryServer__queue_surfaceDaySummariesWithError___block_invoke;
  v28[3] = &unk_2798AADC0;
  v28[4] = self;
  v19 = v18;
  v29 = v19;
  v20 = [(HDMHDaySummaryEnumerator *)v14 enumerateWithError:&v30 handler:v28];
  v21 = v30;
  v22 = [(HDQueryServer *)self queryUUID];
  if (v20)
  {
    v23 = v19;
  }

  else
  {
    v23 = 0;
  }

  [v6 client_deliverValenceSummary:v23 queryUUID:v22];

  v24 = v21;
  if (v24)
  {
    if (a3)
    {
      v25 = v24;
      *a3 = v24;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v20;
}

void __69__HDMHValenceSummaryQueryServer__queue_surfaceDaySummariesWithError___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = *MEMORY[0x277D85DE8];
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
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 momentaryStatesOfMind];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(a1 + 40) _addValence:{objc_msgSend(*(*(&v14 + 1) + 8 * v10++), "valenceClassification")}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v11 = [v5 dailyStateOfMind];
    v12 = v11;
    if (v11)
    {
      [*(a1 + 40) _addValence:{objc_msgSend(v11, "valenceClassification")}];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end