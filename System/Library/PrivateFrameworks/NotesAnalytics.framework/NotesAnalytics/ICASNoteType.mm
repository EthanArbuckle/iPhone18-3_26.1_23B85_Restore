@interface ICASNoteType
- (ICASNoteType)initWithNoteType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASNoteType

- (ICASNoteType)initWithNoteType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASNoteType;
  result = [(ICASNoteType *)&v5 init];
  if (result)
  {
    result->_noteType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  noteType = [(ICASNoteType *)self noteType];
  v4 = @"unknown";
  if (noteType == 1)
  {
    v4 = @"modern";
  }

  if (noteType == 2)
  {
    return @"html";
  }

  else
  {
    return v4;
  }
}

@end