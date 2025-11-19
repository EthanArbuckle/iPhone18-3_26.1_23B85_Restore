@interface HAPDiscoveredBTLEAccessoryServerTuple
+ (id)discoveredAccessoryServerTupleWithAccessoryServer:(id)a3;
@end

@implementation HAPDiscoveredBTLEAccessoryServerTuple

+ (id)discoveredAccessoryServerTupleWithAccessoryServer:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HAPDiscoveredBTLEAccessoryServerTuple);
  accessoryServer = v4->_accessoryServer;
  v4->_accessoryServer = v3;

  [(HAPDiscoveredBTLEAccessoryServerTuple *)v4 setLastSeen:CFAbsoluteTimeGetCurrent()];

  return v4;
}

@end