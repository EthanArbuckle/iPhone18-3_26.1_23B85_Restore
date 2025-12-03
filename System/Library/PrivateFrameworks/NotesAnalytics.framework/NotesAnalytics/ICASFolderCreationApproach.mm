@interface ICASFolderCreationApproach
- (ICASFolderCreationApproach)initWithFolderCreationApproach:(int64_t)approach;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASFolderCreationApproach

- (ICASFolderCreationApproach)initWithFolderCreationApproach:(int64_t)approach
{
  v5.receiver = self;
  v5.super_class = ICASFolderCreationApproach;
  result = [(ICASFolderCreationApproach *)&v5 init];
  if (result)
  {
    result->_folderCreationApproach = approach;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  folderCreationApproach = [(ICASFolderCreationApproach *)self folderCreationApproach];
  v4 = @"unknown";
  if (folderCreationApproach == 1)
  {
    v4 = @"folderAffordance";
  }

  if (folderCreationApproach == 2)
  {
    return @"tagBrowser";
  }

  else
  {
    return v4;
  }
}

@end