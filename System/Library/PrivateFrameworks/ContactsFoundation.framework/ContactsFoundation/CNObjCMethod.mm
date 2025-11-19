@interface CNObjCMethod
+ (id)methodWithName:(id)a3 implementation:(void *)a4 typeEncoding:(id)a5;
- (CNObjCMethod)initWithMethod:(objc_method *)a3;
- (CNObjCMethod)initWithName:(id)a3 implementation:(void *)a4 typeEncoding:(id)a5;
- (id)performOnObject:(id)a3;
@end

@implementation CNObjCMethod

+ (id)methodWithName:(id)a3 implementation:(void *)a4 typeEncoding:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithName:v9 implementation:a4 typeEncoding:v8];

  return v10;
}

- (CNObjCMethod)initWithMethod:(objc_method *)a3
{
  Name = method_getName(a3);
  v6 = NSStringFromSelector(Name);
  Implementation = method_getImplementation(a3);
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:method_getTypeEncoding(a3)];
  v9 = [(CNObjCMethod *)self initWithName:v6 implementation:Implementation typeEncoding:v8];

  return v9;
}

- (CNObjCMethod)initWithName:(id)a3 implementation:(void *)a4 typeEncoding:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = CNObjCMethod;
  v10 = [(CNObjCMethod *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    name = v10->_name;
    v10->_name = v11;

    v10->_implementation = a4;
    v13 = [v9 copy];
    typeEncoding = v10->_typeEncoding;
    v10->_typeEncoding = v13;

    v15 = v10;
  }

  return v10;
}

- (id)performOnObject:(id)a3
{
  v4 = a3;
  v5 = [v4 -[CNObjCMethod selector](self];

  return v5;
}

@end