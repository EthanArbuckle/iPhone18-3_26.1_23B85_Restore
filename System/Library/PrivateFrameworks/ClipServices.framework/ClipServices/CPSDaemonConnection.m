@interface CPSDaemonConnection
+ (CPSDaemonConnection)sharedConnection;
- (CPSDaemonConnection)init;
- (NSXPCConnection)xpcConnection;
- (NSXPCConnection)xpcConnectionNotEntitled;
- (void)cancelPrewarmingClipWithURL:(id)a3 completionHandler:(id)a4;
- (void)checkAndConsumeShowsAppAttributionBannerForBundleID:(id)a3 completion:(id)a4;
- (void)confirmLocationWithURL:(id)a3 inRegion:(id)a4 completion:(id)a5;
- (void)didDetermineAvailability:(BOOL)a3 options:(id)a4;
- (void)didFinishLoadingWithError:(id)a3;
- (void)didFinishTestingAtTime:(double)a3;
- (void)didInstallApplicationPlaceholder;
- (void)didRetrieveApplicationIcon:(id)a3;
- (void)didRetrieveBusinessIcon:(id)a3;
- (void)didRetrieveHeroImage:(id)a3;
- (void)didUpdateInstallProgress:(id)a3;
- (void)didUpdateMetadata:(id)a3;
- (void)fetchABRMetadataForDiagnosticsWithURL:(id)a3 completion:(id)a4;
- (void)fetchAMPMetadataForDiagnosticsWithBundleID:(id)a3 completion:(id)a4;
- (void)fetchClipMetadataAndImagesWithURL:(id)a3 completionHandler:(id)a4;
- (void)fetchClipMetadataWithURL:(id)a3 completionHandler:(id)a4;
- (void)fetchClipURLWithURLHash:(id)a3 completionHandler:(id)a4;
- (void)fetchWebClipsURLStringForClientBundleID:(id)a3 completion:(id)a4;
- (void)fetchWebClipsUUIDStringForClientBundleID:(id)a3 completion:(id)a4;
- (void)getLastLaunchOptionsWithBundleID:(id)a3 completion:(id)a4;
- (void)getUserNotificationConsentForBundleID:(id)a3 completion:(id)a4;
- (void)getWebClipDictionaryWithIdentifier:(id)a3 completion:(id)a4;
- (void)installClipWithURL:(id)a3 completionHandler:(id)a4;
- (void)isClipURL:(id)a3 completionHandler:(id)a4;
- (void)notifyWebClipActivationWithBundleID:(id)a3 referrerBundleID:(id)a4;
- (void)openClipWithInvocationUIIfNeededWithURL:(id)a3 completionHandler:(id)a4;
- (void)openClipWithURL:(id)a3 completionHandler:(id)a4;
- (void)openClipWithURL:(id)a3 launchOptions:(id)a4 completion:(id)a5;
- (void)performValidationWithRequest:(id)a3 completion:(id)a4;
- (void)prewarmClipWithURL:(id)a3 completionHandler:(id)a4;
- (void)registerSessionProxy:(id)a3;
- (void)remoteServiceDidCrash;
- (void)stopStallingCurrentInstallationWithCompletionHandler:(id)a3;
- (void)uninstallClipWithURL:(id)a3 completionHandler:(id)a4;
- (void)uninstallClipsWithBundleIDs:(id)a3 completionHandler:(id)a4;
- (void)unregisterSessionProxy:(id)a3;
@end

@implementation CPSDaemonConnection

+ (CPSDaemonConnection)sharedConnection
{
  if (sharedConnection_onceToken != -1)
  {
    +[CPSDaemonConnection sharedConnection];
  }

  v3 = sharedConnection_connection;

  return v3;
}

uint64_t __39__CPSDaemonConnection_sharedConnection__block_invoke()
{
  sharedConnection_connection = objc_alloc_init(CPSDaemonConnection);

  return MEMORY[0x2821F96F8]();
}

- (CPSDaemonConnection)init
{
  v7.receiver = self;
  v7.super_class = CPSDaemonConnection;
  v2 = [(CPSDaemonConnection *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ClipServices.clipserviced.CPSDaemonConnection", 0);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (NSXPCConnection)xpcConnection
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v4 = xpcConnection;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ClipServices.clipserviced" options:4096];
    v6 = self->_xpcConnection;
    self->_xpcConnection = v5;

    if (xpcConnection_onceToken != -1)
    {
      [CPSDaemonConnection xpcConnection];
    }

    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:xpcConnection_interface];
    [(NSXPCConnection *)self->_xpcConnection setExportedInterface:xpcConnection_clientInterface];
    [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__CPSDaemonConnection_xpcConnection__block_invoke_2;
    v10[3] = &unk_278DCE2A0;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v10];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__CPSDaemonConnection_xpcConnection__block_invoke_3;
    v8[3] = &unk_278DCE2A0;
    objc_copyWeak(&v9, &location);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v8];
    [(NSXPCConnection *)self->_xpcConnection resume];
    v4 = self->_xpcConnection;
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v4;
}

uint64_t __36__CPSDaemonConnection_xpcConnection__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285691810];
  v1 = xpcConnection_interface;
  xpcConnection_interface = v0;

  xpcConnection_clientInterface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285688398];

  return MEMORY[0x2821F96F8]();
}

void __36__CPSDaemonConnection_xpcConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[2];
    WeakRetained[2] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void __36__CPSDaemonConnection_xpcConnection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained remoteServiceDidCrash];
}

- (NSXPCConnection)xpcConnectionNotEntitled
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  xpcConnectionNotEntitled = self->_xpcConnectionNotEntitled;
  if (xpcConnectionNotEntitled)
  {
    v4 = xpcConnectionNotEntitled;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ClipServices.clipserviced" options:4096];
    v6 = self->_xpcConnectionNotEntitled;
    self->_xpcConnectionNotEntitled = v5;

    if (xpcConnectionNotEntitled_onceToken != -1)
    {
      [CPSDaemonConnection xpcConnectionNotEntitled];
    }

    [(NSXPCConnection *)self->_xpcConnectionNotEntitled setRemoteObjectInterface:xpcConnectionNotEntitled_interface];
    objc_initWeak(&location, self);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __47__CPSDaemonConnection_xpcConnectionNotEntitled__block_invoke_2;
    v11 = &unk_278DCE2A0;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)self->_xpcConnectionNotEntitled setInvalidationHandler:&v8];
    [(NSXPCConnection *)self->_xpcConnectionNotEntitled resume:v8];
    v4 = self->_xpcConnectionNotEntitled;
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v4;
}

uint64_t __47__CPSDaemonConnection_xpcConnectionNotEntitled__block_invoke()
{
  xpcConnectionNotEntitled_interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28568EAA8];

  return MEMORY[0x2821F96F8]();
}

void __47__CPSDaemonConnection_xpcConnectionNotEntitled__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[3];
    WeakRetained[3] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (void)remoteServiceDidCrash
{
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CPSDaemonConnection_remoteServiceDidCrash__block_invoke;
  block[3] = &unk_278DCDE30;
  block[4] = self;
  dispatch_async(connectionQueue, block);
}

uint64_t __44__CPSDaemonConnection_remoteServiceDidCrash__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(*(a1 + 32) + 32);

  return [v4 remoteServiceDidCrash];
}

- (void)didDetermineAvailability:(BOOL)a3 options:(id)a4
{
  v6 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CPSDaemonConnection_didDetermineAvailability_options___block_invoke;
  block[3] = &unk_278DCF148;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(connectionQueue, block);
}

uint64_t __56__CPSDaemonConnection_didDetermineAvailability_options___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setUsedByPPT:{objc_msgSend(*(a1 + 40), "safari_BOOLForKey:", @"RegisteredForTest"}];
  [*(*(a1 + 32) + 32) setOriginIsControlCenter:{objc_msgSend(*(a1 + 40), "safari_BOOLForKey:", @"OriginIsControlCenter"}];
  v2 = [*(a1 + 40) safari_stringForKey:@"LaunchReason"];
  [*(*(a1 + 32) + 32) setLaunchReason:v2];

  v3 = [*(a1 + 40) safari_stringForKey:@"SourceBundleID"];
  [*(*(a1 + 32) + 32) setSourceBundleID:v3];

  v4 = [*(a1 + 40) safari_stringForKey:@"ReferrerBundleID"];
  [*(*(a1 + 32) + 32) setReferrerBundleID:v4];

  v5 = *(*(a1 + 32) + 32);
  v6 = *(a1 + 48);

  return [v5 didDetermineAvailability:v6];
}

- (void)didUpdateMetadata:(id)a3
{
  v4 = a3;
  connectionQueue = self->_connectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__CPSDaemonConnection_didUpdateMetadata___block_invoke;
  v7[3] = &unk_278DCDE58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(connectionQueue, v7);
}

- (void)didFinishLoadingWithError:(id)a3
{
  v4 = a3;
  connectionQueue = self->_connectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__CPSDaemonConnection_didFinishLoadingWithError___block_invoke;
  v7[3] = &unk_278DCDE58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(connectionQueue, v7);
}

- (void)didUpdateInstallProgress:(id)a3
{
  v4 = a3;
  connectionQueue = self->_connectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__CPSDaemonConnection_didUpdateInstallProgress___block_invoke;
  v7[3] = &unk_278DCDE58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(connectionQueue, v7);
}

- (void)didInstallApplicationPlaceholder
{
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CPSDaemonConnection_didInstallApplicationPlaceholder__block_invoke;
  block[3] = &unk_278DCDE30;
  block[4] = self;
  dispatch_async(connectionQueue, block);
}

- (void)didRetrieveApplicationIcon:(id)a3
{
  v4 = a3;
  connectionQueue = self->_connectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__CPSDaemonConnection_didRetrieveApplicationIcon___block_invoke;
  v7[3] = &unk_278DCDE58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(connectionQueue, v7);
}

- (void)didRetrieveHeroImage:(id)a3
{
  v4 = a3;
  connectionQueue = self->_connectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__CPSDaemonConnection_didRetrieveHeroImage___block_invoke;
  v7[3] = &unk_278DCDE58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(connectionQueue, v7);
}

- (void)didFinishTestingAtTime:(double)a3
{
  connectionQueue = self->_connectionQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__CPSDaemonConnection_didFinishTestingAtTime___block_invoke;
  v4[3] = &unk_278DCE278;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(connectionQueue, v4);
}

uint64_t __46__CPSDaemonConnection_didFinishTestingAtTime___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) usedByPPT];
  if (result)
  {
    v3 = *(*(a1 + 32) + 32);
    v4 = *(a1 + 40);

    return [v3 didFinishTestingAtTime:v4];
  }

  return result;
}

- (void)didRetrieveBusinessIcon:(id)a3
{
  v4 = a3;
  connectionQueue = self->_connectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CPSDaemonConnection_didRetrieveBusinessIcon___block_invoke;
  v7[3] = &unk_278DCDE58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(connectionQueue, v7);
}

- (void)registerSessionProxy:(id)a3
{
  v4 = a3;
  connectionQueue = self->_connectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__CPSDaemonConnection_registerSessionProxy___block_invoke;
  v7[3] = &unk_278DCDE58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(connectionQueue, v7);
}

void __44__CPSDaemonConnection_registerSessionProxy___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (*(*(a1 + 32) + 32))
  {
    v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __44__CPSDaemonConnection_registerSessionProxy___block_invoke_cold_1(v2, a1, v3);
    }

    [*v2 unregisterSessionProxy:*(*v2 + 4)];
  }

  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    v11 = 134217984;
    v12 = v5;
    _os_log_impl(&dword_2436ED000, v4, OS_LOG_TYPE_INFO, "registerSessionProxy: Registering new session proxy (%p)", &v11, 0xCu);
  }

  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v6 = [*(a1 + 32) xpcConnection];
  v7 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_135];
  v8 = [*(*(a1 + 32) + 32) url];
  v9 = [*(a1 + 40) configuration];
  [v7 registerSessionWithURL:v8 configuration:v9];

  v10 = *MEMORY[0x277D85DE8];
}

void __44__CPSDaemonConnection_registerSessionProxy___block_invoke_132(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__CPSDaemonConnection_registerSessionProxy___block_invoke_132_cold_1(v3);
  }
}

- (void)unregisterSessionProxy:(id)a3
{
  v4 = a3;
  connectionQueue = self->_connectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__CPSDaemonConnection_unregisterSessionProxy___block_invoke;
  v7[3] = &unk_278DCDE58;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(connectionQueue, v7);
}

void __46__CPSDaemonConnection_unregisterSessionProxy___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = (a1 + 32);
  v4 = *(*(a1 + 40) + 32);
  v5 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v6 = v5;
  if (v3 == v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *v2;
      v14 = 134217984;
      v15 = v7;
      _os_log_impl(&dword_2436ED000, v6, OS_LOG_TYPE_INFO, "unregisterSessionProxy: Unregistering session proxy (%p)", &v14, 0xCu);
    }

    v8 = [*(a1 + 40) xpcConnection];
    v9 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_138];
    v10 = [*(*(a1 + 40) + 32) url];
    [v9 unregisterSessionWithURL:v10];

    v11 = *(a1 + 40);
    v12 = *(v11 + 32);
    *(v11 + 32) = 0;
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __46__CPSDaemonConnection_unregisterSessionProxy___block_invoke_cold_1(v2, v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __46__CPSDaemonConnection_unregisterSessionProxy___block_invoke_136(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __46__CPSDaemonConnection_unregisterSessionProxy___block_invoke_136_cold_1(v3);
  }
}

- (void)isClipURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CPSDaemonConnection_isClipURL_completionHandler___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __51__CPSDaemonConnection_isClipURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__CPSDaemonConnection_isClipURL_completionHandler___block_invoke_2;
  v7[3] = &unk_278DCE460;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__CPSDaemonConnection_isClipURL_completionHandler___block_invoke_139;
  v5[3] = &unk_278DCE438;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 isClipURL:v4 reply:v5];
}

void __51__CPSDaemonConnection_isClipURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__CPSDaemonConnection_isClipURL_completionHandler___block_invoke_2_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchClipMetadataAndImagesWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__CPSDaemonConnection_fetchClipMetadataAndImagesWithURL_completionHandler___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __75__CPSDaemonConnection_fetchClipMetadataAndImagesWithURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__CPSDaemonConnection_fetchClipMetadataAndImagesWithURL_completionHandler___block_invoke_2;
  v8[3] = &unk_278DCE460;
  v9 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v8];
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__CPSDaemonConnection_fetchClipMetadataAndImagesWithURL_completionHandler___block_invoke_141;
  v5[3] = &unk_278DCDBB0;
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 fetchClipMetadataAndImagesWithURL:v6 reply:v5];
}

void __75__CPSDaemonConnection_fetchClipMetadataAndImagesWithURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__CPSDaemonConnection_fetchClipMetadataAndImagesWithURL_completionHandler___block_invoke_2_cold_1(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __75__CPSDaemonConnection_fetchClipMetadataAndImagesWithURL_completionHandler___block_invoke_141(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75__CPSDaemonConnection_fetchClipMetadataAndImagesWithURL_completionHandler___block_invoke_141_cold_1(v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v9 = 138739971;
    v10 = v6;
    _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_INFO, "fetchClipMetadataAndImagesWithURL: successfully prewarmed clip with URL: %{sensitive}@", &v9, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)prewarmClipWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CPSDaemonConnection_prewarmClipWithURL_completionHandler___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __60__CPSDaemonConnection_prewarmClipWithURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__CPSDaemonConnection_prewarmClipWithURL_completionHandler___block_invoke_2;
  v8[3] = &unk_278DCE460;
  v9 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v8];
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__CPSDaemonConnection_prewarmClipWithURL_completionHandler___block_invoke_142;
  v5[3] = &unk_278DCDBB0;
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 prewarmClipWithURL:v6 reply:v5];
}

void __60__CPSDaemonConnection_prewarmClipWithURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__CPSDaemonConnection_prewarmClipWithURL_completionHandler___block_invoke_2_cold_1(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __60__CPSDaemonConnection_prewarmClipWithURL_completionHandler___block_invoke_142(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__CPSDaemonConnection_prewarmClipWithURL_completionHandler___block_invoke_142_cold_1(v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v9 = 138739971;
    v10 = v6;
    _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_INFO, "prewarmClip: successfully prewarmed clip with URL: %{sensitive}@", &v9, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancelPrewarmingClipWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CPSDaemonConnection_cancelPrewarmingClipWithURL_completionHandler___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __69__CPSDaemonConnection_cancelPrewarmingClipWithURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__CPSDaemonConnection_cancelPrewarmingClipWithURL_completionHandler___block_invoke_2;
  v8[3] = &unk_278DCE460;
  v9 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v8];
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__CPSDaemonConnection_cancelPrewarmingClipWithURL_completionHandler___block_invoke_143;
  v5[3] = &unk_278DCDBB0;
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 cancelPrewarmingClipWithURL:v6 reply:v5];
}

void __69__CPSDaemonConnection_cancelPrewarmingClipWithURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__CPSDaemonConnection_cancelPrewarmingClipWithURL_completionHandler___block_invoke_2_cold_1(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __69__CPSDaemonConnection_cancelPrewarmingClipWithURL_completionHandler___block_invoke_143(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __69__CPSDaemonConnection_cancelPrewarmingClipWithURL_completionHandler___block_invoke_143_cold_1(v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v9 = 138739971;
    v10 = v6;
    _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_INFO, "cancelPrewarm: successfully canceled prewarming clip with URL: %{sensitive}@", &v9, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)openClipWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CPSDaemonConnection_openClipWithURL_completionHandler___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __57__CPSDaemonConnection_openClipWithURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__CPSDaemonConnection_openClipWithURL_completionHandler___block_invoke_2;
  v8[3] = &unk_278DCE460;
  v9 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v8];
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__CPSDaemonConnection_openClipWithURL_completionHandler___block_invoke_144;
  v5[3] = &unk_278DCDBB0;
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 openClipWithURL:v6 launchOptions:0 reply:v5];
}

void __57__CPSDaemonConnection_openClipWithURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__CPSDaemonConnection_openClipWithURL_completionHandler___block_invoke_2_cold_1(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __57__CPSDaemonConnection_openClipWithURL_completionHandler___block_invoke_144(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__CPSDaemonConnection_openClipWithURL_completionHandler___block_invoke_144_cold_1(v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v9 = 138739971;
    v10 = v6;
    _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_INFO, "openClip: successfully opened clip with URL: %{sensitive}@", &v9, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)installClipWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CPSDaemonConnection_installClipWithURL_completionHandler___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __60__CPSDaemonConnection_installClipWithURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__CPSDaemonConnection_installClipWithURL_completionHandler___block_invoke_2;
  v7[3] = &unk_278DCE460;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__CPSDaemonConnection_installClipWithURL_completionHandler___block_invoke_145;
  v5[3] = &unk_278DCE460;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 installClipWithURL:v4 reply:v5];
}

void __60__CPSDaemonConnection_installClipWithURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__CPSDaemonConnection_installClipWithURL_completionHandler___block_invoke_2_cold_1(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

uint64_t __60__CPSDaemonConnection_installClipWithURL_completionHandler___block_invoke_145(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)uninstallClipWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__CPSDaemonConnection_uninstallClipWithURL_completionHandler___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __62__CPSDaemonConnection_uninstallClipWithURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__CPSDaemonConnection_uninstallClipWithURL_completionHandler___block_invoke_2;
  v7[3] = &unk_278DCE460;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__CPSDaemonConnection_uninstallClipWithURL_completionHandler___block_invoke_146;
  v5[3] = &unk_278DCE460;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 uninstallClipWithURL:v4 reply:v5];
}

void __62__CPSDaemonConnection_uninstallClipWithURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__CPSDaemonConnection_uninstallClipWithURL_completionHandler___block_invoke_2_cold_1(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

uint64_t __62__CPSDaemonConnection_uninstallClipWithURL_completionHandler___block_invoke_146(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)uninstallClipsWithBundleIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CPSDaemonConnection_uninstallClipsWithBundleIDs_completionHandler___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __69__CPSDaemonConnection_uninstallClipsWithBundleIDs_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__CPSDaemonConnection_uninstallClipsWithBundleIDs_completionHandler___block_invoke_2;
  v7[3] = &unk_278DCE460;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__CPSDaemonConnection_uninstallClipsWithBundleIDs_completionHandler___block_invoke_147;
  v5[3] = &unk_278DCE460;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 uninstallClipsWithBundleIDs:v4 reply:v5];
}

void __69__CPSDaemonConnection_uninstallClipsWithBundleIDs_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__CPSDaemonConnection_uninstallClipWithURL_completionHandler___block_invoke_2_cold_1(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

uint64_t __69__CPSDaemonConnection_uninstallClipsWithBundleIDs_completionHandler___block_invoke_147(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchClipMetadataWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__CPSDaemonConnection_fetchClipMetadataWithURL_completionHandler___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __66__CPSDaemonConnection_fetchClipMetadataWithURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__CPSDaemonConnection_fetchClipMetadataWithURL_completionHandler___block_invoke_2;
  v7[3] = &unk_278DCE460;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__CPSDaemonConnection_fetchClipMetadataWithURL_completionHandler___block_invoke_148;
  v5[3] = &unk_278DCF170;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 fetchClipMetadataWithURL:v4 reply:v5];
}

void __66__CPSDaemonConnection_fetchClipMetadataWithURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__CPSDaemonConnection_fetchClipMetadataWithURL_completionHandler___block_invoke_2_cold_1(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

uint64_t __66__CPSDaemonConnection_fetchClipMetadataWithURL_completionHandler___block_invoke_148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)fetchClipURLWithURLHash:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CPSDaemonConnection_fetchClipURLWithURLHash_completionHandler___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __65__CPSDaemonConnection_fetchClipURLWithURLHash_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__CPSDaemonConnection_fetchClipURLWithURLHash_completionHandler___block_invoke_2;
  v7[3] = &unk_278DCE460;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 bundleIdentifier];
  [v3 fetchClipURLWithURLHash:v4 sourceBundleID:v6 reply:*(a1 + 48)];
}

void __65__CPSDaemonConnection_fetchClipURLWithURLHash_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__CPSDaemonConnection_fetchClipURLWithURLHash_completionHandler___block_invoke_2_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)openClipWithInvocationUIIfNeededWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__CPSDaemonConnection_openClipWithInvocationUIIfNeededWithURL_completionHandler___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __81__CPSDaemonConnection_openClipWithInvocationUIIfNeededWithURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__CPSDaemonConnection_openClipWithInvocationUIIfNeededWithURL_completionHandler___block_invoke_2;
  v7[3] = &unk_278DCE460;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__CPSDaemonConnection_openClipWithInvocationUIIfNeededWithURL_completionHandler___block_invoke_151;
  v5[3] = &unk_278DCE460;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 openClipWithInvocationUIIfNeededWithURL:v4 reply:v5];
}

void __81__CPSDaemonConnection_openClipWithInvocationUIIfNeededWithURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __81__CPSDaemonConnection_openClipWithInvocationUIIfNeededWithURL_completionHandler___block_invoke_2_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)stopStallingCurrentInstallationWithCompletionHandler:(id)a3
{
  v4 = a3;
  connectionQueue = self->_connectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__CPSDaemonConnection_stopStallingCurrentInstallationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278DCDD70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(connectionQueue, v7);
}

void __76__CPSDaemonConnection_stopStallingCurrentInstallationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__CPSDaemonConnection_stopStallingCurrentInstallationWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_278DCE460;
  v7 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__CPSDaemonConnection_stopStallingCurrentInstallationWithCompletionHandler___block_invoke_152;
  v4[3] = &unk_278DCE438;
  v5 = *(a1 + 40);
  [v3 stopStallingCurrentInstallationWithReply:v4];
}

void __76__CPSDaemonConnection_stopStallingCurrentInstallationWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__CPSDaemonConnection_stopStallingCurrentInstallationWithCompletionHandler___block_invoke_2_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)openClipWithURL:(id)a3 launchOptions:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  connectionQueue = self->_connectionQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__CPSDaemonConnection_openClipWithURL_launchOptions_completion___block_invoke;
  v15[3] = &unk_278DCF198;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(connectionQueue, v15);
}

void __64__CPSDaemonConnection_openClipWithURL_launchOptions_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__CPSDaemonConnection_openClipWithURL_launchOptions_completion___block_invoke_2;
  v8[3] = &unk_278DCE460;
  v9 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v8];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__CPSDaemonConnection_openClipWithURL_launchOptions_completion___block_invoke_153;
  v6[3] = &unk_278DCE460;
  v7 = *(a1 + 56);
  [v3 openClipWithURL:v4 launchOptions:v5 reply:v6];
}

void __64__CPSDaemonConnection_openClipWithURL_launchOptions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__CPSDaemonConnection_openClipWithURL_launchOptions_completion___block_invoke_2_cold_1(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __64__CPSDaemonConnection_openClipWithURL_launchOptions_completion___block_invoke_153(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__CPSDaemonConnection_openClipWithURL_launchOptions_completion___block_invoke_153_cold_1(v4);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)getUserNotificationConsentForBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CPSDaemonConnection_getUserNotificationConsentForBundleID_completion___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __72__CPSDaemonConnection_getUserNotificationConsentForBundleID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__CPSDaemonConnection_getUserNotificationConsentForBundleID_completion___block_invoke_2;
  v7[3] = &unk_278DCE460;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__CPSDaemonConnection_getUserNotificationConsentForBundleID_completion___block_invoke_154;
  v5[3] = &unk_278DCF1C0;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 getUserNotificationConsentForBundleID:v4 reply:v5];
}

void __72__CPSDaemonConnection_getUserNotificationConsentForBundleID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__CPSDaemonConnection_getUserNotificationConsentForBundleID_completion___block_invoke_2_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __72__CPSDaemonConnection_getUserNotificationConsentForBundleID_completion___block_invoke_154(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __72__CPSDaemonConnection_getUserNotificationConsentForBundleID_completion___block_invoke_154_cold_1(v8);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)notifyWebClipActivationWithBundleID:(id)a3 referrerBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CPSDaemonConnection_notifyWebClipActivationWithBundleID_referrerBundleID___block_invoke;
  block[3] = &unk_278DCE110;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(connectionQueue, block);
}

void __76__CPSDaemonConnection_notifyWebClipActivationWithBundleID_referrerBundleID___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) xpcConnection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_157];
  [v2 notifyWebClipActivationWithBundleID:*(a1 + 40) referrerBundleID:*(a1 + 48) reply:&__block_literal_global_160];
}

void __76__CPSDaemonConnection_notifyWebClipActivationWithBundleID_referrerBundleID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __76__CPSDaemonConnection_notifyWebClipActivationWithBundleID_referrerBundleID___block_invoke_2_cold_1(v3);
  }
}

void __76__CPSDaemonConnection_notifyWebClipActivationWithBundleID_referrerBundleID___block_invoke_158(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __76__CPSDaemonConnection_notifyWebClipActivationWithBundleID_referrerBundleID___block_invoke_158_cold_1(v3);
    }
  }
}

- (void)getLastLaunchOptionsWithBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__CPSDaemonConnection_getLastLaunchOptionsWithBundleID_completion___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(connectionQueue, block);
}

void __67__CPSDaemonConnection_getLastLaunchOptionsWithBundleID_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) xpcConnection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_162];
  [v2 getLastLaunchOptionsWithBundleID:*(a1 + 40) reply:*(a1 + 48)];
}

void __67__CPSDaemonConnection_getLastLaunchOptionsWithBundleID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __67__CPSDaemonConnection_getLastLaunchOptionsWithBundleID_completion___block_invoke_2_cold_1(v3);
  }
}

- (void)checkAndConsumeShowsAppAttributionBannerForBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CPSDaemonConnection_checkAndConsumeShowsAppAttributionBannerForBundleID_completion___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __86__CPSDaemonConnection_checkAndConsumeShowsAppAttributionBannerForBundleID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__CPSDaemonConnection_checkAndConsumeShowsAppAttributionBannerForBundleID_completion___block_invoke_2;
  v4[3] = &unk_278DCE460;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 checkAndConsumeShowsAppAttributionBannerForBundleID:*(a1 + 40) completion:*(a1 + 48)];
}

void __86__CPSDaemonConnection_checkAndConsumeShowsAppAttributionBannerForBundleID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __86__CPSDaemonConnection_checkAndConsumeShowsAppAttributionBannerForBundleID_completion___block_invoke_2_cold_1(v4);
  }
}

- (void)confirmLocationWithURL:(id)a3 inRegion:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  connectionQueue = self->_connectionQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__CPSDaemonConnection_confirmLocationWithURL_inRegion_completion___block_invoke;
  v15[3] = &unk_278DCE070;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(connectionQueue, v15);
}

void __66__CPSDaemonConnection_confirmLocationWithURL_inRegion_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) xpcConnectionNotEntitled];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_164];
  [v2 confirmLocationWithURL:*(a1 + 40) inRegion:*(a1 + 48) reply:*(a1 + 56)];
}

void __66__CPSDaemonConnection_confirmLocationWithURL_inRegion_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __66__CPSDaemonConnection_confirmLocationWithURL_inRegion_completion___block_invoke_2_cold_1(v3);
  }
}

- (void)performValidationWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CPSDaemonConnection_performValidationWithRequest_completion___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(connectionQueue, block);
}

void __63__CPSDaemonConnection_performValidationWithRequest_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) xpcConnection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_166];
  [v2 performValidationWithRequest:*(a1 + 40) reply:*(a1 + 48)];
}

void __63__CPSDaemonConnection_performValidationWithRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __63__CPSDaemonConnection_performValidationWithRequest_completion___block_invoke_2_cold_1(v3);
  }
}

- (void)fetchAMPMetadataForDiagnosticsWithBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CPSDaemonConnection_fetchAMPMetadataForDiagnosticsWithBundleID_completion___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __77__CPSDaemonConnection_fetchAMPMetadataForDiagnosticsWithBundleID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__CPSDaemonConnection_fetchAMPMetadataForDiagnosticsWithBundleID_completion___block_invoke_2;
  v4[3] = &unk_278DCE460;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 fetchAMPMetadataForDiagnosticsWithBundleID:*(a1 + 40) reply:*(a1 + 48)];
}

void __77__CPSDaemonConnection_fetchAMPMetadataForDiagnosticsWithBundleID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__CPSDaemonConnection_fetchAMPMetadataForDiagnosticsWithBundleID_completion___block_invoke_2_cold_1(v4);
  }
}

- (void)fetchABRMetadataForDiagnosticsWithURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CPSDaemonConnection_fetchABRMetadataForDiagnosticsWithURL_completion___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __72__CPSDaemonConnection_fetchABRMetadataForDiagnosticsWithURL_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__CPSDaemonConnection_fetchABRMetadataForDiagnosticsWithURL_completion___block_invoke_2;
  v4[3] = &unk_278DCE460;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 fetchABRMetadataForDiagnosticsWithURL:*(a1 + 40) reply:*(a1 + 48)];
}

void __72__CPSDaemonConnection_fetchABRMetadataForDiagnosticsWithURL_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__CPSDaemonConnection_fetchABRMetadataForDiagnosticsWithURL_completion___block_invoke_2_cold_1(v4);
  }
}

- (void)fetchWebClipsUUIDStringForClientBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__CPSDaemonConnection_fetchWebClipsUUIDStringForClientBundleID_completion___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __75__CPSDaemonConnection_fetchWebClipsUUIDStringForClientBundleID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnectionNotEntitled];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__CPSDaemonConnection_fetchWebClipsUUIDStringForClientBundleID_completion___block_invoke_2;
  v4[3] = &unk_278DCE460;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 fetchWebClipsUUIDStringForClientBundleID:*(a1 + 40) reply:*(a1 + 48)];
}

void __75__CPSDaemonConnection_fetchWebClipsUUIDStringForClientBundleID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__CPSDaemonConnection_fetchWebClipsUUIDStringForClientBundleID_completion___block_invoke_2_cold_1(v4);
  }
}

- (void)fetchWebClipsURLStringForClientBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CPSDaemonConnection_fetchWebClipsURLStringForClientBundleID_completion___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __74__CPSDaemonConnection_fetchWebClipsURLStringForClientBundleID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnectionNotEntitled];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__CPSDaemonConnection_fetchWebClipsURLStringForClientBundleID_completion___block_invoke_2;
  v4[3] = &unk_278DCE460;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 fetchWebClipsURLStringForClientBundleID:*(a1 + 40) reply:*(a1 + 48)];
}

void __74__CPSDaemonConnection_fetchWebClipsURLStringForClientBundleID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__CPSDaemonConnection_fetchWebClipsURLStringForClientBundleID_completion___block_invoke_2_cold_1(v4);
  }
}

- (void)getWebClipDictionaryWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CPSDaemonConnection_getWebClipDictionaryWithIdentifier_completion___block_invoke;
  block[3] = &unk_278DCF078;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(connectionQueue, block);
}

void __69__CPSDaemonConnection_getWebClipDictionaryWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnectionNotEntitled];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__CPSDaemonConnection_getWebClipDictionaryWithIdentifier_completion___block_invoke_2;
  v4[3] = &unk_278DCE460;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 getWebClipDictionaryWithIdentifier:*(a1 + 40) reply:*(a1 + 48)];
}

void __69__CPSDaemonConnection_getWebClipDictionaryWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__CPSDaemonConnection_getWebClipDictionaryWithIdentifier_completion___block_invoke_2_cold_1(v4);
  }
}

void __44__CPSDaemonConnection_registerSessionProxy___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 32);
  v4 = *(a2 + 40);
  v6 = 134218240;
  v7 = v3;
  v8 = 2048;
  v9 = v4;
  _os_log_error_impl(&dword_2436ED000, log, OS_LOG_TYPE_ERROR, "registerSessionProxy: Existing session proxy (%p) is about to be overwritten with a new one (%p)", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __44__CPSDaemonConnection_registerSessionProxy___block_invoke_132_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "registerSessionProxy: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __46__CPSDaemonConnection_unregisterSessionProxy___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_2436ED000, a2, OS_LOG_TYPE_ERROR, "unregisterSessionProxy: try to unregister a stale session proxy (%p)", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __46__CPSDaemonConnection_unregisterSessionProxy___block_invoke_136_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "unregisterSessionProxy: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __51__CPSDaemonConnection_isClipURL_completionHandler___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "isClipURL: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __75__CPSDaemonConnection_fetchClipMetadataAndImagesWithURL_completionHandler___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "fetchClipMetadataAndImagesWithURL: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __75__CPSDaemonConnection_fetchClipMetadataAndImagesWithURL_completionHandler___block_invoke_141_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "fetchClipMetadataAndImagesWithURL: error when prewarming clip via daemon: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __60__CPSDaemonConnection_prewarmClipWithURL_completionHandler___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "prewarmClip: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __60__CPSDaemonConnection_prewarmClipWithURL_completionHandler___block_invoke_142_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "prewarmClip: error when prewarming clip via daemon: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __69__CPSDaemonConnection_cancelPrewarmingClipWithURL_completionHandler___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "cancelPrewarm: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __69__CPSDaemonConnection_cancelPrewarmingClipWithURL_completionHandler___block_invoke_143_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "cancelPrewarm: error when cancelling prewarming clip via daemon: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __57__CPSDaemonConnection_openClipWithURL_completionHandler___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "openClip: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __57__CPSDaemonConnection_openClipWithURL_completionHandler___block_invoke_144_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "openClip: error when opening clip via daemon: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __60__CPSDaemonConnection_installClipWithURL_completionHandler___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "installClipWithURL: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __62__CPSDaemonConnection_uninstallClipWithURL_completionHandler___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "uninstallClipWithURL: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __66__CPSDaemonConnection_fetchClipMetadataWithURL_completionHandler___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "fetchClipMetadataWithURL: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __65__CPSDaemonConnection_fetchClipURLWithURLHash_completionHandler___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "fetchClipMetadataWithURLHash: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __81__CPSDaemonConnection_openClipWithInvocationUIIfNeededWithURL_completionHandler___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "openClipWithInvocationUIIfNeededWithURL: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __76__CPSDaemonConnection_stopStallingCurrentInstallationWithCompletionHandler___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "stopStallingCurrentInstallation: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __64__CPSDaemonConnection_openClipWithURL_launchOptions_completion___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "openClipWithURL:launchOptions: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __64__CPSDaemonConnection_openClipWithURL_launchOptions_completion___block_invoke_153_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "openClipWithURL:launchOptions: Fail to open clip with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __72__CPSDaemonConnection_getUserNotificationConsentForBundleID_completion___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "getUserNotificationConsentForBundleID: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __72__CPSDaemonConnection_getUserNotificationConsentForBundleID_completion___block_invoke_154_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "getUserNotificationConsentForBundleID: Fail to get clip notification consent with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __76__CPSDaemonConnection_notifyWebClipActivationWithBundleID_referrerBundleID___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "notifyWebClipActivationWithBundleID: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __76__CPSDaemonConnection_notifyWebClipActivationWithBundleID_referrerBundleID___block_invoke_158_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "notifyWebClipActivationWithBundleID: failed with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __67__CPSDaemonConnection_getLastLaunchOptionsWithBundleID_completion___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "getLastLaunchOptionsWithBundleID: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __86__CPSDaemonConnection_checkAndConsumeShowsAppAttributionBannerForBundleID_completion___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "checkAndConsumeShowsAppAttributionBannerForBundleID: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __66__CPSDaemonConnection_confirmLocationWithURL_inRegion_completion___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "confirmLocationWithURL: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __63__CPSDaemonConnection_performValidationWithRequest_completion___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "performValidationWithRequest: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __77__CPSDaemonConnection_fetchAMPMetadataForDiagnosticsWithBundleID_completion___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "fetchAMPMetadataForDiagnosticsWithBundleID: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __72__CPSDaemonConnection_fetchABRMetadataForDiagnosticsWithURL_completion___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "fetchABRMetadataForDiagnosticsWithURL: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __75__CPSDaemonConnection_fetchWebClipsUUIDStringForClientBundleID_completion___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "fetchWebClipsUUIDStringForClientBundleID: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __74__CPSDaemonConnection_fetchWebClipsURLStringForClientBundleID_completion___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "fetchWebClipsURLStringForClientBundleID: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __69__CPSDaemonConnection_getWebClipDictionaryWithIdentifier_completion___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "getWebClipDictionaryWithIdentifier: Cannot connect to daemon with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end