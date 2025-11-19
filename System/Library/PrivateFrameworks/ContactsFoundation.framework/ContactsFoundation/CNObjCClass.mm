@interface CNObjCClass
+ (BOOL)addMethod:(id)a3 toClass:(Class)a4;
+ (id)allMethodsOfClass:(Class)a3;
+ (id)classWithClass:(Class)a3;
+ (id)instanceMethodOfClass:(Class)a3 forSelector:(SEL)a4;
+ (void)enumerateMethodsOfClass:(Class)a3 withBlock:(id)a4;
- (BOOL)addMethod:(id)a3;
- (CNObjCClass)initWithClass:(Class)a3;
- (id)allMethods;
- (id)instanceMethodForSelector:(SEL)a3;
- (void)enumerateMethodsWithBlock:(id)a3;
@end

@implementation CNObjCClass

+ (id)classWithClass:(Class)a3
{
  v3 = [[a1 alloc] initWithClass:a3];

  return v3;
}

- (CNObjCClass)initWithClass:(Class)a3
{
  v8.receiver = self;
  v8.super_class = CNObjCClass;
  v4 = [(CNObjCClass *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_cls = a3;
    v6 = v4;
  }

  return v5;
}

+ (void)enumerateMethodsOfClass:(Class)a3 withBlock:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__CNObjCClass_enumerateMethodsOfClass_withBlock___block_invoke;
  v7[3] = &unk_1E6ED83D8;
  v8 = v5;
  v6 = v5;
  [CNObjCRuntimeAPI enumerateMethodsOfClass:a3 withBlock:v7];
}

void __49__CNObjCClass_enumerateMethodsOfClass_withBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [[CNObjCMethod alloc] initWithMethod:a2];
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v4);
}

- (void)enumerateMethodsWithBlock:(id)a3
{
  v4 = a3;
  [objc_opt_class() enumerateMethodsOfClass:self->_cls withBlock:v4];
}

+ (id)instanceMethodOfClass:(Class)a3 forSelector:(SEL)a4
{
  InstanceMethod = class_getInstanceMethod(a3, a4);
  if (InstanceMethod)
  {
    InstanceMethod = [[CNObjCMethod alloc] initWithMethod:InstanceMethod];
  }

  return InstanceMethod;
}

+ (id)allMethodsOfClass:(Class)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__CNObjCClass_allMethodsOfClass___block_invoke;
  v8[3] = &unk_1E6ED8400;
  v6 = v5;
  v9 = v6;
  [a1 enumerateMethodsOfClass:a3 withBlock:v8];

  return v6;
}

- (id)allMethods
{
  v3 = objc_opt_class();
  cls = self->_cls;

  return [v3 allMethodsOfClass:cls];
}

- (id)instanceMethodForSelector:(SEL)a3
{
  v5 = objc_opt_class();
  cls = self->_cls;

  return [v5 instanceMethodOfClass:cls forSelector:a3];
}

+ (BOOL)addMethod:(id)a3 toClass:(Class)a4
{
  v5 = a3;
  v6 = [v5 selector];
  v7 = [v5 implementation];
  v8 = [v5 typeEncoding];

  LOBYTE(a4) = class_addMethod(a4, v6, v7, [v8 UTF8String]);
  return a4;
}

- (BOOL)addMethod:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [objc_opt_class() addMethod:v4 toClass:self->_cls];

  return self;
}

@end