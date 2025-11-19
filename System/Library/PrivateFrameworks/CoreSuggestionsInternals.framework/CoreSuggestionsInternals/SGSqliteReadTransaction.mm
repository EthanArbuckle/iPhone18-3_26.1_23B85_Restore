@interface SGSqliteReadTransaction
- (SGSqliteReadTransaction)initWithHandle:(id)a3;
@end

@implementation SGSqliteReadTransaction

- (SGSqliteReadTransaction)initWithHandle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SGSqliteReadTransaction;
  v6 = [(SGSqliteReadTransaction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_db, a3);
  }

  return v7;
}

@end