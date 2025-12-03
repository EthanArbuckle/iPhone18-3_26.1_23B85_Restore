@interface HKMedicalIDEditorWeightCell
- (HKMedicalIDEditorWeightCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)formattedValue;
- (void)_hidePicker;
- (void)_localeDidChange:(id)change;
- (void)_showPicker;
- (void)beginEditing;
- (void)dealloc;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)setKilogramValue:(id)value;
@end

@implementation HKMedicalIDEditorWeightCell

- (HKMedicalIDEditorWeightCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HKMedicalIDEditorWeightCell;
  v4 = [(HKMedicalIDEditorCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HKMedicalIDEditorWeightCell *)v4 _commonInit];
  }

  return v5;
}

- (void)_localeDidChange:(id)change
{
  [(HKMedicalIDEditorWeightCell *)self _commonInit];

  [(HKMedicalIDEditorCell *)self updateValueLabel];
}

- (void)setKilogramValue:(id)value
{
  objc_storeStrong(&self->_kilogramValue, value);

  [(HKMedicalIDEditorCell *)self updateValueLabel];
}

- (id)formattedValue
{
  v3 = +[HKPersonWeightFormatter sharedFormatter];
  kilogramValue = [(HKMedicalIDEditorWeightCell *)self kilogramValue];
  v5 = [v3 stringFromWeightInKilograms:kilogramValue];

  return v5;
}

- (void)_showPicker
{
  kilogramValue = [(HKMedicalIDEditorWeightCell *)self kilogramValue];

  if (!kilogramValue)
  {
    v4 = MEMORY[0x1E696AD98];
    [objc_opt_class() defaultKilogramValue];
    v5 = [v4 numberWithDouble:?];
    [(HKMedicalIDEditorWeightCell *)self setKilogramValue:v5];
  }

  picker = self->_picker;
  if (!picker)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DCD78]);
    v8 = self->_picker;
    self->_picker = v7;

    [(UIPickerView *)self->_picker setDataSource:self];
    [(UIPickerView *)self->_picker setDelegate:self];
    v9 = [HKHostingAreaLayoutView viewHostingView:self->_picker];
    inputTextField = [(HKMedicalIDEditorCell *)self inputTextField];
    [inputTextField setInputView:v9];

    picker = self->_picker;
  }

  [(UIPickerView *)picker reloadAllComponents];
  kilogramValue2 = [(HKMedicalIDEditorWeightCell *)self kilogramValue];
  [kilogramValue2 doubleValue];
  v12 = [HKMedicalIDWeightPickerDataProvider rowForWeightInKilograms:?];

  [(UIPickerView *)self->_picker selectRow:v12 inComponent:0 animated:0];
  [(HKMedicalIDEditorWeightCell *)self reloadInputViews];
  inputTextField2 = [(HKMedicalIDEditorCell *)self inputTextField];
  [inputTextField2 becomeFirstResponder];
}

- (void)dealloc
{
  [(UIPickerView *)self->_picker setDataSource:0];
  [(UIPickerView *)self->_picker setDelegate:0];
  v3.receiver = self;
  v3.super_class = HKMedicalIDEditorWeightCell;
  [(HKMedicalIDEditorCell *)&v3 dealloc];
}

- (void)_hidePicker
{
  inputTextField = [(HKMedicalIDEditorCell *)self inputTextField];
  [inputTextField resignFirstResponder];
}

- (void)beginEditing
{
  v3.receiver = self;
  v3.super_class = HKMedicalIDEditorWeightCell;
  [(HKMedicalIDEditorCell *)&v3 beginEditing];
  [(HKMedicalIDEditorWeightCell *)self _showPicker];
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  v6 = MEMORY[0x1E696AD98];
  [HKMedicalIDWeightPickerDataProvider getWeightInKilogramsForRow:row];
  v7 = [v6 numberWithDouble:?];
  kilogramValue = self->_kilogramValue;
  self->_kilogramValue = v7;

  [(HKMedicalIDEditorCell *)self valueDidChange];
}

@end