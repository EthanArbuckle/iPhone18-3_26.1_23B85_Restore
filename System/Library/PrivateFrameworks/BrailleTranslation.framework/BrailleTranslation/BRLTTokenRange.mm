@interface BRLTTokenRange
- (BRLTTokenRange)initWithRange:(_NSRange)range token:(int64_t)token;
- (_NSRange)range;
@end

@implementation BRLTTokenRange

- (BRLTTokenRange)initWithRange:(_NSRange)range token:(int64_t)token
{
  length = range.length;
  location = range.location;
  v8.receiver = self;
  v8.super_class = BRLTTokenRange;
  result = [(BRLTTokenRange *)&v8 init];
  result->_range.location = location;
  result->_range.length = length;
  result->_token = token;
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