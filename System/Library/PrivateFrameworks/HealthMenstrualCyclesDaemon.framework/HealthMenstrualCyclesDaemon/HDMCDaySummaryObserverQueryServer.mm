@interface HDMCDaySummaryObserverQueryServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (HDMCDaySummaryObserverQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate profileExtension:(id)extension;
- (id)objectTypes;
- (void)_queue_deliverUpdate;
- (void)_queue_start;
- (void)_queue_stop;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor;
@end

@implementation HDMCDaySummaryObserverQueryServer

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  v16 = [profile profileExtensionWithIdentifier:*MEMORY[0x277D11920]];

  if (v16)
  {
    v17 = [[HDMCDaySummaryObserverQueryServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy profileExtension:v16];
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"No profile extension found for %@", objc_opt_class()}];
    if (v18)
    {
      if (error)
      {
        v19 = v18;
        *error = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v17 = 0;
  }

  return v17;
}

- (HDMCDaySummaryObserverQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate profileExtension:(id)extension
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  extensionCopy = extension;
  v27.receiver = self;
  v27.super_class = HDMCDaySummaryObserverQueryServer;
  v17 = [(HDQueryServer *)&v27 initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_profileExtension, extension);
    objc_initWeak(&location, v18);
    v19 = objc_alloc(MEMORY[0x277CCDD98]);
    queryQueue = [(HDQueryServer *)v18 queryQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __97__HDMCDaySummaryObserverQueryServer_initWithUUID_configuration_client_delegate_profileExtension___block_invoke;
    v24[3] = &unk_27865A750;
    objc_copyWeak(&v25, &location);
    v21 = [v19 initWithMode:0 clock:1 queue:queryQueue delay:v24 block:0.1];
    updateOperation = v18->_updateOperation;
    v18->_updateOperation = v21;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v18;
}

void __97__HDMCDaySummaryObserverQueryServer_initWithUUID_configuration_client_delegate_profileExtension___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_deliverUpdate];
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  addedCopy = added;
  queryQueue = [(HDQueryServer *)self queryQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HDMCDaySummaryObserverQueryServer_samplesAdded_anchor___block_invoke;
  v8[3] = &unk_27865A778;
  v8[4] = self;
  v9 = addedCopy;
  v7 = addedCopy;
  dispatch_async(queryQueue, v8);
}

uint64_t __57__HDMCDaySummaryObserverQueryServer_samplesAdded_anchor___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = objc_opt_class();
    v6 = *(a1 + 40);
    v7 = v5;
    v8 = HKSensitiveLogItem();
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_2293D1000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating due to samples added: %@", &v11, 0x16u);
  }

  result = [*(*(a1 + 32) + 216) execute];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor
{
  removedCopy = removed;
  queryQueue = [(HDQueryServer *)self queryQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__HDMCDaySummaryObserverQueryServer_samplesOfTypesWereRemoved_anchor___block_invoke;
  v8[3] = &unk_27865A778;
  v8[4] = self;
  v9 = removedCopy;
  v7 = removedCopy;
  dispatch_async(queryQueue, v8);
}

uint64_t __70__HDMCDaySummaryObserverQueryServer_samplesOfTypesWereRemoved_anchor___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = objc_opt_class();
    v6 = *(a1 + 40);
    v7 = v5;
    v8 = HKSensitiveLogItem();
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_2293D1000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating due to samples removed of types: %@", &v11, 0x16u);
  }

  result = [*(*(a1 + 32) + 216) execute];
  v10 = *MEMORY[0x277D85DE8];
  return result;
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
  v33 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = HDMCDaySummaryObserverQueryServer;
  [(HDQueryServer *)&v27 _queue_start];
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  client = [(HDQueryServer *)self client];
  authorizationOracle = [client authorizationOracle];
  objectTypes = [(HDMCDaySummaryObserverQueryServer *)self objectTypes];
  v26 = 0;
  v8 = [authorizationOracle authorizationStatusRecordsForTypes:objectTypes error:&v26];
  v9 = v26;

  if (!v8)
  {
    queryUUID = [(HDQueryServer *)self queryUUID];
    [remoteObjectProxy client_deliverError:v9 forQuery:queryUUID];

    goto LABEL_19;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  allValues = [v8 allValues];
  v11 = [allValues countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    canRead = 1;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        if (canRead)
        {
          canRead = [*(*(&v22 + 1) + 8 * i) canRead];
        }

        else
        {
          canRead = 0;
        }
      }

      v12 = [allValues countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v12);

    if ((canRead & 1) == 0)
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = objc_opt_class();
        *buf = 138543618;
        v29 = v18;
        v30 = 2114;
        v31 = v8;
        v19 = v18;
        _os_log_impl(&dword_2293D1000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Avoiding exposing health data due to missing authorization: %{public}@", buf, 0x16u);
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

  if (self->_requiresUpdate)
  {
    [(HDMCDaySummaryObserverQueryServer *)self _queue_deliverUpdate];
    self->_requiresUpdate = 0;
  }

LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_queue_deliverUpdate
{
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  queryUUID = [(HDQueryServer *)self queryUUID];
  [remoteObjectProxy client_deliverUpdateWithQueryUUID:queryUUID];
}

- (void)_queue_stop
{
  v3.receiver = self;
  v3.super_class = HDMCDaySummaryObserverQueryServer;
  [(HDQueryServer *)&v3 _queue_stop];
  self->_requiresUpdate = 1;
}

@end