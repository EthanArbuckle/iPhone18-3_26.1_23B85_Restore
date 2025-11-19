@interface _EFSQLInt64Binding
- (_EFSQLInt64Binding)initWithInt64:(int64_t)a3;
- (void)bindTo:(sqlite3_stmt *)a3 withSQLIndex:(int)a4;
@end

@implementation _EFSQLInt64Binding

- (_EFSQLInt64Binding)initWithInt64:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _EFSQLInt64Binding;
  result = [(_EFSQLInt64Binding *)&v5 init];
  if (result)
  {
    result->_integerValue = a3;
  }

  return result;
}

- (void)bindTo:(sqlite3_stmt *)a3 withSQLIndex:(int)a4
{
  v6 = [(_EFSQLInt64Binding *)self integerValue];

  sqlite3_bind_int64(a3, a4, v6);
}

@end