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
  if (_onceToken_189652 != -1)
  {
    dispatch_once(&_onceToken_189652, &__block_literal_global_189653);
  }

  v3 = _sharedInstance_189654;

  return v3;
}

void __50__HMDNetworkActivityWrapperFactory_sharedInstance__block_invoke()
{
  if (!_sharedInstance_189654)
  {
    v0 = objc_alloc_init(HMDNetworkActivityWrapperFactory);
    v1 = _sharedInstance_189654;
    _sharedInstance_189654 = v0;
  }
}

@end