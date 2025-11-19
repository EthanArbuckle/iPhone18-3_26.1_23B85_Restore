@interface CHUISControlToggleOption
- (CHUISControlToggleOption)init;
- (void)setIcon:(id)a3;
- (void)setTint:(id)a3;
@end

@implementation CHUISControlToggleOption

- (void)setIcon:(id)a3
{
  v4 = *(self + OBJC_IVAR___CHUISControlToggleOption_icon);
  *(self + OBJC_IVAR___CHUISControlToggleOption_icon) = a3;
  v3 = a3;
}

- (void)setTint:(id)a3
{
  v4 = *(self + OBJC_IVAR___CHUISControlToggleOption_tint);
  *(self + OBJC_IVAR___CHUISControlToggleOption_tint) = a3;
  v3 = a3;
}

- (CHUISControlToggleOption)init
{
  v2 = (self + OBJC_IVAR___CHUISControlToggleOption_value);
  *v2 = 0;
  v2[1] = 0;
  *(self + OBJC_IVAR___CHUISControlToggleOption_icon) = 0;
  *(self + OBJC_IVAR___CHUISControlToggleOption_tint) = 0;
  v3 = (self + OBJC_IVAR___CHUISControlToggleOption_status);
  *v3 = 0;
  v3[1] = 0;
  v4 = (self + OBJC_IVAR___CHUISControlToggleOption_actionHint);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = CHUISControlToggleOption;
  return [(CHUISControlToggleOption *)&v6 init];
}

@end