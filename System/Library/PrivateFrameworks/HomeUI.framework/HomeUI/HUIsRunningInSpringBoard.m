@interface HUIsRunningInSpringBoard
@end

@implementation HUIsRunningInSpringBoard

void ___HUIsRunningInSpringBoard_block_invoke()
{
  v0 = [MEMORY[0x277D14670] sharedInstance];
  _MergedGlobals_620 = [v0 hostProcess] == 100;
}

@end