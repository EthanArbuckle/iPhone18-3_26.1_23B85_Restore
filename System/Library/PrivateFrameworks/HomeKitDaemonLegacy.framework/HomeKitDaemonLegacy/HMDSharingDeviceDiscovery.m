@interface HMDSharingDeviceDiscovery
- (OS_dispatch_queue)dispatchQueue;
- (SFDeviceDiscovery)deviceDiscovery;
- (id)deviceChangedHandler;
- (id)deviceFoundHandler;
- (id)deviceLostHandler;
- (unint64_t)discoveryFlags;
- (void)dealloc;
- (void)setDeviceChangedHandler:(id)a3;
- (void)setDeviceFoundHandler:(id)a3;
- (void)setDeviceLostHandler:(id)a3;
- (void)setDiscoveryFlags:(unint64_t)a3;
- (void)setDispatchQueue:(id)a3;
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
  v3 = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  [v3 invalidate];

  [(HMDSharingDeviceDiscovery *)self setDeviceDiscovery:0];
}

- (void)start
{
  v2 = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  [v2 activateWithCompletion:&__block_literal_global_75550];
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
      _os_log_impl(&dword_2531F8000, v8, v9, v7, &v12, v10);
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

- (void)setDeviceLostHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  [v5 setDeviceLostHandler:v4];
}

- (id)deviceLostHandler
{
  v2 = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  v3 = [v2 deviceLostHandler];

  return v3;
}

- (void)setDeviceChangedHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  [v5 setDeviceChangedHandler:v4];
}

- (id)deviceChangedHandler
{
  v2 = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  v3 = [v2 deviceChangedHandler];

  return v3;
}

- (void)setDeviceFoundHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  [v5 setDeviceFoundHandler:v4];
}

- (id)deviceFoundHandler
{
  v2 = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  v3 = [v2 deviceFoundHandler];

  return v3;
}

- (void)setDiscoveryFlags:(unint64_t)a3
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
    v13 = a3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Setting device discovery flags to %ld", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v8 = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  [v8 setDiscoveryFlags:a3];

  v9 = *MEMORY[0x277D85DE8];
}

- (unint64_t)discoveryFlags
{
  v2 = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  v3 = [v2 discoveryFlags];

  return v3;
}

- (void)setDispatchQueue:(id)a3
{
  v4 = a3;
  v5 = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  [v5 setDispatchQueue:v4];
}

- (OS_dispatch_queue)dispatchQueue
{
  v2 = [(HMDSharingDeviceDiscovery *)self deviceDiscovery];
  v3 = [v2 dispatchQueue];

  return v3;
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