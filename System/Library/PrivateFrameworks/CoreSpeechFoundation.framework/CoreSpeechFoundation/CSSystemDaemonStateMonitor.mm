@interface CSSystemDaemonStateMonitor
+ (id)sharedInstance;
+ (void)systemDaemonNotifyDidLaunch;
- (CSSystemDaemonStateMonitor)init;
- (unint64_t)currentSystemDaemonState;
- (void)CSLaunchAgentXPCClientConnectionDisconnected:(id)a3;
- (void)_handleSystemDaemonDidLaunchNotification;
- (void)_notifyObserversSystemDaemonCrashed;
- (void)_notifyObserversSystemDaemonRestartedFromCrash;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
@end

@implementation CSSystemDaemonStateMonitor

- (void)_notifyObserversSystemDaemonRestartedFromCrash
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __76__CSSystemDaemonStateMonitor__notifyObserversSystemDaemonRestartedFromCrash__block_invoke;
  v2[3] = &unk_1E865CB20;
  v2[4] = self;
  [(CSEventMonitor *)self enumerateObserversInQueue:v2];
}

void __76__CSSystemDaemonStateMonitor__notifyObserversSystemDaemonRestartedFromCrash__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) notifyObserver:v3];
  if (objc_opt_respondsToSelector())
  {
    [v3 CSSystemDaemonStateMonitorDidReceiveSysDaemonRestartFromCrash:*(a1 + 32)];
  }
}

- (void)_notifyObserversSystemDaemonCrashed
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __65__CSSystemDaemonStateMonitor__notifyObserversSystemDaemonCrashed__block_invoke;
  v2[3] = &unk_1E865CB20;
  v2[4] = self;
  [(CSEventMonitor *)self enumerateObserversInQueue:v2];
}

void __65__CSSystemDaemonStateMonitor__notifyObserversSystemDaemonCrashed__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) notifyObserver:v3];
  if (objc_opt_respondsToSelector())
  {
    [v3 CSSystemDaemonStateMonitorDidReceiveSysDaemonCrash:*(a1 + 32)];
  }
}

- (void)_handleSystemDaemonDidLaunchNotification
{
  if (self->_daemonState == 1)
  {
    [(CSSystemDaemonStateMonitor *)self _notifyObserversSystemDaemonRestartedFromCrash];
  }

  self->_daemonState = 2;
}

- (unint64_t)currentSystemDaemonState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__CSSystemDaemonStateMonitor_currentSystemDaemonState__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)CSLaunchAgentXPCClientConnectionDisconnected:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__CSSystemDaemonStateMonitor_CSLaunchAgentXPCClientConnectionDisconnected___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_stopMonitoring
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSSystemDaemonStateMonitor _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s stop monitoring : corespeechd_system crash / recover event", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CSSystemDaemonStateMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : corespeechd_system crash / recover event", buf, 0xCu);
  }

  queue = self->_queue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __56__CSSystemDaemonStateMonitor__startMonitoringWithQueue___block_invoke;
  handler[3] = &unk_1E865C9F0;
  handler[4] = self;
  notify_register_dispatch("com.apple.corespeech.corespeechd_system.launch", &self->_notifyToken, queue, handler);
  v6 = *MEMORY[0x1E69E9840];
}

- (CSSystemDaemonStateMonitor)init
{
  v6.receiver = self;
  v6.super_class = CSSystemDaemonStateMonitor;
  v2 = [(CSEventMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSSystemDaemonStateMonitor queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_daemonState = 0;
    v2->_notifyToken = -1;
  }

  return v2;
}

+ (void)systemDaemonNotifyDidLaunch
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[CSSystemDaemonStateMonitor systemDaemonNotifyDidLaunch]";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Notifying SystemDaemon launched", &v4, 0xCu);
  }

  notify_post("com.apple.corespeech.corespeechd_system.launch");
  v3 = *MEMORY[0x1E69E9840];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6570 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6570, &__block_literal_global_6571);
  }

  v3 = sharedInstance_sharedInstance_6572;

  return v3;
}

uint64_t __44__CSSystemDaemonStateMonitor_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_6572 = objc_alloc_init(CSSystemDaemonStateMonitor);

  return MEMORY[0x1EEE66BB8]();
}

@end