@interface _EFSQLInt64Binding
- (_EFSQLInt64Binding)initWithInt64:(int64_t)int64;
- (void)bindTo:(sqlite3_stmt *)to withSQLIndex:(int)index;
@end

@implementation _EFSQLInt64Binding

- (_EFSQLInt64Binding)initWithInt64:(int64_t)int64
{
  v5.receiver = self;
  v5.super_class = _EFSQLInt64Binding;
  result = [(_EFSQLInt64Binding *)&v5 init];
  if (result)
  {
    result->_integerValue = int64;
  }

  return result;
}

- (void)bindTo:(sqlite3_stmt *)to withSQLIndex:(int)index
{
  integerValue = [(_EFSQLInt64Binding *)self integerValue];

  sqlite3_bind_int64(to, index, integerValue);
}

@end