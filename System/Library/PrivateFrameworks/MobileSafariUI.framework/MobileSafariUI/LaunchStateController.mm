@interface LaunchStateController
+ (id)sharedController;
- (LaunchStateController)init;
- (void)applicationUIDidBecomeActive;
- (void)doAfterUIBecomesActive:(id)active;
- (void)forceMarkUIBecomeActiveForTesting;
@end

@implementation LaunchStateController

+ (id)sharedController
{
  if (sharedController_onceToken_0 != -1)
  {
    +[LaunchStateController sharedController];
  }

  v3 = sharedController_sharedController_0;

  return v3;
}

void __41__LaunchStateController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(LaunchStateController);
  v1 = sharedController_sharedController_0;
  sharedController_sharedController_0 = v0;
}

- (LaunchStateController)init
{
  v7.receiver = self;
  v7.super_class = LaunchStateController;
  v2 = [(LaunchStateController *)&v7 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    actionBlocks = v2->_actionBlocks;
    v2->_actionBlocks = array;

    v5 = v2;
  }

  return v2;
}

- (void)applicationUIDidBecomeActive
{
  if (!self->_hasCompletedLaunch)
  {
    self->_hasCompletedLaunch = 1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__LaunchStateController_applicationUIDidBecomeActive__block_invoke;
    block[3] = &unk_2781D4D40;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __53__LaunchStateController_applicationUIDidBecomeActive__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) enumerateObjectsUsingBlock:&__block_literal_global_6];
  v2 = *(*(a1 + 32) + 8);

  return [v2 removeAllObjects];
}

- (void)doAfterUIBecomesActive:(id)active
{
  if (self->_hasCompletedLaunch)
  {
    v4 = *(active + 2);

    v4(active);
  }

  else
  {
    actionBlocks = self->_actionBlocks;
    v6 = _Block_copy(active);
    [(NSMutableArray *)actionBlocks addObject:v6];
  }
}

- (void)forceMarkUIBecomeActiveForTesting
{
  if (!self->_hasCompletedLaunch)
  {
    self->_hasCompletedLaunch = 1;
    [(NSMutableArray *)self->_actionBlocks enumerateObjectsUsingBlock:&__block_literal_global_4_1];
    actionBlocks = self->_actionBlocks;

    [(NSMutableArray *)actionBlocks removeAllObjects];
  }
}

@end