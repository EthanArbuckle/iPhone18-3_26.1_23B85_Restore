@interface EFSQLBinding
+ (id)bindingWithData:(id)data;
+ (id)bindingWithDouble:(double)double;
+ (id)bindingWithInt64:(int64_t)int64;
+ (id)bindingWithString:(id)string;
+ (id)nullBinding;
- (void)bindToStatement:(id)statement usingIndex:(unint64_t)index;
- (void)bindToStatement:(id)statement usingName:(id)name;
@end

@implementation EFSQLBinding

+ (id)bindingWithString:(id)string
{
  stringCopy = string;
  v4 = [[_EFSQLStringBinding alloc] initWithString:stringCopy];

  return v4;
}

+ (id)bindingWithData:(id)data
{
  dataCopy = data;
  v4 = [[_EFSQLDataBinding alloc] initWithData:dataCopy];

  return v4;
}

+ (id)bindingWithInt64:(int64_t)int64
{
  v3 = [[_EFSQLInt64Binding alloc] initWithInt64:int64];

  return v3;
}

+ (id)bindingWithDouble:(double)double
{
  v3 = [[_EFSQLDoubleBinding alloc] initWithDouble:double];

  return v3;
}

+ (id)nullBinding
{
  v2 = objc_alloc_init(EFSQLBinding);

  return v2;
}

- (void)bindToStatement:(id)statement usingIndex:(unint64_t)index
{
  statementCopy = statement;
  compiled = [statementCopy compiled];
  v7 = sqlite3_bind_parameter_count(compiled);
  if ((v7 & ~(v7 >> 31)) <= index)
  {
    statementCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Index %lu beyond number of parameters in statement: %@", index, statementCopy];
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:statementCopy userInfo:0];
    objc_exception_throw(v9);
  }

  [(EFSQLBinding *)self bindTo:compiled withSQLIndex:(index + 1)];
}

- (void)bindToStatement:(id)statement usingName:(id)name
{
  statementCopy = statement;
  nameCopy = name;
  v7 = statementCopy;
  compiled = [statementCopy compiled];
  v9 = sqlite3_bind_parameter_index(compiled, [nameCopy UTF8String]);
  if (!v9)
  {
    statementCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Named parameter %@ not found in statement: %@", nameCopy, statementCopy];
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:statementCopy userInfo:0];
    objc_exception_throw(v11);
  }

  [(EFSQLBinding *)self bindTo:compiled withSQLIndex:v9];
}

@end