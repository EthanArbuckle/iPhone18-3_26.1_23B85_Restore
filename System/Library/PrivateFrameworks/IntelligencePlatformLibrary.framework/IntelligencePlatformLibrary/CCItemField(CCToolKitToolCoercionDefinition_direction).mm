@interface CCItemField(CCToolKitToolCoercionDefinition_direction)
- (uint64_t)toolKitToolCoercionDefinitionDirection;
@end

@implementation CCItemField(CCToolKitToolCoercionDefinition_direction)

- (uint64_t)toolKitToolCoercionDefinitionDirection
{
  LODWORD(result) = [a1 uint32Value];
  if (result >= 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end