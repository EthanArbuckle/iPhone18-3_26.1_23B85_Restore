@interface RapportOverBLEDeviceContext
- (RPCompanionLinkDevice)device;
- (RapportOverBLEDeviceContext)initWithDevice:(id)a3;
@end

@implementation RapportOverBLEDeviceContext

- (RPCompanionLinkDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (RapportOverBLEDeviceContext)initWithDevice:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RapportOverBLEDeviceContext;
  v5 = [(RapportOverBLEDeviceContext *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_device, v4);
    v7 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:60.0];
    idleTimer = v6->_idleTimer;
    v6->_idleTimer = v7;

    [(HMFTimer *)v6->_idleTimer resume];
  }

  return v6;
}

@end