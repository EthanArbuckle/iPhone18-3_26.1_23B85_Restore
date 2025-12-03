@interface DEDDaemon
+ (id)sharedInstance;
- (DEDDaemon)init;
- (id)_controller;
- (id)_extensionsForSession:(id)session;
- (id)attachmentHandler;
- (id)diagnosticCollector;
- (void)_logOperations;
- (void)_startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session runSetup:(BOOL)setup;
- (void)_streamOperationStatus;
- (void)_syncSessionStatusWithSession:(id)session withIdentifiers:(BOOL)identifiers;
- (void)addSessionData:(id)data withFilename:(id)filename forSession:(id)session;
- (void)adoptFiles:(id)files forSession:(id)session;
- (void)cancelSession:(id)session;
- (void)commitSession:(id)session;
- (void)finallyStartDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session;
- (void)getSessionStateWithSession:(id)session;
- (void)listAvailableExtensionsForSession:(id)session;
- (void)loadTextDataForExtensions:(id)extensions localization:(id)localization sessionID:(id)d;
- (void)pingSession:(id)session;
- (void)scheduleNotificationForSession:(id)session;
- (void)setupDeferredDiagnosticsWithExtensionInfo:(id)info;
- (void)start;
- (void)startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters deferRunUntil:(id)until session:(id)session;
- (void)teardownDeferredDiagnosticsWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session;
- (void)terminateExtension:(id)extension info:(id)info session:(id)session;
- (void)unscheduleNotificationForSession:(id)session;
- (void)warmUpCaches;
@end

@implementation DEDDaemon

- (DEDDaemon)init
{
  v15.receiver = self;
  v15.super_class = DEDDaemon;
  v2 = [(DEDDaemon *)&v15 init];
  if (v2)
  {
    v3 = +[DEDConfiguration sharedInstance];
    [(DEDDaemon *)v2 setConfig:v3];

    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [v4 setQualityOfService:9];
    v5 = MEMORY[0x277CCACA8];
    config = [(DEDDaemon *)v2 config];
    identifier = [config identifier];
    v8 = [v5 stringWithFormat:@"%@.ded-daemon-bkgd-queue", identifier];
    [v4 setName:v8];

    [(DEDDaemon *)v2 setBackgroundOpQueue:v4];
    v9 = objc_alloc_init(MEMORY[0x277CCABD8]);

    [v9 setQualityOfService:25];
    v10 = MEMORY[0x277CCACA8];
    config2 = [(DEDDaemon *)v2 config];
    identifier2 = [config2 identifier];
    v13 = [v10 stringWithFormat:@"%@.ded-daemon-uinit-queue", identifier2];
    [v9 setName:v13];

    [(DEDDaemon *)v2 setUserInitiatedOpQueue:v9];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_once_2 != -1)
  {
    +[DEDDaemon sharedInstance];
  }

  v3 = sharedInstance_shared_1;

  return v3;
}

uint64_t __27__DEDDaemon_sharedInstance__block_invoke()
{
  sharedInstance_shared_1 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)start
{
  _controller = [(DEDDaemon *)self _controller];
  [(DEDDaemon *)self setController:_controller];

  if ([(DEDDaemon *)self embeddedInApp])
  {
    controller = [(DEDDaemon *)self controller];
    [controller configureForEmbedded:1];
  }

  controller2 = [(DEDDaemon *)self controller];
  [controller2 configureForDaemon];

  controller3 = [(DEDDaemon *)self controller];
  [controller3 configureWorkerDelegate:self];

  controller4 = [(DEDDaemon *)self controller];
  [controller4 start];

  +[DEDAnalytics didStartDaemon];
  +[DEDDeferredExtensionInfo checkIn];
  [MEMORY[0x277D051D8] checkIn];
  +[DEDCollectionNotification beginListeningForNotification];
  v8 = +[DEDHomeKitManager sharedInstance];
  [v8 start];

  v9 = +[DEDRapportManager sharedInstance];
  [v9 start];

  +[DEDDirectoriesCleanup run];

  [(DEDDaemon *)self warmUpCaches];
}

- (void)warmUpCaches
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CCA8C8];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __25__DEDDaemon_warmUpCaches__block_invoke;
  v10 = &unk_278F65830;
  objc_copyWeak(&v11, &location);
  v4 = [v3 blockOperationWithBlock:&v7];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"warmUpCaches", v7, v8, v9, v10];
  [v4 setName:v5];

  backgroundOpQueue = [(DEDDaemon *)self backgroundOpQueue];
  [backgroundOpQueue addOperation:v4];

  if ([(DEDDaemon *)self observesOperations])
  {
    [(DEDDaemon *)self _logOperations];
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __25__DEDDaemon_warmUpCaches__block_invoke(uint64_t a1)
{
  v2 = Log_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "Warming up caches", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained diagnosticCollector];
  v5 = [v4 availableDiagnosticExtensions];
  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setCachedExtensionsForThisDevice:v5];
}

- (void)finallyStartDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  parametersCopy = parameters;
  sessionCopy = session;
  v11 = Log_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315906;
    v14 = "[DEDDaemon finallyStartDiagnosticWithIdentifier:parameters:session:]";
    v15 = 2112;
    v16 = identifierCopy;
    v17 = 2112;
    v18 = parametersCopy;
    v19 = 2112;
    v20 = sessionCopy;
    _os_log_debug_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEBUG, "%s %@ %@ %@", &v13, 0x2Au);
  }

  [(DEDDaemon *)self _startDiagnosticWithIdentifier:identifierCopy parameters:parametersCopy session:sessionCopy runSetup:0];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setupDeferredDiagnosticsWithExtensionInfo:(id)info
{
  infoCopy = info;
  v5 = Log_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(DEDDaemon *)infoCopy setupDeferredDiagnosticsWithExtensionInfo:v5];
  }

  diagnosticCollector = [(DEDDaemon *)self diagnosticCollector];
  [diagnosticCollector prepareItemsWithDeferredExtensionInfo:infoCopy];
}

- (void)teardownDeferredDiagnosticsWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  parametersCopy = parameters;
  sessionCopy = session;
  v11 = Log_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315906;
    v15 = "[DEDDaemon teardownDeferredDiagnosticsWithIdentifier:parameters:session:]";
    v16 = 2112;
    v17 = identifierCopy;
    v18 = 2112;
    v19 = parametersCopy;
    v20 = 2112;
    v21 = sessionCopy;
    _os_log_debug_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEBUG, "%s %@ %@ %@", &v14, 0x2Au);
  }

  diagnosticCollector = [(DEDDaemon *)self diagnosticCollector];
  [diagnosticCollector cleanupItemsWithIdentifier:identifierCopy parameters:parametersCopy session:sessionCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)pingSession:(id)session
{
  sessionCopy = session;
  v5 = Log_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDDaemon pingSession:v5];
  }

  controller = [(DEDDaemon *)self controller];
  v7 = [controller sessionForIdentifier:sessionCopy];

  [v7 pong];
}

- (void)listAvailableExtensionsForSession:(id)session
{
  v26 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = Log_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v23 = "[DEDDaemon listAvailableExtensionsForSession:]";
    v24 = 2114;
    v25 = sessionCopy;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}s] [%{public}@]", buf, 0x16u);
  }

  sessionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.diagnosticextensionsd-show-extensions-%@", sessionCopy];
  v7 = sessionCopy;
  [sessionCopy UTF8String];
  v8 = os_transaction_create();
  objc_initWeak(buf, self);
  v9 = MEMORY[0x277CCA8C8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__DEDDaemon_listAvailableExtensionsForSession___block_invoke;
  v17[3] = &unk_278F65C88;
  v10 = v8;
  v18 = v10;
  v11 = sessionCopy;
  v19 = v11;
  objc_copyWeak(&v21, buf);
  v12 = sessionCopy;
  v20 = v12;
  v13 = [v9 blockOperationWithBlock:v17];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"show-extensions(%@)", v12];
  [v13 setName:v14];

  userInitiatedOpQueue = [(DEDDaemon *)self userInitiatedOpQueue];
  [userInitiatedOpQueue addOperation:v13];

  if ([(DEDDaemon *)self observesOperations])
  {
    [(DEDDaemon *)self _logOperations];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  v16 = *MEMORY[0x277D85DE8];
}

void __47__DEDDaemon_listAvailableExtensionsForSession___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = Log_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v10 = 138543362;
    v11 = v3;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "Running [%{public}@]", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained controller];
  v6 = [v5 sessionForIdentifier:*(a1 + 48)];

  v7 = objc_loadWeakRetained((a1 + 56));
  v8 = [v7 _extensionsForSession:v6];

  [v6 supportsDiagnostics:v8];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)_extensionsForSession:(id)session
{
  cachedExtensionsForThisDevice = [(DEDDaemon *)self cachedExtensionsForThisDevice];

  if (cachedExtensionsForThisDevice)
  {
    cachedExtensionsForThisDevice2 = [(DEDDaemon *)self cachedExtensionsForThisDevice];
  }

  else
  {
    diagnosticCollector = [(DEDDaemon *)self diagnosticCollector];
    cachedExtensionsForThisDevice2 = [diagnosticCollector availableDiagnosticExtensions];
  }

  return cachedExtensionsForThisDevice2;
}

- (void)startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters deferRunUntil:(id)until session:(id)session
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  parametersCopy = parameters;
  untilCopy = until;
  sessionCopy = session;
  v14 = Log_0();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [DEDDaemon startDiagnosticWithIdentifier:parameters:deferRunUntil:session:];
  }

  v15 = Log_0();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v21 = 138412546;
    v22 = identifierCopy;
    v23 = 2112;
    v24 = untilCopy;
    _os_log_impl(&dword_248AD7000, v15, OS_LOG_TYPE_INFO, "will collect %@, deferred until %@", &v21, 0x16u);
  }

  v16 = [[DEDExtensionIdentifier alloc] initWithString:identifierCopy];
  v17 = [DEDDeferredExtensionInfo alloc];
  [DEDDeferredExtensionInfo recommendedGracePeriodForDate:untilCopy];
  v18 = [(DEDDeferredExtensionInfo *)v17 initWithBugSessionIdentifier:sessionCopy dedIdentifier:v16 runOnDate:untilCopy withGracePeriod:?];

  [(DEDDeferredExtensionInfo *)v18 setParameters:parametersCopy];
  [(DEDDeferredExtensionInfo *)v18 schedule];
  [untilCopy timeIntervalSinceNow];
  [DEDAnalytics extensionDidScheduleExtensionWithIdentifier:identifierCopy delay:v19];
  [(DEDDaemon *)self setupDeferredDiagnosticsWithExtensionInfo:v18];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_startDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session runSetup:(BOOL)setup
{
  v47 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  parametersCopy = parameters;
  sessionCopy = session;
  v13 = Log_0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v42 = "[DEDDaemon _startDiagnosticWithIdentifier:parameters:session:runSetup:]";
    v43 = 2114;
    v44 = sessionCopy;
    v45 = 2114;
    v46 = identifierCopy;
    _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}s] [%{public}@] [%{public}@]", buf, 0x20u);
  }

  [DEDAnalytics didStartExtensionWithIdentifier:identifierCopy];
  date = [MEMORY[0x277CBEAA8] date];
  objc_initWeak(buf, self);
  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.diagnosticextensionsd-collect-%@-%@", sessionCopy, identifierCopy];
  v15 = identifierCopy;
  [identifierCopy UTF8String];
  v16 = os_transaction_create();
  v17 = [[DEDExtensionIdentifier alloc] initWithString:identifierCopy];
  v18 = MEMORY[0x277CCA8C8];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __72__DEDDaemon__startDiagnosticWithIdentifier_parameters_session_runSetup___block_invoke;
  v31[3] = &unk_278F65CD8;
  v19 = v16;
  v32 = v19;
  v20 = identifierCopy;
  v33 = v20;
  objc_copyWeak(&v39, buf);
  v21 = sessionCopy;
  v34 = v21;
  v22 = identifierCopy;
  v35 = v22;
  v23 = parametersCopy;
  v36 = v23;
  setupCopy = setup;
  v24 = v17;
  v37 = v24;
  v25 = date;
  v38 = v25;
  v26 = [v18 blockOperationWithBlock:v31];
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"collect(%@-%@)", v21, v22];
  [v26 setName:v27];

  backgroundOpQueue = [(DEDDaemon *)self backgroundOpQueue];
  [backgroundOpQueue addOperation:v26];

  if ([(DEDDaemon *)self observesOperations])
  {
    [(DEDDaemon *)self _logOperations];
  }

  objc_destroyWeak(&v39);
  objc_destroyWeak(buf);

  v29 = *MEMORY[0x277D85DE8];
}

void __72__DEDDaemon__startDiagnosticWithIdentifier_parameters_session_runSetup___block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = Log_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138543362;
    *&buf[4] = v3;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "Running [%{public}@]", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v5 = [WeakRetained controller];
  v6 = [v5 sessionForIdentifier:*(a1 + 48)];

  v7 = objc_loadWeakRetained((a1 + 88));
  v8 = [v7 diagnosticCollector];

  v9 = [v8 extensionForIdentifier:*(a1 + 56)];
  v10 = [v9 requiresDataClassBAccessToRun];
  v11 = +[DEDUtils isDataClassBAvailable];
  v12 = Log_0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v9 identifier];
    *buf = 138543874;
    *&buf[4] = v13;
    *&buf[12] = 1024;
    *&buf[14] = v10;
    *&buf[18] = 1024;
    *&buf[20] = v11;
    _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_INFO, "[%{public}@] requires Data Class B [%i] is available [%i]", buf, 0x18u);
  }

  v14 = v11 | ~v10;
  v15 = Log_0();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v14)
  {
    if (v16)
    {
      v17 = *(a1 + 56);
      *buf = 138543362;
      *&buf[4] = v17;
      _os_log_impl(&dword_248AD7000, v15, OS_LOG_TYPE_INFO, "starting _startDiagnosticWithIdentifier operation for [%{public}@]", buf, 0xCu);
    }

    if ([v6 shouldCollectDiagnosticWithId:*(a1 + 56)])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v71 = __Block_byref_object_copy__1;
      v72 = __Block_byref_object_dispose__1;
      v73 = 0;
      v18 = objc_loadWeakRetained((a1 + 88));
      v52 = [v18 attachmentHandler];

      v19 = *(a1 + 64);
      v20 = +[DEDConstants DEDExtensionCompressOnAttach];
      v54 = [v19 objectForKeyedSubscript:v20];

      if (v54)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v52 setCompressOnAttach:{objc_msgSend(v54, "BOOLValue")}];
        }
      }

      if (*(a1 + 96) == 1)
      {
        [v8 prepareItemsWithIdentifier:*(a1 + 56) parameters:*(a1 + 64) session:*(a1 + 48)];
      }

      v21 = *(a1 + 64);
      v22 = +[DEDConstants DEDExtensionHostAppKey];
      v23 = [v21 objectForKeyedSubscript:v22];
      if ([v23 isEqualToString:@"Feedback Assistant"])
      {
      }

      else
      {
        v26 = [*(a1 + 64) allKeys];
        v27 = [v26 containsObject:@"annotated"];

        if (!v27)
        {
          v32 = [*(a1 + 72) extensionIdentifier];
          v33 = [v8 collectItemsWithIdentifier:v32 parameters:*(a1 + 64)];
          goto LABEL_29;
        }
      }

      v28 = [*(a1 + 72) extensionIdentifier];
      v29 = [v8 collectAnnotatedGroupWithIdentifier:v28 parameters:*(a1 + 64)];

      if (v29)
      {
        v30 = [v29 items];
LABEL_30:
        if (![v30 count])
        {
          v34 = Log_0();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v36 = *(a1 + 48);
            v35 = *(a1 + 56);
            *v66 = 138543618;
            v67 = v35;
            v68 = 2114;
            v69 = v36;
            _os_log_impl(&dword_248AD7000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ returned no files for bug session %{public}@", v66, 0x16u);
          }

          v37 = *(a1 + 56);
          v38 = [MEMORY[0x277CBEAA8] date];
          [v38 timeIntervalSinceDate:*(a1 + 80)];
          [DEDAnalytics extensionWithIdentifier:v37 didCompleteWithFileCount:0 bytesCollected:0 duration:v39 errorCode:3];
        }

        v40 = [v6 diskAccessQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __72__DEDDaemon__startDiagnosticWithIdentifier_parameters_session_runSetup___block_invoke_114;
        block[3] = &unk_278F65CB0;
        v56 = v8;
        v57 = *(a1 + 72);
        v58 = *(a1 + 56);
        v59 = *(a1 + 64);
        v50 = v30;
        v60 = v50;
        v49 = v52;
        v61 = v49;
        v62 = *(a1 + 48);
        v65 = v10;
        v51 = v29;
        v53 = v40;
        v63 = v51;
        v64 = buf;
        dispatch_sync(v40, block);
        if (*(*&buf[8] + 40))
        {
          v41 = [MEMORY[0x277CBEAA8] date];
          [v41 timeIntervalSinceDate:*(a1 + 80)];
          v43 = v42;
          v44 = *(a1 + 56);
          v45 = [*(*&buf[8] + 40) attachmentItems];
          v46 = [v45 count];
          v47 = [*(*&buf[8] + 40) totalFileSize];
          +[DEDAnalytics extensionWithIdentifier:didCompleteWithFileCount:bytesCollected:duration:errorCode:](DEDAnalytics, "extensionWithIdentifier:didCompleteWithFileCount:bytesCollected:duration:errorCode:", v44, v46, [v47 unsignedIntegerValue], v43, 0);

          [v6 finishedDiagnosticWithIdentifier:*(a1 + 56) result:*(*&buf[8] + 40)];
        }

        else
        {
          v41 = Log_0();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
          {
            __72__DEDDaemon__startDiagnosticWithIdentifier_parameters_session_runSetup___block_invoke_cold_1(v41);
          }
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_39;
      }

      v31 = Log_0();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *v66 = 0;
        _os_log_impl(&dword_248AD7000, v31, OS_LOG_TYPE_INFO, "Annotated Group returned is nil. Will try attachmentForParameters:", v66, 2u);
      }

      v32 = [*(a1 + 72) extensionIdentifier];
      v33 = [v8 collectItemsWithIdentifier:v32 parameters:*(a1 + 64)];
LABEL_29:
      v30 = v33;

      v29 = 0;
      goto LABEL_30;
    }

    v24 = Log_0();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 56);
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_248AD7000, v24, OS_LOG_TYPE_DEFAULT, "Aborting collection of [%{public}@]", buf, 0xCu);
    }

    [v6 didTerminateDiagnosticExtension:*(a1 + 56) info:*(a1 + 64)];
  }

  else
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v15, OS_LOG_TYPE_INFO, "Data Class B is required and not available.", buf, 2u);
    }

    [v6 scheduleDiagnosticCollectionForClassBAccessWithIdentifier:*(a1 + 56) parameters:*(a1 + 64)];
  }

LABEL_39:

  v48 = *MEMORY[0x277D85DE8];
}

void __72__DEDDaemon__startDiagnosticWithIdentifier_parameters_session_runSetup___block_invoke_114(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = +[DEDDevice currentDevice];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) extensionIdentifier];
  v5 = [v3 extensionForIdentifier:v4];
  v6 = [v5 name];

  v7 = v6;
  if (!v6)
  {
    v7 = *(a1 + 48);
  }

  v8 = v7;

  v9 = *(a1 + 56);
  v10 = +[DEDConstants DEDAddEmptyFile];
  v11 = [v9 objectForKeyedSubscript:v10];
  if (v11)
  {
    v12 = *(a1 + 56);
    v13 = +[DEDConstants DEDAddEmptyFile];
    v14 = [v12 objectForKeyedSubscript:v13];
    v15 = [v14 BOOLValue] ^ 1;
  }

  else
  {
    v15 = 1;
  }

  v16 = [*(a1 + 64) count];
  v17 = *(a1 + 72);
  if (v16 || (v15 & 1) != 0)
  {
    v18 = [v17 processAttachments:*(a1 + 64) withSessionIdentifier:*(a1 + 80) extension:*(a1 + 48) shouldAddClassBDataProtection:*(a1 + 104) annotatedGroup:*(a1 + 88)];
  }

  else
  {
    v18 = [v17 createEmptyMessageFileForDE:*(a1 + 48) extensionName:v8 withSessionIdentifier:*(a1 + 80) device:v2];
  }

  v19 = v18;
  v20 = [MEMORY[0x277D051B0] createWithName:v8 rootURL:v18];
  v21 = [*(a1 + 40) extensionIdentifier];
  v22 = [DEDAttachmentGroup groupWithDEGroup:v20 identifier:v21];
  v23 = *(*(a1 + 96) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

  v25 = [v2 identifier];
  [*(*(*(a1 + 96) + 8) + 40) setDeviceID:v25];

  [*(a1 + 32) cleanupItemsWithIdentifier:*(a1 + 48) parameters:*(a1 + 56) session:*(a1 + 80)];
  v26 = Log_0();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = *(a1 + 48);
    v28 = [*(*(*(a1 + 96) + 8) + 40) rootURL];
    v29 = [*(*(*(a1 + 96) + 8) + 40) attachmentItems];
    v34 = 138543874;
    v35 = v27;
    v36 = 2114;
    v37 = v28;
    v38 = 2048;
    v39 = [v29 count];
    _os_log_impl(&dword_248AD7000, v26, OS_LOG_TYPE_INFO, "[%{public}@] attached ded group [%{public}@] with item count %lu", &v34, 0x20u);
  }

  v30 = Log_0();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a1 + 48);
    v32 = *(*(*(a1 + 96) + 8) + 40);
    v34 = 138543618;
    v35 = v31;
    v36 = 2114;
    v37 = v32;
    _os_log_impl(&dword_248AD7000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ attached ded group %{public}@", &v34, 0x16u);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)terminateExtension:(id)extension info:(id)info session:(id)session
{
  v37 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  infoCopy = info;
  sessionCopy = session;
  v11 = Log_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *location = 136315906;
    *&location[4] = "[DEDDaemon terminateExtension:info:session:]";
    v31 = 2112;
    v32 = extensionCopy;
    v33 = 2112;
    v34 = infoCopy;
    v35 = 2112;
    v36 = sessionCopy;
    _os_log_debug_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEBUG, "%s %@ %@ %@", location, 0x2Au);
  }

  objc_initWeak(location, self);
  extensionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.diagnosticextensionsd-terminate-%@", extensionCopy];
  v13 = extensionCopy;
  [extensionCopy UTF8String];
  v14 = os_transaction_create();
  v15 = MEMORY[0x277CCA8C8];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __45__DEDDaemon_terminateExtension_info_session___block_invoke;
  v24[3] = &unk_278F65D00;
  v16 = v14;
  v25 = v16;
  v17 = extensionCopy;
  v26 = v17;
  objc_copyWeak(&v29, location);
  v18 = sessionCopy;
  v27 = v18;
  v19 = infoCopy;
  v28 = v19;
  v20 = [v15 blockOperationWithBlock:v24];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"terminate(%@-%@)", v18, v17];
  [v20 setName:v21];

  backgroundOpQueue = [(DEDDaemon *)self backgroundOpQueue];
  [backgroundOpQueue addOperation:v20];

  if ([(DEDDaemon *)self observesOperations])
  {
    [(DEDDaemon *)self _logOperations];
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(location);

  v23 = *MEMORY[0x277D85DE8];
}

void __45__DEDDaemon_terminateExtension_info_session___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = Log_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    *buf = 138543362;
    v18 = v3;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_INFO, "starting _terminateExtension operation for [%{public}@]", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = [WeakRetained attachmentHandler];

  v6 = objc_loadWeakRetained((a1 + 64));
  v7 = [v6 controller];
  v8 = [v7 sessionForIdentifier:*(a1 + 48)];

  if ([v8 isRunningDE:*(a1 + 40)])
  {
    v9 = Log_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "DE collection has not finished will defer removal", buf, 2u);
    }
  }

  else if (v8)
  {
    v10 = [v8 diskAccessQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__DEDDaemon_terminateExtension_info_session___block_invoke_124;
    block[3] = &unk_278F65668;
    v14 = *(a1 + 40);
    v15 = v5;
    v16 = *(a1 + 48);
    dispatch_sync(v10, block);

    [v8 didTerminateDiagnosticExtension:*(a1 + 40) info:*(a1 + 56)];
  }

  else
  {
    v11 = Log_0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __45__DEDDaemon_terminateExtension_info_session___block_invoke_cold_1((a1 + 40));
    }

    [v5 removeDEFiles:*(a1 + 40) withSessionIdentifier:*(a1 + 48)];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __45__DEDDaemon_terminateExtension_info_session___block_invoke_124(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = Log_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "removing files for DE [%{public}@]", &v6, 0xCu);
  }

  result = [*(a1 + 40) removeDEFiles:*(a1 + 32) withSessionIdentifier:*(a1 + 48)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)adoptFiles:(id)files forSession:(id)session
{
  filesCopy = files;
  sessionCopy = session;
  v8 = Log_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDDaemon adoptFiles:forSession:];
  }

  objc_initWeak(&location, self);
  sessionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.diagnosticextensionsd-adopt-%@", sessionCopy];
  [sessionCopy UTF8String];
  v10 = os_transaction_create();
  v11 = MEMORY[0x277CCA8C8];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __35__DEDDaemon_adoptFiles_forSession___block_invoke;
  v21 = &unk_278F65D28;
  v12 = v10;
  v22 = v12;
  objc_copyWeak(&v25, &location);
  v13 = sessionCopy;
  v23 = v13;
  v14 = filesCopy;
  v24 = v14;
  v15 = [v11 blockOperationWithBlock:&v18];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"adopt(%@)", v13, v18, v19, v20, v21];
  [v15 setName:v16];

  userInitiatedOpQueue = [(DEDDaemon *)self userInitiatedOpQueue];
  [userInitiatedOpQueue addOperation:v15];

  if ([(DEDDaemon *)self observesOperations])
  {
    [(DEDDaemon *)self _logOperations];
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __35__DEDDaemon_adoptFiles_forSession___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained attachmentHandler];

  [v3 setCompressOnAttach:0];
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 controller];
  v27 = [v5 sessionForIdentifier:*(a1 + 40)];

  v26 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = a1;
  obj = *(a1 + 48);
  v7 = [obj countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v30;
    *&v8 = 138543362;
    v25 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [v3 identifierForAdoptingFile:{v12, v25}];
        if (v13)
        {
          v14 = [objc_alloc(MEMORY[0x277D051B8]) initWithPathURL:v12];
          v37 = v14;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
          v16 = [v3 processAttachments:v15 withSessionIdentifier:*(v6 + 40) extension:v13 shouldAddClassBDataProtection:0 annotatedGroup:0];

          if (v16)
          {
            v17 = [MEMORY[0x277D051B0] createWithName:v13 rootURL:v16];
            v18 = [DEDAttachmentGroup groupWithDEGroup:v17 identifier:v13];
            [v27 didAdoptGroup:v18];
          }

          else
          {
            v19 = Log_0();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              __35__DEDDaemon_adoptFiles_forSession___block_invoke_cold_1(v35, v12, &v36, v19);
            }

            [v26 addObject:v12];
          }
        }

        else
        {
          v14 = Log_0();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v25;
            v39 = v12;
            _os_log_error_impl(&dword_248AD7000, v14, OS_LOG_TYPE_ERROR, "Could not build identifier for adopted file [%{public}@]", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v40 count:16];
    }

    while (v9);
  }

  if ([v26 count])
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = *(v6 + 48);
    v33 = @"failed";
    v34 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v23 = [v20 errorWithDomain:@"DEDErrorDomain" code:100 userInfo:v22];
  }

  else
  {
    v23 = 0;
  }

  [v27 didAdoptFilesWithError:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)commitSession:(id)session
{
  v30 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  controller = [(DEDDaemon *)self controller];
  v6 = [controller sessionForIdentifier:sessionCopy];

  if (v6)
  {
    sessionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"finish(%@)", sessionCopy];
    backgroundOpQueue = [(DEDDaemon *)self backgroundOpQueue];
    operations = [backgroundOpQueue operations];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __27__DEDDaemon_commitSession___block_invoke;
    v26[3] = &unk_278F65D50;
    v10 = sessionCopy;
    v27 = v10;
    v11 = [operations ded_findWithBlock:v26];

    if (v11)
    {
      sessionCopy2 = Log_0();
      if (os_log_type_enabled(sessionCopy2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = sessionCopy;
        v13 = "Already finishing [%{public}@]";
LABEL_11:
        _os_log_impl(&dword_248AD7000, sessionCopy2, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
      }
    }

    else if ([v6 readyToFinish])
    {
      sessionCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.diagnosticextensionsd-commits-%@", sessionCopy];
      v14 = sessionCopy2;
      [sessionCopy2 UTF8String];
      v15 = os_transaction_create();
      objc_initWeak(buf, self);
      v16 = MEMORY[0x277CCA8C8];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __27__DEDDaemon_commitSession___block_invoke_149;
      v21[3] = &unk_278F65DA0;
      v17 = v15;
      v22 = v17;
      v23 = sessionCopy;
      v24 = v6;
      objc_copyWeak(&v25, buf);
      v18 = [v16 blockOperationWithBlock:v21];
      [v18 setName:v10];
      backgroundOpQueue2 = [(DEDDaemon *)self backgroundOpQueue];
      [backgroundOpQueue2 addOperation:v18];

      objc_destroyWeak(&v25);
      objc_destroyWeak(buf);
    }

    else
    {
      sessionCopy2 = Log_0();
      if (os_log_type_enabled(sessionCopy2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = sessionCopy;
        v13 = "Not ready to finish [%{public}@]";
        goto LABEL_11;
      }
    }

    goto LABEL_13;
  }

  v10 = Log_0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = sessionCopy;
    _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "Session is nil for identifier [%{public}@]. Cannot commit", buf, 0xCu);
  }

LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __27__DEDDaemon_commitSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __27__DEDDaemon_commitSession___block_invoke_149(id *a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = Log_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[5];
    *buf = 138543362;
    v45 = v3;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "Starting commit operation for [%{public}@]", buf, 0xCu);
  }

  v4 = objc_opt_new();
  v5 = [a1[6] identifier];
  v6 = [v4 directoryForBugSessionIdentifier:v5];

  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v8 = [WeakRetained _extensionsForSession:a1[6]];

  v9 = objc_loadWeakRetained(a1 + 7);
  v10 = [v9 attachmentHandler];

  [v10 extensionsWithFilesAttachedToSessionWithID:a1[5] allExtensions:v8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v42 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if ([*(*(&v39 + 1) + 8 * i) requiresDataClassBAccessToRun])
        {
          v16 = 0;
          goto LABEL_13;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_13:

  v17 = +[DEDUtils isDataClassBAvailable];
  v18 = Log_0();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if ((v16 & 1) != 0 || v17)
  {
    if (v19)
    {
      v25 = a1[5];
      *buf = 138543362;
      v45 = v25;
      _os_log_impl(&dword_248AD7000, v18, OS_LOG_TYPE_DEFAULT, "Calling finisher for [%{public}@]", buf, 0xCu);
    }

    v26 = [a1[6] finisher];
    v27 = a1[6];
    v28 = [v27 config];
    [v26 finishSession:v27 withConfiguration:v28];

    v29 = Log_0();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = a1[5];
      *buf = 138543362;
      v45 = v30;
      _os_log_impl(&dword_248AD7000, v29, OS_LOG_TYPE_DEFAULT, "Did call finisher for [%{public}@]", buf, 0xCu);
    }

    v24 = [MEMORY[0x277D051E0] findAllfiles:v6];
    v31 = [MEMORY[0x277D051E0] getDirectorySize:v6];
    v32 = [MEMORY[0x277CBEAA8] date];
    [a1[6] setUploadStartTime:v32];

    v33 = [v24 count];
    v34 = [a1[6] config];
    +[DEDAnalytics finisherDidStartWithFileCount:expectedByteUploadCount:finishingMove:](DEDAnalytics, "finisherDidStartWithFileCount:expectedByteUploadCount:finishingMove:", v33, v31, [v34 finishingMove]);

    [a1[6] didCommit];
  }

  else
  {
    if (v19)
    {
      v20 = a1[5];
      *buf = 138543362;
      v45 = v20;
      _os_log_impl(&dword_248AD7000, v18, OS_LOG_TYPE_DEFAULT, "Device is locked while finishing session that requires access to Class B data [%{public}@]", buf, 0xCu);
    }

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.diagnosticextensionsd.commit-%@", a1[5]];
    v22 = [v21 UTF8String];
    v23 = *MEMORY[0x277D86238];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __27__DEDDaemon_commitSession___block_invoke_154;
    handler[3] = &unk_278F65D78;
    v37 = v21;
    v38 = a1[5];
    v24 = v21;
    xpc_activity_register(v22, v23, handler);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __27__DEDDaemon_commitSession___block_invoke_154(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = Log_0();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (state == 2)
  {
    if (v6)
    {
      v8 = *(a1 + 32);
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "XPC_ACTIVITY_STATE_RUN [%{public}@]", &v11, 0xCu);
    }

    v5 = +[DEDDaemon sharedInstance];
    [v5 commitSession:*(a1 + 40)];
  }

  else if (state)
  {
    if (v6)
    {
      v9 = *(a1 + 32);
      v11 = 134218242;
      v12 = state;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "[%lu] not handled for activity [%{public}@]", &v11, 0x16u);
    }
  }

  else
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "XPC_ACTIVITY_STATE_CHECK_IN [%{public}@]", &v11, 0xCu);
    }

    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86360], 0);
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86378], 1);
    xpc_dictionary_set_string(v5, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    xpc_activity_set_criteria(v3, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cancelSession:(id)session
{
  v3 = Log_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(DEDDaemon *)v3 cancelSession:v4, v5, v6, v7, v8, v9, v10];
  }
}

- (void)scheduleNotificationForSession:(id)session
{
  v12 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  controller = [(DEDDaemon *)self controller];
  v6 = [controller sessionForIdentifier:sessionCopy];

  v7 = Log_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = sessionCopy;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Daemon received notification request for bug session: %{public}@", &v10, 0xCu);
  }

  if ([v6 readyToNotify])
  {
    v8 = Log_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "Ready to notify user", &v10, 2u);
    }

    [v6 presentNotificationOnFilingDevice];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)unscheduleNotificationForSession:(id)session
{
  sessionCopy = session;
  controller = [(DEDDaemon *)self controller];
  v6 = [controller sessionForIdentifier:sessionCopy];

  [v6 clearNotificationOnFilingDevice];
}

- (void)addSessionData:(id)data withFilename:(id)filename forSession:(id)session
{
  dataCopy = data;
  filenameCopy = filename;
  sessionCopy = session;
  controller = [(DEDDaemon *)self controller];
  v12 = [controller sessionForIdentifier:sessionCopy];

  v13 = MEMORY[0x277CCACA8];
  identifier = [v12 identifier];
  v15 = [v13 stringWithFormat:@"com.apple.diagnosticextensionsd-send-data-%@-%@", sessionCopy, identifier];

  [v15 UTF8String];
  v16 = os_transaction_create();
  v17 = MEMORY[0x277CCA8C8];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __52__DEDDaemon_addSessionData_withFilename_forSession___block_invoke;
  v30 = &unk_278F65DC8;
  v18 = v16;
  v31 = v18;
  v19 = v12;
  v32 = v19;
  v20 = dataCopy;
  v33 = v20;
  v21 = filenameCopy;
  v34 = v21;
  v22 = [v17 blockOperationWithBlock:&v27];
  v23 = MEMORY[0x277CCACA8];
  identifier2 = [v19 identifier];
  v25 = [v23 stringWithFormat:@"send-data(%@-%@)", sessionCopy, identifier2, v27, v28, v29, v30];

  [v22 setName:v25];
  backgroundOpQueue = [(DEDDaemon *)self backgroundOpQueue];
  [backgroundOpQueue addOperation:v22];

  if ([(DEDDaemon *)self observesOperations])
  {
    [(DEDDaemon *)self _logOperations];
  }
}

- (void)getSessionStateWithSession:(id)session
{
  sessionCopy = session;
  objc_initWeak(&location, self);
  sessionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.diagnosticextensionsd-get-status-%@", sessionCopy];
  [sessionCopy UTF8String];
  v6 = os_transaction_create();
  v7 = MEMORY[0x277CCA8C8];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __40__DEDDaemon_getSessionStateWithSession___block_invoke;
  v17 = &unk_278F65C88;
  v8 = v6;
  v18 = v8;
  v9 = sessionCopy;
  v19 = v9;
  objc_copyWeak(&v21, &location);
  v10 = sessionCopy;
  v20 = v10;
  v11 = [v7 blockOperationWithBlock:&v14];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"getState(%@)", v10, v14, v15, v16, v17];
  [v11 setName:v12];

  userInitiatedOpQueue = [(DEDDaemon *)self userInitiatedOpQueue];
  [userInitiatedOpQueue addOperation:v11];

  if ([(DEDDaemon *)self observesOperations])
  {
    [(DEDDaemon *)self _logOperations];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __40__DEDDaemon_getSessionStateWithSession___block_invoke(id *a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __40__DEDDaemon_getSessionStateWithSession___block_invoke_2;
  v2[3] = &unk_278F65C88;
  v3 = a1[4];
  v4 = a1[5];
  objc_copyWeak(&v6, a1 + 7);
  v5 = a1[6];
  _os_activity_initiate(&dword_248AD7000, "Getting session state", OS_ACTIVITY_FLAG_DEFAULT, v2);

  objc_destroyWeak(&v6);
}

void __40__DEDDaemon_getSessionStateWithSession___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = DEDSessionStateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v17 = 138543362;
    v18 = v3;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "Running [%{public}@]", &v17, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained controller];
  v7 = *(a1 + 48);
  v6 = (a1 + 48);
  v8 = [v5 sessionForIdentifier:v7];

  v9 = DEDSessionStateLog();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __40__DEDDaemon_getSessionStateWithSession___block_invoke_2_cold_1(v6);
    }

    v10 = [v8 stateInfo];
    v11 = [v8 state];
    v12 = DEDSessionStateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *v6;
      if ((v11 + 1) > 9)
      {
        v14 = "Unknown";
      }

      else
      {
        v14 = off_278F65E88[v11 + 1];
      }

      v17 = 138543618;
      v18 = v13;
      v19 = 2082;
      v20 = v14;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "Did get session state for session [%{public}@], state [%{public}s]", &v17, 0x16u);
    }

    v15 = DEDSessionStateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __40__DEDDaemon_getSessionStateWithSession___block_invoke_2_cold_2(v6);
    }

    [v8 didGetState:v11 info:v10];
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __40__DEDDaemon_getSessionStateWithSession___block_invoke_2_cold_3(v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_syncSessionStatusWithSession:(id)session withIdentifiers:(BOOL)identifiers
{
  sessionCopy = session;
  objc_initWeak(&location, self);
  identifier = [sessionCopy identifier];
  v8 = MEMORY[0x277CCACA8];
  identifier2 = [sessionCopy identifier];
  v10 = [v8 stringWithFormat:@"com.apple.diagnosticextensionsd-status-%@", identifier2];

  [v10 UTF8String];
  v11 = os_transaction_create();
  v12 = MEMORY[0x277CCA8C8];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __59__DEDDaemon__syncSessionStatusWithSession_withIdentifiers___block_invoke;
  v21[3] = &unk_278F65E68;
  v13 = v11;
  v22 = v13;
  v14 = sessionCopy;
  v23 = v14;
  objc_copyWeak(&v25, &location);
  v15 = identifier;
  v24 = v15;
  identifiersCopy = identifiers;
  v16 = [v12 blockOperationWithBlock:v21];
  v17 = MEMORY[0x277CCACA8];
  identifier3 = [v14 identifier];
  v19 = [v17 stringWithFormat:@"getStatus(%@)", identifier3];
  [v16 setName:v19];

  userInitiatedOpQueue = [(DEDDaemon *)self userInitiatedOpQueue];
  [userInitiatedOpQueue addOperation:v16];

  if ([(DEDDaemon *)self observesOperations])
  {
    [(DEDDaemon *)self _logOperations];
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __59__DEDDaemon__syncSessionStatusWithSession_withIdentifiers___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = Log_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 40) identifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_INFO, "starting _syncSessionStatusWithSession operation for session [%{public}@]", &buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained attachmentHandler];

  v6 = [*(a1 + 40) knownExtensions];
  v7 = [v6 allValues];

  if (!v7 || ![v7 count])
  {
    v8 = objc_loadWeakRetained((a1 + 56));
    v9 = [v8 diagnosticCollector];
    v10 = [v9 availableDiagnosticExtensions];

    v7 = v10;
  }

  queue = [*(a1 + 40) diskAccessQueue];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__1;
  v55 = __Block_byref_object_dispose__1;
  v56 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__DEDDaemon__syncSessionStatusWithSession_withIdentifiers___block_invoke_172;
  block[3] = &unk_278F65DF0;
  p_buf = &buf;
  v31 = v5;
  v47 = v31;
  v48 = *(a1 + 48);
  v34 = v7;
  v49 = v34;
  dispatch_sync(queue, block);
  v11 = *(*(&buf + 1) + 40);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __59__DEDDaemon__syncSessionStatusWithSession_withIdentifiers___block_invoke_2;
  v44[3] = &unk_278F652E0;
  v45 = *(a1 + 40);
  v33 = [v11 ded_rejectItemsPassingTest:v44];
  v12 = [*(a1 + 40) ongoingExtensionCollectionOperations];
  v13 = [*(a1 + 40) scheduledDeferredExtensionCollectionOperations];
  if ([v12 count] || objc_msgSend(v13, "count"))
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v34, "count")}];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v15 = v34;
    v16 = [v15 countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (v16)
    {
      v17 = *v41;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v40 + 1) + 8 * i);
          v20 = [v19 identifier];
          [v14 setObject:v19 forKey:v20];
        }

        v16 = [v15 countByEnumeratingWithState:&v40 objects:v51 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if ([v12 count])
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __59__DEDDaemon__syncSessionStatusWithSession_withIdentifiers___block_invoke_3;
    v38[3] = &unk_278F65E18;
    v39 = v14;
    v21 = [v12 ded_mapWithBlock:v38];
  }

  else
  {
    v21 = MEMORY[0x277CBEBF8];
  }

  if ([v13 count])
  {
    v22 = +[DEDDeferredExtensionInfo allInfo];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __59__DEDDaemon__syncSessionStatusWithSession_withIdentifiers___block_invoke_4;
    v35[3] = &unk_278F65E40;
    v23 = v22;
    v36 = v23;
    v37 = v14;
    v24 = [v13 ded_mapWithBlock:v35];
    v25 = [v21 arrayByAddingObjectsFromArray:v24];

    v21 = v25;
  }

  v26 = Log_0();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    __59__DEDDaemon__syncSessionStatusWithSession_withIdentifiers___block_invoke_cold_1(v33, v21, v26);
  }

  v27 = *(a1 + 64);
  v28 = *(a1 + 40);
  if (v27 == 1)
  {
    v29 = [v28 allExtensionIdentifiers];
    [v28 hasCollected:v33 isCollecting:v21 identifiers:v29];
  }

  else
  {
    [v28 hasCollected:v33 isCollecting:v21];
  }

  _Block_object_dispose(&buf, 8);
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __59__DEDDaemon__syncSessionStatusWithSession_withIdentifiers___block_invoke_172(uint64_t a1)
{
  v2 = [*(a1 + 32) collectedGroupsWithSessionIdentifier:*(a1 + 40) matchingExtensions:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t __59__DEDDaemon__syncSessionStatusWithSession_withIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 extensionID];
  v4 = [*(a1 + 32) isRunningDE:v3];
  LOBYTE(a1) = v4 | ~[*(a1 + 32) shouldCollectDiagnosticWithId:v3];

  return a1 & 1;
}

id __59__DEDDaemon__syncSessionStatusWithSession_withIdentifiers___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[DEDExtensionIdentifier alloc] initWithString:v3];

  v5 = *(a1 + 32);
  v6 = [(DEDExtensionIdentifier *)v4 extensionIdentifier];
  v7 = [v5 objectForKey:v6];
  v8 = [v7 copy];

  [v8 setDedExtensionIdentifier:v4];

  return v8;
}

id __59__DEDDaemon__syncSessionStatusWithSession_withIdentifiers___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKey:a2];
  v4 = [v3 dedIdentifier];

  v5 = *(a1 + 40);
  v6 = [v4 extensionIdentifier];
  v7 = [v5 objectForKey:v6];
  v8 = [v7 copy];

  [v8 setDedExtensionIdentifier:v4];

  return v8;
}

- (void)loadTextDataForExtensions:(id)extensions localization:(id)localization sessionID:(id)d
{
  v41 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  localizationCopy = localization;
  dCopy = d;
  v11 = Log_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v24 = [extensionsCopy valueForKeyPath:@"identifier"];
    *location = 136315906;
    *&location[4] = "[DEDDaemon loadTextDataForExtensions:localization:sessionID:]";
    v35 = 2112;
    v36 = v24;
    v37 = 2112;
    v38 = localizationCopy;
    v39 = 2112;
    v40 = dCopy;
    _os_log_debug_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEBUG, "%s %@, $@, %@, %@", location, 0x2Au);
  }

  objc_initWeak(location, self);
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.diagnosticextensionsd-load-extension-text-%@", dCopy];
  v13 = dCopy;
  [dCopy UTF8String];
  v14 = os_transaction_create();
  v15 = MEMORY[0x277CCA8C8];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __62__DEDDaemon_loadTextDataForExtensions_localization_sessionID___block_invoke;
  v28 = &unk_278F65D00;
  v16 = v14;
  v29 = v16;
  v17 = extensionsCopy;
  v30 = v17;
  objc_copyWeak(&v33, location);
  v18 = localizationCopy;
  v31 = v18;
  v19 = dCopy;
  v32 = v19;
  v20 = [v15 blockOperationWithBlock:&v25];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"loadExtensionText(%@)", v19, v25, v26, v27, v28];
  [v20 setName:v21];

  userInitiatedOpQueue = [(DEDDaemon *)self userInitiatedOpQueue];
  [userInitiatedOpQueue addOperation:v20];

  if ([(DEDDaemon *)self observesOperations])
  {
    [(DEDDaemon *)self _logOperations];
  }

  objc_destroyWeak(&v33);
  objc_destroyWeak(location);

  v23 = *MEMORY[0x277D85DE8];
}

void __62__DEDDaemon_loadTextDataForExtensions_localization_sessionID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        WeakRetained = objc_loadWeakRetained((a1 + 64));
        v9 = [WeakRetained diagnosticCollector];
        [v9 loadExtensionTextDataInExtension:v7 localization:*(a1 + 48)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v10 = objc_loadWeakRetained((a1 + 64));
  v11 = [v10 controller];
  v12 = [v11 sessionForIdentifier:*(a1 + 56)];

  [v12 didLoadTextDataForExtensions:*(a1 + 40) localization:*(a1 + 48)];
  v13 = *MEMORY[0x277D85DE8];
}

- (id)diagnosticCollector
{
  _diagnosticCollector = [(DEDDaemon *)self _diagnosticCollector];

  if (!_diagnosticCollector)
  {
    v4 = objc_alloc_init(DEDDiagnosticCollector);
    [(DEDDaemon *)self set_diagnosticCollector:v4];
  }

  return [(DEDDaemon *)self _diagnosticCollector];
}

- (id)attachmentHandler
{
  v2 = objc_alloc_init(DEDAttachmentHandler);

  return v2;
}

- (id)_controller
{
  v2 = objc_alloc_init(DEDController);

  return v2;
}

- (void)_streamOperationStatus
{
  v3 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__DEDDaemon__streamOperationStatus__block_invoke;
  block[3] = &unk_278F653D0;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

uint64_t __35__DEDDaemon__streamOperationStatus__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _logOperations];
  v2 = *(a1 + 32);

  return [v2 _streamOperationStatus];
}

- (void)_logOperations
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  userInitiatedOpQueue = [a2 userInitiatedOpQueue];
  name = [userInitiatedOpQueue name];
  userInitiatedOpQueue2 = [a2 userInitiatedOpQueue];
  operations = [userInitiatedOpQueue2 operations];
  v8 = [operations valueForKeyPath:@"name"];
  v11 = 138412546;
  v12 = name;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_2(&dword_248AD7000, selfCopy, v9, "%@ operations %@", &v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __27__DEDDaemon__logOperations__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) config];
  v1 = os_log_create([v3 loggingSubsystem], "ded-op-watch");
  v2 = _logOperations_opDebugLog;
  _logOperations_opDebugLog = v1;
}

- (void)setupDeferredDiagnosticsWithExtensionInfo:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a1 dedIdentifier];
  v5 = [v4 extensionIdentifier];
  v6 = [a1 parameters];
  v7 = [a1 bugSessionIdentifier];
  v9 = 136315906;
  v10 = "[DEDDaemon setupDeferredDiagnosticsWithExtensionInfo:]";
  v11 = 2112;
  v12 = v5;
  v13 = 2112;
  v14 = v6;
  v15 = 2112;
  v16 = v7;
  _os_log_debug_impl(&dword_248AD7000, a2, OS_LOG_TYPE_DEBUG, "%s %@ %@ %@", &v9, 0x2Au);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startDiagnosticWithIdentifier:parameters:deferRunUntil:session:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[DEDDaemon startDiagnosticWithIdentifier:parameters:deferRunUntil:session:]";
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_2(&dword_248AD7000, v0, v1, "%s %@", &v3);
  v2 = *MEMORY[0x277D85DE8];
}

void __45__DEDDaemon_terminateExtension_info_session___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v1, v2, "_terminateExtension called while session is nil for identifier [%{public}@]", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)adoptFiles:forSession:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[DEDDaemon adoptFiles:forSession:]";
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_2(&dword_248AD7000, v0, v1, "%s %@", &v3);
  v2 = *MEMORY[0x277D85DE8];
}

void __35__DEDDaemon_adoptFiles_forSession___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 path];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_248AD7000, a4, OS_LOG_TYPE_ERROR, "Could not copy adopted file: %@", a1, 0xCu);
}

- (void)cancelSession:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, a1, a3, "This class should not receive [%{public}s]", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __40__DEDDaemon_getSessionStateWithSession___block_invoke_2_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_248AD7000, v1, OS_LOG_TYPE_DEBUG, "Getting session state for session [%{public}@]", v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __40__DEDDaemon_getSessionStateWithSession___block_invoke_2_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  v5 = 2114;
  v6 = v1;
  OUTLINED_FUNCTION_2_2(&dword_248AD7000, v2, v2, "Session [%{public}@], state info [%{public}@]", v4);
  v3 = *MEMORY[0x277D85DE8];
}

void __40__DEDDaemon_getSessionStateWithSession___block_invoke_2_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v1, v2, "No session for session id [%{public}@]. Cannot sync state", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_syncSessionStatusWithSessionID:(uint64_t)a3 withIdentifiers:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, a2, a3, "No session for session id [%{public}@]. Cannot sync status", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __59__DEDDaemon__syncSessionStatusWithSession_withIdentifiers___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  OUTLINED_FUNCTION_2_2(&dword_248AD7000, a3, a3, "has collected %@ ongoing %@", &v4);
  v3 = *MEMORY[0x277D85DE8];
}

@end