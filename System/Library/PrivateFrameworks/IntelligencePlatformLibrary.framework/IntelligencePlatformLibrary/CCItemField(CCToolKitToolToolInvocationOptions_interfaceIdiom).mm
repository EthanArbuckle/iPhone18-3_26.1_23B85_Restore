@interface CCItemField(CCToolKitToolToolInvocationOptions_interfaceIdiom)
- (uint64_t)toolKitToolToolInvocationOptionsInterfaceIdiom;
@end

@implementation CCItemField(CCToolKitToolToolInvocationOptions_interfaceIdiom)

- (uint64_t)toolKitToolToolInvocationOptionsInterfaceIdiom
{
  LODWORD(result) = [self uint32Value];
  if (result >= 0xB)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end