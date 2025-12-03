@interface HDMHDaySummaryQueryServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
- (BOOL)_queue_surfaceDaySummariesWithError:(id *)error;
- (HDMHDaySummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)objectTypes;
- (void)_queue_start;
@end

@implementation HDMHDaySummaryQueryServer

- (HDMHDaySummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HDMHDaySummaryQueryServer;
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

  if (v9 & 1) != 0 || ([clientCopy entitlements], v10 = objc_claimAutoreleasedReturnValue(), v11 = *MEMORY[0x277CCC898], v12 = objc_msgSend(v10, "hasPrivateAccessEntitlementWithIdentifier:", *MEMORY[0x277CCC898]), v10, (v12))
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
  stateOfMindType = [MEMORY[0x277CCD8D8] stateOfMindType];
  v4 = [v2 setWithObject:stateOfMindType];

  return v4;
}

- (void)_queue_start
{
  v38 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = HDMHDaySummaryQueryServer;
  [(HDQueryServer *)&v32 _queue_start];
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  client = [(HDQueryServer *)self client];
  authorizationOracle = [client authorizationOracle];
  objectTypes = [(HDMHDaySummaryQueryServer *)self objectTypes];
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
    v25[2] = __41__HDMHDaySummaryQueryServer__queue_start__block_invoke;
    v25[3] = &unk_2798AABE8;
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

  queryUUID = [(HDQueryServer *)self queryUUID];
  [remoteObjectProxy client_deliverDaySummaries:MEMORY[0x277CBEBF8] clearPending:0 isFinalBatch:1 queryUUID:queryUUID];
LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_surfaceDaySummariesWithError:(id *)error
{
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__1;
  v47 = __Block_byref_object_dispose__1;
  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  limit = [(HKMHDaySummaryQueryConfiguration *)self->_configuration limit];
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  v8 = [HDMHDaySummaryEnumerator alloc];
  profile = [(HDQueryServer *)self profile];
  dayIndexRange = [(HKMHDaySummaryQueryConfiguration *)self->_configuration dayIndexRange];
  v12 = v11;
  gregorianCalendar = [(HKMHDaySummaryQueryConfiguration *)self->_configuration gregorianCalendar];
  LOBYTE(v25) = [(HKMHDaySummaryQueryConfiguration *)self->_configuration ascending];
  v14 = [(HDMHDaySummaryEnumerator *)v8 initWithProfile:profile dayIndexRange:dayIndexRange gregorianCalendar:v12 predicate:gregorianCalendar pendingDailyStateOfMind:0 ascending:0, v25];

  v33 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __65__HDMHDaySummaryQueryServer__queue_surfaceDaySummariesWithError___block_invoke;
  v26[3] = &unk_2798AACB0;
  v26[4] = self;
  v28 = &v35;
  v29 = &v43;
  v15 = remoteObjectProxy;
  v27 = v15;
  v30 = &v39;
  v31 = v34;
  v32 = limit;
  v16 = [(HDMHDaySummaryEnumerator *)v14 enumerateWithError:&v33 handler:v26];
  v17 = v33;
  if ((v36[3] & 1) == 0)
  {
    if (v16)
    {
      v18 = v44[5];
      v19 = *(v40 + 24);
      queryUUID = [(HDQueryServer *)self queryUUID];
      [v15 client_deliverDaySummaries:v18 clearPending:v19 isFinalBatch:1 queryUUID:queryUUID];
    }

    else
    {
      queryUUID = [(HDQueryServer *)self queryUUID];
      [v15 client_deliverError:v17 forQuery:queryUUID];
    }
  }

  v21 = v17;
  v22 = v21;
  if (v21)
  {
    if (error)
    {
      v23 = v21;
      *error = v22;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  return v16;
}

void __65__HDMHDaySummaryQueryServer__queue_surfaceDaySummariesWithError___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v13 = a2;
  if (([*(a1 + 32) _shouldStopProcessingQuery] & 1) != 0 || objc_msgSend(*(a1 + 32), "_shouldSuspendQuery"))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count] >= 0xC8)
  {
    v5 = *(*(*(a1 + 56) + 8) + 40);
    v6 = *(*(*(a1 + 64) + 8) + 24);
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) queryUUID];
    [v7 client_deliverDaySummaries:v5 clearPending:v6 isFinalBatch:0 queryUUID:v8];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  [*(*(*(a1 + 56) + 8) + 40) addObject:v13];
  ++*(*(*(a1 + 72) + 8) + 24);
  v12 = *(a1 + 80);
  if (v12 && a3 && *(*(*(a1 + 72) + 8) + 24) >= v12)
  {
LABEL_4:
    *a3 = 1;
  }

LABEL_5:
}

@end