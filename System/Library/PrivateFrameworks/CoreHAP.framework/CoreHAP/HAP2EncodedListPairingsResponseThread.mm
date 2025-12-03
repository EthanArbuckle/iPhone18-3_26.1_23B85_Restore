@interface HAP2EncodedListPairingsResponseThread
- (HAP2EncodedListPairingsResponseThread)initWithBTLEResponse:(id)response pairings:(id)pairings;
@end

@implementation HAP2EncodedListPairingsResponseThread

- (HAP2EncodedListPairingsResponseThread)initWithBTLEResponse:(id)response pairings:(id)pairings
{
  pairingsCopy = pairings;
  v11.receiver = self;
  v11.super_class = HAP2EncodedListPairingsResponseThread;
  v8 = [(HAP2EncodedResponseThread *)&v11 initWithBTLEResponse:response];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pairings, pairings);
  }

  return v9;
}

@end