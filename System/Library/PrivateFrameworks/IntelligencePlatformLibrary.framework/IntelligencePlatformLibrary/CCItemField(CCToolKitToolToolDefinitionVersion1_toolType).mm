@interface CCItemField(CCToolKitToolToolDefinitionVersion1_toolType)
- (uint64_t)toolKitToolToolDefinitionVersion1ToolType;
@end

@implementation CCItemField(CCToolKitToolToolDefinitionVersion1_toolType)

- (uint64_t)toolKitToolToolDefinitionVersion1ToolType
{
  LODWORD(result) = [self uint32Value];
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