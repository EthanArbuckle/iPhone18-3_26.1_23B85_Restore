@interface _HKCustomCacheDisplayTypeTuple
- (_HKCustomCacheDisplayTypeTuple)initWithCustomCache:(id)cache displayType:(id)type;
@end

@implementation _HKCustomCacheDisplayTypeTuple

- (_HKCustomCacheDisplayTypeTuple)initWithCustomCache:(id)cache displayType:(id)type
{
  cacheCopy = cache;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = _HKCustomCacheDisplayTypeTuple;
  v9 = [(_HKCustomCacheDisplayTypeTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_chartCache, cache);
    objc_storeStrong(&v10->_displayType, type);
  }

  return v10;
}

@end