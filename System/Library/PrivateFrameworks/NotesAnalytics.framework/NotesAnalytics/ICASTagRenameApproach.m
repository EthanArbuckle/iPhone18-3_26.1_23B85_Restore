@interface ICASTagRenameApproach
- (ICASTagRenameApproach)initWithTagRenameApproach:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASTagRenameApproach

- (ICASTagRenameApproach)initWithTagRenameApproach:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASTagRenameApproach;
  result = [(ICASTagRenameApproach *)&v5 init];
  if (result)
  {
    result->_tagRenameApproach = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASTagRenameApproach *)self tagRenameApproach];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"inlineEdit";
  }

  if (v3 == 2)
  {
    return @"tagBrowserPressAndHold";
  }

  else
  {
    return v4;
  }
}

@end