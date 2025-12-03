@interface HKSimpleDataEntryPlainTextItem
- (HKSimpleDataEntryPlainTextItem)initWithTitle:(id)title registrantModelKey:(id)key defaultText:(id)text intention:(int64_t)intention;
- (id)cell;
- (id)formattedKeyAndValue;
- (void)doneButtonTapped:(id)tapped;
- (void)textFieldDidChangeValue:(id)value forCell:(id)cell;
- (void)updateCellDisplay;
@end

@implementation HKSimpleDataEntryPlainTextItem

- (HKSimpleDataEntryPlainTextItem)initWithTitle:(id)title registrantModelKey:(id)key defaultText:(id)text intention:(int64_t)intention
{
  titleCopy = title;
  keyCopy = key;
  textCopy = text;
  v17.receiver = self;
  v17.super_class = HKSimpleDataEntryPlainTextItem;
  v14 = [(HKSimpleDataEntryPlainTextItem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_title, title);
    objc_storeStrong(&v15->_registrantModelKey, key);
    objc_storeStrong(&v15->_text, text);
    v15->_intention = intention;
  }

  return v15;
}

- (id)formattedKeyAndValue
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self->_text)
  {
    text = self->_text;
  }

  else
  {
    text = &stru_1F42FFBE0;
  }

  registrantModelKey = self->_registrantModelKey;
  v6[0] = text;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&registrantModelKey count:1];

  return v3;
}

- (id)cell
{
  v23[1] = *MEMORY[0x1E69E9840];
  cell = self->_cell;
  if (!cell)
  {
    v4 = [[HKSimpleDataEntryPlainTextCell alloc] initWithIntention:self->_intention reuseIdentifier:0];
    v5 = self->_cell;
    self->_cell = v4;

    titleLabel = [(HKSimpleDataEntryPlainTextCell *)self->_cell titleLabel];
    [titleLabel setText:self->_title];

    inputTextField = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    [inputTextField setText:self->_text];

    inputTextField2 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [inputTextField2 setTextColor:labelColor];

    [(HKSimpleDataEntryPlainTextCell *)self->_cell setDelegate:self];
    inputTextField3 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    accessoryToolbar = [(HKSimpleDataEntryItem *)self accessoryToolbar];
    [inputTextField3 setInputAccessoryView:accessoryToolbar];

    placeholderType = [(HKSimpleDataEntryItem *)self placeholderType];
    if (placeholderType == 1)
    {
      inputTextField4 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
      v16 = objc_alloc(MEMORY[0x1E696AAB0]);
      v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v17 = [v14 localizedStringForKey:@"OD_PLACEHOLDER_REQUIRED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v22 = *MEMORY[0x1E69DB650];
      v18 = HKHealthKeyColor();
      v23[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v20 = [v16 initWithString:v17 attributes:v19];
      [inputTextField4 setAttributedPlaceholder:v20];
    }

    else
    {
      if (placeholderType)
      {
LABEL_7:
        [(HKSimpleDataEntryPlainTextItem *)self updateCellDisplay];
        cell = self->_cell;
        goto LABEL_8;
      }

      inputTextField4 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
      v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v15 = [v14 localizedStringForKey:@"OD_PLACEHOLDER_OPTIONAL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      [inputTextField4 setPlaceholder:v15];
    }

    goto LABEL_7;
  }

LABEL_8:

  return cell;
}

- (void)updateCellDisplay
{
  inputTextField = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
  [inputTextField setText:self->_text];
}

- (void)doneButtonTapped:(id)tapped
{
  inputTextField = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
  [inputTextField resignFirstResponder];
}

- (void)textFieldDidChangeValue:(id)value forCell:(id)cell
{
  valueCopy = value;
  inputTextField = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];

  v6 = valueCopy;
  if (inputTextField == valueCopy)
  {
    text = [valueCopy text];
    text = self->_text;
    self->_text = text;

    delegate = [(HKSimpleDataEntryItem *)self delegate];
    [delegate dataEntryItemDidUpdateValue:self];

    v6 = valueCopy;
  }
}

@end