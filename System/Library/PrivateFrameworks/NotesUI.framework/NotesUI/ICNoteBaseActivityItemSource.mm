@interface ICNoteBaseActivityItemSource
- (ICNoteBaseActivityItemSource)initWithTitle:(id)a3;
@end

@implementation ICNoteBaseActivityItemSource

- (ICNoteBaseActivityItemSource)initWithTitle:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICNoteBaseActivityItemSource;
  v5 = [(ICNoteBaseActivityItemSource *)&v8 init];
  if (v5)
  {
    if ([v4 length])
    {
      [(ICNoteBaseActivityItemSource *)v5 setTitle:v4];
    }

    else
    {
      v6 = [MEMORY[0x1E69B77F0] defaultTitleForEmptyNote];
      [(ICNoteBaseActivityItemSource *)v5 setTitle:v6];
    }
  }

  return v5;
}

@end