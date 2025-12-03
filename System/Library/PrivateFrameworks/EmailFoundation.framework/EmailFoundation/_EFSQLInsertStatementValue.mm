@interface _EFSQLInsertStatementValue
- (void)initWithRequiredColumns:(void *)columns;
@end

@implementation _EFSQLInsertStatementValue

- (void)initWithRequiredColumns:(void *)columns
{
  v4 = a2;
  if (columns)
  {
    v11.receiver = columns;
    v11.super_class = _EFSQLInsertStatementValue;
    v5 = objc_msgSendSuper2(&v11, sel_init);
    columns = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = objc_opt_new();
      v7 = columns[2];
      columns[2] = v6;

      v8 = objc_opt_new();
      v9 = columns[3];
      columns[3] = v8;
    }
  }

  return columns;
}

@end