@interface HKMedicalIDEditorWeightCell
- (HKMedicalIDEditorWeightCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)formattedValue;
- (void)_hidePicker;
- (void)_localeDidChange:(id)a3;
- (void)_showPicker;
- (void)beginEditing;
- (void)dealloc;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)setKilogramValue:(id)a3;
@end

@implementation HKMedicalIDEditorWeightCell

- (HKMedicalIDEditorWeightCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HKMedicalIDEditorWeightCell;
  v4 = [(HKMedicalIDEditorCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HKMedicalIDEditorWeightCell *)v4 _commonInit];
  }

  return v5;
}

- (void)_localeDidChange:(id)a3
{
  [(HKMedicalIDEditorWeightCell *)self _commonInit];

  [(HKMedicalIDEditorCell *)self updateValueLabel];
}

- (void)setKilogramValue:(id)a3
{
  objc_storeStrong(&self->_kilogramValue, a3);

  [(HKMedicalIDEditorCell *)self updateValueLabel];
}

- (id)formattedValue
{
  v3 = +[HKPersonWeightFormatter sharedFormatter];
  v4 = [(HKMedicalIDEditorWeightCell *)self kilogramValue];
  v5 = [v3 stringFromWeightInKilograms:v4];

  return v5;
}

- (void)_showPicker
{
  v3 = [(HKMedicalIDEditorWeightCell *)self kilogramValue];

  if (!v3)
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
    v10 = [(HKMedicalIDEditorCell *)self inputTextField];
    [v10 setInputView:v9];

    picker = self->_picker;
  }

  [(UIPickerView *)picker reloadAllComponents];
  v11 = [(HKMedicalIDEditorWeightCell *)self kilogramValue];
  [v11 doubleValue];
  v12 = [HKMedicalIDWeightPickerDataProvider rowForWeightInKilograms:?];

  [(UIPickerView *)self->_picker selectRow:v12 inComponent:0 animated:0];
  [(HKMedicalIDEditorWeightCell *)self reloadInputViews];
  v13 = [(HKMedicalIDEditorCell *)self inputTextField];
  [v13 becomeFirstResponder];
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
  v2 = [(HKMedicalIDEditorCell *)self inputTextField];
  [v2 resignFirstResponder];
}

- (void)beginEditing
{
  v3.receiver = self;
  v3.super_class = HKMedicalIDEditorWeightCell;
  [(HKMedicalIDEditorCell *)&v3 beginEditing];
  [(HKMedicalIDEditorWeightCell *)self _showPicker];
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v6 = MEMORY[0x1E696AD98];
  [HKMedicalIDWeightPickerDataProvider getWeightInKilogramsForRow:a4];
  v7 = [v6 numberWithDouble:?];
  kilogramValue = self->_kilogramValue;
  self->_kilogramValue = v7;

  [(HKMedicalIDEditorCell *)self valueDidChange];
}

@end