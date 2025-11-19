@interface ICASMentionAddApproach
- (ICASMentionAddApproach)initWithMentionAddApproach:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASMentionAddApproach

- (ICASMentionAddApproach)initWithMentionAddApproach:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASMentionAddApproach;
  result = [(ICASMentionAddApproach *)&v5 init];
  if (result)
  {
    result->_mentionAddApproach = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASMentionAddApproach *)self mentionAddApproach];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"text";
  }

  if (v3 == 2)
  {
    return @"menuSelection";
  }

  else
  {
    return v4;
  }
}

@end