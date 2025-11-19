@interface ICASImportFileType
- (ICASImportFileType)initWithImportFileType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASImportFileType

- (ICASImportFileType)initWithImportFileType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASImportFileType;
  result = [(ICASImportFileType *)&v5 init];
  if (result)
  {
    result->_importFileType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASImportFileType *)self importFileType];
  if ((v3 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF4D0[v3 - 1];
  }
}

@end