@interface UIColor
@end

@implementation UIColor

id __66__UIColor_ChatKitAdditions__dynamicColorWithLightColor_darkColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = 32;
  if (v3 == 2)
  {
    v4 = 40;
  }

  v5 = *(a1 + v4);

  return v5;
}

@end