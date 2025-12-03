@interface DDURLMatch
- (DDURLMatch)initWithRange:(_NSRange)range url:(id)url;
- (_NSRange)range;
- (int64_t)compare:(id)compare;
- (void)dealloc;
@end

@implementation DDURLMatch

- (int64_t)compare:(id)compare
{
  range = [compare range];
  location = self->_range.location;
  v7 = location > range;
  if (location == range)
  {
    v7 = self->_range.length > v5;
  }

  if (v7)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DDURLMatch;
  [(DDURLMatch *)&v3 dealloc];
}

- (DDURLMatch)initWithRange:(_NSRange)range url:(id)url
{
  length = range.length;
  location = range.location;
  v10.receiver = self;
  v10.super_class = DDURLMatch;
  v7 = [(DDURLMatch *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_range.location = location;
    v7->_range.length = length;
    v7->_url = [url copyWithZone:0];
  }

  return v8;
}

@end