@interface _IKDSEBoundItemsPrototypeBundleEntry
- (_NSRange)range;
@end

@implementation _IKDSEBoundItemsPrototypeBundleEntry

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end