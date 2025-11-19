@interface UIScene(PaperBoard)
- (uint64_t)pb_activeVariant;
- (uint64_t)pb_animationSuspended;
- (uint64_t)pb_significantEventsCounter;
- (void)pb_performUpdate:()PaperBoard;
@end

@implementation UIScene(PaperBoard)

- (uint64_t)pb_activeVariant
{
  v1 = [a1 _FBSScene];
  v2 = [v1 settings];
  v3 = [v2 pb_activeVariant];

  return v3;
}

- (uint64_t)pb_animationSuspended
{
  v1 = [a1 _FBSScene];
  v2 = [v1 settings];
  v3 = [v2 pb_animationSuspended];

  return v3;
}

- (void)pb_performUpdate:()PaperBoard
{
  v4 = a3;
  v5 = [a1 _FBSScene];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__UIScene_PaperBoard__pb_performUpdate___block_invoke;
  v7[3] = &unk_2783627E0;
  v7[4] = a1;
  v8 = v4;
  v6 = v4;
  [v5 updateClientSettingsWithTransitionBlock:v7];
}

- (uint64_t)pb_significantEventsCounter
{
  v1 = [a1 _FBSScene];
  v2 = [v1 settings];
  v3 = [v2 pb_significantEventsCounter];

  return v3;
}

@end