@interface CSClarityboardStartMonitor
+ (id)sharedInstance;
- (BOOL)_checkClarityBoardStarted;
- (CSClarityboardStartMonitor)init;
- (void)_didReceiveClarityboardStarted:(BOOL)a3;
- (void)_didReceiveClarityboardStartedInQueue:(BOOL)a3;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
@end

@implementation CSClarityboardStartMonitor

- (BOOL)_checkClarityBoardStarted
{
  v12 = *MEMORY[0x1E69E9840];
  out_token = -1;
  notify_register_check("com.apple.ClarityBoard.FinishedStartup", &out_token);
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
    v9 = "[CSClarityboardStartMonitor _checkClarityBoardStarted]";
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ClarityBoard started = %{public}@", &check, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)_didReceiveClarityboardStarted:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__CSClarityboardStartMonitor__didReceiveClarityboardStarted___block_invoke;
  v3[3] = &unk_1E865CA18;
  v3[4] = self;
  v4 = a3;
  [(CSEventMonitor *)self enumerateObservers:v3];
}

- (void)_didReceiveClarityboardStartedInQueue:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__CSClarityboardStartMonitor__didReceiveClarityboardStartedInQueue___block_invoke;
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
      v7 = "[CSClarityboardStartMonitor _stopMonitoring]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Clarityboard start", &v6, 0xCu);
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
    handler[2] = __56__CSClarityboardStartMonitor__startMonitoringWithQueue___block_invoke;
    handler[3] = &unk_1E865C9F0;
    handler[4] = self;
    notify_register_dispatch("com.apple.ClarityBoard.FinishedStartup", &self->_notifyToken, v4, handler);
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[CSClarityboardStartMonitor _startMonitoringWithQueue:]";
      v6 = "%s Start monitoring : ClarityBoard start";
      goto LABEL_6;
    }
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[CSClarityboardStartMonitor _startMonitoringWithQueue:]";
      v6 = "%s Cannot start monitoring ClarityBoard start because it was already started";
LABEL_6:
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    }
  }

  self->_isClarityBoardStarted = [(CSClarityboardStartMonitor *)self _checkClarityBoardStarted];

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __56__CSClarityboardStartMonitor__startMonitoringWithQueue___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 28) = [*(a1 + 32) _checkClarityBoardStarted];
  v2 = *(a1 + 32);
  v3 = v2[28];

  return [v2 _didReceiveClarityboardStarted:v3];
}

- (CSClarityboardStartMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSClarityboardStartMonitor;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
    result->_isClarityBoardStarted = 0;
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_974 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_974, &__block_literal_global_975);
  }

  v3 = sharedInstance__sharedInstance_976;

  return v3;
}

uint64_t __44__CSClarityboardStartMonitor_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_976 = objc_alloc_init(CSClarityboardStartMonitor);

  return MEMORY[0x1EEE66BB8]();
}

@end