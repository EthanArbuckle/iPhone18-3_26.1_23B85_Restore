@interface UIFont(MRUDefaults)
+ (id)mru_ambientSubtitleFont;
+ (id)mru_ambientTimeFont;
+ (id)mru_ambientTitleFont;
+ (id)mru_buttonFont;
+ (id)mru_controlCenterLargeSubtitleFontWithScale:()MRUDefaults;
+ (id)mru_controlCenterLargeTitleFontWithScale:()MRUDefaults;
+ (id)mru_controlCenterMediumSubtitleFontWithScale:()MRUDefaults;
+ (id)mru_controlCenterMediumTitleFontWithScale:()MRUDefaults;
+ (id)mru_controlCenterMoreButtonTitleFontWithScale:()MRUDefaults;
+ (id)mru_controlCenterRouteButtonFontWithScale:()MRUDefaults;
+ (id)mru_controlCenterTitleFont;
+ (id)mru_expandedRouteFont;
+ (id)mru_routeFont;
+ (id)mru_routingHeaderFont;
+ (id)mru_smallSubtitleFont;
+ (id)mru_smallTitleFont;
+ (id)mru_suggestionsTitleFont;
+ (id)mru_timeFontWithScale:()MRUDefaults;
+ (id)mru_titleFont;
+ (id)mru_volumeButtonTitleFont;
@end

@implementation UIFont(MRUDefaults)

+ (id)mru_titleFont
{
  v0 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD40] maximumContentSizeCategory:*MEMORY[0x1E69DDC40]];
  v1 = MEMORY[0x1E69DB878];
  [v0 pointSize];
  v2 = [v1 systemFontOfSize:? weight:?];

  return v2;
}

+ (id)mru_routeFont
{
  v0 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD08] maximumContentSizeCategory:*MEMORY[0x1E69DDC40]];
  v1 = MEMORY[0x1E69DB878];
  [v0 pointSize];
  v2 = [v1 boldSystemFontOfSize:?];

  return v2;
}

+ (id)mru_smallTitleFont
{
  v0 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] maximumContentSizeCategory:*MEMORY[0x1E69DDC60]];
  v1 = MEMORY[0x1E69DB878];
  [v0 pointSize];
  v2 = [v1 systemFontOfSize:? weight:?];

  return v2;
}

+ (id)mru_smallSubtitleFont
{
  v0 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD00] maximumContentSizeCategory:*MEMORY[0x1E69DDC60]];
  v1 = MEMORY[0x1E69DB878];
  [v0 pointSize];
  v2 = [v1 systemFontOfSize:? weight:?];

  return v2;
}

+ (id)mru_expandedRouteFont
{
  v0 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD08] maximumContentSizeCategory:*MEMORY[0x1E69DDC60]];
  v1 = MEMORY[0x1E69DB878];
  [v0 pointSize];
  v2 = [v1 boldSystemFontOfSize:?];

  return v2;
}

+ (id)mru_timeFontWithScale:()MRUDefaults
{
  v2 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD10] maximumContentSizeCategory:*MEMORY[0x1E69DDC40]];
  v3 = MEMORY[0x1E69DB878];
  [v2 pointSize];
  v5 = [v3 monospacedDigitSystemFontOfSize:v4 * self weight:*MEMORY[0x1E69DB970]];

  return v5;
}

+ (id)mru_buttonFont
{
  v0 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD08] maximumContentSizeCategory:*MEMORY[0x1E69DDC58]];
  v1 = MEMORY[0x1E69DB878];
  [v0 pointSize];
  v2 = [v1 boldSystemFontOfSize:?];

  return v2;
}

+ (id)mru_controlCenterTitleFont
{
  v0 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] maximumContentSizeCategory:*MEMORY[0x1E69DDC40]];
  v1 = MEMORY[0x1E69DB878];
  [v0 pointSize];
  v2 = [v1 systemFontOfSize:? weight:?];

  return v2;
}

+ (id)mru_controlCenterMediumTitleFontWithScale:()MRUDefaults
{
  v2 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD90] maximumContentSizeCategory:*MEMORY[0x1E69DDC58]];
  v3 = MEMORY[0x1E69DB878];
  [v2 pointSize];
  v5 = [v3 systemFontOfSize:v4 * self weight:*MEMORY[0x1E69DB980]];

  return v5;
}

+ (id)mru_controlCenterMediumSubtitleFontWithScale:()MRUDefaults
{
  v2 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD90] maximumContentSizeCategory:*MEMORY[0x1E69DDC58]];
  v3 = v2;
  if (fabs(self + -1.0) > 2.22044605e-16)
  {
    v4 = MEMORY[0x1E69DB878];
    [v2 pointSize];
    v6 = [v4 systemFontOfSize:v5 * self];

    v3 = v6;
  }

  return v3;
}

+ (id)mru_controlCenterLargeTitleFontWithScale:()MRUDefaults
{
  v2 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] maximumContentSizeCategory:*MEMORY[0x1E69DDC40]];
  v3 = MEMORY[0x1E69DB878];
  [v2 pointSize];
  v5 = [v3 systemFontOfSize:v4 * self weight:*MEMORY[0x1E69DB980]];

  return v5;
}

+ (id)mru_controlCenterLargeSubtitleFontWithScale:()MRUDefaults
{
  v2 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] maximumContentSizeCategory:*MEMORY[0x1E69DDC40]];
  v3 = v2;
  if (fabs(self + -1.0) > 2.22044605e-16)
  {
    v4 = MEMORY[0x1E69DB878];
    [v2 pointSize];
    v6 = [v4 systemFontOfSize:v5 * self];

    v3 = v6;
  }

  return v3;
}

+ (id)mru_controlCenterRouteButtonFontWithScale:()MRUDefaults
{
  v2 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] maximumContentSizeCategory:*MEMORY[0x1E69DDC40]];
  v3 = v2;
  if (fabs(self + -1.0) > 2.22044605e-16)
  {
    v4 = MEMORY[0x1E69DB878];
    [v2 pointSize];
    v6 = [v4 systemFontOfSize:v5 * self];

    v3 = v6;
  }

  return v3;
}

+ (id)mru_controlCenterMoreButtonTitleFontWithScale:()MRUDefaults
{
  v2 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD10] maximumContentSizeCategory:*MEMORY[0x1E69DDC40]];
  v3 = v2;
  if (fabs(self + -1.0) > 2.22044605e-16)
  {
    v4 = MEMORY[0x1E69DB878];
    [v2 pointSize];
    v6 = [v4 systemFontOfSize:v5 * self];

    v3 = v6;
  }

  return v3;
}

+ (id)mru_suggestionsTitleFont
{
  v0 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD10] maximumContentSizeCategory:*MEMORY[0x1E69DDC70]];
  v1 = MEMORY[0x1E69DB878];
  [v0 pointSize];
  v2 = [v1 boldSystemFontOfSize:?];

  return v2;
}

+ (id)mru_routingHeaderFont
{
  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v1 = MEMORY[0x1E69DB878];
  [v0 pointSize];
  v2 = [v1 boldSystemFontOfSize:?];

  return v2;
}

+ (id)mru_volumeButtonTitleFont
{
  v0 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD08] maximumContentSizeCategory:*MEMORY[0x1E69DDC58]];
  v1 = MEMORY[0x1E69DB878];
  [v0 pointSize];
  v2 = [v1 boldSystemFontOfSize:?];

  return v2;
}

+ (id)mru_ambientTitleFont
{
  v0 = *MEMORY[0x1E69DDD58];
  v1 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD58] maximumContentSizeCategory:*MEMORY[0x1E69DDC60]];
  v2 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v0 weight:*MEMORY[0x1E69DB958]];
  [v1 pointSize];
  v3 = [v2 fontWithSize:?];

  return v3;
}

+ (id)mru_ambientSubtitleFont
{
  v0 = *MEMORY[0x1E69DDDC0];
  v1 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] maximumContentSizeCategory:*MEMORY[0x1E69DDC60]];
  v2 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v0 weight:*MEMORY[0x1E69DB980]];
  [v1 pointSize];
  v3 = [v2 fontWithSize:?];

  return v3;
}

+ (id)mru_ambientTimeFont
{
  v0 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD40] maximumContentSizeCategory:*MEMORY[0x1E69DDC60]];
  v1 = MEMORY[0x1E69DB878];
  [v0 pointSize];
  v2 = [v1 monospacedDigitSystemFontOfSize:? weight:?];

  return v2;
}

@end