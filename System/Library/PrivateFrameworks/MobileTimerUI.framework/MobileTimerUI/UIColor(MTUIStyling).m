@interface UIColor(MTUIStyling)
+ (id)mtui_disabledStartButtonTintColor;
+ (id)mtui_lapResetButtonTintColor;
+ (id)mtui_pauseButtonTintColor;
+ (id)mtui_startResumeButtonTintColor;
+ (id)mtui_stopButtonTintColor;
@end

@implementation UIColor(MTUIStyling)

+ (id)mtui_startResumeButtonTintColor
{
  v0 = [MEMORY[0x277D75348] mtui_startResumeButtonTextColor];
  v1 = [v0 colorWithAlphaComponent:0.2];

  return v1;
}

+ (id)mtui_pauseButtonTintColor
{
  v0 = [MEMORY[0x277D75348] mtui_pauseButtonTextColor];
  v1 = [v0 colorWithAlphaComponent:0.2];

  return v1;
}

+ (id)mtui_stopButtonTintColor
{
  v0 = [MEMORY[0x277D75348] mtui_stopButtonTextColor];
  v1 = [v0 colorWithAlphaComponent:0.2];

  return v1;
}

+ (id)mtui_lapResetButtonTintColor
{
  v0 = [MEMORY[0x277D75348] mtui_lapResetButtonTextColor];
  v1 = [v0 colorWithAlphaComponent:0.2];

  return v1;
}

+ (id)mtui_disabledStartButtonTintColor
{
  v0 = [MEMORY[0x277D75348] mtui_startResumeButtonTextColor];
  v1 = [v0 colorWithAlphaComponent:0.1];

  return v1;
}

@end