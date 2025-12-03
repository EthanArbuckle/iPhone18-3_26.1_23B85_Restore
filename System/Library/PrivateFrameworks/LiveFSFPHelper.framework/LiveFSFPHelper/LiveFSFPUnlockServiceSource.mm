@interface LiveFSFPUnlockServiceSource
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (LiveFSFPUnlockServiceSource)initWithFileProviderExtension:(id)extension itemIdentifier:(id)identifier;
- (id)makeListenerEndpointAndReturnError:(id *)error;
@end

@implementation LiveFSFPUnlockServiceSource

- (LiveFSFPUnlockServiceSource)initWithFileProviderExtension:(id)extension itemIdentifier:(id)identifier
{
  extensionCopy = extension;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = LiveFSFPUnlockServiceSource;
  v9 = [(LiveFSFPUnlockServiceSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileProviderExtension, extension);
    objc_storeStrong(&v10->_itemIdentifier, identifier);
    v11 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];
    listeners = v10->_listeners;
    v10->_listeners = v11;
  }

  return v10;
}

- (id)makeListenerEndpointAndReturnError:(id *)error
{
  anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
  [anonymousListener setDelegate:self];
  endpoint = [anonymousListener endpoint];
  [anonymousListener resume];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_listeners addObject:anonymousListener];
  objc_sync_exit(selfCopy);

  return endpoint;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28681BF40];
  [connectionCopy setExportedInterface:v8];

  [connectionCopy setExportedObject:self];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_listeners removeObject:listenerCopy];
  objc_sync_exit(selfCopy);

  objc_initWeak(&location, connectionCopy);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__LiveFSFPUnlockServiceSource_listener_shouldAcceptNewConnection___block_invoke;
  v14[3] = &unk_27981A880;
  v10 = listenerCopy;
  v15 = v10;
  [connectionCopy setInvalidationHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__LiveFSFPUnlockServiceSource_listener_shouldAcceptNewConnection___block_invoke_2;
  v12[3] = &unk_27981A8A8;
  objc_copyWeak(&v13, &location);
  [connectionCopy setInterruptionHandler:v12];
  [connectionCopy resume];
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