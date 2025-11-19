@interface HMBSQLCachedPreparedStatement
- (HMBSQLCachedPreparedStatement)initWithStatement:(sqlite3_stmt *)a3;
@end

@implementation HMBSQLCachedPreparedStatement

- (HMBSQLCachedPreparedStatement)initWithStatement:(sqlite3_stmt *)a3
{
  v5.receiver = self;
  v5.super_class = HMBSQLCachedPreparedStatement;
  result = [(HMBSQLCachedPreparedStatement *)&v5 init];
  if (result)
  {
    result->_statement = a3;
  }

  return result;
}

@end