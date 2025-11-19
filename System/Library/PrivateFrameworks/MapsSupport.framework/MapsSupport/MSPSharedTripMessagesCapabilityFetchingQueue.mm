@interface MSPSharedTripMessagesCapabilityFetchingQueue
- (MSPSharedTripMessagesCapabilityFetchingQueue)initWithDelegate:(id)a3 queue:(id)a4 label:(id)a5;
- (void)_fetchTextMessageReachability:(id)a3;
- (void)_notifyDelegateIfNeeded;
- (void)_notifyDelegateNow;
- (void)_processFetchedServiceName:(id)a3 forHandle:(id)a4 permittedServiceNames:(id)a5;
- (void)_processFetchedStatus:(id)a3 forHandle:(id)a4;
- (void)_processPendingHandles;
- (void)_resetAfterLastHandleFetched;
- (void)_resetIfNeeded;
- (void)_scheduleBatchDelayTimerWithInterval:(double)a3;
@end

@implementation MSPSharedTripMessagesCapabilityFetchingQueue

- (MSPSharedTripMessagesCapabilityFetchingQueue)initWithDelegate:(id)a3 queue:(id)a4 label:(id)a5
{
  v9.receiver = self;
  v9.super_class = MSPSharedTripMessagesCapabilityFetchingQueue;
  v5 = [(MSPSharedTripCapabilityFetchingQueue *)&v9 initWithDelegate:a3 queue:a4 label:a5];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    fetchedStatusesByHandle = v5->_fetchedStatusesByHandle;
    v5->_fetchedStatusesByHandle = v6;
  }

  return v5;
}

- (void)_processPendingHandles
{
  v22 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = MSPSharedTripMessagesCapabilityFetchingQueue;
  [(MSPSharedTripCapabilityFetchingQueue *)&v17 _processPendingHandles];
  v3 = [(MSPSharedTripCapabilityFetchingQueue *)self _pendingHandles];
  v4 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = self;
      v7 = [v5 stringWithFormat:@"%@<%p>", objc_opt_class(), v6];
    }

    else
    {
      v7 = @"<nil>";
    }

    v8 = [v3 count];
    *buf = 138543618;
    v19 = v7;
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "[%{public}@] requesting %lu Text Message handles from IDS", buf, 0x16u);
  }

  if ([v3 count])
  {
    if (!self->_batchSize)
    {
      if (GEOConfigGetUInteger())
      {
        UInteger = GEOConfigGetUInteger();
      }

      else
      {
        UInteger = 1;
      }

      self->_batchSize = UInteger;
      GEOConfigGetDouble();
      v10 = 0.0;
      v12 = v11 < 0.0;
      v13 = 0.0;
      if (!v12)
      {
        GEOConfigGetDouble();
      }

      self->_batchDelayInterval = v13;
      GEOConfigGetDouble();
      if (v14 >= 0.0)
      {
        GEOConfigGetDouble();
        v10 = v15;
      }

      [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _scheduleBatchDelayTimerWithInterval:v10];
    }

    [(MSPSharedTripCapabilityFetchingQueue *)self _markHandlesInflight:v3];
    [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _fetchTextMessageReachability:v3];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_fetchTextMessageReachability:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->super._workQueue);
  if ([v4 count])
  {
    v5 = objc_alloc(MEMORY[0x277CBEB58]);
    v6 = [v5 initWithObjects:{*MEMORY[0x277D1A620], *MEMORY[0x277D1A610], *MEMORY[0x277D1A608], 0}];
    if (GEOConfigGetBOOL())
    {
      [v6 addObject:*MEMORY[0x277D1A628]];
      [v6 addObject:*MEMORY[0x277D1A618]];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v25 = v4;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v32;
      v10 = v29;
      v11 = &unk_279866300;
      do
      {
        v12 = 0;
        v26 = v8;
        do
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v31 + 1) + 8 * v12);
          v14 = MSPGetSharedTripCapabilityFetchingLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = MEMORY[0x277CCACA8];
            v16 = self;
            v17 = v10;
            v18 = v9;
            v19 = self;
            v20 = v6;
            v21 = v11;
            v22 = v16;
            v23 = [v15 stringWithFormat:@"%@<%p>", objc_opt_class(), v16];

            v11 = v21;
            v6 = v20;
            self = v19;
            v9 = v18;
            v10 = v17;
            v8 = v26;
            *buf = 138543619;
            v36 = v23;
            v37 = 2113;
            v38 = v13;
            _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "[%{public}@] Will fetch best text service for %{private}@", buf, 0x16u);
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          v29[0] = __78__MSPSharedTripMessagesCapabilityFetchingQueue__fetchTextMessageReachability___block_invoke;
          v29[1] = v11;
          v29[2] = v13;
          v29[3] = self;
          v30 = v6;
          dispatch_async(MEMORY[0x277D85CD0], block);

          ++v12;
        }

        while (v8 != v12);
        v8 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v8);
    }

    v4 = v25;
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __78__MSPSharedTripMessagesCapabilityFetchingQueue__fetchTextMessageReachability___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = *(a1 + 32);
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v5 = *(a1 + 48);
  IMSPICalculateSendingServiceByDestinationsAndChatGUID();

  v3 = *MEMORY[0x277D85DE8];
}

void __78__MSPSharedTripMessagesCapabilityFetchingQueue__fetchTextMessageReachability___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = *(v7 + 16);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v19 = __78__MSPSharedTripMessagesCapabilityFetchingQueue__fetchTextMessageReachability___block_invoke_3;
  v20 = &unk_279865F98;
  v21 = v7;
  v9 = v5;
  v10 = a1[5];
  v11 = a1[6];
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v12 = v8;
  v13 = v18;
  label = dispatch_queue_get_label(v12);
  v15 = dispatch_queue_get_label(0);
  if (label == v15 || (label ? (v16 = v15 == 0) : (v16 = 1), !v16 && !strcmp(label, v15)))
  {
    v17 = objc_autoreleasePoolPush();
    v19(v13);
    objc_autoreleasePoolPop(v17);
  }

  else
  {
    dispatch_async(v12, v13);
  }
}

- (void)_processFetchedServiceName:(id)a3 forHandle:(id)a4 permittedServiceNames:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->super._workQueue);
  if ([(MSPCountedOrderedSet *)self->super._requestedHandles containsObject:v9])
  {
    v11 = [MEMORY[0x277CBEB98] setWithObject:v9];
    [(MSPSharedTripCapabilityFetchingQueue *)self _updateRequestedHandlesWithAdditions:0 subtractions:v11];

    v12 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = self;
      v15 = [v13 stringWithFormat:@"%@<%p>", objc_opt_class(), v14];

      *buf = 138543875;
      v33 = v15;
      v34 = 2114;
      v35 = v8;
      v36 = 2113;
      v37 = v9;
      _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_INFO, "[%{public}@] Fetched service %{public}@ for %{private}@", buf, 0x20u);
    }

    if ([v10 containsObject:v8])
    {
      if (v8)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (([v8 isEqualToString:*MEMORY[0x277D1A620]] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277D1A628]))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v26 = [MSPSharedTripFetchedCapabilityStatus alloc];
      v27 = v17;
      v28 = v8;
      v29 = v16;
    }

    else
    {
      v22 = MSPGetSharedTripCapabilityFetchingLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = MEMORY[0x277CCACA8];
        v24 = self;
        v25 = [v23 stringWithFormat:@"%@<%p>", objc_opt_class(), v24];

        *buf = 138543618;
        v33 = v25;
        v34 = 2114;
        v35 = v8;
        _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_INFO, "[%{public}@] - %{public}@ not permitted for Share ETA", buf, 0x16u);
      }

      v26 = [MSPSharedTripFetchedCapabilityStatus alloc];
      v27 = 2;
      v28 = 0;
      v29 = 2;
    }

    v30 = [(MSPSharedTripFetchedCapabilityStatus *)v26 initWithCapabilityType:v27 serviceName:v28 status:v29];
    [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _processFetchedStatus:v30 forHandle:v9];
  }

  else
  {
    v18 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = self;
      v21 = [v19 stringWithFormat:@"%@<%p>", objc_opt_class(), v20];

      *buf = 138543875;
      v33 = v21;
      v34 = 2114;
      v35 = v8;
      v36 = 2113;
      v37 = v9;
      _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_INFO, "[%{public}@] Fetched service %{public}@ for %{private}@, but it was no longer in fetch queue, dropping", buf, 0x20u);
    }

    [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _resetIfNeeded];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_processFetchedStatus:(id)a3 forHandle:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->super._workQueue);
  if (v7)
  {
    v8 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = self;
      v11 = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), v10];

      *buf = 138543875;
      v14 = v11;
      v15 = 2113;
      v16 = v7;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_INFO, "[%{public}@] Fetched %{private}@: %{public}@@", buf, 0x20u);
    }

    [(NSMutableDictionary *)self->_fetchedStatusesByHandle setObject:v6 forKeyedSubscript:v7];
    [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _notifyDelegateIfNeeded];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateIfNeeded
{
  v30 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->super._workQueue);
  v3 = [(NSMutableDictionary *)self->_fetchedStatusesByHandle count];
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v3;
  if (![(NSMutableOrderedSet *)self->super._inflightHandles count])
  {
    v13 = MSPGetSharedTripCapabilityFetchingLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v14 = MEMORY[0x277CCACA8];
    v15 = self;
    v16 = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), v15];

    *buf = 138543362;
    v27 = v16;
    v17 = "[%{public}@] Will notify delegate, no more handles in-flight";
LABEL_12:
    v20 = v13;
    v21 = 12;
LABEL_15:
    _os_log_impl(&dword_25813A000, v20, OS_LOG_TYPE_INFO, v17, buf, v21);

    goto LABEL_16;
  }

  batchDelayTimer = self->_batchDelayTimer;
  if (!batchDelayTimer)
  {
    v13 = MSPGetSharedTripCapabilityFetchingLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = self;
    v16 = [v18 stringWithFormat:@"%@<%p>", objc_opt_class(), v19];

    *buf = 138543362;
    v27 = v16;
    v17 = "[%{public}@] Will notify delegate, no delay timer";
    goto LABEL_12;
  }

  if (v4 >= self->_batchSize)
  {
    v13 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v22 = MEMORY[0x277CCACA8];
      v23 = self;
      v16 = [v22 stringWithFormat:@"%@<%p>", objc_opt_class(), v23];

      batchSize = self->_batchSize;
      *buf = 138543618;
      v27 = v16;
      v28 = 2048;
      v29 = batchSize;
      v17 = "[%{public}@] Will notify delegate, batch reached %lu items";
      v20 = v13;
      v21 = 22;
      goto LABEL_15;
    }

LABEL_16:

    [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _notifyDelegateNow];
    goto LABEL_17;
  }

  v6 = [(GCDTimer *)batchDelayTimer fireDate];
  [v6 timeIntervalSinceNow];
  v8 = v7;

  v9 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = self;
    v12 = [v10 stringWithFormat:@"%@<%p>", objc_opt_class(), v11];

    *buf = 138543618;
    v27 = v12;
    v28 = 2048;
    v29 = v8;
    _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "[%{public}@] Cannot notify delegate, %lfs remaining until permitted", buf, 0x16u);
  }

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateNow
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->super._workQueue);
  v3 = [(NSMutableDictionary *)self->_fetchedStatusesByHandle copy];
  if ([v3 count])
  {
    [(NSMutableDictionary *)self->_fetchedStatusesByHandle removeAllObjects];
    v4 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = self;
      v7 = [v5 stringWithFormat:@"%@<%p>", objc_opt_class(), v6];

      *buf = 138543619;
      v13 = v7;
      v14 = 2113;
      v15 = v3;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "[%{public}@] Notifying: %{private}@", buf, 0x16u);
    }

    callbackQueue = self->super._callbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__MSPSharedTripMessagesCapabilityFetchingQueue__notifyDelegateNow__block_invoke;
    block[3] = &unk_279865EF8;
    block[4] = self;
    v11 = v3;
    dispatch_async(callbackQueue, block);
    [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _scheduleBatchDelayTimerWithInterval:self->_batchDelayInterval];
  }

  [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _resetIfNeeded];

  v9 = *MEMORY[0x277D85DE8];
}

void __66__MSPSharedTripMessagesCapabilityFetchingQueue__notifyDelegateNow__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 capabilityFetchingQueue:*(a1 + 32) didFetchStatusForHandles:*(a1 + 40)];
}

- (void)_scheduleBatchDelayTimerWithInterval:(double)a3
{
  v21 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->super._workQueue);
  batchDelayTimer = self->_batchDelayTimer;
  if (batchDelayTimer)
  {
    [(GCDTimer *)batchDelayTimer invalidate];
    v6 = self->_batchDelayTimer;
    self->_batchDelayTimer = 0;
  }

  if (a3 >= 0.0)
  {
    v7 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = self;
      v10 = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), v9];

      *buf = 138543618;
      v18 = v10;
      v19 = 2048;
      v20 = a3;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "[%{public}@] Scheduling batch delay for %.3lfs", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    workQueue = self->super._workQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __85__MSPSharedTripMessagesCapabilityFetchingQueue__scheduleBatchDelayTimerWithInterval___block_invoke;
    v15[3] = &unk_279866328;
    objc_copyWeak(&v16, buf);
    v15[4] = self;
    v12 = [GCDTimer scheduledTimerWithTimeInterval:workQueue queue:0 repeating:v15 block:a3];
    v13 = self->_batchDelayTimer;
    self->_batchDelayTimer = v12;

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __85__MSPSharedTripMessagesCapabilityFetchingQueue__scheduleBatchDelayTimerWithInterval___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        v5 = MEMORY[0x277CCACA8];
        v6 = v4;
        v7 = [v5 stringWithFormat:@"%@<%p>", objc_opt_class(), v6];
      }

      else
      {
        v7 = @"<nil>";
      }

      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_INFO, "[%{public}@] Batch delay timer fired", buf, 0xCu);
    }

    v10 = WeakRetained[9];
    WeakRetained[9] = 0;

    [WeakRetained _notifyDelegateIfNeeded];
  }

  else
  {
    v8 = *MEMORY[0x277D0E798];
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[MSPSharedTripMessagesCapabilityFetchingQueue _scheduleBatchDelayTimerWithInterval:]_block_invoke";
      v14 = 1024;
      v15 = 224;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_resetIfNeeded
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->super._workQueue);
  if (![(NSMutableOrderedSet *)self->super._inflightHandles count]&& (self->_batchSize || self->_batchDelayTimer))
  {
    v3 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = self;
      v6 = [v4 stringWithFormat:@"%@<%p>", objc_opt_class(), v5];

      *buf = 138543362;
      v9 = v6;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] No more in-flight handles, resetting flags and clearing batch delay timer", buf, 0xCu);
    }

    [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _resetAfterLastHandleFetched];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_resetAfterLastHandleFetched
{
  dispatch_assert_queue_V2(self->super._workQueue);
  self->_batchSize = 0;
  self->_batchDelayInterval = -1.0;
  batchDelayTimer = self->_batchDelayTimer;
  self->_batchDelayTimer = 0;
}

@end