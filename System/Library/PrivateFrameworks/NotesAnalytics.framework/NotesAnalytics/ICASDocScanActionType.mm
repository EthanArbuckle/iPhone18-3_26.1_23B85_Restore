@interface ICASDocScanActionType
- (ICASDocScanActionType)initWithDocScanActionType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASDocScanActionType

- (ICASDocScanActionType)initWithDocScanActionType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASDocScanActionType;
  result = [(ICASDocScanActionType *)&v5 init];
  if (result)
  {
    result->_docScanActionType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  docScanActionType = [(ICASDocScanActionType *)self docScanActionType];
  if ((docScanActionType - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF9A8[docScanActionType - 1];
  }
}

@end