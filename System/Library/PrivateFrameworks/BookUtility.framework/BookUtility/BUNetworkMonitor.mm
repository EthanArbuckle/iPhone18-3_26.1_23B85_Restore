@interface BUNetworkMonitor
- (BOOL)hasCellularCapability;
- (BOOL)hasCellularConnection;
- (BOOL)hasWAPICapability;
- (BOOL)hasWifiConnection;
- (BOOL)isAirplaneModeEnabled;
- (BUNetworkMonitor)initWithQueue:(id)a3;
- (void)setCurrentPath:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation BUNetworkMonitor

- (BUNetworkMonitor)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BUNetworkMonitor;
  v6 = [(BUNetworkMonitor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_monitorQueue, a3);
    v8 = objc_alloc_init(MEMORY[0x277CEC5D8]);
    radiosPreferences = v7->_radiosPreferences;
    v7->_radiosPreferences = v8;
  }

  return v7;
}

- (void)start
{
  monitorQueue = self->_monitorQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DB5AE4;
  block[3] = &unk_278D1D148;
  block[4] = self;
  dispatch_async(monitorQueue, block);
}

- (void)stop
{
  monitorQueue = self->_monitorQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DB5DC8;
  block[3] = &unk_278D1D148;
  block[4] = self;
  dispatch_async(monitorQueue, block);
}

- (BOOL)hasCellularCapability
{
  if (qword_27EC729C0 != -1)
  {
    sub_241DCFBC4();
  }

  return byte_27EC729B8;
}

- (BOOL)hasWAPICapability
{
  if (qword_27EC729D0 != -1)
  {
    sub_241DCFBD8();
  }

  return byte_27EC729C8;
}

- (BOOL)isAirplaneModeEnabled
{
  v4 = objc_msgSend_radiosPreferences(self, a2, v2);
  objc_msgSend_refresh(v4, v5, v6);

  v9 = objc_msgSend_radiosPreferences(self, v7, v8);
  LOBYTE(v4) = objc_msgSend_airplaneMode(v9, v10, v11);

  return v4;
}

- (BOOL)hasCellularConnection
{
  if (objc_msgSend_isConnected(self, a2, v2) && self->_currentPath)
  {

    JUMPOUT(0x245D000B0);
  }

  return 0;
}

- (BOOL)hasWifiConnection
{
  if (objc_msgSend_isConnected(self, a2, v2) && self->_currentPath)
  {

    JUMPOUT(0x245D000B0);
  }

  return 0;
}

- (void)setCurrentPath:(id)a3
{
  v5 = a3;
  currentPath = self->_currentPath;
  p_currentPath = &self->_currentPath;
  if (currentPath != v5)
  {
    v12 = v5;
    objc_storeStrong(p_currentPath, a3);
    v10 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v8, v9);
    objc_msgSend_postNotificationName_object_(v10, v11, @"BUNetworkMonitorInterfaceDidChangeNotification", 0);

    v5 = v12;
  }
}

@end