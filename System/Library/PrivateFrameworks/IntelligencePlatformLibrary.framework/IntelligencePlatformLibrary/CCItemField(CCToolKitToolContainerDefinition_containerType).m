@interface CCItemField(CCToolKitToolContainerDefinition_containerType)
- (uint64_t)toolKitToolContainerDefinitionContainerType;
@end

@implementation CCItemField(CCToolKitToolContainerDefinition_containerType)

- (uint64_t)toolKitToolContainerDefinitionContainerType
{
  LODWORD(result) = [a1 uint32Value];
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end