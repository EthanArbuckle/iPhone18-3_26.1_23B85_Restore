@interface CalculateScanResult
+ (id)resultWithRange:(_NSRange)range;
- (CalculateScanResult)initWithRange:(_NSRange)range;
- (_NSRange)range;
@end

@implementation CalculateScanResult

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CalculateScanResult)initWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6.receiver = self;
  v6.super_class = CalculateScanResult;
  result = [(CalculateScanResult *)&v6 init];
  if (result)
  {
    result->_range.location = location;
    result->_range.length = length;
  }

  return result;
}

+ (id)resultWithRange:(_NSRange)range
{
  v3 = [objc_alloc(objc_opt_class()) initWithRange:{range.location, range.length}];

  return v3;
}

@end