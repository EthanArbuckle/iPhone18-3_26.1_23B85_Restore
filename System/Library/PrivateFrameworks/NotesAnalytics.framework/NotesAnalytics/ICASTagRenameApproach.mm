@interface ICASTagRenameApproach
- (ICASTagRenameApproach)initWithTagRenameApproach:(int64_t)approach;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASTagRenameApproach

- (ICASTagRenameApproach)initWithTagRenameApproach:(int64_t)approach
{
  v5.receiver = self;
  v5.super_class = ICASTagRenameApproach;
  result = [(ICASTagRenameApproach *)&v5 init];
  if (result)
  {
    result->_tagRenameApproach = approach;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  tagRenameApproach = [(ICASTagRenameApproach *)self tagRenameApproach];
  v4 = @"unknown";
  if (tagRenameApproach == 1)
  {
    v4 = @"inlineEdit";
  }

  if (tagRenameApproach == 2)
  {
    return @"tagBrowserPressAndHold";
  }

  else
  {
    return v4;
  }
}

@end