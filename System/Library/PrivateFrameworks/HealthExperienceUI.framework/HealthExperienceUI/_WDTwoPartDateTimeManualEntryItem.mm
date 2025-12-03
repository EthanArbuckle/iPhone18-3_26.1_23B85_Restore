@interface _WDTwoPartDateTimeManualEntryItem
- (_WDTwoPartDateTimeManualEntryItem)initWithMaximumDate:(id)date;
- (id)tableViewCells;
- (void)_datePickerDidChange:(id)change;
- (void)_generateValue:(id)value;
- (void)_saveDisambiguatedDate:(id)date;
- (void)_setupTableViewCells;
- (void)_timePickerDidChange:(id)change;
- (void)setValue:(id)value;
@end

@implementation _WDTwoPartDateTimeManualEntryItem

- (_WDTwoPartDateTimeManualEntryItem)initWithMaximumDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = _WDTwoPartDateTimeManualEntryItem;
  v6 = [(_WDTwoPartDateTimeManualEntryItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_maximumDate, date);
    [(_WDTwoPartDateTimeManualEntryItem *)v7 _setupTableViewCells];
  }

  return v7;
}

- (id)tableViewCells
{
  v5[2] = *MEMORY[0x1E69E9840];
  timeTableViewCell = self->_timeTableViewCell;
  v5[0] = self->_dateTableViewCell;
  v5[1] = timeTableViewCell;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

- (void)_setupTableViewCells
{
  v3 = HABundle();
  v4 = [v3 localizedStringForKey:@"DATE" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v5 = [(WDAddDataManualEntryItem *)self _createHXUIInlineDatePickerTableViewCellWithTitle:v4 datePickerMode:1 maxDate:self->_maximumDate];
  dateTableViewCell = self->_dateTableViewCell;
  self->_dateTableViewCell = v5;

  v7 = HABundle();
  v8 = [v7 localizedStringForKey:@"TIME" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v9 = [(WDAddDataManualEntryItem *)self _createHXUIInlineDatePickerTableViewCellWithTitle:v8 datePickerMode:0 maxDate:self->_maximumDate];
  timeTableViewCell = self->_timeTableViewCell;
  self->_timeTableViewCell = v9;

  datePicker = [(HXUIInlineDatePickerTableViewCell *)self->_dateTableViewCell datePicker];
  [datePicker addTarget:self action:sel__datePickerDidChange_ forControlEvents:4096];

  datePicker2 = [(HXUIInlineDatePickerTableViewCell *)self->_timeTableViewCell datePicker];
  [datePicker2 addTarget:self action:sel__timePickerDidChange_ forControlEvents:4096];

  v13 = self->_dateTableViewCell;
  v14 = HKUIJoinStringsForAutomationIdentifier();
  [(HXUIInlineDatePickerTableViewCell *)v13 setAccessibilityIdentifier:v14];

  v15 = self->_timeTableViewCell;
  v16 = HKUIJoinStringsForAutomationIdentifier();
  [(HXUIInlineDatePickerTableViewCell *)v15 setAccessibilityIdentifier:v16];

  datePicker3 = [(HXUIInlineDatePickerTableViewCell *)self->_timeTableViewCell datePicker];
  [(_WDTwoPartDateTimeManualEntryItem *)self _timePickerDidChange:datePicker3];

  datePicker4 = [(HXUIInlineDatePickerTableViewCell *)self->_dateTableViewCell datePicker];
  [(_WDTwoPartDateTimeManualEntryItem *)self _datePickerDidChange:datePicker4];
}

- (void)_datePickerDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58___WDTwoPartDateTimeManualEntryItem__datePickerDidChange___block_invoke;
  v5[3] = &unk_1E7EEB200;
  objc_copyWeak(&v6, &location);
  [(_WDTwoPartDateTimeManualEntryItem *)self _generateValue:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_saveDisambiguatedDate:(id)date
{
  dateCopy = date;
  if (self->_maximumDate)
  {
    v5 = HKUIObjectMin();

    dateCopy = v5;
  }

  chosenDate = self->_chosenDate;
  self->_chosenDate = dateCopy;
  v7 = dateCopy;

  v8 = self->_chosenDate;
  datePicker = [(HXUIInlineDatePickerTableViewCell *)self->_timeTableViewCell datePicker];
  [datePicker setDate:v8];

  [(_WDTwoPartDateTimeManualEntryItem *)self _updateCellLabels];
}

- (void)_timePickerDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58___WDTwoPartDateTimeManualEntryItem__timePickerDidChange___block_invoke;
  v5[3] = &unk_1E7EEB200;
  objc_copyWeak(&v6, &location);
  [(_WDTwoPartDateTimeManualEntryItem *)self _generateValue:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_generateValue:(id)value
{
  timeTableViewCell = self->_timeTableViewCell;
  valueCopy = value;
  datePicker = [(HXUIInlineDatePickerTableViewCell *)timeTableViewCell datePicker];
  date = [datePicker date];

  datePicker2 = [(HXUIInlineDatePickerTableViewCell *)self->_dateTableViewCell datePicker];
  date2 = [datePicker2 date];

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [currentCalendar components:30 fromDate:date2];
  v11 = [currentCalendar components:96 fromDate:date];
  v12 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v12 setEra:{objc_msgSend(v10, "era")}];
  [v12 setYear:{objc_msgSend(v10, "year")}];
  [v12 setMonth:{objc_msgSend(v10, "month")}];
  [v12 setDay:{objc_msgSend(v10, "day")}];
  [v12 setHour:{objc_msgSend(v11, "hour")}];
  [v12 setMinute:{objc_msgSend(v11, "minute")}];
  timeZone = [currentCalendar timeZone];
  [v12 setTimeZone:timeZone];

  [(WDAddDataManualEntryItem *)self _disambiguateDateComponents:v12 withCompletion:valueCopy];
}

- (void)setValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_chosenDate, value);
    datePicker = [(HXUIInlineDatePickerTableViewCell *)self->_timeTableViewCell datePicker];
    [datePicker setDate:valueCopy];

    datePicker2 = [(HXUIInlineDatePickerTableViewCell *)self->_dateTableViewCell datePicker];
    [datePicker2 setDate:valueCopy];

    [(_WDTwoPartDateTimeManualEntryItem *)self _updateCellLabels];
  }
}

@end