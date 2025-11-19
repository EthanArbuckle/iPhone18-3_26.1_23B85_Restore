@interface HKMedicalIDEditorHeightCell
- (HKMedicalIDEditorHeightCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)pickerView:(id)a3 widthForComponent:(int64_t)a4;
- (id)formattedValue;
- (void)_commonInit;
- (void)_hidePicker;
- (void)_localeDidChange:(id)a3;
- (void)_showPicker;
- (void)beginEditing;
- (void)dealloc;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)setCentimeterValue:(id)a3;
@end

@implementation HKMedicalIDEditorHeightCell

- (HKMedicalIDEditorHeightCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HKMedicalIDEditorHeightCell;
  v4 = [(HKMedicalIDEditorCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HKMedicalIDEditorHeightCell *)v4 _commonInit];
  }

  return v5;
}

- (void)_commonInit
{
  v3 = +[HKPersonHeightFormatter sharedFormatter];
  self->_usesImperialUnits = [v3 usesImperialUnits];
}

- (void)_localeDidChange:(id)a3
{
  [(HKMedicalIDEditorHeightCell *)self _commonInit];

  [(HKMedicalIDEditorCell *)self updateValueLabel];
}

- (id)formattedValue
{
  v3 = +[HKPersonHeightFormatter sharedFormatter];
  v4 = [(HKMedicalIDEditorHeightCell *)self centimeterValue];
  v5 = [v3 localizedStringFromHeightInCentimeters:v4];

  return v5;
}

- (void)setCentimeterValue:(id)a3
{
  objc_storeStrong(&self->_centimeterValue, a3);

  [(HKMedicalIDEditorCell *)self updateValueLabel];
}

- (void)_showPicker
{
  v3 = [(HKMedicalIDEditorHeightCell *)self centimeterValue];

  if (!v3)
  {
    v4 = MEMORY[0x1E696AD98];
    +[HKMedicalIDHeightPickerDataProvider defaultCentimeterValue];
    v5 = [v4 numberWithDouble:?];
    [(HKMedicalIDEditorHeightCell *)self setCentimeterValue:v5];
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
  v11 = [(HKMedicalIDEditorHeightCell *)self centimeterValue];
  [v11 doubleValue];
  v13 = v12;

  if (self->_usesImperialUnits)
  {
    v19 = 0;
    v20 = 0;
    v14 = +[HKPersonHeightFormatter sharedFormatter];
    [v14 getFeet:&v20 inches:&v19 fromCentimeters:v13];

    [(UIPickerView *)self->_picker selectRow:v20 inComponent:0 animated:0];
    v15 = self->_picker;
    v16 = v19;
    v17 = 1;
  }

  else
  {
    v15 = self->_picker;
    v16 = v13;
    v17 = 0;
  }

  [(UIPickerView *)v15 selectRow:v16 inComponent:v17 animated:0];
  [(HKMedicalIDEditorHeightCell *)self reloadInputViews];
  v18 = [(HKMedicalIDEditorCell *)self inputTextField];
  [v18 becomeFirstResponder];
}

- (void)dealloc
{
  [(UIPickerView *)self->_picker setDataSource:0];
  [(UIPickerView *)self->_picker setDelegate:0];
  v3.receiver = self;
  v3.super_class = HKMedicalIDEditorHeightCell;
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
  v3.super_class = HKMedicalIDEditorHeightCell;
  [(HKMedicalIDEditorCell *)&v3 beginEditing];
  [(HKMedicalIDEditorHeightCell *)self _showPicker];
}

- (double)pickerView:(id)a3 widthForComponent:(int64_t)a4
{
  if (self->_usesImperialUnits)
  {

    [HKPickerViewTitleMeasurer pickerView:a3 maxWidthForComponent:a4];
  }

  else
  {
    [a3 frame];
    return v7;
  }

  return result;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v7 = a3;
  v15 = v7;
  if (self->_usesImperialUnits)
  {
    v8 = fmax([v7 selectedRowInComponent:0], 0.0);
    v9 = fmax([v15 selectedRowInComponent:1], 0.0);
    v10 = MEMORY[0x1E696AD98];
    v11 = +[HKPersonHeightFormatter sharedFormatter];
    [v11 centimetersFromFeet:v8 inches:v9];
    v12 = [v10 numberWithDouble:?];
    centimeterValue = self->_centimeterValue;
    self->_centimeterValue = v12;
  }

  else
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v11 = self->_centimeterValue;
    self->_centimeterValue = v14;
  }

  [(HKMedicalIDEditorCell *)self valueDidChange];
}

@end