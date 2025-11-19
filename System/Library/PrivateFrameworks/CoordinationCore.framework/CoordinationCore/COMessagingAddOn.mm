@interface COMessagingAddOn
- (COMessagingAddOn)init;
- (COMessagingAddOnDelegate)delegate;
- (void)_configureTimer;
- (void)_handleRequest:(id)a3 callback:(id)a4;
- (void)_timerFired;
- (void)_timerRequestAdded:(id)a3;
- (void)_withLock:(id)a3;
- (void)broadcastRequest:(id)a3 recipientsCallback:(id)a4 completionHandler:(id)a5;
- (void)didAddToMeshController:(id)a3;
- (void)didChangeNodesForMeshController:(id)a3;
- (void)sendRequest:(id)a3 members:(id)a4 withCompletionHandler:(id)a5;
- (void)setDelegate:(id)a3;
- (void)willRemoveFromMeshController:(id)a3;
@end

@implementation COMessagingAddOn

- (COMessagingAddOn)init
{
  v9.receiver = self;
  v9.super_class = COMessagingAddOn;
  v2 = [(COMeshAddOn *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CBEB18] array];
    queuedIncomingRequests = v3->_queuedIncomingRequests;
    v3->_queuedIncomingRequests = v4;

    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
    timer = v3->_timer;
    v3->_timer = v6;

    [(COMessagingAddOn *)v3 _configureTimer];
  }

  return v3;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (COMessagingAddOnDelegate)delegate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__30;
  v9 = __Block_byref_object_dispose__30;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__COMessagingAddOn_delegate__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COMessagingAddOn *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __28__COMessagingAddOn_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8](WeakRetained, v4);
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__COMessagingAddOn_setDelegate___block_invoke;
  v6[3] = &unk_278E156B0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(COMessagingAddOn *)self _withLock:v6];
}

void __32__COMessagingAddOn_setDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  LOBYTE(v2) = [v2 isEqual:WeakRetained];

  if ((v2 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = (*(a1 + 40) + 32);

    objc_storeWeak(v5, v4);
  }
}

- (void)sendRequest:(id)a3 members:(id)a4 withCompletionHandler:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMeshAddOn *)self meshController];
  v12 = v11;
  if (!v9)
  {
    [v11 sendRequest:v8 withCompletionHandler:v10];

    goto LABEL_28;
  }

  v13 = [v11 nodeForMe];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v33 = v9;
  obj = v9;
  v41 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (!v41)
  {
    goto LABEL_26;
  }

  v14 = *v47;
  v38 = v8;
  v39 = *MEMORY[0x277CFCF10];
  v36 = self;
  v37 = v10;
  v34 = *v47;
  v35 = v13;
  do
  {
    for (i = 0; i != v41; ++i)
    {
      if (*v47 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v46 + 1) + 8 * i);
      v17 = [v13 memberSnapshot];
      v18 = [v17 member];
      v19 = [v18 isEqualToMember:v16];

      if (v19)
      {
        v20 = v13;
        if (v20)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v22 = [(COMeshAddOn *)self meshController];
        v23 = [v22 nodes];

        v24 = [v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v43;
          while (2)
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v43 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v42 + 1) + 8 * j);
              v29 = [v28 memberSnapshot];
              v30 = [v29 member];
              v31 = [v30 isEqualToMember:v16];

              if (v31)
              {
                v20 = v28;
                goto LABEL_20;
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }

          v20 = 0;
LABEL_20:
          v10 = v37;
          v8 = v38;
          v13 = v35;
          self = v36;
          v14 = v34;
        }

        else
        {
          v20 = 0;
        }

        if (v20)
        {
LABEL_9:
          v21 = [(COMeshAddOn *)self meshController];
          [v21 sendRequest:v8 toPeer:v20 withCompletionHandler:v10];
          goto LABEL_24;
        }
      }

      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:v39 code:-1111 userInfo:0];
      (*(v10 + 2))(v10, v8, 0, 0, v21);
LABEL_24:
    }

    v41 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  }

  while (v41);
LABEL_26:

  v9 = v33;
LABEL_28:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)broadcastRequest:(id)a3 recipientsCallback:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(COMeshAddOn *)self meshController];
  [v11 broadcastRequest:v10 includingSelf:1 recipientsCallback:v9 completionHandler:v8];
}

- (void)didAddToMeshController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = COMessagingAddOn;
  [(COMeshAddOn *)&v8 didAddToMeshController:v4];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__COMessagingAddOn_didAddToMeshController___block_invoke;
  v5[3] = &unk_278E15FA8;
  objc_copyWeak(&v6, &location);
  [v4 registerHandler:v5 forRequestClass:objc_opt_class()];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __43__COMessagingAddOn_didAddToMeshController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleRequest:v8 callback:v5];
  }
}

- (void)willRemoveFromMeshController:(id)a3
{
  v4 = a3;
  [v4 deregisterHandlerForRequestClass:objc_opt_class()];
  v5 = [(COMessagingAddOn *)self timer];
  dispatch_source_set_timer(v5, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  [(COMessagingAddOn *)self setTimerEnabled:0];
  v6.receiver = self;
  v6.super_class = COMessagingAddOn;
  [(COMeshAddOn *)&v6 willRemoveFromMeshController:v4];
}

- (void)didChangeNodesForMeshController:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = COMessagingAddOn;
  [(COMeshAddOn *)&v30 didChangeNodesForMeshController:a3];
  v4 = [(COMeshAddOn *)self meshController];
  v5 = [v4 nodes];

  v23 = [MEMORY[0x277CBEB18] array];
  v24 = self;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(COMessagingAddOn *)self queuedIncomingRequests];
  v6 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v27;
    *&v7 = 134218242;
    v21 = v7;
    v22 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 senderNode];
        if ([v5 containsObject:v12])
        {
          v13 = [v12 memberSnapshot];
          if (v13)
          {
            v14 = COCoreLogForCategory(10);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = [v11 request];
              *buf = v21;
              v32 = v24;
              v33 = 2112;
              v34 = v15;
              _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p Add-on found a snapshot for queued request %@", buf, 0x16u);
            }

            v16 = [(COMessagingAddOn *)v24 delegate];
            v17 = [v11 request];
            v18 = [v11 callback];
            [v16 addOn:v24 receivedRequest:v17 callback:v18];

            [v23 addObject:v11];
            v9 = v22;
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v8);
  }

  v19 = [(COMessagingAddOn *)v24 queuedIncomingRequests];
  [v19 removeObjectsInArray:v23];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleRequest:(id)a3 callback:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 sender];
  v9 = [v8 memberSnapshot];
  if (v9)
  {
    v10 = [(COMessagingAddOn *)self delegate];
    [(COMessagingQueuedIncomingRequest *)v10 addOn:self receivedRequest:v6 callback:v7];
  }

  else
  {
    v10 = [[COMessagingQueuedIncomingRequest alloc] initWithRequest:v6 callback:v7];

    v11 = [(COMessagingAddOn *)self queuedIncomingRequests];
    [v11 addObject:v10];

    [(COMessagingAddOn *)self _timerRequestAdded:v10];
    v7 = COCoreLogForCategory(10);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218498;
      v14 = self;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p Add-on received a request %@ from node %@ with missing snapshot. Enqueuing request", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_configureTimer
{
  v3 = [(COMessagingAddOn *)self timer];
  dispatch_source_set_timer(v3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  [(COMessagingAddOn *)self setTimerEnabled:0];
  objc_initWeak(&location, self);
  v4 = [(COMessagingAddOn *)self timer];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __35__COMessagingAddOn__configureTimer__block_invoke;
  v9 = &unk_278E15B10;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v4, &v6);

  v5 = [(COMessagingAddOn *)self timer:v6];
  dispatch_activate(v5);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __35__COMessagingAddOn__configureTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__COMessagingAddOn__configureTimer__block_invoke_2;
    block[3] = &unk_278E15AB8;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

- (void)_timerFired
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*a2 + 24);
  v5 = 134218240;
  v6 = a1;
  v7 = 2048;
  v8 = v3;
  _os_log_debug_impl(&dword_244378000, log, OS_LOG_TYPE_DEBUG, "%p cleanup timer reconfiguring to %llu", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __31__COMessagingAddOn__timerFired__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 remainingTimeUsingCurrentTime:*(a1 + 56)];
  if (v4 < 1)
  {
    v9 = COCoreLogForCategory(10);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __31__COMessagingAddOn__timerFired__block_invoke_cold_1(a1, v3, v9);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
    v11 = [v3 callback];
    (v11)[2](v11, 0, v10);

    [*(a1 + 40) addObject:v3];
  }

  else
  {
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 24);
    if (v6 >= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = *(v5 + 24);
    }

    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    *(v5 + 24) = v8;
  }
}

- (void)_timerRequestAdded:(id)a3
{
  if (![(COMessagingAddOn *)self isTimerEnabled])
  {
    v4 = COCoreLogForCategory(10);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(COMessagingAddOn *)self _timerRequestAdded:v4];
    }

    [(COMessagingAddOn *)self setTimerEnabled:1];
    v5 = [(COMessagingAddOn *)self timer];
    v6 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }
}

void __31__COMessagingAddOn__timerFired__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [a2 request];
  v7 = 134218242;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_244378000, a3, OS_LOG_TYPE_ERROR, "%p enqueued request %@ expired before being passed to a node", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_timerRequestAdded:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = 0x4072C00000000000;
  _os_log_debug_impl(&dword_244378000, a2, OS_LOG_TYPE_DEBUG, "%p enabling cleanup timer for %f seconds.", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end