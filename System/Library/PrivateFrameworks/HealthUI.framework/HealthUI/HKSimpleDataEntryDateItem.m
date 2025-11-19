@interface HKSimpleDataEntryDateItem
+ (id)_dateFormatter;
+ (id)gregorianGMTCalendar;
- (HKSimpleDataEntryDateItem)initWithTitle:(id)a3 registrantModelKey:(id)a4 date:(id)a5 defaultDate:(id)a6 dateRange:(id)a7 exportFormatter:(id)a8;
- (id)cell;
- (id)formattedKeyAndValue;
- (void)_setTextForInputTextField:(id)a3;
- (void)beginEditing;
- (void)datePickerValueChanged:(id)a3;
- (void)updateCellDisplay;
@end

@implementation HKSimpleDataEntryDateItem

- (HKSimpleDataEntryDateItem)initWithTitle:(id)a3 registrantModelKey:(id)a4 date:(id)a5 defaultDate:(id)a6 dateRange:(id)a7 exportFormatter:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = HKSimpleDataEntryDateItem;
  v18 = [(HKSimpleDataEntryDateItem *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_title, a3);
    objc_storeStrong(&v19->_registrantModelKey, a4);
    objc_storeStrong(&v19->_date, a5);
    objc_storeStrong(&v19->_defaultDate, a6);
    objc_storeStrong(&v19->_dateRange, a7);
    objc_storeStrong(&v19->_exportFormatter, a8);
  }

  return v19;
}

- (id)formattedKeyAndValue
{
  v13[1] = *MEMORY[0x1E69E9840];
  exportFormatter = self->_exportFormatter;
  if (exportFormatter)
  {
    registrantModelKey = self->_registrantModelKey;
    v4 = [(NSDateFormatter *)exportFormatter stringFromDate:self->_date];
    v13[0] = v4;
    v5 = MEMORY[0x1E695DF20];
    v6 = v13;
    p_registrantModelKey = &registrantModelKey;
  }

  else
  {
    v4 = [MEMORY[0x1E695DEE8] hk_canonicalDateOfBirthDateComponentsWithDate:self->_date];
    v10 = self->_registrantModelKey;
    v11 = v4;
    v5 = MEMORY[0x1E695DF20];
    v6 = &v11;
    p_registrantModelKey = &v10;
  }

  v8 = [v5 dictionaryWithObjects:v6 forKeys:p_registrantModelKey count:1];

  return v8;
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

    v7 = objc_alloc_init(MEMORY[0x1E69DC920]);
    datePicker = self->_datePicker;
    self->_datePicker = v7;

    [(UIDatePicker *)self->_datePicker setPreferredDatePickerStyle:1];
    v9 = self->_datePicker;
    v10 = [objc_opt_class() gregorianGMTCalendar];
    v11 = [v10 timeZone];
    [(UIDatePicker *)v9 setTimeZone:v11];

    [(UIDatePicker *)self->_datePicker setDatePickerMode:1];
    if (self->_date || self->_defaultDate)
    {
      [(UIDatePicker *)self->_datePicker setDate:?];
    }

    v12 = self->_datePicker;
    v13 = [(HKValueRange *)self->_dateRange minValue];
    [(UIDatePicker *)v12 setMinimumDate:v13];

    v14 = self->_datePicker;
    v15 = [(HKValueRange *)self->_dateRange maxValue];
    [(UIDatePicker *)v14 setMaximumDate:v15];

    [(UIDatePicker *)self->_datePicker addTarget:self action:sel_datePickerValueChanged_ forControlEvents:4096];
    v16 = [HKHostingAreaLayoutView viewHostingView:self->_datePicker];
    v17 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    [v17 setInputView:v16];

    v18 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v19 = [(HKSimpleDataEntryItem *)self accessoryToolbar];
    [v18 setInputAccessoryView:v19];

    v20 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v21 = [MEMORY[0x1E69DC888] labelColor];
    [v20 setTextColor:v21];

    if (![(HKSimpleDataEntryItem *)self placeholderType])
    {
      v22 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
      v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v24 = [v23 localizedStringForKey:@"OD_PLACEHOLDER_OPTIONAL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      [v22 setPlaceholder:v24];
    }

    [(HKSimpleDataEntryDateItem *)self _setTextForInputTextField:0];
    [(HKSimpleDataEntryDateItem *)self updateCellDisplay];
    cell = self->_cell;
  }

  return cell;
}

- (void)updateCellDisplay
{
  v3 = [objc_opt_class() _dateFormatter];
  v4 = [v3 stringFromDate:self->_date];

  [(HKSimpleDataEntryDateItem *)self _setTextForInputTextField:v4];
}

- (void)beginEditing
{
  v6.receiver = self;
  v6.super_class = HKSimpleDataEntryDateItem;
  [(HKSimpleDataEntryItem *)&v6 beginEditing];
  if (!self->_date)
  {
    v3 = [(UIDatePicker *)self->_datePicker date];
    date = self->_date;
    self->_date = v3;

    [(HKSimpleDataEntryDateItem *)self updateCellDisplay];
    v5 = [(HKSimpleDataEntryItem *)self delegate];
    [v5 dataEntryItemDidUpdateValue:self];
  }
}

- (void)_setTextForInputTextField:(id)a3
{
  v9 = a3;
  if (-[HKSimpleDataEntryItem placeholderType](self, "placeholderType") == 1 && ![v9 length])
  {
    v5 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:@"OD_PICKER_CHOOSE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [v5 setText:v7];

    v4 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v8 = HKHealthKeyColor();
    [v4 setTextColor:v8];
  }

  else
  {
    v4 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    [v4 setText:v9];
  }
}

+ (id)_dateFormatter
{
  v2 = _dateFormatter___dateFormatter;
  if (!_dateFormatter___dateFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = _dateFormatter___dateFormatter;
    _dateFormatter___dateFormatter = v3;

    v5 = _dateFormatter___dateFormatter;
    v6 = [objc_opt_class() gregorianGMTCalendar];
    v7 = [v6 timeZone];
    [v5 setTimeZone:v7];

    [_dateFormatter___dateFormatter setDateStyle:2];
    v2 = _dateFormatter___dateFormatter;
  }

  return v2;
}

+ (id)gregorianGMTCalendar
{
  v2 = gregorianGMTCalendar___calendar;
  if (!gregorianGMTCalendar___calendar)
  {
    v3 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithUTCTimeZone];
    v4 = gregorianGMTCalendar___calendar;
    gregorianGMTCalendar___calendar = v3;

    v2 = gregorianGMTCalendar___calendar;
  }

  return v2;
}

- (void)datePickerValueChanged:(id)a3
{
  v4 = [a3 date];
  date = self->_date;
  self->_date = v4;

  [(HKSimpleDataEntryDateItem *)self updateCellDisplay];
  v6 = [(HKSimpleDataEntryItem *)self delegate];
  [v6 dataEntryItemDidUpdateValue:self];
}

@end