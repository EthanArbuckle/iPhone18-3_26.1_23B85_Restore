@interface CCItemField(CCToolKitToolToolDefinitionVersion1_authenticationPolicy)
- (uint64_t)toolKitToolToolDefinitionVersion1AuthenticationPolicy;
@end

@implementation CCItemField(CCToolKitToolToolDefinitionVersion1_authenticationPolicy)

- (uint64_t)toolKitToolToolDefinitionVersion1AuthenticationPolicy
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