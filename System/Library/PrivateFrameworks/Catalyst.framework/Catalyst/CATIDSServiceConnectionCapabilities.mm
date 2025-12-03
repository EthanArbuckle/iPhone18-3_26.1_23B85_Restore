@interface CATIDSServiceConnectionCapabilities
- (CATIDSServiceConnectionCapabilities)initWithMessagingVersion:(unint64_t)version;
@end

@implementation CATIDSServiceConnectionCapabilities

- (CATIDSServiceConnectionCapabilities)initWithMessagingVersion:(unint64_t)version
{
  v5.receiver = self;
  v5.super_class = CATIDSServiceConnectionCapabilities;
  result = [(CATIDSServiceConnectionCapabilities *)&v5 init];
  if (result)
  {
    result->_supportsReliableDelivery = version > 1;
  }

  return result;
}

@end