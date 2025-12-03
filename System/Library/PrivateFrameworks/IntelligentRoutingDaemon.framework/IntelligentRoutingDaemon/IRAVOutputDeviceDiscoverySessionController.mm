@interface IRAVOutputDeviceDiscoverySessionController
- (IRAVOutputDeviceDiscoverySessionController)initWithAVOutputDeviceProvider:(id)provider;
- (IRAVOutputDeviceProvider)avOutputDeviceProvider;
- (void)_didUpdateAVOutputDevices:(id)devices;
- (void)dealloc;
@end

@implementation IRAVOutputDeviceDiscoverySessionController

- (IRAVOutputDeviceDiscoverySessionController)initWithAVOutputDeviceProvider:(id)provider
{
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = IRAVOutputDeviceDiscoverySessionController;
  v5 = [(IRAVOutputDeviceDiscoverySessionController *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_avOutputDeviceProvider, providerCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.intelligentroutingd.IRAVOutputDeviceDiscoverySessionController", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = [objc_alloc(MEMORY[0x277CB86B0]) initWithDeviceFeatures:5];
    session = v6->_session;
    v6->_session = v10;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v6->_notificationCenter;
    v6->_notificationCenter = defaultCenter;
  }

  return v6;
}

- (void)dealloc
{
  [(IRAVOutputDeviceDiscoverySessionController *)self unregisterForAvailableOutputDevicesNotification];
  [(AVOutputDeviceDiscoverySession *)self->_session setDiscoveryMode:0];
  v3.receiver = self;
  v3.super_class = IRAVOutputDeviceDiscoverySessionController;
  [(IRAVOutputDeviceDiscoverySessionController *)&v3 dealloc];
}

- (void)_didUpdateAVOutputDevices:(id)devices
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__IRAVOutputDeviceDiscoverySessionController__didUpdateAVOutputDevices___block_invoke;
  block[3] = &unk_2797E0BA8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __72__IRAVOutputDeviceDiscoverySessionController__didUpdateAVOutputDevices___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) availableOutputDevices];
  v3 = [v2 copy];

  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__IRAVOutputDeviceDiscoverySessionController__didUpdateAVOutputDevices___block_invoke_2;
  v7[3] = &unk_2797E0D88;
  v8 = v4;
  v5 = v4;
  [v3 enumerateObjectsUsingBlock:v7];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained didUpdateAVOutputDevices:v5];
}

void __72__IRAVOutputDeviceDiscoverySessionController__didUpdateAVOutputDevices___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [IRAVOutputDeviceDO AVOutputDeviceToDO:a2];
  v4 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
  {
    __72__IRAVOutputDeviceDiscoverySessionController__didUpdateAVOutputDevices___block_invoke_2_cold_1(v3, v4);
  }

  [*(a1 + 32) addObject:v3];
}

- (IRAVOutputDeviceProvider)avOutputDeviceProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_avOutputDeviceProvider);

  return WeakRetained;
}

void __72__IRAVOutputDeviceDiscoverySessionController__didUpdateAVOutputDevices___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_25543D000, a2, OS_LOG_TYPE_DEBUG, "#discovery-session-controller, AVOutputDevice: device has been updated: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end