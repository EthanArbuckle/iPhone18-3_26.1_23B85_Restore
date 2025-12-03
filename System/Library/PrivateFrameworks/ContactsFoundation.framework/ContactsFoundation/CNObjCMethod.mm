@interface CNObjCMethod
+ (id)methodWithName:(id)name implementation:(void *)implementation typeEncoding:(id)encoding;
- (CNObjCMethod)initWithMethod:(objc_method *)method;
- (CNObjCMethod)initWithName:(id)name implementation:(void *)implementation typeEncoding:(id)encoding;
- (id)performOnObject:(id)object;
@end

@implementation CNObjCMethod

+ (id)methodWithName:(id)name implementation:(void *)implementation typeEncoding:(id)encoding
{
  encodingCopy = encoding;
  nameCopy = name;
  v10 = [[self alloc] initWithName:nameCopy implementation:implementation typeEncoding:encodingCopy];

  return v10;
}

- (CNObjCMethod)initWithMethod:(objc_method *)method
{
  Name = method_getName(method);
  v6 = NSStringFromSelector(Name);
  Implementation = method_getImplementation(method);
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:method_getTypeEncoding(method)];
  v9 = [(CNObjCMethod *)self initWithName:v6 implementation:Implementation typeEncoding:v8];

  return v9;
}

- (CNObjCMethod)initWithName:(id)name implementation:(void *)implementation typeEncoding:(id)encoding
{
  nameCopy = name;
  encodingCopy = encoding;
  v17.receiver = self;
  v17.super_class = CNObjCMethod;
  v10 = [(CNObjCMethod *)&v17 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v11;

    v10->_implementation = implementation;
    v13 = [encodingCopy copy];
    typeEncoding = v10->_typeEncoding;
    v10->_typeEncoding = v13;

    v15 = v10;
  }

  return v10;
}

- (id)performOnObject:(id)object
{
  objectCopy = object;
  v5 = [objectCopy -[CNObjCMethod selector](self];

  return v5;
}

@end