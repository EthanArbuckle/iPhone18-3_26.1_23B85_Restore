@interface GKNetworkActivityIndicatorDelegate
- (void)beginNetworkActivity;
- (void)endNetworkActivity;
- (void)resetNetworkActivity;
@end

@implementation GKNetworkActivityIndicatorDelegate

- (void)beginNetworkActivity
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__GKNetworkActivityIndicatorDelegate_beginNetworkActivity__block_invoke;
  block[3] = &unk_2796699A8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__GKNetworkActivityIndicatorDelegate_beginNetworkActivity__block_invoke()
{
  v0 = GKAtomicIncrement32() > 0;
  v1 = [MEMORY[0x277D75128] sharedApplication];
  [v1 setNetworkActivityIndicatorVisible:v0];
}

- (void)endNetworkActivity
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__GKNetworkActivityIndicatorDelegate_endNetworkActivity__block_invoke;
  block[3] = &unk_2796699A8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__GKNetworkActivityIndicatorDelegate_endNetworkActivity__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) >= 1)
  {
    v2 = GKAtomicDecrement32() > 0;
    v3 = [MEMORY[0x277D75128] sharedApplication];
    [v3 setNetworkActivityIndicatorVisible:v2];
  }
}

- (void)resetNetworkActivity
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__GKNetworkActivityIndicatorDelegate_resetNetworkActivity__block_invoke;
  block[3] = &unk_2796699A8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__GKNetworkActivityIndicatorDelegate_resetNetworkActivity__block_invoke()
{
  if (GKAtomicCompareAndSwap32())
  {
    v0 = [MEMORY[0x277D75128] sharedApplication];
    [v0 setNetworkActivityIndicatorVisible:0];
  }
}

@end