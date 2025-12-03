@interface HDCorrelationQueryServer
- (HDCorrelationQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_start;
@end

@implementation HDCorrelationQueryServer

- (HDCorrelationQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  clientCopy = client;
  v18.receiver = self;
  v18.super_class = HDCorrelationQueryServer;
  v12 = [(HDQueryServer *)&v18 initWithUUID:d configuration:configurationCopy client:clientCopy delegate:delegate];
  if (v12)
  {
    filterDictionary = [configurationCopy filterDictionary];
    dataFilters = v12->_dataFilters;
    v12->_dataFilters = filterDictionary;

    configuration = [clientCopy configuration];
    [configuration applicationSDKVersionToken];

    dyld_version_token_get_platform();
    if (dyld_get_base_platform() == 2)
    {
      v16 = dyld_version_token_at_least() ^ 1;
    }

    else
    {
      v16 = 0;
    }

    v12->_permitPartiallyFilteredCorrelations = v16;
    v12->_suspended = 0;
  }

  return v12;
}

- (void)_queue_start
{
  v30 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = HDCorrelationQueryServer;
  [(HDQueryServer *)&v27 _queue_start];
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  if (self->_suspended)
  {
    v26 = 1;
    self->_suspended = 0;
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy4 = self;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_INFO, "%{public}@ Resuming from suspend.", buf, 0xCu);
    }
  }

  newDataEntityEnumerator = [(HDQueryServer *)self newDataEntityEnumerator];
  filter = [(HDQueryServer *)self filter];
  [newDataEntityEnumerator setFilter:filter];

  sampleAuthorizationFilter = [(HDQueryServer *)self sampleAuthorizationFilter];
  [newDataEntityEnumerator setAuthorizationFilter:sampleAuthorizationFilter];

  v24 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __40__HDCorrelationQueryServer__queue_start__block_invoke;
  v20 = &unk_278627EF0;
  selfCopy2 = self;
  v9 = remoteObjectProxy;
  v22 = v9;
  v23 = v25;
  v10 = [(HDBatchedQueryServer *)self batchObjectsWithEnumerator:newDataEntityEnumerator error:&v24 handler:&v17];
  v11 = v24;
  switch(v10)
  {
    case 1:
      v15 = [(HDQueryServer *)self queryUUID:v17];
      [v9 client_deliverError:v11 forQuery:v15];

      break;
    case 2:
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        selfCopy4 = self;
        _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_INFO, "%{public}@: Client no longer authorized.", buf, 0xCu);
      }

      v14 = [(HDQueryServer *)self queryUUID:v17];
      [v9 client_deliverCorrelations:MEMORY[0x277CBEBF8] clearPendingSamples:1 isFinalBatch:1 queryUUID:v14];

      break;
    case 3:
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        selfCopy4 = self;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_INFO, "%{public}@: Suspended during enumeration.", buf, 0xCu);
      }

      self->_suspended = 1;
      break;
  }

  _Block_object_dispose(v25, 8);
  v16 = *MEMORY[0x277D85DE8];
}

void __40__HDCorrelationQueryServer__queue_start__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v10 = *v20;
  do
  {
    v11 = 0;
    do
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v19 + 1) + 8 * v11);
      v13 = *(a1 + 32);
      if (*(v13 + 224) == 1)
      {
        [*(*(&v19 + 1) + 8 * v11) _filterCorrelatedObjectsWithFilterDictionary:*(v13 + 232)];
        if ([v12 _containsObjects])
        {
          goto LABEL_11;
        }
      }

      else if ([*(*(&v19 + 1) + 8 * v11) _containsObjects] && objc_msgSend(v12, "_correlatedObjectsMatchFilterDictionary:", *(*(a1 + 32) + 232)))
      {
LABEL_11:
        [v6 addObject:{v12, v19}];
      }

      ++v11;
    }

    while (v9 != v11);
    v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v9);
LABEL_14:

  if ([v6 count])
  {
    v14 = 0;
  }

  else
  {
    v14 = a3 == 0;
  }

  if (!v14)
  {
    v15 = *(a1 + 40);
    v16 = *(*(*(a1 + 48) + 8) + 24);
    v17 = [*(a1 + 32) queryUUID];
    [v15 client_deliverCorrelations:v6 clearPendingSamples:v16 isFinalBatch:a3 queryUUID:v17];

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end