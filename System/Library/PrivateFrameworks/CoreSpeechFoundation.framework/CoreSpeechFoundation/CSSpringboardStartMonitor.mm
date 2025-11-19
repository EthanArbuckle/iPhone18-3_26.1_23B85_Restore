@interface CSSpringboardStartMonitor
+ (id)sharedInstance;
- (BOOL)_checkSpringBoardStarted;
- (CSSpringboardStartMonitor)init;
- (void)_didReceiveSpringboardStarted:(BOOL)a3;
- (void)_didReceiveSpringboardStartedInQueue:(BOOL)a3;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
@end

@implementation CSSpringboardStartMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_14585 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_14585, &__block_literal_global_14586);
  }

  v3 = sharedInstance__sharedInstance_14587;

  return v3;
}

uint64_t __43__CSSpringboardStartMonitor_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_14587 = objc_alloc_init(CSSpringboardStartMonitor);

  return MEMORY[0x1EEE66BB8]();
}

- (CSSpringboardStartMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSSpringboardStartMonitor;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
    result->_isSpringBoardStarted = 0;
  }

  return result;
}

- (BOOL)_checkSpringBoardStarted
{
  v11 = *MEMORY[0x1E69E9840];
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    out_token = -1;
    notify_register_check("com.apple.springboard.finishedstartup", &out_token);
    if (out_token == -1)
    {
      v2 = 0;
    }

    else
    {
      *state64 = 0;
      notify_get_state(out_token, state64);
      notify_cancel(out_token);
      v2 = *state64 != 0;
    }

    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v4 = @"NO";
      if (v2)
      {
        v4 = @"YES";
      }

      *state64 = 136315394;
      *&state64[4] = "[CSSpringboardStartMonitor _checkSpringBoardStarted]";
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s SpringBoard started = %{public}@", state64, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)_didReceiveSpringboardStarted:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__CSSpringboardStartMonitor__didReceiveSpringboardStarted___block_invoke;
  v3[3] = &unk_1E865CA18;
  v3[4] = self;
  v4 = a3;
  [(CSEventMonitor *)self enumerateObservers:v3];
}

- (void)_didReceiveSpringboardStartedInQueue:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__CSSpringboardStartMonitor__didReceiveSpringboardStartedInQueue___block_invoke;
  v3[3] = &unk_1E865CA18;
  v3[4] = self;
  v4 = a3;
  [(CSEventMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_stopMonitoring
{
  v8 = *MEMORY[0x1E69E9840];
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[CSSpringboardStartMonitor _stopMonitoring]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Springboard start", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_notifyToken == -1)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __55__CSSpringboardStartMonitor__startMonitoringWithQueue___block_invoke;
    handler[3] = &unk_1E865C9F0;
    handler[4] = self;
    notify_register_dispatch("com.apple.springboard.finishedstartup", &self->_notifyToken, v4, handler);
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[CSSpringboardStartMonitor _startMonitoringWithQueue:]";
      v6 = "%s Start monitoring : Springboard start";
      goto LABEL_6;
    }
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[CSSpringboardStartMonitor _startMonitoringWithQueue:]";
      v6 = "%s Cannot start monitoring Springboard start because it was already started";
LABEL_6:
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    }
  }

  self->_isSpringBoardStarted = [(CSSpringboardStartMonitor *)self _checkSpringBoardStarted];

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __55__CSSpringboardStartMonitor__startMonitoringWithQueue___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 28) = [*(a1 + 32) _checkSpringBoardStarted];
  v2 = *(a1 + 32);
  v3 = v2[28];

  return [v2 _didReceiveSpringboardStarted:v3];
}

@end