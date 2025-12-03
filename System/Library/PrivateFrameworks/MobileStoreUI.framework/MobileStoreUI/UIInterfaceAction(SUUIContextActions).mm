@interface UIInterfaceAction(SUUIContextActions)
+ (id)actionWithTitle:()SUUIContextActions resource:handler:;
@end

@implementation UIInterfaceAction(SUUIContextActions)

+ (id)actionWithTitle:()SUUIContextActions resource:handler:
{
  v7 = MEMORY[0x277D75618];
  v8 = a4;
  v9 = [v7 actionWithTitle:a3 type:0 handler:a5];
  [v9 setTitleAlignment:4];
  _imageThatSuppressesAccessibilityHairlineThickening = [v8 _imageThatSuppressesAccessibilityHairlineThickening];

  [_imageThatSuppressesAccessibilityHairlineThickening size];
  v12 = [_imageThatSuppressesAccessibilityHairlineThickening imageWithAlignmentRectInsets:{(56.0 - v11) * -0.5, 0.0, (56.0 - v11) * -0.5, 0.0}];
  [v9 setTrailingImage:v12];

  return v9;
}

@end