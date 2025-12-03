@interface NSData(CCDatabaseValue)
- (id)databaseValue_toNumber;
- (id)databaseValue_toString;
- (uint64_t)databaseValue_blobRepresentationWithLength:()CCDatabaseValue;
@end

@implementation NSData(CCDatabaseValue)

- (id)databaseValue_toString
{
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self encoding:4];

  return v1;
}

- (id)databaseValue_toNumber
{
  databaseValue_toString = [self databaseValue_toString];
  databaseValue_toNumber = [databaseValue_toString databaseValue_toNumber];

  return databaseValue_toNumber;
}

- (uint64_t)databaseValue_blobRepresentationWithLength:()CCDatabaseValue
{
  if (a3)
  {
    *a3 = [self length];
  }

  selfCopy = self;

  return [selfCopy bytes];
}

@end