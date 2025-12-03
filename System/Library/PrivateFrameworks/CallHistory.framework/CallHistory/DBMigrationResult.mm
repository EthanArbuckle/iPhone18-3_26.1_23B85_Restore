@interface DBMigrationResult
- (DBMigrationResult)initWithErrorCode:(int64_t)code andDBVersion:(int64_t)version;
@end

@implementation DBMigrationResult

- (DBMigrationResult)initWithErrorCode:(int64_t)code andDBVersion:(int64_t)version
{
  v7.receiver = self;
  v7.super_class = DBMigrationResult;
  result = [(DBMigrationResult *)&v7 init];
  if (result)
  {
    result->_errorCode = code;
    result->_dbVersion = version;
  }

  return result;
}

@end