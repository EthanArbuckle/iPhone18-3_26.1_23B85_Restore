@interface _SUUIResourceCacheValue
- (_SUUIResourceCacheValue)initWithResource:(id)resource requestCacheKey:(id)key;
@end

@implementation _SUUIResourceCacheValue

- (_SUUIResourceCacheValue)initWithResource:(id)resource requestCacheKey:(id)key
{
  resourceCopy = resource;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = _SUUIResourceCacheValue;
  v9 = [(_SUUIResourceCacheValue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resource, resource);
    objc_storeStrong(&v10->_requestCacheKey, key);
  }

  return v10;
}

@end