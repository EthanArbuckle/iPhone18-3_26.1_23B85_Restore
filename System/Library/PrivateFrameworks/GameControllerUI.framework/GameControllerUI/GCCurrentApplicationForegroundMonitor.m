@interface GCCurrentApplicationForegroundMonitor
@end

@implementation GCCurrentApplicationForegroundMonitor

void __55___GCCurrentApplicationForegroundMonitor_UI___ui_init___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel_CBApplicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:sel_CBApplicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 applicationState] != 0;

  atomic_store(v5, *(a1 + 40));
}

@end