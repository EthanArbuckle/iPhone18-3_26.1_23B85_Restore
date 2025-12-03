@interface CCItemField(CCToolKitToolRestrictionContextTextTypedWith_capitalizationType)
- (uint64_t)toolKitToolRestrictionContextTextTypedWithCapitalizationType;
@end

@implementation CCItemField(CCToolKitToolRestrictionContextTextTypedWith_capitalizationType)

- (uint64_t)toolKitToolRestrictionContextTextTypedWithCapitalizationType
{
  LODWORD(result) = [self uint32Value];
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