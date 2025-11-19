@interface _FIUIHealthSettingsPickerView
- (void)layoutSubviews;
@end

@implementation _FIUIHealthSettingsPickerView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _FIUIHealthSettingsPickerView;
  [(_FIUIHealthSettingsPickerView *)&v3 layoutSubviews];
  _changeSeparatorLineColors(self);
}

@end