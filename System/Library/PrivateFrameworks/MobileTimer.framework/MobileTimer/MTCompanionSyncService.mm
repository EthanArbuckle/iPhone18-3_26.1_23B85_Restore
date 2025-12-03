@interface MTCompanionSyncService
- (BOOL)resume:(id *)resume;
- (BOOL)service:(id)service startReceivingSession:(id)session error:(id *)error;
- (BOOL)service:(id)service startSendingSession:(id)session error:(id *)error;
- (BOOL)service:(id)service startSession:(id)session error:(id *)error;
- (MTCompanionSyncService)initWithSyncStatusProvider:(id)provider;
- (MTSyncServiceDelegate)delegate;
- (id)requestSync:(unint64_t)sync;
- (id)service:(id)service willPreferSession:(id)session overSession:(id)overSession;
- (void)_requestSync:(unint64_t)sync;
- (void)_retryRequest;
- (void)service:(id)service receivingSessionEnded:(id)ended error:(id)error;
- (void)service:(id)service sendingSessionEnded:(id)ended error:(id)error;
- (void)service:(id)service sessionEnded:(id)ended error:(id)error;
- (void)suspend;
- (void)syncStatusProvider:(id)provider didChangeSyncStatus:(unint64_t)status;
@end

@implementation MTCompanionSyncService

- (MTCompanionSyncService)initWithSyncStatusProvider:(id)provider
{
  v46 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  v34.receiver = self;
  v34.super_class = MTCompanionSyncService;
  v6 = [(MTCompanionSyncService *)&v34 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, +[MTScheduler defaultPriority], -1);
    v8 = dispatch_queue_create("com.apple.MTCompanionSyncService.serialqueue", v7);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v8;

    v10 = [MEMORY[0x1E69B3790] schedulerWithDispatchQueue:v6->_serialQueue];
    serializer = v6->_serializer;
    v6->_serializer = v10;

    objc_storeStrong(&v6->_syncStatusProvider, provider);
    location = 0;
    p_location = &location;
    v37 = 0x2050000000;
    v12 = getSYServiceClass_softClass;
    v38 = getSYServiceClass_softClass;
    if (!getSYServiceClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v43 = __getSYServiceClass_block_invoke;
      v44 = &unk_1E7B0C600;
      v45 = &location;
      __getSYServiceClass_block_invoke(&buf);
      v12 = p_location[3];
    }

    v13 = v12;
    _Block_object_dispose(&location, 8);
    v14 = [v12 alloc];
    location = 0;
    p_location = &location;
    v37 = 0x2020000000;
    v15 = getSYServiceOptionDiskBufferProtectionClassSymbolLoc_ptr;
    v38 = getSYServiceOptionDiskBufferProtectionClassSymbolLoc_ptr;
    if (!getSYServiceOptionDiskBufferProtectionClassSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v43 = __getSYServiceOptionDiskBufferProtectionClassSymbolLoc_block_invoke;
      v44 = &unk_1E7B0C600;
      v45 = &location;
      v16 = CompanionSyncLibrary();
      v17 = dlsym(v16, "SYServiceOptionDiskBufferProtectionClass");
      *(v45[1] + 3) = v17;
      getSYServiceOptionDiskBufferProtectionClassSymbolLoc_ptr = *(v45[1] + 3);
      v15 = p_location[3];
    }

    _Block_object_dispose(&location, 8);
    if (!v15)
    {
      [MTCompanionSyncService initWithSyncStatusProvider:];
    }

    v18 = *v15;
    v41[0] = &unk_1F2965FC0;
    location = 0;
    p_location = &location;
    v37 = 0x2020000000;
    v19 = getIDSSendMessageOptionBypassDuetKeySymbolLoc_ptr;
    v38 = getIDSSendMessageOptionBypassDuetKeySymbolLoc_ptr;
    v39 = v18;
    if (!getIDSSendMessageOptionBypassDuetKeySymbolLoc_ptr)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v43 = __getIDSSendMessageOptionBypassDuetKeySymbolLoc_block_invoke;
      v44 = &unk_1E7B0C600;
      v45 = &location;
      __getIDSSendMessageOptionBypassDuetKeySymbolLoc_block_invoke(&buf);
      v19 = p_location[3];
    }

    _Block_object_dispose(&location, 8);
    if (!v19)
    {
      [MTCompanionSyncService initWithSyncStatusProvider:];
    }

    v40 = *v19;
    v41[1] = MEMORY[0x1E695E118];
    v20 = MEMORY[0x1E695DF20];
    v21 = v40;
    v22 = [v20 dictionaryWithObjects:v41 forKeys:&v39 count:2];
    v23 = [v14 initWithService:@"com.apple.private.alloy.mobiletimersync" priority:0 asMasterStore:1 options:v22];
    service = v6->_service;
    v6->_service = v23;

    [(SYService *)v6->_service setDelegate:v6 queue:v6->_serialQueue];
    v25 = objc_opt_new();
    pendingRequests = v6->_pendingRequests;
    v6->_pendingRequests = v25;

    objc_initWeak(&location, v6);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __53__MTCompanionSyncService_initWithSyncStatusProvider___block_invoke;
    v32[3] = &unk_1E7B0CF70;
    objc_copyWeak(&v33, &location);
    v27 = [MTExponentialBackOffTimer timerWithInitialTime:2 backoffFactor:v32 fireBlock:v6->_serialQueue queue:2.0];
    retryTimer = v6->_retryTimer;
    v6->_retryTimer = v27;

    v29 = MTLogForCategory(6);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_1B1F9F000, v29, OS_LOG_TYPE_DEFAULT, "Initialized %{public}@", &buf, 0xCu);
    }

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v6;
}

void __53__MTCompanionSyncService_initWithSyncStatusProvider___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MTLogForCategory(6);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained retryTimer];
    v5 = 138543618;
    v6 = WeakRetained;
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ retry timer fired (%{public}@)", &v5, 0x16u);
  }

  [WeakRetained _retryRequest];
  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)resume:(id *)resume
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = MTLogForCategory(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ resuming service", &v8, 0xCu);
  }

  result = [(SYService *)self->_service resume:resume];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)suspend
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ suspending service", &v6, 0xCu);
  }

  [(SYService *)self->_service suspend];
  retryTimer = [(MTCompanionSyncService *)self retryTimer];
  [retryTimer reset];

  v5 = *MEMORY[0x1E69E9840];
}

- (id)requestSync:(unint64_t)sync
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [MTCompanionSyncRequest requestWithType:?];
  v6 = MTLogForCategory(6);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ requests sync %{public}@", buf, 0x16u);
  }

  serializer = self->_serializer;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __38__MTCompanionSyncService_requestSync___block_invoke;
  v13[3] = &unk_1E7B0CD10;
  v13[4] = self;
  syncCopy = sync;
  v8 = v5;
  v14 = v8;
  [(NAScheduler *)serializer performBlock:v13];
  [(MTCompanionSyncService *)self _requestSync:sync];
  v9 = v14;
  v10 = v8;

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

void __38__MTCompanionSyncService_requestSync___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__MTCompanionSyncService_requestSync___block_invoke_2;
    v8[3] = &unk_1E7B0D658;
    v9 = *(a1 + 40);
    [v4 addCompletionBlock:v8];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 64);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }
}

- (void)_requestSync:(unint64_t)sync
{
  v10 = *MEMORY[0x1E69E9840];
  if (!sync)
  {
    v4 = MTLogForCategory(6);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%{public}@ setHasChangesAvailable", &v8, 0xCu);
    }

    service = [(MTCompanionSyncService *)self service];
    [service setHasChangesAvailable];
  }

  retryTimer = [(MTCompanionSyncService *)self retryTimer];
  [retryTimer reset];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)service:(id)service startSession:(id)session error:(id *)error
{
  serialQueue = self->_serialQueue;
  sessionCopy = session;
  serviceCopy = service;
  dispatch_assert_queue_V2(serialQueue);
  [sessionCopy setTargetQueue:self->_serialQueue];
  if ([sessionCopy isSending])
  {
    v11 = [(MTCompanionSyncService *)self service:serviceCopy startSendingSession:sessionCopy error:error];
  }

  else
  {
    v11 = [(MTCompanionSyncService *)self service:serviceCopy startReceivingSession:sessionCopy error:error];
  }

  v12 = v11;

  return v12;
}

- (BOOL)service:(id)service startSendingSession:(id)session error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v7 = [(NSMutableDictionary *)self->_pendingRequests objectForKeyedSubscript:&unk_1F2965FD8];
  v8 = MTLogForCategory(6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543874;
    selfCopy3 = self;
    v20 = 2114;
    v21 = sessionCopy;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ wants to start sending session %{public}@ for request %{public}@", &v18, 0x20u);
  }

  v9 = [MTCompanionSyncSession alloc];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [(MTCompanionSyncSession *)v9 initWithSession:sessionCopy request:v7 delegate:WeakRetained];
  [(MTCompanionSyncService *)self setSendingSession:v11];

  syncStatus = [(MTSyncStatusProvider *)self->_syncStatusProvider syncStatus];
  v13 = MTLogForCategory(6);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (syncStatus == 1)
  {
    if (v14)
    {
      sendingSession = [(MTCompanionSyncService *)self sendingSession];
      v18 = 138543618;
      selfCopy3 = self;
      v20 = 2114;
      v21 = sendingSession;
      _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ starting sending session %{public}@", &v18, 0x16u);
    }
  }

  else if (v14)
  {
    v18 = 138543362;
    selfCopy3 = self;
    _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ not ok to sync yet", &v18, 0xCu);
  }

  v16 = *MEMORY[0x1E69E9840];
  return syncStatus == 1;
}

- (BOOL)service:(id)service startReceivingSession:(id)session error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v7 = MTLogForCategory(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    selfCopy = self;
    v15 = 2114;
    v16 = sessionCopy;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ starting receiving session %{public}@", &v13, 0x16u);
  }

  v8 = [MTCompanionSyncSession alloc];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [(MTCompanionSyncSession *)v8 initWithSession:sessionCopy delegate:WeakRetained];
  [(MTCompanionSyncService *)self setReceivingSession:v10];

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)service:(id)service sessionEnded:(id)ended error:(id)error
{
  serialQueue = self->_serialQueue;
  errorCopy = error;
  endedCopy = ended;
  serviceCopy = service;
  dispatch_assert_queue_V2(serialQueue);
  if ([endedCopy isSending])
  {
    [(MTCompanionSyncService *)self service:serviceCopy sendingSessionEnded:endedCopy error:errorCopy];
  }

  else
  {
    [(MTCompanionSyncService *)self service:serviceCopy receivingSessionEnded:endedCopy error:errorCopy];
  }
}

- (void)service:(id)service sendingSessionEnded:(id)ended error:(id)error
{
  v27 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  endedCopy = ended;
  errorCopy = error;
  v11 = MTLogForCategory(6);
  v12 = v11;
  if (errorCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = 138543874;
      selfCopy3 = self;
      v23 = 2114;
      v24 = endedCopy;
      v25 = 2114;
      v26 = errorCopy;
      _os_log_error_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_ERROR, "%{public}@ finished sending session %{public}@ with error %{public}@", &v21, 0x20u);
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Companion sync sending session failed"];
    [MTAnalytics sendCriticalEvent:v13];

    if ([objc_opt_class() shouldRetryForError:errorCopy])
    {
      retryTimer = [(MTCompanionSyncService *)self retryTimer];
      [retryTimer start];
      goto LABEL_12;
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543618;
      selfCopy3 = self;
      v23 = 2114;
      v24 = endedCopy;
      _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ finished sending session %{public}@", &v21, 0x16u);
    }
  }

  sendingSession = [(MTCompanionSyncService *)self sendingSession];
  retryTimer = [sendingSession request];

  v16 = MTLogForCategory(6);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543874;
    selfCopy3 = self;
    v23 = 2114;
    v24 = retryTimer;
    v25 = 2114;
    v26 = errorCopy;
    _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ finished request %{public}@ with error %{public}@", &v21, 0x20u);
  }

  [retryTimer complete:errorCopy];
  pendingRequests = self->_pendingRequests;
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(retryTimer, "requestType")}];
  [(NSMutableDictionary *)pendingRequests removeObjectForKey:v18];

  [(MTCompanionSyncService *)self setSendingSession:0];
  retryTimer2 = [(MTCompanionSyncService *)self retryTimer];
  [retryTimer2 reset];

LABEL_12:
  v20 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service receivingSessionEnded:(id)ended error:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  errorCopy = error;
  v9 = MTLogForCategory(6);
  v10 = v9;
  if (errorCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543874;
      selfCopy2 = self;
      v14 = 2114;
      v15 = endedCopy;
      v16 = 2114;
      v17 = errorCopy;
      _os_log_error_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_ERROR, "%{public}@ finished receiving session %{public}@ with error %{public}@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy2 = self;
    v14 = 2114;
    v15 = endedCopy;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ finished receiving session %{public}@", &v12, 0x16u);
  }

  [(MTCompanionSyncService *)self setReceivingSession:0];
  v11 = *MEMORY[0x1E69E9840];
}

- (id)service:(id)service willPreferSession:(id)session overSession:(id)overSession
{
  v18 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  overSessionCopy = overSession;
  v9 = MTLogForCategory(6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543874;
    selfCopy = self;
    v14 = 2114;
    v15 = sessionCopy;
    v16 = 2114;
    v17 = overSessionCopy;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ had a conflict between %{public}@ (preferred) and %{public}@ (rejected)", &v12, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];

  return sessionCopy;
}

- (void)_retryRequest
{
  v11 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_serialQueue);
  sendingSession = [(MTCompanionSyncService *)self sendingSession];
  request = [sendingSession request];

  if (request)
  {
    v5 = MTLogForCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      selfCopy = self;
      v9 = 2114;
      v10 = request;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ retrying %{public}@", &v7, 0x16u);
    }

    -[MTCompanionSyncService _requestSync:](self, "_requestSync:", [request requestType]);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)syncStatusProvider:(id)provider didChangeSyncStatus:(unint64_t)status
{
  v15 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  if (status == 1)
  {
    v7 = MTLogForCategory(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v13 = 2114;
      v14 = providerCopy;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ told it's ok to sync from %{public}@.", buf, 0x16u);
    }

    serializer = self->_serializer;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__MTCompanionSyncService_syncStatusProvider_didChangeSyncStatus___block_invoke;
    v10[3] = &unk_1E7B0C9D8;
    v10[4] = self;
    [(NAScheduler *)serializer performBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (MTSyncServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithSyncStatusProvider:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIDSSendMessageOptionBypassDuetKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"MTCompanionSyncService.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)initWithSyncStatusProvider:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"SYServiceOption getSYServiceOptionDiskBufferProtectionClass(void)"];
  [v0 handleFailureInFunction:v1 file:@"MTCompanionSyncService.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

@end