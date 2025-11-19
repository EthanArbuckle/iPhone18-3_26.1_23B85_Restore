@interface HMDModernTransportDeviceReachabilityObserverListenerContext
- (HMDModernTransportDeviceReachabilityObserverListenerContext)initWithAddress:(id)a3;
@end

@implementation HMDModernTransportDeviceReachabilityObserverListenerContext

- (HMDModernTransportDeviceReachabilityObserverListenerContext)initWithAddress:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HMDModernTransportDeviceReachabilityObserverListenerContext;
  v6 = [(HMDModernTransportDeviceReachabilityObserverListenerContext *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    listeners = v6->_listeners;
    v6->_listeners = v7;

    objc_storeStrong(&v6->_address, a3);
  }

  return v6;
}

@end