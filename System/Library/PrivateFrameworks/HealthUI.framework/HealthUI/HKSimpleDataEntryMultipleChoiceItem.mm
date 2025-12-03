@interface HKSimpleDataEntryMultipleChoiceItem
- (HKSimpleDataEntryMultipleChoiceItem)initWithTitle:(id)title registrantModelKey:(id)key choices:(id)choices choiceDisplayNames:(id)names defaultChoice:(id)choice;
- (id)cell;
- (id)formattedKeyAndValue;
- (void)_setTextForInputTextField:(id)field;
- (void)_setupPlaceholder;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)updateCellDisplay;
@end

@implementation HKSimpleDataEntryMultipleChoiceItem

- (HKSimpleDataEntryMultipleChoiceItem)initWithTitle:(id)title registrantModelKey:(id)key choices:(id)choices choiceDisplayNames:(id)names defaultChoice:(id)choice
{
  titleCopy = title;
  keyCopy = key;
  choicesCopy = choices;
  namesCopy = names;
  choiceCopy = choice;
  v24.receiver = self;
  v24.super_class = HKSimpleDataEntryMultipleChoiceItem;
  v17 = [(HKSimpleDataEntryMultipleChoiceItem *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, title);
    objc_storeStrong(&v18->_registrantModelKey, key);
    v19 = [choicesCopy indexOfObject:choiceCopy];
    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:v19];
      chosenIndex = v18->_chosenIndex;
      v18->_chosenIndex = v20;
    }

    objc_storeStrong(&v18->_choices, choices);
    objc_storeStrong(&v18->_choiceDisplayValues, names);
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

    titleLabel = [(HKSimpleDataEntryPlainTextCell *)self->_cell titleLabel];
    [titleLabel setText:self->_title];

    v7 = objc_alloc_init(MEMORY[0x1E69DCD78]);
    picker = self->_picker;
    self->_picker = v7;

    [(UIPickerView *)self->_picker setDelegate:self];
    [(UIPickerView *)self->_picker setDataSource:self];
    [(UIPickerView *)self->_picker selectRow:[(NSNumber *)self->_chosenIndex integerValue] inComponent:0 animated:0];
    v9 = [HKHostingAreaLayoutView viewHostingView:self->_picker];
    inputTextField = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    [inputTextField setInputView:v9];

    inputTextField2 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    accessoryToolbar = [(HKSimpleDataEntryItem *)self accessoryToolbar];
    [inputTextField2 setInputAccessoryView:accessoryToolbar];

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
    integerValue = [(NSNumber *)chosenIndex integerValue];
    if (integerValue < [(NSArray *)self->_choiceDisplayValues count])
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
    inputTextField = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:@"OD_PLACEHOLDER_OPTIONAL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [inputTextField setPlaceholder:v5];
  }

  [(HKSimpleDataEntryMultipleChoiceItem *)self _setTextForInputTextField:0];
}

- (void)_setTextForInputTextField:(id)field
{
  fieldCopy = field;
  if (-[HKSimpleDataEntryItem placeholderType](self, "placeholderType") == 1 && ![fieldCopy length])
  {
    inputTextField = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v10 = [v9 localizedStringForKey:@"OD_PICKER_CHOOSE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [inputTextField setText:v10];

    inputTextField2 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    labelColor = HKHealthKeyColor();
  }

  else
  {
    inputTextField3 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    [inputTextField3 setText:fieldCopy];

    inputTextField2 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  v7 = labelColor;
  [inputTextField2 setTextColor:labelColor];
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:row];
  chosenIndex = self->_chosenIndex;
  self->_chosenIndex = v6;

  [(HKSimpleDataEntryMultipleChoiceItem *)self updateCellDisplay];
  delegate = [(HKSimpleDataEntryItem *)self delegate];
  [delegate dataEntryItemDidUpdateValue:self];
}

@end