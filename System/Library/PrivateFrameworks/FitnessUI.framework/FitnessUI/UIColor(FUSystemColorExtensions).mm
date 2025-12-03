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
  fu_systemBlueColor = [self fu_systemBlueColor];
  v2 = [fu_systemBlueColor colorWithAlphaComponent:0.17];

  return v2;
}

+ (id)fu_platterGreenColor
{
  fu_systemGreenColor = [self fu_systemGreenColor];
  v2 = [fu_systemGreenColor colorWithAlphaComponent:0.14];

  return v2;
}

+ (id)fu_platterOrangeColor
{
  fu_systemOrangeColor = [self fu_systemOrangeColor];
  v2 = [fu_systemOrangeColor colorWithAlphaComponent:0.15];

  return v2;
}

+ (id)fu_platterRedColor
{
  fu_systemRedColor = [self fu_systemRedColor];
  v2 = [fu_systemRedColor colorWithAlphaComponent:0.17];

  return v2;
}

+ (id)fu_platterYellowColor
{
  fu_systemYellowColor = [self fu_systemYellowColor];
  v2 = [fu_systemYellowColor colorWithAlphaComponent:0.14];

  return v2;
}

+ (id)fu_platterPinkColor
{
  fu_systemPinkColor = [self fu_systemPinkColor];
  v2 = [fu_systemPinkColor colorWithAlphaComponent:0.17];

  return v2;
}

+ (id)fu_platterPurpleColor
{
  fu_systemPurpleColor = [self fu_systemPurpleColor];
  v2 = [fu_systemPurpleColor colorWithAlphaComponent:0.2];

  return v2;
}

+ (id)fu_platterTealBlueColor
{
  fu_systemTealBlueColor = [self fu_systemTealBlueColor];
  v2 = [fu_systemTealBlueColor colorWithAlphaComponent:0.15];

  return v2;
}

+ (id)fu_platterMintColor
{
  fu_systemMintColor = [self fu_systemMintColor];
  v2 = [fu_systemMintColor colorWithAlphaComponent:0.2];

  return v2;
}

@end