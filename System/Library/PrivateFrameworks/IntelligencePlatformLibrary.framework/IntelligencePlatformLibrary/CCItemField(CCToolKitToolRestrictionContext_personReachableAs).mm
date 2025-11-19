@interface CCItemField(CCToolKitToolRestrictionContext_personReachableAs)
- (uint64_t)toolKitToolRestrictionContextPersonReachableAs;
@end

@implementation CCItemField(CCToolKitToolRestrictionContext_personReachableAs)

- (uint64_t)toolKitToolRestrictionContextPersonReachableAs
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