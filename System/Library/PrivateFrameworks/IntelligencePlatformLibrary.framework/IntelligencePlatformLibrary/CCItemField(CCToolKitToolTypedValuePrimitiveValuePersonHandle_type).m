@interface CCItemField(CCToolKitToolTypedValuePrimitiveValuePersonHandle_type)
- (uint64_t)toolKitToolTypedValuePrimitiveValuePersonHandleType;
@end

@implementation CCItemField(CCToolKitToolTypedValuePrimitiveValuePersonHandle_type)

- (uint64_t)toolKitToolTypedValuePrimitiveValuePersonHandleType
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