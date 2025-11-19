@interface FIUIHealthSettingsSexPickerController
- (id)pickerView:(id)a3 attributedTitleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (void)_updateWithBiologicalSex:(int64_t)a3;
- (void)forceUpdate;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)setBiologicalSex:(int64_t)a3;
@end

@implementation FIUIHealthSettingsSexPickerController

- (void)forceUpdate
{
  v3 = [(FIUIHealthSettingsPickerController *)self pickerView];
  -[FIUIHealthSettingsSexPickerController _updateWithBiologicalSex:](self, "_updateWithBiologicalSex:", -[FIUIHealthSettingsSexPickerController _biologicalSexForRow:](self, "_biologicalSexForRow:", [v3 selectedRowInComponent:0]));
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v6 = [(FIUIHealthSettingsSexPickerController *)self _biologicalSexForRow:a4];

  [(FIUIHealthSettingsSexPickerController *)self _updateWithBiologicalSex:v6];
}

- (id)pickerView:(id)a3 attributedTitleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v5 = FIUIBiologicalSexDisplayString([(FIUIHealthSettingsSexPickerController *)self _biologicalSexForRow:a4]);
  v6 = _PickerStyledAttributedString(v5);

  return v6;
}

- (void)_updateWithBiologicalSex:(int64_t)a3
{
  v5 = [(FIUIHealthSettingsSexPickerController *)self sexUpdateHandler];

  if (v5)
  {
    v6 = [(FIUIHealthSettingsSexPickerController *)self sexUpdateHandler];
    v6[2](v6, a3);
  }
}

- (void)setBiologicalSex:(int64_t)a3
{
  v4 = [(FIUIHealthSettingsPickerController *)self pickerView];
  [v4 selectRow:a3 inComponent:0 animated:0];
}

@end