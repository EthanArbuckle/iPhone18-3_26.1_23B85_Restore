@interface CCItemField(CCToolKitToolTypedValuePrimitiveValuePaymentMethod_type)
- (uint64_t)toolKitToolTypedValuePrimitiveValuePaymentMethodType;
@end

@implementation CCItemField(CCToolKitToolTypedValuePrimitiveValuePaymentMethod_type)

- (uint64_t)toolKitToolTypedValuePrimitiveValuePaymentMethodType
{
  LODWORD(result) = [self uint32Value];
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end