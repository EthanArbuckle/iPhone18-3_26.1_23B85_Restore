@interface FIUIHealthSettingsHeightPickerController
- (id)_pickerDisplayStringForHeightForRow:(int64_t)a3 forComponent:(int64_t)a4;
- (id)pickerView:(id)a3 attributedTitleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)numberOfComponentsInPickerView:(id)a3;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)_heightPickerUpdated;
- (void)setHeightQuantity:(id)a3;
@end

@implementation FIUIHealthSettingsHeightPickerController

- (int64_t)numberOfComponentsInPickerView:(id)a3
{
  if ([(FIUIHealthSettingsPickerController *)self isMetricLocale])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v5 = [(FIUIHealthSettingsPickerController *)self isMetricLocale];
  v6 = 12;
  if (!a4)
  {
    v6 = 9;
  }

  if (v5)
  {
    return 246;
  }

  else
  {
    return v6;
  }
}

- (id)pickerView:(id)a3 attributedTitleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v5 = [(FIUIHealthSettingsHeightPickerController *)self _pickerDisplayStringForHeightForRow:a4 forComponent:a5];
  v6 = _PickerStyledAttributedString(v5);

  return v6;
}

- (void)setHeightQuantity:(id)a3
{
  v21 = a3;
  if (!v21)
  {
    v4 = MEMORY[0x1E696C348];
    v5 = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:5];
    v21 = [v4 quantityWithUnit:v5 doubleValue:162.0];
  }

  if ([(FIUIHealthSettingsPickerController *)self isMetricLocale])
  {
    v6 = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:5];
    [v21 doubleValueForUnit:v6];
    v8 = llround(v7);

    v9 = 30;
    if (v8 > 30)
    {
      v9 = v8;
    }

    v10 = v9 - 30;
    v11 = [(FIUIHealthSettingsPickerController *)self pickerView];
    v12 = v11;
    v13 = v10;
    v14 = 0;
  }

  else
  {
    v15 = [MEMORY[0x1E696C510] inchUnit];
    [v21 doubleValueForUnit:v15];
    v17 = llround(v16);

    v18 = (v17 / 12);
    v19 = (v17 - 12 * v18) & ~((v17 - 12 * v18) >> 63);
    v20 = [(FIUIHealthSettingsPickerController *)self pickerView];
    [v20 selectRow:v18 - 1 inComponent:0 animated:0];

    v11 = [(FIUIHealthSettingsPickerController *)self pickerView];
    v12 = v11;
    v13 = v19;
    v14 = 1;
  }

  [v11 selectRow:v13 inComponent:v14 animated:0];
}

- (void)_heightPickerUpdated
{
  v3 = [(FIUIHealthSettingsPickerController *)self isMetricLocale];
  v4 = [(FIUIHealthSettingsPickerController *)self pickerView];
  v5 = [v4 selectedRowInComponent:0];
  v6 = v5;
  if (v3)
  {
    v7 = v5 + 30;

    v8 = MEMORY[0x1E696C348];
    [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:5];
  }

  else
  {

    v9 = [(FIUIHealthSettingsPickerController *)self pickerView];
    v10 = [v9 selectedRowInComponent:1];

    v7 = v10 + 12 * v6 + 12;
    v8 = MEMORY[0x1E696C348];
    [MEMORY[0x1E696C510] inchUnit];
  }
  v11 = ;
  v14 = [v8 quantityWithUnit:v11 doubleValue:v7];

  v12 = [(FIUIHealthSettingsHeightPickerController *)self heightUpdateHandler];

  if (v12)
  {
    v13 = [(FIUIHealthSettingsHeightPickerController *)self heightUpdateHandler];
    v13[2](v13, v14);
  }

  MEMORY[0x1EEE66BB8]();
}

- (id)_pickerDisplayStringForHeightForRow:(int64_t)a3 forComponent:(int64_t)a4
{
  v7 = _HeightFormatterMediumStyle();
  v8 = [(FIUIHealthSettingsPickerController *)self isMetricLocale];
  v9 = a4 == 0;
  v10 = 1281;
  if (!a4)
  {
    v10 = 1282;
  }

  if (v8)
  {
    v9 = 30;
  }

  v11 = v9 + a3;
  if (v8)
  {
    v12 = 9;
  }

  else
  {
    v12 = v10;
  }

  v13 = [v7 stringFromValue:v12 unit:v11];

  return v13;
}

@end