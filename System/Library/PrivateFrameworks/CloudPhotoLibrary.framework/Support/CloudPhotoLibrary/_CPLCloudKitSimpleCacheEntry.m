@interface _CPLCloudKitSimpleCacheEntry
- (_CPLCloudKitSimpleCacheEntry)initWithKey:(id)a3 object:(id)a4 expirationDate:(id)a5;
@end

@implementation _CPLCloudKitSimpleCacheEntry

- (_CPLCloudKitSimpleCacheEntry)initWithKey:(id)a3 object:(id)a4 expirationDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = _CPLCloudKitSimpleCacheEntry;
  v12 = [(_CPLCloudKitSimpleCacheEntry *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, a3);
    objc_storeStrong(&v13->_object, a4);
    v14 = [v11 copy];
    expirationDate = v13->_expirationDate;
    v13->_expirationDate = v14;
  }

  return v13;
}

@end