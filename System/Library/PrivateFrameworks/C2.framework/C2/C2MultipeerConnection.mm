@interface C2MultipeerConnection
- (C2Multipeer)parent;
- (C2MultipeerConnection)initWithParent:(id)a3 queue:(id)a4 peerID:(id)a5 isClientConnection:(BOOL)a6;
- (void)handleData:(id)a3;
- (void)handleDiscoveryRequest:(id)a3;
- (void)sendMessageWithData:(id)a3 completionHandler:(id)a4;
- (void)stopConnection;
@end

@implementation C2MultipeerConnection

- (C2MultipeerConnection)initWithParent:(id)a3 queue:(id)a4 peerID:(id)a5 isClientConnection:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v20.receiver = self;
  v20.super_class = C2MultipeerConnection;
  v13 = [(C2MultipeerConnection *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_parent, v10);
    objc_storeStrong(&v14->_queue, a4);
    objc_storeStrong(&v14->_peerID, a5);
    v15 = objc_opt_new();
    oustandingDiscoveryRequestsByRequestUUID = v14->_oustandingDiscoveryRequestsByRequestUUID;
    v14->_oustandingDiscoveryRequestsByRequestUUID = v15;

    v17 = objc_opt_new();
    serverContextByRequestUUID = v14->_serverContextByRequestUUID;
    v14->_serverContextByRequestUUID = v17;

    v14->_isClientConnection = a6;
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
        v8 = [(C2MultipeerConnection *)self parent];
        v9 = [v8 clientContextByRequestUUID];
        v10 = [v9 objectForKeyedSubscript:v7];

        state.opaque[0] = 0;
        state.opaque[1] = 0;
        v11 = [v10 osActivity];
        os_activity_scope_enter(v11, &state);

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

        v13 = [v10 discoveryPeers];
        [v13 removeObject:self->_peerID];

        if ([v10 hadFailedToDiscover])
        {
          v14 = [(C2MultipeerConnection *)self parent];
          v15 = [v14 clientContextByRequestUUID];
          [v15 setObject:0 forKeyedSubscript:v7];
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
  v17 = [(C2MultipeerConnection *)self parent];
  v18 = v17;
  if (isClientConnection)
  {
    [v17 clientConnectionByPeer];
  }

  else
  {
    [v17 serverConnectionByPeer];
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

- (void)sendMessageWithData:(id)a3 completionHandler:(id)a4
{
  v6 = [(C2MultipeerConnection *)self queue:a3];
  dispatch_assert_queue_V2(v6);

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"C2MultipeerConnection.m" lineNumber:49 description:@"Subclass Implementation Required."];
}

- (void)handleDiscoveryRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(C2MultipeerServerContext);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v6 = [(C2MultipeerServerContext *)v5 osActivity];
  os_activity_scope_enter(v6, &state);

  v7 = objc_alloc_init(C2MultipeerDiscoveryResponse);
  v8 = [v4 requestUUID];
  [(C2MultipeerDiscoveryResponse *)v7 setRequestUUID:v8];

  v9 = [v4 chunkSignature];
  [(C2MultipeerDiscoveryResponse *)v7 setChunkSignature:v9];

  v10 = [(C2MultipeerConnection *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [(C2MultipeerConnection *)self parent];
  v12 = [v11 chunkDelegateQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__C2MultipeerConnection_handleDiscoveryRequest___block_invoke;
  v16[3] = &unk_278D401A0;
  v16[4] = self;
  v17 = v4;
  v18 = v5;
  v19 = v7;
  v13 = v7;
  v14 = v5;
  v15 = v4;
  dispatch_async(v12, v16);

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

- (void)handleData:(id)a3
{
  v98[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(C2MultipeerConnection *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = MEMORY[0x277CCAAC8];
  v7 = MEMORY[0x277CBEB98];
  v98[0] = objc_opt_class();
  v98[1] = objc_opt_class();
  v98[2] = objc_opt_class();
  v98[3] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:4];
  v9 = [v7 setWithArray:v8];
  v85 = 0;
  v10 = [v6 unarchivedObjectOfClasses:v9 fromData:v4 error:&v85];
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
      v89 = self;
      v90 = 2112;
      v91 = v4;
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
        v89 = self;
        v90 = 2112;
        v91 = v4;
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
      v15 = [(C2MultipeerConnection *)self parent];
      v16 = [v15 clientContextByRequestUUID];
      v17 = [v14 requestUUID];
      v77 = [v16 objectForKeyedSubscript:v17];

      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v18 = [v77 osActivity];
      os_activity_scope_enter(v18, &state);

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
        v89 = self;
        v90 = 2112;
        v91 = v4;
        v92 = 2112;
        v93 = v14;
        v94 = 2112;
        v95 = 0;
        v96 = 2048;
        v97 = v20;
        _os_log_impl(&dword_242158000, v19, OS_LOG_TYPE_DEFAULT, "[%@ handleData:%@] - received message %@ with error %@ after %.3f seconds.", buf, 0x34u);
      }

      v21 = objc_alloc_init(C2MultipeerChunkDataRequest);
      v22 = [v14 requestUUID];
      [(C2MultipeerChunkDataRequest *)v21 setRequestUUID:v22];

      v23 = [v77 discoveryPeers];
      v24 = [(C2MultipeerConnection *)self peerID];
      [v23 removeObject:v24];

      v25 = [(C2MultipeerConnection *)self oustandingDiscoveryRequestsByRequestUUID];
      v26 = [v14 requestUUID];
      [v25 removeObject:v26];

      if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
      {
        [C2MultipeerConnection handleData:];
      }

      v27 = C2_MULTIPEER_LOG_INTERNAL_0;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [(C2MultipeerConnection *)self peerID];
        v29 = [v14 requestUUID];
        v30 = [v77 discoveryPeers];
        v31 = [v30 count];
        *buf = 138412802;
        v89 = v28;
        v90 = 2112;
        v91 = v29;
        v92 = 2048;
        v93 = v31;
        _os_log_impl(&dword_242158000, v27, OS_LOG_TYPE_DEFAULT, "Received discovery response from %@ for %@, %llu peers remaining.", buf, 0x20u);
      }

      v32 = [v77 chunkDataRequestedFromPeer];
      v33 = v32 == 0;

      if (v33)
      {
        v34 = [v14 chunkAvailable];
      }

      else
      {
        v34 = 0;
      }

      [(C2MultipeerChunkDataRequest *)v21 setChunkDataRequested:v34];
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
            v89 = v11;
            _os_log_impl(&dword_242158000, v68, OS_LOG_TYPE_DEFAULT, "Unable to serialize request with error %@", buf, 0xCu);
          }
        }

        else
        {
          if (v34)
          {
            v63 = [(C2MultipeerConnection *)self peerID];
            [v77 setChunkDataRequestedFromPeer:v63];

            [v77 resetTimerForChunkData];
            if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
            {
              [C2MultipeerConnection handleData:];
            }

            v64 = C2_MULTIPEER_LOG_INTERNAL_0;
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              v65 = [(C2MultipeerConnection *)self peerID];
              v66 = [v14 requestUUID];
              *buf = 138412546;
              v89 = v65;
              v90 = 2112;
              v91 = v66;
              _os_log_impl(&dword_242158000, v64, OS_LOG_TYPE_DEFAULT, "Requested data from %@ for %@", buf, 0x16u);
            }
          }

          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = __36__C2MultipeerConnection_handleData___block_invoke_48;
          v79[3] = &unk_278D401C8;
          v80 = v77;
          v81 = self;
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
        v69 = [(C2MultipeerConnection *)self parent];
        v70 = [v69 clientContextByRequestUUID];
        v71 = [v14 requestUUID];
        [v70 setObject:0 forKeyedSubscript:v71];
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
          v47 = [(C2MultipeerConnection *)self parent];
          v48 = [v47 clientContextByRequestUUID];
          v49 = [v46 requestUUID];
          v50 = [v48 objectForKeyedSubscript:v49];

          state.opaque[0] = 0;
          state.opaque[1] = 0;
          v51 = [v50 osActivity];
          os_activity_scope_enter(v51, &state);

          if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
          {
            [C2MultipeerConnection handleData:];
          }

          v52 = C2_MULTIPEER_LOG_INTERNAL_0;
          if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413058;
            v89 = self;
            v90 = 2112;
            v91 = v4;
            v92 = 2112;
            v93 = v46;
            v94 = 2112;
            v95 = 0;
            _os_log_impl(&dword_242158000, v52, OS_LOG_TYPE_DEFAULT, "[%@ handleData:%@] - received message %@ with error %@", buf, 0x2Au);
          }

          v53 = [(C2MultipeerConnection *)self parent];
          v54 = [v53 clientContextByRequestUUID];
          v55 = [v46 requestUUID];
          [v54 setObject:0 forKeyedSubscript:v55];

          v56 = [v50 chunkDataCallback];

          if (v56)
          {
            v57 = [v50 chunkDataCallback];
            v58 = [v46 chunkData];
            v59 = [v46 chunkData];
            if (v59)
            {
              v60 = 0;
            }

            else
            {
              v76 = MEMORY[0x277CCA9B8];
              v86 = *MEMORY[0x277CCA450];
              v87 = @"chunk data response missing data.";
              v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
              v60 = [v76 errorWithDomain:@"C2MultipeerErrorDomain" code:400 userInfo:v49];
            }

            (v57)[2](v57, v58, v60);
            if (!v59)
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
            v89 = self;
            v90 = 2112;
            v91 = v4;
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
      v36 = [(C2MultipeerConnection *)self serverContextByRequestUUID];
      v37 = [v35 requestUUID];
      v38 = [v36 objectForKeyedSubscript:v37];

      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v39 = [v38 osActivity];
      os_activity_scope_enter(v39, &state);

      if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
      {
        [C2MultipeerConnection handleData:];
      }

      v40 = C2_MULTIPEER_LOG_INTERNAL_0;
      if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v89 = self;
        v90 = 2112;
        v91 = v4;
        v92 = 2112;
        v93 = v35;
        v94 = 2112;
        v95 = 0;
        _os_log_impl(&dword_242158000, v40, OS_LOG_TYPE_DEFAULT, "[%@ handleData:%@] - received message %@ with error %@", buf, 0x2Au);
      }

      if ([v35 chunkDataRequested])
      {
        v41 = objc_alloc_init(C2MultipeerChunkDataResponse);
        v42 = [v35 requestUUID];
        [(C2MultipeerChunkDataResponse *)v41 setRequestUUID:v42];

        v43 = [v38 chunkData];
        [(C2MultipeerChunkDataResponse *)v41 setChunkData:v43];

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
            v89 = v11;
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

      v73 = [(C2MultipeerConnection *)self serverContextByRequestUUID];
      v74 = [v35 requestUUID];
      [v73 setObject:0 forKeyedSubscript:v74];

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