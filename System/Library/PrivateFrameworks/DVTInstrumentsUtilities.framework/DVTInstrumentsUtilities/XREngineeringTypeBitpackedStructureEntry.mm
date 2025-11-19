@interface XREngineeringTypeBitpackedStructureEntry
- (_NSRange)bitRange;
@end

@implementation XREngineeringTypeBitpackedStructureEntry

- (_NSRange)bitRange
{
  length = self->_bitRange.length;
  location = self->_bitRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end