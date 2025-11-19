@interface COMessageChannelRapportTransport
- (BOOL)_onqueue_devicePresentInGroup:(id)a3;
- (COMessageChannelRapportTransport)initWithIdentifier:(id)a3 delegate:(id)a4 companionLink:(id)a5 dispatchQueue:(id)a6;
- (COMessageChannelRapportTransport)initWithIdentifier:(id)a3 delegate:(id)a4 dispatchQueue:(id)a5;
- (COMessageChannelRapportTransportDelegate)delegate;
- (NSArray)activeMembers;
- (id)_onqueue_activeMemberWithIDSIdentifier:(id)a3;
- (id)_onqueue_memberFromRPCompanionLinkDevice:(id)a3;
- (id)_payloadTypeFromClass:(Class)a3;
- (void)_onqueue_handleDeviceFound:(id)a3;
- (void)_onqueue_handleDeviceLost:(id)a3;
- (void)_onqueue_handleDeviceUpdated:(id)a3;
- (void)_onqueue_handleIncomingRequest:(id)a3 options:(id)a4 responseHandler:(id)a5;
- (void)_withLock:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)addHomeKitGroupIdentifiers:(id)a3;
- (void)dealloc;
- (void)removeHomeKitGroupIdentifiers:(id)a3;
- (void)sendRequest:(id)a3 to:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation COMessageChannelRapportTransport

- (COMessageChannelRapportTransport)initWithIdentifier:(id)a3 delegate:(id)a4 dispatchQueue:(id)a5
{
  v8 = MEMORY[0x277D44160];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(v8);
  [v12 setControlFlags:2052];
  [v12 setDispatchQueue:v9];
  v13 = [(COMessageChannelRapportTransport *)self initWithIdentifier:v11 delegate:v10 companionLink:v12 dispatchQueue:v9];

  return v13;
}

- (COMessageChannelRapportTransport)initWithIdentifier:(id)a3 delegate:(id)a4 companionLink:(id)a5 dispatchQueue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = COMessageChannelRapportTransport;
  v15 = [(COMessageChannelRapportTransport *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-messageChannel-request", v11];
    requestIdentifier = v16->_requestIdentifier;
    v16->_requestIdentifier = v17;

    objc_storeStrong(&v16->_queue, a6);
    objc_storeStrong(&v16->_companionLinkClient, a5);
    objc_storeWeak(&v16->_delegate, v12);
    v19 = [MEMORY[0x277CBEB38] dictionary];
    activeMemberDevices = v16->_activeMemberDevices;
    v16->_activeMemberDevices = v19;
  }

  return v16;
}

- (void)dealloc
{
  [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
  v3.receiver = self;
  v3.super_class = COMessageChannelRapportTransport;
  [(COMessageChannelRapportTransport *)&v3 dealloc];
}

- (NSArray)activeMembers
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__COMessageChannelRapportTransport_activeMembers__block_invoke;
  v4[3] = &unk_278E122F0;
  v4[4] = self;
  v4[5] = &v5;
  [(COMessageChannelRapportTransport *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __49__COMessageChannelRapportTransport_activeMembers__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) activeMemberDevices];
  v2 = [v5 allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addHomeKitGroupIdentifiers:(id)a3
{
  v4 = a3;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__0;
  v18[4] = __Block_byref_object_dispose__0;
  v19 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__COMessageChannelRapportTransport_addHomeKitGroupIdentifiers___block_invoke;
  v10[3] = &unk_278E12318;
  v10[4] = self;
  v5 = v4;
  v11 = v5;
  v12 = &v14;
  v13 = v18;
  [(COMessageChannelRapportTransport *)self _withLock:v10];
  if (*(v15 + 24) == 1)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__COMessageChannelRapportTransport_addHomeKitGroupIdentifiers___block_invoke_22;
    block[3] = &unk_278E12340;
    block[4] = self;
    v9 = v18;
    v8 = v5;
    dispatch_async(queue, block);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(v18, 8);
}

void __63__COMessageChannelRapportTransport_addHomeKitGroupIdentifiers___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) groupHKIdentifiers];

  if (v2)
  {
    v3 = [*(a1 + 32) groupHKIdentifiers];
    v4 = [v3 setByAddingObjectsFromSet:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] setWithSet:*(a1 + 40)];
    v8 = *(a1 + 32);
    v3 = *(v8 + 24);
    *(v8 + 24) = v7;
  }

  if (*(*(a1 + 32) + 12) == 1)
  {
    v9 = COLogForCategory(9);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v20 = 134218242;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_244328000, v9, OS_LOG_TYPE_DEFAULT, "%p Adding HomeKit identifiers %@ after activation", &v20, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v12 = [*(a1 + 32) companionLinkClient];
    v13 = [v12 activeDevices];
    v14 = [v13 mutableCopy];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = [*(a1 + 32) companionLinkClient];
    v18 = [v17 localDevice];

    if (v18)
    {
      [*(*(*(a1 + 56) + 8) + 40) addObject:v18];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __63__COMessageChannelRapportTransport_addHomeKitGroupIdentifiers___block_invoke_22(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = COLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__COMessageChannelRapportTransport_addHomeKitGroupIdentifiers___block_invoke_22_cold_1(a1, v2);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = *(a1 + 40);
        v10 = [v8 homeKitIdentifier];
        LODWORD(v9) = [v9 containsObject:v10];

        if (v9)
        {
          [*(a1 + 32) _onqueue_handleDeviceFound:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeHomeKitGroupIdentifiers:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COLogForCategory(9);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p Removing HomeKit identifiers %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__COMessageChannelRapportTransport_removeHomeKitGroupIdentifiers___block_invoke;
  v9[3] = &unk_278E12368;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __66__COMessageChannelRapportTransport_removeHomeKitGroupIdentifiers___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activeMemberDevices];
  v23 = [v2 copy];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(a1 + 40);
  v24 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v24)
  {
    v22 = *v33;
    do
    {
      v3 = 0;
      do
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v3;
        v4 = *(*(&v32 + 1) + 8 * v3);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v5 = v23;
        v6 = [v5 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v29;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v29 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v28 + 1) + 8 * i);
              v11 = [v10 homeKitIdentifier];
              v12 = [v4 UUIDString];
              v13 = [v11 isEqualToString:v12];

              if (v13)
              {
                v14 = COLogForCategory(9);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  v15 = *(a1 + 32);
                  *buf = 134218242;
                  v37 = v15;
                  v38 = 2112;
                  v39 = v10;
                  _os_log_impl(&dword_244328000, v14, OS_LOG_TYPE_DEFAULT, "%p Removing member %@ from active member list", buf, 0x16u);
                }

                v16 = *(a1 + 32);
                v17 = [v16 activeMemberDevices];
                v18 = [v17 objectForKey:v10];
                [v16 _onqueue_handleDeviceLost:v18];
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v7);
        }

        v3 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v24);
  }

  v19 = *(a1 + 32);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __66__COMessageChannelRapportTransport_removeHomeKitGroupIdentifiers___block_invoke_23;
  v26[3] = &unk_278E12368;
  v26[4] = v19;
  v27 = *(a1 + 40);
  [v19 _withLock:v26];

  v20 = *MEMORY[0x277D85DE8];
}

void __66__COMessageChannelRapportTransport_removeHomeKitGroupIdentifiers___block_invoke_23(uint64_t a1)
{
  v2 = [*(a1 + 32) groupHKIdentifiers];

  if (v2)
  {
    v3 = [*(a1 + 32) groupHKIdentifiers];
    v4 = [v3 mutableCopy];

    [v4 minusSet:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;
  }
}

- (void)activateWithCompletion:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = COLogForCategory(9);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(COMessageChannelRapportTransport *)self requestIdentifier];
    *buf = 134218242;
    v31 = self;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p Going to register handler for %@", buf, 0x16u);
  }

  companionLinkClient = self->_companionLinkClient;
  v8 = [(COMessageChannelRapportTransport *)self requestIdentifier];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke;
  v27[3] = &unk_278E123B8;
  objc_copyWeak(&v28, &location);
  [(RPCompanionLinkClient *)companionLinkClient registerRequestID:v8 options:0 handler:v27];

  v9 = self->_companionLinkClient;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_3;
  v25[3] = &unk_278E123E0;
  objc_copyWeak(&v26, &location);
  [(RPCompanionLinkClient *)v9 setDeviceChangedHandler:v25];
  v10 = self->_companionLinkClient;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2_27;
  v23[3] = &unk_278E12408;
  objc_copyWeak(&v24, &location);
  [(RPCompanionLinkClient *)v10 setLocalDeviceUpdatedHandler:v23];
  v11 = self->_companionLinkClient;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2_30;
  v21[3] = &unk_278E12408;
  objc_copyWeak(&v22, &location);
  [(RPCompanionLinkClient *)v11 setDeviceFoundHandler:v21];
  v12 = self->_companionLinkClient;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2_32;
  v19[3] = &unk_278E12408;
  objc_copyWeak(&v20, &location);
  [(RPCompanionLinkClient *)v12 setDeviceLostHandler:v19];
  v13 = self->_companionLinkClient;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2_34;
  v16[3] = &unk_278E12458;
  objc_copyWeak(&v18, &location);
  v14 = v4;
  v17 = v14;
  [(RPCompanionLinkClient *)v13 activateWithCompletion:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];
}

void __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained[7];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2;
    v13[3] = &unk_278E12390;
    v13[4] = WeakRetained;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    dispatch_async(v12, v13);
  }
}

void __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = COLogForCategory(9);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v11 = WeakRetained;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p device changed %@", buf, 0x16u);
    }

    v6 = WeakRetained[7];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_25;
    v8[3] = &unk_278E12368;
    v8[4] = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2_27(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = COLogForCategory(9);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v11 = WeakRetained;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p local device updated %@", buf, 0x16u);
    }

    v6 = WeakRetained[7];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_28;
    v8[3] = &unk_278E12368;
    v8[4] = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2_30(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = COLogForCategory(9);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v11 = WeakRetained;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p device found %@", buf, 0x16u);
    }

    v6 = WeakRetained[7];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_31;
    v8[3] = &unk_278E12368;
    v8[4] = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2_32(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = COLogForCategory(9);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v11 = WeakRetained;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p device lost %@", buf, 0x16u);
    }

    v6 = WeakRetained[7];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_33;
    v8[3] = &unk_278E12368;
    v8[4] = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2_34(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
    *(WeakRetained + 12) = 1;
    v5 = *(WeakRetained + 7);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_3_35;
    block[3] = &unk_278E12430;
    block[4] = WeakRetained;
    dispatch_async(v5, block);
  }
}

void __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_3_35(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 companionLinkClient];
  v2 = [v3 localDevice];
  [v1 _onqueue_handleDeviceFound:v2];
}

- (void)sendRequest:(id)a3 to:(id)a4 withCompletionHandler:(id)a5
{
  v33[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMessageChannelRapportTransport *)self activeMemberDevices];
  v12 = [v11 objectForKey:v9];

  if (v12)
  {
    v32[0] = @"data";
    v13 = [(COMessageChannelRapportTransport *)self _serializedDataForRequest:v8];
    v33[0] = v13;
    v32[1] = @"className";
    v14 = [(COMessageChannelRapportTransport *)self _payloadTypeFromClass:objc_opt_class()];
    v33[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

    v16 = [(COMessageChannelRapportTransport *)self requestIdentifier];
    v17 = COLogForCategory(9);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v27 = self;
      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_244328000, v17, OS_LOG_TYPE_DEFAULT, "%p sending message %@ to member %@", buf, 0x20u);
    }

    v18 = [(COMessageChannelRapportTransport *)self companionLinkClient];
    v19 = [v12 effectiveIdentifier];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __73__COMessageChannelRapportTransport_sendRequest_to_withCompletionHandler___block_invoke;
    v23[3] = &unk_278E12480;
    v23[4] = self;
    v24 = v16;
    v25 = v10;
    v20 = v16;
    [v18 sendRequestID:v20 request:v15 destinationID:v19 options:0 responseHandler:v23];
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1111 userInfo:0];
    (*(v10 + 2))(v10, 0, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __73__COMessageChannelRapportTransport_sendRequest_to_withCompletionHandler___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = [a3 objectForKey:*MEMORY[0x277D442F8]];
  v10 = [v9 unsignedIntegerValue];

  v11 = COLogForCategory(9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1[4];
    v13 = a1[5];
    *buf = 134218754;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    v26 = 2048;
    v27 = v10;
    v28 = 2114;
    v29 = v8;
    _os_log_impl(&dword_244328000, v11, OS_LOG_TYPE_DEFAULT, "%p received callback for request %@. XID = 0x%llX. Error = %{public}@", buf, 0x2Au);
  }

  if (v8)
  {
    v20 = *MEMORY[0x277CCA7E8];
    v21 = v8;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1204 userInfo:v14];
    (*(a1[6] + 16))();
  }

  else if (v7)
  {
    v16 = [v7 objectForKey:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v7 objectForKey:@"className"];
      v18 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:NSClassFromString(v17) fromData:v16 error:0];
    }

    else
    {
      v18 = 0;
    }

    (*(a1[6] + 16))();
  }

  else
  {
    (*(a1[6] + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_handleIncomingRequest:(id)a3 options:(id)a4 responseHandler:(id)a5
{
  v79 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 objectForKey:*MEMORY[0x277D442D0]];
  if (!v11)
  {
    v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277D442C8]];
    v12 = [(COMessageChannelRapportTransport *)self companionLinkClient];
    v13 = [v12 localDevice];
    v14 = [v13 identifier];

    if (![v14 isEqual:v11])
    {
      v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1117 userInfo:0];
      v34 = COLogForCategory(9);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [COMessageChannelRapportTransport _onqueue_handleIncomingRequest:v8 options:v34 responseHandler:?];
      }

      (*(v10 + 2))(v10, 0, 0, v33);
      goto LABEL_47;
    }

    v15 = [(COMessageChannelRapportTransport *)self companionLinkClient];
    v16 = [v15 localDevice];
    [v16 idsDeviceIdentifier];
    v18 = v17 = v10;

    v11 = v18;
    v10 = v17;
  }

  v19 = [v9 objectForKey:*MEMORY[0x277D442F8]];
  v20 = [v19 unsignedIntegerValue];

  v21 = COLogForCategory(9);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v67 = self;
    v68 = 2114;
    v69 = v11;
    v70 = 2048;
    v71 = v20;
    _os_log_impl(&dword_244328000, v21, OS_LOG_TYPE_DEFAULT, "%p incoming request from IDS=%{public}@. XID = 0x%llX", buf, 0x20u);
  }

  v14 = [(COMessageChannelRapportTransport *)self _onqueue_activeMemberWithIDSIdentifier:v11];
  if (v14)
  {
    goto LABEL_7;
  }

  v31 = [(COMessageChannelRapportTransport *)self groupHKIdentifiers];
  v32 = [v31 count];

  if (!v32)
  {
    v35 = [(COMessageChannelRapportTransport *)self companionLinkClient];
    v36 = [v35 activeDevices];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v37 = v36;
    v38 = [v37 countByEnumeratingWithState:&v62 objects:v78 count:16];
    if (v38)
    {
      v39 = v38;
      v56 = v8;
      v58 = v20;
      v40 = v10;
      v41 = *v63;
      while (2)
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v63 != v41)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *(*(&v62 + 1) + 8 * i);
          v44 = [v43 idsDeviceIdentifier];
          if ([v44 isEqualToString:v11])
          {
            v14 = [(COMessageChannelRapportTransport *)self _onqueue_memberFromRPCompanionLinkDevice:v43];
            if (v14)
            {
              v45 = [(COMessageChannelRapportTransport *)self activeMemberDevices];
              [v45 setObject:v43 forKey:v14];

              v46 = COLogForCategory(9);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                v67 = self;
                v68 = 2114;
                v69 = v11;
                _os_log_impl(&dword_244328000, v46, OS_LOG_TYPE_DEFAULT, "%p did not find an active member for IDS=%{public}@ so creating one on demand", buf, 0x16u);
              }

              v47 = [(COMessageChannelRapportTransport *)self delegate];
              v10 = v40;
              if (objc_opt_respondsToSelector())
              {
                [v47 didFindMember:v14];
              }
            }

            else
            {
              v47 = COLogForCategory(9);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                [COMessageChannelRapportTransport _onqueue_handleIncomingRequest:options:responseHandler:];
              }

              v10 = v40;
            }

            v20 = v58;

            v8 = v56;
            goto LABEL_52;
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v62 objects:v78 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }

      v14 = 0;
      v10 = v40;
      v8 = v56;
      v20 = v58;
    }

    else
    {
      v14 = 0;
    }

LABEL_52:

LABEL_7:
    v22 = [(COMessageChannelRapportTransport *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_46:

      goto LABEL_47;
    }

    v57 = v20;
    v23 = [v8 objectForKey:@"data"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_42;
    }

    v54 = v10;
    v55 = v8;
    v24 = [v8 objectForKey:@"className"];
    v25 = NSClassFromString(v24);
    if (v25)
    {
      v61 = 0;
      v26 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v25 fromData:v23 error:&v61];
      v27 = v61;
      if (!v27)
      {

LABEL_40:
        v10 = v54;
        if (v26)
        {
          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 3221225472;
          v59[2] = __91__COMessageChannelRapportTransport__onqueue_handleIncomingRequest_options_responseHandler___block_invoke;
          v59[3] = &unk_278E124A8;
          v59[4] = self;
          v60 = v54;
          [v22 didReceiveRequest:v26 from:v14 withCompletionHandler:v59];

LABEL_45:
          goto LABEL_46;
        }

LABEL_42:
        v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1104 userInfo:0];
        v50 = COLogForCategory(9);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218754;
          v67 = self;
          v68 = 2114;
          v69 = 0;
          v70 = 2048;
          v71 = v57;
          v72 = 2114;
          v73 = v26;
          _os_log_error_impl(&dword_244328000, v50, OS_LOG_TYPE_ERROR, "%p failed to encode incoming request %{public}@ XID=0x%llX. error = %{public}@", buf, 0x2Au);
        }

        (*(v10 + 2))(v10, 0, 0, v26);
        goto LABEL_45;
      }

      v28 = v27;
      v52 = MEMORY[0x277CCA9B8];
      v53 = v23;
      v76 = *MEMORY[0x277CCA7E8];
      v77 = v27;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      v30 = [v52 errorWithDomain:@"COMessageChannelErrorDomain" code:-1104 userInfo:v29];
    }

    else
    {
      v53 = v23;
      v48 = MEMORY[0x277CCA9B8];
      v74 = @"COMessageChannelUnknownClassErrorKey";
      v75 = v24;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      v30 = [v48 errorWithDomain:@"COMessageChannelErrorDomain" code:-1104 userInfo:v29];
      v28 = 0;
      v26 = 0;
    }

    if (v30)
    {
      v49 = COLogForCategory(9);
      v8 = v55;
      v23 = v53;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        v67 = self;
        v68 = 2114;
        v69 = v26;
        v70 = 2048;
        v71 = v57;
        v72 = 2114;
        v73 = v30;
        _os_log_error_impl(&dword_244328000, v49, OS_LOG_TYPE_ERROR, "%p failed to encode incoming request %{public}@ XID=0x%llX. error = %{public}@", buf, 0x2Au);
      }

      v10 = v54;
      (v54)[2](v54, 0, 0, v30);

      goto LABEL_45;
    }

    v8 = v55;
    v23 = v53;
    goto LABEL_40;
  }

  v14 = COLogForCategory(9);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v67 = self;
    v68 = 2048;
    v69 = v20;
    _os_log_impl(&dword_244328000, v14, OS_LOG_TYPE_DEFAULT, "%p incoming request (XID = 0x%llX) from device not in our group, not creating one on demand", buf, 0x16u);
  }

LABEL_47:

  v51 = *MEMORY[0x277D85DE8];
}

void __91__COMessageChannelRapportTransport__onqueue_handleIncomingRequest_options_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v5)
    {
      v8 = [*(a1 + 32) _serializeDataForResponse:v5];
      v12[0] = @"data";
      v12[1] = @"className";
      v13[0] = v8;
      v9 = [*(a1 + 32) _payloadTypeFromClass:objc_opt_class()];
      v13[1] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

      (*(*(a1 + 40) + 16))();
      goto LABEL_6;
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
LABEL_6:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_handleDeviceFound:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COLogForCategory(9);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218242;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p handling device found %@", &v12, 0x16u);
  }

  if ([(COMessageChannelRapportTransport *)self _onqueue_devicePresentInGroup:v4])
  {
    v6 = COLogForCategory(9);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218242;
      v13 = self;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_244328000, v6, OS_LOG_TYPE_DEFAULT, "%p found device is in our group %@", &v12, 0x16u);
    }

    v7 = [(COMessageChannelRapportTransport *)self delegate];
    v8 = [(COMessageChannelRapportTransport *)self _onqueue_memberFromRPCompanionLinkDevice:v4];
    if (v8)
    {
      v9 = [(COMessageChannelRapportTransport *)self activeMemberDevices];
      [v9 setObject:v4 forKey:v8];

      if (objc_opt_respondsToSelector())
      {
        [v7 didFindMember:v8];
      }
    }

    else
    {
      v10 = COLogForCategory(9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [COMessageChannelRapportTransport _onqueue_handleDeviceFound:];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_handleDeviceLost:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COLogForCategory(9);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p device lost %@", &v11, 0x16u);
  }

  if ([(COMessageChannelRapportTransport *)self _onqueue_devicePresentInGroup:v4])
  {
    v6 = COLogForCategory(9);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218242;
      v12 = self;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_244328000, v6, OS_LOG_TYPE_DEFAULT, "%p lost device is in our group %@", &v11, 0x16u);
    }

    v7 = [(COMessageChannelRapportTransport *)self delegate];
    v8 = [(COMessageChannelRapportTransport *)self _onqueue_memberFromRPCompanionLinkDevice:v4];
    v9 = [(COMessageChannelRapportTransport *)self activeMemberDevices];
    [v9 removeObjectForKey:v8];

    if (objc_opt_respondsToSelector())
    {
      [v7 didLoseMember:v8];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_handleDeviceUpdated:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COLogForCategory(9);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v25 = self;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p device updated %@", buf, 0x16u);
  }

  v6 = [v4 homeKitIdentifier];
  if (v6)
  {
    v7 = [(COMessageChannelRapportTransport *)self groupHKIdentifiers];
    v8 = [v7 containsObject:v6];

    if (v8)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = [(COMessageChannelRapportTransport *)self activeMemberDevices];
      v10 = [v9 allKeys];

      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        while (2)
        {
          v14 = 0;
          do
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v19 + 1) + 8 * v14) homeKitIdentifier];
            v16 = [v6 UUIDString];
            v17 = [v15 isEqualToString:v16];

            if (v17)
            {

              goto LABEL_15;
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      [(COMessageChannelRapportTransport *)self _onqueue_handleDeviceFound:v4];
    }
  }

LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_onqueue_devicePresentInGroup:(id)a3
{
  v4 = a3;
  v5 = [v4 homeKitIdentifier];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__COMessageChannelRapportTransport__onqueue_devicePresentInGroup___block_invoke;
  v8[3] = &unk_278E124D0;
  v10 = &v11;
  v8[4] = self;
  v6 = v5;
  v9 = v6;
  [(COMessageChannelRapportTransport *)self _withLock:v8];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __66__COMessageChannelRapportTransport__onqueue_devicePresentInGroup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) groupHKIdentifiers];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

- (id)_onqueue_activeMemberWithIDSIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v5 = [(COMessageChannelRapportTransport *)self activeMemberDevices];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__COMessageChannelRapportTransport__onqueue_activeMemberWithIDSIdentifier___block_invoke;
  v9[3] = &unk_278E124F8;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __75__COMessageChannelRapportTransport__onqueue_activeMemberWithIDSIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = [v6 IDSIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (id)_onqueue_memberFromRPCompanionLinkDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 homeKitIdentifier];
  v5 = [v3 idsDeviceIdentifier];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    if (v4)
    {
      v7 = [v4 UUIDString];
      [v6 setObject:v7 forKey:@"accessory"];
    }

    [v6 setObject:v5 forKey:@"IDS"];
    if (([v3 flags] & 0x40) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = 3;
    }

    v9 = [[COClusterMember alloc] initWithType:v8 deviceMetadata:v6];
    [(COClusterMember *)v9 setDevice:v3];
  }

  else
  {
    v10 = COLogForCategory(9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [COMessageChannelRapportTransport _onqueue_memberFromRPCompanionLinkDevice:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_payloadTypeFromClass:(Class)a3
{
  if (a3)
  {
    v4 = NSStringFromClass(a3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (COMessageChannelRapportTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __63__COMessageChannelRapportTransport_addHomeKitGroupIdentifiers___block_invoke_22_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v5 = 134218242;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_244328000, a2, OS_LOG_TYPE_DEBUG, "%p checking active rapport devices %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_handleIncomingRequest:(uint64_t)a1 options:(uint64_t)a2 responseHandler:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_244328000, a2, a3, "%p incoming request %{public}@ does not have an IDS identifier field", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_handleIncomingRequest:options:responseHandler:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_244328000, v0, v1, "%p unable to produce an on-demand member from device %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_handleDeviceFound:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_244328000, v0, v1, "%p Unable to produce a member for device %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_memberFromRPCompanionLinkDevice:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 0;
  _os_log_error_impl(&dword_244328000, v0, OS_LOG_TYPE_ERROR, "%p failed to create a member for device. IDS identifier = %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end