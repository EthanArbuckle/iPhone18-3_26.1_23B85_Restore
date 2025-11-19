@interface HMDNetworkActivityWrapperFactory
+ (HMDNetworkActivityWrapperFactory)sharedInstance;
- (id)networkActivityWrapperWithLabel:(unint64_t)a3;
@end

@implementation HMDNetworkActivityWrapperFactory

- (id)networkActivityWrapperWithLabel:(unint64_t)a3
{
  v3 = [[HMDNetworkActivityWrapper alloc] initWithLabel:a3];

  return v3;
}

+ (HMDNetworkActivityWrapperFactory)sharedInstance
{
  if (_onceToken != -1)
  {
    dispatch_once(&_onceToken, &__block_literal_global_189364);
  }

  v3 = _sharedInstance_189365;

  return v3;
}

void __50__HMDNetworkActivityWrapperFactory_sharedInstance__block_invoke()
{
  if (!_sharedInstance_189365)
  {
    v0 = objc_alloc_init(HMDNetworkActivityWrapperFactory);
    v1 = _sharedInstance_189365;
    _sharedInstance_189365 = v0;

    MEMORY[0x2821F96F8](v0, v1);
  }
}

@end