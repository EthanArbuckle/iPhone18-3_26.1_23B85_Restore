@interface HAP2AccessoryServerCoordinatorThread
+ (id)new;
@end

@implementation HAP2AccessoryServerCoordinatorThread

+ (id)new
{
  v3 = [[HAP2AccessoryServerDiscoveryBonjourLegacy alloc] initWithLocalDomainAndServiceType:@"_hap._udp"];
  v4 = objc_alloc_init(HAP2AccessoryServerPairingFactoryHAP);
  v5 = objc_alloc_init(HAP2AccessoryServerTransportFactoryThread);
  v6 = objc_alloc_init(HAP2AccessoryServerSecureTransportFactoryThread);
  v7 = objc_alloc_init(HAP2AccessoryServerEncodingFactoryThread);
  v8 = objc_alloc_init(HAP2AccessoryServerControllerFactory);
  v9 = [[a1 alloc] initWithDiscovery:v3 pairingFactory:v4 transportFactory:v5 secureTransportFactory:v6 encodingFactory:v7 controllerFactory:v8];

  return v9;
}

@end