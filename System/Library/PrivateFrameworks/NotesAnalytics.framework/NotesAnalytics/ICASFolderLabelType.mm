@interface ICASFolderLabelType
- (ICASFolderLabelType)initWithFolderLabelType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASFolderLabelType

- (ICASFolderLabelType)initWithFolderLabelType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASFolderLabelType;
  result = [(ICASFolderLabelType *)&v5 init];
  if (result)
  {
    result->_folderLabelType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASFolderLabelType *)self folderLabelType];
  if ((v3 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF790[v3 - 1];
  }
}

@end