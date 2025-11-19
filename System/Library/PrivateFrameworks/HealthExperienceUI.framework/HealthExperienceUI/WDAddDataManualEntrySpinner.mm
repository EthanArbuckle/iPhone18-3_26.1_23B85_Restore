@interface WDAddDataManualEntrySpinner
- (WDAddDataManualEntrySpinner)initWithDisplayName:(id)a3;
- (WDAddDataManualEntrySpinnerDataSource)dataSource;
- (id)generateValue;
- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6;
- (id)tableViewCells;
- (int64_t)_wd_deliveryReason;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)_updateTableViewCellValue;
- (void)setTitle:(id)a3;
- (void)setValue:(id)a3;
- (void)set_wd_deliveryReason:(int64_t)a3;
@end

@implementation WDAddDataManualEntrySpinner

- (WDAddDataManualEntrySpinner)initWithDisplayName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WDAddDataManualEntrySpinner;
  v5 = [(WDAddDataManualEntrySpinner *)&v9 init];
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
  v13[1] = *MEMORY[0x1E69E9840];
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
    [v8 selectRow:self->_selectedPickerViewIndex inComponent:0 animated:0];

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
  v2 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
  v3 = [v2 selectedRowInComponent:0];

  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithInteger:v3];
}

- (void)setValue:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_selectedPickerViewIndex = [v5 integerValue];
    v4 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
    [v4 selectRow:self->_selectedPickerViewIndex inComponent:0 animated:0];

    [(WDAddDataManualEntrySpinner *)self _updateTableViewCellValue];
  }
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained numberOfRowsInManualEntrySpinner:self];

  return v6;
}

- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6
{
  v8 = a6;
  v9 = v8;
  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:23.5];
    [v9 setFont:v10];

    [v9 setTextAlignment:1];
    [v9 setAdjustsFontSizeToFitWidth:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v12 = [WeakRetained manualEntrySpinner:self titleForRow:a4];
  [v9 setText:v12];

  return v9;
}

- (void)_updateTableViewCellValue
{
  tableViewCell = self->_tableViewCell;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [(HXUIInlinePickerTableViewCell *)self->_tableViewCell pickerView];
  v6 = [WeakRetained manualEntrySpinner:self titleForRow:{objc_msgSend(v5, "selectedRowInComponent:", 0)}];
  [(HXUIInlinePickerTableViewCell *)tableViewCell setValue:v6];

  [(WDAddDataManualEntryItem *)self _didUpdateValue];
}

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = WDAddDataManualEntrySpinner;
  v4 = a3;
  [(WDAddDataManualEntryItem *)&v5 setTitle:v4];
  [(HXUIInlinePickerTableViewCell *)self->_tableViewCell setDisplayName:v4, v5.receiver, v5.super_class];
}

- (WDAddDataManualEntrySpinnerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (int64_t)_wd_deliveryReason
{
  v2 = [(WDAddDataManualEntrySpinner *)self generateValue];
  v3 = [v2 integerValue];

  if (v3 >= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  return v4 + 1;
}

- (void)set_wd_deliveryReason:(int64_t)a3
{
  v4 = 2;
  if (a3 > 2)
  {
    v4 = a3;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v4 - 1];
  [(WDAddDataManualEntrySpinner *)self setValue:v5];
}

@end