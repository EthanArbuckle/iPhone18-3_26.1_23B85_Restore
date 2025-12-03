@interface HDMCDaySummaryQueryServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
- (BOOL)_queue_surfaceDaySummariesWithError:(id *)error;
- (HDMCDaySummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)objectTypes;
- (void)_queue_start;
@end

@implementation HDMCDaySummaryQueryServer

- (HDMCDaySummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HDMCDaySummaryQueryServer;
  v12 = [(HDQueryServer *)&v15 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, configuration);
  }

  return v13;
}

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  clientCopy = client;
  entitlements = [clientCopy entitlements];
  v8 = *MEMORY[0x277CCC8B0];
  v9 = [entitlements hasEntitlement:*MEMORY[0x277CCC8B0]];

  if (v9 & 1) != 0 || ([clientCopy entitlements], v10 = objc_claimAutoreleasedReturnValue(), v11 = *MEMORY[0x277CCC890], v12 = objc_msgSend(v10, "hasPrivateAccessEntitlementWithIdentifier:", *MEMORY[0x277CCC890]), v10, (v12))
  {
    v13 = 1;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:4 format:{@"Missing required entitlement: %@ for core apps or %@ for second-party access.", v8, v11}];
    v13 = 0;
  }

  return v13;
}

- (id)objectTypes
{
  v2 = MEMORY[0x277CBEB98];
  v3 = HKMCDaySummarySampleTypes();
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (void)_queue_start
{
  v38 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = HDMCDaySummaryQueryServer;
  [(HDQueryServer *)&v32 _queue_start];
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  client = [(HDQueryServer *)self client];
  authorizationOracle = [client authorizationOracle];
  objectTypes = [(HDMCDaySummaryQueryServer *)self objectTypes];
  v31 = 0;
  v8 = [authorizationOracle authorizationStatusRecordsForTypes:objectTypes error:&v31];
  v9 = v31;

  if (!v8)
  {
    queryUUID = [(HDQueryServer *)self queryUUID];
    [remoteObjectProxy client_deliverError:v9 forQuery:queryUUID];
    goto LABEL_19;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  allValues = [v8 allValues];
  v11 = [allValues countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (!v11)
  {

LABEL_18:
    queryUUID = [MEMORY[0x277D106B8] contextForReadingProtectedData];
    profile = [(HDQueryServer *)self profile];
    database = [profile database];
    v25[4] = self;
    v26 = v9;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __41__HDMCDaySummaryQueryServer__queue_start__block_invoke;
    v25[3] = &unk_27865AFD8;
    [database performTransactionWithContext:queryUUID error:&v26 block:v25 inaccessibilityHandler:0];
    v23 = v26;

    v9 = v23;
    goto LABEL_19;
  }

  v12 = v11;
  v13 = *v28;
  canRead = 1;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v28 != v13)
      {
        objc_enumerationMutation(allValues);
      }

      if (canRead)
      {
        canRead = [*(*(&v27 + 1) + 8 * i) canRead];
      }

      else
      {
        canRead = 0;
      }
    }

    v12 = [allValues countByEnumeratingWithState:&v27 objects:v37 count:16];
  }

  while (v12);

  if (canRead)
  {
    goto LABEL_18;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = objc_opt_class();
    *buf = 138543618;
    v34 = v18;
    v35 = 2114;
    v36 = v8;
    v19 = v18;
    _os_log_impl(&dword_2293D1000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Avoiding exposing health data due to missing authorization: %{public}@", buf, 0x16u);
  }

  queryUUID = [(HDQueryServer *)self queryUUID];
  [remoteObjectProxy client_deliverDaySummaries:MEMORY[0x277CBEBF8] clearPending:0 isFinalBatch:1 daySummaryAnchor:0 queryUUID:queryUUID];
LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_surfaceDaySummariesWithError:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__7;
  v57 = __Block_byref_object_dispose__7;
  v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 1;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v44[3] = 0;
  limit = [(HKMCDaySummaryQueryConfiguration *)self->_configuration limit];
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  v6 = MEMORY[0x277D10848];
  profile = [(HDQueryServer *)self profile];
  database = [profile database];
  v43 = 0;
  v9 = [v6 hdmc_daySummaryAnchorWithHealthDatabase:database error:&v43];
  v10 = v43;

  if (!v9 && v10)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      [(HDMCDaySummaryQueryServer *)v12 _queue_surfaceDaySummariesWithError:v10, v59, v11];
    }
  }

  v13 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v14 = [HDMCDaySummaryEnumerator alloc];
  profile2 = [(HDQueryServer *)self profile];
  dayIndexRange = [(HKMCDaySummaryQueryConfiguration *)self->_configuration dayIndexRange];
  LOBYTE(v31) = 0;
  v18 = [(HDMCDaySummaryEnumerator *)v14 initWithProfile:profile2 calendarCache:v13 dayIndexRange:dayIndexRange ascending:v17 includeFactors:[(HKMCDaySummaryQueryConfiguration *)self->_configuration ascending] includeWristTemperature:0, v31];

  v42 = v10;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __65__HDMCDaySummaryQueryServer__queue_surfaceDaySummariesWithError___block_invoke;
  v34[3] = &unk_27865B000;
  v34[4] = self;
  v37 = &v45;
  v38 = &v53;
  v19 = remoteObjectProxy;
  v35 = v19;
  v39 = &v49;
  v20 = v9;
  v36 = v20;
  v40 = v44;
  v41 = limit;
  v21 = [(HDMCDaySummaryEnumerator *)v18 enumerateWithError:&v42 handler:v34];
  v22 = v42;

  if ((v46[3] & 1) == 0)
  {
    if (v21)
    {
      v23 = v54[5];
      v24 = *(v50 + 24);
      queryUUID = [(HDQueryServer *)self queryUUID];
      [v19 client_deliverDaySummaries:v23 clearPending:v24 isFinalBatch:1 daySummaryAnchor:v20 queryUUID:queryUUID];
    }

    else
    {
      queryUUID = [(HDQueryServer *)self queryUUID];
      [v19 client_deliverError:v22 forQuery:queryUUID];
    }
  }

  v26 = v22;
  v27 = v26;
  if (v26)
  {
    if (error)
    {
      v28 = v26;
      *error = v27;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  v29 = *MEMORY[0x277D85DE8];
  return v21;
}

void __65__HDMCDaySummaryQueryServer__queue_surfaceDaySummariesWithError___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v14 = a2;
  if (([*(a1 + 32) _shouldStopProcessingQuery] & 1) != 0 || objc_msgSend(*(a1 + 32), "_shouldSuspendQuery"))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_4:
    *a3 = 1;
    goto LABEL_5;
  }

  if ([*(*(*(a1 + 64) + 8) + 40) count] >= 0x190)
  {
    v5 = *(*(*(a1 + 64) + 8) + 40);
    v6 = *(*(*(a1 + 72) + 8) + 24);
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = [*(a1 + 32) queryUUID];
    [v8 client_deliverDaySummaries:v5 clearPending:v6 isFinalBatch:0 daySummaryAnchor:v7 queryUUID:v9];

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  [*(*(*(a1 + 64) + 8) + 40) addObject:v14];
  ++*(*(*(a1 + 80) + 8) + 24);
  v13 = *(a1 + 88);
  if (v13 && *(*(*(a1 + 80) + 8) + 24) >= v13)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)_queue_surfaceDaySummariesWithError:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  v6 = a1;
  _os_log_error_impl(&dword_2293D1000, a4, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving analysis anchor: %{public}@", a3, 0x16u);
}

@end