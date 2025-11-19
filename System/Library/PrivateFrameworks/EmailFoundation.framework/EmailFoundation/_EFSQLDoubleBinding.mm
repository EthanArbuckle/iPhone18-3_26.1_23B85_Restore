@interface _EFSQLDoubleBinding
- (_EFSQLDoubleBinding)initWithDouble:(double)a3;
- (void)bindTo:(sqlite3_stmt *)a3 withSQLIndex:(int)a4;
@end

@implementation _EFSQLDoubleBinding

- (_EFSQLDoubleBinding)initWithDouble:(double)a3
{
  v5.receiver = self;
  v5.super_class = _EFSQLDoubleBinding;
  result = [(_EFSQLDoubleBinding *)&v5 init];
  if (result)
  {
    result->_doubleValue = a3;
  }

  return result;
}

- (void)bindTo:(sqlite3_stmt *)a3 withSQLIndex:(int)a4
{
  [(_EFSQLDoubleBinding *)self doubleValue];

  sqlite3_bind_double(a3, a4, v6);
}

@end