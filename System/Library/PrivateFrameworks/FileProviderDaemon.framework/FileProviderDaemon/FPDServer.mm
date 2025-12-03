@interface FPDServer
+ (id)appSupportPath;
+ (id)homeDirectory;
+ (id)personaCloudStoragePath;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (FPDServer)init;
- (void)_computeUnlockedStatusAndSetup;
- (void)_finishSetup;
- (void)_initSignals;
- (void)_monitorUnlockedStatus;
- (void)_setup;
- (void)_startXPCListener;
- (void)exitWithCode:(int)code;
- (void)handleExitSignal:(int)signal;
- (void)localeDidChange;
- (void)materializeURL:(id)l completion:(id)completion;
- (void)migrateLegacyFPFSLocations;
- (void)purge;
- (void)signalProviderChanges;
- (void)start;
@end

@implementation FPDServer

- (void)_computeUnlockedStatusAndSetup
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (FPDServer)init
{
  v43.receiver = self;
  v43.super_class = FPDServer;
  v2 = [(FPDServer *)&v43 init];
  v3 = v2;
  if (v2)
  {
    [(FPDServer *)v2 _initSignals];
    v4 = [[FPDActionOperationEngine alloc] initWithServer:v3];
    operationEngine = v3->_operationEngine;
    v3->_operationEngine = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("setup-queue", v6);
    setupQueue = v3->_setupQueue;
    v3->_setupQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("setup-enqueue", v9);
    makeSureSetupEnqueued = v3->_makeSureSetupEnqueued;
    v3->_makeSureSetupEnqueued = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("finishing-setup-queue", v12);
    afterSetupWorkQueue = v3->_afterSetupWorkQueue;
    v3->_afterSetupWorkQueue = v13;

    v15 = dispatch_group_create();
    fileProviderManagerIsReadyGroup = v3->_fileProviderManagerIsReadyGroup;
    v3->_fileProviderManagerIsReadyGroup = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("domain-caching-queue", v17);
    domainCachingQueue = v3->_domainCachingQueue;
    v3->_domainCachingQueue = v18;

    v20 = +[FPDCacheDeleteService sharedInstance];
    cacheDelete = v3->_cacheDelete;
    v3->_cacheDelete = v20;

    v22 = objc_alloc_init(FPDTelemetryService);
    telemetry = v3->_telemetry;
    v3->_telemetry = v22;

    v24 = [[FPDVolumeManager alloc] initWithServer:v3];
    volumeManager = v3->_volumeManager;
    v3->_volumeManager = v24;

    v26 = [[FPDAppMonitor alloc] initWithServer:v3];
    appMonitor = v3->_appMonitor;
    v3->_appMonitor = v26;

    fp_libnotifyPerUserNotificationName = [@"com.apple.fileprovider.providers-changed" fp_libnotifyPerUserNotificationName];
    notify_register_check([fp_libnotifyPerUserNotificationName UTF8String], &v3->_providerChangeNotificationToken);

    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = dispatch_queue_create("signalProviderChangesQueue", v29);

    v31 = +[FPDConfigurationStore defaultStore];
    lowPrioritySignalProviderChangesIntervalSeconds = [v31 lowPrioritySignalProviderChangesIntervalSeconds];

    v33 = [objc_alloc(MEMORY[0x1E69673C8]) initWithName:@"signalProviderChanges" queue:v30 minFireInterval:lowPrioritySignalProviderChangesIntervalSeconds];
    signalProviderChangesPacer = v3->_signalProviderChangesPacer;
    v3->_signalProviderChangesPacer = v33;

    objc_initWeak(&location, v3);
    v35 = v3->_signalProviderChangesPacer;
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __17__FPDServer_init__block_invoke;
    v40 = &unk_1E83BE0B8;
    objc_copyWeak(&v41, &location);
    [(FPPacer *)v35 setEventBlock:&v37];
    [(FPPacer *)v3->_signalProviderChangesPacer resume:v37];
    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __17__FPDServer_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained signalProviderChanges];
}

- (void)signalProviderChanges
{
  domainCachingQueue = self->_domainCachingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__FPDServer_signalProviderChanges__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_async(domainCachingQueue, block);
}

void __34__FPDServer_signalProviderChanges__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (_block_invoke_onceToken != -1)
  {
    __34__FPDServer_signalProviderChanges__block_invoke_cold_1();
  }

  if (_block_invoke_path)
  {
    v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:_block_invoke_path isDirectory:0];
    v3 = [*(*(a1 + 32) + 176) providerDomainsByID];
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __34__FPDServer_signalProviderChanges__block_invoke_3;
    v22[3] = &unk_1E83BEF60;
    v5 = v4;
    v23 = v5;
    [v3 enumerateKeysAndObjectsUsingBlock:v22];
    v6 = MEMORY[0x1E696ACC8];
    v7 = [v5 copy];
    v21 = 0;
    v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v21];
    v9 = v21;

    if (v8)
    {
      v20 = v9;
      v10 = [v8 writeToURL:v2 options:1 error:&v20];
      v11 = v20;

      if ((v10 & 1) == 0)
      {
        v14 = fp_current_or_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __34__FPDServer_signalProviderChanges__block_invoke_cold_2(v11);
        }

        goto LABEL_18;
      }

      v12 = *MEMORY[0x1E695DB80];
      v19 = v11;
      v13 = [v2 setResourceValue:&unk_1F4C629E8 forKey:v12 error:&v19];
      v9 = v19;

      if (v13)
      {
        goto LABEL_19;
      }

      v14 = fp_current_or_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v9 fp_prettyDescription];
        *buf = 138412290;
        v25 = v15;
        _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed excluding cache from backup: %@", buf, 0xCu);
      }
    }

    else
    {
      v14 = fp_current_or_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __34__FPDServer_signalProviderChanges__block_invoke_cold_3(v9);
      }
    }

    v11 = v9;
LABEL_18:

    v9 = v11;
LABEL_19:
  }

  v16 = fp_current_or_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __34__FPDServer_signalProviderChanges__block_invoke_cold_4();
  }

  v17 = [@"com.apple.fileprovider.providers-changed" fp_libnotifyPerUserNotificationName];
  notify_post([v17 UTF8String]);

  v18 = *MEMORY[0x1E69E9840];
}

void __34__FPDServer_signalProviderChanges__block_invoke_2()
{
  v0 = FPGetSharedDomainCachingPath();
  v1 = _block_invoke_path;
  _block_invoke_path = v0;
}

void __34__FPDServer_signalProviderChanges__block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  *a4 = 0;
  if ([v7 isOnMainVolume])
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

- (void)_initSignals
{
  signal(13, 1);
  signal(1, 1);
  signal(30, 1);
  signal(31, 1);
  signal(3, 1);
  signal(15, 1);
  signal(2, 1);
  v3 = MEMORY[0x1E69E9700];
  v4 = dispatch_source_create(MEMORY[0x1E69E9700], 2uLL, 0, 0);
  sigIntSrc = self->_sigIntSrc;
  self->_sigIntSrc = v4;

  v6 = dispatch_source_create(v3, 3uLL, 0, 0);
  sigQuitSrc = self->_sigQuitSrc;
  self->_sigQuitSrc = v6;

  v8 = dispatch_source_create(v3, 0xFuLL, 0, 0);
  sigTermSrc = self->_sigTermSrc;
  self->_sigTermSrc = v8;

  v10 = self->_sigIntSrc;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__FPDServer__initSignals__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  v11 = v10;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
  dispatch_source_set_event_handler(v11, v12);

  v13 = self->_sigQuitSrc;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __25__FPDServer__initSignals__block_invoke_2;
  v20[3] = &unk_1E83BE068;
  v20[4] = self;
  v14 = v13;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v20);
  dispatch_source_set_event_handler(v14, v15);

  v16 = self->_sigTermSrc;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __25__FPDServer__initSignals__block_invoke_3;
  v19[3] = &unk_1E83BE068;
  v19[4] = self;
  v17 = v16;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v19);
  dispatch_source_set_event_handler(v17, v18);

  dispatch_resume(self->_sigIntSrc);
  dispatch_resume(self->_sigQuitSrc);
  dispatch_resume(self->_sigTermSrc);
}

- (void)materializeURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  path = [lCopy path];
  v9 = [(FPDExtensionManager *)self->_extensionManager domainForURL:lCopy reason:0];
  v10 = v9;
  if (v9)
  {
    serialQueue = [v9 serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__FPDServer_materializeURL_completion___block_invoke;
    block[3] = &unk_1E83BE828;
    v15 = v10;
    v16 = lCopy;
    v17 = completionCopy;
    dispatch_async(serialQueue, block);

    v12 = v15;
  }

  else
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FPDServer materializeURL:completion:];
    }

    v12 = FPInvalidURLError();
    (*(completionCopy + 2))(completionCopy, v12);
  }
}

void __39__FPDServer_materializeURL_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultBackend];
  v3 = *(a1 + 40);
  v4 = +[FPDRequest requestForSelf];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__FPDServer_materializeURL_completion___block_invoke_2;
  v6[3] = &unk_1E83BE040;
  v7 = *(a1 + 48);
  v5 = [v2 startProvidingItemAtURL:v3 readerID:@"materializeURL" readingOptions:0 request:v4 completionHandler:v6];
}

void __39__FPDServer_materializeURL_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__FPDServer_materializeURL_completion___block_invoke_2_cold_1(v3);
    }

    v5 = *(*(a1 + 32) + 16);
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);
  }

  v5();
}

- (void)handleExitSignal:(int)signal
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = strsignal(signal);
    _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] starting exit sequence because of received signal (%s)", &v9, 0xCu);
  }

  v6 = [(FPDServer *)self exitWithCode:0];
  [(FPDServer *)v6 exitWithCode:v7, v8];
}

- (void)exitWithCode:(int)code
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = code;
    _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] exiting with code %d...", v5, 8u);
  }

  exit(code);
}

- (void)_setup
{
  dispatch_assert_queue_V2(self->_setupQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_extensionManager)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [FPDServer _setup];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    [(FPDServer *)selfCopy migrateLegacyFPFSLocations];
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_INFO, "[INFO] file provider server setup", buf, 2u);
    }

    v6 = [FPDExtensionManager alloc];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __19__FPDServer__setup__block_invoke;
    v17[3] = &unk_1E83BDFC8;
    v17[4] = selfCopy;
    v7 = [(FPDExtensionManager *)v6 initWithServer:selfCopy updateHandler:v17];
    extensionManager = selfCopy->_extensionManager;
    selfCopy->_extensionManager = v7;

    v9 = [[FPDSpotlightDaemonClient alloc] initWithExtensionManager:selfCopy->_extensionManager];
    spotlightDaemonClient = selfCopy->_spotlightDaemonClient;
    selfCopy->_spotlightDaemonClient = v9;

    [(FPDCacheDeleteService *)selfCopy->_cacheDelete setExtensionManager:selfCopy->_extensionManager];
    [(FPDTelemetryService *)selfCopy->_telemetry setExtensionManager:selfCopy->_extensionManager];
    v11 = [[FPDPresenterManager alloc] initWithExtensionManager:selfCopy->_extensionManager];
    presenterManager = selfCopy->_presenterManager;
    selfCopy->_presenterManager = v11;

    [(FPDVolumeManager *)selfCopy->_volumeManager loadHomeVolume];
    [(FPDExtensionManager *)selfCopy->_extensionManager loadProvidersAndMonitor];
    v13 = [[FPDSyncBubble alloc] initWithExtensionManager:selfCopy->_extensionManager];
    bubble = selfCopy->_bubble;
    selfCopy->_bubble = v13;

    [(FPDSyncBubble *)selfCopy->_bubble start];
    objc_sync_exit(selfCopy);

    afterSetupWorkQueue = selfCopy->_afterSetupWorkQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __19__FPDServer__setup__block_invoke_2;
    v16[3] = &unk_1E83BE068;
    v16[4] = selfCopy;
    dispatch_async(afterSetupWorkQueue, v16);
  }
}

uint64_t __19__FPDServer__setup__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 160) loadAdditionalVolumesWithCompletion:&__block_literal_global_76];
  v2 = *(a1 + 32);

  return [v2 _finishSetup];
}

- (void)purge
{
  extensionManager = self->_extensionManager;
  sharedPurger = [(objc_class *)[(FPDServer *)self fpdPurgerClass] sharedPurger];
  [(FPDExtensionManager *)extensionManager purge:sharedPurger];
}

- (void)_finishSetup
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __25__FPDServer__finishSetup__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    _finishSetup_isExpired = 0;
    objc_sync_exit(v6);

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __25__FPDServer__finishSetup__block_invoke_2;
    v22[3] = &unk_1E83BE0B8;
    objc_copyWeak(&v23, (a1 + 40));
    [v3 setExpirationHandler:v22];
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_INFO, "[INFO] remove trashed items older than 30 days", buf, 2u);
    }

    v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-2592000.0];
    v9 = [*(a1 + 32) extensionManager];
    v10 = [v9 providerWithIdentifier:@"com.apple.FileProvider.LocalStorage" reason:0];
    v11 = [v10 asAppExtensionBackedProvider];

    if (v11)
    {
      v12 = v6;
      objc_sync_enter(v12);
      if (_finishSetup_isExpired == 1)
      {
        v21 = 0;
        v13 = [v3 setTaskExpiredWithRetryAfter:&v21 error:0.0];
        v14 = v21;
        if ((v13 & 1) == 0)
        {
          v15 = fp_current_or_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = [v14 fp_prettyDescription];
            __25__FPDServer__finishSetup__block_invoke_cold_1(v16, buf, v15);
          }

          [v3 setTaskCompleted];
        }

        objc_sync_exit(v12);
      }

      else
      {
        objc_sync_exit(v12);

        v17 = +[FPDRequest requestForSelf];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __25__FPDServer__finishSetup__block_invoke_86;
        v19[3] = &unk_1E83BE068;
        v20 = v3;
        [v11 removeTrashedItemsOlderThanDate:v8 request:v17 completionHandler:v19];

        v12 = v20;
      }
    }

    else
    {
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __25__FPDServer__finishSetup__block_invoke_cold_2();
      }
    }

    objc_destroyWeak(&v23);
  }

  else
  {
    [v3 setTaskCompleted];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __25__FPDServer__finishSetup__block_invoke_2(uint64_t a1)
{
  obj = objc_loadWeakRetained((a1 + 32));
  objc_sync_enter(obj);
  _finishSetup_isExpired = 1;
  objc_sync_exit(obj);
}

uint64_t __25__FPDServer__finishSetup__block_invoke_86(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __25__FPDServer__finishSetup__block_invoke_86_cold_1();
  }

  return [*(a1 + 32) setTaskCompleted];
}

- (void)_startXPCListener
{
  v19 = *MEMORY[0x1E69E9840];
  section = __fp_create_section();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = getpid();
    v9 = FPOSVersion();
    v10 = FPVersion();
    *buf = 134218754;
    v12 = section;
    v13 = 1024;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx starting up, welcome, pid:%d, os:%@, version:%@", buf, 0x26u);
  }

  v5 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.FileProvider"];
  listener = self->_listener;
  self->_listener = v5;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
  __fp_leave_section_Debug();
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_monitorUnlockedStatus
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, firstUnlockNotificationCallback, @"com.apple.mobile.keybagd.first_unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = *MEMORY[0x1E69CA9C0];

  CFNotificationCenterAddObserver(v4, self, pastBuddyNotificationCallback, v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)localeDidChange
{
  v12 = *MEMORY[0x1E69E9840];
  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  localeIdentifier = [autoupdatingCurrentLocale localeIdentifier];

  if (([localeIdentifier isEqualToString:self->_locale] & 1) == 0)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      locale = self->_locale;
      *buf = 138412546;
      v9 = locale;
      v10 = 2112;
      v11 = localeIdentifier;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] current local did change (%@ -> %@), exiting...", buf, 0x16u);
    }

    [(FPDServer *)self exitWithCode:0];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __18__FPDServer_start__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _startXPCListener];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __18__FPDServer_start__block_invoke_2;
  v6[3] = &unk_1E83BEFB0;
  v4 = *(a1 + 40);
  v6[4] = v2;
  v6[5] = v4;
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v6);
  dispatch_async(v3, v5);
}

uint64_t __18__FPDServer_start__block_invoke_2(uint64_t a1)
{
  v4 = *(a1 + 40);
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __18__FPDServer_start__block_invoke_2_cold_1();
  }

  [*(a1 + 32) _monitorUnlockedStatus];
  [*(a1 + 32) _computeUnlockedStatusAndSetup];
  return __fp_leave_section_Debug();
}

- (void)migrateLegacyFPFSLocations
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v35 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  dispatch_sync(self->_makeSureSetupEnqueued, &__block_literal_global_126);
  setupQueue = self->_setupQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__FPDServer_listener_shouldAcceptNewConnection___block_invoke_2;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_sync(setupQueue, block);
  if (self->_isUnlocked)
  {
    v9 = [connectionCopy valueForEntitlement:@"application-identifier"];
    if (([v9 isEqualToString:@"com.apple.BackupAgent"]& 1) != 0 || ([v9 isEqualToString:@"com.apple.backupd"]& 1) != 0 || self->_isPastBuddy)
    {
      v10 = FPDDaemonXPCInterface();
      [connectionCopy setExportedInterface:v10];
      v11 = objc_alloc_init(FPDXPCServicer);
      [(FPDXPCServicer *)v11 setServer:self];
      [(FPDXPCServicer *)v11 setConnection:connectionCopy];
      objc_initWeak(&location, connectionCopy);
      objc_initWeak(&from, v11);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __48__FPDServer_listener_shouldAcceptNewConnection___block_invoke_137;
      v25[3] = &unk_1E83BEFD8;
      objc_copyWeak(&v26, &location);
      objc_copyWeak(&v27, &from);
      [connectionCopy setInvalidationHandler:v25];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __48__FPDServer_listener_shouldAcceptNewConnection___block_invoke_2_138;
      v23 = &unk_1E83BE0B8;
      objc_copyWeak(&v24, &location);
      [connectionCopy setInterruptionHandler:&v20];
      [connectionCopy setExportedObject:{v11, v20, v21, v22, v23}];
      v12 = MEMORY[0x1E69674B8];
      v13 = fp_default_log();
      [v12 setupWithLog:v13 forConnection:connectionCopy];

      [connectionCopy resume];
      v14 = fp_current_or_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        processIdentifier = [connectionCopy processIdentifier];
        [connectionCopy processIdentifier];
        v16 = FPExecutableNameForProcessIdentifier();
        *buf = 67109378;
        v32 = processIdentifier;
        v33 = 2112;
        v34 = v16;
        _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_INFO, "[INFO] New connection from pid %d [%@]", buf, 0x12u);
      }

      objc_destroyWeak(&v24);
      objc_destroyWeak(&v27);
      objc_destroyWeak(&v26);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);

      v17 = 1;
    }

    else
    {
      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [FPDServer listener:shouldAcceptNewConnection:];
      }

      v17 = 0;
    }
  }

  else
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [FPDServer listener:shouldAcceptNewConnection:];
    }

    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

void __48__FPDServer_listener_shouldAcceptNewConnection___block_invoke_137(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExportedObject:0];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 invalidate];
}

void __48__FPDServer_listener_shouldAcceptNewConnection___block_invoke_2_138(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

+ (id)homeDirectory
{
  fp_homeDirectory = [MEMORY[0x1E695DFF8] fp_homeDirectory];
  path = [fp_homeDirectory path];

  return path;
}

+ (id)personaCloudStoragePath
{
  fp_cloudStorageDirectory = [MEMORY[0x1E695DFF8] fp_cloudStorageDirectory];
  path = [fp_cloudStorageDirectory path];

  return path;
}

+ (id)appSupportPath
{
  fp_supportDirectory = [MEMORY[0x1E695DFF8] fp_supportDirectory];
  path = [fp_supportDirectory path];

  return path;
}

void __34__FPDServer_signalProviderChanges__block_invoke_cold_2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_5(&dword_1CEFC7000, v2, v3, "[ERROR] Failed writing domains cache: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __34__FPDServer_signalProviderChanges__block_invoke_cold_3(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_5(&dword_1CEFC7000, v2, v3, "[ERROR] Failed archiving domains: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __34__FPDServer_signalProviderChanges__block_invoke_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)materializeURL:completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __39__FPDServer_materializeURL_completion___block_invoke_2_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_5(&dword_1CEFC7000, v2, v3, "[ERROR] materialization failed: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __25__FPDServer__finishSetup__block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = @"com.apple.FileProvider.maintenance.auto-trash";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] Error expiring task %@ : %@", buf, 0x16u);
}

void __25__FPDServer__finishSetup__block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __25__FPDServer__finishSetup__block_invoke_86_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __18__FPDServer_start__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end