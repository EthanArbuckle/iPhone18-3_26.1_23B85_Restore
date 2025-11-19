@interface LNPropertyQuery
- (id)_init;
@end

@implementation LNPropertyQuery

- (id)_init
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"LNPropertyQuery cannot be initialized directly"];
    __break(1u);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = LNPropertyQuery;
    return [(LNPropertyQuery *)&v5 init];
  }

  return result;
}

@end