@interface HMDSharingDeviceDiscovery
- (OS_dispatch_queue)dispatchQueue;
- (SFDeviceDiscovery)deviceDiscovery;
- (id)deviceChangedHandler;
- (id)deviceFoundHandler;
- (id)deviceLostHandler;
- (unint64_t)discoveryFlags;
- (void)dealloc;
- (void)setDeviceChangedHandler:(id)handler;
- (void)setDeviceFoundHandler:(id)handler;
- (void)setDeviceLostHandler:(id)handler;
- (void)setDiscoveryFlags:(unint64_t)flags;
- (void)setDispatchQueue:(id)queue;
- (void)start;
- (void)stop;
@end

@implementation HMDSharingDeviceDiscovery

uint64_t __59__HMDSharingDeviceDiscovery_repairDevice_flags_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)stop
{
  deviceDiscovery = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  [deviceDiscovery invalidate];

  [(HMDSharingDeviceDiscovery *)self setDeviceDiscovery:0];
}

- (void)start
{
  deviceDiscovery = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  [deviceDiscovery activateWithCompletion:&__block_literal_global_114564];
}

void __34__HMDSharingDeviceDiscovery_start__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v6;
      v14 = 2112;
      v15 = v2;
      v7 = "%{public}@Failed to activate SFDeviceDiscovery with error %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v6;
    v7 = "%{public}@Successfully activated SFDeviceDiscovery.";
    v8 = v5;
    v9 = OS_LOG_TYPE_INFO;
    v10 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v3);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceLostHandler:(id)handler
{
  handlerCopy = handler;
  deviceDiscovery = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  [deviceDiscovery setDeviceLostHandler:handlerCopy];
}

- (id)deviceLostHandler
{
  deviceDiscovery = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  deviceLostHandler = [deviceDiscovery deviceLostHandler];

  return deviceLostHandler;
}

- (void)setDeviceChangedHandler:(id)handler
{
  handlerCopy = handler;
  deviceDiscovery = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  [deviceDiscovery setDeviceChangedHandler:handlerCopy];
}

- (id)deviceChangedHandler
{
  deviceDiscovery = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  deviceChangedHandler = [deviceDiscovery deviceChangedHandler];

  return deviceChangedHandler;
}

- (void)setDeviceFoundHandler:(id)handler
{
  handlerCopy = handler;
  deviceDiscovery = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  [deviceDiscovery setDeviceFoundHandler:handlerCopy];
}

- (id)deviceFoundHandler
{
  deviceDiscovery = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  deviceFoundHandler = [deviceDiscovery deviceFoundHandler];

  return deviceFoundHandler;
}

- (void)setDiscoveryFlags:(unint64_t)flags
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2048;
    flagsCopy = flags;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Setting device discovery flags to %ld", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  deviceDiscovery = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  [deviceDiscovery setDiscoveryFlags:flags];

  v9 = *MEMORY[0x277D85DE8];
}

- (unint64_t)discoveryFlags
{
  deviceDiscovery = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  discoveryFlags = [deviceDiscovery discoveryFlags];

  return discoveryFlags;
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  deviceDiscovery = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  [deviceDiscovery setDispatchQueue:queueCopy];
}

- (OS_dispatch_queue)dispatchQueue
{
  deviceDiscovery = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  dispatchQueue = [deviceDiscovery dispatchQueue];

  return dispatchQueue;
}

- (SFDeviceDiscovery)deviceDiscovery
{
  deviceDiscovery = self->_deviceDiscovery;
  if (!deviceDiscovery)
  {
    v4 = objc_alloc_init(MEMORY[0x277D54C68]);
    v5 = self->_deviceDiscovery;
    self->_deviceDiscovery = v4;

    deviceDiscovery = self->_deviceDiscovery;
  }

  return deviceDiscovery;
}

- (void)dealloc
{
  [(HMDSharingDeviceDiscovery *)self stop];
  v3.receiver = self;
  v3.super_class = HMDSharingDeviceDiscovery;
  [(HMDSharingDeviceDiscovery *)&v3 dealloc];
}

@end