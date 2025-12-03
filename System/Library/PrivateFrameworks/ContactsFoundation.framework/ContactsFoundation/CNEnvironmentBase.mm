@interface CNEnvironmentBase
+ (char)environmentStackKey;
+ (id)currentEnvironment;
+ (id)currentEnvironmentForKey:(void *)key;
+ (id)defaultEnvironment;
+ (id)defaultStack;
+ (id)effectiveReadingStackForKey:(void *)key;
+ (id)effectiveWritingStackForKey:(void *)key;
- (void)becomeCurrent;
- (void)resignCurrent;
@end

@implementation CNEnvironmentBase

+ (id)currentEnvironment
{
  environmentStackKey = [self environmentStackKey];

  return [self currentEnvironmentForKey:environmentStackKey];
}

+ (id)defaultStack
{
  if (defaultStack_cn_once_token_1 != -1)
  {
    +[CNEnvironmentBase defaultStack];
  }

  v3 = MEMORY[0x1E696AEC0];
  v4 = defaultStack_cn_once_object_1;
  v5 = [v3 stringWithUTF8String:{objc_msgSend(self, "environmentStackKey")}];
  v6 = [v4 objectForKey:v5 onCacheMiss:&__block_literal_global_5_2];

  return v6;
}

uint64_t __33__CNEnvironmentBase_defaultStack__block_invoke()
{
  defaultStack_cn_once_object_1 = +[CNCache atomicCache];

  return MEMORY[0x1EEE66BB8]();
}

CNStack *__33__CNEnvironmentBase_defaultStack__block_invoke_2()
{
  v0 = objc_alloc_init(CNStack);

  return v0;
}

+ (id)currentEnvironmentForKey:(void *)key
{
  v4 = [objc_opt_class() effectiveReadingStackForKey:key];
  peek = [v4 peek];
  defaultEnvironment = peek;
  if (!peek)
  {
    defaultEnvironment = [self defaultEnvironment];
  }

  return defaultEnvironment;
}

+ (id)defaultEnvironment
{
  v2 = CNAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

+ (id)effectiveReadingStackForKey:(void *)key
{
  v5 = dispatch_get_specific(key);
  defaultStack = v5;
  if (!v5)
  {
    v7 = dispatch_queue_get_specific(MEMORY[0x1E69E96A0], key);
    defaultStack = v7;
    if (!v7)
    {
      defaultStack = [self defaultStack];
    }
  }

  return defaultStack;
}

+ (id)effectiveWritingStackForKey:(void *)key
{
  v4 = dispatch_get_specific(key);
  v5 = v4;
  if (!v4)
  {
    v5 = objc_alloc_init(CNStack);
    v6 = dispatch_get_current_queue();
    dispatch_queue_set_specific(v6, key, v5, 0);
    objc_setAssociatedObject(v6, key, v5, 0x301);
  }

  return v5;
}

+ (char)environmentStackKey
{
  v2 = CNAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (void)becomeCurrent
{
  v3 = objc_opt_class();
  v4 = [v3 effectiveWritingStackForKey:{objc_msgSend(objc_opt_class(), "environmentStackKey")}];
  [v4 push:self];
}

- (void)resignCurrent
{
  v3 = objc_opt_class();
  v4 = [v3 effectiveReadingStackForKey:{objc_msgSend(objc_opt_class(), "environmentStackKey")}];
  [v4 removeObject:self];
}

@end