@interface CHUISControlPickerOption
- (CHUISControlPickerOption)init;
- (void)setIcon:(id)icon;
- (void)setTint:(id)tint;
@end

@implementation CHUISControlPickerOption

- (void)setIcon:(id)icon
{
  v4 = *(self + OBJC_IVAR___CHUISControlPickerOption_icon);
  *(self + OBJC_IVAR___CHUISControlPickerOption_icon) = icon;
  iconCopy = icon;
}

- (void)setTint:(id)tint
{
  v4 = *(self + OBJC_IVAR___CHUISControlPickerOption_tint);
  *(self + OBJC_IVAR___CHUISControlPickerOption_tint) = tint;
  tintCopy = tint;
}

- (CHUISControlPickerOption)init
{
  v2 = (self + OBJC_IVAR___CHUISControlPickerOption_value);
  *v2 = 0;
  v2[1] = 0;
  *(self + OBJC_IVAR___CHUISControlPickerOption_icon) = 0;
  *(self + OBJC_IVAR___CHUISControlPickerOption_tint) = 0;
  v3 = (self + OBJC_IVAR___CHUISControlPickerOption_status);
  *v3 = 0;
  v3[1] = 0;
  v4 = (self + OBJC_IVAR___CHUISControlPickerOption_actionHint);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = CHUISControlPickerOption;
  return [(CHUISControlPickerOption *)&v6 init];
}

@end