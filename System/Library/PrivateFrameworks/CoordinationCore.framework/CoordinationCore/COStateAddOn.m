@interface COStateAddOn
- (COStateAddOn)init;
- (COStateAddOnDelegate)delegate;
- (void)_broadcastMeshState:(id)a3;
- (void)_constructMeshState;
- (void)_handleStateNotification:(id)a3;
- (void)_handleStateReadRequest:(id)a3 callback:(id)a4;
- (void)_handleStateUpdateNotification:(id)a3;
- (void)_handleStateUpdateRequest:(id)a3 callback:(id)a4;
- (void)_handleUpdates:(id)a3 removals:(id)a4;
- (void)_processOutstandingUpdateRequests;
- (void)_sendRequest:(id)a3 withRetryCount:(int64_t)a4 withCallback:(id)a5;
- (void)_withLock:(id)a3;
- (void)didAddToMeshController:(id)a3;
- (void)didChangeNodesForMeshController:(id)a3;
- (void)meshController:(id)a3 didTransitionToState:(unint64_t)a4;
- (void)removeKeyPaths:(id)a3 suite:(id)a4 withCallback:(id)a5;
- (void)sendStateUpdates:(id)a3 removals:(id)a4 withCallback:(id)a5;
- (void)setDelegate:(id)a3;
- (void)setDictionary:(id)a3 suite:(id)a4 withCallback:(id)a5;
- (void)willRemoveFromMeshController:(id)a3;
@end

@implementation COStateAddOn

- (COStateAddOn)init
{
  v6.receiver = self;
  v6.super_class = COStateAddOn;
  v2 = [(COMeshAddOn *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    outstandingUpdateRequests = v2->_outstandingUpdateRequests;
    v2->_outstandingUpdateRequests = v3;

    v2->_stateConstructionGeneration = 0;
    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (COStateAddOnDelegate)delegate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__19;
  v9 = __Block_byref_object_dispose__19;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __24__COStateAddOn_delegate__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COStateAddOn *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __24__COStateAddOn_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
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
  v6[2] = __28__COStateAddOn_setDelegate___block_invoke;
  v6[3] = &unk_278E156B0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(COStateAddOn *)self _withLock:v6];
}

void __28__COStateAddOn_setDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 56));
  LOBYTE(v2) = [v2 isEqual:WeakRetained];

  if ((v2 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = (*(a1 + 40) + 56);

    objc_storeWeak(v5, v4);
  }
}

- (void)setDictionary:(id)a3 suite:(id)a4 withCallback:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(COMeshAddOn *)self meshController];
    v15 = 134218498;
    v16 = v14;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_debug_impl(&dword_244378000, v11, OS_LOG_TYPE_DEBUG, "%p setting state %@ for suite %@", &v15, 0x20u);
  }

  v12 = [MEMORY[0x277CBEB38] dictionary];
  [v12 setValue:v8 forKey:v9];
  [(COStateAddOn *)self sendStateUpdates:v12 removals:0 withCallback:v10];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeKeyPaths:(id)a3 suite:(id)a4 withCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [COStateAddOn removeKeyPaths:suite:withCallback:];
  }

  v12 = [MEMORY[0x277CBEB38] dictionary];
  [v12 setObject:v8 forKey:v9];
  [(COStateAddOn *)self sendStateUpdates:0 removals:v12 withCallback:v10];
}

- (void)sendStateUpdates:(id)a3 removals:(id)a4 withCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [COStateAddOn sendStateUpdates:removals:withCallback:];
  }

  v12 = [[COStateUpdateRequest alloc] initWithUpdates:v8 removals:v9];
  v13 = [(COMeshAddOn *)self meshController];

  if (v13)
  {
    [(COStateAddOn *)self _sendRequest:v12 withRetryCount:5 withCallback:v10];
  }

  else
  {
    [(COStateAddOn *)self _handleUpdates:v8 removals:v9];
  }
}

- (void)_sendRequest:(id)a3 withRetryCount:(int64_t)a4 withCallback:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 <= 0)
  {
    v13 = COCoreLogForCategory(6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [COStateAddOn _sendRequest:v8 withRetryCount:v13 withCallback:?];
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4002 userInfo:0];
    v9[2](v9, v14);
  }

  else
  {
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__COStateAddOn__sendRequest_withRetryCount_withCallback___block_invoke;
    v15[3] = &unk_278E18090;
    objc_copyWeak(v18, &location);
    v10 = v8;
    v16 = v10;
    v18[1] = a4;
    v17 = v9;
    v11 = MEMORY[0x245D5FF10](v15);
    v12 = [(COMeshAddOn *)self meshController];
    [v12 sendRequest:v10 withCompletionHandler:v11];

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }
}

void __57__COStateAddOn__sendRequest_withRetryCount_withCallback___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a5)
    {
      v8 = COCoreLogForCategory(6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __57__COStateAddOn__sendRequest_withRetryCount_withCallback___block_invoke_cold_1(a1, v8);
      }

      [WeakRetained _sendRequest:*(a1 + 32) withRetryCount:*(a1 + 56) - 1 withCallback:*(a1 + 40)];
    }

    else
    {
      v9 = [*(a1 + 32) updates];
      v10 = [*(a1 + 32) removals];
      [WeakRetained _handleUpdates:v9 removals:v10];

      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)_handleUpdates:(id)a3 removals:(id)a4
{
  v98 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v57 = a4;
  v7 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v93 = self;
    v94 = 2112;
    v95 = v6;
    v96 = 2112;
    v97 = v57;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p handling updates %@ and removals %@", buf, 0x20u);
  }

  v8 = [(COStateAddOn *)self meshState];
  v61 = [v8 mutableCopy];

  v9 = 0x277CBE000uLL;
  v55 = [MEMORY[0x277CBEB38] dictionary];
  v54 = [MEMORY[0x277CBEB38] dictionary];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = [v6 allKeys];
  v70 = v6;
  v71 = self;
  v58 = [obj countByEnumeratingWithState:&v84 objects:v91 count:16];
  if (v58)
  {
    v56 = *v85;
    do
    {
      v10 = 0;
      do
      {
        if (*v85 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v84 + 1) + 8 * v10);
        v12 = [(COStateAddOn *)self meshState];
        v13 = [v12 objectForKeyedSubscript:v11];
        v59 = v10;
        if (v13)
        {
          v14 = [(COStateAddOn *)self meshState];
          v15 = [v14 objectForKeyedSubscript:v11];
          v64 = [v15 mutableCopy];

          v9 = 0x277CBE000;
        }

        else
        {
          v64 = [MEMORY[0x277CBEB38] dictionary];
        }

        v62 = [*(v9 + 2872) dictionary];
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v16 = v70;
        v17 = [v70 objectForKeyedSubscript:v11];
        v18 = [v17 allKeys];

        v66 = v18;
        v19 = [v18 countByEnumeratingWithState:&v80 objects:v90 count:16];
        if (v19)
        {
          v20 = v19;
          v68 = *v81;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v81 != v68)
              {
                objc_enumerationMutation(v66);
              }

              v22 = *(*(&v80 + 1) + 8 * i);
              v23 = [(COStateAddOn *)self meshState];
              v24 = [v23 objectForKeyedSubscript:v11];
              v25 = [v24 objectForKeyedSubscript:v22];
              v26 = [v16 objectForKeyedSubscript:v11];
              v27 = [v26 objectForKeyedSubscript:v22];
              v28 = [v25 isEqual:v27];

              v16 = v70;
              if ((v28 & 1) == 0)
              {
                v29 = [v70 objectForKeyedSubscript:v11];
                v30 = [v29 objectForKeyedSubscript:v22];
                [v62 setObject:v30 forKey:v22];

                v31 = [v70 objectForKeyedSubscript:v11];
                v32 = [v31 objectForKeyedSubscript:v22];
                [v64 setObject:v32 forKey:v22];
              }

              self = v71;
            }

            v20 = [v66 countByEnumeratingWithState:&v80 objects:v90 count:16];
          }

          while (v20);
        }

        if ([v62 count])
        {
          [v55 setObject:v62 forKey:v11];
        }

        [(NSDictionary *)v61 setObject:v64 forKey:v11];

        v10 = v59 + 1;
        v9 = 0x277CBE000uLL;
      }

      while (v59 + 1 != v58);
      v58 = [obj countByEnumeratingWithState:&v84 objects:v91 count:16];
    }

    while (v58);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v60 = [v57 allKeys];
  v65 = [v60 countByEnumeratingWithState:&v76 objects:v89 count:16];
  if (v65)
  {
    v63 = *v77;
    do
    {
      v33 = 0;
      do
      {
        if (*v77 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v67 = v33;
        v34 = *(*(&v76 + 1) + 8 * v33);
        v35 = [(COStateAddOn *)self meshState];
        v36 = [v35 objectForKeyedSubscript:v34];
        if (v36)
        {
          v37 = [(COStateAddOn *)self meshState];
          v38 = [v37 objectForKeyedSubscript:v34];
          v69 = [v38 mutableCopy];
        }

        else
        {
          v69 = [*(v9 + 2872) dictionary];
        }

        v39 = [MEMORY[0x277CBEB58] set];
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v40 = [v57 objectForKeyedSubscript:v34];
        v41 = [v40 countByEnumeratingWithState:&v72 objects:v88 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v73;
          do
          {
            for (j = 0; j != v42; ++j)
            {
              if (*v73 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = *(*(&v72 + 1) + 8 * j);
              v46 = [(COStateAddOn *)self meshState];
              v47 = [v46 objectForKeyedSubscript:v34];
              v48 = [v47 objectForKeyedSubscript:v45];

              if (v48)
              {
                [v39 addObject:v45];
                [v69 removeObjectForKey:v45];
              }

              self = v71;
            }

            v42 = [v40 countByEnumeratingWithState:&v72 objects:v88 count:16];
          }

          while (v42);
        }

        if ([v39 count])
        {
          [v54 setObject:v39 forKey:v34];
        }

        [(NSDictionary *)v61 setObject:v69 forKey:v34];

        v33 = v67 + 1;
        v9 = 0x277CBE000;
      }

      while (v67 + 1 != v65);
      v65 = [v60 countByEnumeratingWithState:&v76 objects:v89 count:16];
    }

    while (v65);
  }

  meshState = self->_meshState;
  self->_meshState = v61;

  if ([v55 count] || objc_msgSend(v54, "count"))
  {
    v50 = COCoreLogForCategory(6);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v93 = self;
      v94 = 2112;
      v95 = v55;
      v96 = 2112;
      v97 = v54;
      _os_log_impl(&dword_244378000, v50, OS_LOG_TYPE_DEFAULT, "%p informing delegates of changes. Updates Diff = %@ and Removals Diff %@", buf, 0x20u);
    }

    v51 = [(COStateAddOn *)self delegate];
    [v51 addOn:self receivedUpdates:v55 removals:v54];
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (void)meshController:(id)a3 didTransitionToState:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 3)
  {
    v8 = [v6 me];
    v9 = [v7 leader];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      [(COStateAddOn *)self _constructMeshState];
    }
  }

  v11.receiver = self;
  v11.super_class = COStateAddOn;
  [(COMeshAddOn *)&v11 meshController:v7 didTransitionToState:a4];
}

- (void)didAddToMeshController:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = COStateAddOn;
  [(COMeshAddOn *)&v14 didAddToMeshController:v4];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__COStateAddOn_didAddToMeshController___block_invoke;
  v11[3] = &unk_278E15FA8;
  objc_copyWeak(&v12, &location);
  [v4 registerHandler:v11 forRequestClass:objc_opt_class()];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__COStateAddOn_didAddToMeshController___block_invoke_2;
  v9[3] = &unk_278E15FA8;
  objc_copyWeak(&v10, &location);
  [v4 registerHandler:v9 forRequestClass:objc_opt_class()];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__COStateAddOn_didAddToMeshController___block_invoke_3;
  v7[3] = &unk_278E15FF8;
  objc_copyWeak(&v8, &location);
  [v4 registerHandler:v7 forNotificationClass:objc_opt_class()];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__COStateAddOn_didAddToMeshController___block_invoke_4;
  v5[3] = &unk_278E15FF8;
  objc_copyWeak(&v6, &location);
  [v4 registerHandler:v5 forNotificationClass:objc_opt_class()];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __39__COStateAddOn_didAddToMeshController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleStateReadRequest:v8 callback:v5];
  }
}

void __39__COStateAddOn_didAddToMeshController___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleStateUpdateRequest:v8 callback:v5];
  }
}

void __39__COStateAddOn_didAddToMeshController___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleStateNotification:v5];
  }
}

void __39__COStateAddOn_didAddToMeshController___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleStateUpdateNotification:v5];
  }
}

- (void)willRemoveFromMeshController:(id)a3
{
  v4 = a3;
  [v4 deregisterHandlerForRequestClass:objc_opt_class()];
  [v4 deregisterHandlerForRequestClass:objc_opt_class()];
  [v4 deregisterHandlerForNotificationClass:objc_opt_class()];
  [v4 deregisterHandlerForNotificationClass:objc_opt_class()];
  v5.receiver = self;
  v5.super_class = COStateAddOn;
  [(COMeshAddOn *)&v5 willRemoveFromMeshController:v4];
}

- (void)didChangeNodesForMeshController:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshController];
  v6 = [v5 me];
  v7 = [(COMeshAddOn *)self meshController];
  v8 = [v7 leader];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    [(COStateAddOn *)self _constructMeshState];
  }

  v10.receiver = self;
  v10.super_class = COStateAddOn;
  [(COMeshAddOn *)&v10 didChangeNodesForMeshController:v4];
}

- (void)_constructMeshState
{
  v3 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v3);

  ++self->_stateConstructionGeneration;
  self->_isConstructingState = 1;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__19;
  v11[4] = __Block_byref_object_dispose__19;
  v12 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__19;
  v8[4] = __Block_byref_object_dispose__19;
  v9 = 0;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__COStateAddOn__constructMeshState__block_invoke;
  v5[3] = &unk_278E18158;
  objc_copyWeak(&v6, &location);
  v5[4] = v8;
  v5[5] = v11;
  v5[6] = v10;
  [WeakRetained stateForAddOn:self withCallback:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(v8, 8);

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v11, 8);
}

void __35__COStateAddOn__constructMeshState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained meshControllerQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__COStateAddOn__constructMeshState__block_invoke_2;
    v7[3] = &unk_278E18130;
    v10 = *(a1 + 32);
    v8 = v3;
    v9 = v5;
    objc_copyWeak(&v12, (a1 + 56));
    v11 = *(a1 + 40);
    dispatch_async(v6, v7);

    objc_destroyWeak(&v12);
  }
}

void __35__COStateAddOn__constructMeshState__block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) copy];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) meshController];
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v8 = *(*(a1 + 40) + 32);
    *buf = 134218498;
    v27 = v6;
    v28 = 2112;
    v29 = v7;
    v30 = 2048;
    v31 = v8;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p constructing mesh post election. Self state = %@. generation = %lu ", buf, 0x20u);
  }

  v9 = objc_alloc_init(COStateReadRequest);
  v10 = *(*(a1 + 40) + 32);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __35__COStateAddOn__constructMeshState__block_invoke_37;
  v24[3] = &unk_278E180B8;
  objc_copyWeak(v25, (a1 + 72));
  v24[4] = *(a1 + 48);
  v25[1] = v10;
  v11 = MEMORY[0x245D5FF10](v24);
  v12 = [*(a1 + 40) meshController];
  v13 = v12 == 0;

  if (v13)
  {
    v11[2](v11);
  }

  v14 = [*(a1 + 40) meshController];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __35__COStateAddOn__constructMeshState__block_invoke_38;
  v20[3] = &unk_278E180E0;
  v22 = *(a1 + 56);
  objc_copyWeak(&v23, (a1 + 72));
  v15 = v11;
  v21 = v15;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __35__COStateAddOn__constructMeshState__block_invoke_2_40;
  v18[3] = &unk_278E18108;
  objc_copyWeak(v19, (a1 + 72));
  v16 = *(a1 + 48);
  v18[4] = *(a1 + 64);
  v18[5] = v16;
  v19[1] = v10;
  [v14 broadcastRequest:v9 includingSelf:0 recipientsCallback:v20 completionHandler:v18];

  objc_destroyWeak(v19);
  objc_destroyWeak(&v23);

  objc_destroyWeak(v25);
  v17 = *MEMORY[0x277D85DE8];
}

void __35__COStateAddOn__constructMeshState__block_invoke_37(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = COCoreLogForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __35__COStateAddOn__constructMeshState__block_invoke_37_cold_1(v3);
    }

    v4 = [[COStateNotification alloc] initWithState:*(*(*(a1 + 32) + 8) + 40)];
    [WeakRetained _handleStateNotification:v4];
    if (WeakRetained[4] == *(a1 + 48))
    {
      [WeakRetained _processOutstandingUpdateRequests];
    }
  }
}

void __35__COStateAddOn__constructMeshState__block_invoke_38(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  *(*(*(a1 + 48) + 8) + 24) = [v5 count];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && ![*(*(*(a1 + 40) + 8) + 40) count])
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __35__COStateAddOn__constructMeshState__block_invoke_2_40(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a5)
    {
      v11 = COCoreLogForCategory(6);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __35__COStateAddOn__constructMeshState__block_invoke_2_40_cold_1(v8, v11);
      }
    }

    else
    {
      v38 = v9;
      v12 = [v9 state];
      v13 = COCoreLogForCategory(6);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v35 = [WeakRetained meshController];
        v36 = *(*(*(a1 + 32) + 8) + 24) - 1;
        *buf = 134218754;
        v56 = v35;
        v57 = 2048;
        v58 = v8;
        v59 = 2112;
        v60 = v12;
        v61 = 2048;
        v62 = v36;
        _os_log_debug_impl(&dword_244378000, v13, OS_LOG_TYPE_DEBUG, "%p received COStateReadResponse from %p. Response state = %@. Waiting for %lu more responses", buf, 0x2Au);
      }

      v37 = WeakRetained;
      v39 = v8;

      v44 = v12;
      v14 = [v12 allKeys];
      v43 = [*(*(*(a1 + 40) + 8) + 40) mutableCopy];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = v14;
      v15 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v15)
      {
        v16 = v15;
        v41 = *v50;
        v42 = a1;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v50 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v49 + 1) + 8 * i);
            v19 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:{v18, v37}];
            if (v19)
            {
              v20 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v18];
              v21 = [v20 mutableCopy];
            }

            else
            {
              v21 = [MEMORY[0x277CBEB38] dictionary];
            }

            v22 = [v44 objectForKeyedSubscript:v18];
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v23 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v46;
              do
              {
                for (j = 0; j != v24; ++j)
                {
                  if (*v46 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v45 + 1) + 8 * j);
                  v28 = [v22 objectForKeyedSubscript:v27];
                  [v21 setObject:v28 forKey:v27];
                }

                v24 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
              }

              while (v24);
            }

            [v43 setObject:v21 forKey:v18];

            a1 = v42;
          }

          v16 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
        }

        while (v16);
      }

      v29 = *(*(a1 + 40) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v43;

      v9 = v38;
      v8 = v39;
      WeakRetained = v37;
      v11 = v44;
    }

    if (!--*(*(*(a1 + 32) + 8) + 24))
    {
      [WeakRetained _broadcastMeshState:*(*(*(a1 + 40) + 8) + 40)];
      if (WeakRetained[4] == *(a1 + 56))
      {
        v31 = COCoreLogForCategory(6);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [WeakRetained meshController];
          v33 = [v32 meshName];
          *buf = 138412290;
          v56 = v33;
          _os_log_impl(&dword_244378000, v31, OS_LOG_TYPE_DEFAULT, "Done with all outstanding mesh constructions %@, processing outstanding update requests if any", buf, 0xCu);
        }

        [WeakRetained _processOutstandingUpdateRequests];
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_processOutstandingUpdateRequests
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v3);

  self->_isConstructingState = 0;
  v4 = [MEMORY[0x277CBEB18] array];
  if ([(NSMutableArray *)self->_outstandingUpdateRequests count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = self->_outstandingUpdateRequests;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 addObject:*(*(&v25 + 1) + 8 * i)];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }
  }

  [(NSMutableArray *)self->_outstandingUpdateRequests removeAllObjects];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * j);
        v16 = [v15 request];
        v17 = [v15 callback];
        [(COStateAddOn *)self _handleStateUpdateRequest:v16 callback:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v12);
  }

  v18 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "Done processing outstanding update requests", v20, 2u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_broadcastMeshState:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [[COStateNotification alloc] initWithState:v4];
  v7 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "Sending state notification to all clients", v9, 2u);
  }

  v8 = [(COMeshAddOn *)self meshController];
  [v8 sendNotification:v6];

  [(COStateAddOn *)self _handleStateNotification:v6];
}

- (void)_handleStateNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 state];

  v7 = [(COStateAddOn *)self meshState];
  v8 = [v7 isEqualToDictionary:v6];

  if (v8)
  {
    v9 = COCoreLogForCategory(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(COMeshAddOn *)self meshController];
      v11 = [(COStateAddOn *)self meshState];
      *buf = 134218242;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%p handling state notification. No changes to current mesh state %@", buf, 0x16u);
    }
  }

  else
  {
    v12 = [(COStateAddOn *)self meshState];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__COStateAddOn__handleStateNotification___block_invoke;
    v14[3] = &unk_278E18180;
    v14[4] = self;
    v15 = v6;
    determineStateChanges(v12, v15, v14);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __41__COStateAddOn__handleStateNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) meshController];
    v9 = [*(a1 + 32) meshState];
    v10 = *(a1 + 40);
    v13 = 134218498;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p handling state notification. Updating current mesh state %@ with new mesh state %@", &v13, 0x20u);
  }

  [*(a1 + 32) setMeshState:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained addOn:*(a1 + 32) receivedUpdates:v6 removals:v5];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleStateUpdateNotification:(id)a3
{
  v4 = a3;
  v5 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v5);

  v7 = [v4 updates];
  v6 = [v4 removals];

  [(COStateAddOn *)self _handleUpdates:v7 removals:v6];
}

- (void)_handleStateReadRequest:(id)a3 callback:(id)a4
{
  v5 = a4;
  v6 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v6);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__COStateAddOn__handleStateReadRequest_callback___block_invoke;
  v9[3] = &unk_278E181A8;
  v10 = v5;
  v8 = v5;
  [WeakRetained stateForAddOn:self withCallback:v9];
}

void __49__COStateAddOn__handleStateReadRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[COStateReadResponse alloc] initWithState:v3];

  (*(*(a1 + 32) + 16))();
}

- (void)_handleStateUpdateRequest:(id)a3 callback:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(COMeshAddOn *)self meshController];
  v10 = [v9 me];
  v11 = [(COMeshAddOn *)self meshController];
  v12 = [v11 leader];
  v13 = [v10 isEqual:v12];

  if (v13)
  {
    v14 = COCoreLogForCategory(6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v6 updates];
      v16 = [v6 removals];
      v28 = 134218498;
      v29 = self;
      v30 = 2112;
      v31 = v15;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p leader processing state update request [updates = %@, removals = %@]", &v28, 0x20u);
    }

    if (self->_isConstructingState)
    {
      v17 = COCoreLogForCategory(6);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "We are currently in the middle of constructing the mesh state. Defering update requests", &v28, 2u);
      }

      v18 = objc_alloc_init(COOutstandingRequests);
      [(COOutstandingRequests *)v18 setRequest:v6];
      [(COOutstandingRequests *)v18 setCallback:v7];
      [(NSMutableArray *)self->_outstandingUpdateRequests addObject:v18];
    }

    else
    {
      v18 = objc_alloc_init(COStateUpdateResponse);
      v7[2](v7, v18, 0);
      v20 = [COStateUpdateNotification alloc];
      v21 = [v6 updates];
      v22 = [v6 removals];
      v23 = [(COStateUpdateNotification *)v20 initWithUpdates:v21 removals:v22];

      v24 = [(COMeshAddOn *)self meshController];
      [v24 sendNotification:v23];

      v25 = [v6 updates];
      v26 = [v6 removals];
      [(COStateAddOn *)self _handleUpdates:v25 removals:v26];
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4002 userInfo:0];
    (v7)[2](v7, 0, v19);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)removeKeyPaths:suite:withCallback:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "Removing keyPath %@ for suite %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sendStateUpdates:removals:withCallback:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_0(&dword_244378000, v0, v1, "Updating state of the mesh. updates = %@ removals = %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_sendRequest:(uint64_t)a1 withRetryCount:(NSObject *)a2 withCallback:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_244378000, a2, OS_LOG_TYPE_ERROR, "Failed to send request %@ too many times", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __57__COStateAddOn__sendRequest_withRetryCount_withCallback___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56) - 1;
  v5 = 138412546;
  v6 = v2;
  v7 = 2048;
  v8 = v3;
  _os_log_debug_impl(&dword_244378000, a2, OS_LOG_TYPE_DEBUG, "Failed to send request %@.  Remaining retries = %ld", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __35__COStateAddOn__constructMeshState__block_invoke_2_40_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_244378000, a2, OS_LOG_TYPE_ERROR, "Failed to get state from node %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end