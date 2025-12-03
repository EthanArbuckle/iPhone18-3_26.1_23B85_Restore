@interface ICASFolderLabelType
- (ICASFolderLabelType)initWithFolderLabelType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASFolderLabelType

- (ICASFolderLabelType)initWithFolderLabelType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASFolderLabelType;
  result = [(ICASFolderLabelType *)&v5 init];
  if (result)
  {
    result->_folderLabelType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  folderLabelType = [(ICASFolderLabelType *)self folderLabelType];
  if ((folderLabelType - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF790[folderLabelType - 1];
  }
}

@end