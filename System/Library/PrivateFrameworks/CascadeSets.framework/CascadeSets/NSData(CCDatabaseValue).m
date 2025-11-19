@interface NSData(CCDatabaseValue)
- (id)databaseValue_toNumber;
- (id)databaseValue_toString;
- (uint64_t)databaseValue_blobRepresentationWithLength:()CCDatabaseValue;
@end

@implementation NSData(CCDatabaseValue)

- (id)databaseValue_toString
{
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:a1 encoding:4];

  return v1;
}

- (id)databaseValue_toNumber
{
  v1 = [a1 databaseValue_toString];
  v2 = [v1 databaseValue_toNumber];

  return v2;
}

- (uint64_t)databaseValue_blobRepresentationWithLength:()CCDatabaseValue
{
  if (a3)
  {
    *a3 = [a1 length];
  }

  v4 = a1;

  return [v4 bytes];
}

@end