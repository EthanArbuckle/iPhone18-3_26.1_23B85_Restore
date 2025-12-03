@interface FIUIHealthSettingsWeightPickerController
- (id)_weightDisplayStringForRow:(int64_t)row;
- (id)_weightQuantityForRow:(int64_t)row;
- (id)pickerView:(id)view attributedTitleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)numberOfRows;
- (void)_setDefaultValuesOnWeightPickerIfRequiredWithWeight:(id)weight;
- (void)_updateWithWeightQuantity:(id)quantity;
- (void)forceUpdate;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)setWeightQuantity:(id)quantity;
@end

@implementation FIUIHealthSettingsWeightPickerController

- (void)forceUpdate
{
  pickerView = [(FIUIHealthSettingsPickerController *)self pickerView];
  v3 = -[FIUIHealthSettingsWeightPickerController _weightQuantityForRow:](self, "_weightQuantityForRow:", [pickerView selectedRowInComponent:0]);
  [(FIUIHealthSettingsWeightPickerController *)self _updateWithWeightQuantity:v3];
}

- (int64_t)numberOfRows
{
  v2 = MEMORY[0x1E696C348];
  poundUnit = [MEMORY[0x1E696C510] poundUnit];
  v4 = [v2 quantityWithUnit:poundUnit doubleValue:1000.0];

  v5 = round(_WeightInLocaleUnit(v4));
  return (v5 - _RoundedMinWeightInLocaleUnit() + 1.0);
}

- (void)_setDefaultValuesOnWeightPickerIfRequiredWithWeight:(id)weight
{
  if (!weight)
  {
    v5 = _AvgWeightQuantity();
    v6 = round(_WeightInLocaleUnit(v5));

    v7 = (v6 - _RoundedMinWeightInLocaleUnit());
    pickerView = [(FIUIHealthSettingsPickerController *)self pickerView];
    [pickerView selectRow:v7 inComponent:0 animated:0];
  }
}

- (id)pickerView:(id)view attributedTitleForRow:(int64_t)row forComponent:(int64_t)component
{
  v5 = [(FIUIHealthSettingsWeightPickerController *)self _weightDisplayStringForRow:row];
  v6 = _PickerStyledAttributedString(v5);

  return v6;
}

- (id)_weightDisplayStringForRow:(int64_t)row
{
  v5 = _MassFormatter();
  [(FIUIHealthSettingsWeightPickerController *)self _weightInLocaleUnitForRow:row];
  v7 = [v5 stringFromValue:_LocaleWeightMassFormatterUnit() unit:v6];

  return v7;
}

- (id)_weightQuantityForRow:(int64_t)row
{
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromMassFormatterUnit:_LocaleWeightMassFormatterUnit()];
  [(FIUIHealthSettingsWeightPickerController *)self _weightInLocaleUnitForRow:row];
  v7 = [v5 quantityWithUnit:v6 doubleValue:?];

  return v7;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  v6 = [(FIUIHealthSettingsWeightPickerController *)self _weightQuantityForRow:row];
  [(FIUIHealthSettingsWeightPickerController *)self _updateWithWeightQuantity:v6];
}

- (void)setWeightQuantity:(id)quantity
{
  quantityCopy = quantity;
  if (!quantityCopy)
  {
    quantityCopy = _AvgWeightQuantity();
  }

  v10 = quantityCopy;
  v5 = [MEMORY[0x1E696C510] unitFromMassFormatterUnit:_LocaleWeightMassFormatterUnit()];
  [v10 doubleValueForUnit:v5];
  v7 = round(v6);

  v8 = (v7 - _RoundedMinWeightInLocaleUnit());
  if ((v8 & 0x8000000000000000) == 0 && [(FIUIHealthSettingsWeightPickerController *)self numberOfRows]> v8)
  {
    pickerView = [(FIUIHealthSettingsPickerController *)self pickerView];
    [pickerView selectRow:v8 inComponent:0 animated:0];
  }
}

- (void)_updateWithWeightQuantity:(id)quantity
{
  quantityCopy = quantity;
  weightUpdateHandler = [(FIUIHealthSettingsWeightPickerController *)self weightUpdateHandler];

  if (weightUpdateHandler)
  {
    weightUpdateHandler2 = [(FIUIHealthSettingsWeightPickerController *)self weightUpdateHandler];
    (weightUpdateHandler2)[2](weightUpdateHandler2, quantityCopy);
  }
}

@end