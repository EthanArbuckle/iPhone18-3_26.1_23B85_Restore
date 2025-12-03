@interface ICLegacyNoteStringActivityItemSource
- (ICLegacyNoteStringActivityItemSource)initWithTitle:(id)title content:(id)content plainText:(id)text;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
@end

@implementation ICLegacyNoteStringActivityItemSource

- (ICLegacyNoteStringActivityItemSource)initWithTitle:(id)title content:(id)content plainText:(id)text
{
  contentCopy = content;
  textCopy = text;
  v13.receiver = self;
  v13.super_class = ICLegacyNoteStringActivityItemSource;
  v10 = [(ICNoteBaseActivityItemSource *)&v13 initWithTitle:title];
  v11 = v10;
  if (v10)
  {
    [(ICLegacyNoteStringActivityItemSource *)v10 setContent:contentCopy];
    [(ICLegacyNoteStringActivityItemSource *)v11 setPlainText:textCopy];
  }

  return v11;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if ([type isEqual:*MEMORY[0x1E69CDA78]])
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