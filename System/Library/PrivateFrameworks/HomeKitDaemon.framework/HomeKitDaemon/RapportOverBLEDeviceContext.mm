@interface RapportOverBLEDeviceContext
- (RPCompanionLinkDevice)device;
- (RapportOverBLEDeviceContext)initWithDevice:(id)device;
@end

@implementation RapportOverBLEDeviceContext

- (RPCompanionLinkDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (RapportOverBLEDeviceContext)initWithDevice:(id)device
{
  deviceCopy = device;
  v10.receiver = self;
  v10.super_class = RapportOverBLEDeviceContext;
  v5 = [(RapportOverBLEDeviceContext *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_device, deviceCopy);
    v7 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:60.0];
    idleTimer = v6->_idleTimer;
    v6->_idleTimer = v7;

    [(HMFTimer *)v6->_idleTimer resume];
  }

  return v6;
}

@end