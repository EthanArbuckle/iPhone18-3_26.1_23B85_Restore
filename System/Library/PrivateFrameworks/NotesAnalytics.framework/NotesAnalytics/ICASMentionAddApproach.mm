@interface ICASMentionAddApproach
- (ICASMentionAddApproach)initWithMentionAddApproach:(int64_t)approach;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASMentionAddApproach

- (ICASMentionAddApproach)initWithMentionAddApproach:(int64_t)approach
{
  v5.receiver = self;
  v5.super_class = ICASMentionAddApproach;
  result = [(ICASMentionAddApproach *)&v5 init];
  if (result)
  {
    result->_mentionAddApproach = approach;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  mentionAddApproach = [(ICASMentionAddApproach *)self mentionAddApproach];
  v4 = @"unknown";
  if (mentionAddApproach == 1)
  {
    v4 = @"text";
  }

  if (mentionAddApproach == 2)
  {
    return @"menuSelection";
  }

  else
  {
    return v4;
  }
}

@end