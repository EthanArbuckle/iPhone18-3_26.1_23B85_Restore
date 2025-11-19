@interface HKSimpleDataEntryMultipleChoiceItem
- (HKSimpleDataEntryMultipleChoiceItem)initWithTitle:(id)a3 registrantModelKey:(id)a4 choices:(id)a5 choiceDisplayNames:(id)a6 defaultChoice:(id)a7;
- (id)cell;
- (id)formattedKeyAndValue;
- (void)_setTextForInputTextField:(id)a3;
- (void)_setupPlaceholder;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)updateCellDisplay;
@end

@implementation HKSimpleDataEntryMultipleChoiceItem

- (HKSimpleDataEntryMultipleChoiceItem)initWithTitle:(id)a3 registrantModelKey:(id)a4 choices:(id)a5 choiceDisplayNames:(id)a6 defaultChoice:(id)a7
{
  v23 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = HKSimpleDataEntryMultipleChoiceItem;
  v17 = [(HKSimpleDataEntryMultipleChoiceItem *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, a3);
    objc_storeStrong(&v18->_registrantModelKey, a4);
    v19 = [v14 indexOfObject:v16];
    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:v19];
      chosenIndex = v18->_chosenIndex;
      v18->_chosenIndex = v20;
    }

    objc_storeStrong(&v18->_choices, a5);
    objc_storeStrong(&v18->_choiceDisplayValues, a6);
  }

  return v18;
}

- (id)formattedKeyAndValue
{
  v6[1] = *MEMORY[0x1E69E9840];
  registrantModelKey = self->_registrantModelKey;
  v2 = [(NSArray *)self->_choices objectAtIndexedSubscript:[(NSNumber *)self->_chosenIndex integerValue]];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&registrantModelKey count:1];

  return v3;
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

    v7 = objc_alloc_init(MEMORY[0x1E69DCD78]);
    picker = self->_picker;
    self->_picker = v7;

    [(UIPickerView *)self->_picker setDelegate:self];
    [(UIPickerView *)self->_picker setDataSource:self];
    [(UIPickerView *)self->_picker selectRow:[(NSNumber *)self->_chosenIndex integerValue] inComponent:0 animated:0];
    v9 = [HKHostingAreaLayoutView viewHostingView:self->_picker];
    v10 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    [v10 setInputView:v9];

    v11 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v12 = [(HKSimpleDataEntryItem *)self accessoryToolbar];
    [v11 setInputAccessoryView:v12];

    [(HKSimpleDataEntryMultipleChoiceItem *)self _setupPlaceholder];
    [(HKSimpleDataEntryMultipleChoiceItem *)self updateCellDisplay];
    cell = self->_cell;
  }

  return cell;
}

- (void)updateCellDisplay
{
  chosenIndex = self->_chosenIndex;
  if (chosenIndex)
  {
    v4 = [(NSNumber *)chosenIndex integerValue];
    if (v4 < [(NSArray *)self->_choiceDisplayValues count])
    {
      v5 = [(NSArray *)self->_choiceDisplayValues objectAtIndexedSubscript:[(NSNumber *)self->_chosenIndex integerValue]];
      [(HKSimpleDataEntryMultipleChoiceItem *)self _setTextForInputTextField:v5];
    }
  }
}

- (void)_setupPlaceholder
{
  if (![(HKSimpleDataEntryItem *)self placeholderType])
  {
    v3 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:@"OD_PLACEHOLDER_OPTIONAL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [v3 setPlaceholder:v5];
  }

  [(HKSimpleDataEntryMultipleChoiceItem *)self _setTextForInputTextField:0];
}

- (void)_setTextForInputTextField:(id)a3
{
  v11 = a3;
  if (-[HKSimpleDataEntryItem placeholderType](self, "placeholderType") == 1 && ![v11 length])
  {
    v8 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v10 = [v9 localizedStringForKey:@"OD_PICKER_CHOOSE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [v8 setText:v10];

    v5 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v6 = HKHealthKeyColor();
  }

  else
  {
    v4 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    [v4 setText:v11];

    v5 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v6 = [MEMORY[0x1E69DC888] labelColor];
  }

  v7 = v6;
  [v5 setTextColor:v6];
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  chosenIndex = self->_chosenIndex;
  self->_chosenIndex = v6;

  [(HKSimpleDataEntryMultipleChoiceItem *)self updateCellDisplay];
  v8 = [(HKSimpleDataEntryItem *)self delegate];
  [v8 dataEntryItemDidUpdateValue:self];
}

@end