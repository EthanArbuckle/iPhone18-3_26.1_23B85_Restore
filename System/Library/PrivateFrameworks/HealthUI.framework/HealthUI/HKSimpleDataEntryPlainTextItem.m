@interface HKSimpleDataEntryPlainTextItem
- (HKSimpleDataEntryPlainTextItem)initWithTitle:(id)a3 registrantModelKey:(id)a4 defaultText:(id)a5 intention:(int64_t)a6;
- (id)cell;
- (id)formattedKeyAndValue;
- (void)doneButtonTapped:(id)a3;
- (void)textFieldDidChangeValue:(id)a3 forCell:(id)a4;
- (void)updateCellDisplay;
@end

@implementation HKSimpleDataEntryPlainTextItem

- (HKSimpleDataEntryPlainTextItem)initWithTitle:(id)a3 registrantModelKey:(id)a4 defaultText:(id)a5 intention:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = HKSimpleDataEntryPlainTextItem;
  v14 = [(HKSimpleDataEntryPlainTextItem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_title, a3);
    objc_storeStrong(&v15->_registrantModelKey, a4);
    objc_storeStrong(&v15->_text, a5);
    v15->_intention = a6;
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

    v6 = [(HKSimpleDataEntryPlainTextCell *)self->_cell titleLabel];
    [v6 setText:self->_title];

    v7 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    [v7 setText:self->_text];

    v8 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v9 = [MEMORY[0x1E69DC888] labelColor];
    [v8 setTextColor:v9];

    [(HKSimpleDataEntryPlainTextCell *)self->_cell setDelegate:self];
    v10 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
    v11 = [(HKSimpleDataEntryItem *)self accessoryToolbar];
    [v10 setInputAccessoryView:v11];

    v12 = [(HKSimpleDataEntryItem *)self placeholderType];
    if (v12 == 1)
    {
      v13 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
      v16 = objc_alloc(MEMORY[0x1E696AAB0]);
      v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v17 = [v14 localizedStringForKey:@"OD_PLACEHOLDER_REQUIRED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v22 = *MEMORY[0x1E69DB650];
      v18 = HKHealthKeyColor();
      v23[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v20 = [v16 initWithString:v17 attributes:v19];
      [v13 setAttributedPlaceholder:v20];
    }

    else
    {
      if (v12)
      {
LABEL_7:
        [(HKSimpleDataEntryPlainTextItem *)self updateCellDisplay];
        cell = self->_cell;
        goto LABEL_8;
      }

      v13 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
      v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v15 = [v14 localizedStringForKey:@"OD_PLACEHOLDER_OPTIONAL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      [v13 setPlaceholder:v15];
    }

    goto LABEL_7;
  }

LABEL_8:

  return cell;
}

- (void)updateCellDisplay
{
  v3 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
  [v3 setText:self->_text];
}

- (void)doneButtonTapped:(id)a3
{
  v3 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];
  [v3 resignFirstResponder];
}

- (void)textFieldDidChangeValue:(id)a3 forCell:(id)a4
{
  v10 = a3;
  v5 = [(HKSimpleDataEntryPlainTextCell *)self->_cell inputTextField];

  v6 = v10;
  if (v5 == v10)
  {
    v7 = [v10 text];
    text = self->_text;
    self->_text = v7;

    v9 = [(HKSimpleDataEntryItem *)self delegate];
    [v9 dataEntryItemDidUpdateValue:self];

    v6 = v10;
  }
}

@end