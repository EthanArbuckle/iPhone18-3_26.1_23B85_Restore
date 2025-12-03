@interface _EFSQLDoubleBinding
- (_EFSQLDoubleBinding)initWithDouble:(double)double;
- (void)bindTo:(sqlite3_stmt *)to withSQLIndex:(int)index;
@end

@implementation _EFSQLDoubleBinding

- (_EFSQLDoubleBinding)initWithDouble:(double)double
{
  v5.receiver = self;
  v5.super_class = _EFSQLDoubleBinding;
  result = [(_EFSQLDoubleBinding *)&v5 init];
  if (result)
  {
    result->_doubleValue = double;
  }

  return result;
}

- (void)bindTo:(sqlite3_stmt *)to withSQLIndex:(int)index
{
  [(_EFSQLDoubleBinding *)self doubleValue];

  sqlite3_bind_double(to, index, v6);
}

@end