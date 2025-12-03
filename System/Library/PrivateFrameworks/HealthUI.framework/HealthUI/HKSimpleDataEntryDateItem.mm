@interface HKSimpleDataEntryDateItem
+ (id)_dateFormatter;
+ (id)gregorianGMTCalendar;
- (HKSimpleDataEntryDateItem)initWithTitle:(id)title registrantModelKey:(id)key date:(id)date defaultDate:(id)defaultDate dateRange:(id)range exportFormatter:(id)formatter;
- (id)cell;
- (id)formattedKeyAndValue;
- (void)_setTextForInputTextField:(id)field;
- (void)beginEditing;
- (void)datePickerValueChanged:(id)changed;
- (void)updateCellDisplay;
@end

@implementation HKSimpleDataEntryDateItem

- (HKSimpleDataEntryDateItem)initWithTitle:(id)title registrantModelKey:(id)key date:(id)date defaultDate:(id)defaultDate dateRange:(id)range exportFormatter:(id)formatter
{
  titleCopy = title;
  keyCopy = key;
  dateCopy = date;
  defaultDateCopy = defaultDate;
  rangeCopy = range;
  formatterCopy = formatter;
  v24.receiver = self;
  v24.super_class = HKSimpleDataEntryDateItem;
  v18 = [(HKSimpleDataEntryDateItem *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_title, title);
    objc_storeStrong(&v19->_registrantModelKey, key);
    objc_storeStrong(&v19->_date, date);
    objc_storeStrong(&v19->_defaultDate, defaultDate);
    objc_storeStrong(&v19->_dateRange, range);
    objc_storeStrong(&v19->_exportFormatter, formatter);
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

    titleLabel = [(HKSimpleDataEntryPlainTextCell *)self->_cell titleLabel];
    [titleLabel setText:self->_title];

    v7 = objc_alloc_init(MEMORY[0x1E69DC920]);
    datePicker = self->_datePicker;
    self->_datePicker = v7;

    [(UIDatePicker *)self->_datePicker setPreferredDatePickerStyle:1];
    v9 = self->_datePicker;
    gregorianGMTCalendar = [objc_opt_class() gregorianGMTCalendar];
    timeZone = [gregorianGMTCalendar timeZone];
    [(UIDatePicker *)v9 setTimeZone:timeZone];

    [(UIDatePicker *)self->_datePicker setDatePickerMode:1];
    if (self->_date || self->_defaultDate)
    {
      [(UIDatePicker *)self->_datePicker setDate:?];
    }

    v12 = self->_datePicker;
    minValue = [(HKValueRange *)self->_dateRange minValue];
    [(UIDatePicker *)v12 setMinimumDate:minValue];

    v14 = self->_datePicker;
    maxValue = [(HKValueRange *)self->_dateRange maxValue];
    [(UIDatePicker *)v14 setMaximumDate:maxValue];

    [(UIDatePicker *)self->_datePicker addTarget:self action:sel_datePickerValueChanged_ forControlEvents:4096];
    v16 = [HKHostingAreaLayoutView viewHostingView:self->_datePicker];
    inputTextField = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    [inputTextField setInputView:v16];

    inputTextField2 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    accessoryToolbar = [(HKSimpleDataEntryItem *)self accessoryToolbar];
    [inputTextField2 setInputAccessoryView:accessoryToolbar];

    inputTextField3 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [inputTextField3 setTextColor:labelColor];

    if (![(HKSimpleDataEntryItem *)self placeholderType])
    {
      inputTextField4 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
      v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v24 = [v23 localizedStringForKey:@"OD_PLACEHOLDER_OPTIONAL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      [inputTextField4 setPlaceholder:v24];
    }

    [(HKSimpleDataEntryDateItem *)self _setTextForInputTextField:0];
    [(HKSimpleDataEntryDateItem *)self updateCellDisplay];
    cell = self->_cell;
  }

  return cell;
}

- (void)updateCellDisplay
{
  _dateFormatter = [objc_opt_class() _dateFormatter];
  v4 = [_dateFormatter stringFromDate:self->_date];

  [(HKSimpleDataEntryDateItem *)self _setTextForInputTextField:v4];
}

- (void)beginEditing
{
  v6.receiver = self;
  v6.super_class = HKSimpleDataEntryDateItem;
  [(HKSimpleDataEntryItem *)&v6 beginEditing];
  if (!self->_date)
  {
    date = [(UIDatePicker *)self->_datePicker date];
    date = self->_date;
    self->_date = date;

    [(HKSimpleDataEntryDateItem *)self updateCellDisplay];
    delegate = [(HKSimpleDataEntryItem *)self delegate];
    [delegate dataEntryItemDidUpdateValue:self];
  }
}

- (void)_setTextForInputTextField:(id)field
{
  fieldCopy = field;
  if (-[HKSimpleDataEntryItem placeholderType](self, "placeholderType") == 1 && ![fieldCopy length])
  {
    inputTextField = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:@"OD_PICKER_CHOOSE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [inputTextField setText:v7];

    inputTextField2 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v8 = HKHealthKeyColor();
    [inputTextField2 setTextColor:v8];
  }

  else
  {
    inputTextField2 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    [inputTextField2 setText:fieldCopy];
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
    gregorianGMTCalendar = [objc_opt_class() gregorianGMTCalendar];
    timeZone = [gregorianGMTCalendar timeZone];
    [v5 setTimeZone:timeZone];

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
    hk_gregorianCalendarWithUTCTimeZone = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithUTCTimeZone];
    v4 = gregorianGMTCalendar___calendar;
    gregorianGMTCalendar___calendar = hk_gregorianCalendarWithUTCTimeZone;

    v2 = gregorianGMTCalendar___calendar;
  }

  return v2;
}

- (void)datePickerValueChanged:(id)changed
{
  date = [changed date];
  date = self->_date;
  self->_date = date;

  [(HKSimpleDataEntryDateItem *)self updateCellDisplay];
  delegate = [(HKSimpleDataEntryItem *)self delegate];
  [delegate dataEntryItemDidUpdateValue:self];
}

@end