@interface ICASStartMode
- (ICASStartMode)initWithStartMode:(int64_t)mode;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASStartMode

- (ICASStartMode)initWithStartMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = ICASStartMode;
  result = [(ICASStartMode *)&v5 init];
  if (result)
  {
    result->_startMode = mode;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  startMode = [(ICASStartMode *)self startMode];
  v4 = @"unknown";
  if (startMode == 1)
  {
    v4 = @"v1";
  }

  if (startMode == 2)
  {
    return @"v2";
  }

  else
  {
    return v4;
  }
}

@end