@interface _MSVSQLDatabaseTransactionSavepoint
- (void)dealloc;
@end

@implementation _MSVSQLDatabaseTransactionSavepoint

- (void)dealloc
{
  [(_MSVSQLDatabaseTransactionSavepoint *)self commit];
  v3.receiver = self;
  v3.super_class = _MSVSQLDatabaseTransactionSavepoint;
  [(_MSVSQLDatabaseTransactionSavepoint *)&v3 dealloc];
}

@end