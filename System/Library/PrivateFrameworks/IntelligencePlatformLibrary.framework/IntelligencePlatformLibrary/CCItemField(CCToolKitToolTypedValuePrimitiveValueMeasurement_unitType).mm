@interface CCItemField(CCToolKitToolTypedValuePrimitiveValueMeasurement_unitType)
- (uint64_t)toolKitToolTypedValuePrimitiveValueMeasurementUnitType;
@end

@implementation CCItemField(CCToolKitToolTypedValuePrimitiveValueMeasurement_unitType)

- (uint64_t)toolKitToolTypedValuePrimitiveValueMeasurementUnitType
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