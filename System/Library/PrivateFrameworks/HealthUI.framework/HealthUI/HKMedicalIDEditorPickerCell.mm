@interface HKMedicalIDEditorPickerCell
- (id)formattedValue;
- (void)_hidePicker;
- (void)_showPicker;
- (void)beginEditing;
- (void)dealloc;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation HKMedicalIDEditorPickerCell

- (id)formattedValue
{
  chosenValueIndex = self->_chosenValueIndex;
  if (chosenValueIndex >= [(NSArray *)self->_possibleValues count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_possibleValues objectAtIndexedSubscript:self->_chosenValueIndex];
  }

  return v4;
}

- (void)_showPicker
{
  picker = self->_picker;
  if (!picker)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCD78]);
    v5 = self->_picker;
    self->_picker = v4;

    [(UIPickerView *)self->_picker setDataSource:self];
    [(UIPickerView *)self->_picker setDelegate:self];
    v6 = [HKHostingAreaLayoutView viewHostingView:self->_picker];
    inputTextField = [(HKMedicalIDEditorCell *)self inputTextField];
    [inputTextField setInputView:v6];

    picker = self->_picker;
  }

  [(UIPickerView *)picker reloadAllComponents];
  [(UIPickerView *)self->_picker selectRow:self->_chosenValueIndex inComponent:0 animated:0];
  [(HKMedicalIDEditorPickerCell *)self reloadInputViews];
  inputTextField2 = [(HKMedicalIDEditorCell *)self inputTextField];
  [inputTextField2 becomeFirstResponder];
}

- (void)_hidePicker
{
  inputTextField = [(HKMedicalIDEditorCell *)self inputTextField];
  [inputTextField resignFirstResponder];
}

- (void)dealloc
{
  [(UIPickerView *)self->_picker setDataSource:0];
  [(UIPickerView *)self->_picker setDelegate:0];
  v3.receiver = self;
  v3.super_class = HKMedicalIDEditorPickerCell;
  [(HKMedicalIDEditorCell *)&v3 dealloc];
}

- (void)beginEditing
{
  v3.receiver = self;
  v3.super_class = HKMedicalIDEditorPickerCell;
  [(HKMedicalIDEditorCell *)&v3 beginEditing];
  [(HKMedicalIDEditorPickerCell *)self _showPicker];
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  self->_chosenValueIndex = [(UIPickerView *)self->_picker selectedRowInComponent:0, row, component];

  [(HKMedicalIDEditorCell *)self valueDidChange];
}

@end