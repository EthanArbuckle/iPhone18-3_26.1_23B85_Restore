@interface _EFSQLStringBinding
- (_EFSQLStringBinding)initWithString:(id)string;
@end

@implementation _EFSQLStringBinding

- (_EFSQLStringBinding)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = _EFSQLStringBinding;
  v5 = [(_EFSQLStringBinding *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

@end