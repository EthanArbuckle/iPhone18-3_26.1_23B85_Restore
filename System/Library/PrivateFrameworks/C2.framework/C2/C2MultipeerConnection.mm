@interface C2MultipeerConnection
- (C2Multipeer)parent;
- (C2MultipeerConnection)initWithParent:(id)parent queue:(id)queue peerID:(id)d isClientConnection:(BOOL)connection;
- (void)handleData:(id)data;
- (void)handleDiscoveryRequest:(id)request;
- (void)sendMessageWithData:(id)data completionHandler:(id)handler;
- (void)stopConnection;
@end

@implementation C2MultipeerConnection

- (C2MultipeerConnection)initWithParent:(id)parent queue:(id)queue peerID:(id)d isClientConnection:(BOOL)connection
{
  parentCopy = parent;
  queueCopy = queue;
  dCopy = d;
  v20.receiver = self;
  v20.super_class = C2MultipeerConnection;
  v13 = [(C2MultipeerConnection *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_parent, parentCopy);
    objc_storeStrong(&v14->_queue, queue);
    objc_storeStrong(&v14->_peerID, d);
    v15 = objc_opt_new();
    oustandingDiscoveryRequestsByRequestUUID = v14->_oustandingDiscoveryRequestsByRequestUUID;
    v14->_oustandingDiscoveryRequestsByRequestUUID = v15;

    v17 = objc_opt_new();
    serverContextByRequestUUID = v14->_serverContextByRequestUUID;
    v14->_serverContextByRequestUUID = v17;

    v14->_isClientConnection = connection;
  }

  return v14;
}

- (void)stopConnection
{
  v28 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = self->_oustandingDiscoveryRequestsByRequestUUID;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = *v24;
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v23 + 1) + 8 * v6);
        parent = [(C2MultipeerConnection *)self parent];
        clientContextByRequestUUID = [parent clientContextByRequestUUID];
        v10 = [clientContextByRequestUUID objectForKeyedSubscript:v7];

        state.opaque[0] = 0;
        state.opaque[1] = 0;
        osActivity = [v10 osActivity];
        os_activity_scope_enter(osActivity, &state);

        if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
        {
          [C2MultipeerConnection stopConnection];
        }

        v12 = C2_MULTIPEER_LOG_INTERNAL_0;
        if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 0;
          _os_log_impl(&dword_242158000, v12, OS_LOG_TYPE_DEFAULT, "_stopConnection", v21, 2u);
        }

        discoveryPeers = [v10 discoveryPeers];
        [discoveryPeers removeObject:self->_peerID];

        if ([v10 hadFailedToDiscover])
        {
          parent2 = [(C2MultipeerConnection *)self parent];
          clientContextByRequestUUID2 = [parent2 clientContextByRequestUUID];
          [clientContextByRequestUUID2 setObject:0 forKeyedSubscript:v7];
        }

        os_activity_scope_leave(&state);

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  [(NSMutableSet *)self->_oustandingDiscoveryRequestsByRequestUUID removeAllObjects];
  isClientConnection = self->_isClientConnection;
  parent3 = [(C2MultipeerConnection *)self parent];
  v18 = parent3;
  if (isClientConnection)
  {
    [parent3 clientConnectionByPeer];
  }

  else
  {
    [parent3 serverConnectionByPeer];
  }
  v19 = ;
  [v19 setObject:0 forKeyedSubscript:self->_peerID];

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __39__C2MultipeerConnection_stopConnection__block_invoke()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

- (void)sendMessageWithData:(id)data completionHandler:(id)handler
{
  v6 = [(C2MultipeerConnection *)self queue:data];
  dispatch_assert_queue_V2(v6);

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"C2MultipeerConnection.m" lineNumber:49 description:@"Subclass Implementation Required."];
}

- (void)handleDiscoveryRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(C2MultipeerServerContext);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  osActivity = [(C2MultipeerServerContext *)v5 osActivity];
  os_activity_scope_enter(osActivity, &state);

  v7 = objc_alloc_init(C2MultipeerDiscoveryResponse);
  requestUUID = [requestCopy requestUUID];
  [(C2MultipeerDiscoveryResponse *)v7 setRequestUUID:requestUUID];

  chunkSignature = [requestCopy chunkSignature];
  [(C2MultipeerDiscoveryResponse *)v7 setChunkSignature:chunkSignature];

  queue = [(C2MultipeerConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  parent = [(C2MultipeerConnection *)self parent];
  chunkDelegateQueue = [parent chunkDelegateQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__C2MultipeerConnection_handleDiscoveryRequest___block_invoke;
  v16[3] = &unk_278D401A0;
  v16[4] = self;
  v17 = requestCopy;
  v18 = v5;
  v19 = v7;
  v13 = v7;
  v14 = v5;
  v15 = requestCopy;
  dispatch_async(chunkDelegateQueue, v16);

  os_activity_scope_leave(&state);
}

void __48__C2MultipeerConnection_handleDiscoveryRequest___block_invoke(id *a1)
{
  v2 = [a1[4] parent];
  v3 = [v2 chunkDelegate];
  v4 = [a1[5] chunkSignature];
  v5 = [a1[5] containerIdentifier];
  v6 = [v3 chunkDataFromSignature:v4 forContainerIdentifier:v5];

  v7 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__C2MultipeerConnection_handleDiscoveryRequest___block_invoke_2;
  block[3] = &unk_278D40178;
  v11 = a1[6];
  v12 = v6;
  v8 = a1[5];
  v13 = a1[4];
  v14 = v8;
  v15 = a1[7];
  v9 = v6;
  dispatch_async(v7, block);
}

void __48__C2MultipeerConnection_handleDiscoveryRequest___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setChunkData:*(a1 + 40)];
  if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
  {
    __48__C2MultipeerConnection_handleDiscoveryRequest___block_invoke_2_cold_1();
  }

  v2 = C2_MULTIPEER_LOG_INTERNAL_0;
  if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = [v3 parent];
    v6 = [*(a1 + 48) parent];
    v7 = [v6 chunkDelegate];
    v8 = [*(a1 + 56) chunkSignature];
    v9 = [*(a1 + 56) containerIdentifier];
    v10 = *(a1 + 40);
    *buf = 138413314;
    v25 = v5;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&dword_242158000, v4, OS_LOG_TYPE_DEFAULT, "[[%@ %@] chunkDataFromSignature:%@ forContainerIdentifier:%@] - returned %@", buf, 0x34u);
  }

  [*(a1 + 64) setChunkAvailable:*(a1 + 40) != 0];
  v11 = *(a1 + 64);
  v23 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v23];
  v13 = v23;
  v14 = v13;
  if (!v12 || v13)
  {
    if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
    {
      __48__C2MultipeerConnection_handleDiscoveryRequest___block_invoke_2_cold_2();
    }

    v19 = C2_MULTIPEER_LOG_INTERNAL_0;
    if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v14;
      _os_log_impl(&dword_242158000, v19, OS_LOG_TYPE_DEFAULT, "Unable to serialize request with error %@", buf, 0xCu);
    }
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = [*(a1 + 48) serverContextByRequestUUID];
    v17 = [*(a1 + 56) requestUUID];
    [v16 setObject:v15 forKeyedSubscript:v17];

    v18 = *(a1 + 48);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __48__C2MultipeerConnection_handleDiscoveryRequest___block_invoke_20;
    v21[3] = &unk_278D40150;
    v21[4] = v18;
    v22 = *(a1 + 56);
    [v18 sendMessageWithData:v12 completionHandler:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __48__C2MultipeerConnection_handleDiscoveryRequest___block_invoke_3()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __48__C2MultipeerConnection_handleDiscoveryRequest___block_invoke_17()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

void __48__C2MultipeerConnection_handleDiscoveryRequest___block_invoke_20(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
    {
      __48__C2MultipeerConnection_handleDiscoveryRequest___block_invoke_20_cold_1();
    }

    v4 = C2_MULTIPEER_LOG_INTERNAL_0;
    if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_242158000, v4, OS_LOG_TYPE_DEFAULT, "Unable to send response with error %@", &v8, 0xCu);
    }

    v5 = [*(a1 + 32) serverContextByRequestUUID];
    v6 = [*(a1 + 40) requestUUID];
    [v5 setObject:0 forKeyedSubscript:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __48__C2MultipeerConnection_handleDiscoveryRequest___block_invoke_2_21()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

- (void)handleData:(id)data
{
  v98[4] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  queue = [(C2MultipeerConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = MEMORY[0x277CCAAC8];
  v7 = MEMORY[0x277CBEB98];
  v98[0] = objc_opt_class();
  v98[1] = objc_opt_class();
  v98[2] = objc_opt_class();
  v98[3] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:4];
  v9 = [v7 setWithArray:v8];
  v85 = 0;
  v10 = [v6 unarchivedObjectOfClasses:v9 fromData:dataCopy error:&v85];
  v11 = v85;

  if (!v10 || v11)
  {
    if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
    {
      [C2MultipeerConnection handleData:];
    }

    v13 = C2_MULTIPEER_LOG_INTERNAL_0;
    if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      selfCopy7 = self;
      v90 = 2112;
      v91 = dataCopy;
      v92 = 2112;
      v93 = v10;
      v94 = 2112;
      v95 = v11;
      _os_log_impl(&dword_242158000, v13, OS_LOG_TYPE_DEFAULT, "[%@ handleData:%@] - Ignoring response %@ due to error %@", buf, 0x2Au);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
      {
        [C2MultipeerConnection handleData:];
      }

      v12 = C2_MULTIPEER_LOG_INTERNAL_0;
      if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        selfCopy7 = self;
        v90 = 2112;
        v91 = dataCopy;
        v92 = 2112;
        v93 = v10;
        v94 = 2112;
        v95 = 0;
        _os_log_impl(&dword_242158000, v12, OS_LOG_TYPE_DEFAULT, "[%@ handleData:%@] - received message %@ with error %@", buf, 0x2Au);
      }

      [(C2MultipeerConnection *)self handleDiscoveryRequest:v10];
LABEL_9:
      v11 = 0;
      goto LABEL_73;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v10;
      parent = [(C2MultipeerConnection *)self parent];
      clientContextByRequestUUID = [parent clientContextByRequestUUID];
      requestUUID = [v14 requestUUID];
      v77 = [clientContextByRequestUUID objectForKeyedSubscript:requestUUID];

      state.opaque[0] = 0;
      state.opaque[1] = 0;
      osActivity = [v77 osActivity];
      os_activity_scope_enter(osActivity, &state);

      if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
      {
        [C2MultipeerConnection handleData:];
      }

      v19 = C2_MULTIPEER_LOG_INTERNAL_0;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        mach_continuous_time();
        [v77 startTimestamp];
        TMConvertTicksToSeconds();
        *buf = 138413314;
        selfCopy7 = self;
        v90 = 2112;
        v91 = dataCopy;
        v92 = 2112;
        v93 = v14;
        v94 = 2112;
        v95 = 0;
        v96 = 2048;
        v97 = v20;
        _os_log_impl(&dword_242158000, v19, OS_LOG_TYPE_DEFAULT, "[%@ handleData:%@] - received message %@ with error %@ after %.3f seconds.", buf, 0x34u);
      }

      v21 = objc_alloc_init(C2MultipeerChunkDataRequest);
      requestUUID2 = [v14 requestUUID];
      [(C2MultipeerChunkDataRequest *)v21 setRequestUUID:requestUUID2];

      discoveryPeers = [v77 discoveryPeers];
      peerID = [(C2MultipeerConnection *)self peerID];
      [discoveryPeers removeObject:peerID];

      oustandingDiscoveryRequestsByRequestUUID = [(C2MultipeerConnection *)self oustandingDiscoveryRequestsByRequestUUID];
      requestUUID3 = [v14 requestUUID];
      [oustandingDiscoveryRequestsByRequestUUID removeObject:requestUUID3];

      if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
      {
        [C2MultipeerConnection handleData:];
      }

      v27 = C2_MULTIPEER_LOG_INTERNAL_0;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        peerID2 = [(C2MultipeerConnection *)self peerID];
        requestUUID4 = [v14 requestUUID];
        discoveryPeers2 = [v77 discoveryPeers];
        v31 = [discoveryPeers2 count];
        *buf = 138412802;
        selfCopy7 = peerID2;
        v90 = 2112;
        v91 = requestUUID4;
        v92 = 2048;
        v93 = v31;
        _os_log_impl(&dword_242158000, v27, OS_LOG_TYPE_DEFAULT, "Received discovery response from %@ for %@, %llu peers remaining.", buf, 0x20u);
      }

      chunkDataRequestedFromPeer = [v77 chunkDataRequestedFromPeer];
      v33 = chunkDataRequestedFromPeer == 0;

      if (v33)
      {
        chunkAvailable = [v14 chunkAvailable];
      }

      else
      {
        chunkAvailable = 0;
      }

      [(C2MultipeerChunkDataRequest *)v21 setChunkDataRequested:chunkAvailable];
      if ([v14 chunkAvailable])
      {
        v83 = 0;
        v61 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v83];
        v62 = v83;
        v11 = v62;
        if (!v61 || v62)
        {
          if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
          {
            [C2MultipeerConnection handleData:];
          }

          v68 = C2_MULTIPEER_LOG_INTERNAL_0;
          if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy7 = v11;
            _os_log_impl(&dword_242158000, v68, OS_LOG_TYPE_DEFAULT, "Unable to serialize request with error %@", buf, 0xCu);
          }
        }

        else
        {
          if (chunkAvailable)
          {
            peerID3 = [(C2MultipeerConnection *)self peerID];
            [v77 setChunkDataRequestedFromPeer:peerID3];

            [v77 resetTimerForChunkData];
            if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
            {
              [C2MultipeerConnection handleData:];
            }

            v64 = C2_MULTIPEER_LOG_INTERNAL_0;
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              peerID4 = [(C2MultipeerConnection *)self peerID];
              requestUUID5 = [v14 requestUUID];
              *buf = 138412546;
              selfCopy7 = peerID4;
              v90 = 2112;
              v91 = requestUUID5;
              _os_log_impl(&dword_242158000, v64, OS_LOG_TYPE_DEFAULT, "Requested data from %@ for %@", buf, 0x16u);
            }
          }

          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = __36__C2MultipeerConnection_handleData___block_invoke_48;
          v79[3] = &unk_278D401C8;
          v80 = v77;
          selfCopy4 = self;
          v82 = v14;
          [(C2MultipeerConnection *)self sendMessageWithData:v61 completionHandler:v79];
        }
      }

      else
      {
        v11 = 0;
      }

      if ([v77 hadFailedToDiscover])
      {
        parent2 = [(C2MultipeerConnection *)self parent];
        clientContextByRequestUUID2 = [parent2 clientContextByRequestUUID];
        requestUUID6 = [v14 requestUUID];
        [clientContextByRequestUUID2 setObject:0 forKeyedSubscript:requestUUID6];
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v46 = v10;
          parent3 = [(C2MultipeerConnection *)self parent];
          clientContextByRequestUUID3 = [parent3 clientContextByRequestUUID];
          requestUUID7 = [v46 requestUUID];
          v50 = [clientContextByRequestUUID3 objectForKeyedSubscript:requestUUID7];

          state.opaque[0] = 0;
          state.opaque[1] = 0;
          osActivity2 = [v50 osActivity];
          os_activity_scope_enter(osActivity2, &state);

          if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
          {
            [C2MultipeerConnection handleData:];
          }

          v52 = C2_MULTIPEER_LOG_INTERNAL_0;
          if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413058;
            selfCopy7 = self;
            v90 = 2112;
            v91 = dataCopy;
            v92 = 2112;
            v93 = v46;
            v94 = 2112;
            v95 = 0;
            _os_log_impl(&dword_242158000, v52, OS_LOG_TYPE_DEFAULT, "[%@ handleData:%@] - received message %@ with error %@", buf, 0x2Au);
          }

          parent4 = [(C2MultipeerConnection *)self parent];
          clientContextByRequestUUID4 = [parent4 clientContextByRequestUUID];
          requestUUID8 = [v46 requestUUID];
          [clientContextByRequestUUID4 setObject:0 forKeyedSubscript:requestUUID8];

          chunkDataCallback = [v50 chunkDataCallback];

          if (chunkDataCallback)
          {
            chunkDataCallback2 = [v50 chunkDataCallback];
            chunkData = [v46 chunkData];
            chunkData2 = [v46 chunkData];
            if (chunkData2)
            {
              v60 = 0;
            }

            else
            {
              v76 = MEMORY[0x277CCA9B8];
              v86 = *MEMORY[0x277CCA450];
              v87 = @"chunk data response missing data.";
              requestUUID7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
              v60 = [v76 errorWithDomain:@"C2MultipeerErrorDomain" code:400 userInfo:requestUUID7];
            }

            (chunkDataCallback2)[2](chunkDataCallback2, chunkData, v60);
            if (!chunkData2)
            {
            }
          }

          os_activity_scope_leave(&state);
        }

        else
        {
          if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
          {
            [C2MultipeerConnection handleData:];
          }

          v67 = C2_MULTIPEER_LOG_INTERNAL_0;
          if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413058;
            selfCopy7 = self;
            v90 = 2112;
            v91 = dataCopy;
            v92 = 2112;
            v93 = v10;
            v94 = 2112;
            v95 = 0;
            _os_log_impl(&dword_242158000, v67, OS_LOG_TYPE_DEFAULT, "[%@ handleData:%@] - received Unknown object %@ with error %@", buf, 0x2Au);
          }
        }

        goto LABEL_9;
      }

      v35 = v10;
      serverContextByRequestUUID = [(C2MultipeerConnection *)self serverContextByRequestUUID];
      requestUUID9 = [v35 requestUUID];
      v38 = [serverContextByRequestUUID objectForKeyedSubscript:requestUUID9];

      state.opaque[0] = 0;
      state.opaque[1] = 0;
      osActivity3 = [v38 osActivity];
      os_activity_scope_enter(osActivity3, &state);

      if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
      {
        [C2MultipeerConnection handleData:];
      }

      v40 = C2_MULTIPEER_LOG_INTERNAL_0;
      if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        selfCopy7 = self;
        v90 = 2112;
        v91 = dataCopy;
        v92 = 2112;
        v93 = v35;
        v94 = 2112;
        v95 = 0;
        _os_log_impl(&dword_242158000, v40, OS_LOG_TYPE_DEFAULT, "[%@ handleData:%@] - received message %@ with error %@", buf, 0x2Au);
      }

      if ([v35 chunkDataRequested])
      {
        v41 = objc_alloc_init(C2MultipeerChunkDataResponse);
        requestUUID10 = [v35 requestUUID];
        [(C2MultipeerChunkDataResponse *)v41 setRequestUUID:requestUUID10];

        chunkData3 = [v38 chunkData];
        [(C2MultipeerChunkDataResponse *)v41 setChunkData:chunkData3];

        v78 = 0;
        v44 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v41 requiringSecureCoding:1 error:&v78];
        v45 = v78;
        v11 = v45;
        if (!v44 || v45)
        {
          if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
          {
            [C2MultipeerConnection handleData:];
          }

          v72 = C2_MULTIPEER_LOG_INTERNAL_0;
          if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy7 = v11;
            _os_log_impl(&dword_242158000, v72, OS_LOG_TYPE_DEFAULT, "Unable to serialize request with error %@", buf, 0xCu);
          }
        }

        else
        {
          [(C2MultipeerConnection *)self sendMessageWithData:v44 completionHandler:&__block_literal_global_59];
        }
      }

      else
      {
        v11 = 0;
      }

      serverContextByRequestUUID2 = [(C2MultipeerConnection *)self serverContextByRequestUUID];
      requestUUID11 = [v35 requestUUID];
      [serverContextByRequestUUID2 setObject:0 forKeyedSubscript:requestUUID11];

      os_activity_scope_leave(&state);
    }
  }

LABEL_73:

  v75 = *MEMORY[0x277D85DE8];
}

uint64_t __36__C2MultipeerConnection_handleData___block_invoke()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __36__C2MultipeerConnection_handleData___block_invoke_33()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __36__C2MultipeerConnection_handleData___block_invoke_36()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __36__C2MultipeerConnection_handleData___block_invoke_39()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __36__C2MultipeerConnection_handleData___block_invoke_42()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __36__C2MultipeerConnection_handleData___block_invoke_45()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

void __36__C2MultipeerConnection_handleData___block_invoke_48(id *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
    {
      __36__C2MultipeerConnection_handleData___block_invoke_48_cold_1();
    }

    v4 = C2_MULTIPEER_LOG_INTERNAL_0;
    if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_242158000, v4, OS_LOG_TYPE_DEFAULT, "Unable to send request with error %@", &v9, 0xCu);
    }

    [a1[4] setChunkDataRequestedFromPeer:0];
    if ([a1[4] hadFailedToDiscover])
    {
      v5 = [a1[5] parent];
      v6 = [v5 clientContextByRequestUUID];
      v7 = [a1[6] requestUUID];
      [v6 setObject:0 forKeyedSubscript:v7];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __36__C2MultipeerConnection_handleData___block_invoke_2()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __36__C2MultipeerConnection_handleData___block_invoke_51()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __36__C2MultipeerConnection_handleData___block_invoke_54()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

void __36__C2MultipeerConnection_handleData___block_invoke_57(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
    {
      __36__C2MultipeerConnection_handleData___block_invoke_57_cold_1();
    }

    v3 = C2_MULTIPEER_LOG_INTERNAL_0;
    if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_242158000, v3, OS_LOG_TYPE_DEFAULT, "Unable to send response with error %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __36__C2MultipeerConnection_handleData___block_invoke_2_60()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __36__C2MultipeerConnection_handleData___block_invoke_63()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __36__C2MultipeerConnection_handleData___block_invoke_71()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

- (C2Multipeer)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end