@interface CCItemField(CCToolKitToolRestrictionContextTextTypedWith_autocorrectionType)
- (uint64_t)toolKitToolRestrictionContextTextTypedWithAutocorrectionType;
@end

@implementation CCItemField(CCToolKitToolRestrictionContextTextTypedWith_autocorrectionType)

- (uint64_t)toolKitToolRestrictionContextTextTypedWithAutocorrectionType
{
  LODWORD(result) = [self uint32Value];
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