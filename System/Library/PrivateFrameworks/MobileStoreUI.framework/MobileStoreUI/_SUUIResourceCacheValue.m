@interface _SUUIResourceCacheValue
- (_SUUIResourceCacheValue)initWithResource:(id)a3 requestCacheKey:(id)a4;
@end

@implementation _SUUIResourceCacheValue

- (_SUUIResourceCacheValue)initWithResource:(id)a3 requestCacheKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _SUUIResourceCacheValue;
  v9 = [(_SUUIResourceCacheValue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resource, a3);
    objc_storeStrong(&v10->_requestCacheKey, a4);
  }

  return v10;
}

@end