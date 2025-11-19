@interface MSPSharedTripIDSCapabilityFetchingQueue
- (MSPSharedTripIDSCapabilityFetchingQueue)initWithIDSService:(id)a3 capabilityType:(unint64_t)a4 delegate:(id)a5 queue:(id)a6 label:(id)a7;
- (id)_processUpdates:(id)a3;
- (void)_processPendingHandles;
- (void)_retryAfterBackoff;
- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6;
@end

@implementation MSPSharedTripIDSCapabilityFetchingQueue

- (MSPSharedTripIDSCapabilityFetchingQueue)initWithIDSService:(id)a3 capabilityType:(unint64_t)a4 delegate:(id)a5 queue:(id)a6 label:(id)a7
{
  v12 = a3;
  v17.receiver = self;
  v17.super_class = MSPSharedTripIDSCapabilityFetchingQueue;
  v13 = [(MSPSharedTripCapabilityFetchingQueue *)&v17 initWithDelegate:a5 queue:a6 label:a7];
  if (v13)
  {
    v14 = [v12 copy];
    service = v13->_service;
    v13->_service = v14;

    v13->_capabilityType = a4;
  }

  return v13;
}

- (void)_processPendingHandles
{
  v29 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = MSPSharedTripIDSCapabilityFetchingQueue;
  [(MSPSharedTripCapabilityFetchingQueue *)&v24 _processPendingHandles];
  if (!self->_retryAfterBackoffTimer)
  {
    v3 = [(MSPCountedOrderedSet *)self->super._requestedHandles contents];
    v6 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v3 count];
      service = self->_service;
      *buf = 134218242;
      v26 = v7;
      v27 = 2114;
      v28 = service;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "requesting %lu %{public}@ handles", buf, 0x16u);
    }

    v9 = [v3 count];
    batchIDQueryController = self->_batchIDQueryController;
    if (v9)
    {
      if (!batchIDQueryController)
      {
        v11 = MSPGetSharedTripCapabilityFetchingLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = MEMORY[0x277CCACA8];
          v13 = self;
          v14 = [v12 stringWithFormat:@"%@<%p>", objc_opt_class(), v13];

          *buf = 138543362;
          v26 = v14;
          _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEBUG, "[%{public}@] Creating batch ID query controller", buf, 0xCu);
        }

        v15 = [objc_alloc(MEMORY[0x277D186D8]) initWithService:self->_service delegate:self queue:self->super._workQueue];
        v16 = self->_batchIDQueryController;
        self->_batchIDQueryController = v15;
      }

      [(MSPSharedTripCapabilityFetchingQueue *)self _markHandlesInflight:v3];
      v17 = self->_batchIDQueryController;
      v18 = [v3 array];
      [(IDSBatchIDQueryController *)v17 setDestinations:v18];
    }

    else
    {
      if (!batchIDQueryController)
      {
        goto LABEL_17;
      }

      v19 = MSPGetSharedTripCapabilityFetchingLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = MEMORY[0x277CCACA8];
        v21 = self;
        v22 = [v20 stringWithFormat:@"%@<%p>", objc_opt_class(), v21];

        *buf = 138543362;
        v26 = v22;
        _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_DEBUG, "[%{public}@] Releasing batch ID query controller", buf, 0xCu);
      }

      [(IDSBatchIDQueryController *)self->_batchIDQueryController setDestinations:MEMORY[0x277CBEBF8]];
      [(IDSBatchIDQueryController *)self->_batchIDQueryController invalidate];
      v18 = self->_batchIDQueryController;
      self->_batchIDQueryController = 0;
    }

    goto LABEL_17;
  }

  v3 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(GCDTimer *)self->_retryAfterBackoffTimer fireDate];
    [v4 timeIntervalSinceNow];
    *buf = 134217984;
    v26 = v5;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_INFO, "fetch queue updated but still backing off, %#.1lfs to go", buf, 0xCu);
  }

LABEL_17:

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_processUpdates:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->super._workQueue);
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __59__MSPSharedTripIDSCapabilityFetchingQueue__processUpdates___block_invoke;
    v15 = &unk_279867658;
    v16 = self;
    v17 = v5;
    v6 = v5;
    [v4 enumerateKeysAndObjectsUsingBlock:&v12];
    v7 = MEMORY[0x277CBEB98];
    v8 = [v4 allKeys];
    v9 = [v7 setWithArray:v8];
    [(MSPSharedTripCapabilityFetchingQueue *)self _updateRequestedHandlesWithAdditions:0 subtractions:v9];

    v10 = [v6 copy];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  return v10;
}

void __59__MSPSharedTripIDSCapabilityFetchingQueue__processUpdates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = -[MSPSharedTripFetchedCapabilityStatus initWithCapabilityType:serviceName:status:]([MSPSharedTripFetchedCapabilityStatus alloc], "initWithCapabilityType:serviceName:status:", *(*(a1 + 32) + 72), 0, [a3 integerValue]);
  [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
}

- (void)batchQueryController:(id)a3 updatedDestinationsStatus:(id)a4 onService:(id)a5 error:(id)a6
{
  v69 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  dispatch_assert_queue_V2(self->super._workQueue);
  if (![v10 isEqualToString:self->_service])
  {
    goto LABEL_32;
  }

  if (v11)
  {
    v12 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = self;
      v15 = [v13 stringWithFormat:@"%@<%p>", objc_opt_class(), v14];

      *buf = 138543874;
      v64 = v15;
      v65 = 2112;
      v66 = *&v10;
      v67 = 2112;
      v68 = v11;
      _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] (%@) updatedDestinationsStatus error %@", buf, 0x20u);
    }

    v16 = [v11 code];
    if (v16 == -2000 || v16 == -3000)
    {
      if (v9)
      {
LABEL_22:
        v34 = MSPGetSharedTripCapabilityFetchingLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          if (self)
          {
            v35 = MEMORY[0x277CCACA8];
            v36 = self;
            v37 = [v35 stringWithFormat:@"%@<%p>", objc_opt_class(), v36];
          }

          else
          {
            v37 = @"<nil>";
          }

          service = self->_service;
          *buf = 138543875;
          v64 = v37;
          v65 = 2114;
          v66 = *&service;
          v67 = 2113;
          v68 = v9;
          _os_log_impl(&dword_25813A000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] idStatusUpdatedForDestinations %{public}@ service: %{private}@", buf, 0x20u);
        }

        v39 = [(MSPSharedTripIDSCapabilityFetchingQueue *)self _processUpdates:v9];
        callbackQueue = self->super._callbackQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __106__MSPSharedTripIDSCapabilityFetchingQueue_batchQueryController_updatedDestinationsStatus_onService_error___block_invoke_13;
        block[3] = &unk_279865EF8;
        block[4] = self;
        v56 = v39;
        v41 = v39;
        dispatch_async(callbackQueue, block);

        goto LABEL_28;
      }

      v53 = v11;
      v54 = v10;
      v24 = [v11 userInfo];
      v25 = [v24 objectForKeyedSubscript:@"destinations"];

      v26 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v25, "count")}];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v27 = v25;
      v28 = [v27 countByEnumeratingWithState:&v57 objects:v62 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v58;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v58 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v57 + 1) + 8 * i);
            v33 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
            [v26 setObject:v33 forKeyedSubscript:v32];
          }

          v29 = [v27 countByEnumeratingWithState:&v57 objects:v62 count:16];
        }

        while (v29);
      }

      v9 = [v26 copy];
      v11 = v53;
      v10 = v54;
    }

    else if (v16 == -4000)
    {
      GEOConfigGetDouble();
      v18 = v17;
      retryAfterBackoffTimer = self->_retryAfterBackoffTimer;
      v20 = MSPGetSharedTripCapabilityFetchingLog();
      v21 = v20;
      if (retryAfterBackoffTimer)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v22 = [(GCDTimer *)self->_retryAfterBackoffTimer fireDate];
          [v22 timeIntervalSinceNow];
          *buf = 134217984;
          v64 = v23;
          _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_INFO, "another back-off error, but still backing off, %#.1lfs to go", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v47 = MEMORY[0x277CCACA8];
          v48 = self;
          v49 = [v47 stringWithFormat:@"%@<%p>", objc_opt_class(), v48];

          *buf = 138543618;
          v64 = v49;
          v65 = 2048;
          v66 = v18;
          _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_ERROR, "[%{public}@] need to back off, will retry in %#.1lfs", buf, 0x16u);
        }

        workQueue = self->super._workQueue;
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __106__MSPSharedTripIDSCapabilityFetchingQueue_batchQueryController_updatedDestinationsStatus_onService_error___block_invoke;
        v61[3] = &unk_279867680;
        v61[4] = self;
        v51 = [GCDTimer scheduledTimerWithTimeInterval:workQueue queue:0 repeating:v61 block:v18];
        v52 = self->_retryAfterBackoffTimer;
        self->_retryAfterBackoffTimer = v51;
      }

      goto LABEL_32;
    }
  }

  if (v9)
  {
    goto LABEL_22;
  }

LABEL_28:
  [(MSPSharedTripIDSCapabilityFetchingQueue *)self _processPendingHandles];
  if (self->_retryAfterBackoffTimer)
  {
    v42 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = MEMORY[0x277CCACA8];
      v44 = self;
      v45 = [v43 stringWithFormat:@"%@<%p>", objc_opt_class(), v44];

      *buf = 138543362;
      v64 = v45;
      _os_log_impl(&dword_25813A000, v42, OS_LOG_TYPE_INFO, "[%{public}@] Got a callback while backing off, fire immediately to trigger updates for both services", buf, 0xCu);
    }

    [(GCDTimer *)self->_retryAfterBackoffTimer invalidate];
    [(MSPSharedTripIDSCapabilityFetchingQueue *)self _retryAfterBackoff];
  }

LABEL_32:

  v46 = *MEMORY[0x277D85DE8];
}

void __106__MSPSharedTripIDSCapabilityFetchingQueue_batchQueryController_updatedDestinationsStatus_onService_error___block_invoke_13(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 capabilityFetchingQueue:*(a1 + 32) didFetchStatusForHandles:*(a1 + 40)];
}

- (void)_retryAfterBackoff
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = self;
      v6 = [v4 stringWithFormat:@"%@<%p>", objc_opt_class(), v5];
    }

    else
    {
      v6 = @"<nil>";
    }

    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_INFO, "[%{public}@] retrying fetch in response to IDSBatchQueryController back-off", buf, 0xCu);
  }

  retryAfterBackoffTimer = self->_retryAfterBackoffTimer;
  self->_retryAfterBackoffTimer = 0;

  [(MSPSharedTripIDSCapabilityFetchingQueue *)self _processPendingHandles];
  v8 = *MEMORY[0x277D85DE8];
}

@end