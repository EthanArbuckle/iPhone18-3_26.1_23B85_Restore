@interface CRKWiProxTrackerScanner
- (CRKWiProxTrackerScanner)initWithDelegate:(id)a3;
- (CRKWiProxTrackerScannerDelegate)delegate;
- (int64_t)deviceScannerState;
- (int64_t)zoneTrackerState;
- (void)dealloc;
- (void)deviceScannerDidUpdateState:(id)a3;
- (void)invalidate;
- (void)registerForDevicesMatching:(id)a3 options:(id)a4;
- (void)registerForZoneChangesMatching:(id)a3;
- (void)scanner:(id)a3 didFailToRegisterDevices:(id)a4 withError:(id)a5;
- (void)scanner:(id)a3 foundDevice:(id)a4 withData:(id)a5;
- (void)scanner:(id)a3 foundRequestedDevices:(id)a4;
- (void)unregisterAllDeviceChanges;
- (void)unregisterAllZoneChanges;
- (void)unregisterForZoneChanges:(id)a3;
- (void)zoneTracker:(id)a3 didFailToRegisterZones:(id)a4 withError:(id)a5;
- (void)zoneTracker:(id)a3 enteredZone:(id)a4;
- (void)zoneTracker:(id)a3 exitedZone:(id)a4;
- (void)zoneTrackerDidUpdateState:(id)a3;
@end

@implementation CRKWiProxTrackerScanner

- (void)dealloc
{
  [(CRKWiProxTrackerScanner *)self invalidate];
  v3.receiver = self;
  v3.super_class = CRKWiProxTrackerScanner;
  [(CRKWiProxTrackerScanner *)&v3 dealloc];
}

- (CRKWiProxTrackerScanner)initWithDelegate:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CRKWiProxTrackerScanner;
  v5 = [(CRKWiProxTrackerScanner *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D7BC80]);
    v7 = MEMORY[0x277D85CD0];
    v8 = [v6 initWithDelegate:v5 queue:MEMORY[0x277D85CD0]];
    zoneTracker = v5->_zoneTracker;
    v5->_zoneTracker = v8;

    v10 = [objc_alloc(MEMORY[0x277D7BC68]) initWithDelegate:v5 queue:v7];
    deviceScanner = v5->_deviceScanner;
    v5->_deviceScanner = v10;

    objc_storeWeak(&v5->_delegate, v4);
  }

  return v5;
}

- (void)invalidate
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_6(&dword_243550000, v2, v3, "entered %{public}@", v4, v5, v6, v7, v8);
}

- (int64_t)zoneTrackerState
{
  v2 = [(CRKWiProxTrackerScanner *)self zoneTracker];
  v3 = [v2 state];

  return v3;
}

- (int64_t)deviceScannerState
{
  v2 = [(CRKWiProxTrackerScanner *)self deviceScanner];
  v3 = [v2 state];

  return v3;
}

- (void)unregisterAllZoneChanges
{
  v4 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  v5 = [(CRKWiProxTrackerScanner *)self zoneTracker];
  [v5 unregisterAllZoneChanges];
}

- (void)unregisterForZoneChanges:(id)a3
{
  v5 = a3;
  v6 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  v7 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CRKWiProxTrackerScanner unregisterForZoneChanges:];
  }

  v8 = [(CRKWiProxTrackerScanner *)self zoneTracker];
  [v8 unregisterForZoneChanges:v5];
}

- (void)registerForZoneChangesMatching:(id)a3
{
  v5 = a3;
  v6 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  v7 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CRKWiProxTrackerScanner unregisterForZoneChanges:];
  }

  v8 = [(CRKWiProxTrackerScanner *)self zoneTracker];
  [v8 registerForZoneChangesMatching:v5];
}

- (void)unregisterAllDeviceChanges
{
  v4 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  v5 = [(CRKWiProxTrackerScanner *)self deviceScanner];
  [v5 unregisterAllDeviceChanges];
}

- (void)registerForDevicesMatching:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  v10 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CRKWiProxTrackerScanner registerForDevicesMatching:options:];
  }

  v11 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CRKWiProxTrackerScanner registerForDevicesMatching:options:];
  }

  v12 = [(CRKWiProxTrackerScanner *)self deviceScanner];
  [v12 registerForDevicesMatching:v7 options:v8];
}

- (void)zoneTrackerDidUpdateState:(id)a3
{
  v5 = a3;
  v6 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  v7 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CRKWiProxTrackerScanner zoneTrackerDidUpdateState:v5];
  }

  v8 = [(CRKWiProxTrackerScanner *)self delegate];
  [v8 trackerScanner:self didUpdateZoneTrackerState:v5];
}

- (void)zoneTracker:(id)a3 enteredZone:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  v10 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CRKWiProxTrackerScanner zoneTracker:enteredZone:];
  }

  v11 = [(CRKWiProxTrackerScanner *)self delegate];
  [v11 trackerScanner:self zoneTracker:v8 enteredZone:v7];
}

- (void)zoneTracker:(id)a3 exitedZone:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  v10 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CRKWiProxTrackerScanner zoneTracker:enteredZone:];
  }

  v11 = [(CRKWiProxTrackerScanner *)self delegate];
  [v11 trackerScanner:self zoneTracker:v8 exitedZone:v7];
}

- (void)zoneTracker:(id)a3 didFailToRegisterZones:(id)a4 withError:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  v13 = [(CRKWiProxTrackerScanner *)self delegate];
  [v13 trackerScanner:self zoneTracker:v11 didFailToRegisterZones:v10 withError:v9];
}

- (void)deviceScannerDidUpdateState:(id)a3
{
  v5 = a3;
  v6 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  v7 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CRKWiProxTrackerScanner zoneTrackerDidUpdateState:v5];
  }

  v8 = [(CRKWiProxTrackerScanner *)self delegate];
  [v8 trackerScanner:self didUpdateDeviceScannerState:v5];
}

- (void)scanner:(id)a3 foundRequestedDevices:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  v10 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CRKWiProxTrackerScanner registerForDevicesMatching:options:];
  }

  v11 = [(CRKWiProxTrackerScanner *)self delegate];
  [v11 trackerScanner:self scanner:v8 foundRequestedDevices:v7];
}

- (void)scanner:(id)a3 foundDevice:(id)a4 withData:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  v13 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [CRKWiProxTrackerScanner scanner:foundDevice:withData:];
  }

  v14 = [(CRKWiProxTrackerScanner *)self delegate];
  [v14 trackerScanner:self scanner:v11 foundDevice:v9 withData:v10];
}

- (void)scanner:(id)a3 didFailToRegisterDevices:(id)a4 withError:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  v13 = [(CRKWiProxTrackerScanner *)self delegate];
  [v13 trackerScanner:self scanner:v11 didFailToRegisterDevices:v10 withError:v9];
}

- (CRKWiProxTrackerScannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)zoneTrackerDidUpdateState:(void *)a1 .cold.2(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "state")}];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_6(&dword_243550000, v2, v3, "state: %{public}@", v4, v5, v6, v7, v8);
}

@end