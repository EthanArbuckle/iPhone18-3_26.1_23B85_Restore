@interface IRAVOutputDeviceProvider
- (IRAVOutputDeviceProvider)init;
- (id)_logDevicesString:(id)string;
- (void)addObserver:(id)observer;
- (void)didUpdateAVOutputDevices:(id)devices;
- (void)logActiveDevices;
- (void)removeObserver:(id)observer;
@end

@implementation IRAVOutputDeviceProvider

- (IRAVOutputDeviceProvider)init
{
  v8.receiver = self;
  v8.super_class = IRAVOutputDeviceProvider;
  v2 = [(IRAVOutputDeviceProvider *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.intelligentroutingd.IRAVOutputDeviceProvider", v3);
    [(IRAVOutputDeviceProvider *)v2 setQueue:v4];

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(IRAVOutputDeviceProvider *)v2 setObservers:weakObjectsHashTable];

    v6 = objc_alloc_init(MEMORY[0x277CBEB98]);
    [(IRAVOutputDeviceProvider *)v2 setCachedDevices:v6];
  }

  return v2;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = [(IRAVOutputDeviceProvider *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__IRAVOutputDeviceProvider_addObserver___block_invoke;
  v7[3] = &unk_2797E0DB0;
  v8 = observerCopy;
  v6 = observerCopy;
  IRDispatchSyncWithStrongSelf(queue, self, v7);
}

void __40__IRAVOutputDeviceProvider_addObserver___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 observers];
  v5 = [v4 containsObject:*(a1 + 32)];

  if ((v5 & 1) == 0)
  {
    v6 = [v3 observers];
    [v6 addObject:*(a1 + 32)];

    v7 = [v3 observers];
    v8 = [v7 allObjects];
    v9 = [v8 count];

    if (v9 == 1)
    {
      v10 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v11 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        v17 = 136315394;
        v18 = "#avod-provider, ";
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&dword_25543D000, v11, OS_LOG_TYPE_INFO, "%s[%@], Registering for output devices notification", &v17, 0x16u);
      }

      v12 = [v3 discoverySessionController];
      [v12 registerForAvailableOutputDevicesNotification];
    }

    v13 = *(a1 + 32);
    v14 = [v3 cachedDevices];
    v15 = [v14 copy];
    [v13 provider:v3 didUpdateAVOutputDevices:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = [(IRAVOutputDeviceProvider *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__IRAVOutputDeviceProvider_removeObserver___block_invoke;
  v7[3] = &unk_2797E0DB0;
  v8 = observerCopy;
  v6 = observerCopy;
  IRDispatchSyncWithStrongSelf(queue, self, v7);
}

void __43__IRAVOutputDeviceProvider_removeObserver___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 observers];
  v5 = [v4 containsObject:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 observers];
    [v6 removeObject:*(a1 + 32)];

    v7 = [v3 observers];
    v8 = [v7 allObjects];
    v9 = [v8 count];

    if (!v9)
    {
      v10 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v11 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        v14 = 136315394;
        v15 = "#avod-provider, ";
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_25543D000, v11, OS_LOG_TYPE_INFO, "%s[%@], Unregistering for output devices notification", &v14, 0x16u);
      }

      v12 = [v3 discoverySessionController];
      [v12 unregisterForAvailableOutputDevicesNotification];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateAVOutputDevices:(id)devices
{
  devicesCopy = devices;
  queue = [(IRAVOutputDeviceProvider *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__IRAVOutputDeviceProvider_didUpdateAVOutputDevices___block_invoke;
  v7[3] = &unk_2797E0DB0;
  v8 = devicesCopy;
  v6 = devicesCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v7);
}

void __53__IRAVOutputDeviceProvider_didUpdateAVOutputDevices___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 cachedDevices];
  v5 = [v4 isEqual:*(a1 + 32)];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 32) copy];
    [v3 setCachedDevices:v6];

    v7 = [v3 cachedDevices];
    v8 = [v7 copy];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v3 observers];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v19 + 1) + 8 * v13++) provider:v3 didUpdateAVOutputDevices:v8];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v11);
    }

    v14 = *MEMORY[0x277D21270];
    if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = v14;
      v17 = [v3 _logDevicesString:v15];
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&dword_25543D000, v16, OS_LOG_TYPE_DEFAULT, "#avod-provider, %@", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)logActiveDevices
{
  queue = [(IRAVOutputDeviceProvider *)self queue];
  IRDispatchAsyncWithStrongSelf(queue, self, &__block_literal_global_2);
}

void __44__IRAVOutputDeviceProvider_logActiveDevices__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = a2;
    v6 = [v5 cachedDevices];
    v7 = [v5 _logDevicesString:v6];

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_25543D000, v4, OS_LOG_TYPE_DEFAULT, "#avod-provider, %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_logDevicesString:(id)string
{
  stringCopy = string;
  v4 = objc_opt_new();
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __46__IRAVOutputDeviceProvider__logDevicesString___block_invoke;
  v13 = &unk_2797E0DF8;
  v14 = v4;
  v5 = v4;
  [stringCopy enumerateObjectsUsingBlock:&v10];

  v6 = MEMORY[0x277CCACA8];
  v7 = [v5 componentsJoinedByString:@"\n"];
  v8 = [v6 stringWithFormat:@"AVOD Active Devices:\n%@", v7, v10, v11, v12, v13];

  return v8;
}

void __46__IRAVOutputDeviceProvider__logDevicesString___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v13 = [v4 deviceID];
  v5 = [v4 modelID];
  v6 = [v4 deviceName];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "discoveredOverInfra")}];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "hasAirplayProperties")}];
  v9 = IRAVOutputDeviceTypeToString([v4 deviceType]);
  v10 = [v4 deviceSubType];

  v11 = IRAVOutputDeviceSubTypeToString(v10);
  v12 = [v3 stringWithFormat:@"ID: %@, model: %@, name: %@, infra: %@, hasAirplay: %@, type: %@, subtype: %@", v13, v5, v6, v7, v8, v9, v11];
  [v2 addObject:v12];
}

@end