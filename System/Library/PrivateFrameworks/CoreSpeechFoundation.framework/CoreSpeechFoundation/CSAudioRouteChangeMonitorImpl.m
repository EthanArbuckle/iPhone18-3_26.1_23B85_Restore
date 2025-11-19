@interface CSAudioRouteChangeMonitorImpl
- (BOOL)_fetchHearstConnectionState;
- (BOOL)_fetchJarvisConnectionState;
- (BOOL)_isHearstConnectedButNotRouted;
- (BOOL)carPlayConnected;
- (BOOL)jarvisConnected;
- (CSAudioRouteChangeMonitorImpl)init;
- (int64_t)hearstRouteStatus;
- (void)_fetchAndNotifyHearstRouteStatus;
- (void)_fetchHearstRouteStatusWithCompletion:(id)a3;
- (void)_notifyHearstRouteStatus:(int64_t)a3;
- (void)_notifyJarvisConnectionState:(BOOL)a3;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_startObservingAudioRouteChange;
- (void)_startObservingSystemControllerLifecycle;
- (void)_stopMonitoring;
- (void)_systemControllerDied:(id)a3;
- (void)_updateMonitoringForHearstHijackability;
- (void)carPlayAuxStreamSupportDidChange:(id)a3;
- (void)carPlayIsConnectedDidChange:(id)a3;
- (void)getHearstOwnershipStatus:(id)a3;
- (void)getHearstRouteStatus:(id)a3;
- (void)getJarvisConnected:(id)a3;
- (void)hearstHijackEligibilityUpdated;
- (void)pickableRoutesDidChange:(id)a3;
- (void)preferredExternalRouteDidChange:(id)a3;
@end

@implementation CSAudioRouteChangeMonitorImpl

- (int64_t)hearstRouteStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__CSAudioRouteChangeMonitorImpl_hearstRouteStatus__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)jarvisConnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CSAudioRouteChangeMonitorImpl_jarvisConnected__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_fetchAndNotifyHearstRouteStatus
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __65__CSAudioRouteChangeMonitorImpl__fetchAndNotifyHearstRouteStatus__block_invoke;
  v2[3] = &unk_1E865AD88;
  v2[4] = self;
  [(CSAudioRouteChangeMonitorImpl *)self _fetchHearstRouteStatusWithCompletion:v2];
}

- (BOOL)_fetchHearstConnectionState
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v3 = [v2 attributeForKey:*MEMORY[0x1E69AEAE0]];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  v7 = *v26;
  v8 = MEMORY[0x1E69AEC30];
  v9 = MEMORY[0x1E69AEC68];
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v26 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v25 + 1) + 8 * i);
      v12 = [v11 objectForKey:*v8];
      if (![v12 BOOLValue])
      {
        goto LABEL_12;
      }

      v13 = [v11 objectForKey:*v9];
      if (([v13 BOOLValue] & 1) == 0)
      {

LABEL_12:
        continue;
      }

      [v11 objectForKey:*MEMORY[0x1E69AEC70]];
      v14 = v7;
      v15 = v8;
      v16 = v4;
      v18 = v17 = v9;
      v24 = [v18 BOOLValue];

      v9 = v17;
      v4 = v16;
      v8 = v15;
      v7 = v14;

      if (v24)
      {
        v19 = [v11 objectForKey:*MEMORY[0x1E69AEC10]];
        v20 = [v19 BOOLValue];

        if (v20)
        {
          v21 = 1;
          goto LABEL_16;
        }
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v6);
LABEL_15:
  v21 = 0;
LABEL_16:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t __65__CSAudioRouteChangeMonitorImpl__fetchAndNotifyHearstRouteStatus__block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (*(v2 + 64) != a2)
  {
    *(v2 + 64) = a2;
    return [*(result + 32) _notifyHearstRouteStatus:a2];
  }

  return result;
}

- (BOOL)carPlayConnected
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v4 = [v3 attributeForKey:*MEMORY[0x1E69AEA60]];
  v5 = [v4 BOOLValue];

  v6 = [MEMORY[0x1E695DF00] date];
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    [v6 timeIntervalSinceDate:v2];
    v10 = @"NO";
    v14 = "[CSAudioRouteChangeMonitorImpl carPlayConnected]";
    v13 = 136315650;
    if (v5)
    {
      v10 = @"YES";
    }

    v15 = 2050;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s fetch CarPlay connection attribute elapsed time = %{public}lf, isCarPlayConnected = %{public}@", &v13, 0x20u);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_startObservingSystemControllerLifecycle
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = MEMORY[0x1E69AECB0];
  [v3 removeObserver:self name:*MEMORY[0x1E69AECB0] object:0];

  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:*v4];
  v5 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [v5 setAttribute:v9 forKey:*MEMORY[0x1E69AECE0] error:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = *v4;
  v8 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [v6 addObserver:self selector:sel__systemControllerDied_ name:v7 object:v8];
}

- (void)_systemControllerDied:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSAudioRouteChangeMonitorImpl _systemControllerDied:]";
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s notification = %{public}@", &v7, 0x16u);
  }

  [(CSAudioRouteChangeMonitorImpl *)self _startObservingSystemControllerLifecycle];
  [(CSAudioRouteChangeMonitorImpl *)self _startObservingAudioRouteChange];
  [(CSAudioRouteChangeMonitorImpl *)self preferredExternalRouteDidChange:0];
  [(CSAudioRouteChangeMonitorImpl *)self pickableRoutesDidChange:0];
  [(CSAudioRouteChangeMonitorImpl *)self carPlayAuxStreamSupportDidChange:0];
  [(CSAudioRouteChangeMonitorImpl *)self carPlayIsConnectedDidChange:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_notifyJarvisConnectionState:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[CSAudioRouteChangeMonitorImpl _notifyJarvisConnectionState:]";
    v11 = 1026;
    v12 = v3;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Notifying Jarvis Connection State : %{public}d", buf, 0x12u);
  }

  self->_isJarvisConnected = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CSAudioRouteChangeMonitorImpl__notifyJarvisConnectionState___block_invoke;
  v7[3] = &unk_1E865CA18;
  v7[4] = self;
  v8 = v3;
  [(CSEventMonitor *)self enumerateObserversInQueue:v7];
  v6 = *MEMORY[0x1E69E9840];
}

void __62__CSAudioRouteChangeMonitorImpl__notifyJarvisConnectionState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) notifyObserver:v3];
  if (objc_opt_respondsToSelector())
  {
    [v3 CSAudioRouteChangeMonitor:*(a1 + 32) didReceiveAudioRouteChangeEvent:*(a1 + 40) ^ 1];
  }
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
    v12 = "[CSAudioRouteChangeMonitorImpl _notifyHearstRouteStatus:]";
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Notifying Hearst Route State: %@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CSAudioRouteChangeMonitorImpl__notifyHearstRouteStatus___block_invoke;
  v10[3] = &unk_1E865CA68;
  v10[4] = self;
  v10[5] = a3;
  [(CSEventMonitor *)self enumerateObserversInQueue:v10];
  v9 = *MEMORY[0x1E69E9840];
}

void __58__CSAudioRouteChangeMonitorImpl__notifyHearstRouteStatus___block_invoke(uint64_t a1, void *a2)
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

- (BOOL)_fetchJarvisConnectionState
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v3 = [v2 attributeForKey:*MEMORY[0x1E69AEA60]];
  v4 = [v3 BOOLValue];

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v13 = 136315394;
    v14 = "[CSAudioRouteChangeMonitorImpl _fetchJarvisConnectionState]";
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s General CarPlay is connected ? %{public}@", &v13, 0x16u);
  }

  if (v4)
  {
    v7 = [MEMORY[0x1E69AED08] sharedAVSystemController];
    v8 = [v7 attributeForKey:*MEMORY[0x1E69AEA48]];
    v4 = [v8 BOOLValue];

    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (v4)
      {
        v10 = @"YES";
      }

      v13 = 136315394;
      v14 = "[CSAudioRouteChangeMonitorImpl _fetchJarvisConnectionState]";
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s aux stream supported ? %{public}@", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)_fetchHearstRouteStatusWithCompletion:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CSAudioRouteChangeMonitorImpl *)self _fetchHearstConnectionState];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if ([(CSAudioRouteChangeMonitorImpl *)self _isHearstConnectedButNotRouted]&& [(CSAudioRouteChangeMonitor *)self isHearstHijackable])
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[CSAudioRouteChangeMonitorImpl _fetchHearstRouteStatusWithCompletion:]";
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s AirPods are hijackable", buf, 0xCu);
    }

    v7 = v23;
    v8 = 6;
  }

  else
  {
    v7 = v23;
    if (v5)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }
  }

  v7[3] = v8;
  v9 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v10 = [v9 attributeForKey:*MEMORY[0x1E69AEAF8]];

  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "[CSAudioRouteChangeMonitorImpl _fetchHearstRouteStatusWithCompletion:]";
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s pickedRoute: %@", buf, 0x16u);
  }

  if (!v10 || ([v10 objectForKey:*MEMORY[0x1E69AEC80]], v12 = objc_claimAutoreleasedReturnValue(), v13 = v12 == 0, v12, v13))
  {
    if (v4)
    {
      if ([(CSAudioRouteChangeMonitor *)self isHearstHijackable])
      {
        v15 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v27 = "[CSAudioRouteChangeMonitorImpl _fetchHearstRouteStatusWithCompletion:]";
          _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s AirPods are not currently picked, but are hijackable", buf, 0xCu);
        }

        v16 = 6;
      }

      else
      {
        v16 = v23[3];
      }

      v4[2](v4, v16);
    }
  }

  else
  {
    v14 = [v10 objectForKey:*MEMORY[0x1E69AECA8]];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__CSAudioRouteChangeMonitorImpl__fetchHearstRouteStatusWithCompletion___block_invoke;
    v18[3] = &unk_1E865ADB0;
    v19 = v10;
    v21 = &v22;
    v20 = v4;
    [(CSAudioRouteChangeMonitor *)self routeIsDoAPSupportedWithRouteUID:v14 withCompletion:v18];
  }

  _Block_object_dispose(&v22, 8);
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __71__CSAudioRouteChangeMonitorImpl__fetchHearstRouteStatusWithCompletion___block_invoke(uint64_t a1, int a2)
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
    v11 = "[CSAudioRouteChangeMonitorImpl _fetchHearstRouteStatusWithCompletion:]_block_invoke";
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

- (void)_stopMonitoring
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  stateCapture = self->_stateCapture;
  if (stateCapture)
  {
    [(CSStateCapture *)stateCapture setStateCaptureBlock:0];
    v5 = self->_stateCapture;
    self->_stateCapture = 0;
  }

  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CSAudioRouteChangeMonitorImpl _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : AudioRouteChangeMonitor", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_startObservingAudioRouteChange
{
  v13 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v3 = MEMORY[0x1E69AEAE8];
  v4 = MEMORY[0x1E69AEB28];
  v5 = *MEMORY[0x1E69AEB28];
  v6 = MEMORY[0x1E69AEA58];
  v7 = MEMORY[0x1E69AEA68];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69AEAE8], *MEMORY[0x1E69AEB28], *MEMORY[0x1E69AEA58], *MEMORY[0x1E69AEA68], 0}];
  [v13 setAttribute:v8 forKey:*MEMORY[0x1E69AECE0] error:0];
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 addObserver:self selector:sel_pickableRoutesDidChange_ name:*v3 object:v13];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 addObserver:self selector:sel_preferredExternalRouteDidChange_ name:*v4 object:v13];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:self selector:sel_carPlayAuxStreamSupportDidChange_ name:*v6 object:v13];

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 addObserver:self selector:sel_carPlayIsConnectedDidChange_ name:*v7 object:v13];
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CSAudioRouteChangeMonitorImpl *)self _startObservingSystemControllerLifecycle];
  [(CSAudioRouteChangeMonitorImpl *)self _startObservingAudioRouteChange];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSAudioRouteChangeMonitorImpl _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : AudioRouteChangeMonitor", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CSAudioRouteChangeMonitorImpl__startMonitoringWithQueue___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
  if (!self->_stateCapture)
  {
    v7 = objc_alloc_init(CSStateCapture);
    stateCapture = self->_stateCapture;
    self->_stateCapture = v7;

    [(CSStateCapture *)self->_stateCapture start];
    objc_initWeak(buf, self);
    v9 = self->_stateCapture;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__CSAudioRouteChangeMonitorImpl__startMonitoringWithQueue___block_invoke_3;
    v11[3] = &unk_1E865B0B0;
    objc_copyWeak(&v12, buf);
    [(CSStateCapture *)v9 setStateCaptureBlock:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __59__CSAudioRouteChangeMonitorImpl__startMonitoringWithQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__CSAudioRouteChangeMonitorImpl__startMonitoringWithQueue___block_invoke_2;
  v4[3] = &unk_1E865AD88;
  v4[4] = v2;
  [v2 _fetchHearstRouteStatusWithCompletion:v4];
  result = [*(a1 + 32) _fetchJarvisConnectionState];
  *(*(a1 + 32) + 56) = result;
  return result;
}

CSStateCaptureOptions *__59__CSAudioRouteChangeMonitorImpl__startMonitoringWithQueue___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained carPlayConnected];
  v3 = [WeakRetained jarvisConnected];
  v4 = [WeakRetained hearstRouteStatus];
  v5 = [CSStateCaptureOptions alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__CSAudioRouteChangeMonitorImpl__startMonitoringWithQueue___block_invoke_4;
  v8[3] = &__block_descriptor_42_e42_v16__0___CSStateCaptureOptionsMutablity__8l;
  v9 = v2;
  v10 = v3;
  v8[4] = v4;
  v6 = [(CSStateCaptureOptions *)v5 initWithMutableBuilder:v8];

  return v6;
}

void __59__CSAudioRouteChangeMonitorImpl__startMonitoringWithQueue___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v8 = [v3 dictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  [v8 setValue:v5 forKey:@"CarPlayConnected"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 41)];
  [v8 setValue:v6 forKey:@"JarvisConnected"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  [v8 setValue:v7 forKey:@"HearstRouteStatus"];

  [v4 setStateData:v8];
  [v4 setStateDataTitle:@"CoreSpeech-AccessoryDeviceConnectionStateCapture"];
}

- (void)carPlayIsConnectedDidChange:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[CSAudioRouteChangeMonitorImpl carPlayIsConnectedDidChange:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Received CarPlay connection change notification", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__CSAudioRouteChangeMonitorImpl_carPlayIsConnectedDidChange___block_invoke;
  v8[3] = &unk_1E865CB20;
  v8[4] = self;
  [(CSEventMonitor *)self enumerateObserversInQueue:v8];
  if ([(CSAudioRouteChangeMonitorImpl *)self carPlayConnected]|| [(CSAudioRouteChangeMonitorImpl *)self jarvisConnected])
  {
    v6 = +[CSCarKitUtils sharedInstance];
    [v6 handleHeadUnitConnectedWithAsyncCompletion:0];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)carPlayAuxStreamSupportDidChange:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CSAudioRouteChangeMonitorImpl_carPlayAuxStreamSupportDidChange___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

unsigned __int8 *__66__CSAudioRouteChangeMonitorImpl_carPlayAuxStreamSupportDidChange___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSAudioRouteChangeMonitorImpl carPlayAuxStreamSupportDidChange:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Received CarPlay AuxStream support change notification", &v6, 0xCu);
  }

  v3 = [*(a1 + 32) _fetchJarvisConnectionState];
  result = *(a1 + 32);
  if (result[56] != v3)
  {
    result = [result _notifyJarvisConnectionState:?];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_updateMonitoringForHearstHijackability
{
  if ([(CSAudioRouteChangeMonitorImpl *)self _isHearstConnectedButNotRouted])
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
  block[2] = __57__CSAudioRouteChangeMonitorImpl_pickableRoutesDidChange___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __57__CSAudioRouteChangeMonitorImpl_pickableRoutesDidChange___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAudioRouteChangeMonitorImpl pickableRoutesDidChange:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Received external pickable route change notification", &v5, 0xCu);
  }

  [*(a1 + 32) _fetchAndNotifyHearstRouteStatus];
  result = [*(a1 + 32) _updateMonitoringForHearstHijackability];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)preferredExternalRouteDidChange:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CSAudioRouteChangeMonitorImpl_preferredExternalRouteDidChange___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __65__CSAudioRouteChangeMonitorImpl_preferredExternalRouteDidChange___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAudioRouteChangeMonitorImpl preferredExternalRouteDidChange:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Received external route change notification", &v5, 0xCu);
  }

  result = [*(a1 + 32) _fetchAndNotifyHearstRouteStatus];
  v4 = *MEMORY[0x1E69E9840];
  return result;
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
    block[2] = __58__CSAudioRouteChangeMonitorImpl_getHearstOwnershipStatus___block_invoke;
    block[3] = &unk_1E865AD60;
    v8 = v4;
    dispatch_async(queue, block);
  }
}

- (void)hearstHijackEligibilityUpdated
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__CSAudioRouteChangeMonitorImpl_hearstHijackEligibilityUpdated__block_invoke;
  v4[3] = &unk_1E865CA40;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __63__CSAudioRouteChangeMonitorImpl_hearstHijackEligibilityUpdated__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _fetchAndNotifyHearstRouteStatus];
    WeakRetained = v2;
  }
}

- (void)getJarvisConnected:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__CSAudioRouteChangeMonitorImpl_getJarvisConnected___block_invoke;
    v7[3] = &unk_1E865CB90;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
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
    v7[2] = __54__CSAudioRouteChangeMonitorImpl_getHearstRouteStatus___block_invoke;
    v7[3] = &unk_1E865CB90;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (CSAudioRouteChangeMonitorImpl)init
{
  if (+[CSUtils isDarwinOS])
  {
    v3 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CSAudioRouteChangeMonitorImpl;
    v4 = [(CSAudioRouteChangeMonitor *)&v12 init];
    if (v4)
    {
      v5 = dispatch_queue_create("CSAudioRouteChangeMonitorImpl queue", 0);
      queue = v4->_queue;
      v4->_queue = v5;

      objc_initWeak(&location, v4);
      v7 = v4->_queue;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __37__CSAudioRouteChangeMonitorImpl_init__block_invoke;
      v9[3] = &unk_1E865CA40;
      objc_copyWeak(&v10, &location);
      dispatch_async(v7, v9);
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    self = v4;
    v3 = self;
  }

  return v3;
}

void __37__CSAudioRouteChangeMonitorImpl_init__block_invoke(uint64_t a1)
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