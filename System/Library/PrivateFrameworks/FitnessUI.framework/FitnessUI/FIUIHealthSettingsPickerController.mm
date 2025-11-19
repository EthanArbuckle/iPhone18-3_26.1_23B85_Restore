@interface FIUIHealthSettingsPickerController
- (FIUIHealthSettingsPickerController)init;
- (void)forceUpdate;
@end

@implementation FIUIHealthSettingsPickerController

- (FIUIHealthSettingsPickerController)init
{
  v8.receiver = self;
  v8.super_class = FIUIHealthSettingsPickerController;
  v2 = [(FIUIHealthSettingsPickerController *)&v8 init];
  if (v2)
  {
    v2->_isMetricLocale = _IsMetricLocale();
    v3 = objc_alloc(MEMORY[0x1E69DCD78]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    pickerView = v2->_pickerView;
    v2->_pickerView = v4;

    [(UIPickerView *)v2->_pickerView setDataSource:v2];
    [(UIPickerView *)v2->_pickerView setDelegate:v2];
    v6 = [MEMORY[0x1E69DC888] colorWithRed:0.109803922 green:0.109803922 blue:0.109803922 alpha:1.0];
    [(UIPickerView *)v2->_pickerView setBackgroundColor:v6];
  }

  return v2;
}

- (void)forceUpdate
{
  v4 = objc_opt_class();

  MEMORY[0x1EEDC70C8](self, a2, v4);
}

@end