@interface CVCApplicationIsAppleApp
@end

@implementation CVCApplicationIsAppleApp

void ___CVCApplicationIsAppleApp_block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _MergedGlobals_1 = [v0 hasPrefix:@"com.apple."];
}

@end