@interface HDMHValenceDistributionSummaryQueryServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
- ($0AC6E346AE4835514AAA8AC86D8F4844)_dayIndexRangeWithAnchorIndex:(int64_t)index;
- (BOOL)_queue_surfaceValenceDistributionSummariesWithError:(id *)error;
- (HDMHValenceDistributionSummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)objectTypes;
- (void)_queue_start;
@end

@implementation HDMHValenceDistributionSummaryQueryServer

- (HDMHValenceDistributionSummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = HDMHValenceDistributionSummaryQueryServer;
  v12 = [(HDQueryServer *)&v17 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, configuration);
    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    gregorianCalendar = v13->_gregorianCalendar;
    v13->_gregorianCalendar = hk_gregorianCalendar;
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
  v32.super_class = HDMHValenceDistributionSummaryQueryServer;
  [(HDQueryServer *)&v32 _queue_start];
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  client = [(HDQueryServer *)self client];
  authorizationOracle = [client authorizationOracle];
  objectTypes = [(HDMHValenceDistributionSummaryQueryServer *)self objectTypes];
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
    v25[2] = __57__HDMHValenceDistributionSummaryQueryServer__queue_start__block_invoke;
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
  [remoteObjectProxy client_deliverValenceDistributionSummaries:MEMORY[0x277CBEBF8] clearPending:0 isFinalBatch:1 queryUUID:queryUUID];
LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_surfaceValenceDistributionSummariesWithError:(id *)error
{
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy_;
  v59 = __Block_byref_object_dispose_;
  v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 1;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0;
  limit = [(HKMHValenceDistributionSummaryQueryConfiguration *)self->_configuration limit];
  errorCopy = error;
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  v8 = [HDMHDaySummaryEnumerator alloc];
  profile = [(HDQueryServer *)self profile];
  dayIndexRange = [(HKMHValenceDistributionSummaryQueryConfiguration *)self->_configuration dayIndexRange];
  v12 = v11;
  gregorianCalendar = [(HKMHValenceDistributionSummaryQueryConfiguration *)self->_configuration gregorianCalendar];
  predicateForQueryClient = [(HDQueryServer *)self predicateForQueryClient];
  LOBYTE(v29) = [(HKMHValenceDistributionSummaryQueryConfiguration *)self->_configuration ascending];
  v15 = [(HDMHDaySummaryEnumerator *)v8 initWithProfile:profile dayIndexRange:dayIndexRange gregorianCalendar:v12 predicate:gregorianCalendar pendingDailyStateOfMind:predicateForQueryClient ascending:0, v29];

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  v45 = 0;
  v39 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __97__HDMHValenceDistributionSummaryQueryServer__queue_surfaceValenceDistributionSummariesWithError___block_invoke;
  v31[3] = &unk_2798AAC10;
  v31[4] = self;
  v33 = &v47;
  v34 = &v55;
  v16 = remoteObjectProxy;
  v32 = v16;
  v35 = &v51;
  v36 = &v40;
  v37 = v46;
  v38 = limit;
  v17 = [(HDMHDaySummaryEnumerator *)v15 enumerateWithError:&v39 handler:v31];
  v18 = v39;
  v19 = v41[5];
  if (v19)
  {
    v20 = v56[5];
    valenceDistributionSummary = [v19 valenceDistributionSummary];
    [v20 addObject:valenceDistributionSummary];
  }

  if ((v48[3] & 1) == 0)
  {
    if (v17)
    {
      v22 = v56[5];
      v23 = *(v52 + 24);
      queryUUID = [(HDQueryServer *)self queryUUID];
      [v16 client_deliverValenceDistributionSummaries:v22 clearPending:v23 isFinalBatch:1 queryUUID:queryUUID];
    }

    else
    {
      queryUUID = [(HDQueryServer *)self queryUUID];
      [v16 client_deliverError:v18 forQuery:queryUUID];
    }
  }

  v25 = v18;
  v26 = v25;
  if (v25)
  {
    if (errorCopy)
    {
      v27 = v25;
      *errorCopy = v26;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(v46, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);

  return v17;
}

void __97__HDMHValenceDistributionSummaryQueryServer__queue_surfaceValenceDistributionSummariesWithError___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v26 = a2;
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
    [v7 client_deliverValenceDistributionSummaries:v5 clearPending:v6 isFinalBatch:0 queryUUID:v8];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v12 = [v26 dayIndex];
  v13 = *(*(*(a1 + 72) + 8) + 40);
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = [v13 dayIndexRange];
  if (v12 < v14 || v12 - v14 >= v15)
  {
    v17 = *(*(*(a1 + 56) + 8) + 40);
    v18 = [*(*(*(a1 + 72) + 8) + 40) valenceDistributionSummary];
    [v17 addObject:v18];

LABEL_16:
    v19 = [HDMHValenceDistributionSummaryBuilder alloc];
    v20 = [*(a1 + 32) _dayIndexRangeWithAnchorIndex:v12];
    v22 = [(HDMHValenceDistributionSummaryBuilder *)v19 initWithDayIndexRange:v20 gregorianCalendar:v21, *(*(a1 + 32) + 216)];
    v23 = *(*(a1 + 72) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;
  }

  [*(*(*(a1 + 72) + 8) + 40) addDaySummary:v26];
  ++*(*(*(a1 + 80) + 8) + 24);
  v25 = *(a1 + 88);
  if (v25 && a3 && *(*(*(a1 + 80) + 8) + 24) >= v25)
  {
LABEL_4:
    *a3 = 1;
  }

LABEL_5:
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_dayIndexRangeWithAnchorIndex:(int64_t)index
{
  if (([(HKMHValenceDistributionSummaryQueryConfiguration *)self->_configuration options]& 2) != 0)
  {
    v6 = [MEMORY[0x277CBEAA8] hk_noonWithDayIndex:index calendar:self->_gregorianCalendar];
    v7 = [(NSCalendar *)self->_gregorianCalendar hk_startOfMonthForDate:v6];
    index = [v7 hk_dayIndexWithCalendar:self->_gregorianCalendar];
    [(NSCalendar *)self->_gregorianCalendar rangeOfUnit:16 inUnit:8 forDate:v7];
    v5 = v8;
LABEL_6:

    goto LABEL_7;
  }

  if (([(HKMHValenceDistributionSummaryQueryConfiguration *)self->_configuration options]& 1) != 0)
  {
    v6 = [MEMORY[0x277CBEAA8] hk_noonWithDayIndex:index calendar:self->_gregorianCalendar];
    v7 = [(NSCalendar *)self->_gregorianCalendar hk_startOfWeekWithFirstWeekday:[(NSCalendar *)self->_gregorianCalendar firstWeekday] beforeDate:v6 addingWeeks:0];
    index = [v7 hk_dayIndexWithCalendar:self->_gregorianCalendar];
    v5 = 7;
    goto LABEL_6;
  }

  v5 = 1;
LABEL_7:
  indexCopy = index;
  v10 = v5;
  result.var1 = v10;
  result.var0 = indexCopy;
  return result;
}

@end