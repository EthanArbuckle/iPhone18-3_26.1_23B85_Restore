@interface CCItemField(CCToolKitToolRestrictionContext_dateExpressibleAs)
- (uint64_t)toolKitToolRestrictionContextDateExpressibleAs;
@end

@implementation CCItemField(CCToolKitToolRestrictionContext_dateExpressibleAs)

- (uint64_t)toolKitToolRestrictionContextDateExpressibleAs
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