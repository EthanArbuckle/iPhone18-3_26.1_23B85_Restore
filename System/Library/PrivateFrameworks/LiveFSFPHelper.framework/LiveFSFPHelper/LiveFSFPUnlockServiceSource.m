@interface LiveFSFPUnlockServiceSource
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (LiveFSFPUnlockServiceSource)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4;
- (id)makeListenerEndpointAndReturnError:(id *)a3;
@end

@implementation LiveFSFPUnlockServiceSource

- (LiveFSFPUnlockServiceSource)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = LiveFSFPUnlockServiceSource;
  v9 = [(LiveFSFPUnlockServiceSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileProviderExtension, a3);
    objc_storeStrong(&v10->_itemIdentifier, a4);
    v11 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];
    listeners = v10->_listeners;
    v10->_listeners = v11;
  }

  return v10;
}

- (id)makeListenerEndpointAndReturnError:(id *)a3
{
  v4 = [MEMORY[0x277CCAE98] anonymousListener];
  [v4 setDelegate:self];
  v5 = [v4 endpoint];
  [v4 resume];
  v6 = self;
  objc_sync_enter(v6);
  [(NSHashTable *)v6->_listeners addObject:v4];
  objc_sync_exit(v6);

  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28681BF40];
  [v7 setExportedInterface:v8];

  [v7 setExportedObject:self];
  v9 = self;
  objc_sync_enter(v9);
  [(NSHashTable *)v9->_listeners removeObject:v6];
  objc_sync_exit(v9);

  objc_initWeak(&location, v7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__LiveFSFPUnlockServiceSource_listener_shouldAcceptNewConnection___block_invoke;
  v14[3] = &unk_27981A880;
  v10 = v6;
  v15 = v10;
  [v7 setInvalidationHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__LiveFSFPUnlockServiceSource_listener_shouldAcceptNewConnection___block_invoke_2;
  v12[3] = &unk_27981A8A8;
  objc_copyWeak(&v13, &location);
  [v7 setInterruptionHandler:v12];
  [v7 resume];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return 1;
}

void __66__LiveFSFPUnlockServiceSource_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void __83__LiveFSFPUnlockServiceSource_unlockWithPassword_saveToKeychain_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(*(a1 + 32) + 8) domain];
    v6 = [v5 identifier];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_255FE9000, v4, OS_LOG_TYPE_INFO, "unlockVolume on domain %@ returning %@", &v8, 0x16u);
  }

  if (!v3)
  {
    [*(*(a1 + 32) + 8) refreshVolumeInfo];
    [*(*(a1 + 32) + 8) enumerateRootContainer];
  }

  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

@end