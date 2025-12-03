@interface _WDHeightPickerManualEntryItem
- (_WDHeightPickerManualEntryItem)initWithDisplayName:(id)name;
- (id)generateValue;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (id)tableViewCells;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)_updateTableViewCell;
- (void)setTitle:(id)title;
@end

@implementation _WDHeightPickerManualEntryItem

- (_WDHeightPickerManualEntryItem)initWithDisplayName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = _WDHeightPickerManualEntryItem;
  v5 = [(_WDHeightPickerManualEntryItem *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    displayName = v5->_displayName;
    v5->_displayName = v6;
  }

  return v5;
}

- (id)tableViewCells
{
  v15[1] = *MEMORY[0x1E69E9840];
  tableViewCell = self->_tableViewCell;
  if (!tableViewCell)
  {
    v4 = [(WDAddDataManualEntryItem *)self _createHXUIInlinePickerTableViewCellWithTitle:self->_displayName];
    v5 = self->_tableViewCell;
    self->_tableViewCell = v4;

    pickerView = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
    [pickerView setDataSource:self];

    pickerView2 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
    [pickerView2 setDelegate:self];

    pickerView3 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
    [pickerView3 selectRow:5 inComponent:0 animated:0];

    pickerView4 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
    [pickerView4 selectRow:4 inComponent:1 animated:0];

    pickerView5 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
    [pickerView5 selectRow:5 inComponent:0 animated:0];

    v11 = self->_tableViewCell;
    v12 = HKUIJoinStringsForAutomationIdentifier();
    [(HXUIInlinePickerTableViewCell *)v11 setAccessibilityIdentifier:v12];

    [(_WDHeightPickerManualEntryItem *)self _updateTableViewCell];
    tableViewCell = self->_tableViewCell;
  }

  v15[0] = tableViewCell;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  return v13;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v4 = 12;
  if (component != 1)
  {
    v4 = 0;
  }

  if (component)
  {
    return v4;
  }

  else
  {
    return 10;
  }
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v7 = HKLocalizedNoDataString();
  if (component <= 1)
  {
    v8 = HKIntegerFormatter();
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:row];
    v10 = [v8 stringFromNumber:v9];

    v11 = HKFormatValueAndUnit();

    v7 = v11;
  }

  return v7;
}

- (void)_updateTableViewCell
{
  pickerView = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
  v4 = [pickerView selectedRowInComponent:0];

  pickerView2 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
  v6 = [pickerView2 selectedRowInComponent:1];

  v7 = HKIntegerFormatter();
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  v16 = [v7 stringFromNumber:v8];

  v9 = HKIntegerFormatter();
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  v11 = [v9 stringFromNumber:v10];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v14 = [v13 localizedStringForKey:@"FEET_INCH_FORMAT %@ %@" value:&stru_1F3823B88 table:@"HealthUI-Localizable"];
  v15 = [v12 stringWithFormat:v14, v16, v11];

  [(HXUIInlinePickerTableViewCell *)self->_tableViewCell setValue:v15];
  [(WDAddDataManualEntryItem *)self _didUpdateValue];
}

- (id)generateValue
{
  pickerView = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
  v4 = [pickerView selectedRowInComponent:0];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  if ([v5 integerValue] >= 1)
  {
    pickerView2 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
    v7 = [pickerView2 selectedRowInComponent:0];

    pickerView3 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
    v9 = [pickerView3 selectedRowInComponent:1];

    v10 = [MEMORY[0x1E696AD98] numberWithDouble:v9 / 12.0 + v7];

    v5 = v10;
  }

  return v5;
}

- (void)setTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = _WDHeightPickerManualEntryItem;
  titleCopy = title;
  [(WDAddDataManualEntryItem *)&v5 setTitle:titleCopy];
  [(HXUIInlinePickerTableViewCell *)self->_tableViewCell setDisplayName:titleCopy, v5.receiver, v5.super_class];
}

@end