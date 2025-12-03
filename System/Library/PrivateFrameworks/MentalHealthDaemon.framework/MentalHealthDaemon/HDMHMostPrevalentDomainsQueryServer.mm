@interface HDMHMostPrevalentDomainsQueryServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
- (BOOL)_queue_surfaceMostPrevalentDomainsWithError:(id *)error;
- (HDMHMostPrevalentDomainsQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)objectTypes;
- (void)_queue_start;
@end

@implementation HDMHMostPrevalentDomainsQueryServer

- (HDMHMostPrevalentDomainsQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HDMHMostPrevalentDomainsQueryServer;
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
  v32.super_class = HDMHMostPrevalentDomainsQueryServer;
  [(HDQueryServer *)&v32 _queue_start];
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  client = [(HDQueryServer *)self client];
  authorizationOracle = [client authorizationOracle];
  objectTypes = [(HDMHMostPrevalentDomainsQueryServer *)self objectTypes];
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
    v25[2] = __51__HDMHMostPrevalentDomainsQueryServer__queue_start__block_invoke;
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
  [remoteObjectProxy client_deliverMostPrevalentDomains:0 queryUUID:queryUUID];
LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_surfaceMostPrevalentDomainsWithError:(id *)error
{
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  v6 = [HDMHDaySummaryEnumerator alloc];
  profile = [(HDQueryServer *)self profile];
  dayIndexRange = [(HKMHCountBasedQueryConfiguration *)self->_configuration dayIndexRange];
  v10 = v9;
  gregorianCalendar = [(HKMHCountBasedQueryConfiguration *)self->_configuration gregorianCalendar];
  predicateForQueryClient = [(HDQueryServer *)self predicateForQueryClient];
  LOBYTE(v30) = 1;
  v13 = [(HDMHDaySummaryEnumerator *)v6 initWithProfile:profile dayIndexRange:dayIndexRange gregorianCalendar:v10 predicate:gregorianCalendar pendingDailyStateOfMind:predicateForQueryClient ascending:0, v30];

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
  mostPrevalentUnpleasantDomains = [(HDMHMostPrevalentDomainsBuilder *)v15 mostPrevalentUnpleasantDomains];
  mostPrevalentPleasantDomains = [(HDMHMostPrevalentDomainsBuilder *)v15 mostPrevalentPleasantDomains];
  dayIndexRange2 = [(HKMHCountBasedQueryConfiguration *)self->_configuration dayIndexRange];
  v23 = [v18 initWithMostUnpleasantDomains:mostPrevalentUnpleasantDomains mostPleasantDomains:mostPrevalentPleasantDomains dayIndexRange:{dayIndexRange2, v22}];

  queryUUID = [(HDQueryServer *)self queryUUID];
  if (v16)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  [remoteObjectProxy client_deliverMostPrevalentDomains:v25 queryUUID:queryUUID];

  v26 = v17;
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