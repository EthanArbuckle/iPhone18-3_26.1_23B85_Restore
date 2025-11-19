@interface HKSimpleDataEntryWeightItem
- (HKSimpleDataEntryWeightItem)initWithTitle:(id)a3 registrantModelKey:(id)a4 weightInKg:(id)a5 defaultWeightInKg:(id)a6;
- (id)_formattedValueForDisplay;
- (id)cell;
- (id)formattedKeyAndValue;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (void)_setTextForInputTextField:(id)a3;
- (void)_setWeightValueForSelectedRow:(int64_t)a3;
- (void)_setupPlaceholder;
- (void)_updateLocaleDependentValues;
- (void)_valueDidChange;
- (void)beginEditing;
- (void)localeDidChange:(id)a3;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)updateCellDisplay;
@end

@implementation HKSimpleDataEntryWeightItem

- (HKSimpleDataEntryWeightItem)initWithTitle:(id)a3 registrantModelKey:(id)a4 weightInKg:(id)a5 defaultWeightInKg:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = HKSimpleDataEntryWeightItem;
  v15 = [(HKSimpleDataEntryWeightItem *)&v22 init];
  v16 = v15;
  if (v15)
  {
    [(HKSimpleDataEntryWeightItem *)v15 _updateLocaleDependentValues];
    objc_storeStrong(&v16->_title, a3);
    objc_storeStrong(&v16->_registrantModelKey, a4);
    v17 = v14;
    if (!v14)
    {
      v18 = MEMORY[0x1E696AD98];
      [(HKSimpleDataEntryWeightItem *)v16 _defaultKilogramValue];
      v17 = [v18 numberWithDouble:?];
    }

    objc_storeStrong(&v16->_defaultValue, v17);
    if (!v14)
    {
    }

    v19 = ClampedWeightLoggingOutOfBoundsValues(v13);
    kilogramValue = v16->_kilogramValue;
    v16->_kilogramValue = v19;
  }

  return v16;
}

- (id)formattedKeyAndValue
{
  v6[1] = *MEMORY[0x1E69E9840];
  kilogramValue = self->_kilogramValue;
  registrantModelKey = self->_registrantModelKey;
  v6[0] = kilogramValue;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&registrantModelKey count:1];

  return v3;
}

- (id)cell
{
  cell = self->_cell;
  if (!cell)
  {
    v4 = [[HKSimpleDataEntryPlainTextCell alloc] initWithIntention:9 reuseIdentifier:0];
    v5 = self->_cell;
    self->_cell = v4;

    v6 = [(HKSimpleDataEntryPlainTextCell *)self->_cell titleLabel];
    [v6 setText:self->_title];

    v7 = objc_alloc_init(MEMORY[0x1E69DCD78]);
    picker = self->_picker;
    self->_picker = v7;

    [(UIPickerView *)self->_picker setDelegate:self];
    [(UIPickerView *)self->_picker setDataSource:self];
    kilogramValue = self->_kilogramValue;
    if (!kilogramValue)
    {
      kilogramValue = self->_defaultValue;
    }

    [(NSNumber *)kilogramValue doubleValue];
    localWeightUnit = self->_localWeightUnit;
    if (localWeightUnit == 1538)
    {
      v12 = v10 / 0.453592;
    }

    else if (localWeightUnit == 1539)
    {
      v12 = v10 / 6.35029 * 10.0;
    }

    else
    {
      v12 = v10 + v10;
    }

    [(UIPickerView *)self->_picker selectRow:llround(v12) inComponent:0 animated:0];
    v13 = [HKHostingAreaLayoutView viewHostingView:self->_picker];
    v14 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    [v14 setInputView:v13];

    v15 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v16 = [(HKSimpleDataEntryItem *)self accessoryToolbar];
    [v15 setInputAccessoryView:v16];

    [(HKSimpleDataEntryWeightItem *)self _setupPlaceholder];
    [(HKSimpleDataEntryWeightItem *)self updateCellDisplay];
    cell = self->_cell;
  }

  return cell;
}

- (void)updateCellDisplay
{
  v3 = [(HKSimpleDataEntryWeightItem *)self _formattedValueForDisplay];
  [(HKSimpleDataEntryWeightItem *)self _setTextForInputTextField:v3];
}

- (id)_formattedValueForDisplay
{
  if (self->_kilogramValue)
  {
    v3 = +[HKPersonWeightFormatter sharedFormatter];
    v4 = [v3 stringFromWeightInKilograms:self->_kilogramValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)beginEditing
{
  v3.receiver = self;
  v3.super_class = HKSimpleDataEntryWeightItem;
  [(HKSimpleDataEntryItem *)&v3 beginEditing];
  if (!self->_kilogramValue)
  {
    [(HKSimpleDataEntryWeightItem *)self _setWeightValueForSelectedRow:[(UIPickerView *)self->_picker selectedRowInComponent:0]];
    [(HKSimpleDataEntryWeightItem *)self _valueDidChange];
  }
}

- (void)_setupPlaceholder
{
  if (![(HKSimpleDataEntryItem *)self placeholderType])
  {
    v3 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:@"OD_PLACEHOLDER_OPTIONAL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [v3 setPlaceholder:v5];
  }

  [(HKSimpleDataEntryWeightItem *)self _setTextForInputTextField:0];
}

- (void)_setTextForInputTextField:(id)a3
{
  v11 = a3;
  if (-[HKSimpleDataEntryItem placeholderType](self, "placeholderType") == 1 && ![v11 length])
  {
    v8 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v10 = [v9 localizedStringForKey:@"OD_PICKER_CHOOSE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [v8 setText:v10];

    v5 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v6 = HKHealthKeyColor();
  }

  else
  {
    v4 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    [v4 setText:v11];

    v5 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v6 = [MEMORY[0x1E69DC888] labelColor];
  }

  v7 = v6;
  [v5 setTextColor:v6];
}

- (void)_valueDidChange
{
  [(HKSimpleDataEntryWeightItem *)self updateCellDisplay];
  v3 = [(HKSimpleDataEntryItem *)self delegate];
  [v3 dataEntryItemDidUpdateValue:self];
}

- (void)_updateLocaleDependentValues
{
  v3 = +[HKPersonWeightFormatter sharedFormatter];
  self->_localWeightUnit = [v3 localWeightUnit];

  localWeightUnit = self->_localWeightUnit;
  v5 = 1451;
  if (localWeightUnit == 14)
  {
    v5 = 1316;
  }

  v6 = localWeightUnit == 1539;
  v7 = 1036;
  if (!v6)
  {
    v7 = v5;
  }

  self->_numberOfRowsForPicker = v7;
}

- (void)localeDidChange:(id)a3
{
  [(HKSimpleDataEntryWeightItem *)self _updateLocaleDependentValues];

  [(HKSimpleDataEntryWeightItem *)self updateCellDisplay];
}

- (void)_setWeightValueForSelectedRow:(int64_t)a3
{
  localWeightUnit = self->_localWeightUnit;
  v5 = a3;
  if (localWeightUnit == 1538)
  {
    v6 = 0.453592;
  }

  else if (localWeightUnit == 1539)
  {
    v5 = v5 / 10.0;
    v6 = 6.35029;
  }

  else
  {
    v6 = 0.5;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v5 * v6];
  v7 = ClampedWeightLoggingOutOfBoundsValues(v9);
  kilogramValue = self->_kilogramValue;
  self->_kilogramValue = v7;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v6 = a4;
  localWeightUnit = self->_localWeightUnit;
  if (localWeightUnit == 14)
  {
    v6 = v6 * 0.5;
  }

  else if (localWeightUnit == 1539)
  {
    v6 = v6 / 10.0;
  }

  v8 = +[HKPersonWeightFormatter sharedFormatter];
  v9 = [v8 stringFromWeightValue:self->_localWeightUnit inUnit:v6];

  return v9;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  [(HKSimpleDataEntryWeightItem *)self _setWeightValueForSelectedRow:a4];

  [(HKSimpleDataEntryWeightItem *)self _valueDidChange];
}

@end