@interface _HFHomePropertyCacheManagerKey
- (BOOL)isEqual:(id)equal;
- (_HFHomePropertyCacheManagerKey)initWithObjectID:(id)d key:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation _HFHomePropertyCacheManagerKey

- (_HFHomePropertyCacheManagerKey)initWithObjectID:(id)d key:(id)key
{
  dCopy = d;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = _HFHomePropertyCacheManagerKey;
  v9 = [(_HFHomePropertyCacheManagerKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_objectID, d);
    objc_storeStrong(&v10->_key, key);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(_HFHomePropertyCacheManagerKey);
  objectID = [(_HFHomePropertyCacheManagerKey *)self objectID];
  objectID = v4->_objectID;
  v4->_objectID = objectID;

  v7 = [(_HFHomePropertyCacheManagerKey *)self key];
  key = v4->_key;
  v4->_key = v7;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _HFHomePropertyCacheManagerKey;
    if ([(_HFHomePropertyCacheManagerKey *)&v12 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      objectID = [(_HFHomePropertyCacheManagerKey *)self objectID];
      objectID2 = [(_HFHomePropertyCacheManagerKey *)v5 objectID];
      if (objectID == objectID2)
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
  objectID = [(_HFHomePropertyCacheManagerKey *)self objectID];
  v4 = [objectID hash];
  v5 = [(_HFHomePropertyCacheManagerKey *)self key];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end