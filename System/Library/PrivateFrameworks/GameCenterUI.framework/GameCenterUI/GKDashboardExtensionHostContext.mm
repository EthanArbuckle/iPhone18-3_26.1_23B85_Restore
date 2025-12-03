@interface GKDashboardExtensionHostContext
- (void)getMethodsImplementedByChallengeEventHandlerDelegate:(id)delegate;
- (void)requestDashboardLogoImageWithHandler:(id)handler;
- (void)requestImagesForLeaderboardSetsWithHandler:(id)handler;
- (void)requestImagesForLeaderboardsInSet:(id)set handler:(id)handler;
@end

@implementation GKDashboardExtensionHostContext

- (void)requestDashboardLogoImageWithHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)requestImagesForLeaderboardSetsWithHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)requestImagesForLeaderboardsInSet:(id)set handler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)getMethodsImplementedByChallengeEventHandlerDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = delegateCopy;
  if (delegateCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__GKDashboardExtensionHostContext_getMethodsImplementedByChallengeEventHandlerDelegate___block_invoke;
    block[3] = &unk_27966A4A8;
    v6 = delegateCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __88__GKDashboardExtensionHostContext_getMethodsImplementedByChallengeEventHandlerDelegate___block_invoke(uint64_t a1)
{
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v2 = [MEMORY[0x277D0BFF8] challengeEventHandler];
  v3 = [v2 delegate];

  if (objc_opt_respondsToSelector())
  {
    v4 = NSStringFromSelector(sel_localPlayerDidSelectChallenge_);
    [v10 addObject:v4];
  }

  v5 = [MEMORY[0x277D0C138] localPlayer];
  v6 = [v5 eventEmitter];

  if ([v6 listenerRegisteredForSelector:sel_player_wantsToPlayChallenge_])
  {
    v7 = NSStringFromSelector(sel_player_wantsToPlayChallenge_);
    [v10 addObject:v7];
  }

  v8 = *(a1 + 32);
  v9 = [v10 allObjects];
  (*(v8 + 16))(v8, v9, 0);
}

@end