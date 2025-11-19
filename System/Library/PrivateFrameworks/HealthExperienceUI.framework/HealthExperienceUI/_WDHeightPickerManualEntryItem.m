@interface _WDHeightPickerManualEntryItem
- (_WDHeightPickerManualEntryItem)initWithDisplayName:(id)a3;
- (id)generateValue;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (id)tableViewCells;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)_updateTableViewCell;
- (void)setTitle:(id)a3;
@end

@implementation _WDHeightPickerManualEntryItem

- (_WDHeightPickerManualEntryItem)initWithDisplayName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _WDHeightPickerManualEntryItem;
  v5 = [(_WDHeightPickerManualEntryItem *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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

    v6 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
    [v6 setDataSource:self];

    v7 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
    [v7 setDelegate:self];

    v8 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
    [v8 selectRow:5 inComponent:0 animated:0];

    v9 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
    [v9 selectRow:4 inComponent:1 animated:0];

    v10 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
    [v10 selectRow:5 inComponent:0 animated:0];

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

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v4 = 12;
  if (a4 != 1)
  {
    v4 = 0;
  }

  if (a4)
  {
    return v4;
  }

  else
  {
    return 10;
  }
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = HKLocalizedNoDataString();
  if (a5 <= 1)
  {
    v8 = HKIntegerFormatter();
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v10 = [v8 stringFromNumber:v9];

    v11 = HKFormatValueAndUnit();

    v7 = v11;
  }

  return v7;
}

- (void)_updateTableViewCell
{
  v3 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
  v4 = [v3 selectedRowInComponent:0];

  v5 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
  v6 = [v5 selectedRowInComponent:1];

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
  v3 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
  v4 = [v3 selectedRowInComponent:0];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  if ([v5 integerValue] >= 1)
  {
    v6 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
    v7 = [v6 selectedRowInComponent:0];

    v8 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
    v9 = [v8 selectedRowInComponent:1];

    v10 = [MEMORY[0x1E696AD98] numberWithDouble:v9 / 12.0 + v7];

    v5 = v10;
  }

  return v5;
}

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = _WDHeightPickerManualEntryItem;
  v4 = a3;
  [(WDAddDataManualEntryItem *)&v5 setTitle:v4];
  [(HXUIInlinePickerTableViewCell *)self->_tableViewCell setDisplayName:v4, v5.receiver, v5.super_class];
}

@end