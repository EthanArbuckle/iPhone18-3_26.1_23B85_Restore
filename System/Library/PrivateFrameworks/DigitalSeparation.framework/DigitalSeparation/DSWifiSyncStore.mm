@interface DSWifiSyncStore
- (BOOL)fetchWifiSyncStatus;
- (DSWifiSyncStore)init;
- (void)fetchPairedDevicesOnQueue:(id)a3 completion:(id)a4;
- (void)removeAllPairedDevicesOnQueue:(id)a3 completion:(id)a4;
- (void)removeComputersFromRemotePairing:(id)a3 withCompletion:(id)a4;
- (void)removePairedDevices:(id)a3 onQueue:(id)a4 withCompletion:(id)a5;
@end

@implementation DSWifiSyncStore

- (DSWifiSyncStore)init
{
  if (self)
  {
    v3 = objc_alloc_init(MEMORY[0x277D03620]);
    [(DSWifiSyncStore *)self setRemotePairing:v3];

    v4 = objc_alloc_init(MEMORY[0x277D03618]);
    [(DSWifiSyncStore *)self setRemotePairingStore:v4];

    v5 = os_log_create("com.apple.DigitalSeparation", "DSWifiSyncStore");
    v6 = DSLog_0;
    DSLog_0 = v5;

    v7 = dispatch_queue_create("WifiSyncQueue", 0);
    [(DSWifiSyncStore *)self setWorkQueue:v7];
  }

  return self;
}

- (BOOL)fetchWifiSyncStatus
{
  v2 = [(DSWifiSyncStore *)self remotePairingStore];
  v3 = [v2 isWifiSyncEnabled];

  return v3;
}

- (void)fetchPairedDevicesOnQueue:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DSWifiSyncStore *)self remotePairingStore];
  [v8 fetchPairedDevicesOnQueue:v7 completion:v6];
}

- (void)removeAllPairedDevicesOnQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DSWifiSyncStore *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__DSWifiSyncStore_removeAllPairedDevicesOnQueue_completion___block_invoke;
  block[3] = &unk_278F729A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __60__DSWifiSyncStore_removeAllPairedDevicesOnQueue_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = lockdown_delete_pair_records();
  if (v3)
  {
    v4 = v3;
    v5 = DSLog_0;
    if (os_log_type_enabled(DSLog_0, OS_LOG_TYPE_ERROR))
    {
      __60__DSWifiSyncStore_removeAllPairedDevicesOnQueue_completion___block_invoke_cold_1(v4, v5);
    }

    v6 = [DSError errorWithCode:v4];
    [v2 addObject:v6];
  }

  v7 = [*(a1 + 32) remotePairing];
  v8 = [v7 removeAllPairedDevices];

  if (v8)
  {
    v9 = DSLog_0;
    if (os_log_type_enabled(DSLog_0, OS_LOG_TYPE_ERROR))
    {
      __60__DSWifiSyncStore_removeAllPairedDevicesOnQueue_completion___block_invoke_cold_2(v8, v9);
    }

    [v2 addObject:v8];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__DSWifiSyncStore_removeAllPairedDevicesOnQueue_completion___block_invoke_6;
  v12[3] = &unk_278F726C8;
  v13 = v2;
  v10 = *(a1 + 40);
  v14 = *(a1 + 48);
  v11 = v2;
  dispatch_async(v10, v12);
}

void __60__DSWifiSyncStore_removeAllPairedDevicesOnQueue_completion___block_invoke_6(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [DSError errorWithCode:9 underlyingErrors:*(a1 + 32)];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  (*(*(a1 + 40) + 16))();
}

- (void)removePairedDevices:(id)a3 onQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DSWifiSyncStore *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__DSWifiSyncStore_removePairedDevices_onQueue_withCompletion___block_invoke;
  v15[3] = &unk_278F72A80;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __62__DSWifiSyncStore_removePairedDevices_onQueue_withCompletion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 remotePairingFrameworkIdentifier];

        if (v10)
        {
          [v2 addObject:v9];
        }

        v11 = [v9 lockdownFrameworkIdentifier];

        if (v11)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__DSWifiSyncStore_removePairedDevices_onQueue_withCompletion___block_invoke_2;
  v16[3] = &unk_278F72A58;
  v12 = *(a1 + 40);
  v17 = *(a1 + 48);
  v13 = *(a1 + 56);
  v18 = v3;
  v19 = v13;
  v14 = v3;
  [v12 removeComputersFromRemotePairing:v2 withCompletion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __62__DSWifiSyncStore_removePairedDevices_onQueue_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = DSLog_0;
    if (os_log_type_enabled(DSLog_0, OS_LOG_TYPE_ERROR))
    {
      __62__DSWifiSyncStore_removePairedDevices_onQueue_withCompletion___block_invoke_2_cold_1(v4, v3);
    }

    v5 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__DSWifiSyncStore_removePairedDevices_onQueue_withCompletion___block_invoke_8;
    block[3] = &unk_278F72600;
    v6 = &v27;
    v27 = *(a1 + 48);
    v26 = v3;
    dispatch_async(v5, block);
  }

  else
  {
    v18 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = *(a1 + 40);
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 lockdownFrameworkKey];
          v14 = lockdown_unpair_host_by_id();

          if (v14)
          {
            v15 = DSLog_0;
            if (os_log_type_enabled(DSLog_0, OS_LOG_TYPE_ERROR))
            {
              __62__DSWifiSyncStore_removePairedDevices_onQueue_withCompletion___block_invoke_2_cold_2(v28, v15, v12, &v29);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v30 count:16];
      }

      while (v9);
    }

    v16 = *(a1 + 32);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __62__DSWifiSyncStore_removePairedDevices_onQueue_withCompletion___block_invoke_9;
    v19[3] = &unk_278F72978;
    v6 = &v20;
    v20 = *(a1 + 48);
    dispatch_async(v16, v19);
    v3 = v18;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeComputersFromRemotePairing:(id)a3 withCompletion:(id)a4
{
  remotePairing = self->_remotePairing;
  v7 = a4;
  v8 = a3;
  v9 = [(DSWifiSyncStore *)self workQueue];
  [(DSRemotePairingWrapper *)remotePairing removeSelectedDevices:v8 onQueue:v9 withCompletion:v7];
}

void __60__DSWifiSyncStore_removeAllPairedDevicesOnQueue_completion___block_invoke_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_248C40000, a2, OS_LOG_TYPE_ERROR, "liblockdown - Error removing at least one paired device: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void __60__DSWifiSyncStore_removeAllPairedDevicesOnQueue_completion___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248C40000, a2, OS_LOG_TYPE_ERROR, "Remote Pairing - Error removing at least one paired device: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __62__DSWifiSyncStore_removePairedDevices_onQueue_withCompletion___block_invoke_2_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_248C40000, v3, OS_LOG_TYPE_ERROR, "Failed to remove computers from remote pairing: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __62__DSWifiSyncStore_removePairedDevices_onQueue_withCompletion___block_invoke_2_cold_2(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 lockdownFrameworkKey];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_error_impl(&dword_248C40000, v7, OS_LOG_TYPE_ERROR, "Failed to unpair lockdown host with ID: %@", a1, 0xCu);
}

@end