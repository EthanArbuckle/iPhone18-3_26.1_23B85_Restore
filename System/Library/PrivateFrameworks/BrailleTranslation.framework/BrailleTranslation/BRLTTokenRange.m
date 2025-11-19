@interface BRLTTokenRange
- (BRLTTokenRange)initWithRange:(_NSRange)a3 token:(int64_t)a4;
- (_NSRange)range;
@end

@implementation BRLTTokenRange

- (BRLTTokenRange)initWithRange:(_NSRange)a3 token:(int64_t)a4
{
  length = a3.length;
  location = a3.location;
  v8.receiver = self;
  v8.super_class = BRLTTokenRange;
  result = [(BRLTTokenRange *)&v8 init];
  result->_range.location = location;
  result->_range.length = length;
  result->_token = a4;
  return result;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end