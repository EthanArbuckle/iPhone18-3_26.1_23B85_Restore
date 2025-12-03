@interface NoteBodyObject
- (NSString)contentAsPlainText;
- (id)contentAsPlainTextPreservingNewlines;
@end

@implementation NoteBodyObject

- (NSString)contentAsPlainText
{
  content = [(NoteBodyObject *)self content];

  if (content)
  {
    v4 = MEMORY[0x277D24F18];
    content2 = [(NoteBodyObject *)self content];
    v6 = [v4 plainTextFromHTML:content2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contentAsPlainTextPreservingNewlines
{
  content = [(NoteBodyObject *)self content];

  if (content)
  {
    v4 = MEMORY[0x277D24F18];
    content2 = [(NoteBodyObject *)self content];
    v6 = [v4 plainTextFromHTML:content2 limit:0xFFFFFFFFLL preserveNewlines:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end