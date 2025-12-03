@interface ICASFolderType
- (ICASFolderType)initWithFolderType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASFolderType

- (ICASFolderType)initWithFolderType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASFolderType;
  result = [(ICASFolderType *)&v5 init];
  if (result)
  {
    result->_folderType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  folderType = [(ICASFolderType *)self folderType];
  v4 = @"unknown";
  if (folderType == 1)
  {
    v4 = @"modern";
  }

  if (folderType == 2)
  {
    return @"html";
  }

  else
  {
    return v4;
  }
}

@end