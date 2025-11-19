@interface CalculateScanResult
+ (id)resultWithRange:(_NSRange)a3;
- (CalculateScanResult)initWithRange:(_NSRange)a3;
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

- (CalculateScanResult)initWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
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

+ (id)resultWithRange:(_NSRange)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithRange:{a3.location, a3.length}];

  return v3;
}

@end