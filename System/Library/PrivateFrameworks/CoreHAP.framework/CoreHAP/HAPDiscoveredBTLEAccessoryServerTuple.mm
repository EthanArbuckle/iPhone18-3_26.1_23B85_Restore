@interface HAPDiscoveredBTLEAccessoryServerTuple
+ (id)discoveredAccessoryServerTupleWithAccessoryServer:(id)server;
@end

@implementation HAPDiscoveredBTLEAccessoryServerTuple

+ (id)discoveredAccessoryServerTupleWithAccessoryServer:(id)server
{
  serverCopy = server;
  v4 = objc_alloc_init(HAPDiscoveredBTLEAccessoryServerTuple);
  accessoryServer = v4->_accessoryServer;
  v4->_accessoryServer = serverCopy;

  [(HAPDiscoveredBTLEAccessoryServerTuple *)v4 setLastSeen:CFAbsoluteTimeGetCurrent()];

  return v4;
}

@end