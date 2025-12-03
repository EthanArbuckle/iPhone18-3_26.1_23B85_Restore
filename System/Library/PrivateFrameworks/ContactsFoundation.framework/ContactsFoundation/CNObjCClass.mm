@interface CNObjCClass
+ (BOOL)addMethod:(id)method toClass:(Class)class;
+ (id)allMethodsOfClass:(Class)class;
+ (id)classWithClass:(Class)class;
+ (id)instanceMethodOfClass:(Class)class forSelector:(SEL)selector;
+ (void)enumerateMethodsOfClass:(Class)class withBlock:(id)block;
- (BOOL)addMethod:(id)method;
- (CNObjCClass)initWithClass:(Class)class;
- (id)allMethods;
- (id)instanceMethodForSelector:(SEL)selector;
- (void)enumerateMethodsWithBlock:(id)block;
@end

@implementation CNObjCClass

+ (id)classWithClass:(Class)class
{
  v3 = [[self alloc] initWithClass:class];

  return v3;
}

- (CNObjCClass)initWithClass:(Class)class
{
  v8.receiver = self;
  v8.super_class = CNObjCClass;
  v4 = [(CNObjCClass *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_cls = class;
    v6 = v4;
  }

  return v5;
}

+ (void)enumerateMethodsOfClass:(Class)class withBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__CNObjCClass_enumerateMethodsOfClass_withBlock___block_invoke;
  v7[3] = &unk_1E6ED83D8;
  v8 = blockCopy;
  v6 = blockCopy;
  [CNObjCRuntimeAPI enumerateMethodsOfClass:class withBlock:v7];
}

void __49__CNObjCClass_enumerateMethodsOfClass_withBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [[CNObjCMethod alloc] initWithMethod:a2];
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v4);
}

- (void)enumerateMethodsWithBlock:(id)block
{
  blockCopy = block;
  [objc_opt_class() enumerateMethodsOfClass:self->_cls withBlock:blockCopy];
}

+ (id)instanceMethodOfClass:(Class)class forSelector:(SEL)selector
{
  InstanceMethod = class_getInstanceMethod(class, selector);
  if (InstanceMethod)
  {
    InstanceMethod = [[CNObjCMethod alloc] initWithMethod:InstanceMethod];
  }

  return InstanceMethod;
}

+ (id)allMethodsOfClass:(Class)class
{
  array = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__CNObjCClass_allMethodsOfClass___block_invoke;
  v8[3] = &unk_1E6ED8400;
  v6 = array;
  v9 = v6;
  [self enumerateMethodsOfClass:class withBlock:v8];

  return v6;
}

- (id)allMethods
{
  v3 = objc_opt_class();
  cls = self->_cls;

  return [v3 allMethodsOfClass:cls];
}

- (id)instanceMethodForSelector:(SEL)selector
{
  v5 = objc_opt_class();
  cls = self->_cls;

  return [v5 instanceMethodOfClass:cls forSelector:selector];
}

+ (BOOL)addMethod:(id)method toClass:(Class)class
{
  methodCopy = method;
  selector = [methodCopy selector];
  implementation = [methodCopy implementation];
  typeEncoding = [methodCopy typeEncoding];

  LOBYTE(class) = class_addMethod(class, selector, implementation, [typeEncoding UTF8String]);
  return class;
}

- (BOOL)addMethod:(id)method
{
  methodCopy = method;
  LOBYTE(self) = [objc_opt_class() addMethod:methodCopy toClass:self->_cls];

  return self;
}

@end