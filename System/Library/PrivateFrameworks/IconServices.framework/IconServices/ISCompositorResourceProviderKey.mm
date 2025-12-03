@interface ISCompositorResourceProviderKey
+ (id)resourceKeyWithName:(id)name flags:(unint64_t)flags;
@end

@implementation ISCompositorResourceProviderKey

+ (id)resourceKeyWithName:(id)name flags:(unint64_t)flags
{
  nameCopy = name;
  v6 = objc_alloc_init(ISCompositorResourceProviderKey);
  v7 = [nameCopy copy];

  name = v6->_name;
  v6->_name = v7;

  v6->_flags = flags;

  return v6;
}

@end