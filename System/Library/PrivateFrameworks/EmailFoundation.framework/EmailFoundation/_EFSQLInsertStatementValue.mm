@interface _EFSQLInsertStatementValue
- (void)initWithRequiredColumns:(void *)a1;
@end

@implementation _EFSQLInsertStatementValue

- (void)initWithRequiredColumns:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = _EFSQLInsertStatementValue;
    v5 = objc_msgSendSuper2(&v11, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = objc_opt_new();
      v7 = a1[2];
      a1[2] = v6;

      v8 = objc_opt_new();
      v9 = a1[3];
      a1[3] = v8;
    }
  }

  return a1;
}

@end