@interface FIUIHealthSettingsSexPickerController
- (id)pickerView:(id)view attributedTitleForRow:(int64_t)row forComponent:(int64_t)component;
- (void)_updateWithBiologicalSex:(int64_t)sex;
- (void)forceUpdate;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)setBiologicalSex:(int64_t)sex;
@end

@implementation FIUIHealthSettingsSexPickerController

- (void)forceUpdate
{
  pickerView = [(FIUIHealthSettingsPickerController *)self pickerView];
  -[FIUIHealthSettingsSexPickerController _updateWithBiologicalSex:](self, "_updateWithBiologicalSex:", -[FIUIHealthSettingsSexPickerController _biologicalSexForRow:](self, "_biologicalSexForRow:", [pickerView selectedRowInComponent:0]));
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  v6 = [(FIUIHealthSettingsSexPickerController *)self _biologicalSexForRow:row];

  [(FIUIHealthSettingsSexPickerController *)self _updateWithBiologicalSex:v6];
}

- (id)pickerView:(id)view attributedTitleForRow:(int64_t)row forComponent:(int64_t)component
{
  v5 = FIUIBiologicalSexDisplayString([(FIUIHealthSettingsSexPickerController *)self _biologicalSexForRow:row]);
  v6 = _PickerStyledAttributedString(v5);

  return v6;
}

- (void)_updateWithBiologicalSex:(int64_t)sex
{
  sexUpdateHandler = [(FIUIHealthSettingsSexPickerController *)self sexUpdateHandler];

  if (sexUpdateHandler)
  {
    sexUpdateHandler2 = [(FIUIHealthSettingsSexPickerController *)self sexUpdateHandler];
    sexUpdateHandler2[2](sexUpdateHandler2, sex);
  }
}

- (void)setBiologicalSex:(int64_t)sex
{
  pickerView = [(FIUIHealthSettingsPickerController *)self pickerView];
  [pickerView selectRow:sex inComponent:0 animated:0];
}

@end