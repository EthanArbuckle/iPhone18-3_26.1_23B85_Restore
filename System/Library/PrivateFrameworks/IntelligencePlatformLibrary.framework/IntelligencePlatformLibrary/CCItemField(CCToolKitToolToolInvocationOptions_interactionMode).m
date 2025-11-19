@interface CCItemField(CCToolKitToolToolInvocationOptions_interactionMode)
- (uint64_t)toolKitToolToolInvocationOptionsInteractionMode;
@end

@implementation CCItemField(CCToolKitToolToolInvocationOptions_interactionMode)

- (uint64_t)toolKitToolToolInvocationOptionsInteractionMode
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