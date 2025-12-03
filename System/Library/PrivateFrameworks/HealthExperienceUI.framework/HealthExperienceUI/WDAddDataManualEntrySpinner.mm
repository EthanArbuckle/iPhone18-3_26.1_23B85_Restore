@interface WDAddDataManualEntrySpinner
- (WDAddDataManualEntrySpinner)initWithDisplayName:(id)name;
- (WDAddDataManualEntrySpinnerDataSource)dataSource;
- (id)generateValue;
- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView;
- (id)tableViewCells;
- (int64_t)_wd_deliveryReason;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)_updateTableViewCellValue;
- (void)setTitle:(id)title;
- (void)setValue:(id)value;
- (void)set_wd_deliveryReason:(int64_t)reason;
@end

@implementation WDAddDataManualEntrySpinner

- (WDAddDataManualEntrySpinner)initWithDisplayName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = WDAddDataManualEntrySpinner;
  v5 = [(WDAddDataManualEntrySpinner *)&v9 init];
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
  v13[1] = *MEMORY[0x1E69E9840];
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
    [pickerView3 selectRow:self->_selectedPickerViewIndex inComponent:0 animated:0];

    v9 = self->_tableViewCell;
    v10 = HKUIJoinStringsForAutomationIdentifier();
    [(HXUIInlinePickerTableViewCell *)v9 setAccessibilityIdentifier:v10];

    [(WDAddDataManualEntrySpinner *)self _updateTableViewCellValue];
    tableViewCell = self->_tableViewCell;
  }

  v13[0] = tableViewCell;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  return v11;
}

- (id)generateValue
{
  pickerView = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
  v3 = [pickerView selectedRowInComponent:0];

  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithInteger:v3];
}

- (void)setValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_selectedPickerViewIndex = [valueCopy integerValue];
    pickerView = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
    [pickerView selectRow:self->_selectedPickerViewIndex inComponent:0 animated:0];

    [(WDAddDataManualEntrySpinner *)self _updateTableViewCellValue];
  }
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained numberOfRowsInManualEntrySpinner:self];

  return v6;
}

- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView
{
  reusingViewCopy = reusingView;
  v9 = reusingViewCopy;
  if (!reusingViewCopy)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:23.5];
    [v9 setFont:v10];

    [v9 setTextAlignment:1];
    [v9 setAdjustsFontSizeToFitWidth:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v12 = [WeakRetained manualEntrySpinner:self titleForRow:row];
  [v9 setText:v12];

  return v9;
}

- (void)_updateTableViewCellValue
{
  tableViewCell = self->_tableViewCell;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  pickerView = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
  v6 = [WeakRetained manualEntrySpinner:self titleForRow:{objc_msgSend(pickerView, "selectedRowInComponent:", 0)}];
  [(HXUIInlinePickerTableViewCell *)tableViewCell setValue:v6];

  [(WDAddDataManualEntryItem *)self _didUpdateValue];
}

- (void)setTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = WDAddDataManualEntrySpinner;
  titleCopy = title;
  [(WDAddDataManualEntryItem *)&v5 setTitle:titleCopy];
  [(HXUIInlinePickerTableViewCell *)self->_tableViewCell setDisplayName:titleCopy, v5.receiver, v5.super_class];
}

- (WDAddDataManualEntrySpinnerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (int64_t)_wd_deliveryReason
{
  generateValue = [(WDAddDataManualEntrySpinner *)self generateValue];
  integerValue = [generateValue integerValue];

  if (integerValue >= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = integerValue;
  }

  return v4 + 1;
}

- (void)set_wd_deliveryReason:(int64_t)reason
{
  reasonCopy = 2;
  if (reason > 2)
  {
    reasonCopy = reason;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:reasonCopy - 1];
  [(WDAddDataManualEntrySpinner *)self setValue:v5];
}

@end