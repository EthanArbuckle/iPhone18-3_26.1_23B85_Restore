@interface ICNoteStringActivityItemSource
- (BOOL)allowsAttributedStringForActivityType:(id)type;
- (ICNoteStringActivityItemSource)init;
- (ICNoteStringActivityItemSource)initWithTitle:(id)title attributedStringCreator:(id)creator;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation ICNoteStringActivityItemSource

- (ICNoteStringActivityItemSource)init
{
  [(ICNoteStringActivityItemSource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICNoteStringActivityItemSource)initWithTitle:(id)title attributedStringCreator:(id)creator
{
  creatorCopy = creator;
  v10.receiver = self;
  v10.super_class = ICNoteStringActivityItemSource;
  v7 = [(ICNoteBaseActivityItemSource *)&v10 initWithTitle:title];
  v8 = v7;
  if (creatorCopy)
  {
    [(ICNoteStringActivityItemSource *)v7 setAttributedStringCreator:creatorCopy];
  }

  else
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"attributedStringCreator" functionName:"-[ICNoteStringActivityItemSource initWithTitle:attributedStringCreator:]" simulateCrash:1 showAlert:0 format:@"attributedStringCreator is nil"];

    v8 = 0;
  }

  return v8;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = objc_opt_new();

  return v3;
}

- (BOOL)allowsAttributedStringForActivityType:(id)type
{
  v3 = allowsAttributedStringForActivityType__onceToken;
  typeCopy = type;
  if (v3 != -1)
  {
    [ICNoteStringActivityItemSource allowsAttributedStringForActivityType:];
  }

  v5 = [allowsAttributedStringForActivityType__s_activitiesSupportingAttributedString containsObject:typeCopy];

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

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x1E69CDAA0]])
  {
    v6 = 0;
  }

  else
  {
    attributedString = [(ICNoteStringActivityItemSource *)self attributedString];

    if (!attributedString)
    {
      attributedStringCreator = [(ICNoteStringActivityItemSource *)self attributedStringCreator];
      v9 = attributedStringCreator[2]();
      [(ICNoteStringActivityItemSource *)self setAttributedString:v9];
    }

    v10 = [(ICNoteStringActivityItemSource *)self allowsAttributedStringForActivityType:typeCopy];
    attributedString2 = [(ICNoteStringActivityItemSource *)self attributedString];
    v6 = attributedString2;
    if (!v10)
    {
      string = [attributedString2 string];

      v6 = string;
    }
  }

  return v6;
}

@end