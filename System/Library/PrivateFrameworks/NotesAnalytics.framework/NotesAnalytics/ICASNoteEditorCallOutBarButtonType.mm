@interface ICASNoteEditorCallOutBarButtonType
- (ICASNoteEditorCallOutBarButtonType)initWithNoteEditorCallOutBarButtonType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASNoteEditorCallOutBarButtonType

- (ICASNoteEditorCallOutBarButtonType)initWithNoteEditorCallOutBarButtonType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASNoteEditorCallOutBarButtonType;
  result = [(ICASNoteEditorCallOutBarButtonType *)&v5 init];
  if (result)
  {
    result->_noteEditorCallOutBarButtonType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  noteEditorCallOutBarButtonType = [(ICASNoteEditorCallOutBarButtonType *)self noteEditorCallOutBarButtonType];
  if ((noteEditorCallOutBarButtonType - 1) > 0xD)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFF10[noteEditorCallOutBarButtonType - 1];
  }
}

@end