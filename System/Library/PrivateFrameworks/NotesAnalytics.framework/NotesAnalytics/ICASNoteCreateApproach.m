@interface ICASNoteCreateApproach
- (ICASNoteCreateApproach)initWithNoteCreateApproach:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASNoteCreateApproach

- (ICASNoteCreateApproach)initWithNoteCreateApproach:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASNoteCreateApproach;
  result = [(ICASNoteCreateApproach *)&v5 init];
  if (result)
  {
    result->_noteCreateApproach = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASNoteCreateApproach *)self noteCreateApproach];
  if ((v3 - 1) > 0x15)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF828[v3 - 1];
  }
}

@end