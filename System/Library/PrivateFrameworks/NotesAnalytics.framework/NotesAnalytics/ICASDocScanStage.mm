@interface ICASDocScanStage
- (ICASDocScanStage)initWithDocScanStage:(int64_t)stage;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASDocScanStage

- (ICASDocScanStage)initWithDocScanStage:(int64_t)stage
{
  v5.receiver = self;
  v5.super_class = ICASDocScanStage;
  result = [(ICASDocScanStage *)&v5 init];
  if (result)
  {
    result->_docScanStage = stage;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  docScanStage = [(ICASDocScanStage *)self docScanStage];
  v4 = @"unknown";
  if (docScanStage == 1)
  {
    v4 = @"initiate";
  }

  if (docScanStage == 2)
  {
    return @"complete";
  }

  else
  {
    return v4;
  }
}

@end