@interface RPCompanionLinkClient(COCompanionLinkClientFlag)
- (uint64_t)co_CompanionLinkClientFlags;
- (void)co_SetCompanionLinkClientFlags:()COCompanionLinkClientFlag;
@end

@implementation RPCompanionLinkClient(COCompanionLinkClientFlag)

- (uint64_t)co_CompanionLinkClientFlags
{
  v1 = objc_getAssociatedObject(self, sel_co_CompanionLinkClientFlags);
  unsignedIntegerValue = [v1 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)co_SetCompanionLinkClientFlags:()COCompanionLinkClientFlag
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(self, sel_co_CompanionLinkClientFlags, v2, 0x303);
}

@end