@interface _GCCurrentApplicationForegroundMonitor(UI)
- (void)CBApplicationDidBecomeActive:()UI;
- (void)CBApplicationWillResignActive:()UI;
- (void)_ui_init:()UI;
@end

@implementation _GCCurrentApplicationForegroundMonitor(UI)

- (void)_ui_init:()UI
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55___GCCurrentApplicationForegroundMonitor_UI___ui_init___block_invoke;
  v4[3] = &unk_277E1DD30;
  v4[4] = self;
  v4[5] = a3;
  v3 = MEMORY[0x20F32E600](v4);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3[2](v3);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v3);
  }
}

- (void)CBApplicationDidBecomeActive:()UI
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {

    [self CBApplicationDidBecomeActive];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75___GCCurrentApplicationForegroundMonitor_UI__CBApplicationDidBecomeActive___block_invoke;
    block[3] = &unk_277E1DC40;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)CBApplicationWillResignActive:()UI
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {

    [self CBApplicationWillResignActive];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76___GCCurrentApplicationForegroundMonitor_UI__CBApplicationWillResignActive___block_invoke;
    block[3] = &unk_277E1DC40;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

@end