@interface _CPLCloudKitSimpleCacheEntry
- (_CPLCloudKitSimpleCacheEntry)initWithKey:(id)key object:(id)object expirationDate:(id)date;
@end

@implementation _CPLCloudKitSimpleCacheEntry

- (_CPLCloudKitSimpleCacheEntry)initWithKey:(id)key object:(id)object expirationDate:(id)date
{
  keyCopy = key;
  objectCopy = object;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = _CPLCloudKitSimpleCacheEntry;
  v12 = [(_CPLCloudKitSimpleCacheEntry *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, key);
    objc_storeStrong(&v13->_object, object);
    v14 = [dateCopy copy];
    expirationDate = v13->_expirationDate;
    v13->_expirationDate = v14;
  }

  return v13;
}

@end