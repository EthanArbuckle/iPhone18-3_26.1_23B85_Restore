@interface UIColor(DC)
+ (id)colorInBundleWithName:()DC;
+ (id)dc_barColor;
+ (id)dc_darkerAccessibilityColorForColor:()DC;
+ (id)dc_editBackgroundColor;
+ (id)dc_labelBackgroundColor;
- (id)dc_lighterColor;
@end

@implementation UIColor(DC)

+ (id)dc_darkerAccessibilityColorForColor:()DC
{
  v8 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0.0;
  [a3 getHue:&v8 saturation:&v7 brightness:&v6 alpha:&v5];
  v3 = [MEMORY[0x277D75348] colorWithHue:v8 saturation:v7 brightness:v6 * 0.8 alpha:v5];

  return v3;
}

+ (id)colorInBundleWithName:()DC
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [MEMORY[0x277D75348] colorNamed:v4 inBundle:v5 compatibleWithTraitCollection:0];

  return v6;
}

+ (id)dc_barColor
{
  if (DCDebugInterfaceEnabled())
  {
    v2 = 0;
  }

  else
  {
    v2 = [self colorInBundleWithName:@"bar_color"];
  }

  return v2;
}

+ (id)dc_editBackgroundColor
{
  if (DCDebugInterfaceEnabled())
  {
    v2 = 0;
  }

  else
  {
    v2 = [self colorInBundleWithName:@"edit_background_color"];
  }

  return v2;
}

+ (id)dc_labelBackgroundColor
{
  if (DCDebugInterfaceEnabled())
  {
    v2 = 0;
  }

  else
  {
    v2 = [self colorInBundleWithName:@"label_background_color"];
  }

  return v2;
}

- (id)dc_lighterColor
{
  v6 = 0.0;
  v4 = 0;
  v5 = 0.0;
  v3 = 0.0;
  [self getHue:&v6 saturation:&v5 brightness:&v4 alpha:&v3];
  v1 = [MEMORY[0x277D75348] colorWithHue:v6 saturation:v5 brightness:1.0 alpha:v3];

  return v1;
}

@end