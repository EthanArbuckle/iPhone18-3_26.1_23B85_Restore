@interface GKGroupActivityManager
- (BOOL)isEligibleForGroupSession;
- (id)sharingControllerItemProviderWithGame:(id)game error:(id *)error;
- (void)applicationWillTerminate;
- (void)startGame;
- (void)startLookingForSessions;
- (void)update;
@end

@implementation GKGroupActivityManager

- (BOOL)isEligibleForGroupSession
{
  selfCopy = self;
  v3 = sub_2279E4394();

  return v3 & 1;
}

- (void)applicationWillTerminate
{
  selfCopy = self;
  sub_2279E4400();
}

- (void)startLookingForSessions
{
  selfCopy = self;
  sub_2279E58F0();
}

- (void)startGame
{
  selfCopy = self;
  sub_2279E5D78();
}

- (id)sharingControllerItemProviderWithGame:(id)game error:(id *)error
{
  gameCopy = game;
  selfCopy = self;
  v7 = sub_2279E64B4(gameCopy);

  return v7;
}

- (void)update
{
  selfCopy = self;
  sub_2279E91FC();
}

@end