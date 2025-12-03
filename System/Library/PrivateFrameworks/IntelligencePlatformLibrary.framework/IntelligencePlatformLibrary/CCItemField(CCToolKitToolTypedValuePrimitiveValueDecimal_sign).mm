@interface CCItemField(CCToolKitToolTypedValuePrimitiveValueDecimal_sign)
- (uint64_t)toolKitToolTypedValuePrimitiveValueDecimalSign;
@end

@implementation CCItemField(CCToolKitToolTypedValuePrimitiveValueDecimal_sign)

- (uint64_t)toolKitToolTypedValuePrimitiveValueDecimalSign
{
  LODWORD(result) = [self uint32Value];
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