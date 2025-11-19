@interface C2Multipeer
- (C2Multipeer)initWithChunkDelegate:(id)a3 createListener:(BOOL)a4;
- (void)addClientConnection:(id)a3 peerID:(id)a4;
- (void)addServerConnection:(id)a3 peerID:(id)a4;
- (void)discoverChunkSignature:(id)a3 forContainerIdentifier:(id)a4 chunkDataCallback:(id)a5;
@end

@implementation C2Multipeer

- (C2Multipeer)initWithChunkDelegate:(id)a3 createListener:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v26.receiver = self;
  v26.super_class = C2Multipeer;
  v8 = [(C2Multipeer *)&v26 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("c2.multipeer", v9);
    queue = v8->_queue;
    v8->_queue = v10;

    if (v4)
    {
      v12 = [[C2MultipeerDiscovery alloc] initWithParent:v8];
      listener = v8->_listener;
      v8->_listener = v12;
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clientConnectionByPeer = v8->_clientConnectionByPeer;
    v8->_clientConnectionByPeer = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    serverConnectionByPeer = v8->_serverConnectionByPeer;
    v8->_serverConnectionByPeer = v16;

    objc_storeStrong(&v8->_chunkDelegate, a3);
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("c2.multipeer.delegateQueue", v18);
    chunkDelegateQueue = v8->_chunkDelegateQueue;
    v8->_chunkDelegateQueue = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clientContextByRequestUUID = v8->_clientContextByRequestUUID;
    v8->_clientContextByRequestUUID = v21;
  }

  if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
  {
    [C2Multipeer initWithChunkDelegate:createListener:];
  }

  v23 = C2_MULTIPEER_LOG_INTERNAL_2;
  if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v8;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_242158000, v23, OS_LOG_TYPE_DEFAULT, "[%@ initWithChunkDelegate:%@]", buf, 0x16u);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __52__C2Multipeer_initWithChunkDelegate_createListener___block_invoke()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

- (void)addClientConnection:(id)a3 peerID:(id)a4
{
  clientConnectionByPeer = self->_clientConnectionByPeer;
  v6 = a3;
  [(NSMutableDictionary *)clientConnectionByPeer setObject:v6 forKeyedSubscript:a4];
  [v6 startConnection];
}

- (void)addServerConnection:(id)a3 peerID:(id)a4
{
  serverConnectionByPeer = self->_serverConnectionByPeer;
  v6 = a3;
  [(NSMutableDictionary *)serverConnectionByPeer setObject:v6 forKeyedSubscript:a4];
  [v6 startConnection];
}

- (void)discoverChunkSignature:(id)a3 forContainerIdentifier:(id)a4 chunkDataCallback:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(C2MultipeerClientContext);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v12 = [(C2MultipeerClientContext *)v11 osActivity];
  os_activity_scope_enter(v12, &state);

  if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
  {
    [C2Multipeer discoverChunkSignature:forContainerIdentifier:chunkDataCallback:];
  }

  v13 = C2_MULTIPEER_LOG_INTERNAL_2;
  if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = _Block_copy(v10);
    *buf = 138413058;
    v29 = self;
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    v34 = 2048;
    v35 = v15;
    _os_log_impl(&dword_242158000, v14, OS_LOG_TYPE_DEFAULT, "[%@ discoverChunkSignature:%@ forContainerIdentifier:%@ chunkDataCallback:%p]", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_10;
  block[3] = &unk_278D407A8;
  block[4] = self;
  v23 = v8;
  v24 = v9;
  v25 = v11;
  v26 = v10;
  v17 = v10;
  v18 = v11;
  v19 = v9;
  v20 = v8;
  dispatch_async(queue, block);

  os_activity_scope_leave(&state);
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

void __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_10(uint64_t a1)
{
  v75[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  [*(*(a1 + 32) + 16) touch];
  v39 = objc_alloc_init(C2MultipeerDiscoveryRequest);
  v3 = [MEMORY[0x277CCAD78] UUID];
  [(C2MultipeerDiscoveryRequest *)v39 setRequestUUID:v3];

  [(C2MultipeerDiscoveryRequest *)v39 setChunkSignature:*(a1 + 40)];
  [(C2MultipeerDiscoveryRequest *)v39 setContainerIdentifier:*(a1 + 48)];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [*(a1 + 56) setDiscoveryPeers:v4];

  objc_initWeak(&location, *(a1 + 56));
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_2;
  v52[3] = &unk_278D40758;
  v52[4] = *v2;
  objc_copyWeak(&v57, &location);
  v53 = *(a1 + 40);
  v54 = *(a1 + 48);
  v56 = *(a1 + 64);
  v55 = *(a1 + 56);
  [*(a1 + 56) setChunkDataCallback:v52];
  if ([*(*(a1 + 32) + 24) count])
  {
    v51 = 0;
    v38 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v39 requiringSecureCoding:1 error:&v51];
    v5 = v51;
    v35 = v5;
    if (!v38 || v5)
    {
      if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
      {
        __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_10_cold_2();
      }

      v29 = C2_MULTIPEER_LOG_INTERNAL_2;
      if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v35;
        _os_log_impl(&dword_242158000, v29, OS_LOG_TYPE_DEFAULT, "Unable to serialize request with error %@", buf, 0xCu);
      }

      v30 = [*(a1 + 56) chunkDataCallback];

      if (!v30)
      {
        goto LABEL_30;
      }

      v25 = [*(a1 + 56) chunkDataCallback];
      v31 = MEMORY[0x277CCA9B8];
      v72 = *MEMORY[0x277CCA450];
      v73 = @"failed to encode request";
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      v33 = [v31 errorWithDomain:@"C2MultipeerErrorDomain" code:401 userInfo:v32];
      (v25)[2](v25, 0, v33);
    }

    else
    {
      v6 = *(a1 + 56);
      v7 = *(*(a1 + 32) + 40);
      v8 = [(C2MultipeerDiscoveryRequest *)v39 requestUUID];
      [v7 setObject:v6 forKeyedSubscript:v8];

      [*(a1 + 56) startTimerOnQueue:*(*(a1 + 32) + 8)];
      [*(a1 + 56) resetTimerForDiscovery];
      v50 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      v9 = [*(*(a1 + 32) + 24) objectEnumerator];
      v10 = [v9 countByEnumeratingWithState:&v47 objects:v71 count:16];
      if (v10)
      {
        v37 = *v48;
        obj = v9;
        do
        {
          v11 = 0;
          do
          {
            if (*v48 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v47 + 1) + 8 * v11);
            if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
            {
              __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_10_cold_1();
            }

            v13 = C2_MULTIPEER_LOG_INTERNAL_2;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v15 = *(a1 + 32);
              v14 = *(a1 + 40);
              v16 = *(a1 + 48);
              v17 = _Block_copy(*(a1 + 64));
              v18 = [v12 peerID];
              *buf = 138413570;
              v60 = v15;
              v61 = 2112;
              v62 = v14;
              v63 = 2112;
              v64 = v16;
              v65 = 2048;
              v66 = v17;
              v67 = 2112;
              v68 = v39;
              v69 = 2112;
              v70 = v18;
              _os_log_impl(&dword_242158000, v13, OS_LOG_TYPE_DEFAULT, "[%@ discoverChunkSignature:%@ forContainerIdentifier:%@ chunkDataCallback:%p] - Sending %@ to peer %@", buf, 0x3Eu);
            }

            v19 = [*(a1 + 56) discoveryPeers];
            v20 = [v12 peerID];
            [v19 addObject:v20];

            v21 = [v12 oustandingDiscoveryRequestsByRequestUUID];
            v22 = [(C2MultipeerDiscoveryRequest *)v39 requestUUID];
            [v21 addObject:v22];

            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_42;
            v40[3] = &unk_278D40780;
            v23 = *(a1 + 40);
            v40[4] = *(a1 + 32);
            v41 = v23;
            v42 = *(a1 + 48);
            v46 = *(a1 + 64);
            v43 = v39;
            v44 = v12;
            v45 = *(a1 + 56);
            [v12 sendMessageWithData:v38 completionHandler:v40];

            ++v11;
          }

          while (v10 != v11);
          v9 = obj;
          v10 = [obj countByEnumeratingWithState:&v47 objects:v71 count:16];
        }

        while (v10);
      }

      if (![*(a1 + 56) hadFailedToDiscover])
      {
        goto LABEL_30;
      }

      v24 = *(*(a1 + 32) + 40);
      v25 = [(C2MultipeerDiscoveryRequest *)v39 requestUUID];
      [v24 setObject:0 forKeyedSubscript:v25];
    }

LABEL_29:

LABEL_30:
    goto LABEL_31;
  }

  if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
  {
    __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_10_cold_3();
  }

  v26 = C2_MULTIPEER_LOG_INTERNAL_2;
  if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242158000, v26, OS_LOG_TYPE_DEFAULT, "No peers to ask for chunks.", buf, 2u);
  }

  v27 = [*(a1 + 56) chunkDataCallback];

  if (v27)
  {
    v35 = [*(a1 + 56) chunkDataCallback];
    v28 = MEMORY[0x277CCA9B8];
    v74 = *MEMORY[0x277CCA450];
    v75[0] = @"no peers to ask for chunks";
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:&v74 count:1];
    v25 = [v28 errorWithDomain:@"C2MultipeerErrorDomain" code:100 userInfo:v38];
    v35[2](v35, 0, v25);
    goto LABEL_29;
  }

LABEL_31:

  objc_destroyWeak(&v57);
  objc_destroyWeak(&location);

  v34 = *MEMORY[0x277D85DE8];
}

void __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v9 = [WeakRetained osActivity];
    os_activity_scope_enter(v9, &state);

    if ([v8 hasReplied])
    {
      if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
      {
        __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_2_cold_2();
      }

      v10 = C2_MULTIPEER_LOG_INTERNAL_2;
      if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_2, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a1 + 32);
        v11 = *(a1 + 40);
        v13 = *(a1 + 48);
        v14 = *(a1 + 64);
        v15 = v10;
        v16 = _Block_copy(v14);
        *buf = 138413570;
        v38 = v12;
        v39 = 2112;
        v40 = v11;
        v41 = 2112;
        v42 = v13;
        v43 = 2048;
        v44 = v16;
        v45 = 2112;
        v46 = v5;
        v47 = 2112;
        v48 = v6;
        _os_log_impl(&dword_242158000, v15, OS_LOG_TYPE_DEBUG, "[%@ discoverChunkSignature:%@ forContainerIdentifier:%@ chunkDataCallback:%p] - already replied to chunkDataCallback, ignoring chunkData(%@), error(%@)", buf, 0x3Eu);
      }
    }

    else
    {
      if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
      {
        __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_2_cold_1();
      }

      v24 = C2_MULTIPEER_LOG_INTERNAL_2;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 32);
        v25 = *(a1 + 40);
        v27 = *(a1 + 48);
        v28 = _Block_copy(*(a1 + 64));
        mach_continuous_time();
        [*(a1 + 56) startTimestamp];
        TMConvertTicksToSeconds();
        *buf = 138413826;
        v38 = v26;
        v39 = 2112;
        v40 = v25;
        v41 = 2112;
        v42 = v27;
        v43 = 2048;
        v44 = v28;
        v45 = 2112;
        v46 = v5;
        v47 = 2112;
        v48 = v6;
        v49 = 2048;
        v50 = v29;
        _os_log_impl(&dword_242158000, v24, OS_LOG_TYPE_DEFAULT, "[%@ discoverChunkSignature:%@ forContainerIdentifier:%@ chunkDataCallback:%p] - chunkDataCallback(%@, %@) after %.3f seconds", buf, 0x48u);
      }

      [v8 setHasReplied:1];
      [v8 stopTimer];
      v30 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_22;
      block[3] = &unk_278D40520;
      v35 = *(a1 + 64);
      v33 = v5;
      v34 = v6;
      dispatch_async(v30, block);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
    {
      __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_2_cold_3();
    }

    v17 = C2_MULTIPEER_LOG_INTERNAL_2;
    if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_2, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      v21 = *(a1 + 64);
      v22 = v17;
      v23 = _Block_copy(v21);
      *buf = 138413570;
      v38 = v18;
      v39 = 2112;
      v40 = v19;
      v41 = 2112;
      v42 = v20;
      v43 = 2048;
      v44 = v23;
      v45 = 2112;
      v46 = v5;
      v47 = 2112;
      v48 = v6;
      _os_log_impl(&dword_242158000, v22, OS_LOG_TYPE_ERROR, "[%@ discoverChunkSignature:%@ forContainerIdentifier:%@ chunkDataCallback:%p] - blockSafeClientContext unexpctedly nil, ignoring chunkData(%@), error(%@)", buf, 0x3Eu);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_3()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_16()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_19()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_2_24()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_33()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_39()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

void __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_42(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
    {
      __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_42_cold_1();
    }

    v4 = C2_MULTIPEER_LOG_INTERNAL_2;
    if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 80);
      v9 = v4;
      v10 = _Block_copy(v8);
      v11 = *(a1 + 56);
      v12 = [*(a1 + 64) peerID];
      v20 = 138413826;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      v26 = 2048;
      v27 = v10;
      v28 = 2112;
      v29 = v11;
      v30 = 2112;
      v31 = v12;
      v32 = 2112;
      v33 = v3;
      _os_log_impl(&dword_242158000, v9, OS_LOG_TYPE_DEFAULT, "[%@ discoverChunkSignature:%@ forContainerIdentifier:%@ chunkDataCallback:%p] - Sending %@ to peer %@ encountered error %@", &v20, 0x48u);
    }

    v13 = [*(a1 + 72) discoveryPeers];
    v14 = [*(a1 + 64) peerID];
    [v13 removeObject:v14];

    v15 = [*(a1 + 64) oustandingDiscoveryRequestsByRequestUUID];
    v16 = [*(a1 + 56) requestUUID];
    [v15 removeObject:v16];

    if ([*(a1 + 72) hadFailedToDiscover])
    {
      v17 = *(*(a1 + 32) + 40);
      v18 = [*(a1 + 56) requestUUID];
      [v17 setObject:0 forKeyedSubscript:v18];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_2_43()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

@end