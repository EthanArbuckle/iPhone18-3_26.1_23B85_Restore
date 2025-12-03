@interface CNTCCFactory
+ (Class)defaultClassForType:(int64_t)type;
+ (id)defaultTCCForType:(int64_t)type;
@end

@implementation CNTCCFactory

+ (id)defaultTCCForType:(int64_t)type
{
  if (type)
  {
    if (type != 1)
    {
      v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"unrecognized CNTCCType" userInfo:0];
      objc_exception_throw(v6);
    }

    v3 = off_1E6ED4748;
  }

  else
  {
    v3 = off_1E6ED4740;
  }

  v4 = objc_alloc_init(*v3);

  return v4;
}

+ (Class)defaultClassForType:(int64_t)type
{
  if (type)
  {
    if (type != 1)
    {
      v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"unrecognized CNTCCType" userInfo:0];
      objc_exception_throw(v7);
    }

    v3 = off_1E6ED4748;
  }

  else
  {
    v3 = off_1E6ED4740;
  }

  v4 = *v3;
  v5 = objc_opt_class();

  return v5;
}

@end