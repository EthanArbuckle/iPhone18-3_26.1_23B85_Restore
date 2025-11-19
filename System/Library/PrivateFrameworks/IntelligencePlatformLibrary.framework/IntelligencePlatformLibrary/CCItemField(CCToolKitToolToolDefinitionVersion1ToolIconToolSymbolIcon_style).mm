@interface CCItemField(CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon_style)
- (uint64_t)toolKitToolToolDefinitionVersion1ToolIconToolSymbolIconStyle;
@end

@implementation CCItemField(CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon_style)

- (uint64_t)toolKitToolToolDefinitionVersion1ToolIconToolSymbolIconStyle
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