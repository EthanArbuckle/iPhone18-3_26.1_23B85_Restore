@interface ICASNoteEditContext
- (ICASNoteEditContext)initWithNoteEditContext:(int64_t)context;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASNoteEditContext

- (ICASNoteEditContext)initWithNoteEditContext:(int64_t)context
{
  v5.receiver = self;
  v5.super_class = ICASNoteEditContext;
  result = [(ICASNoteEditContext *)&v5 init];
  if (result)
  {
    result->_noteEditContext = context;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  noteEditContext = [(ICASNoteEditContext *)self noteEditContext];
  v4 = @"unknown";
  if (noteEditContext == 1)
  {
    v4 = @"inNote";
  }

  if (noteEditContext == 2)
  {
    return @"quickNote";
  }

  else
  {
    return v4;
  }
}

@end