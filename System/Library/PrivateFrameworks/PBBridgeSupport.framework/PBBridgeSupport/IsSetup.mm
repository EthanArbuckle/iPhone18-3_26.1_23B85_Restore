@interface IsSetup
@end

@implementation IsSetup

void ___IsSetup_block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _IsSetup___isSetup = [v0 isEqualToString:@"com.apple.nanobuddy"];
}

@end