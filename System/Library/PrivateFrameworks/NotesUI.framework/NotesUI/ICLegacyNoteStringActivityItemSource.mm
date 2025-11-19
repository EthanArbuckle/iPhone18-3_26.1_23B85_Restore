@interface ICLegacyNoteStringActivityItemSource
- (ICLegacyNoteStringActivityItemSource)initWithTitle:(id)a3 content:(id)a4 plainText:(id)a5;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
@end

@implementation ICLegacyNoteStringActivityItemSource

- (ICLegacyNoteStringActivityItemSource)initWithTitle:(id)a3 content:(id)a4 plainText:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ICLegacyNoteStringActivityItemSource;
  v10 = [(ICNoteBaseActivityItemSource *)&v13 initWithTitle:a3];
  v11 = v10;
  if (v10)
  {
    [(ICLegacyNoteStringActivityItemSource *)v10 setContent:v8];
    [(ICLegacyNoteStringActivityItemSource *)v11 setPlainText:v9];
  }

  return v11;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  if ([a4 isEqual:*MEMORY[0x1E69CDA78]])
  {
    [(ICLegacyNoteStringActivityItemSource *)self plainText];
  }

  else
  {
    [(ICLegacyNoteStringActivityItemSource *)self content];
  }
  v5 = ;

  return v5;
}

@end