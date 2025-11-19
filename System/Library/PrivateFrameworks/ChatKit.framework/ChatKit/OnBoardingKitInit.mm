@interface OnBoardingKitInit
@end

@implementation OnBoardingKitInit

uint64_t ___OnBoardingKitInit_block_invoke()
{
  _CKOBWelcomeController = MEMORY[0x193AF5EC0](@"OBWelcomeController", @"OnBoardingKit");
  _CKOBBoldTrayButton = MEMORY[0x193AF5EC0](@"OBBoldTrayButton", @"OnBoardingKit");
  _CKOBLinkTrayButton = MEMORY[0x193AF5EC0](@"OBLinkTrayButton", @"OnBoardingKit");
  result = MEMORY[0x193AF5EC0](@"OBWelcomeFullCenterContentController", @"OnboardingKit");
  _CKOBWelcomeFullCenterContentController = result;
  return result;
}

@end