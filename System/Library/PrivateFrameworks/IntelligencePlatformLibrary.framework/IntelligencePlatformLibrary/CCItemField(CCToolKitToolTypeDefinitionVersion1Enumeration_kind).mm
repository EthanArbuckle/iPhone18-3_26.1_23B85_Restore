@interface CCItemField(CCToolKitToolTypeDefinitionVersion1Enumeration_kind)
- (uint64_t)toolKitToolTypeDefinitionVersion1EnumerationKind;
@end

@implementation CCItemField(CCToolKitToolTypeDefinitionVersion1Enumeration_kind)

- (uint64_t)toolKitToolTypeDefinitionVersion1EnumerationKind
{
  LODWORD(result) = [a1 uint32Value];
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end