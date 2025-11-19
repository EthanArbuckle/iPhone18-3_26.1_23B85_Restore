@interface ICASDocScanStage
- (ICASDocScanStage)initWithDocScanStage:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASDocScanStage

- (ICASDocScanStage)initWithDocScanStage:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASDocScanStage;
  result = [(ICASDocScanStage *)&v5 init];
  if (result)
  {
    result->_docScanStage = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASDocScanStage *)self docScanStage];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"initiate";
  }

  if (v3 == 2)
  {
    return @"complete";
  }

  else
  {
    return v4;
  }
}

@end