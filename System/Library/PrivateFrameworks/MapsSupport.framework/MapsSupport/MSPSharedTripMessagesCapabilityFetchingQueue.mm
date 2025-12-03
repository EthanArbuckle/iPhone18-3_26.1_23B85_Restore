@interface MSPSharedTripMessagesCapabilityFetchingQueue
- (MSPSharedTripMessagesCapabilityFetchingQueue)initWithDelegate:(id)delegate queue:(id)queue label:(id)label;
- (void)_fetchTextMessageReachability:(id)reachability;
- (void)_notifyDelegateIfNeeded;
- (void)_notifyDelegateNow;
- (void)_processFetchedServiceName:(id)name forHandle:(id)handle permittedServiceNames:(id)names;
- (void)_processFetchedStatus:(id)status forHandle:(id)handle;
- (void)_processPendingHandles;
- (void)_resetAfterLastHandleFetched;
- (void)_resetIfNeeded;
- (void)_scheduleBatchDelayTimerWithInterval:(double)interval;
@end

@implementation MSPSharedTripMessagesCapabilityFetchingQueue

- (MSPSharedTripMessagesCapabilityFetchingQueue)initWithDelegate:(id)delegate queue:(id)queue label:(id)label
{
  v9.receiver = self;
  v9.super_class = MSPSharedTripMessagesCapabilityFetchingQueue;
  v5 = [(MSPSharedTripCapabilityFetchingQueue *)&v9 initWithDelegate:delegate queue:queue label:label];
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
  _pendingHandles = [(MSPSharedTripCapabilityFetchingQueue *)self _pendingHandles];
  v4 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v5 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v5 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    v8 = [_pendingHandles count];
    *buf = 138543618;
    v19 = selfCopy;
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "[%{public}@] requesting %lu Text Message handles from IDS", buf, 0x16u);
  }

  if ([_pendingHandles count])
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

    [(MSPSharedTripCapabilityFetchingQueue *)self _markHandlesInflight:_pendingHandles];
    [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _fetchTextMessageReachability:_pendingHandles];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_fetchTextMessageReachability:(id)reachability
{
  v40 = *MEMORY[0x277D85DE8];
  reachabilityCopy = reachability;
  dispatch_assert_queue_V2(self->super._workQueue);
  if ([reachabilityCopy count])
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
    v25 = reachabilityCopy;
    obj = reachabilityCopy;
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
            selfCopy = self;
            v17 = v10;
            v18 = v9;
            selfCopy2 = self;
            v20 = v6;
            v21 = v11;
            v22 = selfCopy;
            selfCopy = [v15 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

            v11 = v21;
            v6 = v20;
            self = selfCopy2;
            v9 = v18;
            v10 = v17;
            v8 = v26;
            *buf = 138543619;
            v36 = selfCopy;
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

    reachabilityCopy = v25;
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

- (void)_processFetchedServiceName:(id)name forHandle:(id)handle permittedServiceNames:(id)names
{
  v38 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handleCopy = handle;
  namesCopy = names;
  dispatch_assert_queue_V2(self->super._workQueue);
  if ([(MSPCountedOrderedSet *)self->super._requestedHandles containsObject:handleCopy])
  {
    v11 = [MEMORY[0x277CBEB98] setWithObject:handleCopy];
    [(MSPSharedTripCapabilityFetchingQueue *)self _updateRequestedHandlesWithAdditions:0 subtractions:v11];

    v12 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v13 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

      *buf = 138543875;
      v33 = selfCopy;
      v34 = 2114;
      v35 = nameCopy;
      v36 = 2113;
      v37 = handleCopy;
      _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_INFO, "[%{public}@] Fetched service %{public}@ for %{private}@", buf, 0x20u);
    }

    if ([namesCopy containsObject:nameCopy])
    {
      if (nameCopy)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (([nameCopy isEqualToString:*MEMORY[0x277D1A620]] & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", *MEMORY[0x277D1A628]))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v26 = [MSPSharedTripFetchedCapabilityStatus alloc];
      v27 = v17;
      v28 = nameCopy;
      v29 = v16;
    }

    else
    {
      v22 = MSPGetSharedTripCapabilityFetchingLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = MEMORY[0x277CCACA8];
        selfCopy2 = self;
        selfCopy2 = [v23 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

        *buf = 138543618;
        v33 = selfCopy2;
        v34 = 2114;
        v35 = nameCopy;
        _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_INFO, "[%{public}@] - %{public}@ not permitted for Share ETA", buf, 0x16u);
      }

      v26 = [MSPSharedTripFetchedCapabilityStatus alloc];
      v27 = 2;
      v28 = 0;
      v29 = 2;
    }

    v30 = [(MSPSharedTripFetchedCapabilityStatus *)v26 initWithCapabilityType:v27 serviceName:v28 status:v29];
    [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _processFetchedStatus:v30 forHandle:handleCopy];
  }

  else
  {
    v18 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = MEMORY[0x277CCACA8];
      selfCopy3 = self;
      selfCopy3 = [v19 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy3];

      *buf = 138543875;
      v33 = selfCopy3;
      v34 = 2114;
      v35 = nameCopy;
      v36 = 2113;
      v37 = handleCopy;
      _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_INFO, "[%{public}@] Fetched service %{public}@ for %{private}@, but it was no longer in fetch queue, dropping", buf, 0x20u);
    }

    [(MSPSharedTripMessagesCapabilityFetchingQueue *)self _resetIfNeeded];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_processFetchedStatus:(id)status forHandle:(id)handle
{
  v19 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  handleCopy = handle;
  dispatch_assert_queue_V2(self->super._workQueue);
  if (handleCopy)
  {
    v8 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

      *buf = 138543875;
      v14 = selfCopy;
      v15 = 2113;
      v16 = handleCopy;
      v17 = 2114;
      v18 = statusCopy;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_INFO, "[%{public}@] Fetched %{private}@: %{public}@@", buf, 0x20u);
    }

    [(NSMutableDictionary *)self->_fetchedStatusesByHandle setObject:statusCopy forKeyedSubscript:handleCopy];
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
    selfCopy = self;
    selfCopy = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

    *buf = 138543362;
    v27 = selfCopy;
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
    selfCopy2 = self;
    selfCopy = [v18 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

    *buf = 138543362;
    v27 = selfCopy;
    v17 = "[%{public}@] Will notify delegate, no delay timer";
    goto LABEL_12;
  }

  if (v4 >= self->_batchSize)
  {
    v13 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v22 = MEMORY[0x277CCACA8];
      selfCopy3 = self;
      selfCopy = [v22 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy3];

      batchSize = self->_batchSize;
      *buf = 138543618;
      v27 = selfCopy;
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

  fireDate = [(GCDTimer *)batchDelayTimer fireDate];
  [fireDate timeIntervalSinceNow];
  v8 = v7;

  v9 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = MEMORY[0x277CCACA8];
    selfCopy4 = self;
    selfCopy4 = [v10 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy4];

    *buf = 138543618;
    v27 = selfCopy4;
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
      selfCopy = self;
      selfCopy = [v5 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

      *buf = 138543619;
      v13 = selfCopy;
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

- (void)_scheduleBatchDelayTimerWithInterval:(double)interval
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

  if (interval >= 0.0)
  {
    v7 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

      *buf = 138543618;
      v18 = selfCopy;
      v19 = 2048;
      intervalCopy = interval;
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
    v12 = [GCDTimer scheduledTimerWithTimeInterval:workQueue queue:0 repeating:v15 block:interval];
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
      selfCopy = self;
      selfCopy = [v4 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

      *buf = 138543362;
      v9 = selfCopy;
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