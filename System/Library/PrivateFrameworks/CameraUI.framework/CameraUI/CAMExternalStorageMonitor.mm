@interface CAMExternalStorageMonitor
+ (id)_stringFromMonitoringState:(unint64_t)state;
- (CAMExternalStorageMonitor)init;
- (CAMExternalStorageMonitorDelegate)delegate;
- (void)_beginMonitoring;
- (void)_endMonitoring;
- (void)_logMonitoringChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)_resumeMonitoring;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setMonitoringState:(unint64_t)state;
@end

@implementation CAMExternalStorageMonitor

- (CAMExternalStorageMonitor)init
{
  v7.receiver = self;
  v7.super_class = CAMExternalStorageMonitor;
  v2 = [(CAMExternalStorageMonitor *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.camera.external-storage-auth-queue", v3);
    authorizationQueue = v2->__authorizationQueue;
    v2->__authorizationQueue = v4;
  }

  return v2;
}

- (void)setMonitoringState:(unint64_t)state
{
  monitoringState = self->_monitoringState;
  if (monitoringState != state)
  {
    self->_monitoringState = state;
    [(CAMExternalStorageMonitor *)self _logMonitoringChangeFromState:monitoringState toState:state];
    if (state == 1)
    {
      if ([(CAMExternalStorageMonitor *)self _isObservingKVO])
      {

        [(CAMExternalStorageMonitor *)self _resumeMonitoring];
      }

      else
      {

        [(CAMExternalStorageMonitor *)self _beginMonitoring];
      }
    }

    else if (!state)
    {

      [(CAMExternalStorageMonitor *)self _endMonitoring];
    }
  }
}

- (void)_endMonitoring
{
  if ([(CAMExternalStorageMonitor *)self _isObservingKVO])
  {
    _externalStorageDiscoverySession = [(CAMExternalStorageMonitor *)self _externalStorageDiscoverySession];
    [_externalStorageDiscoverySession removeObserver:self forKeyPath:@"externalStorageDevices"];

    [(CAMExternalStorageMonitor *)self set_isObservingKVO:0];
  }

  delegate = [(CAMExternalStorageMonitor *)self delegate];
  v5 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  [delegate externalStorageMonitor:self didChangeConnectedStorageDevices:v5];

  [(CAMExternalStorageMonitor *)self set_externalStorageDiscoverySession:0];
}

- (void)_beginMonitoring
{
  mEMORY[0x1E69871B0] = [MEMORY[0x1E69871B0] sharedSession];
  [(CAMExternalStorageMonitor *)self set_externalStorageDiscoverySession:mEMORY[0x1E69871B0]];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__CAMExternalStorageMonitor__beginMonitoring__block_invoke;
  aBlock[3] = &unk_1E76F77B0;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __45__CAMExternalStorageMonitor__beginMonitoring__block_invoke_4;
  v11 = &unk_1E76FAB00;
  v12 = v4;
  v5 = v4;
  v6 = _Block_copy(&v8);
  v7 = [(CAMExternalStorageMonitor *)self _authorizationQueue:v8];
  dispatch_async(v7, v6);
}

void __45__CAMExternalStorageMonitor__beginMonitoring__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) monitoringState] == 1)
  {
    if ([*(a1 + 32) _isObservingKVO])
    {
      v2 = os_log_create("com.apple.camera", "ExternalStorage");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "External storage: skipping setting up KVO since we're already observing", &v7, 2u);
      }
    }

    else
    {
      v5 = [*(a1 + 32) _externalStorageDiscoverySession];
      [v5 addObserver:*(a1 + 32) forKeyPath:@"externalStorageDevices" options:5 context:0];

      v6 = *(a1 + 32);

      [v6 set_isObservingKVO:1];
    }
  }

  else
  {
    v3 = os_log_create("com.apple.camera", "ExternalStorage");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [objc_opt_class() _stringFromMonitoringState:{objc_msgSend(*(a1 + 32), "monitoringState")}];
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "External storage: skipping setting up KVO since we're not in a monitoring state (%{public}@)", &v7, 0xCu);
    }
  }
}

void __45__CAMExternalStorageMonitor__beginMonitoring__block_invoke_4(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69871A8] authorizationStatus];
  v3 = os_log_create("com.apple.camera", "ExternalStorage");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v2;
    _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "External storage: current authorization status %ld monitoring for updates", buf, 0xCu);
  }

  if (v2 == 3)
  {
    dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 32));
  }

  else if (!v2)
  {
    v4 = os_log_create("com.apple.camera", "ExternalStorage");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "External storage: requesting access", buf, 2u);
    }

    v5 = MEMORY[0x1E69871A8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__CAMExternalStorageMonitor__beginMonitoring__block_invoke_6;
    v6[3] = &unk_1E76F97A0;
    v7 = *(a1 + 32);
    [v5 requestAccessWithCompletionHandler:v6];
  }
}

void __45__CAMExternalStorageMonitor__beginMonitoring__block_invoke_6(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.camera", "ExternalStorage");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"denied";
    if (a2)
    {
      v5 = @"granted";
    }

    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "External storage: access %{public}@", &v6, 0xCu);
  }

  if (a2)
  {
    dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 32));
  }
}

- (void)_resumeMonitoring
{
  if ([(CAMExternalStorageMonitor *)self _hasPendingChangesSinceLastDelegateCall])
  {
    [(CAMExternalStorageMonitor *)self set_hasPendingChangesSinceLastDelegateCall:0];
    delegate = [(CAMExternalStorageMonitor *)self delegate];
    connectedStorageDevices = [(CAMExternalStorageMonitor *)self connectedStorageDevices];
    [delegate externalStorageMonitor:self didChangeConnectedStorageDevices:connectedStorageDevices];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v37 = *MEMORY[0x1E69E9840];
  if ([path isEqualToString:{@"externalStorageDevices", object, change, context}])
  {
    _externalStorageDiscoverySession = [(CAMExternalStorageMonitor *)self _externalStorageDiscoverySession];
    externalStorageDevices = [_externalStorageDiscoverySession externalStorageDevices];

    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = os_log_create("com.apple.camera", "ExternalStorage");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v33 = [externalStorageDevices count];
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "External storage: list of devices updated, %ld connected devices", buf, 0xCu);
    }

    selfCopy = self;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = externalStorageDevices;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          if ([v16 isConnected])
          {
            if ([v16 isNotRecommendedForCaptureUse])
            {
              v17 = os_log_create("com.apple.camera", "ExternalStorage");
              if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_DEFAULT))
              {
                displayName = [v16 displayName];
                baseURL = [v16 baseURL];
                *buf = 138543618;
                v33 = displayName;
                v34 = 2114;
                v35 = baseURL;
                _os_log_impl(&dword_1A3640000, &v17->super, OS_LOG_TYPE_DEFAULT, "External storage: ignoring not recommended storage device (%{public}@) on mount point %{public}@", buf, 0x16u);
              }

              v13 = 1;
            }

            else
            {
              v17 = [[CAMExternalStorage alloc] initWithStorageDevice:v16];
              [v25 addObject:v17];
            }
          }

          else
          {
            v17 = os_log_create("com.apple.camera", "ExternalStorage");
            if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_DEFAULT))
            {
              displayName2 = [v16 displayName];
              baseURL2 = [v16 baseURL];
              *buf = 138543618;
              v33 = displayName2;
              v34 = 2114;
              v35 = baseURL2;
              _os_log_impl(&dword_1A3640000, &v17->super, OS_LOG_TYPE_DEFAULT, "External storage: ignoring disconnected storage device (%{public}@) on mount point %{public}@", buf, 0x16u);
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(&selfCopy->_connectedStorageDevices, v25);
    selfCopy->_hasExternalStorageNotRecommendedForCapture = v13 & 1;
    monitoringState = [(CAMExternalStorageMonitor *)selfCopy monitoringState];
    switch(monitoringState)
    {
      case 2:
        goto LABEL_24;
      case 1:
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __76__CAMExternalStorageMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke;
        block[3] = &unk_1E76F7960;
        block[4] = selfCopy;
        v27 = v25;
        dispatch_async(MEMORY[0x1E69E96A0], block);

        break;
      case 0:
LABEL_24:
        v23 = os_log_create("com.apple.camera", "ExternalStorage");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "External storage: devices where update while monitoring was paused", buf, 2u);
        }

        [(CAMExternalStorageMonitor *)selfCopy set_hasPendingChangesSinceLastDelegateCall:1];
        break;
    }
  }
}

void __76__CAMExternalStorageMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) set_hasPendingChangesSinceLastDelegateCall:0];
  v2 = [*(a1 + 32) delegate];
  [v2 externalStorageMonitor:*(a1 + 32) didChangeConnectedStorageDevices:*(a1 + 40)];
}

- (void)_logMonitoringChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = os_log_create("com.apple.camera", "ExternalStorage");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() _stringFromMonitoringState:state];
    v9 = [objc_opt_class() _stringFromMonitoringState:toState];
    _externalStorageDiscoverySession = [(CAMExternalStorageMonitor *)self _externalStorageDiscoverySession];
    externalStorageDevices = [_externalStorageDiscoverySession externalStorageDevices];
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2048;
    v17 = [externalStorageDevices count];
    _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "External storage: monitoring state changed from (%{public}@) to (%{public}@), %ld connected devices", &v12, 0x20u);
  }
}

+ (id)_stringFromMonitoringState:(unint64_t)state
{
  v3 = @"None";
  if (state == 2)
  {
    v3 = @"Paused";
  }

  if (state == 1)
  {
    return @"Monitoring";
  }

  else
  {
    return v3;
  }
}

- (CAMExternalStorageMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end