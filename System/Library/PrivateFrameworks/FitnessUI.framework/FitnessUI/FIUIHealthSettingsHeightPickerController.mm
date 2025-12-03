@interface FIUIHealthSettingsHeightPickerController
- (id)_pickerDisplayStringForHeightForRow:(int64_t)row forComponent:(int64_t)component;
- (id)pickerView:(id)view attributedTitleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)numberOfComponentsInPickerView:(id)view;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)_heightPickerUpdated;
- (void)setHeightQuantity:(id)quantity;
@end

@implementation FIUIHealthSettingsHeightPickerController

- (int64_t)numberOfComponentsInPickerView:(id)view
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

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  isMetricLocale = [(FIUIHealthSettingsPickerController *)self isMetricLocale];
  v6 = 12;
  if (!component)
  {
    v6 = 9;
  }

  if (isMetricLocale)
  {
    return 246;
  }

  else
  {
    return v6;
  }
}

- (id)pickerView:(id)view attributedTitleForRow:(int64_t)row forComponent:(int64_t)component
{
  v5 = [(FIUIHealthSettingsHeightPickerController *)self _pickerDisplayStringForHeightForRow:row forComponent:component];
  v6 = _PickerStyledAttributedString(v5);

  return v6;
}

- (void)setHeightQuantity:(id)quantity
{
  quantityCopy = quantity;
  if (!quantityCopy)
  {
    v4 = MEMORY[0x1E696C348];
    v5 = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:5];
    quantityCopy = [v4 quantityWithUnit:v5 doubleValue:162.0];
  }

  if ([(FIUIHealthSettingsPickerController *)self isMetricLocale])
  {
    v6 = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:5];
    [quantityCopy doubleValueForUnit:v6];
    v8 = llround(v7);

    v9 = 30;
    if (v8 > 30)
    {
      v9 = v8;
    }

    v10 = v9 - 30;
    pickerView = [(FIUIHealthSettingsPickerController *)self pickerView];
    v12 = pickerView;
    v13 = v10;
    v14 = 0;
  }

  else
  {
    inchUnit = [MEMORY[0x1E696C510] inchUnit];
    [quantityCopy doubleValueForUnit:inchUnit];
    v17 = llround(v16);

    v18 = (v17 / 12);
    v19 = (v17 - 12 * v18) & ~((v17 - 12 * v18) >> 63);
    pickerView2 = [(FIUIHealthSettingsPickerController *)self pickerView];
    [pickerView2 selectRow:v18 - 1 inComponent:0 animated:0];

    pickerView = [(FIUIHealthSettingsPickerController *)self pickerView];
    v12 = pickerView;
    v13 = v19;
    v14 = 1;
  }

  [pickerView selectRow:v13 inComponent:v14 animated:0];
}

- (void)_heightPickerUpdated
{
  isMetricLocale = [(FIUIHealthSettingsPickerController *)self isMetricLocale];
  pickerView = [(FIUIHealthSettingsPickerController *)self pickerView];
  v5 = [pickerView selectedRowInComponent:0];
  v6 = v5;
  if (isMetricLocale)
  {
    v7 = v5 + 30;

    v8 = MEMORY[0x1E696C348];
    [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:5];
  }

  else
  {

    pickerView2 = [(FIUIHealthSettingsPickerController *)self pickerView];
    v10 = [pickerView2 selectedRowInComponent:1];

    v7 = v10 + 12 * v6 + 12;
    v8 = MEMORY[0x1E696C348];
    [MEMORY[0x1E696C510] inchUnit];
  }
  v11 = ;
  v14 = [v8 quantityWithUnit:v11 doubleValue:v7];

  heightUpdateHandler = [(FIUIHealthSettingsHeightPickerController *)self heightUpdateHandler];

  if (heightUpdateHandler)
  {
    heightUpdateHandler2 = [(FIUIHealthSettingsHeightPickerController *)self heightUpdateHandler];
    heightUpdateHandler2[2](heightUpdateHandler2, v14);
  }

  MEMORY[0x1EEE66BB8]();
}

- (id)_pickerDisplayStringForHeightForRow:(int64_t)row forComponent:(int64_t)component
{
  v7 = _HeightFormatterMediumStyle();
  isMetricLocale = [(FIUIHealthSettingsPickerController *)self isMetricLocale];
  v9 = component == 0;
  v10 = 1281;
  if (!component)
  {
    v10 = 1282;
  }

  if (isMetricLocale)
  {
    v9 = 30;
  }

  v11 = v9 + row;
  if (isMetricLocale)
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