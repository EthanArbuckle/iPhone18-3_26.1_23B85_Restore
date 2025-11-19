@interface CSNetworkAvailabilityMonitor
+ (id)sharedInstance;
- (CSNetworkAvailabilityMonitor)init;
- (void)_availabilityChanged;
- (void)_didReceivedNetworkAvailabilityChangedNotification:(BOOL)a3;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
@end

@implementation CSNetworkAvailabilityMonitor

- (void)_didReceivedNetworkAvailabilityChangedNotification:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __83__CSNetworkAvailabilityMonitor__didReceivedNetworkAvailabilityChangedNotification___block_invoke;
  v3[3] = &unk_1E865CA18;
  v3[4] = self;
  v4 = a3;
  [(CSEventMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_availabilityChanged
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSNetworkAvailabilityMonitor _availabilityChanged]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Network availability changed", &v5, 0xCu);
  }

  [(CSNetworkAvailabilityMonitor *)self _didReceivedNetworkAvailabilityChangedNotification:isDNSAvailable()];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_stopMonitoring
{
  v8 = *MEMORY[0x1E69E9840];
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[CSNetworkAvailabilityMonitor _stopMonitoring]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : network availability", &v6, 0xCu);
      notifyToken = self->_notifyToken;
    }

    notify_cancel(notifyToken);
    self->_notifyToken = -1;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_notifyToken == -1)
  {
    notify_key = nwi_state_get_notify_key();
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[CSNetworkAvailabilityMonitor _startMonitoringWithQueue:]";
      v12 = 2080;
      v13 = notify_key;
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s network state notify key : %s", buf, 0x16u);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __58__CSNetworkAvailabilityMonitor__startMonitoringWithQueue___block_invoke;
    handler[3] = &unk_1E865C9F0;
    handler[4] = self;
    notify_register_dispatch(notify_key, &self->_notifyToken, v4, handler);
  }

  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[CSNetworkAvailabilityMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : network availability", buf, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (CSNetworkAvailabilityMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSNetworkAvailabilityMonitor;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_11868 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_11868, &__block_literal_global_11869);
  }

  v3 = sharedInstance__sharedInstance_11870;

  return v3;
}

uint64_t __46__CSNetworkAvailabilityMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSNetworkAvailabilityMonitor);
  v1 = sharedInstance__sharedInstance_11870;
  sharedInstance__sharedInstance_11870 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end