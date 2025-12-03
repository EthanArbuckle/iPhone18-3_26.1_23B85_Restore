@interface SGSqliteWriteTransaction
- (SGSqliteWriteTransaction)initWithHandle:(id)handle;
@end

@implementation SGSqliteWriteTransaction

- (SGSqliteWriteTransaction)initWithHandle:(id)handle
{
  v4.receiver = self;
  v4.super_class = SGSqliteWriteTransaction;
  return [(SGSqliteReadTransaction *)&v4 initWithHandle:handle];
}

@end