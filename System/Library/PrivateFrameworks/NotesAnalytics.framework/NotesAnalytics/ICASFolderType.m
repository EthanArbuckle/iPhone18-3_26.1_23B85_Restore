@interface ICASFolderType
- (ICASFolderType)initWithFolderType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASFolderType

- (ICASFolderType)initWithFolderType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASFolderType;
  result = [(ICASFolderType *)&v5 init];
  if (result)
  {
    result->_folderType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASFolderType *)self folderType];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"modern";
  }

  if (v3 == 2)
  {
    return @"html";
  }

  else
  {
    return v4;
  }
}

@end