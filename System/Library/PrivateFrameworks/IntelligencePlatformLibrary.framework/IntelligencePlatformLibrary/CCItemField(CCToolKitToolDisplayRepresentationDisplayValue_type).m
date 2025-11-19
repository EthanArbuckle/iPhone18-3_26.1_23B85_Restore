@interface CCItemField(CCToolKitToolDisplayRepresentationDisplayValue_type)
- (uint64_t)toolKitToolDisplayRepresentationDisplayValueType;
@end

@implementation CCItemField(CCToolKitToolDisplayRepresentationDisplayValue_type)

- (uint64_t)toolKitToolDisplayRepresentationDisplayValueType
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