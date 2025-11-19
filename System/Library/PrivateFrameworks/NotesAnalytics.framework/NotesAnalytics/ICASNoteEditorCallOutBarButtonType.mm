@interface ICASNoteEditorCallOutBarButtonType
- (ICASNoteEditorCallOutBarButtonType)initWithNoteEditorCallOutBarButtonType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASNoteEditorCallOutBarButtonType

- (ICASNoteEditorCallOutBarButtonType)initWithNoteEditorCallOutBarButtonType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASNoteEditorCallOutBarButtonType;
  result = [(ICASNoteEditorCallOutBarButtonType *)&v5 init];
  if (result)
  {
    result->_noteEditorCallOutBarButtonType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASNoteEditorCallOutBarButtonType *)self noteEditorCallOutBarButtonType];
  if ((v3 - 1) > 0xD)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFF10[v3 - 1];
  }
}

@end