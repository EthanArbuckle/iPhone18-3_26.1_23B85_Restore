@interface CCItemField(CCToolKitToolTypedValuePrimitiveValuePlacemark_type)
- (uint64_t)toolKitToolTypedValuePrimitiveValuePlacemarkType;
@end

@implementation CCItemField(CCToolKitToolTypedValuePrimitiveValuePlacemark_type)

- (uint64_t)toolKitToolTypedValuePrimitiveValuePlacemarkType
{
  LODWORD(result) = [a1 uint32Value];
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end