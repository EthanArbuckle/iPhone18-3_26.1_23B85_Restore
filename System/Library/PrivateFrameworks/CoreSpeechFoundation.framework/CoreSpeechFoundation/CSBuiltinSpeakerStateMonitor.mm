@interface CSBuiltinSpeakerStateMonitor
+ (id)sharedInstance;
- (BOOL)isBuiltinSpeakerMuted;
- (CSBuiltinSpeakerStateMonitor)init;
- (unint64_t)currentBuiltinSpeakerState;
- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)restart;
- (void)_didReceiveBuiltinSpeakerStateChangeNotification:(unint64_t)notification;
- (void)_didReceiveSpeakerMuteStateChangeNotification:(BOOL)notification;
- (void)_fetchSpeakerStateActiveInfo;
- (void)_fetchSpeakerStateMutedInfo;
- (void)_notifyObserver:(id)observer withBuiltinSpeakerState:(unint64_t)state;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)setBuiltInSpeakerState:(unint64_t)state;
@end

@implementation CSBuiltinSpeakerStateMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7570 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_7570, &__block_literal_global_7571);
  }

  v3 = sharedInstance__sharedInstance_7572;

  return v3;
}

- (unint64_t)currentBuiltinSpeakerState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__CSBuiltinSpeakerStateMonitor_currentBuiltinSpeakerState__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __46__CSBuiltinSpeakerStateMonitor_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_7572 = objc_alloc_init(CSBuiltinSpeakerStateMonitor);

  return MEMORY[0x1EEE66BB8]();
}

- (CSBuiltinSpeakerStateMonitor)init
{
  v6.receiver = self;
  v6.super_class = CSBuiltinSpeakerStateMonitor;
  v2 = [(CSEventMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSBuiltInSpeakerStateMonitor queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_builtInSpeakerState = 0;
    v2->_isSpeakerMuted = [(CSBuiltinSpeakerStateMonitor *)v2 _getIsSpeakerMutedDefaultVal];
    [(CSBuiltinSpeakerStateMonitor *)v2 _fetchSpeakerStateMutedInfo];
    [(CSBuiltinSpeakerStateMonitor *)v2 _fetchSpeakerStateActiveInfo];
  }

  return v2;
}

- (void)_fetchSpeakerStateMutedInfo
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  _getIsSpeakerMutedDefaultVal = [(CSBuiltinSpeakerStateMonitor *)self _getIsSpeakerMutedDefaultVal];
  v5 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__CSBuiltinSpeakerStateMonitor__fetchSpeakerStateMutedInfo__block_invoke;
  v11[3] = &unk_1E865AFA0;
  v11[4] = self;
  v13 = _getIsSpeakerMutedDefaultVal;
  v6 = v3;
  v12 = v6;
  [v5 speakerStateMutedCompletionBlock:v11];

  v7 = dispatch_time(0, 1000000000);
  if (dispatch_group_wait(v6, v7))
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__CSBuiltinSpeakerStateMonitor__fetchSpeakerStateMutedInfo__block_invoke_15;
    block[3] = &unk_1E865B178;
    v10 = _getIsSpeakerMutedDefaultVal;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)restart
{
  v3 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
  [v3 enableSpeakerStateListening:1 completionBlock:&__block_literal_global_49];
}

void __81__CSBuiltinSpeakerStateMonitor_CSAudioServerCrashMonitorDidReceiveServerRestart___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v5 = v3;
      v6 = [v2 localizedDescription];
      v7 = 136315394;
      v8 = "[CSBuiltinSpeakerStateMonitor CSAudioServerCrashMonitorDidReceiveServerRestart:]_block_invoke";
      v9 = 2114;
      v10 = v6;
      _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Failed to enable speakerStateListening: %{public}@", &v7, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_didReceiveSpeakerMuteStateChangeNotification:(BOOL)notification
{
  self->_isSpeakerMuted = notification;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__CSBuiltinSpeakerStateMonitor__didReceiveSpeakerMuteStateChangeNotification___block_invoke;
  v3[3] = &unk_1E865CA18;
  v3[4] = self;
  notificationCopy = notification;
  [(CSEventMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_notifyObserver:(id)observer withBuiltinSpeakerState:(unint64_t)state
{
  observerCopy = observer;
  [(CSEventMonitor *)self notifyObserver:observerCopy];
  if (objc_opt_respondsToSelector())
  {
    [observerCopy CSBuiltinSpeakerStateMonitor:self didReceiveBuiltinSpeakerStateChange:state];
  }
}

- (void)_didReceiveBuiltinSpeakerStateChangeNotification:(unint64_t)notification
{
  self->_builtInSpeakerState = notification;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81__CSBuiltinSpeakerStateMonitor__didReceiveBuiltinSpeakerStateChangeNotification___block_invoke;
  v3[3] = &unk_1E865CA68;
  v3[4] = self;
  v3[5] = notification;
  [(CSEventMonitor *)self enumerateObserversInQueue:v3];
}

- (void)setBuiltInSpeakerState:(unint64_t)state
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__CSBuiltinSpeakerStateMonitor_setBuiltInSpeakerState___block_invoke;
  v4[3] = &unk_1E865CC58;
  v4[4] = self;
  v4[5] = state;
  dispatch_async(queue, v4);
}

- (void)_stopMonitoring
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
  [v2 setSpeakerStateChangedBlock:0];
  [v2 setSpeakerMuteStateChangedBlock:0];
  [v2 enableSpeakerStateListening:0 completionBlock:&__block_literal_global_44];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSBuiltinSpeakerStateMonitor _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Speaker state from AVVC", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __47__CSBuiltinSpeakerStateMonitor__stopMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v5 = v3;
      v6 = [v2 localizedDescription];
      v7 = 136315394;
      v8 = "[CSBuiltinSpeakerStateMonitor _stopMonitoring]_block_invoke";
      v9 = 2114;
      v10 = v6;
      _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Failed to disable speakerStateListening: %{public}@", &v7, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v16 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  objc_initWeak(&location, self);
  v5 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__CSBuiltinSpeakerStateMonitor__startMonitoringWithQueue___block_invoke;
  v11[3] = &unk_1E865AFF0;
  objc_copyWeak(&v12, &location);
  [v5 setSpeakerStateChangedBlock:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__CSBuiltinSpeakerStateMonitor__startMonitoringWithQueue___block_invoke_35;
  v9[3] = &unk_1E865B040;
  objc_copyWeak(&v10, &location);
  [v5 setSpeakerMuteStateChangedBlock:v9];
  [v5 enableSpeakerStateListening:1 completionBlock:&__block_literal_global_41];
  v6 = +[CSAudioServerCrashMonitor sharedInstance];
  [v6 addObserver:self];

  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSBuiltinSpeakerStateMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : Speaker state from AVVC", buf, 0xCu);
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
  v8 = *MEMORY[0x1E69E9840];
}

void __58__CSBuiltinSpeakerStateMonitor__startMonitoringWithQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CSBuiltinSpeakerStateMonitor__startMonitoringWithQueue___block_invoke_2;
  v7[3] = &unk_1E865C300;
  v8 = v3;
  v6 = v3;
  objc_copyWeak(&v9, (a1 + 32));
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
}

void __58__CSBuiltinSpeakerStateMonitor__startMonitoringWithQueue___block_invoke_35(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__CSBuiltinSpeakerStateMonitor__startMonitoringWithQueue___block_invoke_2_36;
  v6[3] = &unk_1E865B018;
  v8 = a2;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(v5, v6);

  objc_destroyWeak(&v7);
}

void __58__CSBuiltinSpeakerStateMonitor__startMonitoringWithQueue___block_invoke_38(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v5 = v3;
      v6 = [v2 localizedDescription];
      v7 = 136315394;
      v8 = "[CSBuiltinSpeakerStateMonitor _startMonitoringWithQueue:]_block_invoke";
      v9 = 2114;
      v10 = v6;
      _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Failed to enable speakerStateListening: %{public}@", &v7, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __58__CSBuiltinSpeakerStateMonitor__startMonitoringWithQueue___block_invoke_2_36(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"not muted";
    if (*(a1 + 40))
    {
      v3 = @"muted";
    }

    v6 = 136315394;
    v7 = "[CSBuiltinSpeakerStateMonitor _startMonitoringWithQueue:]_block_invoke_2";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Speaker mute state changed: %{public}@", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReceiveSpeakerMuteStateChangeNotification:*(a1 + 40)];

  v5 = *MEMORY[0x1E69E9840];
}

void __58__CSBuiltinSpeakerStateMonitor__startMonitoringWithQueue___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 136315394;
    v11 = "[CSBuiltinSpeakerStateMonitor _startMonitoringWithQueue:]_block_invoke_2";
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Speaker state changed : %{public}@", &v10, 0x16u);
  }

  v4 = *(a1 + 32);
  if (v4 && ([v4 objectForKeyedSubscript:@"active"], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [*(a1 + 32) objectForKeyedSubscript:@"active"];
    [WeakRetained _didReceiveBuiltinSpeakerStateChangeNotification:{objc_msgSend(v7, "unsignedIntegerValue")}];
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CSBuiltinSpeakerStateMonitor _startMonitoringWithQueue:]_block_invoke";
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s Failed to get speaker state from AVVC, default to inactive", &v10, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _didReceiveBuiltinSpeakerStateChangeNotification:0];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isBuiltinSpeakerMuted
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__CSBuiltinSpeakerStateMonitor_isBuiltinSpeakerMuted__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_fetchSpeakerStateActiveInfo
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__CSBuiltinSpeakerStateMonitor__fetchSpeakerStateActiveInfo__block_invoke;
  v9[3] = &unk_1E865AFC8;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 speakerStateActiveCompletionBlock:v9];

  v6 = dispatch_time(0, 1000000000);
  if (dispatch_group_wait(v5, v6))
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__CSBuiltinSpeakerStateMonitor__fetchSpeakerStateActiveInfo__block_invoke_29;
    block[3] = &unk_1E865CB68;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __60__CSBuiltinSpeakerStateMonitor__fetchSpeakerStateActiveInfo__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CSBuiltinSpeakerStateMonitor__fetchSpeakerStateActiveInfo__block_invoke_2;
  block[3] = &unk_1E865B970;
  v10 = v5;
  v11 = v6;
  v12 = a2;
  v8 = v5;
  dispatch_async(v7, block);
  dispatch_group_leave(*(a1 + 40));
}

uint64_t __60__CSBuiltinSpeakerStateMonitor__fetchSpeakerStateActiveInfo__block_invoke_29(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[CSBuiltinSpeakerStateMonitor _fetchSpeakerStateActiveInfo]_block_invoke";
    _os_log_error_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_ERROR, "%s Timed-out for fetching speaker state active info, setting speakerStateActive = NO", &v5, 0xCu);
  }

  result = [*(a1 + 32) _didReceiveBuiltinSpeakerStateChangeNotification:0];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __60__CSBuiltinSpeakerStateMonitor__fetchSpeakerStateActiveInfo__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = CSLogContextFacilityCoreSpeech;
  if (v2)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = v3;
      v10 = [v2 localizedDescription];
      v11 = 136315394;
      v12 = "[CSBuiltinSpeakerStateMonitor _fetchSpeakerStateActiveInfo]_block_invoke_2";
      v13 = 2114;
      v14 = v10;
      _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, "%s Failed to fetch builtIn speaker active state, error : %{public}@", &v11, 0x16u);
    }

    v4 = *(a1 + 40);
    v5 = 0;
  }

  else
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"in";
      if (*(a1 + 48))
      {
        v6 = &stru_1F58FE330;
      }

      v11 = 136315394;
      v12 = "[CSBuiltinSpeakerStateMonitor _fetchSpeakerStateActiveInfo]_block_invoke";
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Queried built-in speaker state as %{public}@active", &v11, 0x16u);
    }

    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
  }

  result = [v4 _didReceiveBuiltinSpeakerStateChangeNotification:v5];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __59__CSBuiltinSpeakerStateMonitor__fetchSpeakerStateMutedInfo__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CSBuiltinSpeakerStateMonitor__fetchSpeakerStateMutedInfo__block_invoke_2;
  block[3] = &unk_1E865AF78;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v13 = a2;
  v8 = v5;
  dispatch_async(v7, block);
  dispatch_group_leave(*(a1 + 40));
}

uint64_t __59__CSBuiltinSpeakerStateMonitor__fetchSpeakerStateMutedInfo__block_invoke_15(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v5 = @"NO";
    if (*(a1 + 40))
    {
      v5 = @"YES";
    }

    v6 = 136315394;
    v7 = "[CSBuiltinSpeakerStateMonitor _fetchSpeakerStateMutedInfo]_block_invoke";
    v8 = 2114;
    v9 = v5;
    _os_log_error_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_ERROR, "%s Timed-out for fetching speaker state muted info, setting isMuted = %{public}@", &v6, 0x16u);
  }

  result = [*(a1 + 32) _didReceiveSpeakerMuteStateChangeNotification:*(a1 + 40)];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __59__CSBuiltinSpeakerStateMonitor__fetchSpeakerStateMutedInfo__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = CSLogContextFacilityCoreSpeech;
  if (v2)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = v3;
      v9 = [v2 localizedDescription];
      v10 = 136315394;
      v11 = "[CSBuiltinSpeakerStateMonitor _fetchSpeakerStateMutedInfo]_block_invoke_2";
      v12 = 2114;
      v13 = v9;
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s Failed to fetch speaker state muted info, error : %{public}@", &v10, 0x16u);
    }

    v4 = 48;
  }

  else
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"not muted";
      if (*(a1 + 49))
      {
        v5 = @"muted";
      }

      v10 = 136315394;
      v11 = "[CSBuiltinSpeakerStateMonitor _fetchSpeakerStateMutedInfo]_block_invoke";
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Queried built-in speaker mute state as %{public}@", &v10, 0x16u);
    }

    v4 = 49;
  }

  result = [*(a1 + 40) _didReceiveSpeakerMuteStateChangeNotification:*(a1 + v4)];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end