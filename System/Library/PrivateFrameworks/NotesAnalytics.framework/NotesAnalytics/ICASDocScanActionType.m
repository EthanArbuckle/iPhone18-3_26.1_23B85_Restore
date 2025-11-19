@interface ICASDocScanActionType
- (ICASDocScanActionType)initWithDocScanActionType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASDocScanActionType

- (ICASDocScanActionType)initWithDocScanActionType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASDocScanActionType;
  result = [(ICASDocScanActionType *)&v5 init];
  if (result)
  {
    result->_docScanActionType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASDocScanActionType *)self docScanActionType];
  if ((v3 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF9A8[v3 - 1];
  }
}

@end