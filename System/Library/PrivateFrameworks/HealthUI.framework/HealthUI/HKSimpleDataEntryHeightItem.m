@interface HKSimpleDataEntryHeightItem
- (HKSimpleDataEntryHeightItem)initWithTitle:(id)a3 registrantModelKey:(id)a4 heightInCm:(id)a5 defaultHeightInCm:(id)a6;
- (double)_defaultCentimeterValue;
- (double)pickerView:(id)a3 widthForComponent:(int64_t)a4;
- (id)_formattedValueForDisplay;
- (id)cell;
- (id)formattedKeyAndValue;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)_setHeightValueForPicker:(id)a3 selectedRow:(int64_t)a4;
- (void)_setTextForInputTextField:(id)a3;
- (void)_setupPlaceholder;
- (void)_updateLocaleDependentValues;
- (void)_valueDidChange;
- (void)beginEditing;
- (void)doneButtonTapped:(id)a3;
- (void)localeDidChange:(id)a3;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)updateCellDisplay;
@end

@implementation HKSimpleDataEntryHeightItem

- (HKSimpleDataEntryHeightItem)initWithTitle:(id)a3 registrantModelKey:(id)a4 heightInCm:(id)a5 defaultHeightInCm:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = HKSimpleDataEntryHeightItem;
  v15 = [(HKSimpleDataEntryHeightItem *)&v20 init];
  v16 = v15;
  if (v15)
  {
    [(HKSimpleDataEntryHeightItem *)v15 _updateLocaleDependentValues];
    objc_storeStrong(&v16->_title, a3);
    objc_storeStrong(&v16->_registrantModelKey, a4);
    v17 = v14;
    if (!v14)
    {
      v18 = MEMORY[0x1E696AD98];
      [(HKSimpleDataEntryHeightItem *)v16 _defaultCentimeterValue];
      v17 = [v18 numberWithDouble:?];
    }

    objc_storeStrong(&v16->_defaultValue, v17);
    if (!v14)
    {
    }

    objc_storeStrong(&v16->_centimeterValue, a5);
  }

  return v16;
}

- (double)_defaultCentimeterValue
{
  result = 168.0;
  if (self->_usesImperialUnits)
  {
    return 167.64;
  }

  return result;
}

- (id)formattedKeyAndValue
{
  v6[1] = *MEMORY[0x1E69E9840];
  centimeterValue = self->_centimeterValue;
  registrantModelKey = self->_registrantModelKey;
  v6[0] = centimeterValue;
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
    [(UIPickerView *)self->_picker reloadAllComponents];
    centimeterValue = self->_centimeterValue;
    if (!centimeterValue)
    {
      centimeterValue = self->_defaultValue;
    }

    [(NSNumber *)centimeterValue doubleValue];
    v11 = v10;
    if (self->_usesImperialUnits)
    {
      v21 = 0;
      v22 = 0;
      v12 = +[HKPersonHeightFormatter sharedFormatter];
      [v12 getFeet:&v22 inches:&v21 fromCentimeters:v11];

      [(UIPickerView *)self->_picker selectRow:v22 inComponent:0 animated:0];
      v13 = self->_picker;
      v14 = v21;
      v15 = 1;
    }

    else
    {
      v13 = self->_picker;
      v14 = v10;
      v15 = 0;
    }

    [(UIPickerView *)v13 selectRow:v14 inComponent:v15 animated:0];
    v16 = [HKHostingAreaLayoutView viewHostingView:self->_picker];
    v17 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    [v17 setInputView:v16];

    v18 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v19 = [(HKSimpleDataEntryItem *)self accessoryToolbar];
    [v18 setInputAccessoryView:v19];

    [(HKSimpleDataEntryHeightItem *)self _setupPlaceholder];
    [(HKSimpleDataEntryHeightItem *)self updateCellDisplay];
    cell = self->_cell;
  }

  return cell;
}

- (void)beginEditing
{
  v3.receiver = self;
  v3.super_class = HKSimpleDataEntryHeightItem;
  [(HKSimpleDataEntryItem *)&v3 beginEditing];
  if (!self->_centimeterValue)
  {
    [(HKSimpleDataEntryHeightItem *)self _setHeightValueForPicker:self->_picker selectedRow:[(UIPickerView *)self->_picker selectedRowInComponent:0]];
    [(HKSimpleDataEntryHeightItem *)self _valueDidChange];
  }
}

- (void)updateCellDisplay
{
  v3 = [(HKSimpleDataEntryHeightItem *)self _formattedValueForDisplay];
  [(HKSimpleDataEntryHeightItem *)self _setTextForInputTextField:v3];
}

- (id)_formattedValueForDisplay
{
  if (self->_centimeterValue)
  {
    v3 = +[HKPersonHeightFormatter sharedFormatter];
    v4 = [v3 localizedStringFromHeightInCentimeters:self->_centimeterValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

  [(HKSimpleDataEntryHeightItem *)self _setTextForInputTextField:0];
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
  [(HKSimpleDataEntryHeightItem *)self updateCellDisplay];
  v3 = [(HKSimpleDataEntryItem *)self delegate];
  [v3 dataEntryItemDidUpdateValue:self];
}

- (void)_updateLocaleDependentValues
{
  v3 = +[HKPersonHeightFormatter sharedFormatter];
  self->_usesImperialUnits = [v3 usesImperialUnits];
}

- (void)localeDidChange:(id)a3
{
  [(HKSimpleDataEntryHeightItem *)self _updateLocaleDependentValues];

  [(HKSimpleDataEntryHeightItem *)self updateCellDisplay];
}

- (void)doneButtonTapped:(id)a3
{
  v3 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
  [v3 resignFirstResponder];
}

- (void)_setHeightValueForPicker:(id)a3 selectedRow:(int64_t)a4
{
  v6 = a3;
  v14 = v6;
  if (self->_usesImperialUnits)
  {
    v7 = fmax([v6 selectedRowInComponent:0], 0.0);
    v8 = fmax([v14 selectedRowInComponent:1], 0.0);
    v9 = MEMORY[0x1E696AD98];
    v10 = +[HKPersonHeightFormatter sharedFormatter];
    [v10 centimetersFromFeet:v7 inches:v8];
    v11 = [v9 numberWithDouble:?];
    centimeterValue = self->_centimeterValue;
    self->_centimeterValue = v11;
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v10 = self->_centimeterValue;
    self->_centimeterValue = v13;
  }
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v4 = 12;
  if (!a4)
  {
    v4 = 10;
  }

  if (self->_usesImperialUnits)
  {
    return v4;
  }

  else
  {
    return 300;
  }
}

- (double)pickerView:(id)a3 widthForComponent:(int64_t)a4
{
  if (self->_usesImperialUnits)
  {

    [HKPickerViewTitleMeasurer pickerView:a3 maxWidthForComponent:a4];
  }

  else
  {
    [a3 frame];
    return v7;
  }

  return result;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v8 = a3;
  if (self->_usesImperialUnits)
  {
    v9 = +[HKPersonHeightFormatter sharedFormatter];
    v10 = v9;
    v11 = a4;
    if (a5)
    {
      [v9 formattedValueForInches:v11];
    }

    else
    {
      [v9 formattedValueForFeet:v11];
    }
    v12 = ;
  }

  else
  {
    v10 = +[HKPersonHeightFormatter sharedFormatter];
    v12 = [v10 formattedValueForCentimeters:a4];
  }

  v13 = v12;

  return v13;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  [(HKSimpleDataEntryHeightItem *)self _setHeightValueForPicker:a3 selectedRow:a4, a5];

  [(HKSimpleDataEntryHeightItem *)self _valueDidChange];
}

@end