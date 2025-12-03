@interface ICNoteBaseActivityItemSource
- (ICNoteBaseActivityItemSource)initWithTitle:(id)title;
@end

@implementation ICNoteBaseActivityItemSource

- (ICNoteBaseActivityItemSource)initWithTitle:(id)title
{
  titleCopy = title;
  v8.receiver = self;
  v8.super_class = ICNoteBaseActivityItemSource;
  v5 = [(ICNoteBaseActivityItemSource *)&v8 init];
  if (v5)
  {
    if ([titleCopy length])
    {
      [(ICNoteBaseActivityItemSource *)v5 setTitle:titleCopy];
    }

    else
    {
      defaultTitleForEmptyNote = [MEMORY[0x1E69B77F0] defaultTitleForEmptyNote];
      [(ICNoteBaseActivityItemSource *)v5 setTitle:defaultTitleForEmptyNote];
    }
  }

  return v5;
}

@end