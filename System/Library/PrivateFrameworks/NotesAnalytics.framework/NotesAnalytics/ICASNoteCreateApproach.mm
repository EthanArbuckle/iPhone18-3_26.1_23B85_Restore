@interface ICASNoteCreateApproach
- (ICASNoteCreateApproach)initWithNoteCreateApproach:(int64_t)approach;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASNoteCreateApproach

- (ICASNoteCreateApproach)initWithNoteCreateApproach:(int64_t)approach
{
  v5.receiver = self;
  v5.super_class = ICASNoteCreateApproach;
  result = [(ICASNoteCreateApproach *)&v5 init];
  if (result)
  {
    result->_noteCreateApproach = approach;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  noteCreateApproach = [(ICASNoteCreateApproach *)self noteCreateApproach];
  if ((noteCreateApproach - 1) > 0x15)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF828[noteCreateApproach - 1];
  }
}

@end