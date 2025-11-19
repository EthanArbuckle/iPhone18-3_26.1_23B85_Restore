@interface _EFSQLDataBinding
- (_EFSQLDataBinding)initWithData:(id)a3;
@end

@implementation _EFSQLDataBinding

- (_EFSQLDataBinding)initWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _EFSQLDataBinding;
  v5 = [(_EFSQLDataBinding *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    dataValue = v5->_dataValue;
    v5->_dataValue = v6;
  }

  return v5;
}

@end