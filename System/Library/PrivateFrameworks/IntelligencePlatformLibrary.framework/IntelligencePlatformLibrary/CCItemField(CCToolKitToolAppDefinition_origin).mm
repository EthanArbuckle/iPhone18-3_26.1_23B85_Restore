@interface CCItemField(CCToolKitToolAppDefinition_origin)
- (uint64_t)toolKitToolAppDefinitionOrigin;
@end

@implementation CCItemField(CCToolKitToolAppDefinition_origin)

- (uint64_t)toolKitToolAppDefinitionOrigin
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