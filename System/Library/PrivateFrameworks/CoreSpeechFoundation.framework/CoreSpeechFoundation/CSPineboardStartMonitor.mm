@interface CSPineboardStartMonitor
+ (id)sharedInstance;
- (BOOL)_checkPineBoardStarted;
- (CSPineboardStartMonitor)init;
- (void)_didReceivePineboardStarted:(BOOL)started;
- (void)_didReceivePineboardStartedInQueue:(BOOL)queue;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
@end

@implementation CSPineboardStartMonitor

- (BOOL)_checkPineBoardStarted
{
  v12 = *MEMORY[0x1E69E9840];
  out_token = -1;
  notify_register_check("com.apple.PineBoard.FinishedStartup", &out_token);
  if (out_token == -1)
  {
    v2 = 0;
  }

  else
  {
    check = 0;
    notify_check(out_token, &check);
    notify_cancel(out_token);
    v2 = check != 0;
  }

  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    check = 136315394;
    v9 = "[CSPineboardStartMonitor _checkPineBoardStarted]";
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s PineBoard started = %{public}@", &check, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)_didReceivePineboardStarted:(BOOL)started
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__CSPineboardStartMonitor__didReceivePineboardStarted___block_invoke;
  v3[3] = &unk_1E865CA18;
  v3[4] = self;
  startedCopy = started;
  [(CSEventMonitor *)self enumerateObservers:v3];
}

- (void)_didReceivePineboardStartedInQueue:(BOOL)queue
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__CSPineboardStartMonitor__didReceivePineboardStartedInQueue___block_invoke;
  v3[3] = &unk_1E865CA18;
  v3[4] = self;
  queueCopy = queue;
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
      v7 = "[CSPineboardStartMonitor _stopMonitoring]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Pineboard start", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v11 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if (self->_notifyToken == -1)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __53__CSPineboardStartMonitor__startMonitoringWithQueue___block_invoke;
    handler[3] = &unk_1E865C9F0;
    handler[4] = self;
    notify_register_dispatch("com.apple.PineBoard.FinishedStartup", &self->_notifyToken, queueCopy, handler);
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[CSPineboardStartMonitor _startMonitoringWithQueue:]";
      v6 = "%s Start monitoring : Pineboard start";
      goto LABEL_6;
    }
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[CSPineboardStartMonitor _startMonitoringWithQueue:]";
      v6 = "%s Cannot start monitoring Pineboard start because it was already started";
LABEL_6:
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    }
  }

  self->_isPineBoardStarted = [(CSPineboardStartMonitor *)self _checkPineBoardStarted];

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __53__CSPineboardStartMonitor__startMonitoringWithQueue___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 28) = [*(a1 + 32) _checkPineBoardStarted];
  v2 = *(a1 + 32);
  v3 = v2[28];

  return [v2 _didReceivePineboardStarted:v3];
}

- (CSPineboardStartMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSPineboardStartMonitor;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
    result->_isPineBoardStarted = 0;
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4151 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_4151, &__block_literal_global_4152);
  }

  v3 = sharedInstance__sharedInstance_4153;

  return v3;
}

uint64_t __41__CSPineboardStartMonitor_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_4153 = objc_alloc_init(CSPineboardStartMonitor);

  return MEMORY[0x1EEE66BB8]();
}

@end