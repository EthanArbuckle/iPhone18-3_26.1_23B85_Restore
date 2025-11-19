@interface SYDegenerateChange
+ (BOOL)isDegenerate:(id)a3;
+ (id)degenerateChange;
@end

@implementation SYDegenerateChange

+ (id)degenerateChange
{
  if (degenerateChange_onceToken != -1)
  {
    +[SYDegenerateChange degenerateChange];
  }

  v3 = degenerateChange_instance;

  return v3;
}

uint64_t __38__SYDegenerateChange_degenerateChange__block_invoke()
{
  v0 = objc_alloc_init(SYDegenerateChange);
  v1 = degenerateChange_instance;
  degenerateChange_instance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)isDegenerate:(id)a3
{
  v3 = a3;
  v4 = +[SYDegenerateChange degenerateChange];

  return v4 == v3;
}

@end