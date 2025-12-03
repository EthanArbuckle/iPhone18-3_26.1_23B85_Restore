@interface HKSimpleDataEntryHeightItem
- (HKSimpleDataEntryHeightItem)initWithTitle:(id)title registrantModelKey:(id)key heightInCm:(id)cm defaultHeightInCm:(id)inCm;
- (double)_defaultCentimeterValue;
- (double)pickerView:(id)view widthForComponent:(int64_t)component;
- (id)_formattedValueForDisplay;
- (id)cell;
- (id)formattedKeyAndValue;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)_setHeightValueForPicker:(id)picker selectedRow:(int64_t)row;
- (void)_setTextForInputTextField:(id)field;
- (void)_setupPlaceholder;
- (void)_updateLocaleDependentValues;
- (void)_valueDidChange;
- (void)beginEditing;
- (void)doneButtonTapped:(id)tapped;
- (void)localeDidChange:(id)change;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)updateCellDisplay;
@end

@implementation HKSimpleDataEntryHeightItem

- (HKSimpleDataEntryHeightItem)initWithTitle:(id)title registrantModelKey:(id)key heightInCm:(id)cm defaultHeightInCm:(id)inCm
{
  titleCopy = title;
  keyCopy = key;
  cmCopy = cm;
  inCmCopy = inCm;
  v20.receiver = self;
  v20.super_class = HKSimpleDataEntryHeightItem;
  v15 = [(HKSimpleDataEntryHeightItem *)&v20 init];
  v16 = v15;
  if (v15)
  {
    [(HKSimpleDataEntryHeightItem *)v15 _updateLocaleDependentValues];
    objc_storeStrong(&v16->_title, title);
    objc_storeStrong(&v16->_registrantModelKey, key);
    v17 = inCmCopy;
    if (!inCmCopy)
    {
      v18 = MEMORY[0x1E696AD98];
      [(HKSimpleDataEntryHeightItem *)v16 _defaultCentimeterValue];
      v17 = [v18 numberWithDouble:?];
    }

    objc_storeStrong(&v16->_defaultValue, v17);
    if (!inCmCopy)
    {
    }

    objc_storeStrong(&v16->_centimeterValue, cm);
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

    titleLabel = [(HKSimpleDataEntryPlainTextCell *)self->_cell titleLabel];
    [titleLabel setText:self->_title];

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
    inputTextField = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    [inputTextField setInputView:v16];

    inputTextField2 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    accessoryToolbar = [(HKSimpleDataEntryItem *)self accessoryToolbar];
    [inputTextField2 setInputAccessoryView:accessoryToolbar];

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
  _formattedValueForDisplay = [(HKSimpleDataEntryHeightItem *)self _formattedValueForDisplay];
  [(HKSimpleDataEntryHeightItem *)self _setTextForInputTextField:_formattedValueForDisplay];
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
    inputTextField = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:@"OD_PLACEHOLDER_OPTIONAL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [inputTextField setPlaceholder:v5];
  }

  [(HKSimpleDataEntryHeightItem *)self _setTextForInputTextField:0];
}

- (void)_setTextForInputTextField:(id)field
{
  fieldCopy = field;
  if (-[HKSimpleDataEntryItem placeholderType](self, "placeholderType") == 1 && ![fieldCopy length])
  {
    inputTextField = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v10 = [v9 localizedStringForKey:@"OD_PICKER_CHOOSE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [inputTextField setText:v10];

    inputTextField2 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    labelColor = HKHealthKeyColor();
  }

  else
  {
    inputTextField3 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    [inputTextField3 setText:fieldCopy];

    inputTextField2 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  v7 = labelColor;
  [inputTextField2 setTextColor:labelColor];
}

- (void)_valueDidChange
{
  [(HKSimpleDataEntryHeightItem *)self updateCellDisplay];
  delegate = [(HKSimpleDataEntryItem *)self delegate];
  [delegate dataEntryItemDidUpdateValue:self];
}

- (void)_updateLocaleDependentValues
{
  v3 = +[HKPersonHeightFormatter sharedFormatter];
  self->_usesImperialUnits = [v3 usesImperialUnits];
}

- (void)localeDidChange:(id)change
{
  [(HKSimpleDataEntryHeightItem *)self _updateLocaleDependentValues];

  [(HKSimpleDataEntryHeightItem *)self updateCellDisplay];
}

- (void)doneButtonTapped:(id)tapped
{
  inputTextField = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
  [inputTextField resignFirstResponder];
}

- (void)_setHeightValueForPicker:(id)picker selectedRow:(int64_t)row
{
  pickerCopy = picker;
  v14 = pickerCopy;
  if (self->_usesImperialUnits)
  {
    v7 = fmax([pickerCopy selectedRowInComponent:0], 0.0);
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
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:row];
    v10 = self->_centimeterValue;
    self->_centimeterValue = v13;
  }
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v4 = 12;
  if (!component)
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

- (double)pickerView:(id)view widthForComponent:(int64_t)component
{
  if (self->_usesImperialUnits)
  {

    [HKPickerViewTitleMeasurer pickerView:view maxWidthForComponent:component];
  }

  else
  {
    [view frame];
    return v7;
  }

  return result;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  viewCopy = view;
  if (self->_usesImperialUnits)
  {
    v9 = +[HKPersonHeightFormatter sharedFormatter];
    v10 = v9;
    rowCopy = row;
    if (component)
    {
      [v9 formattedValueForInches:rowCopy];
    }

    else
    {
      [v9 formattedValueForFeet:rowCopy];
    }
    v12 = ;
  }

  else
  {
    v10 = +[HKPersonHeightFormatter sharedFormatter];
    v12 = [v10 formattedValueForCentimeters:row];
  }

  v13 = v12;

  return v13;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  [(HKSimpleDataEntryHeightItem *)self _setHeightValueForPicker:view selectedRow:row, component];

  [(HKSimpleDataEntryHeightItem *)self _valueDidChange];
}

@end