@interface CCItemField(CCToolKitToolContainerDefinition_origin)
- (uint64_t)toolKitToolContainerDefinitionOrigin;
@end

@implementation CCItemField(CCToolKitToolContainerDefinition_origin)

- (uint64_t)toolKitToolContainerDefinitionOrigin
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