@interface DKExtensionDiscovery
+ (id)discoveryUsingExtensionRegistry:(id)a3 services:(id)a4 bundleIdentifier:(id)a5;
- (DKExtensionDiscovery)initWithExtensionRegistry:(id)a3 services:(id)a4 bundleIdentifier:(id)a5;
- (void)_beginExtensionDiscovery;
- (void)_registerExtensions:(id)a3 error:(id)a4;
- (void)waitUntilComplete;
@end

@implementation DKExtensionDiscovery

+ (id)discoveryUsingExtensionRegistry:(id)a3 services:(id)a4 bundleIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[DKExtensionDiscovery alloc] initWithExtensionRegistry:v9 services:v8 bundleIdentifier:v7];

  return v10;
}

- (DKExtensionDiscovery)initWithExtensionRegistry:(id)a3 services:(id)a4 bundleIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = DKExtensionDiscovery;
  v12 = [(DKExtensionDiscovery *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_registry, a3);
    objc_storeStrong(&v13->_bundleIdentifier, a5);
    v14 = dispatch_queue_create("com.apple.DiagnosticsKit.discovery", MEMORY[0x277D85CD8]);
    discoveryQueue = v13->_discoveryQueue;
    v13->_discoveryQueue = v14;

    v16 = objc_alloc_init(MEMORY[0x277CCA928]);
    discoveryLock = v13->_discoveryLock;
    v13->_discoveryLock = v16;

    v13->_discoveryComplete = 0;
    objc_storeStrong(&v13->_services, a4);
    if (!v13->_bundleIdentifier)
    {
      objc_storeStrong(&v13->_bundleIdentifier, @"Default");
    }

    [(DKExtensionDiscovery *)v13 _beginExtensionDiscovery];
  }

  return v13;
}

- (void)_beginExtensionDiscovery
{
  v3 = [(DKExtensionDiscovery *)self discoveryLock];
  [v3 lock];

  [(DKExtensionDiscovery *)self setDiscoveryComplete:0];
  v4 = [(DKExtensionDiscovery *)self discoveryLock];
  [v4 unlock];

  v5 = [(DKExtensionDiscovery *)self discoveryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DKExtensionDiscovery__beginExtensionDiscovery__block_invoke;
  block[3] = &unk_278F6C050;
  block[4] = self;
  dispatch_async(v5, block);
}

void __48__DKExtensionDiscovery__beginExtensionDiscovery__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v2 = dispatch_group_create();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __48__DKExtensionDiscovery__beginExtensionDiscovery__block_invoke_2;
  v24[3] = &unk_278F6C0B8;
  objc_copyWeak(&v26, &location);
  group = v2;
  v25 = group;
  v3 = MEMORY[0x24C1E6340](v24);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [*v1 services];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v5)
  {
    v6 = *v21;
    v7 = *MEMORY[0x277CCA0F8];
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        dispatch_group_enter(group);
        v10 = DiagnosticsKitLogHandleForCategory(1);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_248B9D000, v10, OS_LOG_TYPE_DEFAULT, "Starting extension matching...", buf, 2u);
        }

        v11 = MEMORY[0x277CCA9C8];
        v28 = v7;
        v29 = v9;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        [v11 extensionsWithMatchingAttributes:v12 completion:v3];

        ++v8;
      }

      while (v5 != v8);
      v5 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v5);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  v13 = [*(a1 + 32) discoveryLock];
  [v13 lock];

  [*(a1 + 32) setDiscoveryComplete:1];
  v14 = [*(a1 + 32) discoveryLock];
  [v14 broadcast];

  v15 = [*(a1 + 32) discoveryLock];
  [v15 unlock];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
  v16 = *MEMORY[0x277D85DE8];
}

void __48__DKExtensionDiscovery__beginExtensionDiscovery__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "Finished extension matching.", v9, 2u);
  }

  [WeakRetained _registerExtensions:v6 error:v5];
  dispatch_group_leave(*(a1 + 32));
}

- (void)waitUntilComplete
{
  v3 = [(DKExtensionDiscovery *)self discoveryLock];
  [v3 lock];

  if (![(DKExtensionDiscovery *)self discoveryComplete])
  {
    do
    {
      v4 = [(DKExtensionDiscovery *)self discoveryLock];
      [v4 wait];
    }

    while (![(DKExtensionDiscovery *)self discoveryComplete]);
  }

  v5 = [(DKExtensionDiscovery *)self discoveryLock];
  [v5 unlock];
}

- (void)_registerExtensions:(id)a3 error:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v22 = v6;
  v23 = a4;
  if (v6)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16, v6, v23];
    if (v8)
    {
      v9 = *v27;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v12 = [(DKExtensionDiscovery *)self registry];
          v13 = [objc_alloc(objc_msgSend(v12 "extensionClass"))];

          if (!v13)
          {
            v18 = DiagnosticsKitLogHandleForCategory(1);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [(DKExtensionDiscovery *)&buf _registerExtensions:v25 error:v18];
            }

            goto LABEL_13;
          }

          v14 = [v13 bundleIdentifier];
          if (!v14)
          {
            goto LABEL_10;
          }

          v15 = [v13 bundleIdentifier];
          v16 = [(DKExtensionDiscovery *)self bundleIdentifier];
          v17 = [v15 isEqual:v16];

          if (v17)
          {
LABEL_10:
            v18 = [DKExtensionAdapter extensionAdapterWithExtensionAttributes:v13];
            v19 = [(DKExtensionDiscovery *)self registry];
            objc_sync_enter(v19);
            v20 = [(DKExtensionDiscovery *)self registry];
            [v20 addExtensionAdapter:v18];

            objc_sync_exit(v19);
LABEL_13:
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v7 = DiagnosticsKitLogHandleForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DKExtensionDiscovery _registerExtensions:v7 error:?];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_registerExtensions:(os_log_t)log error:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_248B9D000, log, OS_LOG_TYPE_ERROR, "Extension info not valid, ignoring.", buf, 2u);
}

@end