@interface HAPAccessoryServerBookkeeping
- (HAPAccessoryServerBookkeeping)initWithDiscoveryMethod:(unint64_t)a3;
@end

@implementation HAPAccessoryServerBookkeeping

- (HAPAccessoryServerBookkeeping)initWithDiscoveryMethod:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HAPAccessoryServerBookkeeping;
  result = [(HAPAccessoryServerBookkeeping *)&v5 init];
  if (result)
  {
    result->_lastDiscoveryMethod = a3;
    result->_initialDiscoveryMethod = a3;
  }

  return result;
}

@end