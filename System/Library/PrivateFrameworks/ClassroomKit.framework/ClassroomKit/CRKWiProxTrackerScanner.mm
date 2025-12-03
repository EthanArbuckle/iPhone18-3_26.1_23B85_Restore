@interface CRKWiProxTrackerScanner
- (CRKWiProxTrackerScanner)initWithDelegate:(id)delegate;
- (CRKWiProxTrackerScannerDelegate)delegate;
- (int64_t)deviceScannerState;
- (int64_t)zoneTrackerState;
- (void)dealloc;
- (void)deviceScannerDidUpdateState:(id)state;
- (void)invalidate;
- (void)registerForDevicesMatching:(id)matching options:(id)options;
- (void)registerForZoneChangesMatching:(id)matching;
- (void)scanner:(id)scanner didFailToRegisterDevices:(id)devices withError:(id)error;
- (void)scanner:(id)scanner foundDevice:(id)device withData:(id)data;
- (void)scanner:(id)scanner foundRequestedDevices:(id)devices;
- (void)unregisterAllDeviceChanges;
- (void)unregisterAllZoneChanges;
- (void)unregisterForZoneChanges:(id)changes;
- (void)zoneTracker:(id)tracker didFailToRegisterZones:(id)zones withError:(id)error;
- (void)zoneTracker:(id)tracker enteredZone:(id)zone;
- (void)zoneTracker:(id)tracker exitedZone:(id)zone;
- (void)zoneTrackerDidUpdateState:(id)state;
@end

@implementation CRKWiProxTrackerScanner

- (void)dealloc
{
  [(CRKWiProxTrackerScanner *)self invalidate];
  v3.receiver = self;
  v3.super_class = CRKWiProxTrackerScanner;
  [(CRKWiProxTrackerScanner *)&v3 dealloc];
}

- (CRKWiProxTrackerScanner)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
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

    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v5;
}

- (void)invalidate
{
  v1 = NSStringFromSelector(self);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_6(&dword_243550000, v2, v3, "entered %{public}@", v4, v5, v6, v7, v8);
}

- (int64_t)zoneTrackerState
{
  zoneTracker = [(CRKWiProxTrackerScanner *)self zoneTracker];
  state = [zoneTracker state];

  return state;
}

- (int64_t)deviceScannerState
{
  deviceScanner = [(CRKWiProxTrackerScanner *)self deviceScanner];
  state = [deviceScanner state];

  return state;
}

- (void)unregisterAllZoneChanges
{
  v4 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  zoneTracker = [(CRKWiProxTrackerScanner *)self zoneTracker];
  [zoneTracker unregisterAllZoneChanges];
}

- (void)unregisterForZoneChanges:(id)changes
{
  changesCopy = changes;
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

  zoneTracker = [(CRKWiProxTrackerScanner *)self zoneTracker];
  [zoneTracker unregisterForZoneChanges:changesCopy];
}

- (void)registerForZoneChangesMatching:(id)matching
{
  matchingCopy = matching;
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

  zoneTracker = [(CRKWiProxTrackerScanner *)self zoneTracker];
  [zoneTracker registerForZoneChangesMatching:matchingCopy];
}

- (void)unregisterAllDeviceChanges
{
  v4 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  deviceScanner = [(CRKWiProxTrackerScanner *)self deviceScanner];
  [deviceScanner unregisterAllDeviceChanges];
}

- (void)registerForDevicesMatching:(id)matching options:(id)options
{
  matchingCopy = matching;
  optionsCopy = options;
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

  deviceScanner = [(CRKWiProxTrackerScanner *)self deviceScanner];
  [deviceScanner registerForDevicesMatching:matchingCopy options:optionsCopy];
}

- (void)zoneTrackerDidUpdateState:(id)state
{
  stateCopy = state;
  v6 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  v7 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CRKWiProxTrackerScanner zoneTrackerDidUpdateState:stateCopy];
  }

  delegate = [(CRKWiProxTrackerScanner *)self delegate];
  [delegate trackerScanner:self didUpdateZoneTrackerState:stateCopy];
}

- (void)zoneTracker:(id)tracker enteredZone:(id)zone
{
  zoneCopy = zone;
  trackerCopy = tracker;
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

  delegate = [(CRKWiProxTrackerScanner *)self delegate];
  [delegate trackerScanner:self zoneTracker:trackerCopy enteredZone:zoneCopy];
}

- (void)zoneTracker:(id)tracker exitedZone:(id)zone
{
  zoneCopy = zone;
  trackerCopy = tracker;
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

  delegate = [(CRKWiProxTrackerScanner *)self delegate];
  [delegate trackerScanner:self zoneTracker:trackerCopy exitedZone:zoneCopy];
}

- (void)zoneTracker:(id)tracker didFailToRegisterZones:(id)zones withError:(id)error
{
  errorCopy = error;
  zonesCopy = zones;
  trackerCopy = tracker;
  v12 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  delegate = [(CRKWiProxTrackerScanner *)self delegate];
  [delegate trackerScanner:self zoneTracker:trackerCopy didFailToRegisterZones:zonesCopy withError:errorCopy];
}

- (void)deviceScannerDidUpdateState:(id)state
{
  stateCopy = state;
  v6 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  v7 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CRKWiProxTrackerScanner zoneTrackerDidUpdateState:stateCopy];
  }

  delegate = [(CRKWiProxTrackerScanner *)self delegate];
  [delegate trackerScanner:self didUpdateDeviceScannerState:stateCopy];
}

- (void)scanner:(id)scanner foundRequestedDevices:(id)devices
{
  devicesCopy = devices;
  scannerCopy = scanner;
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

  delegate = [(CRKWiProxTrackerScanner *)self delegate];
  [delegate trackerScanner:self scanner:scannerCopy foundRequestedDevices:devicesCopy];
}

- (void)scanner:(id)scanner foundDevice:(id)device withData:(id)data
{
  deviceCopy = device;
  dataCopy = data;
  scannerCopy = scanner;
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

  delegate = [(CRKWiProxTrackerScanner *)self delegate];
  [delegate trackerScanner:self scanner:scannerCopy foundDevice:deviceCopy withData:dataCopy];
}

- (void)scanner:(id)scanner didFailToRegisterDevices:(id)devices withError:(id)error
{
  errorCopy = error;
  devicesCopy = devices;
  scannerCopy = scanner;
  v12 = _CRKLogBluetooth_0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(CRKWiProxTrackerScanner *)a2 invalidate];
  }

  delegate = [(CRKWiProxTrackerScanner *)self delegate];
  [delegate trackerScanner:self scanner:scannerCopy didFailToRegisterDevices:devicesCopy withError:errorCopy];
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