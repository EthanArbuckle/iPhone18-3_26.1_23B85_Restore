@interface UIScene(PaperBoard)
- (uint64_t)pb_activeVariant;
- (uint64_t)pb_animationSuspended;
- (uint64_t)pb_significantEventsCounter;
- (void)pb_performUpdate:()PaperBoard;
@end

@implementation UIScene(PaperBoard)

- (uint64_t)pb_activeVariant
{
  _FBSScene = [self _FBSScene];
  settings = [_FBSScene settings];
  pb_activeVariant = [settings pb_activeVariant];

  return pb_activeVariant;
}

- (uint64_t)pb_animationSuspended
{
  _FBSScene = [self _FBSScene];
  settings = [_FBSScene settings];
  pb_animationSuspended = [settings pb_animationSuspended];

  return pb_animationSuspended;
}

- (void)pb_performUpdate:()PaperBoard
{
  v4 = a3;
  _FBSScene = [self _FBSScene];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__UIScene_PaperBoard__pb_performUpdate___block_invoke;
  v7[3] = &unk_2783627E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [_FBSScene updateClientSettingsWithTransitionBlock:v7];
}

- (uint64_t)pb_significantEventsCounter
{
  _FBSScene = [self _FBSScene];
  settings = [_FBSScene settings];
  pb_significantEventsCounter = [settings pb_significantEventsCounter];

  return pb_significantEventsCounter;
}

@end