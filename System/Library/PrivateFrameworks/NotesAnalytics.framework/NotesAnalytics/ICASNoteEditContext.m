@interface ICASNoteEditContext
- (ICASNoteEditContext)initWithNoteEditContext:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASNoteEditContext

- (ICASNoteEditContext)initWithNoteEditContext:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASNoteEditContext;
  result = [(ICASNoteEditContext *)&v5 init];
  if (result)
  {
    result->_noteEditContext = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASNoteEditContext *)self noteEditContext];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"inNote";
  }

  if (v3 == 2)
  {
    return @"quickNote";
  }

  else
  {
    return v4;
  }
}

@end