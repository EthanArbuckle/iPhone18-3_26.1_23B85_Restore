@interface _HKCustomCacheDisplayTypeTuple
- (_HKCustomCacheDisplayTypeTuple)initWithCustomCache:(id)a3 displayType:(id)a4;
@end

@implementation _HKCustomCacheDisplayTypeTuple

- (_HKCustomCacheDisplayTypeTuple)initWithCustomCache:(id)a3 displayType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _HKCustomCacheDisplayTypeTuple;
  v9 = [(_HKCustomCacheDisplayTypeTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_chartCache, a3);
    objc_storeStrong(&v10->_displayType, a4);
  }

  return v10;
}

@end