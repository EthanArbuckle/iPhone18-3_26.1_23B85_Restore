@interface LNQueryRequestTargetBase
- (id)_init;
@end

@implementation LNQueryRequestTargetBase

- (id)_init
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"LNQueryRequestTargetBase cannot be initialized directly"];
    __break(1u);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = LNQueryRequestTargetBase;
    return [(LNQueryRequestTargetBase *)&v5 init];
  }

  return result;
}

@end