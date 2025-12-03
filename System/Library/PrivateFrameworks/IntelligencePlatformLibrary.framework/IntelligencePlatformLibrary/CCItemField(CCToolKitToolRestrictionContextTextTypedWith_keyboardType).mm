@interface CCItemField(CCToolKitToolRestrictionContextTextTypedWith_keyboardType)
- (uint64_t)toolKitToolRestrictionContextTextTypedWithKeyboardType;
@end

@implementation CCItemField(CCToolKitToolRestrictionContextTextTypedWith_keyboardType)

- (uint64_t)toolKitToolRestrictionContextTextTypedWithKeyboardType
{
  LODWORD(result) = [self uint32Value];
  if (result >= 0xC)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end