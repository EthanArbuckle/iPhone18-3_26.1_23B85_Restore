@interface _EFSQLDataBinding
- (_EFSQLDataBinding)initWithData:(id)data;
@end

@implementation _EFSQLDataBinding

- (_EFSQLDataBinding)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = _EFSQLDataBinding;
  v5 = [(_EFSQLDataBinding *)&v9 init];
  if (v5)
  {
    v6 = [dataCopy copy];
    dataValue = v5->_dataValue;
    v5->_dataValue = v6;
  }

  return v5;
}

@end