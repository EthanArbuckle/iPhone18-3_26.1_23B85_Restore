@interface UIBarButtonItem(HealthUI)
+ (id)hk_backButtonWithTitle:()HealthUI;
@end

@implementation UIBarButtonItem(HealthUI)

+ (id)hk_backButtonWithTitle:()HealthUI
{
  v3 = MEMORY[0x1E69DC708];
  v4 = a3;
  v5 = [[v3 alloc] initWithTitle:v4 style:0 target:0 action:0];

  return v5;
}

@end