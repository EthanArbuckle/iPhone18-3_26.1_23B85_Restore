@interface HAPAccessoryServerBookkeeping
- (HAPAccessoryServerBookkeeping)initWithDiscoveryMethod:(unint64_t)method;
@end

@implementation HAPAccessoryServerBookkeeping

- (HAPAccessoryServerBookkeeping)initWithDiscoveryMethod:(unint64_t)method
{
  v5.receiver = self;
  v5.super_class = HAPAccessoryServerBookkeeping;
  result = [(HAPAccessoryServerBookkeeping *)&v5 init];
  if (result)
  {
    result->_lastDiscoveryMethod = method;
    result->_initialDiscoveryMethod = method;
  }

  return result;
}

@end