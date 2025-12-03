@interface HMBSQLCachedPreparedStatement
- (HMBSQLCachedPreparedStatement)initWithStatement:(sqlite3_stmt *)statement;
@end

@implementation HMBSQLCachedPreparedStatement

- (HMBSQLCachedPreparedStatement)initWithStatement:(sqlite3_stmt *)statement
{
  v5.receiver = self;
  v5.super_class = HMBSQLCachedPreparedStatement;
  result = [(HMBSQLCachedPreparedStatement *)&v5 init];
  if (result)
  {
    result->_statement = statement;
  }

  return result;
}

@end