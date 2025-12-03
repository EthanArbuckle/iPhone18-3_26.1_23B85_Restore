@interface HKSimpleDataEntryWeightItem
- (HKSimpleDataEntryWeightItem)initWithTitle:(id)title registrantModelKey:(id)key weightInKg:(id)kg defaultWeightInKg:(id)inKg;
- (id)_formattedValueForDisplay;
- (id)cell;
- (id)formattedKeyAndValue;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (void)_setTextForInputTextField:(id)field;
- (void)_setWeightValueForSelectedRow:(int64_t)row;
- (void)_setupPlaceholder;
- (void)_updateLocaleDependentValues;
- (void)_valueDidChange;
- (void)beginEditing;
- (void)localeDidChange:(id)change;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)updateCellDisplay;
@end

@implementation HKSimpleDataEntryWeightItem

- (HKSimpleDataEntryWeightItem)initWithTitle:(id)title registrantModelKey:(id)key weightInKg:(id)kg defaultWeightInKg:(id)inKg
{
  titleCopy = title;
  keyCopy = key;
  kgCopy = kg;
  inKgCopy = inKg;
  v22.receiver = self;
  v22.super_class = HKSimpleDataEntryWeightItem;
  v15 = [(HKSimpleDataEntryWeightItem *)&v22 init];
  v16 = v15;
  if (v15)
  {
    [(HKSimpleDataEntryWeightItem *)v15 _updateLocaleDependentValues];
    objc_storeStrong(&v16->_title, title);
    objc_storeStrong(&v16->_registrantModelKey, key);
    v17 = inKgCopy;
    if (!inKgCopy)
    {
      v18 = MEMORY[0x1E696AD98];
      [(HKSimpleDataEntryWeightItem *)v16 _defaultKilogramValue];
      v17 = [v18 numberWithDouble:?];
    }

    objc_storeStrong(&v16->_defaultValue, v17);
    if (!inKgCopy)
    {
    }

    v19 = ClampedWeightLoggingOutOfBoundsValues(kgCopy);
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

    titleLabel = [(HKSimpleDataEntryPlainTextCell *)self->_cell titleLabel];
    [titleLabel setText:self->_title];

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
    inputTextField = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    [inputTextField setInputView:v13];

    inputTextField2 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    accessoryToolbar = [(HKSimpleDataEntryItem *)self accessoryToolbar];
    [inputTextField2 setInputAccessoryView:accessoryToolbar];

    [(HKSimpleDataEntryWeightItem *)self _setupPlaceholder];
    [(HKSimpleDataEntryWeightItem *)self updateCellDisplay];
    cell = self->_cell;
  }

  return cell;
}

- (void)updateCellDisplay
{
  _formattedValueForDisplay = [(HKSimpleDataEntryWeightItem *)self _formattedValueForDisplay];
  [(HKSimpleDataEntryWeightItem *)self _setTextForInputTextField:_formattedValueForDisplay];
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
    inputTextField = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:@"OD_PLACEHOLDER_OPTIONAL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [inputTextField setPlaceholder:v5];
  }

  [(HKSimpleDataEntryWeightItem *)self _setTextForInputTextField:0];
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
  [(HKSimpleDataEntryWeightItem *)self updateCellDisplay];
  delegate = [(HKSimpleDataEntryItem *)self delegate];
  [delegate dataEntryItemDidUpdateValue:self];
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

- (void)localeDidChange:(id)change
{
  [(HKSimpleDataEntryWeightItem *)self _updateLocaleDependentValues];

  [(HKSimpleDataEntryWeightItem *)self updateCellDisplay];
}

- (void)_setWeightValueForSelectedRow:(int64_t)row
{
  localWeightUnit = self->_localWeightUnit;
  rowCopy = row;
  if (localWeightUnit == 1538)
  {
    v6 = 0.453592;
  }

  else if (localWeightUnit == 1539)
  {
    rowCopy = rowCopy / 10.0;
    v6 = 6.35029;
  }

  else
  {
    v6 = 0.5;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:rowCopy * v6];
  v7 = ClampedWeightLoggingOutOfBoundsValues(v9);
  kilogramValue = self->_kilogramValue;
  self->_kilogramValue = v7;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  rowCopy = row;
  localWeightUnit = self->_localWeightUnit;
  if (localWeightUnit == 14)
  {
    rowCopy = rowCopy * 0.5;
  }

  else if (localWeightUnit == 1539)
  {
    rowCopy = rowCopy / 10.0;
  }

  v8 = +[HKPersonWeightFormatter sharedFormatter];
  v9 = [v8 stringFromWeightValue:self->_localWeightUnit inUnit:rowCopy];

  return v9;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  [(HKSimpleDataEntryWeightItem *)self _setWeightValueForSelectedRow:row];

  [(HKSimpleDataEntryWeightItem *)self _valueDidChange];
}

@end