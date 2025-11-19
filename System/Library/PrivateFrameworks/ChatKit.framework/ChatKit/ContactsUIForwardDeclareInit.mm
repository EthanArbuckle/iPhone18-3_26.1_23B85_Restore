@interface ContactsUIForwardDeclareInit
@end

@implementation ContactsUIForwardDeclareInit

uint64_t ___ContactsUIForwardDeclareInit_block_invoke()
{
  _CKCNMeCardSharingOnboardingEditViewController = MEMORY[0x193AF5EC0](@"CNMeCardSharingOnboardingEditViewController", @"ContactsUI");
  _CKCNMeCardSharingOnboardingAudienceViewController = MEMORY[0x193AF5EC0](@"CNMeCardSharingOnboardingAudienceViewController", @"ContactsUI");
  _CKCNSharingProfileOnboardingFlowManager = MEMORY[0x193AF5EC0](@"CNSharingProfileOnboardingFlowManager", @"ContactsUI");
  result = MEMORY[0x193AF5EC0](@"CNSharedProfileOnboardingController", @"ContactsUI");
  _CKCNSharedProfileOnboardingController = result;
  return result;
}

uint64_t ___ContactsUIForwardDeclareInit_block_invoke_0()
{
  result = MEMORY[0x193AF5EC0](@"CNSharingProfileAvatarItemProvider", @"ContactsUI");
  _CKCNSharingProfileAvatarItemProvider = result;
  return result;
}

@end