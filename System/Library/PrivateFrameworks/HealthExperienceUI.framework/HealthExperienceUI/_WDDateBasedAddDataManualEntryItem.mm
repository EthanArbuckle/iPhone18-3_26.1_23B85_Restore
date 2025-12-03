@interface _WDDateBasedAddDataManualEntryItem
- (_WDDateBasedAddDataManualEntryItem)initWithMaximumDate:(id)date highlightWhenEditing:(BOOL)editing datePickerMode:(int64_t)mode displayName:(id)name;
- (id)tableViewCells;
- (void)_datePickerDidChange:(id)change;
- (void)_generateValue:(id)value;
- (void)_saveDisambiguatedDate:(id)date;
- (void)setDatePickerMode:(int64_t)mode;
- (void)setTitle:(id)title;
- (void)setValue:(id)value;
@end

@implementation _WDDateBasedAddDataManualEntryItem

- (_WDDateBasedAddDataManualEntryItem)initWithMaximumDate:(id)date highlightWhenEditing:(BOOL)editing datePickerMode:(int64_t)mode displayName:(id)name
{
  dateCopy = date;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = _WDDateBasedAddDataManualEntryItem;
  v13 = [(_WDDateBasedAddDataManualEntryItem *)&v17 init];
  if (v13)
  {
    v14 = [nameCopy copy];
    displayName = v13->_displayName;
    v13->_displayName = v14;

    objc_storeStrong(&v13->_maximumDate, date);
    v13->_highlightWhenEditing = editing;
    v13->_datePickerMode = mode;
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

    datePicker = [(HXUIInlineDatePickerTableViewCell *)self->_tableViewCell datePicker];
    [datePicker addTarget:self action:sel__datePickerDidChange_ forControlEvents:4096];

    v7 = self->_tableViewCell;
    v8 = HKUIJoinStringsForAutomationIdentifier();
    [(HXUIInlineDatePickerTableViewCell *)v7 setAccessibilityIdentifier:v8];

    datePicker2 = [(HXUIInlineDatePickerTableViewCell *)self->_tableViewCell datePicker];
    [(_WDDateBasedAddDataManualEntryItem *)self _datePickerDidChange:datePicker2];

    tableViewCell = self->_tableViewCell;
  }

  v12[0] = tableViewCell;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  return v10;
}

- (void)_datePickerDidChange:(id)change
{
  changeCopy = change;
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

- (void)_saveDisambiguatedDate:(id)date
{
  dateCopy = date;
  if (self->_maximumDate)
  {
    v8 = dateCopy;
    v5 = HKUIObjectMin();

    dateCopy = v5;
  }

  v9 = dateCopy;
  hk_dateWithTruncatedSecond = [dateCopy hk_dateWithTruncatedSecond];
  chosenDate = self->_chosenDate;
  self->_chosenDate = hk_dateWithTruncatedSecond;

  [(WDAddDataManualEntryItem *)self _didUpdateValue];
}

- (void)_generateValue:(id)value
{
  v4 = MEMORY[0x1E695DEE8];
  valueCopy = value;
  currentCalendar = [v4 currentCalendar];
  datePicker = [(HXUIInlineDatePickerTableViewCell *)self->_tableViewCell datePicker];
  date = [datePicker date];
  v8 = [currentCalendar components:126 fromDate:date];

  [(WDAddDataManualEntryItem *)self _disambiguateDateComponents:v8 withCompletion:valueCopy];
}

- (void)setValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    datePicker = [(HXUIInlineDatePickerTableViewCell *)self->_tableViewCell datePicker];
    [datePicker setDate:valueCopy];

    datePicker2 = [(HXUIInlineDatePickerTableViewCell *)self->_tableViewCell datePicker];
    [(_WDDateBasedAddDataManualEntryItem *)self _datePickerDidChange:datePicker2];
  }
}

- (void)setDatePickerMode:(int64_t)mode
{
  datePicker = [(HXUIInlineDatePickerTableViewCell *)self->_tableViewCell datePicker];
  [datePicker setDatePickerMode:mode];
}

- (void)setTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = _WDDateBasedAddDataManualEntryItem;
  titleCopy = title;
  [(WDAddDataManualEntryItem *)&v5 setTitle:titleCopy];
  [(HXUIInlineDatePickerTableViewCell *)self->_tableViewCell setDisplayName:titleCopy, v5.receiver, v5.super_class];
}

@end