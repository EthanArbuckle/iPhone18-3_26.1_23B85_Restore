@interface HAP2EncodedListPairingsResponseThread
- (HAP2EncodedListPairingsResponseThread)initWithBTLEResponse:(id)a3 pairings:(id)a4;
@end

@implementation HAP2EncodedListPairingsResponseThread

- (HAP2EncodedListPairingsResponseThread)initWithBTLEResponse:(id)a3 pairings:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HAP2EncodedListPairingsResponseThread;
  v8 = [(HAP2EncodedResponseThread *)&v11 initWithBTLEResponse:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pairings, a4);
  }

  return v9;
}

@end