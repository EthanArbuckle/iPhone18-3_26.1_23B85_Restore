@interface RunningInSpringBoard
@end

@implementation RunningInSpringBoard

void ___RunningInSpringBoard_block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _RunningInSpringBoard___result = [v0 isEqualToString:@"com.apple.springboard"];
}

@end