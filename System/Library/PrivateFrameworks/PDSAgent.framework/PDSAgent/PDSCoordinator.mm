@interface PDSCoordinator
- (BOOL)_disabledForAnyReason;
- (BOOL)_entries:(id)_entries includeState:(unsigned __int8)state;
- (BOOL)_lastPushTokenDiffersFrom:(id)from;
- (BOOL)_lastSandboxPushTokenDiffersFrom:(id)from;
- (BOOL)_matchingEntryExistsFor:(id)for inStore:(id)store;
- (BOOL)shouldScheduleHeartbeatForTracker:(id)tracker;
- (CUTDeferredTaskQueue)processDeferredTaskQueue;
- (PDSCoordinator)initWithQueue:(id)queue serverBag:(id)bag requestQueue:(id)requestQueue kvStoreBlock:(id)block entryStoreBlock:(id)storeBlock pushTokenBlock:(id)tokenBlock systemMonitor:(id)monitor pushHandler:(id)self0;
- (double)_timeToDelayRequestForTopics:(id)topics;
- (int64_t)ttlForRequest:(id)request;
- (unint64_t)_lastRequestHash;
- (void)_bagReloaded:(id)reloaded;
- (void)_comparePushTokensWithEntryStore:(id)store;
- (void)_markLastRequest:(id)request;
- (void)_markPushToken:(id)token;
- (void)_markSandboxPushToken:(id)token;
- (void)_processEntryStore;
- (void)_updateEntriesForResponse:(id)response fromRequest:(id)request;
- (void)_updateOrDeleteEntry:(id)entry inStore:(id)store;
- (void)dealloc;
- (void)entryStore:(id)store didUpdatePendingTopics:(id)topics forceImmediateUpdate:(BOOL)update;
- (void)handler:(id)handler pushTokenChanged:(id)changed;
- (void)registerIfNeeded;
- (void)requestQueue:(id)queue processedRequest:(id)request withResponse:(id)response;
- (void)systemDidLeaveFirstDataProtectionLock;
@end

@implementation PDSCoordinator

- (PDSCoordinator)initWithQueue:(id)queue serverBag:(id)bag requestQueue:(id)requestQueue kvStoreBlock:(id)block entryStoreBlock:(id)storeBlock pushTokenBlock:(id)tokenBlock systemMonitor:(id)monitor pushHandler:(id)self0
{
  queueCopy = queue;
  bagCopy = bag;
  bagCopy2 = bag;
  requestQueueCopy = requestQueue;
  requestQueueCopy2 = requestQueue;
  blockCopy = block;
  storeBlockCopy = storeBlock;
  tokenBlockCopy = tokenBlock;
  v22 = queueCopy;
  monitorCopy = monitor;
  v45 = v22;
  handlerCopy = handler;
  if (!v22)
  {
    [PDSCoordinator initWithQueue:serverBag:requestQueue:kvStoreBlock:entryStoreBlock:pushTokenBlock:systemMonitor:pushHandler:];
  }

  v24 = bagCopy2;
  if (!bagCopy2)
  {
    [PDSCoordinator initWithQueue:serverBag:requestQueue:kvStoreBlock:entryStoreBlock:pushTokenBlock:systemMonitor:pushHandler:];
  }

  if (requestQueueCopy2)
  {
    if (blockCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [PDSCoordinator initWithQueue:serverBag:requestQueue:kvStoreBlock:entryStoreBlock:pushTokenBlock:systemMonitor:pushHandler:];
    if (blockCopy)
    {
LABEL_7:
      if (storeBlockCopy)
      {
        goto LABEL_8;
      }

LABEL_14:
      [PDSCoordinator initWithQueue:serverBag:requestQueue:kvStoreBlock:entryStoreBlock:pushTokenBlock:systemMonitor:pushHandler:];
      if (tokenBlockCopy)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  [PDSCoordinator initWithQueue:serverBag:requestQueue:kvStoreBlock:entryStoreBlock:pushTokenBlock:systemMonitor:pushHandler:];
  if (!storeBlockCopy)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (tokenBlockCopy)
  {
    goto LABEL_9;
  }

LABEL_15:
  [PDSCoordinator initWithQueue:serverBag:requestQueue:kvStoreBlock:entryStoreBlock:pushTokenBlock:systemMonitor:pushHandler:];
LABEL_9:
  v47.receiver = self;
  v47.super_class = PDSCoordinator;
  v25 = [(PDSCoordinator *)&v47 init];
  v26 = v25;
  v27 = monitorCopy;
  v28 = storeBlockCopy;
  v29 = blockCopy;
  if (v25)
  {
    objc_storeStrong(&v25->_queue, queue);
    objc_storeStrong(&v26->_serverBag, bagCopy);
    objc_storeStrong(&v26->_requestQueue, requestQueueCopy);
    [(PDSRequestQueue *)v26->_requestQueue setDelegate:v26];
    v30 = MEMORY[0x25F8A7090](blockCopy);
    kvStoreBlock = v26->_kvStoreBlock;
    v26->_kvStoreBlock = v30;

    v32 = MEMORY[0x25F8A7090](v28);
    entryStoreBlock = v26->_entryStoreBlock;
    v26->_entryStoreBlock = v32;

    v34 = MEMORY[0x25F8A7090](tokenBlockCopy);
    pushTokenBlock = v26->_pushTokenBlock;
    v26->_pushTokenBlock = v34;

    *&v26->_requestPending = 0;
    v26->_tokenChanged = 0;
    v26->_bagLoadRetries = 0;
    objc_storeStrong(&v26->_pushHandler, handler);
    [(IDSPushHandler *)v26->_pushHandler addListener:v26 topics:0 commands:0 queue:v26->_queue];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v26 selector:sel__bagReloaded_ name:*MEMORY[0x277D18930] object:v24];

    [v27 addListener:v26];
    v37 = [PDSHeartbeatTracker alloc];
    queue = [(PDSCoordinator *)v26 queue];
    v39 = [(PDSHeartbeatTracker *)v37 initWithDelegate:v26 queue:queue kvStoreBlock:v29 serverBag:v24];
    heartbeatTracker = v26->_heartbeatTracker;
    v26->_heartbeatTracker = v39;
  }

  return v26;
}

- (void)dealloc
{
  [(IDSPushHandler *)self->_pushHandler removeListener:self];
  v3.receiver = self;
  v3.super_class = PDSCoordinator;
  [(PDSCoordinator *)&v3 dealloc];
}

- (void)registerIfNeeded
{
  v3 = pds_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25DED8000, v3, OS_LOG_TYPE_DEFAULT, "Registering if needed.", buf, 2u);
  }

  entryStoreBlock = [(PDSCoordinator *)self entryStoreBlock];
  v5 = entryStoreBlock[2]();

  if (v5)
  {
    [(PDSCoordinator *)self _comparePushTokensWithEntryStore:v5];
    [(PDSCoordinator *)self entryStore:v5 didUpdatePendingTopics:MEMORY[0x277CBEBF8] forceImmediateUpdate:1];
  }

  else
  {
    v6 = pds_defaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25DED8000, v6, OS_LOG_TYPE_DEFAULT, "EntryStore is nil! aborting", v7, 2u);
    }
  }
}

- (void)entryStore:(id)store didUpdatePendingTopics:(id)topics forceImmediateUpdate:(BOOL)update
{
  topicsCopy = topics;
  if (![(PDSCoordinator *)self _disabledForAnyReason])
  {
    [(PDSCoordinator *)self setRequestPending:1];
    v7 = 0.0;
    if (!update)
    {
      [(PDSCoordinator *)self _timeToDelayRequestForTopics:topicsCopy];
      v7 = v8;
    }

    processDeferredTaskQueue = [(PDSCoordinator *)self processDeferredTaskQueue];
    [processDeferredTaskQueue enqueueExecutionWithTarget:self afterDelay:v7];
  }
}

- (void)requestQueue:(id)queue processedRequest:(id)request withResponse:(id)response
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  responseCopy = response;
  v9 = pds_defaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = responseCopy;
    _os_log_impl(&dword_25DED8000, v9, OS_LOG_TYPE_DEFAULT, "Received PDS registration response: %@", &v26, 0xCu);
  }

  if ([responseCopy status])
  {
    v10 = pds_defaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      status = [responseCopy status];
      v26 = 134217984;
      v27 = status;
      _os_log_impl(&dword_25DED8000, v10, OS_LOG_TYPE_DEFAULT, "Bad response status: %ld", &v26, 0xCu);
    }

    status2 = [responseCopy status];
    v13 = pds_defaultLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (status2 <= 6004)
    {
      if (status2 == 6001)
      {
        if (v14)
        {
          LOWORD(v26) = 0;
          v15 = "FTResponseActionDoNotRetry: Not retrying request";
          goto LABEL_27;
        }

LABEL_29:

        goto LABEL_30;
      }

      if (status2 == 6002)
      {
        if (v14)
        {
          LOWORD(v26) = 0;
          v15 = "FTResponseActionRetryWithDelay";
LABEL_27:
          v23 = v13;
          v24 = 2;
          goto LABEL_28;
        }

        goto LABEL_29;
      }

LABEL_21:
      if (v14)
      {
        status3 = [responseCopy status];
        v26 = 134217984;
        v27 = status3;
        v15 = "Unhandled response status: %ld";
        v23 = v13;
        v24 = 12;
LABEL_28:
        _os_log_impl(&dword_25DED8000, v23, OS_LOG_TYPE_DEFAULT, v15, &v26, v24);
        goto LABEL_29;
      }

      goto LABEL_29;
    }

    if (status2 == 6005)
    {
      if (v14)
      {
        LOWORD(v26) = 0;
        v15 = "FTResponseActionRefreshCredentials";
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    if (status2 != 6009)
    {
      goto LABEL_21;
    }

    if (v14)
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_25DED8000, v13, OS_LOG_TYPE_DEFAULT, "FTResponseActionPermanentFailure: Permanently disabling", &v26, 2u);
    }

    self->_disabled = 1;
  }

  else
  {
    v16 = [responseCopy ttl];
    serverBag = [(PDSCoordinator *)self serverBag];
    ttlFromBag = [serverBag ttlFromBag];

    if (v16 > ttlFromBag)
    {
      serverBag2 = [(PDSCoordinator *)self serverBag];
      [serverBag2 ttlFromBag];

      v20 = pds_defaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PDSCoordinator requestQueue:responseCopy processedRequest:self withResponse:v20];
      }
    }

    [(PDSCoordinator *)self _updateEntriesForResponse:responseCopy fromRequest:requestCopy];
    heartbeatTracker = [(PDSCoordinator *)self heartbeatTracker];
    [heartbeatTracker noteUpdatedHeartbeatTTL:{objc_msgSend(responseCopy, "ttl")}];
  }

LABEL_30:

  v25 = *MEMORY[0x277D85DE8];
}

- (int64_t)ttlForRequest:(id)request
{
  serverBag = [(PDSCoordinator *)self serverBag];
  ttlFromBag = [serverBag ttlFromBag];

  return ttlFromBag;
}

- (void)_processEntryStore
{
  v75 = *MEMORY[0x277D85DE8];
  pendingRequestDate = self->_pendingRequestDate;
  self->_pendingRequestDate = 0;

  self->_requestPending = 0;
  entryStoreBlock = [(PDSCoordinator *)self entryStoreBlock];
  v5 = entryStoreBlock[2]();

  if (!v5)
  {
    entries = pds_defaultLog();
    if (!os_log_type_enabled(entries, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_71;
    }

    *buf = 0;
    v10 = "EntryStore is nil! aborting";
LABEL_31:
    _os_log_impl(&dword_25DED8000, entries, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    goto LABEL_71;
  }

  hasPendingEntries = [v5 hasPendingEntries];
  if ([v5 hasActiveEntries])
  {
    heartbeatTracker = [(PDSCoordinator *)self heartbeatTracker];
    LODWORD(v8) = [heartbeatTracker isPassedTrackedHeartbeatDate];
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v11 = pds_defaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    if (hasPendingEntries)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    if (v8)
    {
      v12 = @"YES";
    }

    *buf = 138412546;
    v72 = v13;
    v73 = 2112;
    v74 = v12;
    _os_log_impl(&dword_25DED8000, v11, OS_LOG_TYPE_DEFAULT, "processEntryStore: shouldRegister %@ shouldHeartbeat %@", buf, 0x16u);
  }

  if ((v8 & 1) == 0)
  {
    v14 = pds_defaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DED8000, v14, OS_LOG_TYPE_DEFAULT, "No heartbeat currently needed", buf, 2u);
    }

    heartbeatTracker2 = [(PDSCoordinator *)self heartbeatTracker];
    [heartbeatTracker2 noteShouldTrackHeartbeat];

    if ((hasPendingEntries & 1) == 0)
    {
      entries = pds_defaultLog();
      if (!os_log_type_enabled(entries, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_71;
      }

      *buf = 0;
      v10 = "No pending entries: not registering";
      goto LABEL_31;
    }
  }

  serverBag = [(PDSCoordinator *)self serverBag];
  isLoaded = [serverBag isLoaded];

  if ((isLoaded & 1) == 0)
  {
    v25 = pds_defaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DED8000, v25, OS_LOG_TYPE_DEFAULT, "PDS Bag isn't loaded yet! Aborting.", buf, 2u);
    }

    serverBag2 = [(PDSCoordinator *)self serverBag];
    isLoading = [serverBag2 isLoading];

    if ((isLoading & 1) == 0)
    {
      serverBag3 = [(PDSCoordinator *)self serverBag];
      [serverBag3 startBagLoad];
    }

    v21 = objc_alloc(MEMORY[0x277D18A50]);
    heartbeatTracker3 = [(PDSCoordinator *)self heartbeatTracker];
    trackedHeartbeatDate = [heartbeatTracker3 trackedHeartbeatDate];
    v24 = @"Bag not loaded";
    goto LABEL_28;
  }

  mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
  isUnderFirstDataProtectionLock = [mEMORY[0x277D192A8] isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
  {
    v20 = pds_defaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DED8000, v20, OS_LOG_TYPE_DEFAULT, "System is before first unlock. Aborting.", buf, 2u);
    }

    v21 = objc_alloc(MEMORY[0x277D18A50]);
    heartbeatTracker3 = [(PDSCoordinator *)self heartbeatTracker];
    trackedHeartbeatDate = [heartbeatTracker3 trackedHeartbeatDate];
    v24 = @"Before first unlock";
LABEL_28:
    entries = [v21 initWithFailureReason:v24 registrationReason:&unk_286FBBB70 heartbeatDate:trackedHeartbeatDate];

    defaultLogger = [MEMORY[0x277D189A0] defaultLogger];
    [defaultLogger logMetric:entries];

    goto LABEL_71;
  }

  entries = [v5 entries];
  if (entries)
  {
    v30 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:entries];
  }

  else
  {
    v30 = [MEMORY[0x277CBEB98] set];
  }

  v31 = v30;
  v8 = v8;
  if (hasPendingEntries)
  {
    v32 = v30;
    if ([(PDSCoordinator *)self _entries:entries includeState:1])
    {
      v33 = v8 | 2;
    }

    else
    {
      v33 = v8;
    }

    if ([(PDSCoordinator *)self _entries:entries includeState:2])
    {
      v8 = v33 | 4;
    }

    else
    {
      v8 = v33;
    }

    v31 = v32;
  }

  if ([(PDSCoordinator *)self tokenChanged])
  {
    v8 |= 8uLL;
    [(PDSCoordinator *)self setTokenChanged:0];
  }

  else if (!v8)
  {
    v34 = pds_defaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      [(PDSCoordinator *)v34 _processEntryStore];
    }

    v8 = 0;
  }

  v35 = [PDSRequestInfo alloc];
  heartbeatTracker4 = [(PDSCoordinator *)self heartbeatTracker];
  trackedHeartbeatDate2 = [heartbeatTracker4 trackedHeartbeatDate];
  v38 = [(PDSRequestInfo *)v35 initWithRegistrationReason:v8 nextHeartbeatDate:trackedHeartbeatDate2];

  v39 = [[PDSRequest alloc] initWithEntries:v31 requestInfo:v38];
  if (v39)
  {
    v40 = [(PDSCoordinator *)self _requestMatchesPreviousRequest:v39];
    v41 = pds_defaultLog();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    if (v40)
    {
      if (v42)
      {
        *buf = 0;
        _os_log_impl(&dword_25DED8000, v41, OS_LOG_TYPE_DEFAULT, "PDS-SANITY-CHECK: DUPLICATE REQUEST DETECTED", buf, 2u);
      }

      v43 = pds_defaultLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        heartbeatTracker5 = [(PDSCoordinator *)self heartbeatTracker];
        trackedHeartbeatDate3 = [heartbeatTracker5 trackedHeartbeatDate];
        *buf = 138412290;
        v72 = trackedHeartbeatDate3;
        _os_log_impl(&dword_25DED8000, v43, OS_LOG_TYPE_DEFAULT, "Next Checkpoint Time: %@", buf, 0xCu);
      }

      v65 = v5;

      v46 = pds_defaultLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = MEMORY[0x277CCABB0];
        serverBag4 = [(PDSCoordinator *)self serverBag];
        v49 = [v47 numberWithInteger:{objc_msgSend(serverBag4, "ttlWindowFromBag")}];
        *buf = 138412290;
        v72 = v49;
        _os_log_impl(&dword_25DED8000, v46, OS_LOG_TYPE_DEFAULT, "TTL Window: %@", buf, 0xCu);
      }

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v41 = entries;
      v50 = [v41 countByEnumeratingWithState:&v66 objects:v70 count:16];
      if (v50)
      {
        v51 = v50;
        v62 = v39;
        v63 = v38;
        v64 = v31;
        v52 = *v67;
        do
        {
          for (i = 0; i != v51; ++i)
          {
            if (*v67 != v52)
            {
              objc_enumerationMutation(v41);
            }

            v54 = *(*(&v66 + 1) + 8 * i);
            v55 = pds_defaultLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v72 = v54;
              _os_log_impl(&dword_25DED8000, v55, OS_LOG_TYPE_DEFAULT, "Entry-: %@", buf, 0xCu);
            }
          }

          v51 = [v41 countByEnumeratingWithState:&v66 objects:v70 count:16];
        }

        while (v51);
        v5 = v65;
        v38 = v63;
        v31 = v64;
        v39 = v62;
      }
    }

    else if (v42)
    {
      *buf = 0;
      _os_log_impl(&dword_25DED8000, v41, OS_LOG_TYPE_DEFAULT, "PDS-SANITY-CHECK: UNIQUE REQUEST", buf, 2u);
    }

    [(PDSCoordinator *)self _markLastRequest:v39];
    serverBag5 = [(PDSCoordinator *)self serverBag];
    [serverBag5 messageTimeoutFromBag];
    v58 = v57;
    requestQueue = [(PDSCoordinator *)self requestQueue];
    [requestQueue setMessageTimeout:v58];

    requestQueue2 = [(PDSCoordinator *)self requestQueue];
    [requestQueue2 enqueueRequest:v39];
  }

LABEL_71:
  v61 = *MEMORY[0x277D85DE8];
}

- (void)_updateEntriesForResponse:(id)response fromRequest:(id)request
{
  v44 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  requestCopy = request;
  entryStoreBlock = [(PDSCoordinator *)self entryStoreBlock];
  v9 = entryStoreBlock[2]();

  if (v9)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    entries = [requestCopy entries];
    v11 = [entries countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v11)
    {
      v12 = v11;
      v31 = requestCopy;
      v13 = *v35;
      v32 = responseCopy;
      obj = entries;
      while (1)
      {
        v14 = 0;
        do
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * v14);
          user = [v15 user];
          statusByUser = [responseCopy statusByUser];
          v18 = [statusByUser objectForKey:user];

          if (!v18)
          {
            v21 = pds_defaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v40 = user;
              v22 = v21;
              v23 = "User status not included in response: user: %@";
              v24 = 12;
LABEL_13:
              _os_log_impl(&dword_25DED8000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
            }

LABEL_14:

            goto LABEL_15;
          }

          integerValue = [v18 integerValue];
          if (integerValue)
          {
            v20 = integerValue;
            v21 = pds_defaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v40 = user;
              v41 = 2048;
              v42 = v20;
              v22 = v21;
              v23 = "Bad user status: user: %@ status: %ld";
              v24 = 22;
              goto LABEL_13;
            }

            goto LABEL_14;
          }

          if ([(PDSCoordinator *)self _matchingEntryExistsFor:v15 inStore:v9])
          {
            [(PDSCoordinator *)self _updateOrDeleteEntry:v15 inStore:v9];
          }

          else
          {
            v25 = pds_defaultLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v40 = v15;
              _os_log_impl(&dword_25DED8000, v25, OS_LOG_TYPE_DEFAULT, "State has changed mid-update for entry: %@", buf, 0xCu);
            }

            registration = [v15 registration];
            topicString = [registration topicString];
            v38 = topicString;
            v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
            [(PDSCoordinator *)self entryStore:v9 didUpdatePendingTopics:v28 forceImmediateUpdate:1];

            responseCopy = v32;
          }

LABEL_15:

          ++v14;
        }

        while (v12 != v14);
        entries = obj;
        v29 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
        v12 = v29;
        if (!v29)
        {
          requestCopy = v31;
          break;
        }
      }
    }
  }

  else
  {
    entries = pds_defaultLog();
    if (os_log_type_enabled(entries, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DED8000, entries, OS_LOG_TYPE_DEFAULT, "EntryStore is nil! aborting", buf, 2u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_updateOrDeleteEntry:(id)entry inStore:(id)store
{
  v19 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  storeCopy = store;
  clientID = [entryCopy clientID];
  state = [entryCopy state];
  user = [entryCopy user];
  if (state == 2)
  {
    v15 = 0;
    v13 = [storeCopy deleteEntry:entryCopy withError:&v15];
    v11 = v15;
    if ((v13 & 1) == 0)
    {
      v12 = pds_defaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v11;
        goto LABEL_9;
      }

LABEL_10:
    }

LABEL_11:

    goto LABEL_12;
  }

  if (state == 1)
  {
    v16 = 0;
    v10 = [storeCopy updateEntryState:3 forUser:user clientID:clientID withError:&v16];
    v11 = v16;
    if ((v10 & 1) == 0)
    {
      v12 = pds_defaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v11;
LABEL_9:
        _os_log_impl(&dword_25DED8000, v12, OS_LOG_TYPE_DEFAULT, "Error updating entry: %@", buf, 0xCu);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_entries:(id)_entries includeState:(unsigned __int8)state
{
  stateCopy = state;
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _entriesCopy = _entries;
  v6 = [_entriesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(_entriesCopy);
        }

        if ([*(*(&v13 + 1) + 8 * i) state] == stateCopy)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [_entriesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (unint64_t)_lastRequestHash
{
  kvStoreBlock = [(PDSCoordinator *)self kvStoreBlock];
  v3 = kvStoreBlock[2]();

  v4 = [v3 numberForKey:@"kPDSLastRequestHash"];
  unsignedLongValue = [v4 unsignedLongValue];

  return unsignedLongValue;
}

- (void)_markLastRequest:(id)request
{
  requestCopy = request;
  kvStoreBlock = [(PDSCoordinator *)self kvStoreBlock];
  v9 = kvStoreBlock[2]();

  v6 = MEMORY[0x277CCABB0];
  v7 = [requestCopy hash];

  v8 = [v6 numberWithUnsignedInteger:v7];
  [v9 setNumber:v8 forKey:@"kPDSLastRequestHash"];
}

- (BOOL)_matchingEntryExistsFor:(id)for inStore:(id)store
{
  v20 = *MEMORY[0x277D85DE8];
  forCopy = for;
  storeCopy = store;
  user = [forCopy user];
  clientID = [forCopy clientID];
  [storeCopy entriesForUser:user withClientID:clientID];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v18 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if ([forCopy isEqualToEntry:{*(*(&v15 + 1) + 8 * i), v15}])
        {
          LOBYTE(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (double)_timeToDelayRequestForTopics:(id)topics
{
  v33 = *MEMORY[0x277D85DE8];
  topicsCopy = topics;
  serverBag = [(PDSCoordinator *)self serverBag];
  [serverBag coalesceDelayFromBag];
  v7 = v6;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = topicsCopy;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        serverBag2 = [(PDSCoordinator *)self serverBag];
        LOBYTE(v13) = [serverBag2 topicAvoidsCoalescing:v13];

        if (v13)
        {
          v7 = 0.0;
          v21 = v8;
          goto LABEL_18;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (self->_pendingRequestDate)
  {
    serverBag3 = [(PDSCoordinator *)self serverBag];
    [serverBag3 coalesceMaxPeriodFromBag];
    v17 = v16;

    v18 = [MEMORY[0x277CBEAA8] now];
    [v18 timeIntervalSinceDate:self->_pendingRequestDate];
    v20 = v19;

    if (v7 + v20 > v17)
    {
      if (v20 <= v17)
      {
        v7 = v17 - v20;
      }

      else
      {
        v7 = 0.0;
      }
    }
  }

  else
  {
    v22 = [MEMORY[0x277CBEAA8] now];
    pendingRequestDate = self->_pendingRequestDate;
    self->_pendingRequestDate = v22;
  }

  v21 = pds_defaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v31 = v7;
    _os_log_impl(&dword_25DED8000, v21, OS_LOG_TYPE_DEFAULT, "Delay register by: %f for coalescing", buf, 0xCu);
  }

LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_bagReloaded:(id)reloaded
{
  v4 = pds_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25DED8000, v4, OS_LOG_TYPE_DEFAULT, "Received bag loaded notification -- attempting registration", buf, 2u);
  }

  queue = [(PDSCoordinator *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__PDSCoordinator__bagReloaded___block_invoke;
  block[3] = &unk_2799F82F0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  v3 = pds_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25DED8000, v3, OS_LOG_TYPE_DEFAULT, "Left first data protection lock -- attempting registration", buf, 2u);
  }

  queue = [(PDSCoordinator *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PDSCoordinator_systemDidLeaveFirstDataProtectionLock__block_invoke;
  block[3] = &unk_2799F82F0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_disabledForAnyReason
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_disabled)
  {
    v2 = pds_defaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v3 = "PDS has been disabled by a PermanentFailure server response";
LABEL_7:
      _os_log_impl(&dword_25DED8000, v2, OS_LOG_TYPE_DEFAULT, v3, &v17, 2u);
    }
  }

  else
  {
    serverBag = [(PDSCoordinator *)self serverBag];
    bagKillSwitchActive = [serverBag bagKillSwitchActive];

    if (bagKillSwitchActive)
    {
      v2 = pds_defaultLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        v3 = "PDS has been disabled by the kill switch";
        goto LABEL_7;
      }
    }

    else
    {
      v9 = PDSProtocolVersionNumber();
      longLongValue = [v9 longLongValue];
      serverBag2 = [(PDSCoordinator *)self serverBag];
      minEnabledVersion = [serverBag2 minEnabledVersion];
      longLongValue2 = [minEnabledVersion longLongValue];

      if (longLongValue >= longLongValue2)
      {
        result = 0;
        goto LABEL_9;
      }

      v2 = pds_defaultLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v14 = PDSProtocolVersionNumber();
        serverBag3 = [(PDSCoordinator *)self serverBag];
        minEnabledVersion2 = [serverBag3 minEnabledVersion];
        v17 = 138412546;
        v18 = v14;
        v19 = 2112;
        v20 = minEnabledVersion2;
        _os_log_impl(&dword_25DED8000, v2, OS_LOG_TYPE_DEFAULT, "PDS has been disabled because the protocol version %@ is lower than the min enabled version %@", &v17, 0x16u);
      }
    }
  }

  result = 1;
LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handler:(id)handler pushTokenChanged:(id)changed
{
  if ([changed length])
  {
    v5 = pds_defaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25DED8000, v5, OS_LOG_TYPE_DEFAULT, "Notified of push-token change.  Forcing reregister.", v6, 2u);
    }

    [(PDSCoordinator *)self registerIfNeeded];
  }
}

- (void)_comparePushTokensWithEntryStore:(id)store
{
  v25 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  pushTokenBlock = [(PDSCoordinator *)self pushTokenBlock];
  v6 = pushTokenBlock[2](pushTokenBlock, *MEMORY[0x277CEE9F0]);

  pushTokenBlock2 = [(PDSCoordinator *)self pushTokenBlock];
  v8 = pushTokenBlock2[2](pushTokenBlock2, *MEMORY[0x277CEE9E8]);

  __imHexString = [v6 __imHexString];
  v10 = [__imHexString length];

  if (v10)
  {
    if ([(PDSCoordinator *)self _lastPushTokenDiffersFrom:v6])
    {
      v11 = arc4random_uniform(0x64u);
      if ([MEMORY[0x277D18988] isSupported] && v11 <= 9)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Production push token has changed!"];
        v13 = MEMORY[0x277D18988];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __51__PDSCoordinator__comparePushTokensWithEntryStore___block_invoke;
        v21[3] = &unk_2799F8318;
        v22 = v12;
        v14 = v12;
        [v13 triggerCaptureWithEvent:206 context:v14 completion:v21];
      }

      v15 = pds_defaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v6 debugDescription];
        *buf = 138412290;
        v24 = v16;
        _os_log_impl(&dword_25DED8000, v15, OS_LOG_TYPE_DEFAULT, "Production push token has changed! New token: %@", buf, 0xCu);
      }

      [(PDSCoordinator *)self _pushTokenChangedWithEntryStore:storeCopy];
      [(PDSCoordinator *)self _markPushToken:v6];
      [(PDSCoordinator *)self setTokenChanged:1];
    }

    if ([(PDSCoordinator *)self _lastSandboxPushTokenDiffersFrom:v8])
    {
      v17 = pds_defaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v8 debugDescription];
        *buf = 138412290;
        v24 = v18;
        _os_log_impl(&dword_25DED8000, v17, OS_LOG_TYPE_DEFAULT, "Sandbox push token has changed! New token: %@", buf, 0xCu);
      }

      [(PDSCoordinator *)self _pushTokenChangedWithEntryStore:storeCopy];
      [(PDSCoordinator *)self _markSandboxPushToken:v8];
      [(PDSCoordinator *)self setTokenChanged:1];
    }
  }

  else
  {
    v19 = pds_defaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DED8000, v19, OS_LOG_TYPE_DEFAULT, "Missing push token! aborting", buf, 2u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __51__PDSCoordinator__comparePushTokensWithEntryStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pds_defaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_25DED8000, v7, OS_LOG_TYPE_DEFAULT, "Finished capturing AutoBugCapture diagnostics for push token change { context: %@, sessionID: %@, error: %@ }", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_lastPushTokenDiffersFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  kvStoreBlock = [(PDSCoordinator *)self kvStoreBlock];
  v6 = kvStoreBlock[2]();

  v7 = [v6 dataForKey:@"kPDSLastPushToken"];
  v8 = pds_defaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 debugDescription];
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_25DED8000, v8, OS_LOG_TYPE_DEFAULT, "Last push token: %@", &v13, 0xCu);
  }

  v10 = [v7 isEqualToData:fromCopy];
  v11 = *MEMORY[0x277D85DE8];
  return v10 ^ 1;
}

- (BOOL)_lastSandboxPushTokenDiffersFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  kvStoreBlock = [(PDSCoordinator *)self kvStoreBlock];
  v6 = kvStoreBlock[2]();

  v7 = [v6 dataForKey:@"kPDSLastSandboxPushToken"];
  v8 = pds_defaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 debugDescription];
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_25DED8000, v8, OS_LOG_TYPE_DEFAULT, "Last sandbox push token: %@", &v13, 0xCu);
  }

  if (fromCopy | v7)
  {
    v10 = [v7 isEqualToData:fromCopy] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_markPushToken:(id)token
{
  tokenCopy = token;
  kvStoreBlock = [(PDSCoordinator *)self kvStoreBlock];
  v6 = kvStoreBlock[2]();

  [v6 setData:tokenCopy forKey:@"kPDSLastPushToken"];
}

- (void)_markSandboxPushToken:(id)token
{
  tokenCopy = token;
  kvStoreBlock = [(PDSCoordinator *)self kvStoreBlock];
  v6 = kvStoreBlock[2]();

  [v6 setData:tokenCopy forKey:@"kPDSLastSandboxPushToken"];
}

- (BOOL)shouldScheduleHeartbeatForTracker:(id)tracker
{
  entryStoreBlock = [(PDSCoordinator *)self entryStoreBlock];
  v4 = entryStoreBlock[2]();

  if (v4)
  {
    hasActiveEntries = [v4 hasActiveEntries];
  }

  else
  {
    v6 = pds_defaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25DED8000, v6, OS_LOG_TYPE_DEFAULT, "EntryStore is nil! aborting", v8, 2u);
    }

    hasActiveEntries = 0;
  }

  return hasActiveEntries;
}

- (CUTDeferredTaskQueue)processDeferredTaskQueue
{
  processDeferredTaskQueue = self->_processDeferredTaskQueue;
  if (!processDeferredTaskQueue)
  {
    v4 = [objc_alloc(MEMORY[0x277CFB970]) initWithCapacity:1 queue:self->_queue block:&__block_literal_global];
    v5 = self->_processDeferredTaskQueue;
    self->_processDeferredTaskQueue = v4;

    processDeferredTaskQueue = self->_processDeferredTaskQueue;
  }

  return processDeferredTaskQueue;
}

- (void)initWithQueue:serverBag:requestQueue:kvStoreBlock:entryStoreBlock:pushTokenBlock:systemMonitor:pushHandler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"queue" object:? file:? lineNumber:? description:?];
}

- (void)initWithQueue:serverBag:requestQueue:kvStoreBlock:entryStoreBlock:pushTokenBlock:systemMonitor:pushHandler:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"serverBag" object:? file:? lineNumber:? description:?];
}

- (void)initWithQueue:serverBag:requestQueue:kvStoreBlock:entryStoreBlock:pushTokenBlock:systemMonitor:pushHandler:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"requestQueue" object:? file:? lineNumber:? description:?];
}

- (void)initWithQueue:serverBag:requestQueue:kvStoreBlock:entryStoreBlock:pushTokenBlock:systemMonitor:pushHandler:.cold.4()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"kvStoreBlock" object:? file:? lineNumber:? description:?];
}

- (void)initWithQueue:serverBag:requestQueue:kvStoreBlock:entryStoreBlock:pushTokenBlock:systemMonitor:pushHandler:.cold.5()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"entryStoreBlock" object:? file:? lineNumber:? description:?];
}

- (void)initWithQueue:serverBag:requestQueue:kvStoreBlock:entryStoreBlock:pushTokenBlock:systemMonitor:pushHandler:.cold.6()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"pushTokenBlock" object:? file:? lineNumber:? description:?];
}

- (void)requestQueue:(void *)a1 processedRequest:(void *)a2 withResponse:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a1 ttl];
  v6 = [a2 serverBag];
  v8 = 134218240;
  v9 = v5;
  v10 = 2048;
  v11 = [v6 ttlFromBag];
  _os_log_error_impl(&dword_25DED8000, a3, OS_LOG_TYPE_ERROR, "PDS TTL response exceeded bag value (%ld > %ld). Using Bag value as TTL", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end