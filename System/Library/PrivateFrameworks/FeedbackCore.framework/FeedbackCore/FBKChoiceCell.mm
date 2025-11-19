@interface FBKChoiceCell
- (FBKQuestionChoice)choice;
- (id)appIconForChoice:(id)a3;
- (void)evaluateSelectionWithValue:(id)a3;
- (void)evaluateSelectionWithValues:(id)a3;
- (void)updateWithChoice:(id)a3;
@end

@implementation FBKChoiceCell

- (void)updateWithChoice:(id)a3
{
  v16 = a3;
  [(FBKChoiceCell *)self setChoice:v16];
  v4 = [(FBKChoiceCell *)self textLabel];
  [v4 setNumberOfLines:0];

  v5 = [v16 title];
  v6 = [(FBKChoiceCell *)self textLabel];
  [v6 setText:v5];

  v7 = [MEMORY[0x1E69DC888] labelColor];
  v8 = [(FBKChoiceCell *)self textLabel];
  [v8 setTextColor:v7];

  v9 = [(FBKChoiceCell *)self textLabel];
  [v9 setTextAlignment:4];

  v10 = [(FBKChoiceCell *)self choice];
  LODWORD(v8) = [v10 canSelect];

  if (v8)
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
  v12 = [(FBKChoiceCell *)self textLabel];
  [v12 setTextColor:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [(FBKChoiceCell *)self appIconForChoice:v16];
    v14 = [(FBKChoiceCell *)self imageView];
    [v14 setImage:v13];
  }

  v15 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [(FBKChoiceCell *)self setBackgroundColor:v15];
}

- (void)evaluateSelectionWithValue:(id)a3
{
  v4 = a3;
  v8 = [(FBKChoiceCell *)self choice];
  v5 = [v8 value];
  v6 = [v5 isEqualToString:v4];

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

- (void)evaluateSelectionWithValues:(id)a3
{
  v4 = a3;
  v8 = [(FBKChoiceCell *)self choice];
  v5 = [v8 value];
  v6 = [v4 containsObject:v5];

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

- (id)appIconForChoice:(id)a3
{
  v4 = a3;
  v5 = [v4 app];

  if (v5)
  {
    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v6 scale];
    v8 = v7;

    v9 = objc_alloc(MEMORY[0x1E69A8A00]);
    v10 = [v4 app];
    v11 = [v10 identifier];
    v12 = [v9 initWithBundleIdentifier:v11];

    v13 = [(FBKChoiceCell *)self textLabel];
    [v13 frame];
    v15 = v14 * 0.6;

    v16 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v15 scale:{v15, v8}];
    v17 = [v12 imageForImageDescriptor:v16];
    v18 = [v17 CGImage];
    v19 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v18 scale:0 orientation:v8];
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