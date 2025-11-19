@interface ICNoteStringActivityItemSource
- (BOOL)allowsAttributedStringForActivityType:(id)a3;
- (ICNoteStringActivityItemSource)init;
- (ICNoteStringActivityItemSource)initWithTitle:(id)a3 attributedStringCreator:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation ICNoteStringActivityItemSource

- (ICNoteStringActivityItemSource)init
{
  [(ICNoteStringActivityItemSource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICNoteStringActivityItemSource)initWithTitle:(id)a3 attributedStringCreator:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ICNoteStringActivityItemSource;
  v7 = [(ICNoteBaseActivityItemSource *)&v10 initWithTitle:a3];
  v8 = v7;
  if (v6)
  {
    [(ICNoteStringActivityItemSource *)v7 setAttributedStringCreator:v6];
  }

  else
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"attributedStringCreator" functionName:"-[ICNoteStringActivityItemSource initWithTitle:attributedStringCreator:]" simulateCrash:1 showAlert:0 format:@"attributedStringCreator is nil"];

    v8 = 0;
  }

  return v8;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (BOOL)allowsAttributedStringForActivityType:(id)a3
{
  v3 = allowsAttributedStringForActivityType__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [ICNoteStringActivityItemSource allowsAttributedStringForActivityType:];
  }

  v5 = [allowsAttributedStringForActivityType__s_activitiesSupportingAttributedString containsObject:v4];

  return v5;
}

void __72__ICNoteStringActivityItemSource_allowsAttributedStringForActivityType___block_invoke()
{
  if (!allowsAttributedStringForActivityType__s_activitiesSupportingAttributedString)
  {
    v0 = objc_alloc(MEMORY[0x1E695DFD8]);
    v1 = [v0 initWithObjects:{*MEMORY[0x1E69CDAC0], *MEMORY[0x1E69CDAE8], *MEMORY[0x1E69CDAB0], *MEMORY[0x1E69CDAA0], *MEMORY[0x1E69CDAD0], 0}];
    allowsAttributedStringForActivityType__s_activitiesSupportingAttributedString = v1;

    MEMORY[0x1EEE66BB8](v1);
  }
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = a4;
  if ([v5 isEqualToString:*MEMORY[0x1E69CDAA0]])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(ICNoteStringActivityItemSource *)self attributedString];

    if (!v7)
    {
      v8 = [(ICNoteStringActivityItemSource *)self attributedStringCreator];
      v9 = v8[2]();
      [(ICNoteStringActivityItemSource *)self setAttributedString:v9];
    }

    v10 = [(ICNoteStringActivityItemSource *)self allowsAttributedStringForActivityType:v5];
    v11 = [(ICNoteStringActivityItemSource *)self attributedString];
    v6 = v11;
    if (!v10)
    {
      v12 = [v11 string];

      v6 = v12;
    }
  }

  return v6;
}

@end