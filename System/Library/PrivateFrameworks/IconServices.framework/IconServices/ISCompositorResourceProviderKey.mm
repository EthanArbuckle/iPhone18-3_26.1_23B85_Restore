@interface ISCompositorResourceProviderKey
+ (id)resourceKeyWithName:(id)a3 flags:(unint64_t)a4;
@end

@implementation ISCompositorResourceProviderKey

+ (id)resourceKeyWithName:(id)a3 flags:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(ISCompositorResourceProviderKey);
  v7 = [v5 copy];

  name = v6->_name;
  v6->_name = v7;

  v6->_flags = a4;

  return v6;
}

@end