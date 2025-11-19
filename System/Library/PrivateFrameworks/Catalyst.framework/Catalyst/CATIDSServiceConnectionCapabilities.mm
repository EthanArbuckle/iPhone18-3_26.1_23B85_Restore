@interface CATIDSServiceConnectionCapabilities
- (CATIDSServiceConnectionCapabilities)initWithMessagingVersion:(unint64_t)a3;
@end

@implementation CATIDSServiceConnectionCapabilities

- (CATIDSServiceConnectionCapabilities)initWithMessagingVersion:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CATIDSServiceConnectionCapabilities;
  result = [(CATIDSServiceConnectionCapabilities *)&v5 init];
  if (result)
  {
    result->_supportsReliableDelivery = a3 > 1;
  }

  return result;
}

@end