@interface ENUITextRange
+ (id)rangeWithRange:(_NSRange)a3;
- (_NSRange)range;
@end

@implementation ENUITextRange

+ (id)rangeWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = objc_alloc_init(ENUITextRange);
  [(ENUITextRange *)v5 setRange:location, length];

  return v5;
}

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

@end