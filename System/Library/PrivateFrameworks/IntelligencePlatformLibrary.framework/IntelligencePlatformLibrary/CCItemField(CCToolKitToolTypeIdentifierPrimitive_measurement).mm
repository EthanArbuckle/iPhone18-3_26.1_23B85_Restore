@interface CCItemField(CCToolKitToolTypeIdentifierPrimitive_measurement)
- (uint64_t)toolKitToolTypeIdentifierPrimitiveMeasurement;
@end

@implementation CCItemField(CCToolKitToolTypeIdentifierPrimitive_measurement)

- (uint64_t)toolKitToolTypeIdentifierPrimitiveMeasurement
{
  LODWORD(result) = [self uint32Value];
  if (result >= 0x17)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end