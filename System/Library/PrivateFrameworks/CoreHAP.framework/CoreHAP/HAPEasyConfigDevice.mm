@interface HAPEasyConfigDevice
- (HAPAccessoryServerIP)server;
- (HAPEasyConfigDevice)initWithDeviceInfo:(id)a3 server:(id)a4;
@end

@implementation HAPEasyConfigDevice

- (HAPAccessoryServerIP)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (HAPEasyConfigDevice)initWithDeviceInfo:(id)a3 server:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HAPEasyConfigDevice;
  v9 = [(EasyConfigDevice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong((&v9->super.super.isa + *MEMORY[0x277D06B78]), a3);
    objc_storeWeak(&v10->_server, v8);
  }

  return v10;
}

@end