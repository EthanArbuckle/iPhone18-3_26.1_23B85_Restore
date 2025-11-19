@interface _DKScreenSharingMonitor
- (_DKScreenSharingMonitor)init;
- (void)deactivate;
- (void)mirroringDidChange:(id)a3;
- (void)registerForScreenMirroringNotifications;
- (void)start;
- (void)stop;
@end

@implementation _DKScreenSharingMonitor

- (_DKScreenSharingMonitor)init
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = _DKScreenSharingMonitor;
  v2 = [(_DKMonitor *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CB8698] sharedSystemScreenContext];
    outputContext = v2->_outputContext;
    v2->_outputContext = v3;

    v5 = objc_alloc_init(MEMORY[0x277CF1AC0]);
    screenSharingStream = v2->_screenSharingStream;
    v2->_screenSharingStream = v5;

    v7 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v2->_outputContext;
      v9 = v2->_screenSharingStream;
      *buf = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_22595A000, v7, OS_LOG_TYPE_INFO, "Enabling screen mirroring monitor with AVOutputContext: %@, screenSharingStream %@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)start
{
  v3.receiver = self;
  v3.super_class = _DKScreenSharingMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsActivation])
  {
    [(_DKScreenSharingMonitor *)self registerForScreenMirroringNotifications];
  }
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKScreenSharingMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKScreenSharingMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  outputContext = self->_outputContext;
  self->_outputContext = 0;

  screenSharingStream = self->_screenSharingStream;
  self->_screenSharingStream = 0;
}

- (void)registerForScreenMirroringNotifications
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CB8628];
  v5 = [(_DKScreenSharingMonitor *)self outputContext];
  [v3 addObserver:self selector:sel_mirroringDidChange_ name:v4 object:v5];

  v6 = [(_DKScreenSharingMonitor *)self outputContext];
  v7 = [v6 outputDevices];
  -[_DKScreenSharingMonitor setCurrentMirroringDeviceCount:](self, "setCurrentMirroringDeviceCount:", [v7 count]);

  v8 = [MEMORY[0x277CFE0C8] contextChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[_DKScreenSharingMonitor currentMirroringDeviceCount](self, "currentMirroringDeviceCount")}];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_22595A000, v8, OS_LOG_TYPE_INFO, "Registered for screen mirroring notifications with current device count: %@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)mirroringDidChange:(id)a3
{
  v4 = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46___DKScreenSharingMonitor_mirroringDidChange___block_invoke;
  block[3] = &unk_27856F060;
  block[4] = self;
  dispatch_async(v4, block);
}

@end