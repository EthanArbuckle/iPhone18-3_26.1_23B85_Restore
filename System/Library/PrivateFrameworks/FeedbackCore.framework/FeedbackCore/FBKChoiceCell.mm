@interface FBKChoiceCell
- (FBKQuestionChoice)choice;
- (id)appIconForChoice:(id)choice;
- (void)evaluateSelectionWithValue:(id)value;
- (void)evaluateSelectionWithValues:(id)values;
- (void)updateWithChoice:(id)choice;
@end

@implementation FBKChoiceCell

- (void)updateWithChoice:(id)choice
{
  choiceCopy = choice;
  [(FBKChoiceCell *)self setChoice:choiceCopy];
  textLabel = [(FBKChoiceCell *)self textLabel];
  [textLabel setNumberOfLines:0];

  title = [choiceCopy title];
  textLabel2 = [(FBKChoiceCell *)self textLabel];
  [textLabel2 setText:title];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  textLabel3 = [(FBKChoiceCell *)self textLabel];
  [textLabel3 setTextColor:labelColor];

  textLabel4 = [(FBKChoiceCell *)self textLabel];
  [textLabel4 setTextAlignment:4];

  choice = [(FBKChoiceCell *)self choice];
  LODWORD(textLabel3) = [choice canSelect];

  if (textLabel3)
  {
    [(FBKChoiceCell *)self setUserInteractionEnabled:1];
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [(FBKChoiceCell *)self setUserInteractionEnabled:0];
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v11 = ;
  textLabel5 = [(FBKChoiceCell *)self textLabel];
  [textLabel5 setTextColor:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [(FBKChoiceCell *)self appIconForChoice:choiceCopy];
    imageView = [(FBKChoiceCell *)self imageView];
    [imageView setImage:v13];
  }

  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [(FBKChoiceCell *)self setBackgroundColor:secondarySystemGroupedBackgroundColor];
}

- (void)evaluateSelectionWithValue:(id)value
{
  valueCopy = value;
  choice = [(FBKChoiceCell *)self choice];
  value = [choice value];
  v6 = [value isEqualToString:valueCopy];

  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  [(FBKChoiceCell *)self setAccessoryType:v7];
}

- (void)evaluateSelectionWithValues:(id)values
{
  valuesCopy = values;
  choice = [(FBKChoiceCell *)self choice];
  value = [choice value];
  v6 = [valuesCopy containsObject:value];

  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  [(FBKChoiceCell *)self setAccessoryType:v7];
}

- (id)appIconForChoice:(id)choice
{
  choiceCopy = choice;
  v5 = [choiceCopy app];

  if (v5)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v8 = v7;

    v9 = objc_alloc(MEMORY[0x1E69A8A00]);
    v10 = [choiceCopy app];
    identifier = [v10 identifier];
    v12 = [v9 initWithBundleIdentifier:identifier];

    textLabel = [(FBKChoiceCell *)self textLabel];
    [textLabel frame];
    v15 = v14 * 0.6;

    v16 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v15 scale:{v15, v8}];
    v17 = [v12 imageForImageDescriptor:v16];
    cGImage = [v17 CGImage];
    v19 = [MEMORY[0x1E69DCAB8] imageWithCGImage:cGImage scale:0 orientation:v8];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (FBKQuestionChoice)choice
{
  WeakRetained = objc_loadWeakRetained(&self->_choice);

  return WeakRetained;
}

@end