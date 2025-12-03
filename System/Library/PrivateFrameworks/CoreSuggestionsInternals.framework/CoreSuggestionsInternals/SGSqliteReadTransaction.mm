@interface SGSqliteReadTransaction
- (SGSqliteReadTransaction)initWithHandle:(id)handle;
@end

@implementation SGSqliteReadTransaction

- (SGSqliteReadTransaction)initWithHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = SGSqliteReadTransaction;
  v6 = [(SGSqliteReadTransaction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_db, handle);
  }

  return v7;
}

@end