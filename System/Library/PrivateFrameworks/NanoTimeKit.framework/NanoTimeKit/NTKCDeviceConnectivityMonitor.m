@interface NTKCDeviceConnectivityMonitor
- (BOOL)_lock_startMonitoringWithCallback:(id)a3;
- (BOOL)_lock_stopMonitoring;
- (BOOL)startMonitoringWithCallback:(id)a3;
- (BOOL)stopMonitoring;
- (NTKCDeviceConnectivityMonitor)init;
- (void)_lock_updateDeviceConnectedness;
- (void)_updateDeviceConnectedness;
- (void)dealloc;
@end

@implementation NTKCDeviceConnectivityMonitor

- (NTKCDeviceConnectivityMonitor)init
{
  v3.receiver = self;
  v3.super_class = NTKCDeviceConnectivityMonitor;
  result = [(NTKCDeviceConnectivityMonitor *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  [(NTKCDeviceConnectivityMonitor *)self stopMonitoring];
  v3.receiver = self;
  v3.super_class = NTKCDeviceConnectivityMonitor;
  [(NTKCDeviceConnectivityMonitor *)&v3 dealloc];
}

- (BOOL)startMonitoringWithCallback:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NTKCDeviceConnectivityMonitor *)self _lock_startMonitoringWithCallback:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (BOOL)_lock_startMonitoringWithCallback:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  callback = self->_callback;
  if (!callback)
  {
    v6 = _Block_copy(v4);
    v7 = self->_callback;
    self->_callback = v6;

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel__updateDeviceConnectedness name:*MEMORY[0x277D37C08] object:0];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:self selector:sel__updateDeviceConnectedness name:*MEMORY[0x277D37C10] object:0];

    [(NTKCDeviceConnectivityMonitor *)self _lock_updateDeviceConnectedness];
  }

  return callback == 0;
}

- (void)_updateDeviceConnectedness
{
  os_unfair_lock_lock(&self->_lock);
  [(NTKCDeviceConnectivityMonitor *)self _lock_updateDeviceConnectedness];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_updateDeviceConnectedness
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_callback)
  {
    v3 = [MEMORY[0x277D37B38] getDropoutCounter:0];
    v4 = *(self->_callback + 2);
    v5 = v3 ^ 1u;
    callback = self->_callback;

    v4(callback, v5);
  }
}

- (BOOL)stopMonitoring
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NTKCDeviceConnectivityMonitor *)self _lock_stopMonitoring];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)_lock_stopMonitoring
{
  os_unfair_lock_assert_owner(&self->_lock);
  callback = self->_callback;
  if (callback)
  {
    self->_callback = 0;
  }

  return callback != 0;
}

@end