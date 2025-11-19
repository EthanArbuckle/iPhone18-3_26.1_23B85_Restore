@interface UIButtonConfiguration
@end

@implementation UIButtonConfiguration

id __56__UIButtonConfiguration_IC__ic_plainButtonConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  if (UIAccessibilityButtonShapesEnabled())
  {
    [v2 setObject:&unk_1F4FC3FF0 forKeyedSubscript:*MEMORY[0x1E69DB758]];
  }

  v3 = [v2 copy];

  return v3;
}

@end