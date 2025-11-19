@interface FIUIHealthSettingsWeightPickerController
- (id)_weightDisplayStringForRow:(int64_t)a3;
- (id)_weightQuantityForRow:(int64_t)a3;
- (id)pickerView:(id)a3 attributedTitleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)numberOfRows;
- (void)_setDefaultValuesOnWeightPickerIfRequiredWithWeight:(id)a3;
- (void)_updateWithWeightQuantity:(id)a3;
- (void)forceUpdate;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)setWeightQuantity:(id)a3;
@end

@implementation FIUIHealthSettingsWeightPickerController

- (void)forceUpdate
{
  v4 = [(FIUIHealthSettingsPickerController *)self pickerView];
  v3 = -[FIUIHealthSettingsWeightPickerController _weightQuantityForRow:](self, "_weightQuantityForRow:", [v4 selectedRowInComponent:0]);
  [(FIUIHealthSettingsWeightPickerController *)self _updateWithWeightQuantity:v3];
}

- (int64_t)numberOfRows
{
  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] poundUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:1000.0];

  v5 = round(_WeightInLocaleUnit(v4));
  return (v5 - _RoundedMinWeightInLocaleUnit() + 1.0);
}

- (void)_setDefaultValuesOnWeightPickerIfRequiredWithWeight:(id)a3
{
  if (!a3)
  {
    v5 = _AvgWeightQuantity();
    v6 = round(_WeightInLocaleUnit(v5));

    v7 = (v6 - _RoundedMinWeightInLocaleUnit());
    v8 = [(FIUIHealthSettingsPickerController *)self pickerView];
    [v8 selectRow:v7 inComponent:0 animated:0];
  }
}

- (id)pickerView:(id)a3 attributedTitleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v5 = [(FIUIHealthSettingsWeightPickerController *)self _weightDisplayStringForRow:a4];
  v6 = _PickerStyledAttributedString(v5);

  return v6;
}

- (id)_weightDisplayStringForRow:(int64_t)a3
{
  v5 = _MassFormatter();
  [(FIUIHealthSettingsWeightPickerController *)self _weightInLocaleUnitForRow:a3];
  v7 = [v5 stringFromValue:_LocaleWeightMassFormatterUnit() unit:v6];

  return v7;
}

- (id)_weightQuantityForRow:(int64_t)a3
{
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromMassFormatterUnit:_LocaleWeightMassFormatterUnit()];
  [(FIUIHealthSettingsWeightPickerController *)self _weightInLocaleUnitForRow:a3];
  v7 = [v5 quantityWithUnit:v6 doubleValue:?];

  return v7;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v6 = [(FIUIHealthSettingsWeightPickerController *)self _weightQuantityForRow:a4];
  [(FIUIHealthSettingsWeightPickerController *)self _updateWithWeightQuantity:v6];
}

- (void)setWeightQuantity:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = _AvgWeightQuantity();
  }

  v10 = v4;
  v5 = [MEMORY[0x1E696C510] unitFromMassFormatterUnit:_LocaleWeightMassFormatterUnit()];
  [v10 doubleValueForUnit:v5];
  v7 = round(v6);

  v8 = (v7 - _RoundedMinWeightInLocaleUnit());
  if ((v8 & 0x8000000000000000) == 0 && [(FIUIHealthSettingsWeightPickerController *)self numberOfRows]> v8)
  {
    v9 = [(FIUIHealthSettingsPickerController *)self pickerView];
    [v9 selectRow:v8 inComponent:0 animated:0];
  }
}

- (void)_updateWithWeightQuantity:(id)a3
{
  v6 = a3;
  v4 = [(FIUIHealthSettingsWeightPickerController *)self weightUpdateHandler];

  if (v4)
  {
    v5 = [(FIUIHealthSettingsWeightPickerController *)self weightUpdateHandler];
    (v5)[2](v5, v6);
  }
}

@end