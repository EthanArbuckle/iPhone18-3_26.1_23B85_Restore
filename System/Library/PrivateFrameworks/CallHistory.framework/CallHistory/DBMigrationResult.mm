@interface DBMigrationResult
- (DBMigrationResult)initWithErrorCode:(int64_t)a3 andDBVersion:(int64_t)a4;
@end

@implementation DBMigrationResult

- (DBMigrationResult)initWithErrorCode:(int64_t)a3 andDBVersion:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = DBMigrationResult;
  result = [(DBMigrationResult *)&v7 init];
  if (result)
  {
    result->_errorCode = a3;
    result->_dbVersion = a4;
  }

  return result;
}

@end