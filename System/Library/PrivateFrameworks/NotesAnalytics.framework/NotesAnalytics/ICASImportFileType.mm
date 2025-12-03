@interface ICASImportFileType
- (ICASImportFileType)initWithImportFileType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASImportFileType

- (ICASImportFileType)initWithImportFileType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASImportFileType;
  result = [(ICASImportFileType *)&v5 init];
  if (result)
  {
    result->_importFileType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  importFileType = [(ICASImportFileType *)self importFileType];
  if ((importFileType - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF4D0[importFileType - 1];
  }
}

@end