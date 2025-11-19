@interface SGDataDetectorMatchesWithSignatureRange
- (_NSRange)signatureRange;
@end

@implementation SGDataDetectorMatchesWithSignatureRange

- (_NSRange)signatureRange
{
  length = self->_signatureRange.length;
  location = self->_signatureRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end