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
  mtui_startResumeButtonTextColor = [MEMORY[0x277D75348] mtui_startResumeButtonTextColor];
  v1 = [mtui_startResumeButtonTextColor colorWithAlphaComponent:0.2];

  return v1;
}

+ (id)mtui_pauseButtonTintColor
{
  mtui_pauseButtonTextColor = [MEMORY[0x277D75348] mtui_pauseButtonTextColor];
  v1 = [mtui_pauseButtonTextColor colorWithAlphaComponent:0.2];

  return v1;
}

+ (id)mtui_stopButtonTintColor
{
  mtui_stopButtonTextColor = [MEMORY[0x277D75348] mtui_stopButtonTextColor];
  v1 = [mtui_stopButtonTextColor colorWithAlphaComponent:0.2];

  return v1;
}

+ (id)mtui_lapResetButtonTintColor
{
  mtui_lapResetButtonTextColor = [MEMORY[0x277D75348] mtui_lapResetButtonTextColor];
  v1 = [mtui_lapResetButtonTextColor colorWithAlphaComponent:0.2];

  return v1;
}

+ (id)mtui_disabledStartButtonTintColor
{
  mtui_startResumeButtonTextColor = [MEMORY[0x277D75348] mtui_startResumeButtonTextColor];
  v1 = [mtui_startResumeButtonTextColor colorWithAlphaComponent:0.1];

  return v1;
}

@end