@interface DCLiquidGlassConstants
+ (UIColor)backgroundColor;
+ (double)bottomPlacardSpacingToBottomPortrait;
+ (double)gradientBlurBarHeight;
+ (double)topPlacardSpacingFor:(id)a3 isPortrait:(BOOL)a4;
+ (double)topPlacardSpacingToTopLandscape;
- (_TtC14DocumentCamera22DCLiquidGlassConstants)init;
@end

@implementation DCLiquidGlassConstants

+ (UIColor)backgroundColor
{
  if (qword_27EEE1830 != -1)
  {
    swift_once();
  }

  v3 = qword_27EEE2090;

  return v3;
}

+ (double)topPlacardSpacingToTopLandscape
{
  if (qword_27EEE1848 != -1)
  {
    swift_once();
  }

  return *&qword_27EEE20B0 + 48.0;
}

+ (double)topPlacardSpacingFor:(id)a3 isPortrait:(BOOL)a4
{
  if (a4)
  {
    v5 = a3;
    v6 = 48.0;
  }

  else
  {
    v7 = qword_27EEE1848;
    v8 = a3;
    if (v7 != -1)
    {
      swift_once();
    }

    v6 = *&qword_27EEE20B0 + 48.0;
  }

  [a3 safeAreaInsets];
  v10 = v9;

  return v6 + v10;
}

+ (double)bottomPlacardSpacingToBottomPortrait
{
  if (qword_27EEE1850 != -1)
  {
    swift_once();
  }

  return *&qword_27EEE20C0 + 166.0;
}

+ (double)gradientBlurBarHeight
{
  if (qword_27EEE1840 != -1)
  {
    swift_once();
  }

  return *&qword_27EEE20A0;
}

- (_TtC14DocumentCamera22DCLiquidGlassConstants)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DCLiquidGlassConstants();
  return [(DCLiquidGlassConstants *)&v3 init];
}

@end