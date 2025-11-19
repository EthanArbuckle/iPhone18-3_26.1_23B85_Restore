@interface _WDDateBasedAddDataManualEntryItem
- (_WDDateBasedAddDataManualEntryItem)initWithMaximumDate:(id)a3 highlightWhenEditing:(BOOL)a4 datePickerMode:(int64_t)a5 displayName:(id)a6;
- (id)tableViewCells;
- (void)_datePickerDidChange:(id)a3;
- (void)_generateValue:(id)a3;
- (void)_saveDisambiguatedDate:(id)a3;
- (void)setDatePickerMode:(int64_t)a3;
- (void)setTitle:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation _WDDateBasedAddDataManualEntryItem

- (_WDDateBasedAddDataManualEntryItem)initWithMaximumDate:(id)a3 highlightWhenEditing:(BOOL)a4 datePickerMode:(int64_t)a5 displayName:(id)a6
{
  v11 = a3;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = _WDDateBasedAddDataManualEntryItem;
  v13 = [(_WDDateBasedAddDataManualEntryItem *)&v17 init];
  if (v13)
  {
    v14 = [v12 copy];
    displayName = v13->_displayName;
    v13->_displayName = v14;

    objc_storeStrong(&v13->_maximumDate, a3);
    v13->_highlightWhenEditing = a4;
    v13->_datePickerMode = a5;
  }

  return v13;
}

- (id)tableViewCells
{
  v12[1] = *MEMORY[0x1E69E9840];
  tableViewCell = self->_tableViewCell;
  if (!tableViewCell)
  {
    v4 = [(WDAddDataManualEntryItem *)self _createHXUIInlineDatePickerTableViewCellWithTitle:self->_displayName datePickerMode:self->_datePickerMode maxDate:self->_maximumDate];
    v5 = self->_tableViewCell;
    self->_tableViewCell = v4;

    v6 = [(HXUIInlineDatePickerTableViewCell *)self->_tableViewCell datePicker];
    [v6 addTarget:self action:sel__datePickerDidChange_ forControlEvents:4096];

    v7 = self->_tableViewCell;
    v8 = HKUIJoinStringsForAutomationIdentifier();
    [(HXUIInlineDatePickerTableViewCell *)v7 setAccessibilityIdentifier:v8];

    v9 = [(HXUIInlineDatePickerTableViewCell *)self->_tableViewCell datePicker];
    [(_WDDateBasedAddDataManualEntryItem *)self _datePickerDidChange:v9];

    tableViewCell = self->_tableViewCell;
  }

  v12[0] = tableViewCell;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  return v10;
}

- (void)_datePickerDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59___WDDateBasedAddDataManualEntryItem__datePickerDidChange___block_invoke;
  v5[3] = &unk_1E7EEB200;
  objc_copyWeak(&v6, &location);
  [(_WDDateBasedAddDataManualEntryItem *)self _generateValue:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_saveDisambiguatedDate:(id)a3
{
  v4 = a3;
  if (self->_maximumDate)
  {
    v8 = v4;
    v5 = HKUIObjectMin();

    v4 = v5;
  }

  v9 = v4;
  v6 = [v4 hk_dateWithTruncatedSecond];
  chosenDate = self->_chosenDate;
  self->_chosenDate = v6;

  [(WDAddDataManualEntryItem *)self _didUpdateValue];
}

- (void)_generateValue:(id)a3
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v9 = [v4 currentCalendar];
  v6 = [(HXUIInlineDatePickerTableViewCell *)self->_tableViewCell datePicker];
  v7 = [v6 date];
  v8 = [v9 components:126 fromDate:v7];

  [(WDAddDataManualEntryItem *)self _disambiguateDateComponents:v8 withCompletion:v5];
}

- (void)setValue:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(HXUIInlineDatePickerTableViewCell *)self->_tableViewCell datePicker];
    [v4 setDate:v6];

    v5 = [(HXUIInlineDatePickerTableViewCell *)self->_tableViewCell datePicker];
    [(_WDDateBasedAddDataManualEntryItem *)self _datePickerDidChange:v5];
  }
}

- (void)setDatePickerMode:(int64_t)a3
{
  v4 = [(HXUIInlineDatePickerTableViewCell *)self->_tableViewCell datePicker];
  [v4 setDatePickerMode:a3];
}

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = _WDDateBasedAddDataManualEntryItem;
  v4 = a3;
  [(WDAddDataManualEntryItem *)&v5 setTitle:v4];
  [(HXUIInlineDatePickerTableViewCell *)self->_tableViewCell setDisplayName:v4, v5.receiver, v5.super_class];
}

@end