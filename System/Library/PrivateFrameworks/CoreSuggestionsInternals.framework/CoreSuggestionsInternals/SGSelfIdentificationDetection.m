@interface SGSelfIdentificationDetection
- (_NSRange)contextRange;
@end

@implementation SGSelfIdentificationDetection

- (_NSRange)contextRange
{
  length = self->_contextRange.length;
  location = self->_contextRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end