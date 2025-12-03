@interface HKMedicalIDEditorDateCell
- (id)formattedValue;
- (void)_configureDatePicker;
- (void)_dateChanged:(id)changed;
- (void)_hideDatePicker;
- (void)_showDatePicker;
- (void)beginEditing;
- (void)setDateValue:(id)value;
@end

@implementation HKMedicalIDEditorDateCell

- (id)formattedValue
{
  v3 = formattedValue___dateFormatter;
  if (!formattedValue___dateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = formattedValue___dateFormatter;
    formattedValue___dateFormatter = v4;

    [formattedValue___dateFormatter setDateStyle:2];
    v3 = formattedValue___dateFormatter;
  }

  dateValue = [(HKMedicalIDEditorDateCell *)self dateValue];
  v7 = [v3 stringFromDate:dateValue];

  return v7;
}

- (void)setDateValue:(id)value
{
  objc_storeStrong(&self->_dateValue, value);

  [(HKMedicalIDEditorCell *)self updateValueLabel];
}

- (void)_configureDatePicker
{
  if (!self->_picker)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DC920]);
    picker = self->_picker;
    self->_picker = v3;

    [(UIDatePicker *)self->_picker setPreferredDatePickerStyle:1];
    [(UIDatePicker *)self->_picker setDatePickerMode:1];
    date = [MEMORY[0x1E695DF00] date];
    [(UIDatePicker *)self->_picker setMaximumDate:date];

    v6 = MEMORY[0x1E695DF00];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v8 = [v6 hk_minimumDateForBirthDateWithCalendar:currentCalendar];
    [(UIDatePicker *)self->_picker setMinimumDate:v8];

    v9 = [HKHostingAreaLayoutView viewHostingView:self->_picker];
    inputTextField = [(HKMedicalIDEditorCell *)self inputTextField];
    [inputTextField setInputView:v9];

    [(UIDatePicker *)self->_picker addTarget:self action:sel__dateChanged_ forControlEvents:4096];
  }

  if (self->_dateValue)
  {
    [(UIDatePicker *)self->_picker setDate:?];
  }

  else
  {
    date2 = [MEMORY[0x1E695DF00] date];
    [(UIDatePicker *)self->_picker setDate:date2];
  }

  [(HKMedicalIDEditorDateCell *)self reloadInputViews];
}

- (void)_showDatePicker
{
  [(HKMedicalIDEditorDateCell *)self _configureDatePicker];
  if (!self->_dateValue)
  {
    date = [MEMORY[0x1E695DF00] date];
    dateValue = self->_dateValue;
    self->_dateValue = date;

    [(HKMedicalIDEditorCell *)self updateValueLabel];
  }

  inputTextField = [(HKMedicalIDEditorCell *)self inputTextField];
  [inputTextField becomeFirstResponder];
}

- (void)_hideDatePicker
{
  inputTextField = [(HKMedicalIDEditorCell *)self inputTextField];
  [inputTextField resignFirstResponder];
}

- (void)_dateChanged:(id)changed
{
  date = [(UIDatePicker *)self->_picker date];
  dateValue = self->_dateValue;
  self->_dateValue = date;

  [(HKMedicalIDEditorCell *)self valueDidChange];
}

- (void)beginEditing
{
  v3.receiver = self;
  v3.super_class = HKMedicalIDEditorDateCell;
  [(HKMedicalIDEditorCell *)&v3 beginEditing];
  [(HKMedicalIDEditorDateCell *)self _showDatePicker];
}

@end