@interface BRDaemonConnection
+ (id)cloudDocsAppSupportURL;
+ (id)cloudDocsAppSupportURLForPersonaID:(id)a3 needsPersonaSwitch:(BOOL)a4;
+ (id)cloudDocsCachesURL;
+ (id)cloudDocsCachesURLForPersonaID:(id)a3 needsPersonaSwitch:(BOOL)a4;
+ (id)defaultConnection;
+ (id)defaultConnectionForPersonaID:(id)a3;
+ (id)defaultConnectionIfExists;
+ (id)defaultConnectionIfExistsForPersonaID:(id)a3;
+ (id)homeDirectoryURL;
+ (id)homeDirectoryURLForPersonaID:(id)a3 needsPersonaSwitch:(BOOL)a4;
+ (id)mobileDocumentsURL;
+ (id)mobileDocumentsURLForPersonaID:(id)a3 needsPersonaSwitch:(BOOL)a4;
+ (id)secondaryConnection;
+ (id)secondaryConnectionForPersonaID:(id)a3;
+ (id)secondaryConnectionIfExists;
+ (id)secondaryConnectionIfExistsForPersonaID:(id)a3;
+ (id)syncedDesktopURL;
+ (id)syncedDesktopURLForPersonaID:(id)a3 needsPersonaSwitch:(BOOL)a4;
+ (id)syncedDocumentsURL;
+ (id)syncedDocumentsURLForPersonaID:(id)a3 needsPersonaSwitch:(BOOL)a4;
+ (id)syncedRootURLs;
+ (id)syncedRootURLsForPersonaID:(id)a3 needsPersonaSwitch:(BOOL)a4;
+ (void)clearURLCache;
+ (void)clearURLCacheForPersonaID:(id)a3;
+ (void)initialize;
+ (void)invalidateCachedURLProperties;
+ (void)invalidateCachedURLPropertiesForPersonaID:(id)a3;
- (id)initUsingUserLocalDaemon;
- (id)initUsingUserLocalDaemonTokenService;
- (id)newFPFSSyncProxy;
- (id)newSyncProxy;
- (id)newSyncTokenProxy;
- (void)_setupAndResumeForPersonaID:(id)a3;
- (void)newFPFSSyncProxy;
- (void)newSyncProxy;
- (void)newSyncTokenProxy;
@end

@implementation BRDaemonConnection

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(v2, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.clouddocs.xpc", v3);

    v5 = gDaemonDefaultQueue;
    gDaemonDefaultQueue = v4;

    v6 = objc_opt_new();
    v7 = gDaemonConnectionsByUUID;
    gDaemonConnectionsByUUID = v6;

    v8 = objc_opt_new();
    v9 = gDaemonDefaultConnectionsByPersonaID;
    gDaemonDefaultConnectionsByPersonaID = v8;

    v10 = objc_opt_new();
    v11 = gDaemonSecondaryConnectionsByPersonaID;
    gDaemonSecondaryConnectionsByPersonaID = v10;

    v12 = objc_opt_new();
    v13 = gCacheLock;
    gCacheLock = v12;

    v14 = objc_opt_new();
    v15 = g_homeDirectoryURLForPersona;
    g_homeDirectoryURLForPersona = v14;

    v16 = objc_opt_new();
    v17 = g_mobileDocumentsURLForPersona;
    g_mobileDocumentsURLForPersona = v16;

    v18 = objc_opt_new();
    v19 = g_cloudDocsAppSupportURLForPersona;
    g_cloudDocsAppSupportURLForPersona = v18;

    v20 = objc_opt_new();
    v21 = g_cloudDocsCachesURLForPersona;
    g_cloudDocsCachesURLForPersona = v20;

    v22 = objc_opt_new();
    v23 = g_syncedDocumentsURLForPersona;
    g_syncedDocumentsURLForPersona = v22;

    v24 = objc_opt_new();
    v25 = g_syncedDesktopURLForPersona;
    g_syncedDesktopURLForPersona = v24;

    v26 = objc_opt_new();
    v27 = g_syncedRootURLsForPersona;
    g_syncedRootURLsForPersona = v26;

    g_accountTokenDidChangeObserverForPersona = objc_opt_new();

    MEMORY[0x1EEE66BB8]();
  }
}

- (id)initUsingUserLocalDaemonTokenService
{
  v7.receiver = self;
  v7.super_class = BRDaemonConnection;
  v2 = [(BRDaemonConnection *)&v7 initWithMachServiceName:@"com.apple.bird.token" options:0];
  v3 = v2;
  if (v2)
  {
    v2->_isUsingTokenService = 1;
    v4 = [MEMORY[0x1E69DF068] sharedManager];
    v5 = [v4 br_currentPersonaID];
    [(BRDaemonConnection *)v3 _setupAndResumeForPersonaID:v5];
  }

  return v3;
}

- (id)newSyncTokenProxy
{
  if (!self->_isUsingTokenService)
  {
    [BRDaemonConnection newSyncTokenProxy];
  }

  return [[BRXPCSyncProxy alloc] initWithXPCObject:self];
}

+ (id)defaultConnection
{
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  v4 = [v3 br_currentPersonaID];
  v5 = [a1 defaultConnectionForPersonaID:v4];

  return v5;
}

- (id)initUsingUserLocalDaemon
{
  v6.receiver = self;
  v6.super_class = BRDaemonConnection;
  v2 = [(BRDaemonConnection *)&v6 initWithMachServiceName:@"com.apple.bird" options:0];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DF068] sharedManager];
    v4 = [v3 br_currentPersonaID];
    [(BRDaemonConnection *)v2 _setupAndResumeForPersonaID:v4];
  }

  return v2;
}

+ (id)mobileDocumentsURL
{
  v3 = [MEMORY[0x1E696AEC0] br_currentPersonaIDWithIsDataSeparated:0];
  v4 = [a1 mobileDocumentsURLForPersonaID:v3 needsPersonaSwitch:0];

  return v4;
}

+ (id)defaultConnectionIfExists
{
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  v4 = [v3 br_currentPersonaID];
  v5 = [a1 defaultConnectionIfExistsForPersonaID:v4];

  return v5;
}

+ (id)secondaryConnectionIfExists
{
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  v4 = [v3 br_currentPersonaID];
  v5 = [a1 secondaryConnectionIfExistsForPersonaID:v4];

  return v5;
}

- (id)newSyncProxy
{
  if (self->_isUsingTokenService)
  {
    [BRDaemonConnection newSyncProxy];
  }

  return [[BRXPCSyncProxy alloc] initWithXPCObject:self];
}

- (void)_setupAndResumeForPersonaID:(id)a3
{
  v4 = a3;
  if (self->_uuid)
  {
    [(BRDaemonConnection *)self _setUUID:?];
  }

  if (self->_isUsingTokenService)
  {
    BRCXPCTokenInterface();
  }

  else
  {
    BRCXPCInterface();
  }
  v5 = ;
  [(BRDaemonConnection *)self setRemoteObjectInterface:v5];

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__BRDaemonConnection__setupAndResumeForPersonaID___block_invoke;
  v13[3] = &unk_1E7A15630;
  objc_copyWeak(&v14, &location);
  [(BRDaemonConnection *)self setInterruptionHandler:v13];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __50__BRDaemonConnection__setupAndResumeForPersonaID___block_invoke_2;
  v10 = &unk_1E7A16B20;
  objc_copyWeak(&v12, &location);
  v6 = v4;
  v11 = v6;
  [(BRDaemonConnection *)self setInvalidationHandler:&v7];
  [(BRDaemonConnection *)self resume:v7];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __50__BRDaemonConnection__setupAndResumeForPersonaID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void __50__BRDaemonConnection__setupAndResumeForPersonaID___block_invoke_2(uint64_t a1)
{
  v2 = gDaemonDefaultQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__BRDaemonConnection__setupAndResumeForPersonaID___block_invoke_3;
  v3[3] = &unk_1E7A16B20;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
}

void __50__BRDaemonConnection__setupAndResumeForPersonaID___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [gDaemonDefaultConnectionsByPersonaID objectForKeyedSubscript:*(a1 + 32)];

    if (v5 == v3)
    {
      [gDaemonDefaultConnectionsByPersonaID setObject:0 forKeyedSubscript:*(a1 + 32)];
    }

    v4 = [gDaemonSecondaryConnectionsByPersonaID objectForKeyedSubscript:*(a1 + 32)];

    WeakRetained = v5;
    if (v5 == v4)
    {
      [gDaemonSecondaryConnectionsByPersonaID setObject:0 forKeyedSubscript:*(a1 + 32)];
      WeakRetained = v5;
    }

    if (WeakRetained[20])
    {
      [gDaemonConnectionsByUUID removeObjectForKey:?];
      WeakRetained = v5;
    }
  }
}

+ (id)defaultConnectionIfExistsForPersonaID:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__11;
  v15 = __Block_byref_object_dispose__11;
  v16 = 0;
  v4 = gDaemonDefaultQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__BRDaemonConnection_defaultConnectionIfExistsForPersonaID___block_invoke;
  v8[3] = &unk_1E7A15518;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __60__BRDaemonConnection_defaultConnectionIfExistsForPersonaID___block_invoke(uint64_t a1)
{
  v2 = [gDaemonDefaultConnectionsByPersonaID objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

+ (id)defaultConnectionForPersonaID:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__11;
  v15 = __Block_byref_object_dispose__11;
  v16 = 0;
  v4 = gDaemonDefaultQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__BRDaemonConnection_defaultConnectionForPersonaID___block_invoke;
  v8[3] = &unk_1E7A15518;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __52__BRDaemonConnection_defaultConnectionForPersonaID___block_invoke(uint64_t a1)
{
  v2 = [gDaemonDefaultConnectionsByPersonaID objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [[BRDaemonConnection alloc] initUsingUserLocalDaemon];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (!+[BRCloudDocsHelperProvider isFPFSExtension](BRCloudDocsHelperProvider, "isFPFSExtension") || [*(*(*(a1 + 40) + 8) + 40) validateConnectionExtensionInfoForPersonaID:*(a1 + 32)])
    {
      v8 = *(a1 + 32);
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v10 = gDaemonDefaultConnectionsByPersonaID;

      [v10 setObject:v9 forKeyedSubscript:v8];
    }
  }
}

+ (id)secondaryConnectionIfExistsForPersonaID:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__11;
  v15 = __Block_byref_object_dispose__11;
  v16 = 0;
  v4 = gDaemonDefaultQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__BRDaemonConnection_secondaryConnectionIfExistsForPersonaID___block_invoke;
  v8[3] = &unk_1E7A15518;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __62__BRDaemonConnection_secondaryConnectionIfExistsForPersonaID___block_invoke(uint64_t a1)
{
  v2 = [gDaemonSecondaryConnectionsByPersonaID objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

+ (id)secondaryConnectionForPersonaID:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__11;
  v15 = __Block_byref_object_dispose__11;
  v16 = 0;
  v4 = gDaemonDefaultQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__BRDaemonConnection_secondaryConnectionForPersonaID___block_invoke;
  v8[3] = &unk_1E7A15518;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __54__BRDaemonConnection_secondaryConnectionForPersonaID___block_invoke(uint64_t a1)
{
  v2 = [gDaemonSecondaryConnectionsByPersonaID objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [[BRDaemonConnection alloc] initUsingUserLocalDaemon];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (!+[BRCloudDocsHelperProvider isFPFSExtension](BRCloudDocsHelperProvider, "isFPFSExtension") || [*(*(*(a1 + 40) + 8) + 40) validateConnectionExtensionInfoForPersonaID:*(a1 + 32)])
    {
      v8 = *(a1 + 32);
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v10 = gDaemonSecondaryConnectionsByPersonaID;

      [v10 setObject:v9 forKeyedSubscript:v8];
    }
  }
}

+ (id)secondaryConnection
{
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  v4 = [v3 br_currentPersonaID];
  v5 = [a1 secondaryConnectionForPersonaID:v4];

  return v5;
}

- (id)newFPFSSyncProxy
{
  if (self->_isUsingTokenService)
  {
    [BRDaemonConnection newFPFSSyncProxy];
  }

  return [[BRXPCSyncProxy alloc] initWithXPCObject:self];
}

+ (id)homeDirectoryURLForPersonaID:(id)a3 needsPersonaSwitch:(BOOL)a4
{
  v4 = a4;
  v5 = @"__defaultPersonaID__";
  if (a3)
  {
    v5 = a3;
  }

  v6 = v5;
  [gCacheLock lock];
  v7 = [g_homeDirectoryURLForPersona objectForKeyedSubscript:v6];
  if (!v7)
  {
    _preComputeURLSForPersona(1, v6, v4);
    v7 = [g_homeDirectoryURLForPersona objectForKeyedSubscript:v6];
  }

  [gCacheLock unlock];

  return v7;
}

+ (id)mobileDocumentsURLForPersonaID:(id)a3 needsPersonaSwitch:(BOOL)a4
{
  v4 = a4;
  v5 = @"__defaultPersonaID__";
  if (a3)
  {
    v5 = a3;
  }

  v6 = v5;
  [gCacheLock lock];
  v7 = [g_mobileDocumentsURLForPersona objectForKeyedSubscript:v6];
  if (!v7)
  {
    _preComputeURLSForPersona(0, v6, v4);
    v7 = [g_mobileDocumentsURLForPersona objectForKeyedSubscript:v6];
  }

  [gCacheLock unlock];

  return v7;
}

+ (id)cloudDocsAppSupportURLForPersonaID:(id)a3 needsPersonaSwitch:(BOOL)a4
{
  v4 = a4;
  v5 = @"__defaultPersonaID__";
  if (a3)
  {
    v5 = a3;
  }

  v6 = v5;
  [gCacheLock lock];
  v7 = [g_cloudDocsAppSupportURLForPersona objectForKeyedSubscript:v6];
  if (!v7)
  {
    _preComputeURLSForPersona(1, v6, v4);
    v7 = [g_cloudDocsAppSupportURLForPersona objectForKeyedSubscript:v6];
  }

  [gCacheLock unlock];

  return v7;
}

+ (id)cloudDocsCachesURLForPersonaID:(id)a3 needsPersonaSwitch:(BOOL)a4
{
  v4 = a4;
  v5 = @"__defaultPersonaID__";
  if (a3)
  {
    v5 = a3;
  }

  v6 = v5;
  [gCacheLock lock];
  v7 = [g_cloudDocsCachesURLForPersona objectForKeyedSubscript:v6];
  if (!v7)
  {
    _preComputeURLSForPersona(1, v6, v4);
    v7 = [g_cloudDocsCachesURLForPersona objectForKeyedSubscript:v6];
  }

  [gCacheLock unlock];

  return v7;
}

+ (id)syncedDesktopURLForPersonaID:(id)a3 needsPersonaSwitch:(BOOL)a4
{
  v4 = a4;
  v5 = @"__defaultPersonaID__";
  if (a3)
  {
    v5 = a3;
  }

  v6 = v5;
  [gCacheLock lock];
  v7 = [g_syncedDesktopURLForPersona objectForKeyedSubscript:v6];
  if (!v7)
  {
    _preComputeURLSForPersona(1, v6, v4);
    v7 = [g_syncedDesktopURLForPersona objectForKeyedSubscript:v6];
  }

  [gCacheLock unlock];

  return v7;
}

+ (id)syncedDocumentsURLForPersonaID:(id)a3 needsPersonaSwitch:(BOOL)a4
{
  v4 = a4;
  v5 = @"__defaultPersonaID__";
  if (a3)
  {
    v5 = a3;
  }

  v6 = v5;
  [gCacheLock lock];
  v7 = [g_syncedDocumentsURLForPersona objectForKeyedSubscript:v6];
  if (!v7)
  {
    _preComputeURLSForPersona(1, v6, v4);
    v7 = [g_syncedDocumentsURLForPersona objectForKeyedSubscript:v6];
  }

  [gCacheLock unlock];

  return v7;
}

+ (id)syncedRootURLsForPersonaID:(id)a3 needsPersonaSwitch:(BOOL)a4
{
  v4 = a4;
  v5 = @"__defaultPersonaID__";
  if (a3)
  {
    v5 = a3;
  }

  v6 = v5;
  [gCacheLock lock];
  v7 = [g_syncedRootURLsForPersona objectForKeyedSubscript:v6];
  if (!v7)
  {
    _preComputeURLSForPersona(0, v6, v4);
    v7 = [g_syncedRootURLsForPersona objectForKeyedSubscript:v6];
  }

  [gCacheLock unlock];

  return v7;
}

+ (id)homeDirectoryURL
{
  v3 = [MEMORY[0x1E696AEC0] br_currentPersonaIDWithIsDataSeparated:0];
  v4 = [a1 homeDirectoryURLForPersonaID:v3 needsPersonaSwitch:0];

  return v4;
}

+ (id)syncedDesktopURL
{
  v3 = [MEMORY[0x1E696AEC0] br_currentPersonaIDWithIsDataSeparated:0];
  v4 = [a1 syncedDesktopURLForPersonaID:v3 needsPersonaSwitch:0];

  return v4;
}

+ (id)syncedDocumentsURL
{
  v3 = [MEMORY[0x1E696AEC0] br_currentPersonaIDWithIsDataSeparated:0];
  v4 = [a1 syncedDocumentsURLForPersonaID:v3 needsPersonaSwitch:0];

  return v4;
}

+ (id)syncedRootURLs
{
  v3 = [MEMORY[0x1E696AEC0] br_currentPersonaIDWithIsDataSeparated:0];
  v4 = [a1 syncedRootURLsForPersonaID:v3 needsPersonaSwitch:0];

  return v4;
}

+ (id)cloudDocsAppSupportURL
{
  v3 = [MEMORY[0x1E696AEC0] br_currentPersonaIDWithIsDataSeparated:0];
  v4 = [a1 cloudDocsAppSupportURLForPersonaID:v3 needsPersonaSwitch:0];

  return v4;
}

+ (id)cloudDocsCachesURL
{
  v3 = [MEMORY[0x1E696AEC0] br_currentPersonaIDWithIsDataSeparated:0];
  v4 = [a1 cloudDocsCachesURLForPersonaID:v3 needsPersonaSwitch:0];

  return v4;
}

+ (void)invalidateCachedURLProperties
{
  v3 = [MEMORY[0x1E696AEC0] br_currentPersonaIDWithIsDataSeparated:0];
  [a1 invalidateCachedURLPropertiesForPersonaID:v3];
}

+ (void)invalidateCachedURLPropertiesForPersonaID:(id)a3
{
  v3 = gCacheLock;
  v4 = a3;
  [v3 lock];
  v5 = [g_homeDirectoryURLForPersona objectForKeyedSubscript:v4];
  [v5 removeAllCachedResourceValues];

  v6 = [g_mobileDocumentsURLForPersona objectForKeyedSubscript:v4];
  [v6 removeAllCachedResourceValues];

  v7 = [g_cloudDocsAppSupportURLForPersona objectForKeyedSubscript:v4];
  [v7 removeAllCachedResourceValues];

  v8 = [g_cloudDocsCachesURLForPersona objectForKeyedSubscript:v4];
  [v8 removeAllCachedResourceValues];

  v9 = [g_syncedDocumentsURLForPersona objectForKeyedSubscript:v4];
  [v9 removeAllCachedResourceValues];

  v10 = [g_syncedDesktopURLForPersona objectForKeyedSubscript:v4];

  [v10 removeAllCachedResourceValues];
  v11 = gCacheLock;

  [v11 unlock];
}

+ (void)clearURLCache
{
  v3 = [MEMORY[0x1E696AEC0] br_currentPersonaIDWithIsDataSeparated:0];
  [a1 clearURLCacheForPersonaID:v3];
}

+ (void)clearURLCacheForPersonaID:(id)a3
{
  v4 = gCacheLock;
  v5 = a3;
  [v4 lock];
  [a1 invalidateCachedURLPropertiesForPersonaID:v5];
  [g_homeDirectoryURLForPersona removeObjectForKey:v5];
  [g_mobileDocumentsURLForPersona removeObjectForKey:v5];
  [g_cloudDocsAppSupportURLForPersona removeObjectForKey:v5];
  [g_cloudDocsCachesURLForPersona removeObjectForKey:v5];
  [g_syncedDocumentsURLForPersona removeObjectForKey:v5];
  [g_syncedDesktopURLForPersona removeObjectForKey:v5];
  [g_syncedRootURLsForPersona removeObjectForKey:v5];

  v6 = gCacheLock;

  [v6 unlock];
}

- (void)newSyncProxy
{
  v11 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("[BRDaemonConnection newSyncProxy]", 285);
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_6_0();
  v3 = brc_default_log(v1, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v4, v5, "[CRIT] Assertion failed: _isUsingTokenService == NO%@", v6, v7, v8, v9, 2u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)newFPFSSyncProxy
{
  v11 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("[BRDaemonConnection newFPFSSyncProxy]", 291);
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_6_0();
  v3 = brc_default_log(v1, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v4, v5, "[CRIT] Assertion failed: _isUsingTokenService == NO%@", v6, v7, v8, v9, 2u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)newSyncTokenProxy
{
  v11 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("[BRDaemonConnection newSyncTokenProxy]", 298);
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_6_0();
  v3 = brc_default_log(v1, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v4, v5, "[CRIT] Assertion failed: _isUsingTokenService%@", v6, v7, v8, v9, 2u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end