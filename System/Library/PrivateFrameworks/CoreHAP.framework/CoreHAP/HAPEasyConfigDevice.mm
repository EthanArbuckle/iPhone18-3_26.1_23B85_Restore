@interface HAPEasyConfigDevice
- (HAPAccessoryServerIP)server;
- (HAPEasyConfigDevice)initWithDeviceInfo:(id)info server:(id)server;
@end

@implementation HAPEasyConfigDevice

- (HAPAccessoryServerIP)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (HAPEasyConfigDevice)initWithDeviceInfo:(id)info server:(id)server
{
  infoCopy = info;
  serverCopy = server;
  v12.receiver = self;
  v12.super_class = HAPEasyConfigDevice;
  v9 = [(EasyConfigDevice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong((&v9->super.super.isa + *MEMORY[0x277D06B78]), info);
    objc_storeWeak(&v10->_server, serverCopy);
  }

  return v10;
}

@end