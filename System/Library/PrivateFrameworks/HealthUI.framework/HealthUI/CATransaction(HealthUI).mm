@interface CATransaction(HealthUI)
+ (uint64_t)hk_performWithoutAnimations:()HealthUI;
@end

@implementation CATransaction(HealthUI)

+ (uint64_t)hk_performWithoutAnimations:()HealthUI
{
  v3 = MEMORY[0x1E6979518];
  v4 = a3;
  [v3 begin];
  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  v4[2](v4);

  v5 = MEMORY[0x1E6979518];

  return [v5 commit];
}

@end