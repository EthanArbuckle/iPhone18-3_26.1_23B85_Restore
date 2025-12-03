@interface DSContinuityStore
+ (void)nullifyReplicatorAllowlist;
- (DSContinuityStore)init;
- (void)fetchPairedDevicesWithCompletion:(id)completion;
- (void)unpairAllDevicesWithCompletion:(id)completion;
- (void)unpairDevicesWithIDs:(id)ds completion:(id)completion;
@end

@implementation DSContinuityStore

- (DSContinuityStore)init
{
  v8.receiver = self;
  v8.super_class = DSContinuityStore;
  v2 = [(DSContinuityStore *)&v8 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.DigitalSeparation", "DSContinuityStore");
    v4 = DSLog_3;
    DSLog_3 = v3;

    v5 = objc_alloc_init(MEMORY[0x277D46AE0]);
    [(DSContinuityStore *)v2 setReplicatorProxy:v5];

    v6 = objc_alloc_init(MEMORY[0x277D03610]);
    [(DSContinuityStore *)v2 setContinuityPairing:v6];
  }

  return v2;
}

- (void)fetchPairedDevicesWithCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  replicatorProxy = [(DSContinuityStore *)self replicatorProxy];
  devices = [replicatorProxy devices];

  v8 = [devices countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(devices);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        deviceID = [v12 deviceID];
        [dictionary setObject:v12 forKeyedSubscript:deviceID];
      }

      v9 = [devices countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  continuityPairing = [(DSContinuityStore *)self continuityPairing];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__DSContinuityStore_fetchPairedDevicesWithCompletion___block_invoke;
  v18[3] = &unk_278F72DB8;
  v19 = dictionary;
  selfCopy = self;
  v21 = completionCopy;
  v15 = completionCopy;
  v16 = dictionary;
  [continuityPairing fetchContinuityEligibleDevicesWithCompletion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __54__DSContinuityStore_fetchPairedDevicesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v22 = a3;
  obj = v5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v24 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = *(a1 + 32);
        v11 = [v9 deviceID];
        v12 = [v10 objectForKey:v11];
        v13 = [v12 initialDiscoveryDate];

        [v9 setInitialDiscoveryDate:v13];
        v14 = [*(a1 + 40) replicatorProxy];
        v15 = [v9 relationshipID];
        v16 = [v14 pushTokenForRelationshipID:v15];

        v17 = [v16 length];
        v18 = [MEMORY[0x277CCAB68] stringWithCapacity:2 * v17];
        v19 = [v16 bytes];
        if ([v16 length])
        {
          v20 = 0;
          do
          {
            [v18 appendFormat:@"%02X", *(v19 + v20++)];
          }

          while (v20 < [v16 length]);
        }

        [v9 setPushToken:v18];
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 48) + 16))();

  v21 = *MEMORY[0x277D85DE8];
}

- (void)unpairAllDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__DSContinuityStore_unpairAllDevicesWithCompletion___block_invoke;
  v6[3] = &unk_278F72DE0;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(DSContinuityStore *)self fetchPairedDevicesWithCompletion:v6];
}

void __52__DSContinuityStore_unpairAllDevicesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DSLog_3;
    if (os_log_type_enabled(DSLog_3, OS_LOG_TYPE_ERROR))
    {
      __52__DSContinuityStore_unpairAllDevicesWithCompletion___block_invoke_cold_1(v6, v7);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [v5 valueForKey:@"deviceID"];
    v9 = DSLog_3;
    if (os_log_type_enabled(DSLog_3, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_248C40000, v9, OS_LOG_TYPE_INFO, "Unpairing all devices %@ by identifiers %@", &v11, 0x16u);
    }

    [*(a1 + 32) unpairDevicesWithIDs:v8 completion:*(a1 + 40)];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)unpairDevicesWithIDs:(id)ds completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  array = [MEMORY[0x277CBEB18] array];
  v8 = dispatch_group_create();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = dsCopy;
  v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        dispatch_group_enter(v8);
        continuityPairing = [(DSContinuityStore *)self continuityPairing];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __53__DSContinuityStore_unpairDevicesWithIDs_completion___block_invoke;
        v23[3] = &unk_278F72E08;
        v23[4] = v13;
        v24 = array;
        v25 = v8;
        [continuityPairing unpairHostWithDeviceID:v13 completion:v23];

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__DSContinuityStore_unpairDevicesWithIDs_completion___block_invoke_12;
  block[3] = &unk_278F726C8;
  v21 = array;
  v22 = completionCopy;
  v15 = completionCopy;
  v16 = array;
  dispatch_group_notify(v8, MEMORY[0x277D85CD0], block);

  v17 = *MEMORY[0x277D85DE8];
}

void __53__DSContinuityStore_unpairDevicesWithIDs_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DSLog_3;
    if (os_log_type_enabled(DSLog_3, OS_LOG_TYPE_ERROR))
    {
      __53__DSContinuityStore_unpairDevicesWithIDs_completion___block_invoke_cold_1(a1, v3, v4);
    }

    [*(a1 + 40) addObject:v3];
  }

  dispatch_group_leave(*(a1 + 48));
}

void __53__DSContinuityStore_unpairDevicesWithIDs_completion___block_invoke_12(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [DSError errorWithCode:10 underlyingErrors:*(a1 + 32)];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  (*(*(a1 + 40) + 16))();
}

+ (void)nullifyReplicatorAllowlist
{
  v2 = objc_alloc_init(MEMORY[0x277D46AE0]);
  if ([v2 isAllowListEnabled])
  {
    v3 = DSLog_3;
    if (os_log_type_enabled(DSLog_3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_248C40000, v3, OS_LOG_TYPE_DEFAULT, "Nullifying allowlist because it's not in use right now", v4, 2u);
    }

    [v2 setAllowList:0];
  }
}

void __52__DSContinuityStore_unpairAllDevicesWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_248C40000, a2, OS_LOG_TYPE_ERROR, "Fetch failed with error %{public}@, bailing unpair call...", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __53__DSContinuityStore_unpairDevicesWithIDs_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_248C40000, log, OS_LOG_TYPE_ERROR, "Failed to unpair device with ID %@ because %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end