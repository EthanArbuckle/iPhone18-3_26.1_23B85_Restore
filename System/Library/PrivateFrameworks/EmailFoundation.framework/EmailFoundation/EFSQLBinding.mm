@interface EFSQLBinding
+ (id)bindingWithData:(id)a3;
+ (id)bindingWithDouble:(double)a3;
+ (id)bindingWithInt64:(int64_t)a3;
+ (id)bindingWithString:(id)a3;
+ (id)nullBinding;
- (void)bindToStatement:(id)a3 usingIndex:(unint64_t)a4;
- (void)bindToStatement:(id)a3 usingName:(id)a4;
@end

@implementation EFSQLBinding

+ (id)bindingWithString:(id)a3
{
  v3 = a3;
  v4 = [[_EFSQLStringBinding alloc] initWithString:v3];

  return v4;
}

+ (id)bindingWithData:(id)a3
{
  v3 = a3;
  v4 = [[_EFSQLDataBinding alloc] initWithData:v3];

  return v4;
}

+ (id)bindingWithInt64:(int64_t)a3
{
  v3 = [[_EFSQLInt64Binding alloc] initWithInt64:a3];

  return v3;
}

+ (id)bindingWithDouble:(double)a3
{
  v3 = [[_EFSQLDoubleBinding alloc] initWithDouble:a3];

  return v3;
}

+ (id)nullBinding
{
  v2 = objc_alloc_init(EFSQLBinding);

  return v2;
}

- (void)bindToStatement:(id)a3 usingIndex:(unint64_t)a4
{
  v10 = a3;
  v6 = [v10 compiled];
  v7 = sqlite3_bind_parameter_count(v6);
  if ((v7 & ~(v7 >> 31)) <= a4)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Index %lu beyond number of parameters in statement: %@", a4, v10];
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v8 userInfo:0];
    objc_exception_throw(v9);
  }

  [(EFSQLBinding *)self bindTo:v6 withSQLIndex:(a4 + 1)];
}

- (void)bindToStatement:(id)a3 usingName:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v12;
  v8 = [v12 compiled];
  v9 = sqlite3_bind_parameter_index(v8, [v6 UTF8String]);
  if (!v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Named parameter %@ not found in statement: %@", v6, v12];
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v10 userInfo:0];
    objc_exception_throw(v11);
  }

  [(EFSQLBinding *)self bindTo:v8 withSQLIndex:v9];
}

@end