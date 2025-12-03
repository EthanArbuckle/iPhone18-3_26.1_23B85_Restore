@interface HMDThreadNetworkWakeOnDeviceConnectionStateChangeEvent
- (HMDThreadNetworkWakeOnDeviceConnectionStateChangeEvent)initWitheMACAddress:(id)address connectionState:(int64_t)state;
@end

@implementation HMDThreadNetworkWakeOnDeviceConnectionStateChangeEvent

- (HMDThreadNetworkWakeOnDeviceConnectionStateChangeEvent)initWitheMACAddress:(id)address connectionState:(int64_t)state
{
  addressCopy = address;
  v11.receiver = self;
  v11.super_class = HMDThreadNetworkWakeOnDeviceConnectionStateChangeEvent;
  v8 = [(HMDThreadNetworkWakeOnDeviceConnectionStateChangeEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_eMACAddressAsString, address);
    v9->_connectionState = state;
  }

  return v9;
}

@end