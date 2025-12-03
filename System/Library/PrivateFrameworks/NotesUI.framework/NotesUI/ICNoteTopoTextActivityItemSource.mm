@interface ICNoteTopoTextActivityItemSource
- (ICNoteTopoTextActivityItemSource)initWithNote:(id)note;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
@end

@implementation ICNoteTopoTextActivityItemSource

- (ICNoteTopoTextActivityItemSource)initWithNote:(id)note
{
  noteCopy = note;
  v8.receiver = self;
  v8.super_class = ICNoteTopoTextActivityItemSource;
  v5 = [(ICNoteTopoTextActivityItemSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICNoteTopoTextActivityItemSource *)v5 setNote:noteCopy];
  }

  return v6;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  v24[1] = *MEMORY[0x1E69E9840];
  if ([type isEqualToString:*MEMORY[0x1E69CDA90]])
  {
    note = [(ICNoteTopoTextActivityItemSource *)self note];
    textStorage = [note textStorage];

    v7 = [textStorage length];
    mergeableString = [textStorage mergeableString];
    attributedString = [mergeableString attributedString];
    v10 = [attributedString attributedSubstringFromRange:{0, v7}];

    v11 = objc_alloc(MEMORY[0x1E69B7730]);
    note2 = [(ICNoteTopoTextActivityItemSource *)self note];
    identifier = [note2 identifier];
    v14 = [v11 initWithObjectIdentifier:identifier forPasteboard:1];

    v15 = [ICTextController removeBeginningListStyleIfNecessaryForAttributedString:v10 fromTextStorage:textStorage andRange:0, v7];

    mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
    managedObjectContext = [mEMORY[0x1E69B7800] managedObjectContext];
    v18 = [v15 ic_serializeWithFlags:1 dataPersister:v14 managedObjectContext:managedObjectContext error:0];

    if (v18)
    {
      v19 = [objc_alloc(MEMORY[0x1E69B7810]) initWithAttributedStringData:v18 dataPersister:v14];
      v23 = *MEMORY[0x1E69B7508];
      persistenceData = [v19 persistenceData];
      v24[0] = persistenceData;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type
{
  if ([type isEqualToString:*MEMORY[0x1E69CDA90]])
  {
    identifier = *MEMORY[0x1E69B7508];
  }

  else
  {
    identifier = [*MEMORY[0x1E6982F40] identifier];
  }

  return identifier;
}

@end