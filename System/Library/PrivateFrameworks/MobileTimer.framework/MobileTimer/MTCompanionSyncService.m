@interface MTCompanionSyncService
- (BOOL)resume:(id *)a3;
- (BOOL)service:(id)a3 startReceivingSession:(id)a4 error:(id *)a5;
- (BOOL)service:(id)a3 startSendingSession:(id)a4 error:(id *)a5;
- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5;
- (MTCompanionSyncService)initWithSyncStatusProvider:(id)a3;
- (MTSyncServiceDelegate)delegate;
- (id)requestSync:(unint64_t)a3;
- (id)service:(id)a3 willPreferSession:(id)a4 overSession:(id)a5;
- (void)_requestSync:(unint64_t)a3;
- (void)_retryRequest;
- (void)service:(id)a3 receivingSessionEnded:(id)a4 error:(id)a5;
- (void)service:(id)a3 sendingSessionEnded:(id)a4 error:(id)a5;
- (void)service:(id)a3 sessionEnded:(id)a4 error:(id)a5;
- (void)suspend;
- (void)syncStatusProvider:(id)a3 didChangeSyncStatus:(unint64_t)a4;
@end

@implementation MTCompanionSyncService

- (MTCompanionSyncService)initWithSyncStatusProvider:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
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

    objc_storeStrong(&v6->_syncStatusProvider, a3);
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

- (BOOL)resume:(id *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = MTLogForCategory(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ resuming service", &v8, 0xCu);
  }

  result = [(SYService *)self->_service resume:a3];
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
    v7 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ suspending service", &v6, 0xCu);
  }

  [(SYService *)self->_service suspend];
  v4 = [(MTCompanionSyncService *)self retryTimer];
  [v4 reset];

  v5 = *MEMORY[0x1E69E9840];
}

- (id)requestSync:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [MTCompanionSyncRequest requestWithType:?];
  v6 = MTLogForCategory(6);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = self;
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
  v15 = a3;
  v8 = v5;
  v14 = v8;
  [(NAScheduler *)serializer performBlock:v13];
  [(MTCompanionSyncService *)self _requestSync:a3];
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

- (void)_requestSync:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v4 = MTLogForCategory(6);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138543362;
      v9 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%{public}@ setHasChangesAvailable", &v8, 0xCu);
    }

    v5 = [(MTCompanionSyncService *)self service];
    [v5 setHasChangesAvailable];
  }

  v6 = [(MTCompanionSyncService *)self retryTimer];
  [v6 reset];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5
{
  serialQueue = self->_serialQueue;
  v9 = a4;
  v10 = a3;
  dispatch_assert_queue_V2(serialQueue);
  [v9 setTargetQueue:self->_serialQueue];
  if ([v9 isSending])
  {
    v11 = [(MTCompanionSyncService *)self service:v10 startSendingSession:v9 error:a5];
  }

  else
  {
    v11 = [(MTCompanionSyncService *)self service:v10 startReceivingSession:v9 error:a5];
  }

  v12 = v11;

  return v12;
}

- (BOOL)service:(id)a3 startSendingSession:(id)a4 error:(id *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_pendingRequests objectForKeyedSubscript:&unk_1F2965FD8];
  v8 = MTLogForCategory(6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543874;
    v19 = self;
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ wants to start sending session %{public}@ for request %{public}@", &v18, 0x20u);
  }

  v9 = [MTCompanionSyncSession alloc];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [(MTCompanionSyncSession *)v9 initWithSession:v6 request:v7 delegate:WeakRetained];
  [(MTCompanionSyncService *)self setSendingSession:v11];

  v12 = [(MTSyncStatusProvider *)self->_syncStatusProvider syncStatus];
  v13 = MTLogForCategory(6);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12 == 1)
  {
    if (v14)
    {
      v15 = [(MTCompanionSyncService *)self sendingSession];
      v18 = 138543618;
      v19 = self;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ starting sending session %{public}@", &v18, 0x16u);
    }
  }

  else if (v14)
  {
    v18 = 138543362;
    v19 = self;
    _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ not ok to sync yet", &v18, 0xCu);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12 == 1;
}

- (BOOL)service:(id)a3 startReceivingSession:(id)a4 error:(id *)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MTLogForCategory(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ starting receiving session %{public}@", &v13, 0x16u);
  }

  v8 = [MTCompanionSyncSession alloc];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [(MTCompanionSyncSession *)v8 initWithSession:v6 delegate:WeakRetained];
  [(MTCompanionSyncService *)self setReceivingSession:v10];

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)service:(id)a3 sessionEnded:(id)a4 error:(id)a5
{
  serialQueue = self->_serialQueue;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  dispatch_assert_queue_V2(serialQueue);
  if ([v10 isSending])
  {
    [(MTCompanionSyncService *)self service:v11 sendingSessionEnded:v10 error:v9];
  }

  else
  {
    [(MTCompanionSyncService *)self service:v11 receivingSessionEnded:v10 error:v9];
  }
}

- (void)service:(id)a3 sendingSessionEnded:(id)a4 error:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MTLogForCategory(6);
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = 138543874;
      v22 = self;
      v23 = 2114;
      v24 = v9;
      v25 = 2114;
      v26 = v10;
      _os_log_error_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_ERROR, "%{public}@ finished sending session %{public}@ with error %{public}@", &v21, 0x20u);
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Companion sync sending session failed"];
    [MTAnalytics sendCriticalEvent:v13];

    if ([objc_opt_class() shouldRetryForError:v10])
    {
      v14 = [(MTCompanionSyncService *)self retryTimer];
      [v14 start];
      goto LABEL_12;
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543618;
      v22 = self;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ finished sending session %{public}@", &v21, 0x16u);
    }
  }

  v15 = [(MTCompanionSyncService *)self sendingSession];
  v14 = [v15 request];

  v16 = MTLogForCategory(6);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543874;
    v22 = self;
    v23 = 2114;
    v24 = v14;
    v25 = 2114;
    v26 = v10;
    _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ finished request %{public}@ with error %{public}@", &v21, 0x20u);
  }

  [v14 complete:v10];
  pendingRequests = self->_pendingRequests;
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "requestType")}];
  [(NSMutableDictionary *)pendingRequests removeObjectForKey:v18];

  [(MTCompanionSyncService *)self setSendingSession:0];
  v19 = [(MTCompanionSyncService *)self retryTimer];
  [v19 reset];

LABEL_12:
  v20 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)a3 receivingSessionEnded:(id)a4 error:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = MTLogForCategory(6);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543874;
      v13 = self;
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_ERROR, "%{public}@ finished receiving session %{public}@ with error %{public}@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ finished receiving session %{public}@", &v12, 0x16u);
  }

  [(MTCompanionSyncService *)self setReceivingSession:0];
  v11 = *MEMORY[0x1E69E9840];
}

- (id)service:(id)a3 willPreferSession:(id)a4 overSession:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = MTLogForCategory(6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543874;
    v13 = self;
    v14 = 2114;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ had a conflict between %{public}@ (preferred) and %{public}@ (rejected)", &v12, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)_retryRequest
{
  v11 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(MTCompanionSyncService *)self sendingSession];
  v4 = [v3 request];

  if (v4)
  {
    v5 = MTLogForCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      v8 = self;
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ retrying %{public}@", &v7, 0x16u);
    }

    -[MTCompanionSyncService _requestSync:](self, "_requestSync:", [v4 requestType]);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)syncStatusProvider:(id)a3 didChangeSyncStatus:(unint64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 == 1)
  {
    v7 = MTLogForCategory(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v6;
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