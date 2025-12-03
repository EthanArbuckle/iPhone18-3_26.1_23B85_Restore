@interface HMDModernTransportDeviceReachabilityObserverListenerContext
- (HMDModernTransportDeviceReachabilityObserverListenerContext)initWithAddress:(id)address;
@end

@implementation HMDModernTransportDeviceReachabilityObserverListenerContext

- (HMDModernTransportDeviceReachabilityObserverListenerContext)initWithAddress:(id)address
{
  addressCopy = address;
  v10.receiver = self;
  v10.super_class = HMDModernTransportDeviceReachabilityObserverListenerContext;
  v6 = [(HMDModernTransportDeviceReachabilityObserverListenerContext *)&v10 init];
  if (v6)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    listeners = v6->_listeners;
    v6->_listeners = weakObjectsHashTable;

    objc_storeStrong(&v6->_address, address);
  }

  return v6;
}

@end