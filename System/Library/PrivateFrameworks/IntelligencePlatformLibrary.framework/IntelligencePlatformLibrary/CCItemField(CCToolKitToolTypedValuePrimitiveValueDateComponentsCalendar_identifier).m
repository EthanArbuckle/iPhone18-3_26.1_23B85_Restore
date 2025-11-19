@interface CCItemField(CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar_identifier)
- (uint64_t)toolKitToolTypedValuePrimitiveValueDateComponentsCalendarIdentifier;
@end

@implementation CCItemField(CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar_identifier)

- (uint64_t)toolKitToolTypedValuePrimitiveValueDateComponentsCalendarIdentifier
{
  LODWORD(result) = [a1 uint32Value];
  if (result >= 0x1C)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end