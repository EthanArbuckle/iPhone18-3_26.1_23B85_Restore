@interface ICNoteTopoTextActivityItemSource
- (ICNoteTopoTextActivityItemSource)initWithNote:(id)a3;
- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
@end

@implementation ICNoteTopoTextActivityItemSource

- (ICNoteTopoTextActivityItemSource)initWithNote:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICNoteTopoTextActivityItemSource;
  v5 = [(ICNoteTopoTextActivityItemSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICNoteTopoTextActivityItemSource *)v5 setNote:v4];
  }

  return v6;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  if ([a4 isEqualToString:*MEMORY[0x1E69CDA90]])
  {
    v5 = [(ICNoteTopoTextActivityItemSource *)self note];
    v6 = [v5 textStorage];

    v7 = [v6 length];
    v8 = [v6 mergeableString];
    v9 = [v8 attributedString];
    v10 = [v9 attributedSubstringFromRange:{0, v7}];

    v11 = objc_alloc(MEMORY[0x1E69B7730]);
    v12 = [(ICNoteTopoTextActivityItemSource *)self note];
    v13 = [v12 identifier];
    v14 = [v11 initWithObjectIdentifier:v13 forPasteboard:1];

    v15 = [ICTextController removeBeginningListStyleIfNecessaryForAttributedString:v10 fromTextStorage:v6 andRange:0, v7];

    v16 = [MEMORY[0x1E69B7800] sharedContext];
    v17 = [v16 managedObjectContext];
    v18 = [v15 ic_serializeWithFlags:1 dataPersister:v14 managedObjectContext:v17 error:0];

    if (v18)
    {
      v19 = [objc_alloc(MEMORY[0x1E69B7810]) initWithAttributedStringData:v18 dataPersister:v14];
      v23 = *MEMORY[0x1E69B7508];
      v20 = [v19 persistenceData];
      v24[0] = v20;
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

- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4
{
  if ([a4 isEqualToString:*MEMORY[0x1E69CDA90]])
  {
    v4 = *MEMORY[0x1E69B7508];
  }

  else
  {
    v4 = [*MEMORY[0x1E6982F40] identifier];
  }

  return v4;
}

@end