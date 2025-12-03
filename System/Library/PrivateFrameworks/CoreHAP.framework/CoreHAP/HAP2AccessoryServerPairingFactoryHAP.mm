@interface HAP2AccessoryServerPairingFactoryHAP
- (id)createPairingDriverWithAccessoryInfo:(id)info transport:(id)transport secureTransportFactory:(id)factory encoding:(id)encoding operationQueue:(id)queue;
@end

@implementation HAP2AccessoryServerPairingFactoryHAP

- (id)createPairingDriverWithAccessoryInfo:(id)info transport:(id)transport secureTransportFactory:(id)factory encoding:(id)encoding operationQueue:(id)queue
{
  encodingCopy = encoding;
  factoryCopy = factory;
  transportCopy = transport;
  infoCopy = info;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = infoCopy;
  }

  else
  {
    v14 = 0;
  }

  v15 = -[HAP2AccessoryServerPairingDriver initWithTransport:secureTransportFactory:encoding:featureFlags:]([HAP2AccessoryServerPairingDriver alloc], "initWithTransport:secureTransportFactory:encoding:featureFlags:", transportCopy, factoryCopy, encodingCopy, [v14 featureFlags]);

  return v15;
}

@end