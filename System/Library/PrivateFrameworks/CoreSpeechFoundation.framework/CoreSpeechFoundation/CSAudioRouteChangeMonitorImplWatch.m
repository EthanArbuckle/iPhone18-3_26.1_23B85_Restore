@interface CSAudioRouteChangeMonitorImplWatch
- (BOOL)_isHearstConnectedButNotRouted;
- (CSAudioRouteChangeMonitorImplWatch)init;
- (int64_t)hearstRouteStatus;
- (void)_fetchAndNotifyHearstRouteStatus;
- (void)_fetchHearstRouteStatusWithCompletion:(id)a3;
- (void)_notifyHearstRouteStatus:(int64_t)a3;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_startObservingAudioRouteChange;
- (void)_startObservingSystemControllerLifecycle;
- (void)_stopMonitoring;
- (void)_systemControllerDied:(id)a3;
- (void)_updateMonitoringForHearstHijackability;
- (void)activeAudioRouteDidChange:(id)a3;
- (void)getHearstOwnershipStatus:(id)a3;
- (void)getHearstRouteStatus:(id)a3;
- (void)getJarvisConnected:(id)a3;
- (void)hearstHijackEligibilityUpdated;
- (void)pickableRoutesDidChange:(id)a3;
@end

@implementation CSAudioRouteChangeMonitorImplWatch

- (void)_startObservingSystemControllerLifecycle
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = MEMORY[0x1E69AECB0];
  [v3 removeObserver:self name:*MEMORY[0x1E69AECB0] object:0];

  [(NSMutableSet *)self->_notifications addObject:*v4];
  v5 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v6 = [(NSMutableSet *)self->_notifications allObjects];
  [v5 setAttribute:v6 forKey:*MEMORY[0x1E69AECE0] error:0];

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = *v4;
  v8 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [v9 addObserver:self selector:sel__systemControllerDied_ name:v7 object:v8];
}

- (void)_systemControllerDied:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSAudioRouteChangeMonitorImplWatch _systemControllerDied:]";
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s notification = %{public}@", &v7, 0x16u);
  }

  [(CSAudioRouteChangeMonitorImplWatch *)self _startObservingSystemControllerLifecycle];
  [(CSAudioRouteChangeMonitorImplWatch *)self _startObservingAudioRouteChange];
  [(CSAudioRouteChangeMonitorImplWatch *)self activeAudioRouteDidChange:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_notifyHearstRouteStatus:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    if (a3 > 6)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_1E865C1A8[a3];
    }

    v8 = v7;
    *buf = 136315394;
    v12 = "[CSAudioRouteChangeMonitorImplWatch _notifyHearstRouteStatus:]";
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Notifying Hearst Route State: %@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__CSAudioRouteChangeMonitorImplWatch__notifyHearstRouteStatus___block_invoke;
  v10[3] = &unk_1E865CA68;
  v10[4] = self;
  v10[5] = a3;
  [(CSEventMonitor *)self enumerateObserversInQueue:v10];
  v9 = *MEMORY[0x1E69E9840];
}

void __63__CSAudioRouteChangeMonitorImplWatch__notifyHearstRouteStatus___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) notifyObserver:v4];
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 40) - 1;
    if (v3 <= 5 && ((0x3Bu >> v3) & 1) != 0)
    {
      [v4 CSAudioRouteChangeMonitor:*(a1 + 32) didReceiveAudioRouteChangeEvent:qword_1DDB1FA08[v3]];
    }
  }
}

- (void)_fetchHearstRouteStatusWithCompletion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 5;
  if ([(CSAudioRouteChangeMonitor *)self isHearstHijackable])
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[CSAudioRouteChangeMonitorImplWatch _fetchHearstRouteStatusWithCompletion:]";
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s AirPods are hijackable", buf, 0xCu);
    }

    v17[3] = 6;
  }

  v6 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v7 = [v6 attributeForKey:*MEMORY[0x1E69AEAF8]];

  if (!v7 || ([v7 objectForKey:*MEMORY[0x1E69AEC80]], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, v9))
  {
    if (v4)
    {
      v4[2](v4, v17[3]);
    }
  }

  else
  {
    v10 = [v7 objectForKey:*MEMORY[0x1E69AECA8]];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__CSAudioRouteChangeMonitorImplWatch__fetchHearstRouteStatusWithCompletion___block_invoke;
    v12[3] = &unk_1E865ADB0;
    v13 = v7;
    v15 = &v16;
    v14 = v4;
    [(CSAudioRouteChangeMonitor *)self routeIsDoAPSupportedWithRouteUID:v10 withCompletion:v12];
  }

  _Block_object_dispose(&v16, 8);
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __76__CSAudioRouteChangeMonitorImplWatch__fetchHearstRouteStatusWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69AEBE0]];

    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v6 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69AEBF0]];

      if (!v6)
      {
        goto LABEL_7;
      }

      v5 = 2;
    }

    *(*(*(a1 + 48) + 8) + 24) = v5;
  }

LABEL_7:
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[CSAudioRouteChangeMonitorImplWatch _fetchHearstRouteStatusWithCompletion:]_block_invoke";
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Current Picked route supportDoAP: %d", &v10, 0x12u);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, *(*(*(a1 + 48) + 8) + 24));
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_stopMonitoring
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSAudioRouteChangeMonitorImplWatch _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : AudioRouteChangeMonitor", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_startObservingAudioRouteChange
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  notifications = self->_notifications;
  v5 = MEMORY[0x1E69AE9B8];
  v6 = MEMORY[0x1E69AEAE8];
  v7 = *MEMORY[0x1E69AEAE8];
  v13[0] = *MEMORY[0x1E69AE9B8];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  [(NSMutableSet *)notifications addObjectsFromArray:v8];

  v9 = [(NSMutableSet *)self->_notifications allObjects];
  [v3 setAttribute:v9 forKey:*MEMORY[0x1E69AECE0] error:0];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 addObserver:self selector:sel_activeAudioRouteDidChange_ name:*v5 object:v3];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:self selector:sel_pickableRoutesDidChange_ name:*v6 object:v3];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  [(CSAudioRouteChangeMonitorImplWatch *)self _startObservingSystemControllerLifecycle];
  [(CSAudioRouteChangeMonitorImplWatch *)self _startObservingAudioRouteChange];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSAudioRouteChangeMonitorImplWatch _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : AudioRouteChangeMonitor", buf, 0xCu);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__CSAudioRouteChangeMonitorImplWatch__startMonitoringWithQueue___block_invoke;
  v6[3] = &unk_1E865AD88;
  v6[4] = self;
  [(CSAudioRouteChangeMonitorImplWatch *)self _fetchHearstRouteStatusWithCompletion:v6];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_updateMonitoringForHearstHijackability
{
  if ([(CSAudioRouteChangeMonitorImplWatch *)self _isHearstConnectedButNotRouted])
  {

    [(CSAudioRouteChangeMonitor *)self startMonitoringHearstHijackEligibility];
  }

  else
  {

    [(CSAudioRouteChangeMonitor *)self stopMonitoringHearstHijackEligibility];
  }
}

- (void)pickableRoutesDidChange:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__CSAudioRouteChangeMonitorImplWatch_pickableRoutesDidChange___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __62__CSAudioRouteChangeMonitorImplWatch_pickableRoutesDidChange___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAudioRouteChangeMonitorImplWatch pickableRoutesDidChange:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Received external pickable route change notification", &v5, 0xCu);
  }

  [*(a1 + 32) _fetchAndNotifyHearstRouteStatus];
  result = [*(a1 + 32) _updateMonitoringForHearstHijackability];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)activeAudioRouteDidChange:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CSAudioRouteChangeMonitorImplWatch_activeAudioRouteDidChange___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __64__CSAudioRouteChangeMonitorImplWatch_activeAudioRouteDidChange___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAudioRouteChangeMonitorImplWatch activeAudioRouteDidChange:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Received active route change notification", &v5, 0xCu);
  }

  result = [*(a1 + 32) _fetchAndNotifyHearstRouteStatus];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_isHearstConnectedButNotRouted
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v3 = [v2 attributeForKey:*MEMORY[0x1E69AEAE0]];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = *v18;
    v7 = MEMORY[0x1E69AEC80];
    v8 = MEMORY[0x1E69AEC10];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 objectForKey:{*v7, v17}];
        if ([v11 BOOLValue])
        {
          goto LABEL_11;
        }

        v12 = [v10 objectForKey:*v8];
        if (([v12 BOOLValue] & 1) == 0)
        {

LABEL_11:
          continue;
        }

        v13 = [v10 objectForKey:*MEMORY[0x1E69AEBE8]];
        v14 = [v13 BOOLValue];

        if (v14)
        {
          LOBYTE(v5) = 1;
          goto LABEL_14;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

LABEL_14:

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_fetchAndNotifyHearstRouteStatus
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __70__CSAudioRouteChangeMonitorImplWatch__fetchAndNotifyHearstRouteStatus__block_invoke;
  v2[3] = &unk_1E865AD88;
  v2[4] = self;
  [(CSAudioRouteChangeMonitorImplWatch *)self _fetchHearstRouteStatusWithCompletion:v2];
}

- (void)hearstHijackEligibilityUpdated
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__CSAudioRouteChangeMonitorImplWatch_hearstHijackEligibilityUpdated__block_invoke;
  v4[3] = &unk_1E865CA40;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __68__CSAudioRouteChangeMonitorImplWatch_hearstHijackEligibilityUpdated__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _fetchAndNotifyHearstRouteStatus];
    WeakRetained = v2;
  }
}

- (void)getHearstOwnershipStatus:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__CSAudioRouteChangeMonitorImplWatch_getHearstOwnershipStatus___block_invoke;
    block[3] = &unk_1E865AD60;
    v8 = v4;
    dispatch_async(queue, block);
  }
}

- (void)getJarvisConnected:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__CSAudioRouteChangeMonitorImplWatch_getJarvisConnected___block_invoke;
    block[3] = &unk_1E865AD60;
    v8 = v4;
    dispatch_async(queue, block);
  }
}

- (int64_t)hearstRouteStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__CSAudioRouteChangeMonitorImplWatch_hearstRouteStatus__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)getHearstRouteStatus:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__CSAudioRouteChangeMonitorImplWatch_getHearstRouteStatus___block_invoke;
    v7[3] = &unk_1E865CB90;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (CSAudioRouteChangeMonitorImplWatch)init
{
  v12.receiver = self;
  v12.super_class = CSAudioRouteChangeMonitorImplWatch;
  v2 = [(CSAudioRouteChangeMonitor *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSAudioRouteChangeMonitorImplWatch queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    notifications = v2->_notifications;
    v2->_notifications = v5;

    objc_initWeak(&location, v2);
    v7 = v2->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__CSAudioRouteChangeMonitorImplWatch_init__block_invoke;
    v9[3] = &unk_1E865CA40;
    objc_copyWeak(&v10, &location);
    dispatch_async(v7, v9);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __42__CSAudioRouteChangeMonitorImplWatch_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateMonitoringForHearstHijackability];
    WeakRetained = v2;
  }
}

@end