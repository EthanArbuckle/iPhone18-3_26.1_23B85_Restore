@interface HMDThreadNetworkWakeOnDeviceConnectionStateChangeEvent
- (HMDThreadNetworkWakeOnDeviceConnectionStateChangeEvent)initWitheMACAddress:(id)a3 connectionState:(int64_t)a4;
@end

@implementation HMDThreadNetworkWakeOnDeviceConnectionStateChangeEvent

- (HMDThreadNetworkWakeOnDeviceConnectionStateChangeEvent)initWitheMACAddress:(id)a3 connectionState:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HMDThreadNetworkWakeOnDeviceConnectionStateChangeEvent;
  v8 = [(HMDThreadNetworkWakeOnDeviceConnectionStateChangeEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_eMACAddressAsString, a3);
    v9->_connectionState = a4;
  }

  return v9;
}

@end