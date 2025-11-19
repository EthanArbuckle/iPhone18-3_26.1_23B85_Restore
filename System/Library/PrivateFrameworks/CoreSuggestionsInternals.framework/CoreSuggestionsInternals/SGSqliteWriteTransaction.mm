@interface SGSqliteWriteTransaction
- (SGSqliteWriteTransaction)initWithHandle:(id)a3;
@end

@implementation SGSqliteWriteTransaction

- (SGSqliteWriteTransaction)initWithHandle:(id)a3
{
  v4.receiver = self;
  v4.super_class = SGSqliteWriteTransaction;
  return [(SGSqliteReadTransaction *)&v4 initWithHandle:a3];
}

@end