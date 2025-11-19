@interface _HFHomePropertyCacheManagerKey
- (BOOL)isEqual:(id)a3;
- (_HFHomePropertyCacheManagerKey)initWithObjectID:(id)a3 key:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation _HFHomePropertyCacheManagerKey

- (_HFHomePropertyCacheManagerKey)initWithObjectID:(id)a3 key:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _HFHomePropertyCacheManagerKey;
  v9 = [(_HFHomePropertyCacheManagerKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_objectID, a3);
    objc_storeStrong(&v10->_key, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_HFHomePropertyCacheManagerKey);
  v5 = [(_HFHomePropertyCacheManagerKey *)self objectID];
  objectID = v4->_objectID;
  v4->_objectID = v5;

  v7 = [(_HFHomePropertyCacheManagerKey *)self key];
  key = v4->_key;
  v4->_key = v7;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _HFHomePropertyCacheManagerKey;
    if ([(_HFHomePropertyCacheManagerKey *)&v12 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [(_HFHomePropertyCacheManagerKey *)self objectID];
      v7 = [(_HFHomePropertyCacheManagerKey *)v5 objectID];
      if (v6 == v7)
      {
        v9 = [(_HFHomePropertyCacheManagerKey *)self key];
        v10 = [(_HFHomePropertyCacheManagerKey *)v5 key];
        v8 = v9 == v10;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(_HFHomePropertyCacheManagerKey *)self objectID];
  v4 = [v3 hash];
  v5 = [(_HFHomePropertyCacheManagerKey *)self key];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end