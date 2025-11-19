@interface UIColor(FUSystemColorExtensions)
+ (id)fu_platterBlueColor;
+ (id)fu_platterGreenColor;
+ (id)fu_platterMintColor;
+ (id)fu_platterOrangeColor;
+ (id)fu_platterPinkColor;
+ (id)fu_platterPurpleColor;
+ (id)fu_platterRedColor;
+ (id)fu_platterTealBlueColor;
+ (id)fu_platterYellowColor;
@end

@implementation UIColor(FUSystemColorExtensions)

+ (id)fu_platterBlueColor
{
  v1 = [a1 fu_systemBlueColor];
  v2 = [v1 colorWithAlphaComponent:0.17];

  return v2;
}

+ (id)fu_platterGreenColor
{
  v1 = [a1 fu_systemGreenColor];
  v2 = [v1 colorWithAlphaComponent:0.14];

  return v2;
}

+ (id)fu_platterOrangeColor
{
  v1 = [a1 fu_systemOrangeColor];
  v2 = [v1 colorWithAlphaComponent:0.15];

  return v2;
}

+ (id)fu_platterRedColor
{
  v1 = [a1 fu_systemRedColor];
  v2 = [v1 colorWithAlphaComponent:0.17];

  return v2;
}

+ (id)fu_platterYellowColor
{
  v1 = [a1 fu_systemYellowColor];
  v2 = [v1 colorWithAlphaComponent:0.14];

  return v2;
}

+ (id)fu_platterPinkColor
{
  v1 = [a1 fu_systemPinkColor];
  v2 = [v1 colorWithAlphaComponent:0.17];

  return v2;
}

+ (id)fu_platterPurpleColor
{
  v1 = [a1 fu_systemPurpleColor];
  v2 = [v1 colorWithAlphaComponent:0.2];

  return v2;
}

+ (id)fu_platterTealBlueColor
{
  v1 = [a1 fu_systemTealBlueColor];
  v2 = [v1 colorWithAlphaComponent:0.15];

  return v2;
}

+ (id)fu_platterMintColor
{
  v1 = [a1 fu_systemMintColor];
  v2 = [v1 colorWithAlphaComponent:0.2];

  return v2;
}

@end