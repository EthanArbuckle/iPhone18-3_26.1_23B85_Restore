@interface GKGroupActivityManager
- (BOOL)isEligibleForGroupSession;
- (id)sharingControllerItemProviderWithGame:(id)a3 error:(id *)a4;
- (void)applicationWillTerminate;
- (void)startGame;
- (void)startLookingForSessions;
- (void)update;
@end

@implementation GKGroupActivityManager

- (BOOL)isEligibleForGroupSession
{
  v2 = self;
  v3 = sub_2279E4394();

  return v3 & 1;
}

- (void)applicationWillTerminate
{
  v2 = self;
  sub_2279E4400();
}

- (void)startLookingForSessions
{
  v2 = self;
  sub_2279E58F0();
}

- (void)startGame
{
  v2 = self;
  sub_2279E5D78();
}

- (id)sharingControllerItemProviderWithGame:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_2279E64B4(v5);

  return v7;
}

- (void)update
{
  v2 = self;
  sub_2279E91FC();
}

@end