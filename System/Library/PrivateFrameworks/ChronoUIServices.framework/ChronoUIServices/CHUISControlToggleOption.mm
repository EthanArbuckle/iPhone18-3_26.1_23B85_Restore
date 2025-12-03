@interface CHUISControlToggleOption
- (CHUISControlToggleOption)init;
- (void)setIcon:(id)icon;
- (void)setTint:(id)tint;
@end

@implementation CHUISControlToggleOption

- (void)setIcon:(id)icon
{
  v4 = *(self + OBJC_IVAR___CHUISControlToggleOption_icon);
  *(self + OBJC_IVAR___CHUISControlToggleOption_icon) = icon;
  iconCopy = icon;
}

- (void)setTint:(id)tint
{
  v4 = *(self + OBJC_IVAR___CHUISControlToggleOption_tint);
  *(self + OBJC_IVAR___CHUISControlToggleOption_tint) = tint;
  tintCopy = tint;
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